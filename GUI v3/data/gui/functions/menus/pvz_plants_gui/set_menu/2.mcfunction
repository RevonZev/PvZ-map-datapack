# Runs from /menus/pvz_plants_gui/run.mcfunction
# Executes as at player holding an apple "Plants" in submenu 2

# Sets the submenu item
execute as @e[tag=gui.entity,distance=..1] run function gui:menus/pvz_plants_gui/set_menu/set_items/2

# Clear the submenu item if a player has it in Inventory
clear @s minecraft:apple{gui_item:1b}