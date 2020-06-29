# Runs from /menus/pvz_plants_gui/run.mcfunction
# Executes as at player holding an apple "Plants" with submenu index of 2

execute as @e[tag=gui.entity,distance=..1] unless data entity @s Items[{Slot:12b}] as @a[scores={gui.open=1,gui.submenu=2},distance=..1] at @s if data entity @s SelectedItem{id:"minecraft:apple"} if data entity @s SelectedItem.tag.display{Name:'{"text":"Plants"}'} run function gui:menus/pvz_plants_gui/events/commands/play
execute as @e[tag=gui.entity,distance=..1] unless data entity @s Items[{Slot:14b}] as @a[scores={gui.open=1,gui.submenu=2},distance=..1] at @s if data entity @s SelectedItem{id:"minecraft:apple"} if data entity @s SelectedItem.tag.display{Name:'{"text":"Plants"}'} run function gui:menus/pvz_plants_gui/events/commands/reset