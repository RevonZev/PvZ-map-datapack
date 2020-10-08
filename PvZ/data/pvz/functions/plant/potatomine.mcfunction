# Summon
execute as @e[name="potato_mine"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:12}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[subplant,plant,summoned,potatomine]}
execute as @e[name="potato_mine"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=potatomine,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=potatomine,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=potatomine,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=potatomine,tag=summoned] remove summoned

# Timer
scoreboard players add @e[tag=potatomine,tag=plant] ability_cooldown 1

# Activate
tag @e[tag=potatomine,tag=plant,scores={ability_cooldown=300..}] remove plant

# Animation
scoreboard players add @e[tag=potatomine,scores={ability_cooldown=300..}] anim 1
execute as @e[tag=potatomine,scores={anim=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:13}}]}
execute as @e[tag=potatomine,scores={anim=20}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:14}}]}
scoreboard players reset @e[tag=potatomine,scores={anim=20}] anim

# Explode
execute as @e[tag=potatomine,tag=!plant] at @s if entity @e[type=zombie,distance=..1] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 10 1
execute as @e[type=zombie] at @s if entity @e[tag=potatomine,tag=!plant,distance=..1] run scoreboard players remove @e[type=zombie,distance=..1.5] z_health 1800
execute as @e[tag=potatomine,tag=!plant] at @s if entity @e[type=zombie,distance=..1] run kill @s
