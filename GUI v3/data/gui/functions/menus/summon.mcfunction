# Runs from /menus/MENU/run.mcfunction
# Executes as at player holding a gui item

#define tag gui.entity GUI chest minecrart entity
summon chest_minecart ~ ~1 ~ {Tags:[gui.entity],CustomName:'"GUI Example"',NoGravity:1b,Invulnerable:1b}