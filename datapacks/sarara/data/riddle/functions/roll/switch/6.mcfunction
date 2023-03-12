scoreboard players set on6 roll 1
setblock -134 52 -91 air
setblock -134 52 -91 polished_blackstone_button[face=floor,facing=north]
scoreboard players add switch6 roll 1
execute if score switch6 roll matches 2 run scoreboard players set switch6 roll 0

execute if score switch6 roll matches 0 run function riddle:roll/summon/16
execute if score switch6 roll matches 1 run function riddle:roll/summon/06

scoreboard players set on6 roll 0