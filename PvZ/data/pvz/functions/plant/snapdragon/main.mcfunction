# summon
execute as @e[name="snapdragon"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:38}}],Rotation:[-90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,snapdragon]}
execute as @e[name="snapdragon"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=snapdragon,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=snapdragon,tag=summoned] run function pvz:plant/snapdragon/assign_own_num
execute as @e[tag=snapdragon,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=snapdragon,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=snapdragon,tag=summoned] remove summoned

# raycast
scoreboard players add @e[tag=snapdragon] raycast_cooldown 1
execute as @e[tag=snapdragon,scores={raycast_cooldown=30}] at @s run function pvz:plant/snapdragon/assign_ray_num
scoreboard players add @e[tag=snapdragon_ray] ability_cooldown 1
execute as @e[tag=snapdragon_ray] at @s positioned ~ ~-5 ~-3 if entity @e[type=zombie,distance=..2] run function pvz:plant/snapdragon/raycast_callback
execute as @e[tag=snapdragon_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run function pvz:plant/snapdragon/raycast_callback
execute as @e[tag=snapdragon_ray] at @s positioned ~ ~-5 ~3 if entity @e[type=zombie,distance=..2] run function pvz:plant/snapdragon/raycast_callback
execute as @e[tag=snapdragon_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run kill @s
execute as @e[tag=snapdragon_ray] at @s run tp @s ~1 ~ ~
kill @e[tag=snapdragon_ray,scores={ability_cooldown=7}]

# Animation
scoreboard players add @e[tag=snapdragon,nbt={ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:39}}]}] anim 1
execute as @e[tag=snapdragon,scores={anim=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:38}}]}
scoreboard players reset @e[tag=snapdragon,scores={anim=10..}] anim

scoreboard players set @e[tag=snapdragon,scores={raycast_cooldown=30}] raycast_cooldown 0
execute as @e[tag=snapdragon_ray] at @s if block ~ ~-7 ~ granite run kill @s
