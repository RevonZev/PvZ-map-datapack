tag @a remove choose
tag @a add play
kill @e[tag=gui.entity]
#tp @a 1603 38 603
scoreboard players set Amount sun 100
scoreboard players set currentTimer z_spawn_time 400

scoreboard players set time wave 2400
scoreboard players set amount wave 5
scoreboard players set setAmount wave 5
scoreboard players set addAmount wave 1
scoreboard players set delay wave 20

scoreboard players set @e[tag=sunspawn,tag=main] sun_spawn_time 140