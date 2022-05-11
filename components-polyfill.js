import init, { parse } from "./pkg/js_components.js";

await init();

export class Component {
  constructor (bytes) {
    this.binary = new Uint8Array(bytes);
    this.wasmModules = null;
    this.imports = null;
    this.runtimeInstances = null;
    this.exports = null;
  }

  async compile () {
    this.parsed = JSON.parse(parse(this.binary));
    this.types = this.parsed.types;
    
    this.wasmModules = await Promise.all(this.parsed.modules.map(module => {
      if (!module.module) throw new Error('TODO: Module Aliases');
      const { start, end } = module.module;
      return WebAssembly.compile(this.binary.slice(start, end));
    }));
  }

  getType (idx) {
    const type = this.parsed.types[idx];
    switch (type.type) {
      case 'instance':
        const exports = {};
        for (const [expt, typeIndex] of Object.entries(type.exports)) {
          exports[expt] = resolveType(type.types[typeIndex], [this, type]);
        }
        return exports;
      default: throw new Error(`TODO: ${type.type} type`);
    }
  }

  getImportTypes () {
    const imports = {};
    for (const impt of Object.keys(this.parsed.imports)) {
      imports[impt] = this.getType(this.parsed.imports[impt]);
    }
    return imports;
  }

  link (imports) {
    if (this.imports)
      throw new Error('Cannot relink');
    this.imports = imports;
  }

  async execute () {
    if (this.runtimeInstances)
      throw new Error('Cannot reexecute');
    this.runtimeInstances = [];
    for (const instance of this.parsed.instances) {
      switch (instance.sort) {
        case 'imported-instance':
          this.runtimeInstances.push(this.imports[instance.specifier]);
        break;
        case 'module':
          const importObj = {};
          for (const impt of Object.keys(instance.imports))
            importObj[impt] = this.runtimeInstances[instance.imports[impt]];
          this.runtimeInstances.push((await WebAssembly.instantiate(this.wasmModules[instance.index], importObj)).exports);
        break;
        case 'module-from-exports':
        case 'component-from-exports':
          const moduleFromExports = {};
          for (const name of Object.keys(instance.exports))
            moduleFromExports[name] = resolveComponentRef(instance.exports[name], this);
          this.runtimeInstances.push(moduleFromExports);
        break;
        default: throw new Error(`TODO: ${instance.sort} instantiation`);
      }
    }
    this.exports = {};
    for (const expt of Object.keys(this.parsed.exports))
      this.exports[expt] = resolveComponentRef(this.parsed.exports[expt], this);
    return this.exports;
  }
}

function resolveComponentRef (expt, component) {
  switch (expt.sort) {
    case 'function':
      return resolveFn(expt.value, component);
    case 'table':
      return resolveAlias(expt.value, 'tables', component);
    case 'instance':
      return component.runtimeInstances[expt.value];
    default: throw new Error(`TODO: ${expt.sort} export`);
  }
}

function resolveFnType (idx, component) {
  const fn = component.parsed.functions[idx];
  switch (fn.sort) {
    case 'alias': {
      if (!fn.export) throw new Error('TODO: Inner / outer alias');
      const instance = component.parsed.instances[fn.instance];
      switch (instance.sort) {
        case 'imported-instance':
          return component.getType(component.parsed.imports[instance.specifier])[fn.export];
        case 'module':
          throw new Error(`Shouldn't need to resolve core function types as the lifting is determined by the outer type not the inner type`);
        default: throw new Error(`TODO: ${instance.sort}`);
      }
    }
    default: throw new Error(`TODO: ${fn.sort}`);
  }
}

function resolveAlias (idx, sort, component) {
  if (sort !== 'tables' && sort !== 'values' && sort !== 'memories' && sort !== 'globals' && sort !== 'tags')
    throw new Error(`Cannot resolve alias for sort ${sort}`);
  const alias = component.parsed[sort][idx];
  if (alias.export) {
    const instance = component.runtimeInstances[alias.instance];
    return instance[alias.export];
  } else {
    throw new Error(`TODO: Outer alias`);
  }
}

function resolveFn (idx, component) {
  const fn = component.parsed.functions[idx];
  switch (fn.sort) {
    case 'alias': {
      if (!fn.export) throw new Error('TODO: Inner / outer alias');
      const instance = component.runtimeInstances[fn.instance];
      return instance[fn.export];
    }
    case 'lower': {
      if (fn.encoding !== 'utf8') throw new Error(`TODO: ${fn.encoding} lowering`);
      const instance = component.runtimeInstances[fn.into];
      const func = resolveFn(fn.func_index, component);
      const funcType = resolveFnType(fn.func_index, component);
      return generateLowering(instance, funcType, func);
    }
    case 'lift': {
      if (fn.encoding !== 'utf8') throw new Error(`TODO: ${fn.encoding} lifting`);
      const instance = component.runtimeInstances[fn.into];
      const func = resolveFn(fn.func_index, component);
      const funcType = resolveFnType(fn.type_index, component);
      return generateLifting(instance, funcType, func);
    }
    default: throw new Error(`TODO: ${fn.sort}`);
  }
}

