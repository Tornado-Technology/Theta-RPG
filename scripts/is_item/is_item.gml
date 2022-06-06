/// @func is_item()
/// @param {struct} struct
/// @desc checks if the structure is an instance of the Item class
function is_item(_struct) {
	return variable_struct_exists(_struct, "__system_type");
}