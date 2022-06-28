# JS Components

> Note: This is an experimental prototype!

Polyfill Wasm components in browsers and other JS environments.

Compiles a [WebAssembly Component](https://github.com/WebAssembly/component-model) binary into a set of core WebAssembly modules and a JSON serialization that represents the component metadata.

The JS polyfill implementation then recreates the component execution semantics on top of Core Wasm.

Inspired by https://github.com/concept-not-found/component-model-polyfill.

## Implementation Status

### Component Compilation

* Start functions are not currently supported
* Nested component binaries are not currently supported
* The `postReturn` hook is yet to be implemented, and a hard-coded free function reference is still used for now (pending upstream updates).
* JS binding wrappers are not currently generated ahead of time, this should ideally be handled via [wit-bindgen](https://github.com/bytecodealliance/wit-bindgen) directly, where a non-class-based per-function bindings generation with instrinsic injection would be useful for this, to get something closer to what the [polyfill works with](js/components-polyfill.js#L389).

### JS Pollyfill

* Not all serialized structures are supported - "TODO" errors are thrown at the unimplemented points.
* Only a very limited subset of bindings generation is supported, again with "TODO" errors. Per the above this should be moved into the component compilation step upstreaming to use [wit-bindgen](https://github.com/bytecodealliance/wit-bindgen).

This project is _not_ under active development, but will be maintained within reason. **Contributors / merging efforts very welcome**.

## Usage

### Component Compiler

Component compilation can be performed with the `js-components` CLI tool:

```
cargo build
./target/debug/js-components component.wasm -o compiled.json
```

which will display:

```
OK: Compiled component component.wasm into compiled.json
    3 core modules extracted
```

The `compiled.json` is the component serialization, along with `compiled1.wasm`, `compiled2.wasm`, `compiled3.wasm`, the set of core Wasm modules extracted from the component.

### Component Polyfill

With the component compiled, the browser polyfill is located at `js/components-polyfill.js`.

This can be used in the browser or Node.js via eg:

```html
<!doctype html>
<script type="module">
  import { Component } from './js/components-polyfill.js';

  const component = await Component.load('./compiled.json', 3);

  // logs the type structure for the component imports
  component.getImportTypes();

  // link the component against its imports
  component.link({
    dep: depInstance
  });

  // execute the component
  await component.execute();

  // access the exported component functions
  console.log(component.exports);
</script>
```

> The second number argument provided to `Component.load` is the number of core Wasm binaries that are co-located with the component serialization. This optional argument allows immediate parallel fetching of the core wasm modules, instead of needing to load the JSON serialization first.

### In-browser Compilation

To use the in-browser compiler, load the Wasm compiler from the compiled `pkg` directory:

```html
<!doctype html>
<script type="module">
  import { compileComponent } from './wasm/pkg/component-compiler-wasm.js';
  import { Component } from './js/components-polyfill.js';

  const { component: serializedComponent, coreModules } = await compileComponent(await (await fetch("component.wasm")).arrayBuffer())
  const component = new Component(serializedComponent, coreModules);
</script>
```

The `Component` instance created can then be used identically to the AOT compilation case.

## Example

For a complete end-to-end component [binary example](example/service.wat), see the example folder.

With everything built, run a local server at the base directory of `js-components` and navigate to:

* `http://localhost:5776/example/example.html` - The AOT example
* `http://localhost:5776/example/example-jit.html` - The in-browser compilation example

In the AOT example, the following compilation is run before the example to compile the component:

```
./target/debug/js-components example/service.wasm -o example/service.json
```

The following commands can get the example running fairly easily:

```
cargo install chomp
chomp build:example --serve
```

## Building

* `cargo build` builds the crates.
* `wasm-pack build --target web wasm` builds the in-browser component compilation Wasm.

Task running convenience provided by Chomp (`cargo install chomp`), allows `chomp build --serve`.
