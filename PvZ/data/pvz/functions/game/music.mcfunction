execute if score time music < end music run scoreboard players add time music 1
execute if score time music >= end music run scoreboard players set time music -1

execute if score time music matches 0 run stopsound @a player minecraft:custom.ds
execute if score time music matches 1 run playsound minecraft:custom.ds player @a ~ ~ ~ 10000 0 1

stopsound @a music
