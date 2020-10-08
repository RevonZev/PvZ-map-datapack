#summon
execute as @e[name="reapeater"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:11}}],Rotation:[90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,repeater]}
execute as @e[name="reapeater"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=repeater,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=repeater,tag=summoned] run function pvz:plant/repeater/assign_own_num
execute as @e[tag=repeater,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=repeater,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=repeater,tag=summoned] remove summoned

#raycast
scoreboard players add @e[tag=repeater] ability_cooldown 1
execute as @e[tag=repeater,scores={ability_cooldown=30}] at @s run function pvz:plant/repeater/assign_ray_num
execute as @e[tag=repeater_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run function pvz:plant/repeater/raycast_callback
execute as @e[tag=repeater_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run kill @s
execute as @e[tag=repeater_ray] at @s run tp @s ~2 ~ ~
scoreboard players set @e[tag=repeater,scores={ability_cooldown=60..}] ability_cooldown 0
execute as @e[tag=repeater_ray] at @s if block ~ ~-7 ~ granite run kill @s

#Shoot
scoreboard players add @e[tag=repeater] ability_cool2 0
scoreboard players add @e[tag=repeater,scores={ability_cool2=1..}] ability_cool2 1
execute as @e[tag=repeater,scores={ability_cool2=10}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:10}}],Invisible:1b,Tags:[pea_bullet]}
execute as @e[tag=repeater,scores={ability_cool2=20}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:10}}],Invisible:1b,Tags:[pea_bullet]}
execute as @e[tag=repeater,scores={ability_cool2=30}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:10}}],Invisible:1b,Tags:[pea_bullet]}
scoreboard players set @e[tag=repeater,scores={ability_cool2=30}] ability_cool2 0
