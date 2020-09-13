kill @e[tag=player_summon]
summon minecraft:bat ~ ~ ~ {CustomName:'"ERROR"',Tags:[player_summon], NoAI:1b, Silent: 1b}
scoreboard players operation Amount sun -= sun_cost sun