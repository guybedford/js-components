/**
 * @typedef {object} SerializedComponent
 * 
 * @property {ComponentOp[]} ops
 * @property {ComponentDecl[]} modules
 * @property {ComponentDecl[]} component
 * @property {ComponentDecl[]} coreInstances
 * @property {ComponentDecl[]} instances
 * @property {ComponentDecl[]} coreFuncs
 * @property {ComponentDecl[]} funcs
 * @property {ComponentDecl[]} coreTypes
 * @property {ComponentDecl[]} types
 * @property {ComponentDecl[]} coreValues
 * @property {ComponentDecl[]} values
 * @property {ComponentDecl[]} tables
 * @property {ComponentDecl[]} memories
 * @property {ComponentDecl[]} globals
 * @property {ComponentDecl[]} tags
 * @property {Record<string, Object>} imports
 * @property {Record<string, Object>} exports
 */

/**
 * @typedef {object} ComponentDecl
 * 
 * @property {string} kind
 */

/**
 * @typedef {object} ComponentType
 * 
 * @property {ComponentDecl[]} coreTypes
 * @property {ComponentDecl[]} types
 */

/**
 * @property {SerializedComponent} component
 * @property {WebAssembly.Module[]} coreModules
 * @property {Record<string, Record<string, any>} imports
 * @property {Record<string, any>} exports
 * @property {(WebAssembly.Instance | Record<string, any>)[]} coreRuntimeInstances - Core instances
 * @property {(Component | Record<string, any>)[]} runtimeInstances - Component instances
 */
export class Component {
  /**
   * @param {SerializedComponent} component
   * @param {WebAssembly.Module[]} coreModules
   */
  constructor (component, coreModules) {
    this.component = component;
    this.coreModules = coreModules;
    this.imports = null;
    this.exports = null;
    this.coreRuntimeInstances = null;
    this.runtimeInstances = null;
  }

  getImportTypes () {
    const imports = {};
    for (const impt of Object.keys(this.component.imports)) {
      imports[impt] = resolveComponentTypeDescriptor(this.component.imports[impt], this.component);
    }
    return imports;
  }

  link (imports) {
    if (this.imports) throw new Error('Cannot relink');
    this.imports = imports;
  }

  async execute () {
    if (this.runtimeInstances) throw new Error('Cannot reexecute');
    this.runtimeInstances = [];
    this.coreRuntimeInstances = [];
    for (const op of this.component.ops) {
      switch (op.type) {
        case 'core-instance': {
          const instance = this.component.coreInstances[op.idx];
          switch (instance.kind) {
            case 'imported':
              this.coreRuntimeInstances.push(this.imports[instance.specifier]);
            break;
            case 'instantiate':
              const importObj = {};
              for (const impt of Object.keys(instance.imports))
                importObj[impt] = this.coreRuntimeInstances[instance.imports[impt]];
              this.coreRuntimeInstances.push((await WebAssembly.instantiate(this.coreModules[instance.index], importObj)).exports);
            break;
            case 'from-exports':
              const moduleFromExports = {};
              for (const name of Object.keys(instance.exports))
                moduleFromExports[name] = resolveCoreRef(instance.exports[name], this);
              this.coreRuntimeInstances.push(moduleFromExports);
            break;
            default: throw new Error(`TODO: ${instance.kind} instantiation`);
          }
          break;
        }
        case 'component-instance': {
          const instance = this.component.instances[op.idx];
          switch (instance.kind) {
            case 'imported':
              this.runtimeInstances.push(this.imports[instance.specifier]);
            break;
            case 'instantiate':
              const importObj = {};
              for (const impt of Object.keys(instance.imports))
                importObj[impt] = this.runtimeInstances[instance.imports[impt]]
              this.runtimeInstances.push((await WebAssembly.instantiate(this.coreModules[instance.index], importObj)).exports);
            break;
            case 'from-exports':
              const moduleFromExports = {};
              for (const name of Object.keys(instance.exports))
                moduleFromExports[name] = resolveComponentRef(instance.exports[name], this);
              this.runtimeInstances.push(moduleFromExports);
            break;
            default: throw new Error(`TODO: ${instance.kind} instantiation`);
          }
          break;
        }
        default: throw new Error(`Unknown component serialization op type ${op.type}`);
      }
    }
    this.exports = {};
    for (const expt of Object.keys(this.component.exports))
      this.exports[expt] = resolveComponentRef(this.component.exports[expt], this);
    return this.exports;
  }
}

