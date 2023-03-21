scoreboard players set on kisekae 1
scoreboard players add time kisekae 1

execute if score time kisekae matches 1..20 as @e[type=armor_stand,tag=kisekae] at @s run tp @s ~ ~ ~-0.05
execute if score time kisekae matches 1..20 as @a at @s run playsound ui.stonecutter.take_result master @s ~ ~ ~ 0.3 0.5 0.3

execute unless score time kisekae matches 20 run schedule function riddle:kisekae/move 1t
execute if score time kisekae matches 20 run scoreboard players set unlocked kisekae 1
execute if score time kisekae matches 20 run scoreboard players set on kisekae 1
execute if score time kisekae matches 20 as @e[type=armor_stand,tag=kisekae_kill] at @s run tp @s ~ ~0.05 ~
execute if score time kisekae matches 20 run scoreboard players set time kisekae 0
