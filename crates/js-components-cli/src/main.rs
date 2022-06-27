use std::env;

fn main() {
	let mut args = env::args();
	if args.len() < 2 {
		eprintln!("Error: Must provide a path to a component Wasm file");
		return;
	}
	let component_path = args.nth(1).unwrap();
	let component_name = "component";
	let output_dir = args.nth(2).unwrap_or(String::from("component"));

	println!("Compiled component {} into {}/{}.json", component_path, output_dir, component_name);
}