/**
 * Resolve a core runtime reference 
 *
 * @param {{ sort: string, idx: number }} expt
 * @param {SerializedComponent} component
 */
function resolveCoreRef (expt, component) {
  if (!component)
    throw new Error(`Internal error: No component passed`);
  let fullSort;
  switch (expt.sort) {
    case 'instance':
      // instances resolve directly to runtime
      return component.coreRuntimeInstances[expt.idx];
    case 'func':
    case 'type':
    case 'value':
      fullSort = 'core' + expt.sort[0].toUpperCase() + expt.sort.slice(1) + 's';
      break;
    case 'memory':
      fullSort = 'memories';
      break;
    default:
      fullSort = expt.sort + 's';
  }
  const item = component.component[fullSort][expt.idx];
  if (!item) return null;
  // all index tables have the same form of having a declaration "kind" tag
  // all alias kinds are the same between all index forms
  switch (item.kind) {
    case 'alias': {
      if (!item.export) throw new Error('TODO: Inner / outer alias');
      // aliases resolve as runtime execution references
      const instance = component.coreRuntimeInstances[item.instance];
      return instance[item.export];
    }
    case 'lowered': {
      if (expt.sort !== 'func') throw new Error('Serialization error');
      if (item.opts.encoding !== 'utf8') throw new Error(`TODO: ${item.opts.encoding} lowering`);
      if (typeof item.opts.memory !== 'number') throw new Error(`Expected memory index for lowering.`);
      if (typeof item.opts.realloc !== 'number') throw new Error(`Expected realloc index for lowering.`);
      // let postReturn = resolveCoreRef({ sort: 'func', idx: item.opts.postReturn }, component);
      const memory = resolveCoreRef({ sort: 'memory', idx: item.opts.memory }, component);
      const realloc = resolveCoreRef({ sort: 'func', idx: item.opts.realloc }, component);

      // TODO: FIXME when binary updates.
      // "post return" is not currently provided in the binary output, so free is still used.
      // and the instance idx is hard-coded to the example
      const free = resolveCoreRef({ sort: 'instance', idx: 3 }, component)['canonical_abi_free'];

      const func = resolveComponentRef({ sort: 'func', idx: item.idx }, component);
      const funcType = resolveComponentType({ sort: 'func', idx: item.idx }, component.component);

      return generateLowering(func, funcType, memory, realloc, free);
    }
    default: throw new Error(`TODO: ${expt.sort} ${item.kind} core resolution`);
  }
}

/**
 * Resolve a component runtime reference 
 *
 * @param {{ sort: string, idx: number }} expt
 * @param {SerializedComponent} component
 */
function resolveComponentRef (expt, component) {
  if (!component)
    throw new Error(`Internal error: No component passed`);
  if (expt.sort === 'instance')
    return component.runtimeInstances[expt.idx];
  const fullSort = expt.sort + 's';
  const item = component.component[fullSort][expt.idx];
  if (!item) return null;
  switch (item.kind) {
    case 'alias': {
      if (!item.export) throw new Error('TODO: Inner / outer alias');
      // aliases resolve as runtime execution references
      const instance = component.runtimeInstances[item.instance];
      return instance[item.export];
    }
    case 'defined': {
      if (expt.sort !== 'type') throw new Error('Serialization error');
      return item.value;
    }
    case 'lifted': {
      if (expt.sort !== 'func') throw new Error('Serialization error');
      if (item.opts.encoding !== 'utf8') throw new Error(`TODO: ${item.opts.encoding} lifting`);
      if (typeof item.opts.memory !== 'number') throw new Error(`Expected memory index for lifting.`);
      if (typeof item.opts.realloc !== 'number') throw new Error(`Expected realloc index for lifting.`);
      // let postReturn = resolveCoreRef({ sort: 'func', idx: item.opts.postReturn }, component);
      const memory = resolveCoreRef({ sort: 'memory', idx: item.opts.memory }, component);
      const realloc = resolveCoreRef({ sort: 'func', idx: item.opts.realloc }, component);

      // TODO: FIXME when binary updates.
      // "post return" is not currently provided in the binary output, so free is still used.
      // and the instance idx is hard-coded to the example
      const free = resolveCoreRef({ sort: 'instance', idx: 3 }, component)['canonical_abi_free'];

      const func = resolveCoreRef({ sort: 'func', idx: item.funcIdx }, component);
      const funcType = resolveComponentType({ sort: 'type', idx: item.typeIdx }, component.component);
      return generateLifting(func, funcType, memory, realloc, free);
    }
    default: throw new Error(`TODO: ${expt.sort} ${item.kind} component resolution`);
  }
}

