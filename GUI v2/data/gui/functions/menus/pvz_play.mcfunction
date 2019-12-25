#> Click Events
execute as @a at @s if entity @s[scores={gui=4}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:5,gui_item:1,display:{Name:'{"text":"Play","color":"dark_green"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/pvz/play
execute as @a at @s if entity @s[scores={gui=4}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:14b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:3,gui_item:1,display:{Name:'{"text":"Reset","color":""}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/pvz/reset

# Dont need summon for sub menus :D
#> Data
execute as @a at @s if entity @s[scores={gui=4}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:5,gui_item:1,display:{Name:'{"text":"Play","color":"dark_green"}'}}},{Slot:14b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:3,gui_item:1,display:{Name:'{"text":"Reset","color":""}'}}}]}
