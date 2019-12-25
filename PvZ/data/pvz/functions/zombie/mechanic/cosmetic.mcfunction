# Cone
execute as @e[type=zombie,tag=bucket,scores={z_health=201..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:50}}]}
execute as @e[type=zombie,tag=bucket,scores={z_health=..200}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
# Bucket
execute as @e[type=zombie,tag=cone,scores={z_health=201..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:49}}]}
execute as @e[type=zombie,tag=cone,scores={z_health=..200}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