/**
 * Resolve a component type declaration
 *
 * @param {{ sort: string, idx: number }} expt
 * @param {ComponentType} component
 * @param {ComponentType[]} outer
 */
function resolveComponentType (expt, component, outer = []) {
  if (!component)
    throw new Error(`Internal error: No component passed`);
  const fullSort = expt.sort + 's';
  const item = component[fullSort][expt.idx];
  if (!item) return null;
  switch (item.kind) {
    case 'alias': {
      if (!item.export) {
        // outer aliasing
        if (typeof item.value.count !== 'number') throw new Error('Invalid serialization');
        const component = outer[outer.length - item.value.count];
        // the type is still a declaration so we resolve it as a declaration resolution
        return resolveComponentType({ sort: 'type', idx: item.value.reference }, component, outer.slice(0, outer.length - item.value.count));
      }
      const instanceType = resolveComponentType({ sort: 'instance', idx: item.instance }, component, outer);
      return instanceType[item.export];
    }
    case 'imported': {
      const instanceTypeRef = component.imports[item.specifier];
      if (instanceTypeRef.type !== 'type') throw new Error('TODO: Primitive import types');
      return resolveComponentType({ sort: 'type', idx: instanceTypeRef.value }, component, outer); 
    }
    case 'instance': {
      const instance = item.value;
      const instanceType = {};
      outer = [...outer, instance];
      for (const expt of Object.keys(instance.exports)) {
        const exportType = instance.exports[expt];
        if (exportType.type === 'primitive') throw new Error('TODO: Primitive type');
        instanceType[expt] = resolveComponentType({ sort: 'type', idx: instance.exports[expt].value }, instance, [...outer, component]);
      }
      return instanceType;
    }

    // Type Declaration Kinds:
    // All resolve their internal type representations
    case 'func': {
      if (expt.sort !== 'type') throw new Error('Invalid serialization');
      return {
        type: 'func',
        result: resolveComponentTypeDescriptor(item.value.result, component, outer),
        params: item.value.params.map(([name, type]) => [name, resolveComponentTypeDescriptor(type, component, outer)])
      };
    }
    case 'defined': {
      if (expt.sort !== 'type') throw new Error('Serialization error');
      return resolveComponentTypeDescriptor(item.value, component, outer);
    }
    default: throw new Error(`TODO: ${expt.sort} ${item.kind} component type resolution`);
  }
}

/**
 * Resolve a component type descriptor
 * Iterates the type and replaces any type index references with their resolved full type descriptors
 *
 * @param {{ type: string, value: any }} type
 * @param {ComponentType} component
 * @param {ComponentType[]} outer
 */
function resolveComponentTypeDescriptor (type, component, outer = []) {
  if (!component) throw new Error('Internal error: No component passed');
  switch (type.type) {
    case 'type':
      return resolveComponentType({ sort: 'type', idx: type.value }, component, outer);
    case 'primitive':
      return type;
    case 'option':
      return { type: 'option', value: resolveComponentTypeDescriptor(type.value, component, outer) };
    case 'list':
      return { type: 'list', value: resolveComponentTypeDescriptor(type.value, component, outer) };
    default: throw new Error(`TODO: Type resolution for ${type.type}`);
  }
}

/**
 * @typedef {object} LoweringState
 * 
 * @property {string[]} params
 * @property {any[]} args
 * @property {number} argCnt
 * @property {number} ptrCnt
 * @property {number} bindingCnt
 * @property {number} paramOffset
 * @property {string | null} retParam
 */

