# Summon
execute as @e[name="Torch Wood"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:19}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,summoned,torchwood]}
execute as @e[name="Torch Wood"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=torchwood,tag=summoned] run scoreboard players set @s php 4
execute as @e[tag=torchwood,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=torchwood,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=torchwood,tag=summoned] remove summoned

# Pea to fire pea
execute as @e[tag=pea_bullet,tag=!turned] at @s if entity @e[tag=torchwood,distance=..0.01] run data merge entity @s {Tags:[pea_fire_bullet],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:20}}]}

# Snowpea to pea
execute as @e[tag=pea_snow_bullet] at @s if entity @e[tag=torchwood,distance=..0.01] run data merge entity @s {Tags:[pea_bullet],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:10}}]}
