scoreboard players set on2 roll 1
setblock -121 52 -92 air
setblock -121 52 -92 polished_blackstone_button[face=floor,facing=north]
scoreboard players add switch2 roll 1
execute if score switch2 roll matches 2 run scoreboard players set switch2 roll 0

execute if score switch2 roll matches 0 run function riddle:roll/summon/12
execute if score switch2 roll matches 1 run function riddle:roll/summon/02

scoreboard players set on2 roll 0