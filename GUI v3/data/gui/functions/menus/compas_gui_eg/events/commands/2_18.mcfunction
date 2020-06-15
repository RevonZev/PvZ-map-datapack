# Runs from /menus/compas_gui_eg/events/2.mcfunction
# Executes as at player holding a compass GUI Example
# Submenu index 2 slot 18

# Goto submenu 1
scoreboard players set @s gui.submenu 1
function gui:menus/compas_gui_eg/set_menu/1
clear @s minecraft:arrow{gui_item:1b}