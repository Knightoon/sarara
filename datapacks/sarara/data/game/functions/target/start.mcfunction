##スタート
scoreboard players add time2 minigame 1
scoreboard players set doing2 minigame 1
execute if score time2 minigame matches 10..50 run scoreboard players remove time2_2 minigame 1
execute if score time2 minigame matches 10..50 run bossbar set minigame name [{"text":"残り時間"},{"score":{"name":"time2_2","objective":"minigame"}},{"text":"秒"}]

execute if score time2 minigame matches 1 run bossbar add minigame "的撃ちゲーム"
execute if score time2 minigame matches 1 run bossbar set minigame max 40
execute if score time2 minigame matches 1 run bossbar set minigame color red
execute if score time2 minigame matches 1 run bossbar set minigame visible true
execute if score time2 minigame matches 1 run title @a times 10 20 10
execute if score time2 minigame matches 1 run setblock -129 52 15 air
execute if score time2 minigame matches 1 run tellraw @a[tag=minigame] "ようこそ的撃ちゲームへ"
execute if score time2 minigame matches 3 run tellraw @a[tag=minigame] "それでは早速スタートするよ！"
execute if score time2 minigame matches 5 run tellraw @a[tag=minigame] "制限時間は40秒！"

execute if score time2 minigame matches 7 run title @a[tag=minigame] title "3"
execute if score time2 minigame matches 8 run title @a[tag=minigame] title "2"
execute if score time2 minigame matches 9 run title @a[tag=minigame] title "1"
execute if score time2 minigame matches 7..9 run execute as @a[tag=minigame] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1.0 2.0 1.0
execute if score time2 minigame matches 10 run title @a[tag=minigame] title "スタート"
execute if score time2 minigame matches 10 run scoreboard players set on2 minigame 1

execute if score time2 minigame matches 50 run tellraw @a[tag=minigame] "終了！"
execute if score time2 minigame matches 50 run scoreboard players set on2 minigame 0
execute if score time2 minigame matches 50 run bossbar remove minigame

execute if score time2 minigame matches 52 run tellraw @a[tag=minigame] "スコアを発表します！"
execute if score time2 minigame matches 53 if score result2 minigame > best2 minigame run scoreboard players operation best2 minigame = result2 minigame

execute if score time2 minigame matches 55 run title @a[tag=minigame] title [{"score":{"name":"result2","objective":"minigame"}},{"text":"ポイント"}]
execute if score time2 minigame matches 55 run tellraw @a[tag=minigame] [{"text":"過去最高ポイント：","color": "gold"},{"score":{"name":"best2","objective":"minigame"},"color": "gold"}]

execute unless score time2 minigame matches 58 run schedule function game:target/start 1s
execute if score time2 minigame matches 58 run scoreboard players set result2 minigame 0
execute if score time2 minigame matches 58 run setblock -129 52 15 crimson_button[facing=east,face=floor]
execute if score time2 minigame matches 58 run scoreboard players set time2_2 minigame 40
execute if score time2 minigame matches 58 run scoreboard players set doing2 minigame 0
execute if score time2 minigame matches 58 run execute as @a[tag=minigame] at @s run tag @s remove minigame
execute if score time2 minigame matches 58 run scoreboard players set time2 minigame 0