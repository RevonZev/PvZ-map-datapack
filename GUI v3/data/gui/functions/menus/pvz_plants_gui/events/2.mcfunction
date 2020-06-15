# Runs from /menus/compas_gui_eg/run.mcfunction
# Executes as at player holding a compass GUI Example with submenu index of 2

# Goto submenu index 1
execute as @e[tag=gui.entity,distance=..1] unless data entity @s Items[{Slot:18b}] as @a[scores={gui.open=1,gui.submenu=2},distance=..1] at @s if data entity @s SelectedItem{id:"minecraft:apple"} if data entity @s SelectedItem.tag.display{Name:'{"text":"Plants"}'} run function gui:menus/pvz_plants_gui/events/commands/2_18