import init, { parse } from "./js_components_wasm.js";

/**
 * @param {ArrayBuffer} binary 
 * @returns {{
 *   component: import("./components-polyfill.js").SerializedComponent,
 *   coreModules: WebAssembly.Module[]
 * }}
 */
export async function compileComponent (binary) {
  await init();
  const component = JSON.parse(parse(new Uint8Array(binary)));
  const coreModules = await Promise.all(
    component.modules
    .filter(module => module.module)
    .map(({ module }) => WebAssembly.compile(binary.slice(module.start, module.end)))
  );
  return { component, coreModules }
}
