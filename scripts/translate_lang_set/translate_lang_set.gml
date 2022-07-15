/// @param {real} lang_id
function translate_lang_set(_lang_id) {
	if (!translate_lang_exists(_lang_id)) { 
		logger.error("Translate error, \"lang_id\" not exists, id: {0} ", _lang_id);
		return;
	}
	
	var root = string(global._translate_langs[_lang_id]);
	var json = json_open(TRANSLATE_DIRECTORY + root + "/" + TRANSLATE_LANG_MAIN);
	var info = json_open(TRANSLATE_DIRECTORY + root + "/" + TRANSLATE_LANG_INFO);

	// Set globals...
	global._translate_lang_id = _lang_id;
	global._translate_lang_json = json;
	global._translate_lang_info = info;
	
	logger.info("Translate set new language: {0}", _lang_id);
}
