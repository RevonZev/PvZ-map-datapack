# Summon
execute as @e[name="Chomper"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:17}}],Rotation:[270.0f,0.0f],Invisible:1b,Tags:[plant,subplant,summoned,chomper]}
execute as @e[name="Chomper"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=chomper,tag=summoned] run scoreboard players set @s php 4
tag @e[tag=chomper,tag=summoned] remove plant
execute as @e[tag=chomper,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=chomper,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=chomper,tag=summoned] remove summoned

# Eat Zombie
scoreboard players add @e[tag=chomper] ability_cool2 0
execute as @e[tag=chomper,scores={ability_cool2=0}] at @s if entity @e[type=zombie,distance=..2] run scoreboard players set @s ability_cool2 1
execute as @e[tag=chomper,scores={ability_cool2=1}] at @s as @e[type=zombie,distance=..2,sort=nearest,limit=1] run scoreboard players remove @s z_health 1800
scoreboard players set @e[tag=chomper,scores={ability_cool2=1}] ability_cool2 2
execute as @e[tag=chomper,scores={ability_cool2=2}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:18}}]}
execute as @e[tag=chomper,scores={ability_cool2=2}] run tag @s add plant

# Timer
scoreboard players add @e[tag=chomper,scores={ability_cool2=2}] ability_cooldown 1

# Reset
execute as @e[tag=chomper,scores={ability_cooldown=840}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:17}}]}
scoreboard players reset @e[tag=chomper,scores={ability_cooldown=840}] ability_cool2
tag @e[tag=chomper,scores={ability_cooldown=840}] remove plant
scoreboard players reset @e[tag=chomper,scores={ability_cooldown=840}] ability_cooldown
