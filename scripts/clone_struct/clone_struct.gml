/// @func clone_item()
/// @param {item} item
/// @desc Сreates a clone of the struct.
function clone_struct(_struct) {
	var clone = {};
	
	var variables = variable_struct_get_names(_struct);
	
	for (var i = 0; i < array_length(variables); i++) {
		var value = variable_struct_get(_struct, variables[i]);
		
		if (is_struct(value)) value = clone_struct(value);
		
		variable_struct_set(clone, variables[i], value);
	}
	
	return clone;
}