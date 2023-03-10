##summon
execute as @e[type=falling_block,tag=roll_1r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_01,tag=r1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_11","r1"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_ore"},Time:1,Tags:["roll_1r"]}]}
execute as @e[type=armor_stand,tag=roll_01,tag=r1] at @s run kill @s