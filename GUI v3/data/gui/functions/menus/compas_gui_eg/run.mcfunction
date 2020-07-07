# Runs from main.mcfunction
# Executes as at player holding a compass GUI Example

# Run first
## Summons the gui entity
execute if score @s gui.submenu matches 0 run function gui:menus/summon
tp @e[tag=gui.entity,distance=..2] ~ ~1 ~
## Sets the first submenu inside the gui entity
execute if score @s gui.submenu matches 0 run function gui:menus/compas_gui_eg/set_menu/1
## Sets submenu index to 1
execute if score @s gui.submenu matches 0 run scoreboard players set @s gui.submenu 1

# Click events
execute if score @s gui.submenu matches 1 run function gui:menus/compas_gui_eg/events/1
execute if score @s gui.submenu matches 2 run function gui:menus/compas_gui_eg/events/2
# Sets the menu
execute if score @s gui.submenu matches 1 run function gui:menus/compas_gui_eg/set_menu/1
execute if score @s gui.submenu matches 2 run function gui:menus/compas_gui_eg/set_menu/2