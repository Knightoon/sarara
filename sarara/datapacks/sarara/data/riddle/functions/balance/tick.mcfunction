#天秤用tick

##ボタンクリック検知
execute if score on balance matches 0 if block -421 32 -49 stone_button[powered=true] run function riddle:balance/calc

##スコアによって水かさ変更

execute if score #result1 balance matches ..0 run function riddle:balance/water/10
execute if score #result2 balance matches ..0 run function riddle:balance/water/20
execute if score #result1 balance matches 1 run function riddle:balance/water/11
execute if score #result2 balance matches 1 run function riddle:balance/water/21
execute if score #result1 balance matches 2 run function riddle:balance/water/12
execute if score #result2 balance matches 2 run function riddle:balance/water/22
execute if score #result1 balance matches 3 run function riddle:balance/water/13
execute if score #result2 balance matches 3 run function riddle:balance/water/23
execute if score #result1 balance matches 4 run function riddle:balance/water/14
execute if score #result2 balance matches 4 run function riddle:balance/water/24
execute if score #result1 balance matches 5.. run function riddle:balance/water/10
execute if score #result2 balance matches 5.. run function riddle:balance/water/20