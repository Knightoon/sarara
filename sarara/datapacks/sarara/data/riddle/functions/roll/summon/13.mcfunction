##summon
execute as @e[type=falling_block,tag=roll_3r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_13,tag=r3] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_03","r3"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:carved_pumpkin"},Time:1,Tags:["roll_3r"]}]}
execute as @e[type=armor_stand,tag=roll_13,tag=r3] at @s run kill @s