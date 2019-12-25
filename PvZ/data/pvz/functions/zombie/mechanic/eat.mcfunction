tag @e[type=zombie] remove stop
execute as @e[type=zombie] at @s if entity @e[tag=plant,distance=..2] run tag @s add stop
execute as @e[type=zombie,tag=stop] at @s if entity @e[tag=plant,distance=..2,tag=!freezed] run scoreboard players add @s z_bite 1
execute as @e[type=zombie,scores={z_bite=50},tag=!slowed] at @s run scoreboard players remove @e[tag=plant,distance=..2,sort=nearest,limit=1] p_health 1
execute as @e[type=zombie,scores={z_bite=50},tag=!slowed] run playsound minecraft:entity.generic.eat block @a ~ ~ ~ .5 1
execute as @e[type=zombie,scores={z_bite=50},tag=!slowed] run scoreboard players set @s z_bite 0
execute as @e[type=zombie,scores={z_bite=100},tag=slowed] at @s run scoreboard players remove @e[tag=plant,distance=..2,sort=nearest,limit=1] p_health 1
execute as @e[type=zombie,scores={z_bite=100},tag=slowed] at @s run playsound minecraft:entity.generic.eat block @a ~ ~ ~ .5 1
execute as @e[type=zombie,scores={z_bite=100},tag=slowed] run scoreboard players set @s z_bite 0
execute as @e[type=zombie,tag=!stop] run scoreboard players set @s z_bite 0