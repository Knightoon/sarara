#リピートされるもの

#-------------------------------------------#
#                   環境設定                #
#-------------------------------------------#

#ゲームルール
gamerule spawnRadius 0
gamerule doMobLoot false
gamerule keepInventory true
gamerule doFireTick false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule fireDamage false
difficulty easy
#effect give @a night_vision 1000000 255 true
gamerule showDeathMessages false
gamerule randomTickSpeed 0
gamerule doTileDrops false

#配布前にfalseへ
gamerule sendCommandFeedback false

#-------------------------------------------#
#                   基本設定                 #
#-------------------------------------------#
#経験値固定
xp set @a 1 levels
xp set @a 0 points


#満腹に
effect give @a saturation 1000000 255 true


#-------------------------------------------#
#                   関数設定                #
#-------------------------------------------#

#村人目線固定
execute if score fixed spectate matches 1 run function movie:setting/spectate
execute if score fixed2 spectate matches 1 run function movie:setting/spectate2

#アパートムービー(m1)
execute if score on movie1 matches 0 if score unlocked movie1 matches 0 if block -196 38 -48 minecraft:mangrove_door[open=true] run scoreboard players set m1_s movie1 1
execute if score on movie1 matches 0 if score unlocked movie1 matches 0 if score m1_s movie1 matches 1 run function movie:1/move

#パワーストーン
execute as @a[nbt={SelectedItem:{Count:1b,id:"minecraft:dead_brain_coral_block"}}] at @s run effect give @s jump_boost 1 5 true
execute as @a[nbt={SelectedItem:{Count:1b,id:"minecraft:dead_brain_coral_block"}}] at @s run effect give @s speed 1 10 true
#execute as @a[nbt={Inventory:[{Count:1b,id:"minecraft:stone"}]}] at @s run effect give @s night_vision 100 1 true

#ミニゲーム
execute if score framework minigame matches 1 run function game:tick
bossbar set minigame players @a[tag=minigame]

#動力源周り
execute as @a[x=-141,y=32,z=-5,dx=28,dy=10,dz=22] at @s run tag @s add power
execute as @a[tag=power,scores={power_se=0}] at @s run function se:power
execute as @a[tag=power] at @s run execute unless entity @s[x=-141,y=32,z=-5,dx=28,dy=10,dz=22] run stopsound @s master sarara:power
execute as @a[tag=power] at @s run execute unless entity @s[x=-141,y=32,z=-5,dx=28,dy=10,dz=22] run scoreboard players set @s power_se 0
execute as @a[tag=power] at @s run execute unless entity @s[x=-141,y=32,z=-5,dx=28,dy=10,dz=22] run tag @s remove power

#ブロック回転
execute as @e[type=minecraft:falling_block] run data merge entity @s {Time:1}
execute if score unlocked roll matches 0 run function riddle:roll/detect

#望遠鏡
function riddle:spyglass/tick

#本棚移動
function riddle:bookshelf/tick

#天秤
function riddle:balance/tick

#電卓
function riddle:calculator/tick

#磁石
function riddle:magnet/tick

#タバコ
function smoke:tick

#サーミネーター
function riddle:therminator/tick

#宝石店(着せ替え)
function riddle:kisekae/tick

#会話
function talk:tick