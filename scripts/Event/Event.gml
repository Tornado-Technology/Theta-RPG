function Event(){
	return new __class_event();
}

function __class_event() constructor {
	listeners = [];
	
	static connect = function(_function) {
		array_push(listeners, _function)
		
		return __Connection(self, array_length(listeners) - 1);
	}
	
	static invoke = function() {
		// Varriables
		var array_arguments = [];
		
		// Main
		for (var i = 0; i < argument_count; i++) {
			array_push(array_arguments, argument[i]);
		}
		
		for (var i = 0; i < array_length(listeners); i++) {
			var listener_function = listeners[i];
			
			try {
				listener_function(array_arguments);
			} catch(_error) {
				show_debug_message("listener method call error, reason: " + _error.message);
			}
		}
	}
}

/// @param {Event} event
/// @param {real} id
function __Connection(_event, _id) {
	return new __class_connection(_event, _id)
}

/// @param {Event} event
/// @param {real} id
function __class_connection(_event, _id) constructor {
	event = _event;
	connected = true;
	id = _id;
	
	static disconnect = function() {
		array_delete(event.listeners, id, 1);
		event = noone;
		connected = false;
		id = noone;
	}
}