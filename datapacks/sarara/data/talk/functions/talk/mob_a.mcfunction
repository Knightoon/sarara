scoreboard players set @e[type=villager,tag=bad_1] talk_on 1
scoreboard players add @e[type=villager,tag=bad_1] talk_time 1

#0
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 0 if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 1 run tellraw @a {"text": "何見てんだ？"}
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 0 if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 3 run tellraw @a {"text": "とっとと失せろ！"}

#1
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 1 if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 1 run tellraw @a {"text": "あぁ、、サララさんの...。"}
execute if score @e[type=villager,tag=bad_1,limit=1] talk matches 1 if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 3 run tellraw @a {"text": "どうぞどうぞ"}

execute unless score @e[type=villager,tag=bad_1,limit=1] talk_time matches 10 run schedule function talk:talk/mob_a 1s
execute if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 10 run scoreboard players set @e[type=villager,tag=bad_1] talk_on 0
execute if score @e[type=villager,tag=bad_1,limit=1] talk_time matches 10 run scoreboard players set @e[type=villager,tag=bad_1] talk_time 0