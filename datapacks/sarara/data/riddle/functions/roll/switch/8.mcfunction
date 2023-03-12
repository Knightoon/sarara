scoreboard players set on8 roll 1
setblock -120 52 -91 air
setblock -120 52 -91 polished_blackstone_button[face=floor,facing=north]
scoreboard players add switch8 roll 1
execute if score switch8 roll matches 2 run scoreboard players set switch8 roll 0

execute if score switch8 roll matches 0 run function riddle:roll/summon/18
execute if score switch8 roll matches 1 run function riddle:roll/summon/08

scoreboard players set on8 roll 0