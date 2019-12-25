# Summon
execute as @e[name="Wallnut"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:30}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,summoned,wallnut]}
execute as @e[name="Wallnut"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=wallnut,tag=summoned] run scoreboard players set @s p_health 72
execute as @e[tag=wallnut,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=wallnut,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=wallnut,tag=summoned] remove summoned

# Apperance
execute as @e[tag=wallnut,scores={p_health=25..48}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:31}}]}
execute as @e[tag=wallnut,scores={p_health=0..24}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:32}}]}
