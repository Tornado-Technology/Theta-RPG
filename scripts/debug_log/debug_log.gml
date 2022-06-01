/// @func debug_log()
/// @param {string} message
/// @param {string} file_name
/// @desc Base function for create other logging methods. Better use trace()
function debug_log(_messgae, _file = "log.txt") {
	var directory = working_directory + _file;
	var prefix = "[" + date_datetime_string(date_current_datetime()) + "]";
	var file = file_text_open_append(directory);
	file_text_write_string(file, prefix + _messgae + "\n");
	file_text_close(file);
}

