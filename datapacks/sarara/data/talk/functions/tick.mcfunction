#下っ端A
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 0 if block -450 33 -116 air run setblock -450 33 -116 barrier
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 1 if block -450 33 -116 barrier run setblock -450 33 -116 air
execute if entity @a[x=-449,y=32,z=-118,dx=-2,dy=0,dz=0] if score @e[type=villager,tag=bad_1,limit=1] talk_on matches 0 run function talk:talk/mob_a