scoreboard players set on1 roll 1
setblock -133 52 -92 air
setblock -133 52 -92 polished_blackstone_button[face=floor,facing=north]
scoreboard players add switch1 roll 1
execute if score switch1 roll matches 2 run scoreboard players set switch1 roll 0

execute if score switch1 roll matches 0 run function riddle:roll/summon/11
execute if score switch1 roll matches 1 run function riddle:roll/summon/01

scoreboard players set on1 roll 0