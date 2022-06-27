use crate::component::Component;
use anyhow::anyhow;
use wasmparser::{
	Alias, CanonicalFunction, Chunk, ComponentAlias, ComponentExport, ComponentImport,
	ComponentOuterAliasKind, ComponentTypeRef, ComponentValType, Encoding, Parser, Payload::*,
};

pub mod component;

pub fn parse(mut bytes: &[u8]) -> anyhow::Result<Component> {
	let mut parser = Parser::new(0);
	let mut parsers = Vec::new();
	let mut last_consumed = 0;

	let mut c = component::Component::new();

	loop {
		bytes = &bytes[last_consumed..];
		let payload = match parser.parse(bytes, true)? {
			Chunk::NeedMoreData(_) => unreachable!(),
			Chunk::Parsed { payload, consumed } => {
				last_consumed = consumed;
				payload
			}
		};

		match payload {
				Version { encoding, .. } => {
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
								c.ops.push(component::ComponentOp::ComponentInstance(component::InstanceIndex(c.instances.len() as u32)));
								c.instances.push(component::ComponentInstanceDecl::Imported { specifier: name });
							},
							ComponentTypeRef::Module(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.modules.push(component::ModuleDecl::Imported { specifier: name });
							},
							ComponentTypeRef::Func(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.funcs.push(component::FuncDecl::Imported { specifier: name });
							},
							ComponentTypeRef::Value(val) => match val {
								ComponentValType::Primitive(p) => {
									c.imports.insert(name, component::ComponentValType::Primitive((&p).into()));
									c.values.push(component::ValueDecl::Imported { specifier: name });
								},
								ComponentValType::Type(idx) => {
									c.imports.insert(name, component::ComponentValType::Type(idx));
									c.values.push(component::ValueDecl::Imported { specifier: name });
								},
							},
							ComponentTypeRef::Type(_, idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.types.push(component::ComponentTypeDecl::Imported { specifier: name });
							},
							ComponentTypeRef::Component(idx) => {
								c.imports.insert(name, component::ComponentValType::Type(idx));
								c.components.push(component::ComponentDecl::Imported { specifier: name });
							},
						};
					}
				},
				ComponentCanonicalSection(component_canonical_section_reader) => {
					for canonical_func in component_canonical_section_reader {
						match canonical_func? {
							CanonicalFunction::Lift { core_func_index, type_index, options, } => {
								c.funcs.push(component::FuncDecl::Lifted {
									func_idx: core_func_index,
									type_idx: type_index,
									opts: options.into(),
								});
							},
							CanonicalFunction::Lower { func_index, options, } => {
								c.core_funcs.push(component::CoreFuncDecl::Lowered {
									idx: func_index,
									opts: options.into(),
								});
							},
						}
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
						c.ops.push(component::ComponentOp::CoreInstance(component::CoreInstanceIndex(c.core_instances.len() as u32)));
						c.core_instances.push(instance?.into());
					}
				},
				ComponentInstanceSection(component_instance_section_reader) => {
					for component_instance in component_instance_section_reader {
						c.ops.push(component::ComponentOp::ComponentInstance(component::InstanceIndex(c.instances.len() as u32)));
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
										c.core_funcs.push(component::CoreFuncDecl::Alias(component::ComponentAlias::InstanceExport { instance: instance_index, export }));
									},
									wasmparser::ExternalKind::Table => {
										c.tables.push(component::CoreAliasDecl::Alias { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Memory => {
										c.memories.push(component::CoreAliasDecl::Alias { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Global => {
										c.globals.push(component::CoreAliasDecl::Alias { instance: instance_index, export });
									},
									wasmparser::ExternalKind::Tag => {
										c.tags.push(component::CoreAliasDecl::Alias { instance: instance_index, export });
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
									wasmparser::ComponentExternalKind::Module => {
										c.modules.push(component::ModuleDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
									wasmparser::ComponentExternalKind::Component => {
										c.components.push(component::ComponentDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
									wasmparser::ComponentExternalKind::Instance => {
										c.ops.push(component::ComponentOp::ComponentInstance(component::InstanceIndex(c.instances.len() as u32)));
										c.instances.push(component::ComponentInstanceDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
									wasmparser::ComponentExternalKind::Func => {
										c.funcs.push(component::FuncDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
									wasmparser::ComponentExternalKind::Value => {
										c.values.push(component::ValueDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
									wasmparser::ComponentExternalKind::Type => {
										c.types.push(component::ComponentTypeDecl::Alias(component::ComponentAlias::InstanceExport {
											instance: instance_index,
											export
										}));
									},
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

	// dbg!(&c);
	Ok(c)
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn basic_parse() {
		let file = "test/service.wasm";
		let wasm = std::fs::read(&file).unwrap();
		let c = parse(&wasm).unwrap();
		let serialized = serde_json::to_string(&c).unwrap();
		assert_eq!(
			serialized,
			r#"{"ops":[{"type":"component-instance","idx":0},{"type":"component-instance","idx":1},{"type":"core-instance","idx":0},{"type":"core-instance","idx":1},{"type":"core-instance","idx":2},{"type":"core-instance","idx":3},{"type":"core-instance","idx":4},{"type":"core-instance","idx":5},{"type":"component-instance","idx":2}],"modules":[{"module":{"start":129,"end":1863668}},{"module":{"start":1863670,"end":1863780}},{"module":{"start":1863782,"end":1863850}}],"components":[],"coreInstances":[{"kind":"instantiate","index":1,"imports":{}},{"kind":"from-exports","exports":{"get":{"sort":"func","idx":0},"put":{"sort":"func","idx":1}}},{"kind":"from-exports","exports":{"fetch":{"sort":"func","idx":2}}},{"kind":"instantiate","index":0,"imports":{"backend-0.1.0":2,"cache-0.1.0":1}},{"kind":"from-exports","exports":{"$imports":{"sort":"table","idx":0},"0":{"sort":"func","idx":4},"1":{"sort":"func","idx":5},"2":{"sort":"func","idx":6}}},{"kind":"instantiate","index":2,"imports":{"":4}}],"instances":[{"kind":"imported","specifier":"cache-0.1.0"},{"kind":"imported","specifier":"backend-0.1.0"},{"kind":"from-exports","exports":{"fetch":{"sort":"func","idx":3}}}],"coreFuncs":[{"kind":"alias","instance":0,"export":"0"},{"kind":"alias","instance":0,"export":"1"},{"kind":"alias","instance":0,"export":"2"},{"kind":"alias","instance":3,"export":"canonical_abi_realloc"},{"kind":"lowered","idx":0,"opts":{"encoding":"utf8","memory":0,"realloc":3}},{"kind":"lowered","idx":1,"opts":{"encoding":"utf8","memory":0,"realloc":3}},{"kind":"lowered","idx":2,"opts":{"encoding":"utf8","memory":0,"realloc":3}},{"kind":"alias","instance":3,"export":"backend-0.1.0#fetch"}],"funcs":[{"kind":"alias","instance":0,"export":"get"},{"kind":"alias","instance":0,"export":"put"},{"kind":"alias","instance":1,"export":"fetch"},{"kind":"lifted","funcIdx":7,"typeIdx":5,"opts":{"encoding":"utf8","memory":0,"realloc":3}}],"coreTypes":[],"types":[{"kind":"defined","value":{"type":"list","value":{"type":"primitive","value":"u8"}}},{"kind":"defined","value":{"type":"option","value":{"type":"type","value":0}}},{"kind":"func","value":{"params":[["key",{"type":"primitive","value":"string"}]],"result":{"type":"type","value":1}}},{"kind":"func","value":{"params":[["key",{"type":"primitive","value":"string"}],["value",{"type":"type","value":0}]],"result":{"type":"primitive","value":"unit"}}},{"kind":"instance","value":{"coreTypes":[],"types":[{"kind":"alias","value":{"count":1,"reference":2}},{"kind":"alias","value":{"count":1,"reference":3}}],"exports":{"get":{"type":"type","value":0},"put":{"type":"type","value":1}}}},{"kind":"func","value":{"params":[["url",{"type":"primitive","value":"string"}]],"result":{"type":"type","value":0}}},{"kind":"instance","value":{"coreTypes":[],"types":[{"kind":"alias","value":{"count":1,"reference":5}}],"exports":{"fetch":{"type":"type","value":0}}}}],"coreValues":[],"values":[],"tables":[{"kind":"alias","instance":0,"export":"$imports"}],"memories":[{"kind":"alias","instance":3,"export":"memory"}],"globals":[],"tags":[],"imports":{"backend-0.1.0":{"type":"type","value":6},"cache-0.1.0":{"type":"type","value":4}},"exports":{"backend-0.1.0":{"sort":"instance","idx":2}}}"#
		);
	}
}
