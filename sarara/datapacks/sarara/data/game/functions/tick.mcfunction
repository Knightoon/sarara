#ミニゲーム用ticks
##釈迦撃ちゲーム
execute if score on1 minigame matches 0 if score doing2 minigame matches 0 if block -129 52 4 warped_button[powered=true] run function game:shaka/start
execute if score on1 minigame matches 0 if score doing2 minigame matches 1 if block -129 52 4 warped_button[powered=true] run function game:shaka/alert
execute if score on1 minigame matches 0 if entity @e[type=armor_stand,tag=game] run kill @e[type=armor_stand,tag=game]

execute as @e[type=armor_stand,tag=game] at @s run tp @s ~ ~ ~ 90 0
execute if score on1 minigame matches 1 if entity @e[type=armor_stand,tag=shaka1] if entity @e[type=arrow,x=-113,y=54,z=0,distance=..1] run function game:shaka/detect/1
execute if score on1 minigame matches 1 if entity @e[type=armor_stand,tag=shaka2] if entity @e[type=arrow,x=-113,y=59,z=2,distance=..1] run function game:shaka/detect/2
execute if score on1 minigame matches 1 if entity @e[type=armor_stand,tag=shaka3] if entity @e[type=arrow,x=-113,y=62,z=6,distance=..1] run function game:shaka/detect/3
execute if score on1 minigame matches 1 if entity @e[type=armor_stand,tag=shaka4] if entity @e[type=arrow,x=-113,y=57,z=7,distance=..1] run function game:shaka/detect/4

execute if score on2 minigame matches 0 if score doing1 minigame matches 0 if block -129 52 15 crimson_button[powered=true] run function game:target/start
execute if score on2 minigame matches 0 if score doing1 minigame matches 1 if block -129 52 15 crimson_button[powered=true] run function game:target/alert
execute if score on2 minigame matches 1 run function game:target/1

execute if score doing1 minigame matches 1 run execute store result bossbar minigame value run scoreboard players get time1_2 minigame
execute if score doing2 minigame matches 1 run execute store result bossbar minigame value run scoreboard players get time2_2 minigame

execute if score doing1 minigame matches 1 as @a[x=-129,y=51,z=-2,dx=-8,dy=1,dz=21] at @s run tag @s add minigame
execute if score doing1 minigame matches 1 if score on1 minigame matches 1 as @a[tag=minigame] at @s run execute unless entity @s[x=-131,y=51,z=-2,dx=-6,dy=1,dz=21] run tag @s remove minigame

execute if score doing2 minigame matches 1 as @a[x=-129,y=51,z=-2,dx=-8,dy=1,dz=21] at @s run tag @s add minigame
execute if score doing2 minigame matches 1 if score on2 minigame matches 1 as @a[tag=minigame] at @s run execute unless entity @s[x=-131,y=51,z=-2,dx=-6,dy=1,dz=21] run tag @s remove minigame

##立ち入り禁止です
execute as @a[x=-129,y=52,z=-2,dx=0,dy=1,dz=22] at @s run tellraw @s {"text":"立ち入り禁止です。","color": "red"}
execute as @a[x=-129,y=52,z=-2,dx=0,dy=1,dz=22] at @s run tp @s ~-2 ~ ~ -90 0 