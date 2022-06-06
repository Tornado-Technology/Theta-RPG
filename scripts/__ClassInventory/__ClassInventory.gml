/// @func __ClassInventory()
/// @param {number} size
function __ClassInventory (_size) constructor {
    slots = array_create(_size, undefined);
    
	static initilization = function() {
		for (var i = 0; i < array_length(slots); i++) {
			slots[i] = __Slot();
		}
		
		return self;
	}
	
    /// @param {number} slot_index
    static index_valid = function(_slot_index) {
        return _slot_index >= 0 && _slot_index <= array_length(slots) - 1;
    }
    
    /// @param {number} size
    static reduce_size = function(_size, _clear = false) {
		if (_clear) {
			
		}
    }

    /// @param {number} index
    static try_get_slot = function(_index) {
        return index_valid(_index) ? slots[_index] : undefined;
    }
    
    /// @param {number} index
    /// @param {item} item
    static try_set_item = function(_index, _item) {
        var slot = try_get_slot(_index);
       
        // Slot not founded
        if (slot == undefined) {
            return;
        }

        slot.set_item(_item);
    } 

    /// @param {item} item
    static try_add_item = function(_item) {
        for (var i = 0; i < array_length(slots); i++) {
            var slot = try_get_slot(i);
            if (slot.get_item() == undefined) {
                return try_set_item(i, _item);
            }
        }

        trace("Inventory can't add item %, reason: Inventory full", _item.name);
    }
    
	/// @param {number} index
    static try_get_item = function(_index) {
        var slot = try_get_slot(_index);
       
        // Slot not founded
        if (slot == undefined) {
            return;
        }
        
        return slot.get_item();
    }
	
	/// @param {number} index
	static clear_slot = function(_index) {
		var slot = try_get_slot(_index);
		
		// Slot not founded
        if (slot == undefined) {
            return;
        }
		
		var item = slots[slot].get_item();
		
		slots[slot].get_item() = undefined;
		
		return item;
	}
	
	static clear_all_slots = function() {
		var removed_items = [];
		
		for (var i = 0; i < array_length(slots); i++) {
			var item = clear_slot(i);
			
			if (item == undefined) continue;
			
			array_push(removed_items, item);
		}
		
		return removed_items;
	}
}

