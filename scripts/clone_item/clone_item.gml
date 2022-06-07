/// @func clone_item()
/// @param {item} item
/// @desc Сreates a clone of the item.
function clone_item(_item) {
	var clone = Item("clone", "clone");
	var variables = variable_struct_get_names(_item);
	
	for (var i = 0; i < array_length(variables); i++) {
		var value = variable_struct_get(_item, variables[i]);
		
		if (is_struct(value)) value = clone_struct(value);
		
		variable_struct_set(clone, variables[i], value);
	}
	
	return clone;
}