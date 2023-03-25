##部品を渡した後のシーン
scoreboard players set on movie3 1
scoreboard players add time movie3 1


##静止状態
execute if score time movie3 matches 1 run execute as @e[tag=movie1] at @s run tp @s -136 32 -68 -37 -6.8
execute if score time movie3 matches 2 run scoreboard players set fixed spectate 1

execute if score time movie3 matches 5 run tellraw @a {"text":"?『おかえり、じゃあ着陸の準備をするよ。』"}
execute if score time movie3 matches 11 run tellraw @a {"text":"「どのくらい移動したの？」"}

execute if score time movie3 matches 14 run tellraw @a {"text":"?『ふむ、そうだね、大体38万kmかな。』"}
execute if score time movie3 matches 20 run tellraw @a {"text":"「38万kmも。そんな遠くまで来たのか...」"}
execute if score time movie3 matches 26 run tellraw @a {"text":"「あ、いまさらなんだけど、名前を教えてくれないかな？」"}
execute if score time movie3 matches 32 run tellraw @a {"text":"?『そういえば、まだ自己紹介をしてなかったね。』"}
execute if score time movie3 matches 37 run tellraw @a {"text":"サララ『私の名前はサララ。覚えてないかな？』"}

execute if score time movie3 matches 43 run tellraw @a {"text":"「サララ...なんだか聞いたことあるような...。」"}
execute if score time movie3 matches 49 run tellraw @a {"text":"サララ『さあ、もうすぐ着陸するよ。衝撃に備えてね。』"}
# execute if score time movie3 matches 67 run scoreboard objectives setdisplay sidebar parts



execute unless score time movie3 matches 50 run schedule function movie:3/move 1s
execute if score time movie3 matches 50 run function movie:3/done