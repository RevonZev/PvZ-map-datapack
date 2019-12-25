# summon
execute as @e[name="Coconut Cannon"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:25}}],Rotation:[0.0f,0.0f],Invisible:1b,Tags:[plant,summoned,coconutcannon]}
execute as @e[name="Coconut Cannon"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=coconutcannon,tag=summoned] run scoreboard players set @s p_health 4
scoreboard players add @e[tag=coconutcannon,tag=summoned] ability_cooldown 0
execute as @e[tag=coconutcannon,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=coconutcannon,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=coconutcannon,tag=summoned] remove summoned

# Detect shift -> Fire
execute as @e[tag=coconutcannon,scores={ability_cooldown=0}] at @s if entity @a[distance=..1,scores={sneak=1..}] run scoreboard players set @s ability_cooldown 300
scoreboard players remove @e[tag=coconutcannon,scores={ability_cooldown=1..}] ability_cooldown 1
execute as @e[tag=coconutcannon,scores={ability_cooldown=298}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:26}}]}
execute as @e[tag=coconutcannon,scores={ability_cooldown=298}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:28}}],Invisible:1b,Tags:[coco_bullet]}
execute as @e[tag=coconutcannon,scores={ability_cooldown=294}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:27}}]}

# Reset
execute as @e[tag=coconutcannon,scores={ability_cooldown=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:25}}]}
