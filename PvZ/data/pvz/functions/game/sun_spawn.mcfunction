execute as @e[tag=sunspawn,type=armor_stand,scores={sun_spawn_time=0},tag=main] run scoreboard players set @s sun_spawn_time 200
execute if entity @e[type=armor_stand,tag=sunspawn,scores={sun_spawn_time=1},tag=main] as @e[type=armor_stand,tag=sunspawn,sort=random,limit=1] at @s run summon item ~ ~15 ~ {Item:{id:"minecraft:sunflower",Count:50b,tag:{display:{Name:'{"text":"Sun x50"}'}},Damage:0s},Tags:[sunsky,sun,s]}
execute as @e[type=armor_stand,tag=sunspawn,scores={sun_spawn_time=0..},tag=main] run scoreboard players remove @s sun_spawn_time 1

execute as @e[type=item,tag=sunsky,tag=s] at @s run spreadplayers ~ ~ 0 8 false @s
tag @e[type=item,tag=sunsky,tag=s] remove s

# Removal
scoreboard players add @e[tag=sun,type=item,nbt={OnGround:1b}] sun_despawn 1
kill @e[type=item,scores={sun_despawn=220..},tag=sun]

# Highlight
execute as @e[type=item,tag=sun] at @s run particle minecraft:dust 1 1 0 0.5 ~ ~3 ~0.1 0 1 0 0.01 5 force
