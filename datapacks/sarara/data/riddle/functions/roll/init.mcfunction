##アマスタ初期化
# kill @e[type=armor_stand,tag=roll_1]
# kill @e[type=armor_stand,tag=roll_2]
# kill @e[type=armor_stand,tag=roll_3]
# kill @e[type=armor_stand,tag=roll_4]
# summon armor_stand -120 52 -77 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_1"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dirt"},Time:1}]}
# summon armor_stand -120 56 -77 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_2"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dirt"},Time:1}]}
# summon armor_stand -124 56 -77 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_3"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dirt"},Time:1}]}
# summon armor_stand -124 52 -77 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_4"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dirt"},Time:1}]}
fill -120 60 -77 -134 56 -77 air

#レバーとブロック配置
setblock -127 54 -77 stone_button[facing=north, powered=false]
setblock -127 54 -76 polished_deepslate

#時計回り
execute as @e[type=armor_stand,tag=r1] at @s run tp @s -120 56 -77
execute as @e[type=armor_stand,tag=r2] at @s run tp @s -120 60 -77
execute as @e[type=armor_stand,tag=r3] at @s run tp @s -124 60 -77
execute as @e[type=armor_stand,tag=r4] at @s run tp @s -124 56 -77

#反時計回り
execute as @e[type=armor_stand,tag=r5] at @s run tp @s -134 56 -77
execute as @e[type=armor_stand,tag=r6] at @s run tp @s -134 60 -77
execute as @e[type=armor_stand,tag=r7] at @s run tp @s -130 60 -77
execute as @e[type=armor_stand,tag=r8] at @s run tp @s -130 56 -77

#スイッチの値リセット
scoreboard players set switch1 roll 0
scoreboard players set switch2 roll 0
scoreboard players set switch3 roll 0
scoreboard players set switch4 roll 0
scoreboard players set switch5 roll 0
scoreboard players set switch6 roll 0
scoreboard players set switch7 roll 0
scoreboard players set switch8 roll 0

scoreboard players set count roll 1

#動く方
##
fill -117 53 -48 -117 52 -50 deepslate_tiles
fill -117 51 -48 -117 51 -50 deepslate_bricks

fill -117 53 -60 -117 52 -62 deepslate_tiles
fill -117 51 -60 -117 51 -62 deepslate_bricks

fill -117 53 -31 -117 52 -33 deepslate_tiles
fill -117 51 -31 -117 51 -33 deepslate_bricks

fill -137 53 -33 -137 52 -31 deepslate_tiles
fill -137 51 -33 -137 51 -31 deepslate_bricks

fill -137 53 -50 -137 52 -48 deepslate_tiles
fill -137 51 -50 -137 51 -48 deepslate_bricks

fill -137 53 -62 -137 52 -60 deepslate_tiles
fill -137 51 -62 -137 51 -60 deepslate_bricks

##止まってる方
kill @e[type=armor_stand,tag=room1_move]
kill @e[type=falling_block,tag=room1_move]
kill @e[type=armor_stand,tag=room1_fixed]
kill @e[type=falling_block,tag=room1_fixed]
summon armor_stand -117 54.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 54.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 54.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 55.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 55.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 55.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 56.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 56.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -117 56.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}

summon armor_stand -137 54.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 54.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 54.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 55.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 55.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 55.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 56.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 56.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}
summon armor_stand -137 56.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room1_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room1_fixed"]}]}

kill @e[type=armor_stand,tag=room2_move]
kill @e[type=falling_block,tag=room2_move]
kill @e[type=armor_stand,tag=room2_fixed]
kill @e[type=falling_block,tag=room2_fixed]
summon armor_stand -117 54.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 54.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 54.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 55.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 55.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 55.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 56.04 -60 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 56.04 -61 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -117 56.04 -62 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}

summon armor_stand -137 54.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 54.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 54.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 55.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 55.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 55.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 56.04 -50 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 56.04 -49 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}
summon armor_stand -137 56.04 -48 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room2_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room2_fixed"]}]}

kill @e[type=armor_stand,tag=room3_move]
kill @e[type=falling_block,tag=room3_move]
kill @e[type=armor_stand,tag=room3_fixed]
kill @e[type=falling_block,tag=room3_fixed]
summon armor_stand -117 54.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 54.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 54.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 55.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 55.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 55.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 56.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 56.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}
summon armor_stand -117 56.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room3_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room3_fixed"]}]}

kill @e[type=armor_stand,tag=room4_move]
kill @e[type=falling_block,tag=room4_move]
kill @e[type=armor_stand,tag=room4_fixed]
kill @e[type=falling_block,tag=room4_fixed]
summon armor_stand -137 54.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 54.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 54.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 55.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 55.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 55.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 56.04 -33 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 56.04 -32 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}
summon armor_stand -137 56.04 -31 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["room4_fixed"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:deepslate_brick_wall"},Time:1,Tags:["room4_fixed"]}]}

