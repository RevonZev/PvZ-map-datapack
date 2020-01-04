#> Main command
execute as @a unless entity @e[tag=deck_plant,scores={deck_plant=20}] run scoreboard players set @s deck_num 20
execute as @a if entity @e[tag=deck_plant,scores={deck_plant=20}] run tellraw @s {"text":"Already Picked","color":"red"}

#> End command
clear @a minecraft:slime_spawn_egg{gui_item:1}