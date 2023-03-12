#BS

scoreboard players set ans calculator 0
execute unless score num1 calculator matches 0 if score num2 calculator matches 0 if score formula calculator matches 0 run scoreboard players operation num1 calculator /= #10 calculator
execute unless score num1 calculator matches 0 if score num2 calculator matches 0 if score formula calculator matches 1..4 run scoreboard players set formula calculator 0
execute unless score num1 calculator matches 0 if score num2 calculator matches 1..9 run scoreboard players set num2 calculator 0
execute if score num1 calculator matches 1.. unless score num2 calculator matches 0 run scoreboard players operation num2 calculator /= #10 calculator

function riddle:calculator/exec


execute as @p[x_rotation=-30..30,nbt={SelectedItem:{Count:1b,id:"minecraft:wooden_sword",tag:{CustomModelData:1}}}] run execute as @e[type=armor_stand,tag=magnet] at @s unless block ~ ~ ~1 minecraft:glass run tp @s ~ ~ ~0.05