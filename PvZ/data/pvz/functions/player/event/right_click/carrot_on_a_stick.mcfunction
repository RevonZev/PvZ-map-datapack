execute as @a[scores={pe.spawn_plant=1..}] at @s positioned ~ ~1.5 ~ run function pvz:player/event/right_click/ray
scoreboard players reset @a[scores={pe.spawn_plant=1..}] pe.spawn_plant