##summon
execute as @e[type=falling_block,tag=roll_4r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_04,tag=r4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_14","r4"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:honey_block"},Time:1,Tags:["roll_4r"]}]}
execute as @e[type=armor_stand,tag=roll_04,tag=r4] at @s run kill @s