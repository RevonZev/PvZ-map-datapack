execute as @e[tag=lawnmower,tag=!mowing] at @s if entity @e[type=zombie,distance=..1] run tag @s add mowing

execute as @e[tag=lawnmower,tag=mowing] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=lawnmower,tag=mowing] at @s run kill @e[type=zombie,distance=..1]
execute as @e[tag=lawnmower,tag=mowing] at @s if block ~ ~-2 ~ granite run kill @s