function resolveType (type, stack) {
  switch (type.type) {
    case 'alias': {
      const { count, reference } = type;
      if (count === 0)
        throw new Error('Type self alias?');
      if (count > stack.length)
        throw new Error('Invalid alias backtrack.');
      const stackIndex = stack.length - 1 - count;
      return resolveType(stack[stackIndex].types[reference], stack.slice(0, stackIndex + 1));
    }
    case 'function': {
      return {
        type: 'function',
        result: resolveType(type.result, stack),
        params: type.params.map(([name, type]) => [name, resolveType(type, stack)])
      };
    }
    case 'type':
      return resolveType(stack[stack.length - 1].types[type.value], stack);
    case 'primitive':
      return type.value;
    case 'option':
      return { type: 'option', value: resolveType(type.value, stack) };
    case 'list':
      return { type: 'list', value: resolveType(type.value, stack) };
    default: throw new Error(`TODO: ${type.type}`);
  }
}

// TODO: move this entirely into Wasm
function generateLowering (instance, funcType, func) {
  let code = '';
  const state = { params: [], args: [], argCnt: 0, ptrCnt: 0, bindingCnt: 0, paramOffset: 0, retParam: null };
  for (const [, paramType] of funcType.params)
    code += generatedLoweredParameterBinding(paramType, state);
  code += `const ret = func(${state.args.join(', ')});\n`;
  state.retParam = `arg${++state.argCnt}`;
  state.params.push(state.retParam);
  code += generateLoweredReturnBinding('ret', funcType.result, state, '');
  const f = new Function('memory', 'realloc', 'free', 'UTF8_DECODER', 'data_view', 'func', ...state.params, code);
  return f.bind(null, instance.memory, instance.canonical_abi_realloc, instance.canonical_abi_free, UTF8_DECODER, data_view, func);
}

function generatedLoweredParameterBinding (paramType, state) {
  let code = '';
  if (paramType.type) switch (paramType.type) {
    case 'list':
      switch (paramType.value) {
        case 'u8':
          state.params.push(`ptr${++state.ptrCnt}`);
          state.params.push((`len${state.ptrCnt}`));
          state.args.push(`new Uint8Array(memory.buffer.slice(ptr${state.ptrCnt}, ptr${state.ptrCnt} + len${state.ptrCnt}))`);
          break;
        default: throw new Error(`TODO: Param list of ${JSON.stringify(paramType.value)}`);
      }
      break;
    default: throw new Error(`TODO: ${paramType.type} param lower`);
  } else switch (paramType) {
    case 'string':
      state.params.push(`ptr${++state.ptrCnt}`);
      state.params.push(`len${state.ptrCnt}`);
      state.args.push(`UTF8_DECODER.decode(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, len${state.ptrCnt}))`);
    break;
    default: throw new Error(`TODO: ${paramType} param lower`);
  }
  return code;
}

let i = 1;
function generateLoweredReturnBinding (fromBinding, type, state, indent) {
  let code = '';
  if (type.type) switch(type.type) {
    case 'option':
      code += `${indent}switch (${fromBinding}) {\n`;
      code += `${indent}  case null:\n`;
      code += `${indent}    data_view(memory).setInt32(${state.retParam} + ${state.paramOffset}, 0, true);\n`;
      code += `${indent}    break;\n`;
      code += `${indent}  default: {\n`;
      code += `${indent}    data_view(memory).setInt32(${state.retParam} + ${state.paramOffset}, 1, true);\n`;
      state.paramOffset += 8;
      code += generateLoweredReturnBinding(fromBinding, type.value, state, `${indent}    `);
      code += `${indent}  }\n`;
      code += `${indent}}\n`;
    break;
    case 'list':
      switch (type.value) {
        case 'u8':
          code += `${indent}const ptr${++state.ptrCnt} = realloc(0, 0, 1, ${fromBinding}.length);\n`;
          code += `${indent}(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, ${fromBinding}.length)).set(ret);\n`;
          code += `${indent}data_view(memory).setInt32(${state.retParam} + ${state.paramOffset + 8}, ${fromBinding}.length, true);\n`;
          code += `${indent}data_view(memory).setInt32(${state.retParam} + ${state.paramOffset}, ptr${state.ptrCnt}, true);\n`;
          state.paramOffset += 8;
          
        break;
        default: throw new Error(`TODO: Param list of ${JSON.stringify(type.value)}`);
      }
    break;
    default: throw new Error(`TODO: ${type.type} return lowering`);
  } else switch (type) {
    case 'unit':
      break;
    default: throw new Error(`TODO: ${type} return lowering`);
  }
  return code;
}

