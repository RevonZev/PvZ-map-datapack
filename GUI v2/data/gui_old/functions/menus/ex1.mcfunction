#> Click Events
# Cobblestone slot 0 goto gui 2
execute if entity @s[scores={gui=1}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{display:{Name:'{"text":"A"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/goto_ex2

#> Summon
execute if entity @s[scores={gui=0}] run summon minecraft:chest_minecart ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"A"}'}}}],Tags:[gui]}
execute if entity @s[scores={gui=0}] run execute as @s run scoreboard players set @s gui 1

#> Data
execute if entity @s[scores={gui=1}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"A"}'}}}]}
