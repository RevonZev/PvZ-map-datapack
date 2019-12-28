scoreboard players set @e[type=zombie,tag=bucket,tag=hp] z_health 1300
scoreboard players set @e[type=zombie,tag=cone,tag=hp] z_health 560
scoreboard players set @e[type=zombie,tag=door,tag=hp] z_health 1370
scoreboard players set @e[type=zombie,tag=normal,tag=hp] z_health 200
scoreboard players set @e[type=zombie,tag=BIGFUCKINGHP,tag=hp] z_health 10000

tag @e[type=zombie,tag=hp] remove hp
execute as @e[type=zombie] run data merge entity @s {Fire:-1s,Health:20.0f,NoAI:1b,Rotation:[90.0f,0.0f]}
execute as @e[type=zombie,scores={z_health=..0}] run kill @s

scoreboard players add @e[type=zombie] z_defence 0