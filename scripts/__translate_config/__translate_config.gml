#macro TRANSLATE_DIRECTORY "translate/"
#macro TRANSLATE_LANG_LIST "config.json"
#macro TRANSLATE_LANG_INFO "info.json"
#macro TRANSLATE_LANG_MAIN "main.json"

enum lang {
	en_us,
	en_gb,
	ru_ru,
}

// Globals
global._translate_lang_id = 0;
global._translate_lang_json = undefined;
global._translate_lang_info = undefined;
global._translate_langs = json_open(TRANSLATE_DIRECTORY + TRANSLATE_LANG_LIST)[$ "languages"];
	
global.__event_on_translate_update = Event();
#macro on_translate_update global.__event_on_translate_update

// Set first lang
translate_lang_set(0);
