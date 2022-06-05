/// @param {real} time
/// @param {function} function
function create_timer(_time, _function = function() {}){
	var timer = __Timer(_time, _function);
	
	array_push(__get_timers(), timer);
	
	timer.id = array_length(__get_timers()) - 1;
	
	return timer;
}

/// @param {timer} timer
function remove_timer(_timer){
	var timers = __get_timers();
	array_delete(timers, _timer.id, 1);
	__change_timers(timers);
	
	delete _timer;
}

