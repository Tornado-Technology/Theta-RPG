/// @func __ClassItem()
/// @param {string} name
/// @param {string} description
/// @param {sprite} sprite
function __ClassItem(_name, _description, _sprite) constructor {
	__system_type = undefined; // DON'T TOUCH THIS PLS

	name = _name;
	description = _description;
	sprite = _sprite;
	
	type = undefined;
	
	static get_type = function() {
		return type;
	}
	
	/// @param {number} type
	static set_type = function(_type) {
		type = _type;
		
		return self;
	}
	
	static get_sprite = function() {
		return sprite;
	}
	
	/// @param {sprite} sprite
	static set_sprite = function(_sprite) {
		type = _sprite;
		
		return self;
	}
}

