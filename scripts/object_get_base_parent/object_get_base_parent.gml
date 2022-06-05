///@arg object
function object_get_base_parent() {
	var object = argument[0];
	var parent = object_get_parent(object);
	
	if(!object_exists(object) || !object_exists(parent))
		return undefined;
		
	var new_parent = -1;
	do {
		new_parent = object_get_parent(parent);
		
		if(object_exists(new_parent))
			parent = new_parent;
				
	} until(!object_exists(new_parent));
		return parent;
}
