# Summon
execute as @e[name="tallnut"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:33}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,summoned,tallnut]}
execute as @e[name="tallnut"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=tallnut,tag=summoned] run scoreboard players set @s p_health 144
execute as @e[tag=tallnut,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=tallnut,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=tallnut,tag=summoned] remove summoned

# Apperance
execute as @e[tag=tallnut,scores={p_health=49..96}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:34}}]}
execute as @e[tag=tallnut,scores={p_health=0..48}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:35}}]}
