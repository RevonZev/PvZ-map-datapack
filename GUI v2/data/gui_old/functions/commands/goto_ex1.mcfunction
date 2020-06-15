scoreboard players set @s gui 1
# Clear the item
clear @a minecraft:magenta_glazed_terracotta{gui_item:1}
# Paste Data of menus/ex1
execute as @a if entity @s[scores={gui=1}] as @e[type=chest_minecart,tag=gui,distance=..2] run data merge entity @s {Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"A"}'}}}]}
function gui:menus/ex1