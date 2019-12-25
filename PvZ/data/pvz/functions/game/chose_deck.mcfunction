# Peashooter 1
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=1}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Peashooter\"}",Text3:"{\"text\":\"100\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=1}] run scoreboard players set @s deck_plant 1
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=1}] run clone 1600 26 608 1600 25 608 ~ ~-6 ~

# Potatomine 2
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=2}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Potato Mine\"}",Text3:"{\"text\":\"25\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=2}] run scoreboard players set @s deck_plant 2
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=2}] run clone 1601 26 608 1601 25 608 ~ ~-6 ~

# Sunflower 3
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=3}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Sunflower\"}",Text3:"{\"text\":\"50\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=3}] run scoreboard players set @s deck_plant 3
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=3}] run clone 1602 26 608 1602 25 608 ~ ~-6 ~

# Jalapeno 4
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=4}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Jalapeno\"}",Text3:"{\"text\":\"150\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=4}] run scoreboard players set @s deck_plant 4
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=4}] run clone 1603 26 608 1603 25 608 ~ ~-6 ~

# Cherry Bomb 5
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=5}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Cherry Bomb\"}",Text3:"{\"text\":\"125\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=5}] run scoreboard players set @s deck_plant 5
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=5}] run clone 1604 26 608 1604 25 608 ~ ~-6 ~

# Squash 6
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=6}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Squash\"}",Text3:"{\"text\":\"50\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=6}] run scoreboard players set @s deck_plant 6
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=6}] run clone 1605 26 608 1605 25 608 ~ ~-6 ~

# Chomper 7
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=7}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Chomper\"}",Text3:"{\"text\":\"150\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=7}] run scoreboard players set @s deck_plant 7
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=7}] run clone 1606 26 608 1606 25 608 ~ ~-6 ~

# Wallnut 8
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=8}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Wallnut\"}",Text3:"{\"text\":\"50\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=8}] run scoreboard players set @s deck_plant 8
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=8}] run clone 1607 26 608 1607 25 608 ~ ~-6 ~

# Snowpea 9
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=9}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"SnowPea\"}",Text3:"{\"text\":\"150\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=9}] run scoreboard players set @s deck_plant 9
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=9}] run clone 1608 26 608 1608 25 608 ~ ~-6 ~

# Torchwood 10
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=10}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"TorchWood\"}",Text3:"{\"text\":\"175\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=10}] run scoreboard players set @s deck_plant 10
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=10}] run clone 1609 26 608 1609 25 608 ~ ~-6 ~

# Reapeater 11
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=11}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Reapeater\"}",Text3:"{\"text\":\"200\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=11}] run scoreboard players set @s deck_plant 11
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=11}] run clone 1610 26 608 1610 25 608 ~ ~-6 ~

# Citron 12
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=12}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Citron\"}",Text3:"{\"text\":\"350\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=12}] run scoreboard players set @s deck_plant 12
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=12}] run clone 1611 26 608 1611 25 608 ~ ~-6 ~

# Snapdragon 13
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=13}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Snapdragon\"}",Text3:"{\"text\":\"150\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=13}] run scoreboard players set @s deck_plant 13
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=13}] run clone 1612 26 608 1612 25 608 ~ ~-6 ~

# Laser Bean 14
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=14}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Laser Bean\"}",Text3:"{\"text\":\"200\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=14}] run scoreboard players set @s deck_plant 14
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=14}] run clone 1613 26 608 1613 25 608 ~ ~-6 ~

# Iceberg Lettuce 15
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=15}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Iceberg Lettuce\"}",Text3:"{\"text\":\"0\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=15}] run scoreboard players set @s deck_plant 15
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=15}] run clone 1615 26 608 1615 25 608 ~ ~-6 ~

# Tall Nut 16
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=16}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"TallNut\"}",Text3:"{\"text\":\"125\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=16}] run scoreboard players set @s deck_plant 16
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=16}] run clone 1614 26 608 1614 25 608 ~ ~-6 ~

# Twin Sunflower 17
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=17}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"TwinSunFlower\"}",Text3:"{\"text\":\"125\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=17}] run scoreboard players set @s deck_plant 17
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=17}] run clone 1601 26 611 1601 25 611 ~ ~-6 ~

# Endurian 18
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=18}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Endurian\"}",Text3:"{\"text\":\"100\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=18}] run scoreboard players set @s deck_plant 18
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=18}] run clone 1602 26 611 1602 25 611 ~ ~-6 ~

# Coconut Cannon 19
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=19}] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-5 ~ redstone_block\"}}",Text2:"{\"text\":\"Coconut Cannon\"}",Text3:"{\"text\":\"400\"}"}
execute as @e[tag=deck_plant,scores={deck_plant=0},limit=1] if entity @a[scores={deck_num=19}] run scoreboard players set @s deck_plant 19
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=19}] run clone 1600 26 611 1600 25 611 ~ ~-6 ~


# Continue
execute as @e[tag=plantdeck] if entity @a[scores={deck_num=1..}] run scoreboard players add @s deck 1
execute as @e[tag=plantdeck] at @s if entity @a[scores={deck_num=1..}] run tp @s ~1 ~ ~
scoreboard players reset @a deck_num