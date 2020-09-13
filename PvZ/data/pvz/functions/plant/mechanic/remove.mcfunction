execute as @e[name="Remove"] at @s run kill @e[tag=plant,sort=nearest,limit=1,distance=..1.5]
execute as @e[name="Remove"] at @s run kill @e[tag=subplant,sort=nearest,limit=1,distance=..1.5]
tp @e[name="Remove"] ~ ~10000 ~