/**
 * @param {Function} func 
 * @param {{ type: string, value: Object }} funcType 
 * @param {WebAssembly.Memory} memory 
 * @param {Function} realloc 
 * @param {Function} free 
 * @returns Function
 */
function generateLowering (func, funcType, memory, realloc, free) {
  let code = '';
  const state = { params: [], args: [], argCnt: 0, ptrCnt: 0, bindingCnt: 0, paramOffset: 0, retParam: null };
  for (const [, paramType] of funcType.params)
    generatedLoweredParameterBinding(paramType, state);
  code += `const ret = func(${state.args.join(', ')});\n`;
  state.retParam = `arg${++state.argCnt}`;
  state.params.push(state.retParam);
  code += generateLoweredReturnBinding('ret', funcType.result, state, '');
  const f = new Function('memory', 'realloc', 'free', 'UTF8_DECODER', 'data_view', 'func', ...state.params, code);
  return f.bind(null, memory, realloc, free, UTF8_DECODER, data_view, func);
}

/**
 * @param {{ type: string, value: Object }} paramType 
 * @param {LoweringState} state 
 * @returns string
 */
function generatedLoweredParameterBinding (paramType, state) {
  let code = '';
  switch (paramType.type) {
    case 'list':
      switch (paramType.value.type) {
        case 'primitive':
          switch (paramType.value.value) {
            case 'u8':
              state.params.push(`ptr${++state.ptrCnt}`);
              state.params.push((`len${state.ptrCnt}`));
              state.args.push(`new Uint8Array(memory.buffer.slice(ptr${state.ptrCnt}, ptr${state.ptrCnt} + len${state.ptrCnt}))`);
              break;
            default: throw new Error(`TODO: ${paramType.value.value} list primitive param lowering`);
          }
          break;
        default: throw new Error(`TODO: ${paramType.value.type} list param lowering`);    
      }
      break;
    case 'primitive':
      switch (paramType.value) {
        case 'string':
          state.params.push(`ptr${++state.ptrCnt}`);
          state.params.push(`len${state.ptrCnt}`);
          state.args.push(`UTF8_DECODER.decode(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, len${state.ptrCnt}))`);
        break;
        default: throw new Error(`TODO: ${paramType} primitive param lowering`);
      }
      break;
    default: throw new Error(`TODO: ${paramType.type} param lowering`);
  }
  return code;
}

/**
 * @param {number} fromBinding 
 * @param {{ type: string, value: Object }} type 
 * @param {LoweringState} state 
 * @param {string} indent 
 * @returns 
 */
function generateLoweredReturnBinding (fromBinding, type, state, indent) {
  let code = '';
  switch(type.type) {
    case 'option':
      code += `${indent}switch (${fromBinding}) {\n`;
      code += `${indent}  case null:\n`;
      code += `${indent}    data_view(memory).setInt8(${state.retParam} + ${state.paramOffset}, 0, true);\n`;
      code += `${indent}    break;\n`;
      code += `${indent}  default: {\n`;
      code += `${indent}    data_view(memory).setInt8(${state.retParam} + ${state.paramOffset}, 1, true);\n`;
      state.paramOffset += 4;
      code += generateLoweredReturnBinding(fromBinding, type.value, state, `${indent}    `);
      code += `${indent}  }\n`;
      code += `${indent}}\n`;
      break;
    case 'list':
      switch (type.value.type) {
        case 'primitive':
          switch (type.value.value) {
            case 'u8':
              code += `${indent}const ptr${++state.ptrCnt} = realloc(0, 0, 1, ${fromBinding}.length);\n`;
              code += `${indent}(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, ${fromBinding}.length)).set(ret);\n`;
              code += `${indent}data_view(memory).setInt32(${state.retParam} + ${state.paramOffset + 4}, ${fromBinding}.length, true);\n`;
              code += `${indent}data_view(memory).setInt32(${state.retParam} + ${state.paramOffset}, ptr${state.ptrCnt}, true);\n`;
              state.paramOffset += 4;
              break;
            default: throw new Error(`TODO: ${type.value.value} list primitive return lowering`);
          }
          break;
        default: throw new Error(`TODO: ${type.value.type} list return lowering`);
      }
      break;
    case 'primitive':
      switch (type.value) {
        case 'unit':
          break;
        default: throw new Error(`TODO: ${type} primitive return lowering`);
      }
      break;
    default: throw new Error(`TODO: ${type} return lowering`);
  }
  return code;
}

