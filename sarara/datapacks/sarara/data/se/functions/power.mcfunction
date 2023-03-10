##動力源
scoreboard players add @a[tag=power] power_se 1

execute as @a[tag=power,scores={power_se=1}] at @s run playsound sarara:power master @s -126 41 6 0.2 1.0 0.2
execute as @a[tag=power] at @s run execute unless score @s[x=-141,y=32,z=-5,dx=28,dy=10,dz=22] power_se matches 151 run schedule function se:power 1t
execute as @a[tag=power,scores={power_se=150}] run scoreboard players set @s power_se 0