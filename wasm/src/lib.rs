use wasm_bindgen::prelude::*;
use js_components;

#[wasm_bindgen]
pub fn parse(bytes: &[u8]) -> Result<String, String> {
	match js_components::parse(bytes) {
		Ok(component) => Ok(serde_json::to_string(&component).unwrap()),
		Err(err) => Err(String::from(format!("{:?}", err))),
	}
}
