#declare tag sunflower

# Summon
execute as @e[name="sunflower",type=!item] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:8}}],Invisible:1b,Tags:[plant,summoned,sunflower]}
execute as @e[name="sunflower",type=!item] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=sunflower,tag=summoned] run scoreboard players set @s p_health 4
execute as @e[tag=sunflower,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=sunflower,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=summoned,tag=sunflower] remove summoned

# Ability
scoreboard players add @e[tag=sunflower] ability_cooldown 1
execute as @e[tag=sunflower,scores={ability_cooldown=480}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:sunflower",tag:{display:{Name:'{"text":"Sun x50"}'}},Count:1b},Motion:[0d,0.5d,0d],Tags:[sun]}
scoreboard players set @e[tag=sunflower,scores={ability_cooldown=480..}] ability_cooldown 0