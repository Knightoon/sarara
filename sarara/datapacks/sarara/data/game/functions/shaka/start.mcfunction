##スタート
scoreboard players add time1 minigame 1
scoreboard players set doing1 minigame 1
execute if score time1 minigame matches 10..40 run scoreboard players remove time1_2 minigame 1
execute if score time1 minigame matches 10..40 run bossbar set minigame name [{"text":"残り時間"},{"score":{"name":"time1_2","objective":"minigame"}},{"text":"秒"}]

execute if score time1 minigame matches 1 run bossbar add minigame "釈迦撃ちゲーム"
execute if score time1 minigame matches 1 run bossbar set minigame max 30
execute if score time1 minigame matches 1 run bossbar set minigame color blue
execute if score time1 minigame matches 1 run bossbar set minigame visible true
execute if score time1 minigame matches 1 run title @a times 10 20 10
execute if score time1 minigame matches 1 run setblock -129 52 4 air
execute if score time1 minigame matches 1 run tellraw @a[tag=minigame] "ようこそ釈迦撃ちゲームへ"
execute if score time1 minigame matches 3 run tellraw @a[tag=minigame] "それでは早速スタートするよ！"
execute if score time1 minigame matches 5 run tellraw @a[tag=minigame] "制限時間は30秒！"

execute if score time1 minigame matches 7 run title @a[tag=minigame] title "3"
execute if score time1 minigame matches 8 run title @a[tag=minigame] title "2"
execute if score time1 minigame matches 9 run title @a[tag=minigame] title "1"
execute if score time1 minigame matches 7..9 run execute as @a[tag=minigame] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1.0 2.0 1.0
execute if score time1 minigame matches 10 run title @a[tag=minigame] title "スタート"
execute if score time1 minigame matches 10 run function game:shaka/summon/1
execute if score time1 minigame matches 10 run function game:shaka/summon/2
execute if score time1 minigame matches 10 run function game:shaka/summon/3
execute if score time1 minigame matches 10 run function game:shaka/summon/4
execute if score time1 minigame matches 10 run scoreboard players set on1 minigame 1

execute if score time1 minigame matches 40 run tellraw @a[tag=minigame] "終了！"
execute if score time1 minigame matches 40 run kill @e[type=armor_stand,tag=game]
execute if score time1 minigame matches 40 run scoreboard players set on1 minigame 0
execute if score time1 minigame matches 40 run bossbar remove minigame

execute if score time1 minigame matches 42 run tellraw @a[tag=minigame] "スコアを発表します！"
execute if score time1 minigame matches 43 if score result minigame > best minigame run scoreboard players operation best minigame = result minigame

execute if score time1 minigame matches 45 run title @a[tag=minigame] title [{"score":{"name":"result","objective":"minigame"}},{"text":"ポイント"}]
execute if score time1 minigame matches 45 run tellraw @a[tag=minigame] [{"text":"過去最高ポイント：","color": "gold"},{"score":{"name":"best","objective":"minigame"},"color": "gold"}]

execute unless score time1 minigame matches 48 run schedule function game:shaka/start 1s
execute if score time1 minigame matches 48 run scoreboard players set result minigame 0
execute if score time1 minigame matches 48 run setblock -129 52 4 warped_button[facing=east,face=floor]
execute if score time1 minigame matches 48 run scoreboard players set time1_2 minigame 30
execute if score time1 minigame matches 48 run scoreboard players set doing1 minigame 0
execute if score time1 minigame matches 48 run execute as @a[tag=minigame] at @s run tag @s remove minigame
execute if score time1 minigame matches 48 run scoreboard players set time1 minigame 0