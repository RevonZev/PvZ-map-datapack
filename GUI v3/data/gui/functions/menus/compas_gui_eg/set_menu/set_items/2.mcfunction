# Runs from /menus/compas_gui_eg/set_menu/2.mcfunction
# Executes as gui.entity in proximity with the player

# Empty out the minecart
function gui:menus/empty

data modify entity @s Items append value {Slot:13b,id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'"Nothing to see here"'},gui_item:1b}}
data modify entity @s Items append value {Slot:18b,id:"minecraft:arrow",Count:1b,tag:{display:{Name:'"Back"'},gui_item:1b}}