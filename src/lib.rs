use anyhow::{anyhow};
use wasmparser::ComponentExport;
use wasmparser::{Alias, Chunk, ComponentImport, Encoding, Parser, Payload::*};
use wasm_bindgen::prelude::*;

mod component;

#[wasm_bindgen]
pub fn parse(bytes: &[u8]) -> Result<String, String> {
	match parse_internal(bytes) {
		Ok(serialized) => Ok(serialized),
		Err(err) => Err(String::from(format!("{:?}", err)))
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
				ComponentTypeSection(component_type_section_reader) => {
					for component_type in component_type_section_reader {
						c.types.push((&component_type?).into());
					}
				}
				ComponentImportSection(component_import_section_reader) => {
					for component_import in component_import_section_reader {
						let ComponentImport { name, ty } = component_import?;
						c.imports.insert(name, component::TypeIndex(ty));
						c.instances.push(component::InstanceDecl::ImportedInstance { specifier: name });
					}
				}
				ComponentFunctionSection(component_fn_section_reader) => {
					for component_fn in component_fn_section_reader {
						c.functions.push(component_fn?.into());
					}
				}
				ModuleSection { range, .. } => {
					bytes = &bytes[range.end - range.start..];
					c.modules.push(component::ModuleDecl::Module {
						start: range.start,
						end: range.end
					});
				}
				ComponentSection { /*parser: inner, */.. } => {
					panic!("TODO: Nested Components");
					// parsers.push(parser);
					// parser = inner;
				}
				InstanceSection(instance_section_reader) => {
					for instance in instance_section_reader {
						c.instances.push(instance?.into());
					}
				}
				ComponentExportSection(component_export_section_reader) => {
					for component_export in component_export_section_reader {
						let ComponentExport { name, kind } = component_export?;
						c.exports.insert(name, (&kind).into());
					}
				}
				ComponentStartSection { .. } => {
					panic!("TODO: Component Start");
				}
				AliasSection(alias_section_reader) => {
					for alias in alias_section_reader {
						match alias? {
							Alias::InstanceExport { kind, instance, name: export } => {
								let instance = component::InstanceIndex(instance);
								match kind {
									wasmparser::AliasKind::Module => {
										c.modules.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Component => {
										c.components.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Instance => {
										c.instances.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::ComponentFunc => {
										c.functions.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Value => {
										c.values.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Func => {
										c.functions.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Table => {
										c.tables.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Memory => {
										c.memories.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Global => {
										c.globals.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Tag => {
										c.tags.push(component::Alias::Instance { instance, export }.into());
									},
								}
							},
							Alias::OuterModule { count, index } => {
								c.modules.push(component::Alias::Outer {
									count,
									reference: component::ModuleIndex(index)
								}.into());
							},
							Alias::OuterComponent { count, index } => {
								c.components.push(component::Alias::Outer {
									count,
									reference: component::ComponentIndex(index)
								}.into());
							},
							Alias::OuterType { count, index } => {
								c.types.push(component::Alias::Outer {
									count,
									reference: component::TypeIndex(index)
								}.into());
							},
						}
					}
				}

				End(_) => {
					if let Some(parent_parser) = parsers.pop() {
						parser = parent_parser;
					} else {
						break;
					}
				},

				// Core module sections ignored
				// CustomSection { name, .. } => {},
				_ => panic!("Unexpected / unknown section"),
		}
	}

	// dbg!(&c);
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
		assert_eq!(serialized, r#"{"modules":[{"module":{"start":93,"end":1844291}},{"module":{"start":1844324,"end":1844440}},{"module":{"start":1844442,"end":1844516}}],"components":[],"instances":[{"type":"imported-instance","specifier":"cache-0.1.0"},{"type":"imported-instance","specifier":"backend-0.1.0"},{"type":"module","index":1,"imports":{}},{"type":"module-from-exports","exports":{"get":{"sort":"function","idx":0},"put":{"sort":"function","idx":1}}},{"type":"module-from-exports","exports":{"fetch":{"sort":"function","idx":2}}},{"type":"module","index":0,"imports":{"backend-0.1.0":4,"cache-0.1.0":3}},{"type":"module-from-exports","exports":{"$imports":{"sort":"table","idx":0},"0":{"sort":"function","idx":6},"1":{"sort":"function","idx":7},"2":{"sort":"function","idx":8}}},{"type":"module","index":2,"imports":{"":6}},{"type":"component-from-exports","exports":{"fetch":{"sort":"function","idx":10}}}],"types":[{"interface":{"list":{"primitive":"u8"}}},{"interface":{"option":{"type":0}}},{"function":{"params":[["key",{"primitive":"string"}]],"result":{"type":1}}},{"function":{"params":[["key",{"primitive":"string"}],["value",{"type":0}]],"result":{"primitive":"unit"}}},{"instance":[{"outerType":{"count":1,"index":2}},{"export":{"name":"get","ty":0}},{"outerType":{"count":1,"index":3}},{"export":{"name":"put","ty":1}}]},{"function":{"params":[["url",{"primitive":"string"}]],"result":{"type":0}}},{"instance":[{"outerType":{"count":1,"index":5}},{"export":{"name":"fetch","ty":0}}]}],"functions":[{"type":"alias","instance":2,"export":"0"},{"type":"alias","instance":2,"export":"1"},{"type":"alias","instance":2,"export":"2"},{"type":"alias","instance":0,"export":"get"},{"type":"alias","instance":0,"export":"put"},{"type":"alias","instance":1,"export":"fetch"},{"type":"lower","func_index":3,"encoding":"utf8","into":5},{"type":"lower","func_index":4,"encoding":"utf8","into":5},{"type":"lower","func_index":5,"encoding":"utf8","into":5},{"type":"alias","instance":5,"export":"backend-0.1.0#fetch"},{"type":"lift","type_index":5,"func_index":9,"encoding":"utf8","into":5}],"values":[],"tables":[{"instance":2,"export":"$imports"}],"memories":[],"globals":[],"tags":[],"imports":{"backend-0.1.0":6,"cache-0.1.0":4},"exports":{"backend-0.1.0":{"sort":"instance","idx":8}}}"#);
	}
}
