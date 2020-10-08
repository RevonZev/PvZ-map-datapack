execute unless score time wave matches ..0 run scoreboard players remove time wave 1
#execute if score time wave matches 0 if score amount wave matches ..14 run title @a actionbar {"text":"A wave of zombies is coming","color":"red"}
#execute if score time wave matches 0 if score amount wave matches 15.. run title @a actionbar {"text":"A huge wave of zombies is coming","color":"red"}
execute if score time wave matches 0 unless score amount wave matches 0 run scoreboard players remove delay wave 1
execute if score time wave matches 0 if score delay wave matches 0 unless score amount wave matches 0 run scoreboard players set currentTimer z_spawn_time 0
execute if score time wave matches 0 if score delay wave matches 0 unless score amount wave matches 0 run scoreboard players remove amount wave 1
execute if score time wave matches 0 if score delay wave matches 0 unless score amount wave matches 0 run scoreboard players set delay wave 20

execute if score amount wave matches 0 run scoreboard players set time wave 1200
execute if score amount wave matches 0 run scoreboard players set delay wave 20
execute if score amount wave matches 0 run scoreboard players operation setAmount wave += addAmount wave
execute if score amount wave matches 0 run scoreboard players operation amount wave = setAmount wave
