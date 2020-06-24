# Runs from /menus/pvz_settings_gui/run.mcfunction
# Executes as at player holding an apple "Settings" item in submenu 1

# Sets the submenu item
execute as @e[tag=gui.entity,distance=..1] run function gui:menus/pvz_settings_gui/set_menu/set_items/1

# Clear the submenu item if a player has it in Inventory
clear @s minecraft:apple{gui_item:1b}
clear @s minecraft:fire_charge{gui_item:1b}