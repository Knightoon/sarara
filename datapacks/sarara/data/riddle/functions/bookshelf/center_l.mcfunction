##centerの本棚を左側へ移動
function riddle:bookshelf/button_refill
execute as @e[type=armor_stand,tag=center_books] at @s run clone ~-7 ~ ~-1 ~1 ~5 ~ ~-7 ~ ~ replace force 
execute as @e[type=armor_stand,tag=center_books] at @s run setblock ~1 ~1 ~-1 air 
execute as @e[type=armor_stand,tag=center_books] at @s run fill ~ ~ ~-1 ~-7 ~5 ~-1 air replace
execute as @e[type=armor_stand,tag=center_books] at @s run tp @s ~ ~ ~1