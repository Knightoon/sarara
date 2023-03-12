scoreboard players set on5 roll 1
setblock -113 52 -83 air
setblock -113 52 -83 polished_blackstone_button[face=floor,facing=east]
scoreboard players add switch5 roll 1
execute if score switch5 roll matches 2 run scoreboard players set switch5 roll 0

execute if score switch5 roll matches 0 run function riddle:roll/summon/15
execute if score switch5 roll matches 1 run function riddle:roll/summon/05

scoreboard players set on5 roll 0