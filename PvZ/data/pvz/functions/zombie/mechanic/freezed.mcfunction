# Reset Freezed
scoreboard players add @e[type=zombie,tag=freezed] ability_cooldown 1
tag @e[type=zombie,tag=freezed,scores={ability_cooldown=240..}] remove freezed
scoreboard players reset @e[type=zombie,scores={ability_cooldown=240..}] ability_cooldown