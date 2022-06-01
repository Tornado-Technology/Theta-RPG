/// @func trace()
/// @param {string} message
/// @desc Base function for logging
function trace(_message) {
	_message = string(_message);
	
	for (var i = 1; i < argument_count; i++) {
		var _next_message = string(argument[i]);
		
		if (string_pos("%", _message)) {
			_message = string_replace(_message, "%", _next_message);
		} else {
			_message += " " + _next_message;
		}
	}
	
	show_debug_message("[Trace] " + _message);
	debug_log(_message, "log.txt");
}
