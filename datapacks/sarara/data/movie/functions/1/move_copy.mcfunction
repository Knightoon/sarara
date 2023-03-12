##アパート出るシーン
scoreboard players set on movie1 1
scoreboard players add time movie1 1

execute if score time movie1 matches 1 run execute as @e[tag=movie1] at @s run tp @s -196 37 -47
execute if score time movie1 matches 5 run scoreboard players set fixed spectate 1
##移動系


execute if score time movie1 matches 10 run execute as @e[tag=movie1] at @s run tp @s -235 30 -7 -90 0

execute if score time movie1 matches 20 run execute as @e[tag=movie2] at @s run tp @s -136 32 -68 -37 -6.8
execute if score time movie1 matches 30 run scoreboard players set fixed2 spectate 1
execute if score time movie1 matches 35 run scoreboard players set fixed spectate 0
execute if score time movie1 matches 30 run gamemode adventure @a[team=Command] 


execute if score time movie1 matches 100 run scoreboard players set fixed2 spectate 0
execute unless score time movie1 matches 100 run schedule function movie:1/move_copy 1t
execute if score time movie1 matches 100 run function movie:1/done