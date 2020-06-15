#> Click Events
execute as @a at @s if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:26b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:2,gui_item:1,display:{Name:'{"text":"Down"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/goto_pvz_plants
execute as @a at @s if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Unequip"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/hats/remove
execute as @a at @s if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:0b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:4,gui_item:1,display:{Name:'{"text":"Mini-Peashooter"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/hats/one
execute as @a at @s if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:1b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Mini-Zombie"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/hats/two


# Dont need summon for sub menus :D
#> Data
execute as @a at @s if entity @s[scores={gui=5}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:0b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:4,gui_item:1,display:{Name:'{"text":"Mini-Peashooter"}'}}},{Slot:1b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Mini-Zombie"}'}}},{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Unequip"}'}}},{Slot:26b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:2,gui_item:1,display:{Name:'{"text":"Down"}'}}}]}
