##summon
execute as @e[type=falling_block,tag=roll_6r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_06,tag=r6] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_16","r6"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:lapis_block"},Time:1,Tags:["roll_6r"]}]}
execute as @e[type=armor_stand,tag=roll_06,tag=r6] at @s run kill @s