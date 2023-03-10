#計算

##初期化
scoreboard players set ans calculator 0

##公式なし
execute if score formula calculator matches 0 run tellraw @a {"text":"何算をするか選択してください。","color":"red"}
execute if score num1 calculator matches 0 run tellraw @a {"text":"値1を入力してください。","color":"red"}
execute if score num2 calculator matches 0 run tellraw @a {"text":"値2を入力してください。","color":"red"}

##加算
execute if score formula calculator matches 1 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator += num1 calculator
execute if score formula calculator matches 1 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator += num2 calculator

##減算
execute if score formula calculator matches 2 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator += num1 calculator
execute if score formula calculator matches 2 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator -= num2 calculator

##乗算
execute if score formula calculator matches 3 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator += num1 calculator
execute if score formula calculator matches 3 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator *= num2 calculator

##除算
execute if score formula calculator matches 4 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator += num1 calculator
execute if score formula calculator matches 4 unless score num1 calculator matches 0 unless score num2 calculator matches 0 run scoreboard players operation ans calculator /= num2 calculator

function riddle:calculator/exec