#> Main command
execute as @a unless entity @e[tag=deck_plant,scores={deck_plant=13}] run scoreboard players set @s deck_num 13
execute as @a if entity @e[tag=deck_plant,scores={deck_plant=13}] run tellraw @s {"text":"Already Picked","color":"red"}

#> End command
clear @a minecraft:zombie_horse_spawn_egg{gui_item:1}