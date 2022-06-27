use serde::Serialize;
use std::collections::BTreeMap;

// Index References

#[derive(Debug, Serialize)]
pub struct ModuleIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct ComponentIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct InstanceIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct CoreInstanceIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TypeIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct CoreTypeIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct FuncIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct CoreFuncIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct ValueIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct CoreValueIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TableIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct MemoryIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct GlobalIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TagIndex(pub u32);

#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "idx", rename_all = "camelCase")]
pub enum CoreRef {
	Func(FuncIndex),
	Table(TableIndex),
	Memory(MemoryIndex),
	Global(GlobalIndex),
	Tag(TagIndex),
}

impl From<(&wasmparser::ExternalKind, u32)> for CoreRef {
	fn from((kind, idx): (&wasmparser::ExternalKind, u32)) -> CoreRef {
		match kind {
			wasmparser::ExternalKind::Func => CoreRef::Func(FuncIndex(idx)),
			wasmparser::ExternalKind::Table => CoreRef::Table(TableIndex(idx)),
			wasmparser::ExternalKind::Memory => CoreRef::Memory(MemoryIndex(idx)),
			wasmparser::ExternalKind::Global => CoreRef::Global(GlobalIndex(idx)),
			wasmparser::ExternalKind::Tag => CoreRef::Tag(TagIndex(idx)),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "idx", rename_all = "camelCase")]
pub enum ComponentRef {
	Module(ModuleIndex),
	Func(FuncIndex),
	Value(ValueIndex),
	Type(TypeIndex),
	Instance(InstanceIndex),
	Component(ComponentIndex),
}

impl From<(&wasmparser::ComponentExternalKind, u32)> for ComponentRef {
	fn from((kind, idx): (&wasmparser::ComponentExternalKind, u32)) -> ComponentRef {
		match kind {
			wasmparser::ComponentExternalKind::Module => ComponentRef::Module(ModuleIndex(idx)),
			wasmparser::ComponentExternalKind::Component => ComponentRef::Component(ComponentIndex(idx)),
			wasmparser::ComponentExternalKind::Instance => ComponentRef::Instance(InstanceIndex(idx)),
			wasmparser::ComponentExternalKind::Func => ComponentRef::Func(FuncIndex(idx)),
			wasmparser::ComponentExternalKind::Value => ComponentRef::Value(ValueIndex(idx)),
			wasmparser::ComponentExternalKind::Type => ComponentRef::Type(TypeIndex(idx)),
		}
	}
}

impl From<(&wasmparser::InstantiationArgKind, u32)> for ComponentRef {
	fn from((kind, idx): (&wasmparser::InstantiationArgKind, u32)) -> ComponentRef {
		match kind {
			wasmparser::InstantiationArgKind::Instance => ComponentRef::Instance(InstanceIndex(idx)),
		}
	}
}

impl From<&wasmparser::ComponentTypeRef> for ComponentValType {
	fn from(type_ref: &wasmparser::ComponentTypeRef) -> ComponentValType {
		match type_ref {
			// all type indexes are just type indexes, regardless of sort
			wasmparser::ComponentTypeRef::Module(idx) => ComponentValType::Type(*idx),
			wasmparser::ComponentTypeRef::Component(idx) => ComponentValType::Type(*idx),
			wasmparser::ComponentTypeRef::Instance(idx) => ComponentValType::Type(*idx),
			wasmparser::ComponentTypeRef::Func(idx) => ComponentValType::Type(*idx),
			wasmparser::ComponentTypeRef::Value(v) => match v {
				wasmparser::ComponentValType::Primitive(p) => ComponentValType::Primitive(p.into()),
				wasmparser::ComponentValType::Type(idx) => ComponentValType::Type(*idx),
			},
			wasmparser::ComponentTypeRef::Type(_, idx) => ComponentValType::Type(*idx),
		}
	}	
}

// Component Sections

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Component<'a> {
	pub ops: Vec<ComponentOp>,
	pub modules: Vec<ModuleDecl<'a>>,
	pub components: Vec<ComponentDecl<'a>>,
	pub core_instances: Vec<CoreInstanceDecl<'a>>,
	pub instances: Vec<ComponentInstanceDecl<'a>>,
	pub core_funcs: Vec<CoreFuncDecl<'a>>,
	pub funcs: Vec<FuncDecl<'a>>,
	pub core_types: Vec<CoreTypeDecl<'a>>,
	pub types: Vec<ComponentTypeDecl<'a>>,
	pub core_values: Vec<CoreAliasDecl<'a>>,
	pub values: Vec<ValueDecl<'a>>,
	pub tables: Vec<CoreAliasDecl<'a>>,
	pub memories: Vec<CoreAliasDecl<'a>>,
	pub globals: Vec<CoreAliasDecl<'a>>,
	pub tags: Vec<CoreAliasDecl<'a>>,
	pub imports: BTreeMap<&'a str, ComponentValType>,
	pub exports: BTreeMap<&'a str, ComponentRef>,
}

