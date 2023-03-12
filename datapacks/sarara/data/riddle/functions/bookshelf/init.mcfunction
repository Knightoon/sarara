##初期化
kill @e[type=armor_stand,tag=left_books]
kill @e[type=armor_stand,tag=center_books]
kill @e[type=armor_stand,tag=right_books]

fill -128 66 18 -136 71 0 minecraft:air

clone -203 30 55 -195 35 56 -136 66 1
clone -203 30 55 -195 35 56 -136 66 12
clone -203 30 55 -195 35 56 -136 66 16

summon armor_stand -129 66 17 {Tags:["left_books"],Invisible:1b,Invulnerable:1b,Marker:1b}
summon armor_stand -129 66 13 {Tags:["center_books"],Invisible:1b,Invulnerable:1b,Marker:1b}
summon armor_stand -129 66 2 {Tags:["right_books"],Invisible:1b,Invulnerable:1b,Marker:1b}
