##rightの本棚を右側へ移動
function riddle:bookshelf/button_refill
execute as @e[type=armor_stand,tag=right_books] at @s run clone ~-7 ~ ~-1 ~1 ~5 ~ ~-7 ~ ~-2 replace force 
execute as @e[type=armor_stand,tag=right_books] at @s run setblock ~1 ~1 ~ air 
execute as @e[type=armor_stand,tag=right_books] at @s run fill ~ ~ ~ ~-7 ~5 ~ air replace
execute as @e[type=armor_stand,tag=right_books] at @s run tp @s ~ ~ ~-1