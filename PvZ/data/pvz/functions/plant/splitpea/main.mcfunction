# summon
execute as @e[name="splitpea"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:52}}],Rotation:[90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,split_pea]}
execute as @e[name="splitpea"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=split_pea,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=split_pea,tag=summoned] run function pvz:plant/splitpea/assign_own_num
execute as @e[tag=split_pea,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=split_pea,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=summoned,tag=split_pea] remove summoned

# raycast
scoreboard players add @e[tag=split_pea] raycast_cooldown 1
execute as @e[tag=split_pea,scores={raycast_cooldown=30}] at @s run function pvz:plant/splitpea/ray_forward/assign_ray_num
execute as @e[tag=split_pea,scores={raycast_cooldown=30}] at @s run function pvz:plant/splitpea/ray_backward/assign_ray_num
execute as @e[tag=split_pea_ray,tag=forward] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run function pvz:plant/splitpea/ray_forward/raycast_callback
execute as @e[tag=split_pea_ray,tag=backward] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..1.5] run function pvz:plant/splitpea/ray_backward/raycast_callback
execute as @e[tag=split_pea_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run kill @s
execute as @e[tag=split_pea_ray,tag=forward] at @s run tp @s ~2 ~ ~
execute as @e[tag=split_pea_ray,tag=backward] at @s run tp @s ~-1.5 ~ ~

scoreboard players set @e[tag=split_pea,scores={raycast_cooldown=30..}] raycast_cooldown 0
execute as @e[tag=split_pea_ray] at @s if block ~ ~-7 ~ granite run kill @s
execute as @e[tag=split_pea_ray] at @s if block ~ ~-7 ~ diorite run kill @s