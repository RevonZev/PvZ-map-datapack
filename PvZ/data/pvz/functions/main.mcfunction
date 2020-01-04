# Game
function pvz:game/chose_deck
function pvz:game/lawnmower
function pvz:game/music
function pvz:game/sun_converter
function pvz:game/sun_spawn
function pvz:game/wave

# Plant
function pvz:plant/cherrybomb
function pvz:plant/chomper
function pvz:plant/citron/main
function pvz:plant/coconutcannon
function pvz:plant/endurian
function pvz:plant/iceberglettuce
function pvz:plant/jalapeno
function pvz:plant/laserbean/main
function pvz:plant/peashooter/main
function pvz:plant/potatomine
function pvz:plant/repeater/main
function pvz:plant/snapdragon/main
function pvz:plant/snowpea/main
function pvz:plant/squash
function pvz:plant/sunflower
function pvz:plant/tallnut
function pvz:plant/torchwood
function pvz:plant/twinsunflower
function pvz:plant/wallnut
function pvz:plant/splitpea/main
#  Mechanic
function pvz:plant/mechanic/bullet
function pvz:plant/mechanic/health
function pvz:plant/mechanic/remove

# Zombie
# Mechanic
function pvz:zombie/mechanic/random_zombie
function pvz:zombie/mechanic/cosmetic
function pvz:zombie/mechanic/eat
function pvz:zombie/mechanic/freezed
function pvz:zombie/mechanic/health
function pvz:zombie/mechanic/move

# Other
execute at @e[type=zombie] if block ~ ~-2 ~ minecraft:diorite run function pvz:game/game_over
scoreboard players reset @a sneak
function gui:main