inventory = Inventory(10);
inventory.try_add_item(Item("Octo", "Octo the best my friend", spr_item));

inventory.set_sprite_all_slots(spr_slot);

inventory.position_set(room_width / 2, room_height / 2, 5, 10, 10, fa_right, fa_bottom);

show_debug_message(instance_exists(obj_init_mouse_events.x))

number = 0;

var time = time_source_create(time_source_game, 1, time_source_units_frames, function() {
	obj_init_mouse_events.on_move.connect(function(_arg) {
		number += 1;
		show_debug_message("Movement! " + string(number));
	})
})

time_source_start(time);