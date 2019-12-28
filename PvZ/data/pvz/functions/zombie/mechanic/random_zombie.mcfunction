execute if score currentTimer z_spawn_time matches 1.. run scoreboard players remove currentTimer z_spawn_time 1

execute if score currentTimer z_spawn_time matches 0 as @e[tag=rdmZombie,sort=random,limit=1] run tag @s add THE_CHOOSEN_ONE
execute as @e[tag=THE_CHOOSEN_ONE,tag=spawn_normal] as @e[tag=zombiespawn,sort=random,limit=1] at @s run summon minecraft:zombie ~ ~ ~ {Tags:[normal,hp]}
execute as @e[tag=THE_CHOOSEN_ONE,tag=spawn_cone] as @e[tag=zombiespawn,sort=random,limit=1] at @s run summon minecraft:zombie ~ ~ ~ {Tags:[cone,hp]}
execute as @e[tag=THE_CHOOSEN_ONE,tag=spawn_bucket] as @e[tag=zombiespawn,sort=random,limit=1] at @s run summon minecraft:zombie ~ ~ ~ {Tags:[bucket,hp]}
execute as @e[tag=THE_CHOOSEN_ONE,tag=spawn_door] as @e[tag=zombiespawn,sort=random,limit=1] at @s run summon minecraft:zombie ~ ~ ~ {Tags:[door,hp]}
tag @e[tag=THE_CHOOSEN_ONE] remove THE_CHOOSEN_ONE

execute if score currentTimer z_spawn_time matches 0 if score setTimer z_spawn_time matches 21.. run scoreboard players remove setTimer z_spawn_time 5
execute if score currentTimer z_spawn_time matches 0 run scoreboard players operation currentTimer z_spawn_time = setTimer z_spawn_time
