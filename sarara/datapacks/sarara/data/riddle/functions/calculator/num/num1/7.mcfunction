#num1を決定
execute if score digit1 calculator matches 0 if score formula calculator matches 0 run scoreboard players add num1 calculator 7
execute if score digit1 calculator matches 1..3 if score formula calculator matches 0 run scoreboard players operation num1 calculator *= #10 calculator
execute if score digit1 calculator matches 1..3 if score formula calculator matches 0 run scoreboard players add num1 calculator 7

#num2を決定
execute if score digit2 calculator matches 0 if score formula calculator matches 1..4 run scoreboard players add num2 calculator 7
execute if score digit2 calculator matches 1..3 if score formula calculator matches 1..4 run scoreboard players operation num2 calculator *= #10 calculator
execute if score digit2 calculator matches 1..3 if score formula calculator matches 1..4 run scoreboard players add num2 calculator 7

function riddle:calculator/exec