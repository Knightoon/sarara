scoreboard players set on4 roll 1
setblock -114 52 -85 air
setblock -114 52 -85 polished_blackstone_button[face=floor,facing=east]
scoreboard players add switch4 roll 1
execute if score switch4 roll matches 2 run scoreboard players set switch4 roll 0

execute if score switch4 roll matches 0 run function riddle:roll/summon/14
execute if score switch4 roll matches 1 run function riddle:roll/summon/04

scoreboard players set on4 roll 0