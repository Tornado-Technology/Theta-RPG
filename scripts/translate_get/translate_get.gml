/// @func translate_get()
/// @param {stirng} key
/// @param {string} default
/// @desc Returns translation values from the current language
function translate_get(_key = undefined, _default = "?????") {
	var json = global._translate_lang_json;
	
	if (json == undefined || json == -4) {
		trace("Trasnlate language not laoded before reading, key: ", _key);
		return _default;
	}
	
	// Return a structure
	if (_key == undefined) { 
		// You can use it, but I STRONGLY DON'T RECOMMEND
		// (Because of this method it is impossible to control the fidelity of the key)
		return json;
	}
	
	// Return a string value
	var keys = string_split(_key, ".");
	var path = json[$ keys[0]];
	var new_path = -1;
	
	try {
		for (var i = 1; i < array_length(keys); i++) {
			new_path = path[$ keys[i]];
			path = new_path;
		}
	} catch(_error) {
		return _default;
	}
	
	return path == undefined ? _default : path;
}

