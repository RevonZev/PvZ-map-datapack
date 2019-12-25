#> Click Events
# Cobblestone slot 0 goto gui 2
execute as @a at @s if entity @s[scores={gui=2}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:26b,id:"minecraft:magenta_glazed_terracotta",Count:1b,tag:{display:{Name:'{"text":"Back"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/goto_ex1
# Stone "B" run gui2_itworks
execute as @a at @s if entity @s[scores={gui=2}] as @e[type=chest_minecart,tag=gui,distance=..2] unless entity @s[nbt={Items:[{Slot:13b,id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"B"}'}}}]}] as @e[type=player,distance=..2] run function gui:commands/ex2_itworks


# Dont need summon for sub menus :D
#> Data
execute as @a at @s if entity @s[scores={gui=2}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:13b,id:"minecraft:stone",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"B"}'}}},{Slot:1b,id:"minecraft:cooked_chicken",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"B"}'}}},{Slot:26b,id:"minecraft:magenta_glazed_terracotta",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Back"}'}}}]}
