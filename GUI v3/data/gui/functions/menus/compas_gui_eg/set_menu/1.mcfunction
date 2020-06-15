# Runs from /menus/compas_gui_eg/run.mcfunction
# Executes as at player holding a compass GUI Example in submenu 1

# Sets the submenu item
execute as @e[tag=gui.entity,distance=..1] run function gui:menus/compas_gui_eg/set_menu/set_items/1

#region Clear the submenu item if a player has it in Inventory
clear @s minecraft:cake{gui_item:1b}
clear @s minecraft:arrow{gui_item:1b}
#endregion