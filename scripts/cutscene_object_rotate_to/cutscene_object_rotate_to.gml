/// @param {object} obj
/// @param {number} angle
/// @param {number} speed
function cutscene_object_rotate_to(_obj, _angle, _speed) {
	if (instance_exists(_obj)) {
		_obj.image_angle = approach(_obj.image_angle, _angle, _speed);
		return _obj.image_angle == _angle;
	}

	return undefined;
}