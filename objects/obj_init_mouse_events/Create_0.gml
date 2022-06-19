on_move = Event();
click = Event();

_xprevious = 0;
_yprevious = 0;

var check_mouse_position = time_source_create(time_source_game, 2, time_source_units_frames, function() {
	_xprevious = mouse_x;
	_yprevious = mouse_y;
}, [], -1);

time_source_start(check_mouse_position);