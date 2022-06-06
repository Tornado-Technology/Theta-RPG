/// @func Inventory()
/// @param {number} slot_count
/// @desc Сreates an instance of the inventory class. Use to create a new inventory
function Inventory(_slot_count) {
	var inventory = new __ClassInventory(_slot_count);
	
	inventory.initilization();
	
	return inventory;
}

