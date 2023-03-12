scoreboard players set on smoke 1

#時間を追加
scoreboard players add time smoke 1

#タバコの煙を吐く
#execute as @p[y_rotation=-35.0..25.0]
execute if score time smoke matches 40 as @a[tag=smoking,nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1}}}] at @s run particle minecraft:poof ^ ^1.5 ^0.2

execute unless score time smoke matches 80 run schedule function smoke:smoking 1t
execute if score time smoke matches 80 run scoreboard players set on smoke 0
execute if score time smoke matches 80 run scoreboard players set time smoke 0