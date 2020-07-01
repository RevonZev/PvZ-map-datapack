# Summon
execute as @e[name="Squash"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:24}}],Rotation:[90.0f,0.0f],Invisible:1b,Tags:[plant,summoned,squash]}
execute as @e[name="Squash"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=squash,tag=summoned] run scoreboard players set @s php 1000
execute as @e[tag=squash,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=squash,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=squash,tag=summoned] remove summoned

# Jump
execute as @e[tag=squash] at @s positioned ~3 ~ ~ if entity @e[type=zombie,distance=..1] run tag @s[tag=plant] remove plant
execute as @e[tag=squash,tag=!jump] at @s positioned ~3 ~ ~ if entity @e[type=zombie,distance=..1] run data merge entity @s {Motion:[0.50,0.8,0.0],Tags:[squash,jump]}

execute as @e[tag=squash,tag=jump,nbt={OnGround:0b}] run data merge entity @s {Tags:[squash,jump,has_aired]}

# Damage
execute as @e[tag=squash,tag=has_aired,nbt={OnGround:1b}] at @s run tag @e[type=zombie,distance=..2] add squashed
execute as @e[tag=squash,tag=has_aired,nbt={OnGround:1b}] at @s run kill @s
scoreboard players remove @e[type=zombie,tag=squashed] z_health 1800
