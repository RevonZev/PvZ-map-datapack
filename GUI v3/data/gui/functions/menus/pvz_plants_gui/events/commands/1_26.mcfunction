# Runs from /menus/compas_gui_eg/events/1.mcfunction
# Executes as at player holding a compass GUI Example
# Submenu index 1 slot 26

# Goto submenu 2
scoreboard players set @s gui.submenu 2
function gui:menus/pvz_plants_gui/set_menu/2
clear @s minecraft:arrow{gui_item:1b}