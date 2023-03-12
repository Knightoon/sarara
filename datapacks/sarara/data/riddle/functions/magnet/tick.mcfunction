#磁石用tick
execute as @a[x_rotation=-30..30,y_rotation=-15..15,nbt={SelectedItem:{Count:1b,id:"minecraft:wooden_sword",tag:{CustomModelData:1}}}] at @s run tag @s add magnet_on 
execute as @a[tag=magnet_on] at @s unless entity @s[x_rotation=-30..30,y_rotation=-15..15,nbt={SelectedItem:{Count:1b,id:"minecraft:wooden_sword",tag:{CustomModelData:1}}}] run tag @s remove magnet_on

execute if entity @a[tag=magnet_on] run execute as @e[type=armor_stand,tag=magnet] at @s unless entity @e[type=minecraft:armor_stand,tag=magnet_stop2,distance=..1] run tp @s ~ ~ ~-0.05
execute unless entity @a[tag=magnet_on] run execute as @e[type=armor_stand,tag=magnet] at @s unless entity @e[type=minecraft:armor_stand,tag=magnet_stop1,distance=..1] run tp @s ~ ~ ~0.05
