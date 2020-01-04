#pea_bullet
execute as @e[tag=pea_bullet] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=pea_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=pea_bullet,distance=..1] run scoreboard players remove @s z_health 20
execute as @e[tag=pea_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=pea_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=pea_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=pea_bullet] at @s if block ~ ~-2 ~ granite run kill @s

#pea_fire_bullet
execute as @e[tag=pea_fire_bullet] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=pea_fire_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=pea_fire_bullet,distance=..1] run scoreboard players remove @s z_health 40
execute as @e[tag=pea_fire_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=pea_fire_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=pea_fire_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=pea_fire_bullet] at @s if block ~ ~-2 ~ granite run kill @s

# Cannon ball
execute as @e[tag=coco_bullet] at @s run tp @s ~0.5 ~ ~
execute as @e[tag=coco_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=coco_bullet,distance=..1] run tag @s add coco_bullet_hit
execute as @e[type=zombie,tag=coco_bullet_hit] run scoreboard players remove @s z_health 600
execute as @e[type=zombie,tag=coco_bullet_hit] at @s run scoreboard players remove @e[type=zombie,distance=..5] z_health 300
execute as @e[type=zombie,tag=coco_bullet_hit] at @s run effect give @e[type=zombie,distance=..5] instant_health 1 1
execute as @e[tag=coco_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
tag @e[tag=coco_bullet_hit] remove coco_bullet_hit
execute as @e[tag=coco_bullet] at @s if block ~ ~-2 ~ granite run kill @s

#snow pea
execute as @e[tag=pea_snow_bullet] at @s run tp @s ~0.3 ~ ~
execute as @e[type=zombie] at @s if entity @e[tag=pea_snow_bullet,distance=..1] run scoreboard players remove @s z_health 20
execute as @e[type=zombie,tag=!door] at @s if entity @e[tag=pea_snow_bullet,distance=..1] run scoreboard players set @s z_SPslowtimer 1
execute as @e[type=zombie,tag=!door] at @s if entity @e[tag=pea_snow_bullet,distance=..1] run tag @s add slowed
execute as @e[type=zombie] at @s if entity @e[tag=pea_snow_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=pea_snow_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=pea_snow_bullet] at @s if block ~ ~-2 ~ granite run kill @s

execute as @e[type=zombie,scores={z_SPslowtimer=1..}] run scoreboard players add @s z_SPslowtimer 1
execute as @e[type=zombie,scores={z_SPslowtimer=1..}] run tag @s add slowed
execute as @e[type=zombie,scores={z_SPslowtimer=70..}] run tag @s remove slowed
execute as @e[type=zombie,scores={z_SPslowtimer=70..}] run scoreboard players set @s z_SPslowtimer 0

# Snapdragon fire
execute as @e[tag=snapdragon_fire] at @s run tp @s ~0.3 ~ ~
scoreboard players add @e[tag=snapdragon_fire] ability_cooldown 1
execute as @e[tag=snapdragon_fire] at @s run particle minecraft:flame ~ ~ ~ 0 1 2 0.01 1 normal

execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~-3 run scoreboard players remove @e[tag=!dfiredLeft,type=zombie,distance=..1] z_health 30
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~-3 run effect give @e[tag=!dfiredLeft,type=zombie,distance=..1] instant_health 1 1
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~-3 run tag @e[tag=!dfiredLeft,type=zombie,distance=..1] add dfiredLeft
execute as @e[tag=snapdragon_fire] at @s positioned ~-2 ~ ~-3 run tag @e[tag=dfiredLeft,type=zombie,distance=..1,] remove dfiredLeft

execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~ run scoreboard players remove @e[tag=!dfired,type=zombie,distance=..1] z_health 30
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~ run effect give @e[tag=!dfired,type=zombie,distance=..1] instant_health 1 1
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~ run tag @e[tag=!dfired,type=zombie,distance=..1] add dfired
execute as @e[tag=snapdragon_fire] at @s positioned ~-2 ~ ~ run tag @e[tag=dfired,type=zombie,distance=..1] remove dfired

execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~3 run scoreboard players remove @e[tag=!dfiredRight,type=zombie,distance=..1] z_health 30
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~3 run effect give @e[tag=!dfiredRight,type=zombie,distance=..1] instant_health 1 1
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~ ~3 run tag @e[tag=!dfiredRight,type=zombie,distance=..1] add dfiredRight
execute as @e[tag=snapdragon_fire] at @s positioned ~ ~-2 ~3 run tag @e[tag=dfiredRight,type=zombie,distance=..1] remove dfiredRight

kill @e[tag=snapdragon_fire,scores={ability_cooldown=26}]

# Laser Bean Laser
execute as @e[tag=laserbean_bullet] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=laserbean_bullet] at @s run particle minecraft:dust 1 0 0 0.5 ~ ~0.95 ~0.1 0 0 0 0.01 5 force
execute as @e[tag=laserbean_bullet] at @s run particle minecraft:dust 1 0 0 0.5 ~ ~0.95 ~-0.1 0 0 0 0.01 5 force
execute as @e[tag=laserbean_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=laserbean_bullet,distance=..1] run scoreboard players remove @s z_health 40
execute as @e[tag=laserbean_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=laserbean_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=laserbean_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=laserbean_bullet] at @s if block ~ ~-2 ~ granite run kill @s

# Citron Plasma
execute as @e[tag=citron_plasma] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=citron_plasma] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=citron_plasma,distance=..1] run scoreboard players remove @s z_health 800
execute as @e[tag=citron_plasma] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=laserbean_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=citron_plasma] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=citron_plasma] at @s if block ~ ~-2 ~ granite run kill @s

#split_pea_bullet #backward
execute as @e[tag=split_pea_bullet] at @s run tp @s ~-0.3 ~ ~
execute as @e[tag=split_pea_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=split_pea_bullet,distance=..1] run scoreboard players remove @s z_health 40
execute as @e[tag=split_pea_bullet] at @s as @e[type=zombie,tag=door,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=split_pea_bullet,distance=..1] run scoreboard players remove @s z_health 230
execute as @e[tag=split_pea_bullet] at @s as @e[type=zombie,sort=nearest,limit=1,distance=..1] at @s if entity @e[tag=split_pea_bullet,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=split_pea_bullet] at @s if entity @e[type=zombie,distance=..1] run kill @s
execute as @e[tag=split_pea_bullet] at @s if block ~ ~-2 ~ diorite run kill @s