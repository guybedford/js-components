use serde::Serialize;
use std::collections::HashMap;
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
#[serde(tag = "sort", content = "idx", rename_all = "camelCase")]
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
#[serde(tag = "sort", content = "idx", rename_all = "camelCase")]
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
		#[serde(skip_serializing)]
		bytes: &'a [u8],
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
	// saves having to work out dag ordering
	pub instance_function_order: Vec<InstanceOrFunction>,
	pub modules: Vec<ModuleDecl<'a>>,
	pub components: Vec<ComponentDecl<'a>>,
	pub instances: Vec<InstanceDecl<'a>>,
	pub types: Vec<TypeDecl<'a>>,
	pub functions: Vec<FunctionDecl<'a>>,
	pub values: Vec<Alias<'a, ValueIndex>>,
	pub tables: Vec<Alias<'a, TableIndex>>,
	pub memories: Vec<Alias<'a, MemoryIndex>>,
	pub globals: Vec<Alias<'a, GlobalIndex>>,
	pub tags: Vec<Alias<'a, TagIndex>>,
	pub imports: HashMap<&'a str, TypeIndex>,
	pub exports: HashMap<&'a str, ComponentRef>,
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
#[serde(tag = "type", rename_all = "camelCase")]
pub enum InstanceDecl<'a> {
	ImportedInstance {
		specifier: &'a str,
	},
	Module {
		index: ModuleIndex,
		imports: HashMap<&'a str, InstanceIndex>,
	},
	Component {
		index: ComponentIndex,
		imports: HashMap<&'a str, ComponentRef>,
	},
	ModuleFromExports {
		exports: HashMap<&'a str, ModuleRef>,
	},
	ComponentFromExports {
		exports: HashMap<&'a str, ComponentRef>,
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
				let mut imports = HashMap::new();
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
				let mut imports = HashMap::<&'a str, ComponentRef>::new();
				for arg in args.iter() {
					imports.insert(arg.name, (&arg.kind).into());
				}
				InstanceDecl::Component {
					index: ComponentIndex(index),
					imports,
				}
			}
			Instance::ModuleFromExports(args) => {
				let mut exports = HashMap::new();
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
				let mut exports = HashMap::new();
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
#[serde(tag = "type", rename_all = "camelCase")]
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
#[serde(rename_all = "camelCase")]
pub enum TypeDecl<'a> {
	Function(ComponentFuncType<'a>),
	Module(Vec<ModuleType<'a>>),
	Component(Vec<ComponentType<'a>>),
	Instance(Vec<InstanceType<'a>>),
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
#[serde(rename_all = "camelCase")]
pub enum TypeDef {
	Func(FuncType),
}

impl From<&wasmparser::TypeDef> for TypeDef {
	fn from (t: &wasmparser::TypeDef) -> TypeDef {
		match t {
			wasmparser::TypeDef::Func(f) => TypeDef::Func(f.into()),
		}
	}
}

// These details may not be needed for interface types polyfill?
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
struct TableType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
struct MemoryType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
struct GlobalType;
#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
struct TagType;

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
#[serde(rename_all = "camelCase")]
pub enum ModuleType<'a> {
	Type(TypeDef),
	Export {
		name: &'a str,
		ty: TypeRef,
	},
	Import(Import<'a>),
}

impl<'a> From<&wasmparser::ModuleType<'a>> for ModuleType<'a> {
	fn from (m: &wasmparser::ModuleType<'a>) -> ModuleType<'a> {
		match m {
			wasmparser::ModuleType::Type(t) => ModuleType::Type(t.into()),
			wasmparser::ModuleType::Export { name, ty } => ModuleType::Export { name, ty: ty.into() },
			wasmparser::ModuleType::Import(i) => ModuleType::Import(i.into()),
		}
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ComponentImport<'a> {
	pub name: &'a str,
	pub ty: u32,
}

impl<'a> From<&wasmparser::ComponentImport<'a>> for ComponentImport<'a> {
	fn from (c: &wasmparser::ComponentImport<'a>) -> ComponentImport<'a> {
		ComponentImport { name: c.name, ty: c.ty }
	}
}

#[derive(Debug, Serialize)]
#[serde(rename_all = "camelCase")]
pub enum ComponentType<'a> {
	Type(TypeDecl<'a>),
	OuterType {
		count: u32,
		index: u32,
	},
	Export {
		name: &'a str,
		ty: u32,
	},
	Import(ComponentImport<'a>),
}

impl<'a> From<&wasmparser::ComponentType<'a>> for ComponentType<'a> {
	fn from (c: &wasmparser::ComponentType<'a>) -> ComponentType<'a> {
		match c {
			wasmparser::ComponentType::Type(c) => ComponentType::Type(c.into()),
			wasmparser::ComponentType::OuterType { count, index } => ComponentType::OuterType { count: *count, index: *index },
			wasmparser::ComponentType::Export { name, ty } => ComponentType::Export { name, ty: *ty },
			wasmparser::ComponentType::Import(c) => ComponentType::Import(c.into()),
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
pub enum InstanceType<'a> {
	Type(Box<TypeDecl<'a>>),
	OuterType {
		count: u32,
		index: u32,
	},
	Export {
		name: &'a str,
		ty: u32,
	}
}

impl<'a> From<&wasmparser::InstanceType<'a>> for InstanceType<'a> {
	fn from(i: &wasmparser::InstanceType<'a>) -> InstanceType<'a> {
		match i {
			wasmparser::InstanceType::Type(c) => InstanceType::Type(Box::new(c.into())),
			wasmparser::InstanceType::OuterType { count, index } => InstanceType::OuterType { count: *count, index: *index },
			wasmparser::InstanceType::Export { name, ty } => InstanceType::Export { name, ty: *ty }
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
#[serde(rename_all = "camelCase")]
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
#[serde(rename_all = "camelCase")]
pub enum InterfaceType<'a> {
	Primitive(PrimitiveInterfaceType),
	Record(HashMap<&'a str, InterfaceTypeRef>),
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
				let mut map = HashMap::new();
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

impl<'a> From<Alias<'a, TypeIndex>> for TypeDecl<'a> {
	fn from(alias: Alias<'a, TypeIndex>) -> TypeDecl<'a> {
		TypeDecl::Alias(alias)
	}
}

impl<'a> From<&ComponentTypeDef<'a>> for TypeDecl<'a> {
	fn from(def: &ComponentTypeDef<'a>) -> TypeDecl<'a> {
		match def {
			ComponentTypeDef::Module(m) => {
				let mut v = Vec::new();
				for m in m.iter() {
					v.push(m.into());
				}
				TypeDecl::Module(v.into())
			},
			ComponentTypeDef::Component(c) => {
				let mut v = Vec::new();
				for m in c.iter() {
					v.push(m.into());
				}
				TypeDecl::Component(v.into())
			},
			ComponentTypeDef::Instance(i) => {
				let mut v = Vec::new();
				for m in i.iter() {
					v.push(m.into());
				}
				TypeDecl::Instance(v.into())
			},
			ComponentTypeDef::Function(c) => TypeDecl::Function(c.into()),
			ComponentTypeDef::Value(ref i) => TypeDecl::Value(i.into()),
			ComponentTypeDef::Interface(i) => TypeDecl::Interface(i.into()),
		}
	}
}

impl<'a> Component<'a> {
	pub fn new() -> Component<'a> {
		Component {
			instance_function_order: Vec::new(),
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
			imports: HashMap::new(),
			exports: HashMap::new(),
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
