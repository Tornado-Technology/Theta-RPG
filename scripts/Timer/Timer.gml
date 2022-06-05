/// @param {real} time
/// @param {function} function
function __Timer(_time, _function){
	return new __class_timer(_time, _function);
}

/// @param {real} time
/// @param {function} function
function __class_timer(_time, _method) constructor {
	id = noone;
	time = _time;
	end_time = false;
	_function = _method;
	
	resume = function(_time) {
		time = _time;
		end_time = false;
	}
}
