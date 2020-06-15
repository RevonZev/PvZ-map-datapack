#> Main command
#execute as @a unless entity @e[tag=deck_plant,scores={deck_plant=15}] run scoreboard players set @s deck_num 15
#execute as @a if entity @e[tag=deck_plant,scores={deck_plant=15}] run tellraw @s {"text":"Already Picked","color":"red"}
tellraw @a {"text":"Temporarily removed due to OP plant.","color":"red"}

#> End command
clear @a minecraft:barrier{gui_item:1}