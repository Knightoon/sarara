##summon
execute as @e[type=falling_block,tag=roll_8r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_08,tag=r8] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_18","r8"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:glowstone"},Time:1,Tags:["roll_8r"]}]}
execute as @e[type=armor_stand,tag=roll_08,tag=r8] at @s run kill @s