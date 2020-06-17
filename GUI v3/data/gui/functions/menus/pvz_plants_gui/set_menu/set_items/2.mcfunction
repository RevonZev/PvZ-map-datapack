# Runs from /menus/compas_gui_eg/set_menu/1.mcfunction
# Executes as gui.entity in proximity with the player

# Empty out the minecart
function gui:menus/empty

# Side Buttons
data modify entity @s Items append value {Slot:12,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Play"'},CustomModelData:5,gui_item:1b}}
data modify entity @s Items append value {Slot:14,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Reset"'},CustomModelData:3,gui_item:1b}}
