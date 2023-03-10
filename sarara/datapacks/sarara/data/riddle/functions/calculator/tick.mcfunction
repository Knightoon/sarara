#電卓用tick
execute if score num1 calculator matches ..0 run scoreboard players set digit1 calculator 0
execute if score num1 calculator matches 10000.. run scoreboard players set digit1 calculator 0
execute if score num1 calculator matches 1..10 run scoreboard players set digit1 calculator 1
execute if score num1 calculator matches 10..100 run scoreboard players set digit1 calculator 2
execute if score num1 calculator matches 100..1000 run scoreboard players set digit1 calculator 3
execute if score num1 calculator matches 1000..10000 run scoreboard players set digit1 calculator 4

execute if score num2 calculator matches ..0 run scoreboard players set digit2 calculator 0
execute if score num2 calculator matches 10000.. run scoreboard players set digit2 calculator 0
execute if score num2 calculator matches 1..10 run scoreboard players set digit2 calculator 1
execute if score num2 calculator matches 10..100 run scoreboard players set digit2 calculator 2
execute if score num2 calculator matches 100..1000 run scoreboard players set digit2 calculator 3
execute if score num2 calculator matches 1000..10000 run scoreboard players set digit2 calculator 4