impl<'a> Component<'a> {
	pub fn new() -> Component<'a> {
		Component {
			ops: Vec::new(),
			modules: Vec::new(),
			components: Vec::new(),
			instances: Vec::new(),
			core_instances: Vec::new(),
			funcs: Vec::new(),
			core_funcs: Vec::new(),
			values: Vec::new(),
			core_values: Vec::new(),
			tables: Vec::new(),
			memories: Vec::new(),
			globals: Vec::new(),
			tags: Vec::new(),
			types: Vec::new(),
			core_types: Vec::new(),
			imports: BTreeMap::new(),
			exports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "type", content = "idx", rename_all = "kebab-case")]
pub enum ComponentOp {
	CoreInstance(CoreInstanceIndex),
	ComponentInstance(InstanceIndex),
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "camelCase")]
pub enum CoreAliasDecl<'a> {
	Alias { instance: u32, export: &'a str },
}

#[derive(Debug, Serialize)]
#[serde(untagged, rename_all = "camelCase")]
pub enum ComponentAlias<'a, Ref = ComponentRef> {
	InstanceExport { instance: u32, export: &'a str },
	Outer { count: u32, reference: Ref },
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ModuleDecl<'a> {
	Imported { specifier: &'a str },
	Module { start: usize, end: usize },
	Alias(ComponentAlias<'a, ModuleIndex>),
}

impl<'a> From<ComponentAlias<'a, ModuleIndex>> for ModuleDecl<'a> {
	fn from(alias: ComponentAlias<'a, ModuleIndex>) -> ModuleDecl<'a> {
		ModuleDecl::Alias(alias)
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ComponentDecl<'a> {
	Imported { specifier: &'a str },
	// TODO: Nested components
	// Component(Component<'a>),
	Alias(ComponentAlias<'a, ComponentIndex>),
}

impl<'a> From<ComponentAlias<'a, ComponentIndex>> for ComponentDecl<'a> {
	fn from(alias: ComponentAlias<'a, ComponentIndex>) -> ComponentDecl<'a> {
		ComponentDecl::Alias(alias)
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum CoreInstanceDecl<'a> {
	Instantiate {
		index: ModuleIndex,
		imports: BTreeMap<&'a str, InstanceIndex>,
	},
	FromExports { exports: BTreeMap<&'a str, CoreRef> },
}

impl<'a> From<wasmparser::Instance<'a>> for CoreInstanceDecl<'a> {
	fn from(instance: wasmparser::Instance<'a>) -> CoreInstanceDecl<'a> {
		match instance {
			wasmparser::Instance::Instantiate { module_index, args } => {
				let mut imports = BTreeMap::new();
				for arg in args.iter() {
					if !matches!(arg.kind, wasmparser::InstantiationArgKind::Instance) {
						panic!("Unexpected instantiation index type");
					}
					imports.insert(arg.name, InstanceIndex(arg.index));
				}
				CoreInstanceDecl::Instantiate {
					index: ModuleIndex(module_index),
					imports,
				}
			}
			wasmparser::Instance::FromExports(args) => {
				let mut exports = BTreeMap::new();
				for arg in args.iter() {
					exports.insert(arg.name, (&arg.kind, arg.index).into());
				}
				CoreInstanceDecl::FromExports { exports }
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum ComponentInstanceDecl<'a> {
	Imported { specifier: &'a str },
	Instantiate {
		index: ComponentIndex,
		imports: BTreeMap<&'a str, InstanceIndex>,
	},
	FromExports { exports: BTreeMap<&'a str, ComponentRef> },
	Alias(ComponentAlias<'a, InstanceIndex>),
}

impl<'a> From<wasmparser::ComponentInstance<'a>> for ComponentInstanceDecl<'a> {
	fn from(instance: wasmparser::ComponentInstance<'a>) -> ComponentInstanceDecl<'a> {
		match instance {
			wasmparser::ComponentInstance::Instantiate {
				component_index,
				args,
			} => {
				let mut imports = BTreeMap::new();
				for arg in args.iter() {
					if !matches!(arg.kind, wasmparser::ComponentExternalKind::Instance) {
						panic!("Unexpected instantiation index type");
					}
					imports.insert(arg.name, InstanceIndex(arg.index));
				}
				ComponentInstanceDecl::Instantiate {
					index: ComponentIndex(component_index),
					imports,
				}
			}
			wasmparser::ComponentInstance::FromExports(args) => {
				let mut exports = BTreeMap::new();
				for arg in args.iter() {
					exports.insert(arg.name, (&arg.kind, arg.index).into());
				}
				ComponentInstanceDecl::FromExports { exports }
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum FuncDecl<'a> {
	Imported {
		specifier: &'a str
	},
	Lifted {
		#[serde(rename = "funcIdx")]
		func_idx: u32,
		#[serde(rename = "typeIdx")]
		type_idx: u32,
		opts: CanonicalOptions,
	},
	Alias(ComponentAlias<'a, FuncIndex>),
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum CoreFuncDecl<'a> {
	Lowered {
		idx: u32,
		opts: CanonicalOptions,
	},
	Alias(ComponentAlias<'a, CoreFuncIndex>),
}

#[derive(Debug, Serialize, PartialEq)]
pub enum Encoding {
	#[serde(rename = "utf8")]
	UTF8,
	#[serde(rename = "utf16")]
	UTF16,
	#[serde(rename = "compactUtf16")]
	CompactUTF16,
}

fn is_default<T: Default + PartialEq>(t: &T) -> bool {
	t == &T::default()
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct CanonicalOptions {
	#[serde(skip_serializing_if = "is_default")]
	encoding: Option<Encoding>,
	#[serde(skip_serializing_if = "is_default")]
	memory: Option<u32>,
	#[serde(skip_serializing_if = "is_default")]
	realloc: Option<u32>,
	#[serde(skip_serializing_if = "is_default")]
	post_return: Option<u32>,
}

impl CanonicalOptions {
	fn new() -> CanonicalOptions {
		CanonicalOptions {
			encoding: None,
			memory: None,
			realloc: None,
			post_return: None,
		}
	}
}

impl From<Box<[wasmparser::CanonicalOption]>> for CanonicalOptions {
	fn from(o: Box<[wasmparser::CanonicalOption]>) -> CanonicalOptions {
		let mut options = CanonicalOptions::new();
		for d in o.iter() {
			match d {
				wasmparser::CanonicalOption::UTF8 => options.encoding = Some(Encoding::UTF8),
				wasmparser::CanonicalOption::UTF16 => options.encoding = Some(Encoding::UTF16),
				wasmparser::CanonicalOption::CompactUTF16 => options.encoding = Some(Encoding::CompactUTF16),
				wasmparser::CanonicalOption::Memory(idx) => options.memory = Some(*idx),
				wasmparser::CanonicalOption::Realloc(idx) => options.realloc = Some(*idx),
				wasmparser::CanonicalOption::PostReturn(idx) => options.post_return = Some(*idx),
			}
		}
		options
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum ValueDecl<'a> {
	Imported { specifier: &'a str },
	Alias(ComponentAlias<'a, ValueIndex>),
}

// Types

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "kebab-case")]
pub enum CoreTypeDecl<'a> {
	// Pending core imported types
	// Imported { specifier: &'a str, &'a str },
	Module(CoreModuleType<'a>),
	Func(FuncType),
	Alias(ComponentAlias<'a, CoreTypeIndex>),
}

impl<'a> From<&wasmparser::Type> for CoreTypeDecl<'a> {
	fn from(core_type: &wasmparser::Type) -> CoreTypeDecl<'a> {
		match core_type {
			wasmparser::Type::Func(func_type) => CoreTypeDecl::Func(func_type.into()),
		}
	}
}

impl<'a> From<&wasmparser::CoreType<'a>> for CoreTypeDecl<'a> {
	fn from(core_type: &wasmparser::CoreType<'a>) -> CoreTypeDecl<'a> {
		match core_type {
			wasmparser::CoreType::Func(func_type) => CoreTypeDecl::Func(func_type.into()),
			wasmparser::CoreType::Module(m) => {
				let mut core_module_type = CoreModuleType::new();
				for d in m.iter() {
					match d {
						wasmparser::ModuleTypeDeclaration::Type(t) => {
							core_module_type.types.push(t.into());
						}
						wasmparser::ModuleTypeDeclaration::Export { name, ty } => {
							core_module_type.exports.insert(name, ty.into());
						}
						wasmparser::ModuleTypeDeclaration::Import(wasmparser::Import { module, name, ty }) => {
							let module_map = match core_module_type.imports.get_mut(module) {
								Some(m) => m,
								None => {
									core_module_type.imports.insert(module, BTreeMap::new());
									core_module_type.imports.get_mut(module).unwrap()
								}
							};
							module_map.insert(name, ty.into());
						}
					}
				}
				CoreTypeDecl::Module(core_module_type)
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "camelCase")]
pub enum CoreType {
	Func(FuncType),
	// Core alias support...
	// Alias(ComponentAlias<'a, CoreTypeIndex>),
}

impl<'a> From<&wasmparser::CoreType<'a>> for CoreType {
	fn from(core_type: &wasmparser::CoreType<'a>) -> CoreType {
		match core_type {
			wasmparser::CoreType::Module(_) => panic!("Unexpected module type"),
			wasmparser::CoreType::Func(func_type) => CoreType::Func(func_type.into()),
		}
	}
}

impl<'a> From<&wasmparser::Type> for CoreType {
	fn from(core_type: &wasmparser::Type) -> CoreType {
		match core_type {
			wasmparser::Type::Func(func_type) => CoreType::Func(func_type.into()),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct CoreModuleType<'a> {
	types: Vec<CoreType>,
	exports: BTreeMap<&'a str, TypeRef>,
	imports: BTreeMap<&'a str, BTreeMap<&'a str, TypeRef>>,
}

impl<'a> CoreModuleType<'a> {
	fn new() -> CoreModuleType<'a> {
		CoreModuleType {
			types: Vec::new(),
			exports: BTreeMap::new(),
			imports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", rename_all = "camelCase")]
pub enum TypeRef {
	Func(u32),
	Table(TableType),
	Memory(MemoryType),
	Global(GlobalType),
	Tag(TagType),
}

impl From<&wasmparser::TypeRef> for TypeRef {
	fn from(t: &wasmparser::TypeRef) -> TypeRef {
		match t {
			wasmparser::TypeRef::Func(f) => TypeRef::Func(*f),
			wasmparser::TypeRef::Table(_) => TypeRef::Table(TableType {}),
			wasmparser::TypeRef::Memory(_) => TypeRef::Memory(MemoryType {}),
			wasmparser::TypeRef::Global(_) => TypeRef::Global(GlobalType {}),
			wasmparser::TypeRef::Tag(_) => TypeRef::Tag(TagType {}),
		}
	}
}

// Are these details needed?
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct TableType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct MemoryType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct GlobalType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct TagType;

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct FuncType {
	pub params: Vec<ValType>,
	pub returns: Vec<ValType>,
}

impl From<&wasmparser::FuncType> for FuncType {
	fn from(t: &wasmparser::FuncType) -> FuncType {
		let mut params = Vec::new();
		let mut returns = Vec::new();
		for &p in t.params.iter() {
			params.push(p.into())
		}
		for &r in t.returns.iter() {
			returns.push(r.into())
		}
		FuncType { params, returns }
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ValType {
	I32,
	I64,
	F32,
	F64,
	V128,
	FuncRef,
	ExternRef,
}

impl From<wasmparser::ValType> for ValType {
	fn from(t: wasmparser::ValType) -> ValType {
		match t {
			wasmparser::ValType::I32 => ValType::I32,
			wasmparser::ValType::I64 => ValType::I64,
			wasmparser::ValType::F32 => ValType::F32,
			wasmparser::ValType::F64 => ValType::F64,
			wasmparser::ValType::V128 => ValType::V128,
			wasmparser::ValType::FuncRef => ValType::FuncRef,
			wasmparser::ValType::ExternRef => ValType::ExternRef,
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "kind", content = "value", rename_all = "camelCase")]
pub enum ComponentTypeDecl<'a> {
	Imported { specifier: &'a str },
	Alias(ComponentAlias<'a, TypeIndex>),
	Defined(ComponentDefinedType<'a>),
	Func(ComponentFuncType<'a>),
	Component(ComponentType<'a>),
	Instance(ComponentInstanceType<'a>),
}

impl<'a> From<&wasmparser::ComponentType<'a>> for ComponentTypeDecl<'a> {
	fn from(component_type: &wasmparser::ComponentType<'a>) -> ComponentTypeDecl<'a> {
		match component_type {
			wasmparser::ComponentType::Defined(component_defined_type) => {
				ComponentTypeDecl::Defined(component_defined_type.into())
			}
			wasmparser::ComponentType::Func(component_func_type) => {
				ComponentTypeDecl::Func(component_func_type.into())
			}
			wasmparser::ComponentType::Component(c) => {
				let mut component_type = ComponentType::new();
				for d in c.iter() {
					match d {
						wasmparser::ComponentTypeDeclaration::CoreType(t) => {
							component_type.core_types.push(t.into());
						}
						wasmparser::ComponentTypeDeclaration::Type(t) => {
							component_type.types.push(t.into());
						}
						wasmparser::ComponentTypeDeclaration::Alias(a) => match a {
							wasmparser::ComponentAlias::InstanceExport {
								kind,
								instance_index,
								name,
							} => match kind {
								wasmparser::ComponentExternalKind::Type => component_type.types.push(
									ComponentTypeDecl::Alias(ComponentAlias::InstanceExport {
										instance: *instance_index,
										export: name,
									}),
								),
								_ => panic!("Unexpected ComponentExternalKind for instance export type alias"),
							},
							wasmparser::ComponentAlias::Outer { kind, count, index } => match kind {
								wasmparser::ComponentOuterAliasKind::Type => {
									component_type
										.types
										.push(ComponentTypeDecl::Alias(ComponentAlias::Outer {
											count: *count,
											reference: TypeIndex(*index),
										}))
								}
								_ => panic!("Unexpected ComponentOuterAliasKind for outer type alias"),
							},
						},
						wasmparser::ComponentTypeDeclaration::Export { name, ty } => {
							component_type.exports.insert(name, ty.into());
						}
						wasmparser::ComponentTypeDeclaration::Import(wasmparser::ComponentImport {
							name,
							ty,
						}) => {
							component_type.imports.insert(name, ty.into());
						}
					};
				}
				ComponentTypeDecl::Component(component_type)
			}
			wasmparser::ComponentType::Instance(i) => {
				let mut instance_type = ComponentInstanceType::new();
				for d in i.iter() {
					match d {
						wasmparser::InstanceTypeDeclaration::CoreType(t) => {
							instance_type.core_types.push(t.into());
						}
						wasmparser::InstanceTypeDeclaration::Type(t) => {
							instance_type.types.push(t.into());
						}
						wasmparser::InstanceTypeDeclaration::Alias(a) => match a {
							wasmparser::ComponentAlias::InstanceExport {
								kind,
								instance_index,
								name,
							} => match kind {
								wasmparser::ComponentExternalKind::Type => instance_type.types.push(
									ComponentTypeDecl::Alias(ComponentAlias::InstanceExport {
										instance: *instance_index,
										export: name,
									}),
								),
								_ => panic!("Unexpected ComponentExternalKind for instance export type alias"),
							},
							wasmparser::ComponentAlias::Outer { kind, count, index } => match kind {
								wasmparser::ComponentOuterAliasKind::Type => {
									instance_type
										.types
										.push(ComponentTypeDecl::Alias(ComponentAlias::Outer {
											count: *count,
											reference: TypeIndex(*index),
										}))
								}
								_ => panic!("Unexpected ComponentOuterAliasKind for outer type alias"),
							},
						},
						wasmparser::InstanceTypeDeclaration::Export { name, ty } => {
							instance_type.exports.insert(name, ty.into());
						}
					}
				}
				ComponentTypeDecl::Instance(instance_type)
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "type", content = "value", rename_all = "camelCase")]
pub enum ComponentDefinedType<'a> {
	Primitive(PrimitiveValType),
	Record(BTreeMap<&'a str, ComponentValType>),
	Variant(Vec<VariantCase<'a>>),
	List(ComponentValType),
	Tuple(Vec<ComponentValType>),
	Flags(Vec<&'a str>),
	Enum(Vec<&'a str>),
	Union(Vec<ComponentValType>),
	Option(ComponentValType),
	Expected {
		ok: ComponentValType,
		error: ComponentValType,
	},
}

impl<'a> From<&wasmparser::ComponentDefinedType<'a>> for ComponentDefinedType<'a> {
	fn from(i: &wasmparser::ComponentDefinedType<'a>) -> ComponentDefinedType<'a> {
		match i {
			wasmparser::ComponentDefinedType::Primitive(p) => ComponentDefinedType::Primitive(p.into()),
			wasmparser::ComponentDefinedType::Record(items) => {
				let mut map = BTreeMap::new();
				for &r in items.iter() {
					map.insert(r.0, (&r.1).into());
				}
				ComponentDefinedType::Record(map)
			}
			wasmparser::ComponentDefinedType::Variant(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				ComponentDefinedType::Variant(vec)
			}
			wasmparser::ComponentDefinedType::List(l) => ComponentDefinedType::List(l.into()),
			wasmparser::ComponentDefinedType::Tuple(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				ComponentDefinedType::Tuple(vec)
			}
			wasmparser::ComponentDefinedType::Flags(items) => {
				let mut vec = Vec::new();
				for &i in items.iter() {
					vec.push(i.into());
				}
				ComponentDefinedType::Flags(vec)
			}
			wasmparser::ComponentDefinedType::Enum(items) => {
				let mut vec = Vec::new();
				for &i in items.iter() {
					vec.push(i.into());
				}
				ComponentDefinedType::Enum(vec)
			}
			wasmparser::ComponentDefinedType::Union(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				ComponentDefinedType::Union(vec)
			}
			wasmparser::ComponentDefinedType::Option(ref o) => ComponentDefinedType::Option(o.into()),
			wasmparser::ComponentDefinedType::Expected { ref ok, ref error } => {
				ComponentDefinedType::Expected {
					ok: ok.into(),
					error: error.into(),
				}
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum PrimitiveValType {
	Unit,
	Bool,
	S8,
	U8,
	S16,
	U16,
	S32,
	U32,
	S64,
	U64,
	Float32,
	Float64,
	Char,
	String,
}

impl From<&wasmparser::PrimitiveValType> for PrimitiveValType {
	fn from(i: &wasmparser::PrimitiveValType) -> PrimitiveValType {
		match i {
			wasmparser::PrimitiveValType::Unit => PrimitiveValType::Unit,
			wasmparser::PrimitiveValType::Bool => PrimitiveValType::Bool,
			wasmparser::PrimitiveValType::S8 => PrimitiveValType::S8,
			wasmparser::PrimitiveValType::U8 => PrimitiveValType::U8,
			wasmparser::PrimitiveValType::S16 => PrimitiveValType::S16,
			wasmparser::PrimitiveValType::U16 => PrimitiveValType::U16,
			wasmparser::PrimitiveValType::S32 => PrimitiveValType::S32,
			wasmparser::PrimitiveValType::U32 => PrimitiveValType::U32,
			wasmparser::PrimitiveValType::S64 => PrimitiveValType::S64,
			wasmparser::PrimitiveValType::U64 => PrimitiveValType::U64,
			wasmparser::PrimitiveValType::Float32 => PrimitiveValType::Float32,
			wasmparser::PrimitiveValType::Float64 => PrimitiveValType::Float64,
			wasmparser::PrimitiveValType::Char => PrimitiveValType::Char,
			wasmparser::PrimitiveValType::String => PrimitiveValType::String,
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "type", content = "value", rename_all = "camelCase")]
pub enum ComponentValType {
	Primitive(PrimitiveValType),
	Type(u32),
}

impl From<&wasmparser::ComponentValType> for ComponentValType {
	fn from(i: &wasmparser::ComponentValType) -> ComponentValType {
		match i {
			wasmparser::ComponentValType::Primitive(p) => ComponentValType::Primitive(p.into()),
			wasmparser::ComponentValType::Type(p) => ComponentValType::Type(*p),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct VariantCase<'a> {
	pub name: &'a str,
	pub ty: ComponentValType,
	pub refines: Option<TypeIndex>,
}

impl<'a> From<&wasmparser::VariantCase<'a>> for VariantCase<'a> {
	fn from(v: &wasmparser::VariantCase<'a>) -> VariantCase<'a> {
		VariantCase {
			name: v.name,
			ty: (&v.ty).into(),
			refines: match v.refines {
				Some(idx) => Some(TypeIndex(idx)),
				None => None,
			},
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentFuncType<'a> {
	params: Vec<(Option<&'a str>, ComponentValType)>,
	result: ComponentValType,
}

impl<'a> From<&wasmparser::ComponentFuncType<'a>> for ComponentFuncType<'a> {
	fn from(f: &wasmparser::ComponentFuncType<'a>) -> ComponentFuncType<'a> {
		let mut params = Vec::new();
		for param in f.params.iter() {
			params.push((param.0, (&param.1).into()));
		}
		ComponentFuncType {
			params,
			result: (&f.result).into(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentInstanceType<'a> {
	core_types: Vec<CoreTypeDecl<'a>>,
	types: Vec<ComponentTypeDecl<'a>>,
	exports: BTreeMap<&'a str, ComponentValType>,
}

impl<'a> ComponentInstanceType<'a> {
	fn new() -> ComponentInstanceType<'a> {
		ComponentInstanceType {
			core_types: Vec::new(),
			types: Vec::new(),
			exports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentType<'a> {
	core_types: Vec<CoreTypeDecl<'a>>,
	types: Vec<ComponentTypeDecl<'a>>,
	exports: BTreeMap<&'a str, ComponentValType>,
	imports: BTreeMap<&'a str, ComponentValType>,
}

impl<'a> ComponentType<'a> {
	fn new() -> ComponentType<'a> {
		ComponentType {
			core_types: Vec::new(),
			types: Vec::new(),
			exports: BTreeMap::new(),
			imports: BTreeMap::new(),
		}
	}
}
