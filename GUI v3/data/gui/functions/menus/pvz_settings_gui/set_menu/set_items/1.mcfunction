# Runs from /menus/pvz_settings_gui/set_menu/1.mcfunction
# Executes as gui.entity in proximity with the player

# Empty out the minecart
function gui:menus/empty

data modify entity @s Items append value {Slot:12,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Reset Music"'},CustomModelData:7,gui_item:1b}}
data modify entity @s Items append value {Slot:13,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Frenzy Mode"'},CustomModelData:6,gui_item:1b}}
data modify entity @s Items append value {Slot:14,id:"minecraft:fire_charge",Count:1b,tag:{display:{Name:'"Game Over"'},gui_item:1b}}