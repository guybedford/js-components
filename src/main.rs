use anyhow::{anyhow, Result};
use wasmparser::ComponentExport;
use wasmparser::{Alias, Chunk, ComponentImport, Encoding, Parser, Payload::*};
mod component;

fn main() {
	let file = "service.wasm";
	match std::fs::read(&file) {
		Ok(wasm) => match parse(&wasm) {
			Ok(()) => {}
			Err(err) => eprintln!("Unable to parse Wasm file {}: {}", &file, err),
		},
		Err(_) => eprintln!("Unable to read Wasm file {}", &file),
	};
}

fn parse(mut bytes: &[u8]) -> Result<()> {
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
						c.instance_function_order.push(component::InstanceOrFunction::Function(component::FunctionIndex(c.functions.len() as u32)));
						c.functions.push(component_fn?.into());
					}
				}
				ModuleSection { range, .. } => {
					bytes = &bytes[range.end - range.start..];
					c.modules.push(component::ModuleDecl::Module { bytes });
				}
				ComponentSection { /*parser: inner, */.. } => {
					panic!("TODO: Nested Components");
					// parsers.push(parser);
					// parser = inner;
				}
				InstanceSection(instance_section_reader) => {
					for instance in instance_section_reader {
						c.instance_function_order.push(component::InstanceOrFunction::Instance(component::InstanceIndex(c.instances.len() as u32)));
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
										c.instance_function_order.push(component::InstanceOrFunction::Instance(component::InstanceIndex(c.instances.len() as u32)));
										c.instances.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::ComponentFunc => {
										c.instance_function_order.push(component::InstanceOrFunction::Function(component::FunctionIndex(c.functions.len() as u32)));
										c.functions.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Value => {
										c.values.push(component::Alias::Instance { instance, export }.into());
									},
									wasmparser::AliasKind::Func => {
										c.instance_function_order.push(component::InstanceOrFunction::Function(component::FunctionIndex(c.functions.len() as u32)));
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
								// AliasLocal::InstanceExport { kind, instance, name }
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
	let j = serde_json::to_string_pretty(&c)?;
	println!("{}", j);

	Ok(())
}
