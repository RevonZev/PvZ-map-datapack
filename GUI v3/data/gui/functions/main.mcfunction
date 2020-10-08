# Runs from tick.json

# Run first
## Checkes if player don't have any submenu score (NULL score)
execute as @a unless score @s gui.submenu matches 0.. run scoreboard players set @s gui.submenu 0
## Reset player gui.open incase player has diselect the menu
scoreboard players set @a gui.open 0

# PvZ Replace
execute as @a[tag=choose,scores={gui.open=0}] run function gui:menus/pvz_plants_gui/replace_hotbar
execute as @a[tag=play] run replaceitem entity @a hotbar.8 minecraft:apple{CustomModelData: 54, plant_name: '"empty"', sun_cost: 1000, plant_font_selected: '"\\uE032"', plant_font: '"\\uE031"', pvz_slot: 8, display: {Name: '{"text":"Settings"}'}, delete_item: 1b} 1
execute as @a[tag=play] run replaceitem entity @a hotbar.7 minecraft:carrot_on_a_stick{CustomModelData: 1, plant_name: '"Remove"', sun_cost: 0, plant_font_selected: '"\\uE02a"', plant_font: '"\\uE035"', pvz_slot:7, display: {Name: '{"text":"Shovel"}'}, delete_item: 1b} 1
execute as @a[tag=choose] run replaceitem entity @a hotbar.7 minecraft:carrot_on_a_stick{CustomModelData: 1, plant_name: '"Remove"', sun_cost: 0, plant_font_selected: '"\\uE02a"', plant_font: '"\\uE035"', pvz_slot:7, display: {Name: '{"text":"Shovel"}'}, delete_item: 1b} 1

##########

# Compass GUI Example menu
## The player has opened a menu
execute as @a if data entity @s SelectedItem{id: "minecraft:compass"} if data entity @s SelectedItem.tag.display{Name: '{"text":"GUI Example"}'} run scoreboard players set @s gui.open 1
## Run the menu
execute as @a at @s if data entity @s SelectedItem{id: "minecraft:compass"} if data entity @s SelectedItem.tag.display{Name: '{"text":"GUI Example"}'} run function gui:menus/compas_gui_eg/run

# PvZ Plant GUI
## The player has opened a menu
execute as @a if data entity @s SelectedItem{id: "minecraft:apple"} if data entity @s SelectedItem.tag.display{Name: '{"text":"Plants"}'} run scoreboard players set @s gui.open 1
## Run the menu
execute as @a at @s if data entity @s SelectedItem{id: "minecraft:apple"} if data entity @s SelectedItem.tag.display{Name: '{"text":"Plants"}'} run function gui:menus/pvz_plants_gui/run

# PvZ Settings GUI
## The player has opened a menu
execute as @a if data entity @s SelectedItem{id: "minecraft:apple"} if data entity @s SelectedItem.tag.display{Name: '{"text":"Settings"}'} run scoreboard players set @s gui.open 1
## Run the menu
execute as @a at @s if data entity @s SelectedItem{id: "minecraft:apple"} if data entity @s SelectedItem.tag.display{Name: '{"text":"Settings"}'} run function gui:menus/pvz_settings_gui/run

##########

# Run last
## Reset submenu index if player has no menu opened
execute as @a if score @s gui.open matches 0 run scoreboard players set @s gui.submenu 0
## Stop player movement if player has open a menu
execute as @a if score @s gui.open matches 1 run effect give @s minecraft:jump_boost 1 128 true
execute as @a if score @s gui.open matches 1 run effect give @s minecraft:slowness 1 255 true
## Stop gui.entity from moving
execute as @e[tag=gui.entity] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d]}
## Kills gui.entity if no player in proximity has open a menu
execute as @e[tag=gui.entity] at @s unless entity @a[scores={gui.open=1},distance=..2] run tp @s ~ -10 ~
execute as @e[tag=gui.entity] at @s unless entity @a[scores={gui.open=1},distance=..2] run kill @s
## Kills gui_item
kill @e[type=item,nbt={Item: {tag: {gui_item: 1b}}}]
kill @e[type=item,nbt={Item: {id: "minecraft:apple", tag: {delete_item: 1b}}}]