#> Main command
execute as @a unless entity @e[tag=deck_plant,scores={deck_plant=9}] run scoreboard players set @s deck_num 9
execute as @a if entity @e[tag=deck_plant,scores={deck_plant=9}] run tellraw @s {"text":"Already Picked","color":"red"}

#> End command
clear @a minecraft:turtle_spawn_egg{gui_item:1}