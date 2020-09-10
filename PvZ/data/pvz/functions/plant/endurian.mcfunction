# Summon
execute as @e[name="endurian"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:22}}],Rotation:[0.0f,0.0f],Invisible:1b,Tags:[plant,summoned,endurian]}
execute as @e[name="endurian"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=endurian,tag=summoned] run scoreboard players set @s p_health 54
scoreboard players add @e[tag=endurian,tag=summoned] ability_cooldown 0
execute as @e[tag=endurian,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=endurian,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=endurian,tag=summoned] remove summoned

# Damage
execute as @e[tag=endurian,scores={ability_cooldown=0}] at @s positioned ~1 ~ ~ if entity @e[type=zombie,distance=..1.5] run scoreboard players add @s ability_cooldown 1
execute as @e[tag=endurian,scores={ability_cooldown=1..}] run scoreboard players add @s ability_cooldown 1
execute as @e[tag=endurian,scores={ability_cooldown=30}] at @s positioned ~1 ~ ~ as @e[type=zombie,distance=..1.5] run scoreboard players remove @s z_health 26
execute as @e[tag=endurian,scores={ability_cooldown=30}] at @s positioned ~1 ~ ~ as @e[type=zombie,distance=..1.5] run effect give @s instant_health 1 1

# Apperance
execute as @e[tag=endurian,scores={ability_cooldown=..14}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:22}}]}
execute as @e[tag=endurian,scores={ability_cooldown=15..17}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:23}}]}
execute as @e[tag=endurian,scores={ability_cooldown=18..25}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:22}}]}
execute as @e[tag=endurian,scores={ability_cooldown=26..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:23}}]}
scoreboard players set @e[tag=endurian,scores={ability_cooldown=30..}] ability_cooldown 0
