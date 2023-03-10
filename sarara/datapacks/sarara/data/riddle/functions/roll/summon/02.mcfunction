##summon
execute as @e[type=falling_block,tag=roll_2r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_02,tag=r2] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_12","r2"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block"},Time:1,Tags:["roll_2r"]}]}
execute as @e[type=armor_stand,tag=roll_02,tag=r2] at @s run kill @s