#時計回り
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r1] at @s run tp @s ~ ~0.05 ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r2] at @s run tp @s ~-0.05 ~ ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r3] at @s run tp @s ~ ~-0.05 ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r4] at @s run tp @s ~0.05 ~ ~

#反時計回り
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r5] at @s run tp @s ~ ~0.05 ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r6] at @s run tp @s ~0.05 ~ ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r7] at @s run tp @s ~ ~-0.05 ~
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=r8] at @s run tp @s ~-0.05 ~ ~

#room1上げる
execute if score time roll matches 1 run function riddle:roll/room/summon/1
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=room1_move] at @s run tp @s ~ ~0.04 ~

#room4下げる
execute if score time roll matches 1..80 as @e[type=armor_stand,tag=room4_move] at @s run tp @s ~ ~-0.0425 ~

#入口検知(閉じる時room4)
execute if score time roll matches 1..80 as @a[x=-137,y=51,z=-31,dx=0,dy=2,dz=-2] at @s run tp @s ~-1 ~ ~