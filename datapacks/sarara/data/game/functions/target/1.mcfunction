##手前左
execute if score on1 minigame matches 0 if block -125 51 12 target[power=15] run kill @e[type=arrow]
execute unless block -125 51 12 target[power=0] run scoreboard players add result2 minigame 1
execute unless block -125 51 12 target[power=0] run tellraw @a {"text":"+1ポイント","color": "gold"}
execute unless block -125 51 12 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -125 51 12 target[power=0] run kill @e[type=arrow]
execute unless block -125 51 12 target[power=0] run setblock -125 51 12 target


#手前右
# -126 51 17
execute if score on1 minigame matches 0 if block -126 51 17 target[power=15] run kill @e[type=arrow]
execute unless block -126 51 17 target[power=0] run scoreboard players add result2 minigame 1
execute unless block -126 51 17 target[power=0] run tellraw @a {"text":"+1ポイント","color": "gold"}
execute unless block -126 51 17 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -126 51 17 target[power=0] run kill @e[type=arrow]
execute unless block -126 51 17 target[power=0] run setblock -126 51 17 target

##手前真ん中
#-121 52 15
execute if score on1 minigame matches 0 if block -121 52 15 target[power=15] run kill @e[type=arrow]
execute unless block -121 52 15 target[power=0] run scoreboard players add result2 minigame 2
execute unless block -121 52 15 target[power=0] run tellraw @a {"text":"+2ポイント","color": "gold"}
execute unless block -121 52 15 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -121 52 15 target[power=0] run kill @e[type=arrow]
execute unless block -121 52 15 target[power=0] run setblock -121 52 15 target

##真ん中左
#-120 59 11
execute if score on1 minigame matches 0 if block -120 59 11 target[power=15] run kill @e[type=arrow]
execute unless block -120 59 11 target[power=0] run scoreboard players add result2 minigame 5
execute unless block -120 59 11 target[power=0] run tellraw @a {"text":"+5ポイント","color": "gold"}
execute unless block -120 59 11 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -120 59 11 target[power=0] run kill @e[type=arrow]
execute unless block -120 59 11 target[power=0] run setblock -120 59 11 target

##真ん中右
#-120 61 16
execute if score on1 minigame matches 0 if block -120 61 16 target[power=15] run kill @e[type=arrow]
execute unless block -120 61 16 target[power=0] run scoreboard players add result2 minigame 5
execute unless block -120 61 16 target[power=0] run tellraw @a {"text":"+5ポイント","color": "gold"}
execute unless block -120 61 16 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -120 61 16 target[power=0] run kill @e[type=arrow]
execute unless block -120 61 16 target[power=0] run setblock -120 61 16 target

##奥右下
#-112 50 19
execute if score on1 minigame matches 0 if block -112 50 19 target[power=15] run kill @e[type=arrow]
execute unless block -112 50 19 target[power=0] run scoreboard players add result2 minigame 8
execute unless block -112 50 19 target[power=0] run tellraw @a {"text":"+8ポイント","color": "gold"}
execute unless block -112 50 19 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -112 50 19 target[power=0] run kill @e[type=arrow]
execute unless block -112 50 19 target[power=0] run setblock -112 50 19 target

##奥左下
#-112 55 10
execute if score on1 minigame matches 0 if block -112 55 10 target[power=15] run kill @e[type=arrow]
execute unless block -112 55 10 target[power=0] run scoreboard players add result2 minigame 8
execute unless block -112 55 10 target[power=0] run tellraw @a {"text":"+8ポイント","color": "gold"}
execute unless block -112 55 10 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -112 55 10 target[power=0] run kill @e[type=arrow]
execute unless block -112 55 10 target[power=0] run setblock -112 55 10 target

##奥左上
#-114 61 18
execute if score on1 minigame matches 0 if block -114 61 18 target[power=15] run kill @e[type=arrow]
execute unless block -114 61 18 target[power=0] run scoreboard players add result2 minigame 10
execute unless block -114 61 18 target[power=0] run tellraw @a {"text":"+10ポイント","color": "gold"}
execute unless block -114 61 18 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -114 61 18 target[power=0] run kill @e[type=arrow]
execute unless block -114 61 18 target[power=0] run setblock -114 61 18 target

##奥右上
#-114 62 11
execute if score on1 minigame matches 0 if block -114 62 11 target[power=15] run kill @e[type=arrow]
execute unless block -114 62 11 target[power=0] run scoreboard players add result2 minigame 10
execute unless block -114 62 11 target[power=0] run tellraw @a {"text":"+10ポイント","color": "gold"}
execute unless block -114 62 11 target[power=0] run execute as @a at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1.0 2.0 1.0
execute if score on1 minigame matches 0 unless block -114 62 11 target[power=0] run kill @e[type=arrow]
execute unless block -114 62 11 target[power=0] run setblock -114 62 11 target
