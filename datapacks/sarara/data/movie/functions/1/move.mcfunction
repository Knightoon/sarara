##アパート出るシーン
scoreboard players set on movie1 1
scoreboard players add time movie1 1

##移動系
execute if score time movie1 matches 1 run execute as @e[tag=movie1] at @s run tp @s -196 37 -47
execute if score time movie1 matches 1 run time set 1000
execute if score time movie1 matches 2 run scoreboard players set fixed spectate 1
execute if score time movie1 matches 20 run tellraw @a {"text":"「はぁ、今日も大学かぁ。」","color":"yellow"}
execute if score time movie1 matches 100 run tellraw @a {"text":"私は大学に行き、真面目に勉強するという日々を送っていた。"}
execute if score time movie1 matches 100 run playsound sarara:n2 master @a ~ ~ ~ 1.0 1.0 1.0
execute if score time movie1 matches 3..22 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~0.025
execute if score time movie1 matches 23..42 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~4.5 ~
execute if score time movie1 matches 43..280 run execute as @e[tag=movie1] at @s run tp @s ~-0.1 ~ ~

##
execute if score time movie1 matches 260 run title @a times 10 130 10
execute if score time movie1 matches 260 run title @a[team=Command] title {"text":"\uE001"}
execute if score time movie1 matches 260 run time set 20000
execute if score time movie1 matches 260 run execute as @a at @s run playsound sarara:b1 master @s ~ ~ ~ 0.2 1.0 0.2

execute if score time movie1 matches 300 run tellraw @a {"text": "～その日の帰り道～"}

execute if score time movie1 matches 390 run execute as @e[tag=movie1] at @s run tp @s -235 30 -7 -90 0
execute if score time movie1 matches 391..495 run execute as @e[tag=movie1] at @s run tp @s ~0.1 ~ ~ ~ ~
execute if score time movie1 matches 395 run tellraw @a {"text":"「こんな生活、いつになったら解放されるんだろう...。」","color": "yellow"}

execute if score time movie1 matches 495..514 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~4.5 ~
execute if score time movie1 matches 530 run tellraw @a {"text":"「ん？こんな時間に誰かいるのか？」","color": "yellow"}

execute if score time movie1 matches 601..620 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~-4.5 ~
execute if score time movie1 matches 601 run tellraw @a {"text":"「まあ、どうでもいいか」","color": "yellow"}

execute if score time movie1 matches 620..720 run execute as @e[tag=movie1] at @s run tp @s ~0.1 ~ ~ ~ ~
execute if score time movie1 matches 680 run tellraw @a {"text": "「何か面白いことでも起こらないかなぁ...。」","color": "yellow"}

execute if score time movie1 matches 700 run stopsound @a master sarara:b1
execute if score time movie1 matches 700 run execute as @a at @s run playsound sarara:0914 master @s ~ ~ ~ 0.1 1.0 0.1

execute if score time movie1 matches 881..890 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~9 ~
execute if score time movie1 matches 891..900 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~-9 ~
execute if score time movie1 matches 901..910 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~-9 ~
execute if score time movie1 matches 911..920 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~9 ~
execute if score time movie1 matches 921..930 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~9 ~
execute if score time movie1 matches 931..940 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~-9 ~
execute if score time movie1 matches 941..950 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~-9 ~
execute if score time movie1 matches 951..960 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~9 ~

execute if score time movie1 matches 901 run tellraw @a {"text": "「なんだ！？いったいこの音はどこから！？」","color": "yellow"}
execute if score time movie1 matches 940 run fill -235 62 16 -188 62 -33 air

execute if score time movie1 matches 1001..1020 run execute as @e[tag=movie1] at @s run tp @s ~ ~ ~ ~ ~-3

##UFO
execute if score time movie1 matches 1001 run tellraw @a {"text": "「え...？」","color": "yellow"}
execute if score time movie1 matches 1030 run tellraw @a {"text": "?「やぁ、久しぶり君に会えてとても嬉しいよ。」","color": "yellow"}
execute if score time movie1 matches 1030 run execute as @a at @s run playsound sarara:s1 master @s ~ ~ ~ 1.0 1.0 1.0
execute if score time movie1 matches 1200 run tellraw @a [{"text": "?「突然だが、君を私の故郷","color": "yellow"},{"text":"aaaa","obfuscated": true},{"text":"に招待しようと思うんだ。」","color": "yellow"}]
execute if score time movie1 matches 1200 run execute as @a at @s run playsound sarara:s2 master @s ~ ~ ~ 1.0 1.0 1.0
execute if score time movie1 matches 1350 run tellraw @a {"text": "「うっ！頭の中に直接...」","color": "yellow"}
execute if score time movie1 matches 1500 run tellraw @a {"text": "?「おっと！そうだった、この星の言語では発音できないんだったね。」","color": "yellow"}
execute if score time movie1 matches 1500 run execute as @a at @s run playsound sarara:s3 master @s ~ ~ ~ 1.0 1.0 1.0
execute if score time movie1 matches 1700 run tellraw @a {"text": "「これって...UFO？」","color": "yellow"}
execute if score time movie1 matches 1780 run tellraw @a {"text": "?「あぁそうさ。これに乗って故郷に向かうよ。」","color": "yellow"}
execute if score time movie1 matches 1780 run execute as @a at @s run playsound sarara:s4 master @s ~ ~ ~ 1.0 1.0 1.0
#execute if score time movie1 matches 1900 run tellraw @a {"text": "「宇宙...旅行...？」","color": "yellow"}
execute if score time movie1 matches 2080 run tellraw @a {"text": "?「さ、もう時間がない！行こう！」","color": "yellow"}
execute if score time movie1 matches 2080 run execute as @a at @s run playsound sarara:s5 master @s ~ ~ ~ 1.0 1.0 1.0
execute if score time movie1 matches 2080..2280 run execute as @e[tag=movie1] at @s run tp @s ~0.075 ~0.16 ~ ~ ~


execute if score time movie1 matches 2180 run tellraw @a {"text": "「え、ちょっと待ってよ！」","color": "yellow"}
execute if score time movie1 matches 2200 run title @a times 80 100 80
execute if score time movie1 matches 2200 run title @a title {"text": "\uE002"}
execute if score time movie1 matches 2250 run tellraw @a {"text": "「うわあああああ！！！」","color": "yellow"}

execute if score time movie1 matches 1000 run execute as @e[tag=movie2] at @s run tp @s -136 32 -68 -37 -6.8
execute if score time movie1 matches 2295 run scoreboard players set fixed2 spectate 1
execute if score time movie1 matches 2300 run scoreboard players set fixed spectate 0
execute if score time movie1 matches 2350 run function movie:2/move

execute unless score time movie1 matches 2350 run schedule function movie:1/move 1t
execute if score time movie1 matches 2350 run function movie:1/done