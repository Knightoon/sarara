##summon
execute as @e[type=falling_block,tag=roll_7r] at @s run kill @s
execute as @e[type=armor_stand,tag=roll_17,tag=r7] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["roll_07","r7"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:redstone_block"},Time:1,Tags:["roll_7r"]}]}
execute as @e[type=armor_stand,tag=roll_17,tag=r7] at @s run kill @s