scoreboard players set @s gui 2
# Clear the item
clear @a minecraft:cobblestone{gui_item:1}
# Paste Data of menus/ex1
execute as @a if entity @s[scores={gui=2}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:13b,id:"minecraft:stone",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"B"}'}}},{Slot:1b,id:"minecraft:cooked_chicken",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"B"}'}}},{Slot:26b,id:"minecraft:magenta_glazed_terracotta",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"Back"}'}}}]}
function gui:menus/ex2