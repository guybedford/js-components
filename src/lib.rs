use anyhow::anyhow;
use wasm_bindgen::prelude::*;
use wasmparser::{
	Alias, Chunk, ComponentAlias, ComponentExport, ComponentImport, ComponentOuterAliasKind,
	ComponentTypeRef, ComponentValType, Encoding, Parser, Payload::*,
};

mod component;

#[wasm_bindgen]
pub fn parse(bytes: &[u8]) -> Result<String, String> {
	match parse_internal(bytes) {
		Ok(serialized) => Ok(serialized),
		Err(err) => Err(String::from(format!("{:?}", err))),
	}
}

fn parse_internal(mut bytes: &[u8]) -> anyhow::Result<String> {
	let mut parser = Parser::new(0);
	let mut parsers = Vec::new();
	let mut last_consumed = 0;

	let mut c = component::Component::new();
	let mut byte_offset = 0;

	loop {
		byte_offset += last_consumed;
		bytes = &bytes[last_consumed..];
		let payload = match parser.parse(bytes, true)? {
			Chunk::NeedMoreData(_) => unreachable!(),
			Chunk::Parsed { payload, consumed } => {
				last_consumed = consumed;
				payload
			}
		};

		match payload {
				Version { encoding, range, .. } => {
					println!("RANGE: {:?}", &bytes[range.start..range.end]);
					if !matches!(encoding, Encoding::Component) {
						return Err(anyhow!("Not a WebAssembly Component"));
					}
				},
				// Component Sections
				TypeSection(type_section_reader) => {
					for core_type in type_section_reader {
						c.core_types.push((&core_type?).into());
					}
				},
				ComponentTypeSection(component_type_section_reader) => {
					for component_type in component_type_section_reader {
						c.types.push((&component_type?).into());
					}
				},
				ComponentImportSection(component_import_section_reader) => {
					for component_import in component_import_section_reader {
						let ComponentImport { name, ty } = component_import?;
						match ty {
							ComponentTypeRef::Instance(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.instances.push(component::ComponentInstanceDecl::Imported(name));
							},
							ComponentTypeRef::Module(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.modules.push(component::ModuleDecl::Imported(name));
							},
							ComponentTypeRef::Func(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.funcs.push(component::FuncDecl::Imported(name));
							},
							ComponentTypeRef::Value(val) => match val {
								ComponentValType::Primitive(p) => {
									c.imports.insert(name, component::ComponentValType::Primitive((&p).into()));
									c.values.push(component::ValueDecl::Imported(name));
								},
								ComponentValType::Type(idx) => {
									c.imports.insert(name, component::ComponentValType::Type(idx));
									c.values.push(component::ValueDecl::Imported(name));
								},
							},
							ComponentTypeRef::Type(_, idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.types.push(component::ComponentTypeDecl::Imported(name));
							},
							ComponentTypeRef::Component(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.components.push(component::ComponentDecl::Imported(name));
							},
						};
					}
				},
				ComponentCanonicalSection(component_canonical_section_reader) => {
					for canonical_func in component_canonical_section_reader {
						c.funcs.push(component::FuncDecl::Canonical(canonical_func?.into()));
					}
				},
				ModuleSection { range, .. } => {
					bytes = &bytes[range.end - range.start..];
					c.modules.push(component::ModuleDecl::Module {
						start: range.start,
						end: range.end
					});
				},
				ComponentSection { /*parser: inner, */.. } => {
					panic!("TODO: Nested Components");
					// parsers.push(parser);
					// parser = inner;
				},
				InstanceSection(instance_section_reader) => {
					for instance in instance_section_reader {
						c.core_instances.push(instance?.into());
					}
				},
				ComponentInstanceSection(component_instance_section_reader) => {
					for component_instance in component_instance_section_reader {
						c.instances.push(component_instance?.into());
					}
				},
				ComponentExportSection(component_export_section_reader) => {
					for component_export in component_export_section_reader {
						let ComponentExport { name, kind, index } = component_export?;
						c.exports.insert(name, (&kind, index).into());
					}
				},
				ComponentStartSection { .. } => {
					panic!("TODO: Component Start");
				},
				AliasSection (alias_section_reader) => {
					for alias in alias_section_reader {
						match alias? {
							Alias::InstanceExport { kind, instance_index, name: export } => {
								match kind {
									wasmparser::ExternalKind::Func => {
										c.core_funcs.push(component::CoreAlias::InstanceExport { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Table => {
										c.tables.push(component::CoreAlias::InstanceExport { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Memory => {
										c.memories.push(component::CoreAlias::InstanceExport { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Global => {
										c.globals.push(component::CoreAlias::InstanceExport { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Tag => {
										c.tags.push(component::CoreAlias::InstanceExport { instance: instance_index, export });
									},
								}
							}
						}
					}
				},
				ComponentAliasSection(component_alias_section_reader) => {
					for component_alias in component_alias_section_reader {
						match component_alias? {
							ComponentAlias::InstanceExport { kind, instance_index, name: export } => {
								match kind {
									wasmparser::ComponentExternalKind::Module => 
										c.modules.push(component::ModuleDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
									wasmparser::ComponentExternalKind::Component => 
										c.components.push(component::ComponentDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
									wasmparser::ComponentExternalKind::Instance =>
										c.instances.push(component::ComponentInstanceDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
									wasmparser::ComponentExternalKind::Func =>
										c.funcs.push(component::FuncDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
									wasmparser::ComponentExternalKind::Value =>
										c.values.push(component::ValueDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
									wasmparser::ComponentExternalKind::Type =>
										c.types.push(component::ComponentTypeDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										})),
								}
							},
							ComponentAlias::Outer { kind, count, index } => {
								match kind {
									ComponentOuterAliasKind::CoreModule => {
										c.modules.push(component::ComponentAlias::Outer {
											count,
											reference: component::ModuleIndex(index)
										}.into());
									},
									ComponentOuterAliasKind::CoreType => {
										c.core_types.push(component::CoreTypeDecl::Alias(component::ComponentAlias::Outer {
											count,
											reference: component::CoreTypeIndex(index)
										}.into()));
									},
									ComponentOuterAliasKind::Type => {
										c.types.push(component::ComponentTypeDecl::Alias(component::ComponentAlias::Outer {
											count,
											reference: component::TypeIndex(index)
										}.into()));
									},
									ComponentOuterAliasKind::Component => {
										c.components.push(component::ComponentAlias::Outer {
											count,
											reference: component::ComponentIndex(index)
										}.into());
									},
								}
							},
						}
					}
				},

				End(_) => {
					if let Some(parent_parser) = parsers.pop() {
						parser = parent_parser;
					} else {
						break;
					}
				},

				// Component unsupported core module sections ignored
				// CustomSection { name, .. } => {},
				section => {
					dbg!(section);
					panic!("Unsupported section");
				}
		}
	}

	dbg!(&c);
	let j = serde_json::to_string(&c)?;
	Ok(j)
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn basic_parse() {
		let file = "service.wasm";
		let wasm = std::fs::read(&file).unwrap();
		let serialized = parse(&wasm).unwrap();
		assert_eq!(
			serialized,
			r#"{"modules":[{"module":{"start":129,"end":1863668}},{"module":{"start":1863670,"end":1863780}},{"module":{"start":1863782,"end":1863850}}],"components":[],"core_instances":[{"kind":"instantiate","value":{"index":1,"imports":{}}},{"kind":"from-exports","value":{"get":{"sort":"func","value":0},"put":{"sort":"func","value":1}}},{"kind":"from-exports","value":{"fetch":{"sort":"func","value":2}}},{"kind":"instantiate","value":{"index":0,"imports":{"backend-0.1.0":{"sort":"instance","value":2},"cache-0.1.0":{"sort":"instance","value":1}}}},{"kind":"from-exports","value":{"$imports":{"sort":"table","value":0},"0":{"sort":"func","value":4},"1":{"sort":"func","value":5},"2":{"sort":"func","value":6}}},{"kind":"instantiate","value":{"index":2,"imports":{"":{"sort":"instance","value":4}}}}],"instances":[{"kind":"imported","value":"cache-0.1.0"},{"kind":"imported","value":"backend-0.1.0"},{"kind":"from-exports","value":{"fetch":{"sort":"func","value":3}}}],"core_funcs":[{"instance":0,"export":"0"},{"instance":0,"export":"1"},{"instance":0,"export":"2"},{"instance":3,"export":"canonical_abi_realloc"},{"instance":3,"export":"backend-0.1.0#fetch"}],"funcs":[{"kind":"alias","value":{"instance":0,"export":"get"}},{"kind":"alias","value":{"instance":0,"export":"put"}},{"kind":"alias","value":{"instance":1,"export":"fetch"}},{"kind":"canonical","value":{"kind":"lower","value":{"func_index":0,"options":{"memory":0,"realloc":3}}}},{"kind":"canonical","value":{"kind":"lower","value":{"func_index":1,"options":{"memory":0,"realloc":3}}}},{"kind":"canonical","value":{"kind":"lower","value":{"func_index":2,"options":{"memory":0,"realloc":3}}}},{"kind":"canonical","value":{"kind":"lift","value":{"core_func_index":7,"type_index":5,"options":{"memory":0,"realloc":3}}}}],"core_types":[],"types":[{"kind":"defined","value":{"type":"list","value":{"type":"primitive","value":"u8"}}},{"kind":"defined","value":{"type":"option","value":{"type":"type","value":0}}},{"kind":"func","value":{"params":[["key",{"type":"primitive","value":"string"}]],"result":{"type":"type","value":1}}},{"kind":"func","value":{"params":[["key",{"type":"primitive","value":"string"}],["value",{"type":"type","value":0}]],"result":{"type":"primitive","value":"unit"}}},{"kind":"instance","value":{"coreTypes":[],"types":[{"kind":"alias","value":{"count":1,"reference":2}},{"kind":"alias","value":{"count":1,"reference":3}}],"exports":{"get":{"sort":"func","value":0},"put":{"sort":"func","value":1}}}},{"kind":"func","value":{"params":[["url",{"type":"primitive","value":"string"}]],"result":{"type":"type","value":0}}},{"kind":"instance","value":{"coreTypes":[],"types":[{"kind":"alias","value":{"count":1,"reference":5}}],"exports":{"fetch":{"sort":"func","value":0}}}}],"core_values":[],"values":[],"tables":[{"instance":0,"export":"$imports"}],"memories":[{"instance":3,"export":"memory"}],"globals":[],"tags":[],"imports":{"backend-0.1.0":{"type":"type","value":6},"cache-0.1.0":{"type":"type","value":4}},"exports":{"backend-0.1.0":{"sort":"instance","value":2}}}"#
		);
	}
}
