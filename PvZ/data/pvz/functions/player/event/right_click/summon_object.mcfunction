kill @e[tag=player_summon]
summon minecraft:cow ~ ~ ~ {CustomName:'"ERROR"',Tags:[player_summon], NoAI:1b}
scoreboard players operation Player sun -= sun_cost sun