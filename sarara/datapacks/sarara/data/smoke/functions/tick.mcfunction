#タバコ用tick

##喫煙所内時起動
execute as @a[scores={smoke=1..},x=-126,y=66,z=-9,dx=8,dy=5,dz=-8,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] at @s run tag @s add smoking
execute as @a[tag=smoking] at @s unless entity @s[x=-126,y=66,z=-9,dx=8,dy=5,dz=-8] run tag @s remove smoking

##喫煙所外
execute as @a[scores={smoke=1..},tag=!smoking,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] at @s run tellraw @s {"text":"ここでは吸えません","color": "red"}
execute as @a[scores={smoke=1..}] at @s run scoreboard players set @s smoke 0

##タバコ(箱)⇒タバコ(1本)
execute as @a[tag=smoking] at @s run data modify storage player_item_tuner: condition.if set value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}
execute as @a[tag=smoking] at @s run data modify storage player_item_tuner: result.set set value {id:"minecraft:potion",tag:{CustomModelData:1,display:{Name:'{"text":"煙草","italic":"false"}'}}}
execute as @a[tag=smoking] at @s run function #player_item_tuner:modify/inventory

##タバコ(1本)⇒タバコ(箱)
execute as @a[tag=!smoking,nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1}}}] at @s run data modify storage player_item_tuner: condition.if set value {id:"minecraft:potion",tag:{CustomModelData:1}}
execute as @a[tag=!smoking,nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1}}}] at @s run data modify storage player_item_tuner: result.set set value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1,display:{Name:'{"text":"煙草(often)","italic":"false"}'}}}
execute as @a[tag=!smoking,nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1}}}] at @s run function #player_item_tuner:modify/inventory

##右手にタバコ
execute if entity @a[tag=smoking,nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1}}}] if score on smoke matches 0 run function smoke:smoking


execute as @a[advancements={sarara:tabako=true}] run stopsound @s player entity.generic.drink
execute as @a[tag=smoking,scores={smoked=1..}] at @s run particle minecraft:poof ^ ^1.5 ^0.2
execute as @a[scores={smoked=1..}] run scoreboard players set @s smoked 0
execute as @a[x=-126,y=66,z=-9,dx=8,dy=5,dz=-8] run clear @s glass_bottle
advancement revoke @a only sarara:tabako


