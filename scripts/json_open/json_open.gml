/// @func json_open()
/// @param {string} path
/// @param {struct} default
/// @desc Returns structure from file (JSON)
function json_open(_path, _default = {}) {
	var str = file_text_read_all_strings(_path);
	
	try {
		return json_parse(str);
	} catch(error) {
		trace("Json open failed, reason: ", error.message, ", path: \"", _path, "\"");
		return _default;
	}
}  
