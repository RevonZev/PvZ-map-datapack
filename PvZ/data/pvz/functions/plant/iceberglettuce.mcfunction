# Summon
execute as @e[name="iceberg_lettuce"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:29}}],Rotation:[0.0f,0.0f],Invisible:1b,Tags:[subplant,plant,subplant,summoned,iceberglettuce]}
execute as @e[name="iceberg_lettuce"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=iceberglettuce,tag=summoned] run scoreboard players set @s p_health 6
execute as @e[tag=iceberglettuce,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=iceberglettuce,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=iceberglettuce,tag=summoned] remove summoned
tag @e[tag=iceberglettuce,tag=plant] remove plant

# Explode
execute as @e[tag=iceberglettuce] at @s as @e[type=zombie,sort=nearest,tag=!freezed,distance=..1,limit=1] run tag @s add freezed
execute as @e[tag=iceberglettuce,tag=!plant] at @s if entity @e[type=zombie,distance=..1] run kill @s
