# Runs from /menus/pvz_plants_gui/run.mcfunction
# Executes as at player holding an apple "Plants" in submenu 1

# Sets the submenu item
execute as @e[tag=gui.entity,distance=..1] run function gui:menus/pvz_plants_gui/set_menu/set_items/1

# Clear the submenu item if a player has it in Inventory
clear @s minecraft:slime_spawn_egg{gui_item:1b}
clear @s minecraft:rabbit_spawn_egg{gui_item:1b}
clear @s minecraft:blaze_spawn_egg{gui_item:1b}
clear @s minecraft:mooshroom_spawn_egg{gui_item:1b}
clear @s minecraft:salmon_spawn_egg{gui_item:1b}
clear @s minecraft:drowned_spawn_egg{gui_item:1b}
clear @s minecraft:creeper_spawn_egg{gui_item:1b}
clear @s minecraft:villager_spawn_egg{gui_item:1b}
clear @s minecraft:turtle_spawn_egg{gui_item:1b}
clear @s minecraft:donkey_spawn_egg{gui_item:1b}
clear @s minecraft:parrot_spawn_egg{gui_item:1b}
clear @s minecraft:tropical_fish_spawn_egg{gui_item:1b}
clear @s minecraft:zombie_horse_spawn_egg{gui_item:1b}
clear @s minecraft:zombie_horse_spawn_egg{gui_item:1b}
clear @s minecraft:barrier{gui_item:1b}
clear @s minecraft:horse_spawn_egg{gui_item:1b}
clear @s minecraft:mule_spawn_egg{gui_item:1b}
clear @s minecraft:slime_spawn_egg{gui_item:1b}
clear @s minecraft:apple{gui_item:1b}