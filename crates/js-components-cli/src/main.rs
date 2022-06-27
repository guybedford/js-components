use std::path::Path;
use std::env;
use std::fs;
use js_components::{parse, component};

fn main() {
	let mut args = env::args();
	if args.len() < 1 {
		eprintln!("Error: Must provide a path to a component Wasm file");
		std::process::exit(1);
	}

	let component_path = &args.nth(1).unwrap();

	if !component_path.ends_with(".wasm") {
		eprintln!("Error: Component path must end in '.wasm'");
		std::process::exit(1);
	}

	let out_component = if args.len() == 0 {
		let file_name = Path::new(&component_path).file_name().unwrap().to_str().unwrap();
		// remove ".wasm" extension
		format!("{}.json", &file_name[0..file_name.len() - 5])
	} else {
		if args.len() == 2 {
			let flag = args.nth(0).unwrap();
			if flag != "-o" {
				eprintln!("Error: Unexpected argument {}", flag);
				std::process::exit(1);
			}
			args.nth(0).unwrap()
		} else {
			eprintln!("Error: Unexpected argument {}", args.nth(1).unwrap());
			std::process::exit(1);
		}
	};

	if !out_component.ends_with(".json") {
		eprintln!("Error: Out component name must end in '.json'");
		std::process::exit(1);
	}

	let bytes = match fs::read(component_path) {
		Ok(buf) => buf,
		Err(e) => {
			eprintln!("File read error: {}", e);
			std::process::exit(1);
		}
	};

	let component = match parse(&bytes[0..bytes.len()]) {
		Ok(c) => c,
		Err(e) => {
			eprintln!("Compilation error: {}", e);
			std::process::exit(1);
		}
	};

	let serialized = match serde_json::to_string(&component) {
		Ok(s) => s,
		Err(e) => {
			eprintln!("Serialization error: {}", e);
			std::process::exit(1);
		}
	};

	match fs::write(&out_component, serialized) {
		Ok(_) => {},
		Err(e) => {
			eprintln!("Error writing {}: {}", &out_component, e);
			std::process::exit(1);
		}
	};

	let mut core_mod_cnt = 0;
	for m in component.modules {
		match m {
			component::ModuleDecl::Module { start, end } => {
				core_mod_cnt += 1;
				let out_binary = format!("{}{}.wasm", &out_component[0..out_component.len() - 5], core_mod_cnt);
				match fs::write(&out_binary, &bytes[start..end]) {
					Ok(_) => {},
					Err(e) => {
						eprintln!("Error writing {}: {}", &out_binary, e);
					}
				}
			},
			_ => {}
		};
	}

	println!("OK: Compiled component {} into {}\n    {} core modules extracted", component_path, out_component, core_mod_cnt);
}
