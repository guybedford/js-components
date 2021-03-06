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
