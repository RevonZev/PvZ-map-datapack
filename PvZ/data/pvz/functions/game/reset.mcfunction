tag @a[tag=!not_kill] add not_kill
tag @e[tag=gui,tag=!not_kill] add not_kill
kill @e[tag=!not_kill]
tp @e[tag=gui] ~ ~-1000 ~
setblock 1624 34 590 stone
scoreboard players reset @a
scoreboard players reset Amount sun
fill 1616 39 590 1622 39 590 minecraft:oak_wall_sign[facing=south] destroy
fill 1616 33 590 1622 32 590 air
summon armor_stand 1616 38 590 {Tags:[plantdeck],Invisible:1b}
#teleport @a 1609 29 600 facing 1591 29 600
clear @a

summon minecraft:armor_stand 1633 37 606 {Tags:[zombiespawn],Invisible:1b}
summon minecraft:armor_stand 1633 37 603 {Tags:[zombiespawn],Invisible:1b}
summon minecraft:armor_stand 1633 37 600 {Tags:[zombiespawn],Invisible:1b}
summon minecraft:armor_stand 1633 37 597 {Tags:[zombiespawn],Invisible:1b}
summon minecraft:armor_stand 1633 37 594 {Tags:[zombiespawn],Invisible:1b}

summon minecraft:area_effect_cloud 1613 37 600 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [sunspawn,main]}
summon minecraft:area_effect_cloud 1625 37 600 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [sunspawn]}

summon minecraft:armor_stand 1605 37 606 {Tags:[lawnmower],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:48}}],Rotation:[180.0f,0.0f]}
summon minecraft:armor_stand 1605 37 603 {Tags:[lawnmower],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:48}}],Rotation:[180.0f,0.0f]}
summon minecraft:armor_stand 1605 37 600 {Tags:[lawnmower],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:48}}],Rotation:[180.0f,0.0f]}
summon minecraft:armor_stand 1605 37 597 {Tags:[lawnmower],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:48}}],Rotation:[180.0f,0.0f]}
summon minecraft:armor_stand 1605 37 594 {Tags:[lawnmower],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:48}}],Rotation:[180.0f,0.0f]}

setblock 1591 30 600 minecraft:red_concrete
setblock 1592 30 600 minecraft:air

#> Zombie randomizers
scoreboard players set setTimer z_spawn_time 400
scoreboard players set currentTimer z_spawn_time -1
function pvz:zombie/mechanic/chances

#> Other
scoreboard players set @e[tag=sunspawn,type=armor_stand,tag=main] sst -1

scoreboard players set time wave -1
scoreboard players set amount wave -1
scoreboard players set setAmount wave -1
scoreboard players set addAmount wave -1
scoreboard players set delay wave -1

# Deck Plant
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [deck_plant]}
scoreboard players add @e[tag=deck_plant] deck_plant 0

#> Tag @a choose & play
tag @a remove play
tag @a add choose
