# Summon
execute as @e[name="Cherry Bomb"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:16}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,summoned,cherrybomb]}
execute as @e[name="Cherry Bomb"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=cherrybomb,tag=summoned] run scoreboard players set @s p_health 100
execute as @e[tag=cherrybomb,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=cherrybomb,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=summoned,tag=cherrybomb] remove summoned

# Timer
scoreboard players add @e[tag=cherrybomb] ability_cooldown 1

# Sounds
execute as @e[tag=cherrybomb,scores={ability_cooldown=2}] at @s run playsound minecraft:entity.tnt.primed block @a ~ ~ ~ 1 1
execute as @e[tag=cherrybomb,scores={ability_cooldown=29}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1

# Explode
execute as @e[type=zombie] at @s if entity @e[tag=cherrybomb,distance=..5.01,scores={ability_cooldown=30}] run effect give @s instant_health 1 1
execute as @e[tag=cherrybomb,scores={ability_cooldown=30}] at @s run scoreboard players remove @e[type=zombie,distance=..5.5] z_health 1800
execute as @e[tag=cherrybomb,scores={ability_cooldown=30}] at @s run particle minecraft:explosion ~ ~ ~ 3 1.5 3 0.01 10 normal
kill @e[tag=cherrybomb,scores={ability_cooldown=30}]
