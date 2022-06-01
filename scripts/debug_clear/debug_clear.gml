/// @func debug_clear()
/// @param {string} file_name
/// @desc Clears the log files
function debug_clear(_file = "log.txt") {
	var directory = working_directory + _file;
	file_delete(directory);
}

