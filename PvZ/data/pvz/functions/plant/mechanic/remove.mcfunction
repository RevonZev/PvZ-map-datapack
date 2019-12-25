execute as @e[name="Remove"] at @s run kill @e[tag=plant,sort=nearest,limit=1,distance=..1]
execute as @e[name="Remove"] at @s run kill @e[tag=subplant,sort=nearest,limit=1,distance=..1]
execute as @e[name="Remove"] at @s run setblock 1624 34 590 minecraft:stone
tp @e[name="Remove"] ~ ~10000 ~