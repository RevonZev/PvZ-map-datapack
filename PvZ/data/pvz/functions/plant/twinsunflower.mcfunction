# Summon
execute as @e[name="Twin Sunflower"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,twinsunflower]}
execute as @e[name="Twin Sunflower"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=twinsunflower,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=twinsunflower,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=twinsunflower,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=twinsunflower,tag=summoned] remove summoned

# Spawn sun
scoreboard players add @e[tag=twinsunflower] ability_cooldown 1
execute as @e[tag=twinsunflower,scores={ability_cooldown=480}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:sunflower",tag:{display:{Name:'{"text":"Sun x50"}'}},Count:2b,Damage:0s},Motion:[0d,0.5d,0d],Tags:[sun]}
scoreboard players set @e[tag=twinsunflower,scores={ability_cooldown=480}] ability_cooldown 0