/**
 * @typedef {object} LiftingState
 * 
 * @property {any[]} args
 * @property {number} paramCnt
 * @property {number} ptrCnt
 * @property {number} bindingCnt
 * @property {number} retOffset
 */

/**
 * @param {Function} func 
 * @param {{ type: string, value: Object }} funcType 
 * @param {WebAssembly.Memory} memory 
 * @param {Function} realloc 
 * @param {Function} free 
 * @returns Function
 */
function generateLifting (func, funcType, memory, realloc, free) {
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
  return f.bind(null, memory, realloc, free, utf8_encode, data_view, func);
}

/**
 * @param {{ type: string, value: Object }} paramType 
 * @param {LiftingState} state 
 * @returns string
 */
function generateLiftedParameterBinding (paramType, state) {
  let code = '';
  switch (paramType.type) {
    case 'list':
      switch (paramType.value.type) {
        case 'primitive':
          switch (paramType.value.value) {
            case 'u8':
              code += `const ptr${++state.ptrCnt} = realloc(0, 0, 1, arg${++state.paramCnt}.length);\n`;
              code += `(new Uint8Array(memory.buffer, ptr${state.ptrCnt}, arg${state.paramCnt}.length)).set(new Uint8Array(arg${state.paramCnt}.buffer, arg${state.paramCnt}.byteOffset, arg${state.paramCnt}.length));\n`;
              state.args.push(`ptr${state.ptrCnt}`);
              state.args.push(`len${state.ptrCnt}`);
              break;
            default: throw new Error(`TODO: ${paramType.value} list primitive param lifting`);
          }
        break;
        default: throw new Error(`TODO: ${paramType.value.type} list param lifting`);
      }
      break;
    case 'primitive':
      switch (paramType.value) {
        case 'string':
          code += `const { ptr: ptr${++state.ptrCnt}, bytes: len${state.ptrCnt} } = utf8_encode(arg${++state.paramCnt}, realloc, memory);\n`;
          state.args.push(`ptr${state.ptrCnt}`);
          state.args.push(`len${state.ptrCnt}`);
          break;
        default: throw new Error(`TODO: ${paramType.type} primitive param lifting`);
      }
      break;
    default: throw new Error(`TODO: ${paramType.type} param lifting`);
  }
  return code;
}


/**
 * Generate the code to output type from Wasm memory into `binding${state.bindingCnt + 1}`
 * 
 * @param {number} intoBinding 
 * @param {{ type: string, value: Object }} type 
 * @param {LiftingState} state 
 * @param {string} indent 
 * @returns string
 */
function generateLiftedReturnBinding (intoBinding, type, state, indent) {
  let code = '';
  switch (type.type) {
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
      state.retOffset += 4;
      code += `${indent}const len${state.ptrCnt} = data_view(memory).getInt32(ret + ${state.retOffset}, true);\n`;
      state.retOffset += 4;
      switch (type.value.type) {
        case 'primitive':
          switch (type.value.value) {
            case 'u8':
              code += `${indent}binding${intoBinding} = new Uint8Array(memory.buffer.slice(ptr${state.ptrCnt}, ptr${state.ptrCnt} + len${state.ptrCnt}));\n`;
              break;
            default: throw new Error(`TODO: ${type.value.value} primitive list return lifting`);
          }
          break;
        default: throw new Error(`TODO: ${type.value.type} list return lifting`);
      }
      code += `${indent}free(ptr${state.ptrCnt}, len${state.ptrCnt}, 1);\n`;
      break;
    case 'primitive':
      switch (type.value) {
        case 'unit':
          break;
        default: throw new Error(`TODO: ${type.value} primitive return lifting`);
      }
      break;
    default: throw new Error(`TODO: ${type.type} return lifting`);
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
