#summon
execute as @e[name="snowpea"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:36}}],Rotation:[90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,snowpea]}
execute as @e[name="snowpea"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=snowpea,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=snowpea,tag=summoned] run function pvz:plant/snowpea/assign_own_num
execute as @e[tag=snowpea,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=snowpea,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=snowpea,tag=summoned] remove summoned

#raycast
scoreboard players add @e[tag=snowpea] raycast_cooldown 1
execute as @e[tag=snowpea,scores={raycast_cooldown=30}] at @s run function pvz:plant/snowpea/assign_ray_num
execute as @e[tag=snowpea_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run function pvz:plant/snowpea/raycast_callback
execute as @e[tag=snowpea_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run kill @s
execute as @e[tag=snowpea_ray] at @s run tp @s ~1 ~ ~

scoreboard players set @e[tag=snowpea,scores={raycast_cooldown=30}] raycast_cooldown 0
execute as @e[tag=snowpea_ray] at @s if block ~ ~-7 ~ granite run kill @s