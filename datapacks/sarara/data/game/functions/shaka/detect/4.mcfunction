#4を検知
scoreboard players add result minigame 1
kill @e[type=arrow,x=-113,y=57,z=7,distance=..10]
kill @e[type=armor_stand,tag=shaka4]
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5 1.0 0.5
function game:shaka/detect/voice
schedule function game:shaka/summon/4 4s

# execute if entity @e[type=arrow,x=-113,y=54,z=0,distance=..2] run function game:shaka/detect/1
# execute if entity @e[type=arrow,x=-113,y=59,z=2,distance=..2] run function game:shaka/detect/2
# execute if entity @e[type=arrow,x=-113,y=62,z=6,distance=..2] run function game:shaka/detect/3
# execute if entity @e[type=arrow,x=-113,y=57,z=7,distance=..2] run function game:shaka/detect/4