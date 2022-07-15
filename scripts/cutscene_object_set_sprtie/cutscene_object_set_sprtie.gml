/// @param {object} obj
/// @param {sprite} spr
function cutscene_object_set_sprtie(_obj, _spr) {
	if (instance_exists(_obj)) {
		_obj.sprite_index = _spr;
		_obj.image_index = 0;
		return true;
	}
	
	return undefined;
}