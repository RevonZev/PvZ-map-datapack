# summon
execute as @e[name="Citron"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:41}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,summoned,citron]}
execute as @e[name="Citron"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=citron,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=citron,tag=summoned] run function pvz:plant/citron/assign_own_num
execute as @e[tag=citron,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=citron,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=summoned,tag=citron] remove summoned

# animation
scoreboard players add @e[tag=citron] anim 1
execute as @e[tag=citron,scores={anim=0..99}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:41}}]}
execute as @e[tag=citron,scores={anim=100..199}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:42}}]}
execute as @e[tag=citron,scores={anim=200..209}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:43}}]}
execute as @e[tag=citron,scores={anim=210..219}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:44}}]}
scoreboard players set @e[tag=citron,tag=!shoot,scores={anim=219..}] anim 200
tag @e[tag=citron,tag=!shoot,scores={anim=200..}] add ready

# shoot animation
scoreboard players set @e[tag=citron,tag=shoot,scores={anim=..219}] anim 220
execute as @e[tag=citron,scores={anim=220}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:45}}]}
execute as @e[tag=citron,scores={anim=230}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:46}}]}
execute as @e[tag=citron,scores={anim=235}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:47}}],Invisible:1b,Tags:[citron_plasma]}
tag @e[tag=citron,scores={anim=240}] remove shoot
tag @e[tag=citron,scores={anim=240}] remove ready
scoreboard players set @e[tag=citron,scores={anim=240}] anim 0

# raycast
scoreboard players add @e[tag=citron,tag=!shoot,tag=ready] raycast_cooldown 1
execute as @e[tag=citron,scores={raycast_cooldown=30}] at @s run function pvz:plant/citron/assign_ray_num
execute as @e[tag=citron_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run function pvz:plant/citron/raycast_callback
execute as @e[tag=citron_ray] at @s positioned ~ ~-5 ~ if entity @e[type=zombie,distance=..2] run kill @s
execute as @e[tag=citron_ray] at @s run tp @s ~1 ~ ~

scoreboard players set @e[tag=citron,scores={raycast_cooldown=30}] raycast_cooldown 0
execute as @e[tag=citron_ray] at @s if block ~ ~-7 ~ granite run kill @s
