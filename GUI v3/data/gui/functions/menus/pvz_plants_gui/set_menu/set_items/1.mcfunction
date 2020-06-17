# Runs from /menus/compas_gui_eg/set_menu/1.mcfunction
# Executes as gui.entity in proximity with the player

# Empty out the minecart
function gui:menus/empty

# The Plants
data modify entity @s Items append value {Slot:0,id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:'"Peashooter"',Lore:['{"text":"100 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:1,id:"minecraft:rabbit_spawn_egg",Count:1b,tag:{display:{Name:'"Potato Mine"',Lore:['{"text":"25 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:2,id:"minecraft:blaze_spawn_egg",Count:1b,tag:{display:{Name:'"Sunflower"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:3,id:"minecraft:mooshroom_spawn_egg",Count:1b,tag:{display:{Name:'"Jalapeno"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:4,id:"minecraft:salmon_spawn_egg",Count:1b,tag:{display:{Name:'"Cherry Bomb"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:5,id:"minecraft:drowned_spawn_egg",Count:1b,tag:{display:{Name:'"Squash"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:6,id:"minecraft:creeper_spawn_egg",Count:1b,tag:{display:{Name:'"Chomper"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:7,id:"minecraft:villager_spawn_egg",Count:1b,tag:{display:{Name:'"Wallnut"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:9,id:"minecraft:turtle_spawn_egg",Count:1b,tag:{display:{Name:'"Snowpea"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:10,id:"minecraft:donkey_spawn_egg",Count:1b,tag:{display:{Name:'"Torchwood"',Lore:['{"text":"170 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:11,id:"minecraft:parrot_spawn_egg",Count:1b,tag:{display:{Name:'"Repeater"',Lore:['{"text":"200 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:12,id:"minecraft:tropical_fish_spawn_egg",Count:1b,tag:{display:{Name:'"Citron"',Lore:['{"text":"350 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:13,id:"minecraft:tropical_fish_spawn_egg",Count:1b,tag:{display:{Name:'"Citron"',Lore:['{"text":"350 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:14,id:"minecraft:zombie_horse_spawn_egg",Count:1b,tag:{display:{Name:'"Snapdragon"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:15,id:"minecraft:creeper_spawn_egg",Count:1b,tag:{display:{Name:'"Laser Bean"',Lore:['{"text":"200 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:16,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Iceberg Lettuce","color":"red","bold":"true"}',Lore:['{"text":"Temporary Removal","color":"red"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:18,id:"minecraft:villager_spawn_egg",Count:1b,tag:{display:{Name:'"Tallnut"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:19,id:"minecraft:blaze_spawn_egg",Count:1b,tag:{display:{Name:'"Twin Sunflower"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:20,id:"minecraft:horse_spawn_egg",Count:1b,tag:{display:{Name:'"Endurian"',Lore:['{"text":"100 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:21,id:"minecraft:mule_spawn_egg",Count:1b,tag:{display:{Name:'"Coconut Cannon"',Lore:['{"text":"400 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:22,id:"minecraft:slime_spawn_egg",Count:1b,tag:{display:{Name:'"Split Pea"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}

# Side Buttons
data modify entity @s Items append value {Slot:8,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Up"'},CustomModelData:1,gui_item:1b}}
data modify entity @s Items append value {Slot:17,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Reset"'},CustomModelData:3,gui_item:1b}}
data modify entity @s Items append value {Slot:26,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Down"'},CustomModelData:2,gui_item:1b}}
