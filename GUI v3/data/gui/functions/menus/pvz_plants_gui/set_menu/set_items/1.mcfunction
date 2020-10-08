# Runs from /menus/pvz_plants_gui/set_menu/1.mcfunction
# Executes as gui.entity in proximity with the player

# Empty out the minecart
function gui:menus/empty

# The Plants
data modify entity @s Items append value {Slot:0,id:"minecraft:apple",Count:1b,tag:{CustomModelData:61,display:{Name:'"Peashooter"',Lore:['{"text":"100 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:1,id:"minecraft:apple",Count:1b,tag:{CustomModelData:62,display:{Name:'"Potato Mine"',Lore:['{"text":"25 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:2,id:"minecraft:apple",Count:1b,tag:{CustomModelData:68,display:{Name:'"Sunflower"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:3,id:"minecraft:apple",Count:1b,tag:{CustomModelData:59,display:{Name:'"Jalapeno"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:4,id:"minecraft:apple",Count:1b,tag:{CustomModelData:55,display:{Name:'"Cherry Bomb"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:5,id:"minecraft:apple",Count:1b,tag:{CustomModelData:67,display:{Name:'"Squash"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:6,id:"minecraft:apple",Count:1b,tag:{CustomModelData:56,display:{Name:'"Chomper"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:7,id:"minecraft:apple",Count:1b,tag:{CustomModelData:72,display:{Name:'"Wallnut"',Lore:['{"text":"50 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:9,id:"minecraft:apple",Count:1b,tag:{CustomModelData:65,display:{Name:'"Snowpea"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:10,id:"minecraft:apple",Count:1b,tag:{CustomModelData:70,display:{Name:'"Torchwood"',Lore:['{"text":"170 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:11,id:"minecraft:apple",Count:1b,tag:{CustomModelData:63,display:{Name:'"Repeater"',Lore:['{"text":"200 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:12,id:"minecraft:apple",Count:1b,tag:{CustomModelData:57,display:{Name:'"Citron"',Lore:['{"text":"350 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:13,id:"minecraft:apple",Count:1b,tag:{CustomModelData:64,display:{Name:'"Snapdragon"',Lore:['{"text":"150 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:14,id:"minecraft:apple",Count:1b,tag:{CustomModelData:60,display:{Name:'"Laser Bean"',Lore:['{"text":"200 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:15,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Iceberg Lettuce","color":"red","bold":"true"}',Lore:['{"text":"Temporary Removal","color":"red"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:16,id:"minecraft:apple",Count:1b,tag:{CustomModelData:69,display:{Name:'"Tallnut"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:18,id:"minecraft:apple",Count:1b,tag:{CustomModelData:71,display:{Name:'"Twin Sunflower"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:19,id:"minecraft:apple",Count:1b,tag:{CustomModelData:72,display:{Name:'"Endurian"',Lore:['{"text":"100 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:20,id:"minecraft:apple",Count:1b,tag:{CustomModelData:58,display:{Name:'"Coconut Cannon"',Lore:['{"text":"400 Sun","color":"gold"}']},gui_item:1b}}
data modify entity @s Items append value {Slot:21,id:"minecraft:apple",Count:1b,tag:{CustomModelData:66,display:{Name:'"Split Pea"',Lore:['{"text":"125 Sun","color":"gold"}']},gui_item:1b}}

# Side Buttons
#data modify entity @s Items append value {Slot:8,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Up"'},CustomModelData:1,gui_item:1b}}
data modify entity @s Items append value {Slot:8,id:"minecraft:glass_pane",Count:1b,tag:{display:{Name:'""'},gui_item:1b}}
data modify entity @s Items append value {Slot:17,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Reset"'},CustomModelData:3,gui_item:1b}}
data modify entity @s Items append value {Slot:26,id:"minecraft:glass_pane",Count:1b,tag:{display:{Name:'""'},gui_item:1b}}
#data modify entity @s Items append value {Slot:26,id:"minecraft:apple",Count:1b,tag:{display:{Name:'"Down"'},CustomModelData:2,gui_item:1b}}
