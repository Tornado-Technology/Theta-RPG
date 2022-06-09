/// @func __ClassSlot()
function __ClassSlot() constructor {
	item = undefined;
	sprite = undefined;
	type = undefined;
	
	position_x = 0;
	position_y = 0;

	static get_item = function() {	
		return item;
	}
	
	/// @param {item} item
	static set_item = function(_item) {
		if (!is_item(_item)) return;
		
		if (type == undefined && type == _item.get_type()) {
			item = _item;
		}
	}
	
	static get_type = function() {
		return type;
	}
	
	/// @param {type} type
	static set_type = function(_type) {
		type = _type;
	}
	
	static get_sprite = function() {
		return sprite;
	}
	
	/// @param {sprite} sprite
	static set_sprite = function(_sprite) {
		sprite = _sprite;
	}
	
	static set_position = function(_x, _y) {
		position_x = _x;
		position_y = _y;
	}
}
