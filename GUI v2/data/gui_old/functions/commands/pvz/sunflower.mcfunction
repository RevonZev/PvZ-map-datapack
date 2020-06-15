#> Main command
execute as @a unless entity @e[tag=deck_plant,scores={deck_plant=3}] run scoreboard players set @s deck_num 3
execute as @a if entity @e[tag=deck_plant,scores={deck_plant=3}] run tellraw @s {"text":"Already Picked","color":"red"}

#> End command
clear @a minecraft:blaze_spawn_egg{gui_item:1}