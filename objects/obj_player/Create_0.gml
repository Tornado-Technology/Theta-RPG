global.playern_instance = id;

state_idle = State("idle", function() {

});

state_walk = State("walk", function() {
	var speed_v = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * movement_speed;
	var speed_h = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * movement_speed;
	
	//collision_update(speed_h, speed_v);
	
	//x += speed_h;
	//y += speed_v;
});

state = state_walk;

#region Movement
movement_speed = 2;

sprite_move = [];
sprite_move[dir.up]    = spr_char_frisk_walk_up;
sprite_move[dir.down]  = spr_char_frisk_walk_down;
sprite_move[dir.right] = spr_char_frisk_walk_right;
sprite_move[dir.left]  = spr_char_frisk_walk_left;
#endregion

#region Collision

collision_ignore = false;
collision_reference = obj_collider;

player_move = function(_move_x, _move_y) {
	if (collision_ignore) return;
	
	var direction_x = sign(_move_x);
	while (!place_meeting(x + _move_x, y, collision_reference)) {
		_move_x += direction_x;
	}
	
	var direction_y = sign(_move_y);
	while (!place_meeting(x, y + _move_y, collision_reference)) {
		_move_y += direction_y;
	}
	
	x += _move_y;
	y += _move_y;
}

#endregion

#region Trigger

trigger_ignore = false;
trigger_reference = obj_trigger;
trigger_instance = noone;

trigger_update = function() {
	if (trigger_ignore) return;
	
	if (place_meeting(x, y, trigger_reference)) {
		if (trigger_instance == noone) {
			trigger_instance = instance_place(x, y, trigger_reference);
			trigger_instance.on_enter();
		} else {
			trigger_instance.on_stay();
		}
	} else if (trigger_instance != noone) {
		trigger_instance.on_exit();
		trigger_instance = noone;
	}
}

#endregion
