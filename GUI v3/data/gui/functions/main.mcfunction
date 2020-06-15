# Runs from tick.json

#region Run first
# Checkes if player don't have any submenu score (NULL score)
execute as @a unless score @s gui.submenu matches 0.. run scoreboard players set @s gui.submenu 0
# Reset player gui.open incase player has diselect the menu
scoreboard players set @a gui.open 0
#endregion

#region Compass GUI Example menu
# The player has opened a menu
execute as @a if data entity @s SelectedItem{id:"minecraft:compass"} if data entity @s SelectedItem.tag.display{Name:'{"text":"GUI Example"}'} run scoreboard players set @s gui.open 1
# Run the menu
execute as @a at @s if data entity @s SelectedItem{id:"minecraft:compass"} if data entity @s SelectedItem.tag.display{Name:'{"text":"GUI Example"}'} run function gui:menus/compas_gui_eg/run
#endregion

#region Run last
# Reset submenu index if player has no menu opened
execute as @a if score @s gui.open matches 0 run scoreboard players set @s gui.submenu 0
# Stop player movement if player has open a menu
execute as @a if score @s gui.open matches 1 run effect give @s minecraft:jump_boost 1 128 true
execute as @a if score @s gui.open matches 1 run effect give @s minecraft:slowness 1 255 true
# Stop gui.entity from moving
execute as @e[tag=gui.entity] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
# Kills gui.entity if no player in proximity has open a menu
execute as @e[tag=gui.entity] at @s unless entity @a[scores={gui.open=1},distance=..1] run tp @s ~ -10 ~
execute as @e[tag=gui.entity] at @s unless entity @a[scores={gui.open=1},distance=..1] run kill @s
# Kills gui_item
kill @e[type=item,nbt={Item:{tag:{gui_item:1b}}}]
#endregion