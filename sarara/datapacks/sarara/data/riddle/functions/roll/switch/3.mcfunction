scoreboard players set on3 roll 1
setblock -140 52 -85 air
setblock -140 52 -85 polished_blackstone_button[face=floor,facing=west]
scoreboard players add switch3 roll 1
execute if score switch3 roll matches 2 run scoreboard players set switch3 roll 0

execute if score switch3 roll matches 0 run function riddle:roll/summon/13
execute if score switch3 roll matches 1 run function riddle:roll/summon/03

scoreboard players set on3 roll 0