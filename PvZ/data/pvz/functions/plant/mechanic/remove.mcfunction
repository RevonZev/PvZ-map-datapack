execute as @e[name="remove"] at @s run kill @e[tag=plant,sort=nearest,limit=1,distance=..1.5]
execute as @e[name="remove"] at @s run kill @e[tag=subplant,sort=nearest,limit=1,distance=..1.5]
tp @e[name="remove"] ~ ~10000 ~