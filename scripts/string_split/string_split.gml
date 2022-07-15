/// @param {String} string
/// @param {String} delemiter
/// @desc Simply divides the string into an array using a symbol.
function string_split(_stirng, _delemiter = ":") {
	var result = [];
	var position = string_pos(_delemiter, _stirng);
	var position_old = 1;
	var delemiter_length = string_length(_delemiter);
	
	if (delemiter_length) {
		while (position) {
			array_push(result, string_copy(_stirng, position_old, position - position_old));
			position_old = position + delemiter_length;
			position = string_pos_ext(_delemiter, _stirng, position_old);
		}
	}
	
	array_push(result, string_delete(_stirng, 1, position_old - 1));
	return result;
}
