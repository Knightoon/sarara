##アパート出るシーン
scoreboard players set on movie2 1
scoreboard players add time movie2 1

##移動系

execute if score time movie2 matches 9 run tellraw @a {"text":"私が気が付くと目の前には宇宙ステーションのように"}
execute if score time movie2 matches 11 run tellraw @a {"text":"見たこともない機械がたくさんあった。"}

execute if score time movie2 matches 13 run tellraw @a {"text":"「ここは...？」"}
execute if score time movie2 matches 20 run tellraw @a {"text":"?『宇宙船の中だよ。君たちの言葉で言うなら、航空母艦かな？』"}

execute if score time movie2 matches 26 run tellraw @a {"text":"?『まあ簡単に言うなら、宇宙船を格納する大きい宇宙船と思ってくれたらいいよ。』"}
execute if score time movie2 matches 32 run tellraw @a {"text":"『な、なるほど...』"}
execute if score time movie2 matches 35 run tellraw @a {"text":"?『ただ、今ちょっと問題が起きて困ってるんだ。』"}

execute if score time movie2 matches 40 run tellraw @a {"text":"『問題？何か手伝えることなら、手伝うけど...』"}
execute if score time movie2 matches 46 run tellraw @a {"text":"?『君は相変わらず優しいね。』"}
execute if score time movie2 matches 49 run tellraw @a {"text":"?『それなら、君には倉庫の発電機を直してきてもらいたいんだ。』"}
execute if score time movie2 matches 54 run tellraw @a {"text":"?『部品とかは船の中を探せばあるから。』"}
execute if score time movie2 matches 58 run tellraw @a {"text":"『わかった。すぐに取り掛かるよ。』"}
execute if score time movie2 matches 62 run tellraw @a {"text":"?『何かわからないことがあったら何でも聞いてね。』"}
execute if score time movie2 matches 67 run scoreboard objectives setdisplay sidebar parts

execute unless score time movie2 matches 68 run schedule function movie:2/move 1s
execute if score time movie2 matches 68 run function movie:2/done