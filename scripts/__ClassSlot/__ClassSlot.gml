/// @func __ClassSlot()
function __ClassSlot() constructor {
	item = undefined;
	type = undefined;
	
	/// @param {item} item
	static set_item = function(_item) {
		if (!is_item(_item)) return;
		
		if (type != undefined) {
			if (type != _item.get_type()) {
				return
			}
		}
		
		item = _item;
	}
	
	static get_item = function() {	
		return item;
	}
	
	/// @param {type} type
	static set_type = function(_type) {
		type_cell = _type;
	}
	
	static get_type = function() {
		return type_cell;
	}
}

