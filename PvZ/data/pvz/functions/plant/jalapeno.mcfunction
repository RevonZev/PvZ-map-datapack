# Summon
execute as @e[name="jalapeno"] at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:15}}],Rotation:[180.0f,0.0f],Invisible:1b,Tags:[plant,summoned,jalapeno]}
execute as @e[name="jalapeno"] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=jalapeno,tag=summoned] run scoreboard players set @s p_health 100
execute as @e[tag=jalapeno,tag=summoned] at @s run function pvz:plant/mechanic/doubles_detect
execute as @e[tag=jalapeno,tag=summoned] at @s run function pvz:plant/mechanic/edge_detect
tag @e[tag=summoned,tag=jalapeno] remove summoned

# Timer
scoreboard players add @e[tag=jalapeno] ability_cooldown 1

# Sounds
execute as @e[tag=jalapeno,scores={ability_cooldown=2}] at @s run playsound minecraft:entity.tnt.primed block @a ~ ~ ~ 1 1
execute as @e[tag=jalapeno,scores={ability_cooldown=29}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1

# Explode
execute as @e[tag=jalapeno,scores={ability_cooldown=29}] at @s run summon armor_stand ~ ~ ~ {Tags:[je,east],Invisible:1b}
execute as @e[tag=jalapeno,scores={ability_cooldown=29}] at @s run summon armor_stand ~ ~ ~ {Tags:[je,west],Invisible:1b}
kill @e[tag=jalapeno,scores={ability_cooldown=30}]

# Explosion Trail (je is Jalapeno Explosion)
execute as @e[tag=je] at @s run particle minecraft:flame ~ ~ ~ 0 1.5 0.5 0.01 5 normal
execute as @e[tag=je,tag=east] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=je,tag=west] at @s run tp @s ~-0.3 ~ ~
execute as @e[tag=je] at @s if block ~ ~-2 ~ granite run kill @s
execute as @e[tag=je] at @s if block ~ ~-2 ~ diorite run kill @s

# Explosion Damage
execute as @e[type=zombie] at @s if entity @e[tag=je,distance=..1] run effect give @s instant_health 1 1
execute as @e[tag=je] at @s run scoreboard players remove @e[type=zombie,distance=..1] z_health 1800
