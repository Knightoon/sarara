#ループ

##ボタン検知

##rightの本棚
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/right_l
execute as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] unless block ~ ~ ~1 air run function riddle:bookshelf/button_refill
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/right_r
execute as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] unless block ~ ~ ~-2 air run function riddle:bookshelf/button_refill

execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/not_working
execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=right_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/not_working

##centerの本棚
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/center_l
execute as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] unless block ~ ~ ~1 air run function riddle:bookshelf/button_refill
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/center_r
execute as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] unless block ~ ~ ~-2 air run function riddle:bookshelf/button_refill

execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/not_working
execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=center_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/not_working

##leftの本棚
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/left_l
execute as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] unless block ~ ~ ~1 air run function riddle:bookshelf/button_refill
execute unless entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/left_r
execute as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] unless block ~ ~ ~-2 air run function riddle:bookshelf/button_refill

execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~ acacia_button[powered=true] if block ~ ~ ~1 air run function riddle:bookshelf/not_working
execute if entity @a[x=-112,y=72,z=-1,dx=-24,dy=6,dz=20] as @e[type=armor_stand,tag=left_books] at @s if block ~1 ~1 ~-1 acacia_button[powered=true] if block ~ ~ ~-2 air run function riddle:bookshelf/not_working
