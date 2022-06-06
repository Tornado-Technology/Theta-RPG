/// @func __ClassItem()
/// @param {string} name
/// @param {string} description
function __ClassItem(_name, _description) constructor {
	__system_type = undefined; // DON'T TOUCH THIS PLS

	name = _name;
	description = _description;
	
	type = undefined;
	
	/// @param {number} type
	static set_type = function(_type) {
		type = _type;
		
		return self;
	}
	
	static get_type = function() {
		return type;
	}
}

