scoreboard players set @s gui 4
# Paste Data of menus/ex1
execute as @a if entity @s[scores={gui=4}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:5,gui_item:1,display:{Name:'{"text":"Play","color":"dark_green"}'}}},{Slot:14b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:3,gui_item:1,display:{Name:'{"text":"Reset","color":""}'}}}]}
function gui:menus/pvz_play