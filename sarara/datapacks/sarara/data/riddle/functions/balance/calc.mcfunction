#計算
scoreboard players set on balance 1

##初期化
scoreboard players set #result1 balance 0
scoreboard players set #result2 balance 0

##検知して計算
##左
execute if block -423 33 -48 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:copper_ingot"}]} run scoreboard players operation #result1 balance += copper balance
execute if block -423 33 -48 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #result1 balance += iron balance
execute if block -423 33 -48 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:gold_ingot"}]} run scoreboard players operation #result1 balance += gold balance
execute if block -423 33 -48 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:diamond"}]} run scoreboard players operation #result1 balance += diamond balance
execute if block -423 33 -48 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:emerald"}]} run scoreboard players operation #result1 balance += emerald balance

##右
execute if block -423 33 -50 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:copper_ingot"}]} run scoreboard players operation #result2 balance += copper balance
execute if block -423 33 -50 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #result2 balance += iron balance
execute if block -423 33 -50 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:gold_ingot"}]} run scoreboard players operation #result2 balance += gold balance
execute if block -423 33 -50 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:diamond"}]} run scoreboard players operation #result2 balance += diamond balance
execute if block -423 33 -50 minecraft:dispenser{Items:[{Count:1b,id:"minecraft:emerald"}]} run scoreboard players operation #result2 balance += emerald balance

scoreboard players set on balance 0