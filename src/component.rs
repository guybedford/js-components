use wasmparser::ExternalKind;
use wasmparser::InstantiationArgKind;
use serde::Serialize;
use std::collections::BTreeMap;
use wasmparser::ComponentExternalKind;

// Web Assembly Index References
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

// Core Module Reference
// #[derive(Debug, Serialize)]
// #[serde(tag = "sort", content = "value", rename_all = "camelCase")]
// pub enum ModuleRef {
// 	Func(u32),
// 	Table(u32),
// 	Memory(u32),
// 	Global(u32),
// 	Tag(u32),
// 	Value(u32),
// }

// Component Index Reference
#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "value", rename_all = "camelCase")]
pub enum ComponentRef {
	Module(ModuleIndex),
	Func(FuncIndex),
	Value(ValueIndex),
	Type(TypeIndex),
	Instance(InstanceIndex),
	Component(ComponentIndex),
}

#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "value", rename_all = "camelCase")]
pub enum Ref {
	Func(FuncIndex),
	Table(TableIndex),
	Memory(MemoryIndex),
	Global(GlobalIndex),
	Tag(TagIndex),
}

impl From<(&ComponentExternalKind, u32)> for ComponentRef {
	fn from((kind, idx): (&ComponentExternalKind, u32)) -> ComponentRef {
		match kind {
			ComponentExternalKind::Module => ComponentRef::Module(ModuleIndex(idx)),
			ComponentExternalKind::Component => ComponentRef::Component(ComponentIndex(idx)),
			ComponentExternalKind::Instance => ComponentRef::Instance(InstanceIndex(idx)),
			ComponentExternalKind::Func => ComponentRef::Func(FuncIndex(idx)),
			ComponentExternalKind::Value => ComponentRef::Value(ValueIndex(idx)),
			ComponentExternalKind::Type => ComponentRef::Type(TypeIndex(idx)),
		}
	}
}

impl From<(&ExternalKind, u32)> for Ref {
	fn from((kind, idx): (&ExternalKind, u32)) -> Ref {
		match kind {
			ExternalKind::Func => Ref::Func(FuncIndex(idx)),
			ExternalKind::Table => Ref::Table(TableIndex(idx)),
			ExternalKind::Memory => Ref::Memory(MemoryIndex(idx)),
			ExternalKind::Global => Ref::Global(GlobalIndex(idx)),
			ExternalKind::Tag => Ref::Tag(TagIndex(idx)),
		}
	}
}

impl From<(&InstantiationArgKind, u32)> for ComponentRef {
	fn from((kind, idx): (&InstantiationArgKind, u32)) -> ComponentRef {
		match kind {
			InstantiationArgKind::Instance => ComponentRef::Instance(InstanceIndex(idx)),
		}
	}
}

// #[derive(Debug, Serialize)]
// #[serde(rename_all = "camelCase")]
// pub enum InstanceOrFunc {
// 	Instance(InstanceIndex),
// 	Func(FuncIndex),
// }

// #[derive(Debug, Serialize)]
// #[serde(rename_all = "camelCase")]
// pub enum ComponentExternalKind {
// 	Module,
// 	Func,
// 	Value,
// 	Type,
// 	Instance,
// 	Component,
// }

// #[derive(Debug, Serialize)]
// #[serde(rename_all = "camelCase")]
// pub enum ExternalKind {
// 	Func,
// 	Table,
// 	Memory,
// 	Global,
// 	Tag,
// }

// Alias
#[derive(Debug, Serialize)]
#[serde(untagged, rename_all = "camelCase")]
pub enum Alias<'a> {
	InstanceExport {
		instance: CoreInstanceIndex,
		export: &'a str,
	},
}

