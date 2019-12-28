# Cone
execute as @e[type=zombie,tag=bucket,scores={z_health=201..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:50}}]}
execute as @e[type=zombie,tag=bucket,scores={z_health=..200}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
# Bucket
execute as @e[type=zombie,tag=cone,scores={z_health=201..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:49}}]}
execute as @e[type=zombie,tag=cone,scores={z_health=..200}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
# Screen
execute as @e[type=zombie,tag=door,scores={z_health=271..}] run data merge entity @s {HandItems:[{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:51}}]}
execute as @e[type=zombie,tag=door,scores={z_health=..270}] run data merge entity @s {HandItems:[{},{}]}
tag @e[type=zombie,tag=door,scores={z_health=..270}] remove door
