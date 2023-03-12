scoreboard players set on7 roll 1
setblock -141 52 -83 air
setblock -141 52 -83 polished_blackstone_button[face=floor,facing=west]
scoreboard players add switch7 roll 1
execute if score switch7 roll matches 2 run scoreboard players set switch7 roll 0

execute if score switch7 roll matches 0 run function riddle:roll/summon/17
execute if score switch7 roll matches 1 run function riddle:roll/summon/07

scoreboard players set on7 roll 0