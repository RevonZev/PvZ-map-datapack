scoreboard players set @s gui 5
# Clear the item
clear @a minecraft:apple{gui_item:1,CustomModelData:1}
# Paste Data of menus/ex1
execute as @a if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:0b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:4,gui_item:1,display:{Name:'{"text":"Mini-Peashooter"}'}}},{Slot:1b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Mini-Zombie"}'}}},{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Unequip"}'}}},{Slot:26b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:2,gui_item:1,display:{Name:'{"text":"Down"}'}}}]}
function gui:menus/ex2