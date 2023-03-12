#ボタン削除
execute if score time roll matches 0 run setblock -127 54 -77 air

#回転開始
scoreboard players set on roll 1
scoreboard players add time roll 1

#fill -120 60 -77 -124 56 -77 air

execute if score time roll matches 1..80 if score count roll matches 1 run function riddle:roll/count/1
execute if score time roll matches 1..80 if score count roll matches 2 run function riddle:roll/count/2
execute if score time roll matches 1..80 if score count roll matches 3 run function riddle:roll/count/3
execute if score time roll matches 1..80 if score count roll matches 4 run function riddle:roll/count/4


# execute if score time roll matches 1..80 if score switch1 roll matches 0 as @e[type=armor_stand,tag=roll_1] at @s run data merge entity @e[type=armor_stand,tag=roll_1,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:diamond_block"},Time:1,Tags:["roll_1r"]}]}
# execute if score time roll matches 1..80 if score switch2 roll matches 0 as @e[type=armor_stand,tag=roll_2] at @s run data merge entity @e[type=armor_stand,tag=roll_2,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:emerald_block"},Time:1,Tags:["roll_2r"]}]}
# execute if score time roll matches 1..80 if score switch3 roll matches 0 as @e[type=armor_stand,tag=roll_3] at @s run data merge entity @e[type=armor_stand,tag=roll_3,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:gold_block"},Time:1,Tags:["roll_3r"]}]}
# execute if score time roll matches 1..80 if score switch4 roll matches 0 as @e[type=armor_stand,tag=roll_4] at @s run data merge entity @e[type=armor_stand,tag=roll_4,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_block"},Time:1,Tags:["roll_4r"]}]}

##切り替え２

#execute if score time roll matches 1..80 if score switch1 roll matches 1 as @e[type=armor_stand,tag=roll_1] at @s run data merge entity @e[type=armor_stand,tag=roll_1,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block"},Time:1,Tags:["roll_1r"]}]}
#execute if score time roll matches 1..80 if score switch2 roll matches 1 as @e[type=armor_stand,tag=roll_2] at @s run data merge entity @e[type=armor_stand,tag=roll_2,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:magma_block"},Time:1,Tags:["roll_2r"]}]}
#execute if score time roll matches 1..80 if score switch3 roll matches 1 as @e[type=armor_stand,tag=roll_3] at @s run data merge entity @e[type=armor_stand,tag=roll_3,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:glass"},Time:1,Tags:["roll_3r"]}]}
#execute if score time roll matches 1..80 if score switch4 roll matches 1 as @e[type=armor_stand,tag=roll_4] at @s run data merge entity @e[type=armor_stand,tag=roll_4,limit=1] {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:honey_block"},Time:1,Tags:["roll_4r"]}]}

execute unless score time roll matches 80 run schedule function riddle:roll/start 1t
execute if score time roll matches 80 run setblock -127 54 -77 stone_button[facing=north,powered=false]
execute if score time roll matches 80 run scoreboard players set on roll 0
execute if score time roll matches 80 run scoreboard players add count roll 1
execute if score time roll matches 80 if score count roll matches 5 run scoreboard players set count roll 1
execute if score time roll matches 80 run scoreboard players set time roll 0
