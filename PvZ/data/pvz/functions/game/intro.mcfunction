clear @a
scoreboard players add @a intro 1

execute if entity @a[scores={intro=1}] run scoreboard players set time music -1
execute as @a[scores={intro=1}] run tp @s 1637 47 589 82 10
tag @a[scores={intro=1}] remove choose
tag @a[scores={intro=1}] remove play
execute as @a[scores={intro=1}] run title @a title {"text":"Plants vs Zombies","color":"green"}
execute as @a[scores={intro=1}] run title @a subtitle {"text":"Map Version 2.6","color":"white"}

execute as @a[scores={intro=100}] run title @a title {"text":"Revon","color":"red"}
execute as @a[scores={intro=100}] run title @a subtitle {"text":"Map creator","color":"white"}

execute as @a[scores={intro=200}] run title @a title {"text":"Dragonze","color":"blue"}
execute as @a[scores={intro=200}] run title @a subtitle {"text":"Builder","color":"light blue"}

execute as @a[scores={intro=300}] run teleport @s 1603 38 600 facing 1610 36 600
execute as @a[scores={intro=300}] run tellraw @a ["",{"text":"\nI do not own any of the sounds.\nAll CUSTOM sounds and music belongs to PopCap\n\n","color":"gray"},{"text":"------ Plants vs Zombie v2 ------","color":"gray"},{"text":"\n"},{"text":"Map Creator :","color":"gray"},{"text":" "},{"text":"Revon","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCLNSHwda4j1H4QH7FRok1mg"},"hoverEvent":{"action":"show_text","value":"Revon Zev YouTube Channel"}},{"text":"\n"},{"text":"Map Builder  :","color":"gray"},{"text":" "},{"text":"Dragonze","color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCxCiWErv8OkXorid7TNpqbw"},"hoverEvent":{"action":"show_text","value":"Dragonze YouTube Channel"}},{"text":"\n"},{"text":"-------------------------------","color":"gray"}]
execute as @a[scores={intro=300}] run title @a title ["",{"text":"Choose your Plants","color":"green","bold":true}]

execute as @a[scores={intro=300}] run setblock 1617 31 603 minecraft:redstone_block
execute as @a[scores={intro=300}] run tag @a add choose
execute as @a[scores={intro=310}] run setblock 1617 31 603 minecraft:air

#execute as @a[scores={intro=310}] run function pvz:game/reset
