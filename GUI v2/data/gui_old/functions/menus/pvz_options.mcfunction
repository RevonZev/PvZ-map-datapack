#> Click Events
execute if entity @s[scores={gui=6}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:7,gui_item:1,display:{Name:'{"text":"Reset Music"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/pvz/reset_music
execute if entity @s[scores={gui=6}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:13b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Frenzy Mode"}',Lore:['{"text":"WARNING: LAG","color":"red","bold":"true"}']}}}]}] as @e[type=player,distance=..2] run function gui:commands/pvz/frenzy
execute if entity @s[scores={gui=6}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:14b,id:"minecraft:fire_charge",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Game Over"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/pvz/game_over

#> Summon
execute if entity @s[scores={gui=0}] run summon minecraft:chest_minecart ~ ~1 ~ {Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:7,gui_item:1,display:{Name:'{"text":"Reset Music"}'}}},{Slot:13b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Frenzy Mode"}',Lore:['{"text":"WARNING: LAG","color":"red","bold":"true"}']}}},{Slot:14b,id:"minecraft:fire_charge",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Game Over"}'}}}],Tags:[gui]}
execute if entity @s[scores={gui=0}] run execute as @s run scoreboard players set @s gui 6

#> Data
execute if entity @s[scores={gui=6}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:12b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:7,gui_item:1,display:{Name:'{"text":"Reset Music"}'}}},{Slot:13b,id:"minecraft:apple",Count:1b,tag:{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Frenzy Mode"}',Lore:['{"text":"WARNING: LAG","color":"red","bold":"true"}']}}},{Slot:14b,id:"minecraft:fire_charge",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Game Over"}'}}}]}
