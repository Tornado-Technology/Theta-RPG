inventory = Inventory(10);
inventory.try_add_item(Item("Test", "Test"));
inventory.try_add_item(Item("Test", "Test"));
inventory.try_add_item(Item("Test", "Test"));
inventory.try_add_item(Item("Test", "Test"));

show_debug_message(inventory.reduce_size(1));
show_debug_message(inventory);
