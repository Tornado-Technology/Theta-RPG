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

logger.info("Translate load langs...");
global._translate_langs = file_finde_all(TRANSLATE_DIRECTORY + "*", fa_directory);
logger.info("Translate load {0}/{1} langs.", translate_lang_count(), translate_lang_count());

global.__event_on_translate_update = Event();
#macro on_translate_update global.__event_on_translate_update

logger.info("Translate initialization done!");

// Set first lang
translate_lang_set(0);