function generateLifting (instance, funcType, func) {
  let code = '';
  const state = { args: [], paramCnt: 0, ptrCnt: 0, bindingCnt: 0, retOffset: 0 };
  for (const [, paramType] of funcType.params) {
    code += generateLiftedParameterBinding(paramType, state, '');
  }
  code += `const ret = func(${state.args.join(', ')});\n`;
  const outBinding = ++state.bindingCnt;
  code += `let binding${state.bindingCnt};\n`;
  code += generateLiftedReturnBinding(state.bindingCnt, funcType.result, state, '');
  code += `return binding${outBinding};\n`;
  const f = new Function('memory', 'realloc', 'free', 'utf8_encode', 'data_view', 'func', ...Array.of(state.paramCnt).map((_, idx) => `arg${idx + 1}`), code);
  return f.bind(null, instance.memory, instance.canonical_abi_realloc, instance.canonical_abi_free, utf8_encode, data_view, func);
}

function generateLiftedParameterBinding (paramType, state) {
  let code = '';
  if (paramType.type) switch (paramType.type) {
    case 'list':
      switch (paramType.value) {
        case 'u8':
          code += `const ptr${++state.ptrCnt} = realloc(0, 0, 1, arg${++state.paramCnt}.length);\n`;
          code += `(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, arg${state.paramCnt}.length)).set(new Uint8Array(arg${state.paramCnt}.buffer, arg${state.paramCnt}.byteOffset, arg${state.paramCnt}.length));\n`;
          state.args.push(`ptr${state.ptrCnt}`);
          state.args.push(`len${state.ptrCnt}`);
          break;
        default:
          throw new Error(`TODO: Param list of ${JSON.stringify(paramType.value)};`)
      }
      break;
    default: throw new Error(`TODO: ${paramType.type} param generation`);
  }
  else switch (paramType) {
    case 'string':
      code += `const { ptr: ptr${++state.ptrCnt}, bytes: len${state.ptrCnt} } = utf8_encode(arg${++state.paramCnt}, realloc, memory);\n`;
      state.args.push(`ptr${state.ptrCnt}`);
      state.args.push(`len${state.ptrCnt}`);
      break;
    default: throw new Error(`TODO: ${paramType} param generation`);
  }
  return code;
}

// generates the code to output type from Wasm memory into `binding${state.bindingCnt + 1}`
function generateLiftedReturnBinding (intoBinding, type, state, indent) {
  let code = '';
  if (type.type) switch (type.type) {
    case 'option':
      code += `${indent}switch (data_view(memory).getUint8(ret + ${state.retOffset}, true)) {\n`;
      code += `${indent}  case 0: {\n`;
      code += `${indent}    binding${intoBinding} = null;\n`;
      code += `${indent}    break;\n`;
      code += `${indent}  }\n`;
      code += `${indent}  case 1: {\n`;
      state.retOffset += 4;
      code += generateLiftedReturnBinding(intoBinding, type.value, state, `${indent}    `);
      code += `${indent}    break;\n`;
      code += `${indent}  }\n`;
      code += `${indent}}\n`;
      break;
    case 'list':
      code += `${indent}const ptr${++state.ptrCnt} = data_view(memory).getInt32(ret + ${state.retOffset}, true);\n`;
      state.retOffset += 8;
      code += `${indent}const len${state.ptrCnt} = data_view(memory).getInt32(ret + ${state.retOffset}, true);\n`;
      state.retOffset += 4;
      if (type.value.type) switch (type.value.type) {
        default: throw new Error(`TODO: List of ${type.value.type}`);
      }
      else switch (type.value) {
        case 'u8':
          code += `${indent}binding${intoBinding} = new Uint8Array(memory.buffer.slice(ptr${state.ptrCnt}, ptr${state.ptrCnt} + len${state.ptrCnt}));\n`;
        break;
        default: throw new Error(`TODO: List of ${type.value}`);
      }
      code += `${indent}free(ptr${state.ptrCnt}, len${state.ptrCnt}, 1);\n`;
      break;
    default: throw new Error(`TODO: ${type.type} return`);
  }
  else switch (type) {
    case 'unit':
      break;
    default: throw new Error(`TODO: ${type} return`);
  }
  return code;
}

// Generation intrinsics
let DATA_VIEW = new DataView(new ArrayBuffer());

function data_view(mem) {
  if (DATA_VIEW.buffer !== mem.buffer) DATA_VIEW = new DataView(mem.buffer);
  return DATA_VIEW;
}

const UTF8_ENCODER = new TextEncoder('utf-8');
const UTF8_DECODER = new TextDecoder('utf-8');

function utf8_encode(s, realloc, memory) {
  if (typeof s !== 'string') throw new TypeError('expected a string');
  
  if (s.length === 0) {
    UTF8_ENCODED_LEN = 0;
    return 1;
  }
  
  let alloc_len = 0;
  let ptr = 0;
  let bytes = 0;
  while (s.length > 0) {
    ptr = realloc(ptr, alloc_len, 1, alloc_len + s.length);
    alloc_len += s.length;
    const { read, written } = UTF8_ENCODER.encodeInto(
    s,
    new Uint8Array(memory.buffer, ptr + bytes, alloc_len - bytes),
    );
    bytes += written;
    s = s.slice(read);
  }
  if (alloc_len > bytes)
  ptr = realloc(ptr, alloc_len, 1, bytes);
  return { ptr, bytes };
}