#[derive(Debug, Serialize)]
#[serde(untagged, rename_all = "camelCase")]
pub enum ComponentAlias<'a, RefType = ComponentRef> {
	InstanceExport {
		instance: InstanceIndex,
		export: &'a str,
	},
	Outer {
		count: u32,
		reference: RefType,
	},
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ModuleDecl<'a> {
	Imported(&'a str),
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
pub enum CanonicalOption {
	#[serde(rename = "utf8")]
	UTF8,
	#[serde(rename = "utf16")]
	UTF16,
	#[serde(rename = "compactUtf16")]
	CompactUTF16,
	Memory(u32),
	Realloc(u32),
	PostReturn(u32),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum CanonicalFunction {
	Lift {
		core_func_index: u32,
		type_index: u32,
		options: Vec<CanonicalOption>,
	},
	Lower {
		func_index: u32,
		options: Vec<CanonicalOption>,
	},
}

#[derive(Debug, Serialize)]
pub struct Component<'a> {
	pub modules: Vec<ModuleDecl<'a>>,
	pub components: Vec<ComponentDecl<'a>>,
	pub instances: Vec<ComponentInstanceDecl<'a>>,
	pub core_instances: Vec<InstanceDecl<'a>>,
	pub funcs: Vec<FuncDecl<'a>>,
	pub core_funcs: Vec<Alias<'a>>,
	pub types: Vec<ComponentType<'a>>,
	pub core_types: Vec<CoreType<'a>>,
	pub values: Vec<ValueDecl<'a>>,
	pub core_values: Vec<Alias<'a>>,
	pub tables: Vec<Alias<'a>>,
	pub memories: Vec<Alias<'a>>,
	pub globals: Vec<Alias<'a>>,
	pub tags: Vec<Alias<'a>>,
	pub imports: BTreeMap<&'a str, TypeIndex>,
	pub exports: BTreeMap<&'a str, ComponentRef>,
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ValueDecl<'a> {
	// TODO:
	// Imported(&'a str),
	Alias(ComponentAlias<'a>),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum FuncDecl<'a> {
	Imported(&'a str),
	Canonical(CanonicalFunction),
	Alias(ComponentAlias<'a, FuncIndex>),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ComponentDecl<'a> {
	Imported(&'a str),
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
#[serde(tag = "sort", rename_all = "kebab-case")]
pub enum ComponentInstanceDecl<'a> {
	Imported(&'a str),
	Instantiate {
		index: ComponentIndex,
		imports: BTreeMap<&'a str, ComponentRef>,
	},
	FromExports(BTreeMap<&'a str, ComponentRef>),
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
					imports.insert(arg.name, (&arg.kind, arg.index).into());
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
				ComponentInstanceDecl::FromExports(exports)
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "sort", rename_all = "kebab-case")]
pub enum InstanceDecl<'a> {
	Instantiate {
		index: ModuleIndex,
		imports: BTreeMap<&'a str, ComponentRef>,
	},
	FromExports(BTreeMap<&'a str, Ref>),
}

impl<'a> From<wasmparser::Instance<'a>> for InstanceDecl<'a> {
	fn from(instance: wasmparser::Instance<'a>) -> InstanceDecl<'a> {
		match instance {
			wasmparser::Instance::Instantiate { module_index, args } => {
				let mut imports = BTreeMap::new();
				for arg in args.iter() {
					imports.insert(arg.name, (&arg.kind, arg.index).into());
				}
				InstanceDecl::Instantiate {
					index: ModuleIndex(module_index),
					imports,
				}
			}
			wasmparser::Instance::FromExports(args) => {
				let mut exports = BTreeMap::new();
				for arg in args.iter() {
					exports.insert(arg.name, (&arg.kind, arg.index).into());
				}
				InstanceDecl::FromExports(exports)
			}
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type")]
pub enum ComponentType<'a> {
	Defined(ComponentDefinedType<'a>),
	Func(ComponentFuncType<'a>),
	// Component(Box<[ComponentTypeDeclaration<'a>]>),
	// Instance(Box<[InstanceTypeDeclaration<'a>]>),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type")]
pub enum CoreType<'a> {
	Func(FuncType),
	Module(ModuleType<'a>),
}

#[derive(Debug, Serialize)]
pub struct ModuleType<'a> {
	types: Vec<Type>,
	exports: BTreeMap<&'a str, TypeRef>,
	imports: BTreeMap<&'a str, BTreeMap<&'a str, TypeRef>>,
}

// #[derive(Debug, Serialize)]
// #[serde(rename_all = "camelCase", tag = "type")]
// pub struct ComponentTypeDeclaration<'a> {

// }

// #[derive(Debug, Serialize)]
// #[serde(rename_all = "camelCase", tag = "type")]
// pub struct InstanceTypeDeclaration<'a> {

// }

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
#[serde(rename_all = "camelCase", tag = "type")]
pub enum Type {
	Func(FuncType),
}

impl From<&wasmparser::Type> for Type {
	fn from(t: &wasmparser::Type) -> Type {
		match t {
			wasmparser::Type::Func(f) => Type::Func(f.into()),
		}
	}
}

// These details may not be needed for interface types polyfill?
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

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Import<'a> {
	pub module: &'a str,
	pub name: &'a str,
	pub ty: TypeRef,
}

impl<'a> From<&wasmparser::Import<'a>> for Import<'a> {
	fn from(i: &wasmparser::Import<'a>) -> Import<'a> {
		Import {
			module: i.module,
			name: i.name,
			ty: (&i.ty).into(),
		}
	}
}

impl<'a> ModuleType<'a> {
	fn new() -> ModuleType<'a> {
		ModuleType {
			types: Vec::new(),
			exports: BTreeMap::new(),
			imports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentTypeDecl<'a> {
	types: Vec<ComponentType<'a>>,
	exports: BTreeMap<&'a str, u32>,
	imports: BTreeMap<&'a str, u32>,
}

impl<'a> ComponentTypeDecl<'a> {
	fn new() -> ComponentTypeDecl<'a> {
		ComponentTypeDecl {
			types: Vec::new(),
			exports: BTreeMap::new(),
			imports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentFuncType<'a> {
	params: Vec<(Option<&'a str>, ComponentValType)>,
	result: ComponentValType,
}

// impl<'a> From<&wasmparser::ComponentFuncType<'a>> for ComponentFuncType<'a> {
// 	fn from(f: &wasmparser::ComponentFuncType<'a>) -> ComponentFuncType<'a> {
// 		let mut params = Vec::new();
// 		for param in f.params.iter() {
// 			params.push((param.0, (&param.1).into()));
// 		}
// 		ComponentFuncType { params, result: (&f.result).into() }
// 	}
// }

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct InstanceType<'a> {
	types: Vec<ComponentType<'a>>,
	exports: BTreeMap<&'a str, u32>,
}

impl<'a> InstanceType<'a> {
	fn new() -> InstanceType<'a> {
		InstanceType {
			types: Vec::new(),
			exports: BTreeMap::new(),
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
#[serde(rename_all = "camelCase", tag = "type", content = "value")]
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
	pub refines: Option<u32>,
}

impl<'a> From<&wasmparser::VariantCase<'a>> for VariantCase<'a> {
	fn from(v: &wasmparser::VariantCase<'a>) -> VariantCase<'a> {
		VariantCase {
			name: v.name,
			ty: (&v.ty).into(),
			refines: v.refines,
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type", content = "value")]
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

// impl<'a> From<&ComponentTypeDef<'a>> for ComponentType<'a> {
// 	fn from(def: &ComponentTypeDef<'a>) -> ComponentType<'a> {
// 		match def {
// 			ComponentTypeDef::Module(m) => {
// 				let mut module_type = ModuleType::new();
// 				for m in m.iter() {
// 					match m {
// 						wasmparser::ModuleType::Type(t) => {
// 							module_type.types.push(t.into());
// 						},
// 						wasmparser::ModuleType::Export { name, ty } => {
// 							module_type.exports.insert(name, ty.into());
// 						},
// 						wasmparser::ModuleType::Import(wasmparser::Import { module, name, ty }) => {
// 							let module_map = match module_type.imports.get_mut(module) {
// 								Some(m) => m,
// 								None => {
// 									module_type.imports.insert(module, BTreeMap::new());
// 									module_type.imports.get_mut(module).unwrap()
// 								}
// 							};
// 							module_map.insert(name, ty.into());
// 						}
// 					};
// 				}
// 				ComponentType::Module(module_type)
// 			},
// 			ComponentTypeDef::Component(c) => {
// 				let mut component_type = ComponentType::new();
// 				for c in c.iter() {
// 					match c {
// 						wasmparser::ComponentType::OuterType { count, index } => {
// 							component_type.types.push(ComponentType::Alias(Alias::Outer {
// 								count: *count,
// 								reference: TypeIndex(*index)
// 							}))
// 						},
// 						wasmparser::ComponentType::Type(t) => {
// 							component_type.types.push(t.into());
// 						},
// 						wasmparser::ComponentType::Export { name, ty } => {
// 							component_type.exports.insert(name, *ty);
// 						},
// 						wasmparser::ComponentType::Import(wasmparser::ComponentImport { name, ty }) => {
// 							component_type.imports.insert(name, *ty);
// 						}
// 					};
// 				}
// 				ComponentType::Component(component_type)
// 			},
// 			ComponentTypeDef::Instance(i) => {
// 				let mut instance_type = InstanceType::new();
// 				for i in i.iter() {
// 					match i {
// 						wasmparser::InstanceType::OuterType { count, index } => {
// 							instance_type.types.push(ComponentType::Alias(Alias::Outer {
// 								count: *count,
// 								reference: TypeIndex(*index)
// 							}))
// 						},
// 						wasmparser::InstanceType::Type(t) => {
// 							instance_type.types.push(t.into());
// 						},
// 						wasmparser::InstanceType::Export { name, ty } => {
// 							instance_type.exports.insert(name, *ty);
// 						}
// 					};
// 				}
// 				ComponentType::Instance(instance_type)
// 			},
// 			ComponentTypeDef::Func(c) => ComponentType::Func(c.into()),
// 			ComponentTypeDef::Value(ref i) => ComponentType::Value(i.into()),
// 			ComponentTypeDef::Interface(i) => ComponentType::Interface(i.into()),
// 		}
// 	}
// }

impl<'a> Component<'a> {
	pub fn new() -> Component<'a> {
		Component {
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

impl From<wasmparser::CanonicalOption> for CanonicalOption {
	fn from(option: wasmparser::CanonicalOption) -> CanonicalOption {
		match option {
			wasmparser::CanonicalOption::UTF8 => CanonicalOption::UTF8,
			wasmparser::CanonicalOption::UTF16 => CanonicalOption::UTF16,
			wasmparser::CanonicalOption::CompactUTF16 => CanonicalOption::CompactUTF16,
			wasmparser::CanonicalOption::Memory(idx) => CanonicalOption::Memory(idx),
			wasmparser::CanonicalOption::Realloc(idx) => CanonicalOption::Realloc(idx),
			wasmparser::CanonicalOption::PostReturn(idx) => CanonicalOption::PostReturn(idx),
		}
	}
}

impl<'a> From<wasmparser::CanonicalFunction> for CanonicalFunction {
	fn from(f: wasmparser::CanonicalFunction) -> CanonicalFunction {
		match f {
			wasmparser::CanonicalFunction::Lift {
				core_func_index,
				type_index,
				options,
			} => CanonicalFunction::Lift {
				type_index,
				core_func_index,
				options: options
					.iter()
					.map(|&option| CanonicalOption::from(option))
					.collect(),
			},
			wasmparser::CanonicalFunction::Lower {
				func_index,
				options,
			} => CanonicalFunction::Lower {
				func_index,
				options: options
					.iter()
					.map(|&option| CanonicalOption::from(option))
					.collect(),
			},
		}
	}
}
