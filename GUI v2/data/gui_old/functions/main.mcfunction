# Made by Revon Zev. DO NOT ERASE THIS LINE!!!
#> Important Stuff ;)
# Tp chest minecart to player
execute as @a[scores={gui=1..}] at @s run tp @e[type=minecraft:chest_minecart,distance=..2] ~ ~1 ~
# Give player slowness
execute as @a[scores={gui=1..}] run effect give @s minecraft:slowness 1 10 true
# Un-nulling scoreboards
execute as @a unless entity @s[scores={gui=0..}] run scoreboard players add @s gui 0
# Kill all dropped gui items
kill @e[type=item,nbt={Item:{tag:{gui_item:1}}}]

#> Running the menus
function gui:menus/ex1
function gui:menus/ex2
function gui:menus/pvz_plants
function gui:menus/pvz_play
function gui:menus/pvz_hats

#> Selection "GUI"
# Selection
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"GUI"}'}}}}] at @s run function gui:menus/ex1
# De-selection
execute as @a at @s if entity @s[scores={gui=1..2}] unless entity @s[nbt={SelectedItem:{id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"GUI"}'}}}}] run function gui:reset

#> Selection "Plants"
# Selection
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"Plants"}'}}}}] at @s run function gui:menus/pvz_plants
# De-selection
execute as @a at @s if entity @s[scores={gui=3..5}] unless entity @s[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"Plants"}'}}}}] run function gui:reset

#> Selection "Options"
# Selection
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"Options"}'}}}}] at @s run function gui:menus/pvz_options
# De-selection
execute as @a at @s if entity @s[scores={gui=6}] unless entity @s[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"Options"}'}}}}] run function gui:reset

#> PvZ Replace
execute as @a[tag=choose] unless entity @s[nbt={Inventory:[{id:"minecraft:Plants",tag:{CustomModelData:4}}]}] run replaceitem entity @p hotbar.4 minecraft:apple{CustomModelData:4,gui_item:1,display:{Name:'{"text":"Plants"}'}} 1
execute as @a[tag=play] unless entity @s[nbt={Inventory:[{id:"minecraft:Plants",tag:{CustomModelData:6}}]}] run replaceitem entity @p hotbar.8 minecraft:apple{CustomModelData:6,gui_item:1,display:{Name:'{"text":"Options"}'}} 1