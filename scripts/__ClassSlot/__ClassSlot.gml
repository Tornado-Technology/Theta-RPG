/// @func __ClassSlot()
function __ClassSlot() constructor {
	item = undefined;
	type = undefined;

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
}
