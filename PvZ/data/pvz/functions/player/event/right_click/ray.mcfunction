execute store result score sun_cost sun run data get entity @s SelectedItem.tag.sun_cost
execute if score Amount sun >= sun_cost sun unless block ~ ~ ~ minecraft:air positioned ^ ^ ^-1 align xyz positioned ~0.5 ~ ~0.5 run function pvz:player/event/right_click/summon_object
scoreboard players reset sun_cost sun
data modify entity @e[tag=player_summon,limit=1] CustomName set from entity @s SelectedItem.tag.plant_name
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function pvz:player/event/right_click/ray