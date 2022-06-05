/// @func translate_init()
/// @desc Use in obj_init to initialize
function translate_init() {
	// Macors
	#macro TRANSLATE_DIRECTORY "translate/"
	#macro TRANSLATE_LANG_LIST "config.json"
	#macro TRANSLATE_LANG_INFO "info.json"
	#macro TRANSLATE_LANG_MAIN "main.json"

	// Globals
	global._translate_lang_id = 0;
	global._translate_lang_json = undefined;
	global._translate_lang_info = undefined;
	global._translate_langs = json_open(TRANSLATE_DIRECTORY + TRANSLATE_LANG_LIST)[$ "languages"];
	
	// Logging
	trace("Translate init successful");
	
	// Set first lang
	translate_lang_set(0);
}

