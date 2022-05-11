use serde::Serialize;
use std::collections::BTreeMap;
use wasmparser::{
	CanonicalOption, ComponentArgKind, ComponentFunction, ComponentTypeDef, ExternalKind, Instance,
};

// Web Assembly Index References
#[derive(Debug, Serialize)]
pub struct ModuleIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct ComponentIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct InstanceIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TypeIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct FunctionIndex(pub u32);

// #[derive(Debug, Serialize)]
// pub struct CoreFunctionIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TableIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct MemoryIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct GlobalIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct TagIndex(pub u32);

#[derive(Debug, Serialize)]
pub struct ValueIndex(pub u32);

// Core Module Reference
#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "value", rename_all = "camelCase")]
pub enum ModuleRef {
	Function(u32),
	Table(u32),
	Memory(u32),
	Global(u32),
	Tag(u32),
	Value(u32),
}

// Component Index Reference
#[derive(Debug, Serialize)]
#[serde(tag = "sort", content = "value", rename_all = "camelCase")]
pub enum ComponentRef {
	Module(ModuleIndex),
	Component(ComponentIndex),
	Instance(InstanceIndex),
	Type(TypeIndex),
	Function(FunctionIndex),
	// When https://github.com/WebAssembly/component-model/pull/29 lands
	// CoreFunction(CoreFunctionIndex),
	Table(TableIndex),
	Memory(MemoryIndex),
	Global(GlobalIndex),
	Tag(TagIndex),
	Value(ValueIndex),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum InstanceOrFunction {
	Instance(InstanceIndex),
	Function(FunctionIndex),
}

// Alias
#[derive(Debug, Serialize)]
#[serde(untagged, rename_all = "camelCase")]
pub enum Alias<'a, RefType = ComponentRef> {
	Outer {
		count: u32,
		reference: RefType,
	},
	Instance {
		instance: InstanceIndex,
		export: &'a str,
	},
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ModuleDecl<'a> {
	Module {
		start: usize,
		end: usize,
	},
	Alias(Alias<'a, ModuleIndex>),
}

impl<'a> From<Alias<'a, ModuleIndex>> for ModuleDecl<'a> {
	fn from(alias: Alias<'a, ModuleIndex>) -> ModuleDecl<'a> {
		ModuleDecl::Alias(alias)
	}
}

#[derive(Debug, Serialize)]
pub struct Component<'a> {
	pub modules: Vec<ModuleDecl<'a>>,
	pub components: Vec<ComponentDecl<'a>>,
	pub instances: Vec<InstanceDecl<'a>>,
	pub types: Vec<ComponentTypeDecl<'a>>,
	pub functions: Vec<FunctionDecl<'a>>,
	pub values: Vec<Alias<'a, ValueIndex>>,
	pub tables: Vec<Alias<'a, TableIndex>>,
	pub memories: Vec<Alias<'a, MemoryIndex>>,
	pub globals: Vec<Alias<'a, GlobalIndex>>,
	pub tags: Vec<Alias<'a, TagIndex>>,
	pub imports: BTreeMap<&'a str, TypeIndex>,
	pub exports: BTreeMap<&'a str, ComponentRef>,
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ComponentDecl<'a> {
	Component(Component<'a>),
	Alias(Alias<'a, ComponentIndex>),
}

impl<'a> From<Alias<'a, ComponentIndex>> for ComponentDecl<'a> {
	fn from(alias: Alias<'a, ComponentIndex>) -> ComponentDecl<'a> {
		ComponentDecl::Alias(alias)
	}
}

#[derive(Debug, Serialize)]
#[serde(tag = "sort", rename_all = "kebab-case")]
pub enum InstanceDecl<'a> {
	ImportedInstance {
		specifier: &'a str,
	},
	Module {
		index: ModuleIndex,
		imports: BTreeMap<&'a str, InstanceIndex>,
	},
	Component {
		index: ComponentIndex,
		imports: BTreeMap<&'a str, ComponentRef>,
	},
	ModuleFromExports {
		exports: BTreeMap<&'a str, ModuleRef>,
	},
	ComponentFromExports {
		exports: BTreeMap<&'a str, ComponentRef>,
	},
	Alias(Alias<'a, InstanceIndex>),
}

impl<'a> From<Alias<'a, InstanceIndex>> for InstanceDecl<'a> {
	fn from(alias: Alias<'a, InstanceIndex>) -> InstanceDecl<'a> {
		InstanceDecl::Alias(alias)
	}
}

impl From<&ComponentArgKind> for ComponentRef {
	fn from(argkind: &ComponentArgKind) -> ComponentRef {
		match argkind {
			ComponentArgKind::Module(idx) => ComponentRef::Module(ModuleIndex(*idx)),
			ComponentArgKind::Component(idx) => ComponentRef::Component(ComponentIndex(*idx)),
			ComponentArgKind::Instance(idx) => ComponentRef::Instance(InstanceIndex(*idx)),
			ComponentArgKind::Function(idx) => ComponentRef::Function(FunctionIndex(*idx)),
			ComponentArgKind::Value(idx) => ComponentRef::Value(ValueIndex(*idx)),
			ComponentArgKind::Type(idx) => ComponentRef::Type(TypeIndex(*idx)),
		}
	}
}

impl<'a> From<Instance<'a>> for InstanceDecl<'a> {
	fn from(instance: Instance<'a>) -> InstanceDecl<'a> {
		match instance {
			Instance::Module { index, args } => {
				let mut imports = BTreeMap::new();
				for arg in args.iter() {
					imports.insert(
						arg.name,
						match arg.kind {
							wasmparser::ModuleArgKind::Instance(idx) => InstanceIndex(idx),
						},
					);
				}
				InstanceDecl::Module {
					index: ModuleIndex(index),
					imports,
				}
			}
			Instance::Component { index, args } => {
				let mut imports = BTreeMap::<&'a str, ComponentRef>::new();
				for arg in args.iter() {
					imports.insert(arg.name, (&arg.kind).into());
				}
				InstanceDecl::Component {
					index: ComponentIndex(index),
					imports,
				}
			}
			Instance::ModuleFromExports(args) => {
				let mut exports = BTreeMap::new();
				for arg in args.iter() {
					exports.insert(
						arg.name,
						match arg.kind {
							ExternalKind::Func => ModuleRef::Function(arg.index),
							ExternalKind::Table => ModuleRef::Table(arg.index),
							ExternalKind::Memory => ModuleRef::Memory(arg.index),
							ExternalKind::Global => ModuleRef::Global(arg.index),
							ExternalKind::Tag => ModuleRef::Tag(arg.index),
						},
					);
				}
				InstanceDecl::ModuleFromExports { exports }
			}
			Instance::ComponentFromExports(args) => {
				let mut exports = BTreeMap::new();
				for arg in args.iter() {
					exports.insert(arg.name, (&arg.kind).into());
				}
				InstanceDecl::ComponentFromExports { exports }
			}
		}
	}
}

#[derive(Debug, Serialize)]
pub enum EncodingOption {
	#[serde(rename = "utf8")]
	UTF8,
	#[serde(rename = "utf16")]
	UTF16,
	#[serde(rename = "compactUtf16")]
	CompactUTF16,
}

#[derive(Debug, Serialize)]
#[serde(tag = "sort", rename_all = "camelCase")]
pub enum FunctionDecl<'a> {
	Lift {
		type_index: TypeIndex,
		func_index: FunctionIndex,
		encoding: EncodingOption,
		into: InstanceIndex,
	},
	Lower {
		func_index: FunctionIndex,
		encoding: EncodingOption,
		into: InstanceIndex,
	},
	Alias(Alias<'a, FunctionIndex>),
}

impl<'a> From<Alias<'a, FunctionIndex>> for FunctionDecl<'a> {
	fn from(alias: Alias<'a, FunctionIndex>) -> FunctionDecl<'a> {
		FunctionDecl::Alias(alias)
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type")]
pub enum ComponentTypeDecl<'a> {
	Function(ComponentFuncType<'a>),
	Module(ModuleType<'a>),
	Component(ComponentType<'a>),
	Instance(InstanceType<'a>),
	Value(InterfaceTypeRef),
	Interface(InterfaceType<'a>),
	Alias(Alias<'a, TypeIndex>),
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum Type {
	I32,
	I64,
	F32,
	F64,
	V128,
	FuncRef,
	ExternRef,
}

impl From<wasmparser::Type> for Type {
	fn from (t: wasmparser::Type) -> Type {
		match t {
			wasmparser::Type::I32 => Type::I32,
			wasmparser::Type::I64 => Type::I64,
			wasmparser::Type::F32 => Type::F32,
			wasmparser::Type::F64 => Type::F64,
			wasmparser::Type::V128 => Type::V128,
			wasmparser::Type::FuncRef => Type::FuncRef,
			wasmparser::Type::ExternRef => Type::ExternRef,
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct FuncType {
	pub params: Vec<Type>,
	pub returns: Vec<Type>,
}

impl From<&wasmparser::FuncType> for FuncType {
	fn from (t: &wasmparser::FuncType) -> FuncType {
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
pub enum ModuleTypeDecl {
	Func(FuncType),
}

impl From<&wasmparser::TypeDef> for ModuleTypeDecl {
	fn from (t: &wasmparser::TypeDef) -> ModuleTypeDecl {
		match t {
			wasmparser::TypeDef::Func(f) => ModuleTypeDecl::Func(f.into()),
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
	fn from (t: &wasmparser::TypeRef) -> TypeRef {
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
	fn from (i: &wasmparser::Import<'a>) -> Import<'a> {
		Import {
			module: i.module,
			name: i.name,
			ty: (&i.ty).into(),
		}
	}
}

#[derive(Debug, Serialize)]
pub struct ModuleType<'a> {
	types: Vec<ModuleTypeDecl>,
	exports: BTreeMap<&'a str, TypeRef>,
	imports: BTreeMap<&'a str, BTreeMap<&'a str, TypeRef>>,
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
pub struct ComponentType<'a> {
	types: Vec<ComponentTypeDecl<'a>>,
	exports: BTreeMap<&'a str, u32>,
	imports: BTreeMap<&'a str, u32>,
}

impl<'a> ComponentType<'a> {
	fn new() -> ComponentType<'a> {
		ComponentType {
			types: Vec::new(),
			exports: BTreeMap::new(),
			imports: BTreeMap::new(),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentFuncType<'a> {
	params: Vec<(Option<&'a str>, InterfaceTypeRef)>,
	result: InterfaceTypeRef
}

impl<'a> From<&wasmparser::ComponentFuncType<'a>> for ComponentFuncType<'a> {
	fn from(f: &wasmparser::ComponentFuncType<'a>) -> ComponentFuncType<'a> {
		let mut params = Vec::new();
		for param in f.params.iter() {
			params.push((param.0, (&param.1).into()));
		}
		ComponentFuncType { params, result: (&f.result).into() }
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct InstanceType<'a> {
	types: Vec<ComponentTypeDecl<'a>>,
	exports: BTreeMap<&'a str, u32>,
}

impl<'a> InstanceType<'a> {
	fn new() -> InstanceType<'a> {
		InstanceType {
			types: Vec::new(),
			exports: BTreeMap::new()
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum PrimitiveInterfaceType {
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

impl From<&wasmparser::PrimitiveInterfaceType> for PrimitiveInterfaceType {
	fn from(i: &wasmparser::PrimitiveInterfaceType) -> PrimitiveInterfaceType {
		match i {
			wasmparser::PrimitiveInterfaceType::Unit => PrimitiveInterfaceType::Unit,
			wasmparser::PrimitiveInterfaceType::Bool => PrimitiveInterfaceType::Bool,
			wasmparser::PrimitiveInterfaceType::S8 => PrimitiveInterfaceType::S8,
			wasmparser::PrimitiveInterfaceType::U8 => PrimitiveInterfaceType::U8,
			wasmparser::PrimitiveInterfaceType::S16 => PrimitiveInterfaceType::S16,
			wasmparser::PrimitiveInterfaceType::U16 => PrimitiveInterfaceType::U16,
			wasmparser::PrimitiveInterfaceType::S32 => PrimitiveInterfaceType::S32,
			wasmparser::PrimitiveInterfaceType::U32 => PrimitiveInterfaceType::U32,
			wasmparser::PrimitiveInterfaceType::S64 => PrimitiveInterfaceType::S64,
			wasmparser::PrimitiveInterfaceType::U64 => PrimitiveInterfaceType::U64,
			wasmparser::PrimitiveInterfaceType::Float32 => PrimitiveInterfaceType::Float32,
			wasmparser::PrimitiveInterfaceType::Float64 => PrimitiveInterfaceType::Float64,
			wasmparser::PrimitiveInterfaceType::Char => PrimitiveInterfaceType::Char,
			wasmparser::PrimitiveInterfaceType::String => PrimitiveInterfaceType::String,
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type", content = "value")]
pub enum InterfaceTypeRef {
	Primitive(PrimitiveInterfaceType),
	Type(u32),
}

impl From<&wasmparser::InterfaceTypeRef> for InterfaceTypeRef {
	fn from(i: &wasmparser::InterfaceTypeRef) -> InterfaceTypeRef {
		match i {
			wasmparser::InterfaceTypeRef::Primitive(p) => InterfaceTypeRef::Primitive(p.into()),
			wasmparser::InterfaceTypeRef::Type(p) => InterfaceTypeRef::Type(*p),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct VariantCase<'a> {
	pub name: &'a str,
	pub ty: InterfaceTypeRef,
	pub default_to: Option<u32>,
}

impl<'a> From<&wasmparser::VariantCase<'a>> for VariantCase<'a> {
	fn from(v: &wasmparser::VariantCase<'a>) -> VariantCase<'a> {
		VariantCase {
			name: v.name,
			ty: (&v.ty).into(),
			default_to: v.default_to
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase", tag = "type", content = "value")]
pub enum InterfaceType<'a> {
	Primitive(PrimitiveInterfaceType),
	Record(BTreeMap<&'a str, InterfaceTypeRef>),
	Variant(Vec<VariantCase<'a>>),
	List(InterfaceTypeRef),
	Tuple(Vec<InterfaceTypeRef>),
	Flags(Vec<&'a str>),
	Enum(Vec<&'a str>),
	Union(Vec<InterfaceTypeRef>),
	Option(InterfaceTypeRef),
	Expected {
		ok: InterfaceTypeRef,
		error: InterfaceTypeRef,
	},
}

impl<'a> From<&wasmparser::InterfaceType<'a>> for InterfaceType<'a> {
	fn from(i: &wasmparser::InterfaceType<'a>) -> InterfaceType<'a> {
		match i {
			wasmparser::InterfaceType::Primitive(p) => InterfaceType::Primitive(p.into()),
			wasmparser::InterfaceType::Record(items) => {
				let mut map = BTreeMap::new();
				for &r in items.iter() {
					map.insert(r.0, (&r.1).into());
				}
				InterfaceType::Record(map)
			},
			wasmparser::InterfaceType::Variant(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				InterfaceType::Variant(vec)
			},
			wasmparser::InterfaceType::List(l) => InterfaceType::List(l.into()),
			wasmparser::InterfaceType::Tuple(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				InterfaceType::Tuple(vec)
			},
			wasmparser::InterfaceType::Flags(items) => {
				let mut vec = Vec::new();
				for &i in items.iter() {
					vec.push(i.into());
				}
				InterfaceType::Flags(vec)
			},
			wasmparser::InterfaceType::Enum(items) => {
				let mut vec = Vec::new();
				for &i in items.iter() {
					vec.push(i.into());
				}
				InterfaceType::Enum(vec)
			},
			wasmparser::InterfaceType::Union(items) => {
				let mut vec = Vec::new();
				for i in items.iter() {
					vec.push(i.into());
				}
				InterfaceType::Union(vec)
			},
			wasmparser::InterfaceType::Option(ref o) => InterfaceType::Option(o.into()),
			wasmparser::InterfaceType::Expected { ref ok, ref error } => {
				InterfaceType::Expected { ok: ok.into(), error: error.into() }
			}
		}
	}
}

impl<'a> From<Alias<'a, TypeIndex>> for ComponentTypeDecl<'a> {
	fn from(alias: Alias<'a, TypeIndex>) -> ComponentTypeDecl<'a> {
		ComponentTypeDecl::Alias(alias)
	}
}

impl<'a> From<&ComponentTypeDef<'a>> for ComponentTypeDecl<'a> {
	fn from(def: &ComponentTypeDef<'a>) -> ComponentTypeDecl<'a> {
		match def {
			ComponentTypeDef::Module(m) => {
				let mut module_type = ModuleType::new();
				for m in m.iter() {
					match m {
						wasmparser::ModuleType::Type(t) => {
							module_type.types.push(t.into());
						},
						wasmparser::ModuleType::Export { name, ty } => {
							module_type.exports.insert(name, ty.into());
						},
						wasmparser::ModuleType::Import(wasmparser::Import { module, name, ty }) => {
							let module_map = match module_type.imports.get_mut(module) {
								Some(m) => m,
								None => {
									module_type.imports.insert(module, BTreeMap::new());
									module_type.imports.get_mut(module).unwrap()
								}
							};
							module_map.insert(name, ty.into());
						}
					};
				}
				ComponentTypeDecl::Module(module_type)
			},
			ComponentTypeDef::Component(c) => {
				let mut component_type = ComponentType::new();
				for c in c.iter() {
					match c {
						wasmparser::ComponentType::OuterType { count, index } => {
							component_type.types.push(ComponentTypeDecl::Alias(Alias::Outer {
								count: *count,
								reference: TypeIndex(*index)
							}))
						},
						wasmparser::ComponentType::Type(t) => {
							component_type.types.push(t.into());
						},
						wasmparser::ComponentType::Export { name, ty } => {
							component_type.exports.insert(name, *ty);
						},
						wasmparser::ComponentType::Import(wasmparser::ComponentImport { name, ty }) => {
							component_type.imports.insert(name, *ty);
						}
					};
				}
				ComponentTypeDecl::Component(component_type)
			},
			ComponentTypeDef::Instance(i) => {
				let mut instance_type = InstanceType::new();
				for i in i.iter() {
					match i {
						wasmparser::InstanceType::OuterType { count, index } => {
							instance_type.types.push(ComponentTypeDecl::Alias(Alias::Outer {
								count: *count,
								reference: TypeIndex(*index)
							}))
						},
						wasmparser::InstanceType::Type(t) => {
							instance_type.types.push(t.into());
						},
						wasmparser::InstanceType::Export { name, ty } => {
							instance_type.exports.insert(name, *ty);
						}
					};
				}
				ComponentTypeDecl::Instance(instance_type)
			},
			ComponentTypeDef::Function(c) => ComponentTypeDecl::Function(c.into()),
			ComponentTypeDef::Value(ref i) => ComponentTypeDecl::Value(i.into()),
			ComponentTypeDef::Interface(i) => ComponentTypeDecl::Interface(i.into()),
		}
	}
}

impl<'a> Component<'a> {
	pub fn new() -> Component<'a> {
		Component {
			modules: Vec::new(),
			components: Vec::new(),
			instances: Vec::new(),
			functions: Vec::new(),
			values: Vec::new(),
			tables: Vec::new(),
			memories: Vec::new(),
			globals: Vec::new(),
			tags: Vec::new(),
			types: Vec::new(),
			imports: BTreeMap::new(),
			exports: BTreeMap::new(),
		}
	}
}

impl<'a> From<ComponentFunction> for FunctionDecl<'a> {
	fn from(f: ComponentFunction) -> FunctionDecl<'a> {
		match f {
			ComponentFunction::Lift {
				type_index,
				func_index,
				options,
			} => {
				let mut encoding = EncodingOption::UTF8;
				let mut into = 0;
				for option in options.iter() {
					match option {
						CanonicalOption::UTF8 => encoding = EncodingOption::UTF8,
						CanonicalOption::UTF16 => encoding = EncodingOption::UTF16,
						CanonicalOption::CompactUTF16 => encoding = EncodingOption::CompactUTF16,
						CanonicalOption::Into(idx) => into = *idx,
					}
				}
				FunctionDecl::Lift {
					type_index: TypeIndex(type_index),
					func_index: FunctionIndex(func_index),
					encoding,
					into: InstanceIndex(into),
				}
			}
			ComponentFunction::Lower {
				func_index,
				options,
			} => {
				let mut encoding = EncodingOption::UTF8;
				let mut into = 0;
				for option in options.iter() {
					match option {
						CanonicalOption::UTF8 => encoding = EncodingOption::UTF8,
						CanonicalOption::UTF16 => encoding = EncodingOption::UTF16,
						CanonicalOption::CompactUTF16 => encoding = EncodingOption::CompactUTF16,
						CanonicalOption::Into(idx) => into = *idx,
					}
				}
				FunctionDecl::Lower {
					func_index: FunctionIndex(func_index),
					encoding,
					into: InstanceIndex(into),
				}
			}
		}
	}
}
