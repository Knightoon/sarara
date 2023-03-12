#初期化

##フレームワーク設定
function sarara:framework

##scoreboard非表示
scoreboard objectives setdisplay sidebar

##乱数生成用
scoreboard objectives add rng dummy "乱数生成"
scoreboard players set #22 rng 22

##スペクテイト用
scoreboard objectives add spectate dummy "スペクテイト用"
scoreboard players set fixed spectate 0
scoreboard players set fixed2 spectate 0

##アパート主人公ムービー
scoreboard objectives add movie1 dummy "ムービー1"
scoreboard players set on movie1 0
scoreboard players set time movie1 0
scoreboard players set unlocked movie1 0
scoreboard players set m1_s movie1 0

##コンビニ前ムービー
scoreboard objectives add movie2 dummy "ムービー2"
scoreboard players set on movie2 0
scoreboard players set time movie2 0
scoreboard players set unlocked movie2 0
scoreboard players set m2_s movie2 0

##部品
scoreboard objectives add parts dummy "部品"
scoreboard players set 集めた数 parts 0

##ミニゲーム用
scoreboard objectives add minigame dummy "ミニゲーム"
scoreboard players set on1 minigame 0
scoreboard players set on2 minigame 0
scoreboard players set time1 minigame 0
scoreboard players set time2 minigame 0
scoreboard players set time1_2 minigame 31
scoreboard players set time2_2 minigame 41
scoreboard players set result minigame 0
scoreboard players set result2 minigame 0
scoreboard players set best minigame 0
scoreboard players set best2 minigame 0
scoreboard players set doing1 minigame 0
scoreboard players set doing2 minigame 0
bossbar remove minigame

##効果音ループ
scoreboard objectives add power_se dummy "動力源SE"
scoreboard players set time power_se 0

##ブロック回転(謎)
scoreboard objectives add roll dummy "ブロック回転"
scoreboard players set on roll 0
scoreboard players set time roll 0
scoreboard players set unlocked roll 0
scoreboard players set switch1 roll 0
scoreboard players set switch2 roll 0
scoreboard players set switch3 roll 0
scoreboard players set switch4 roll 0
scoreboard players set on1 roll 0
scoreboard players set on2 roll 0
scoreboard players set on3 roll 0
scoreboard players set on4 roll 0
scoreboard players set on5 roll 0
scoreboard players set on6 roll 0
scoreboard players set on7 roll 0
scoreboard players set on8 roll 0
function riddle:roll/recovery_kill
function riddle:roll/recovery_summon

##望遠鏡
function riddle:spyglass/init

##本棚移動
function riddle:bookshelf/init

##天秤
scoreboard objectives add balance dummy "天秤"
scoreboard players set on balance 0
scoreboard players set copper balance 3
scoreboard players set iron balance 6
scoreboard players set gold balance -1
scoreboard players set diamond balance 2
scoreboard players set emerald balance -2
scoreboard players set #result1 balance 0
scoreboard players set #result2 balance 0
fill -428 32 -46 -428 35 -46 air
fill -428 32 -52 -428 35 -52 air

##電卓
scoreboard objectives add calculator dummy {"text":"電卓","color":"gold"}
scoreboard players set ans calculator 0
scoreboard players set num1 calculator 0
scoreboard players set num2 calculator 0
scoreboard players set formula calculator 0
scoreboard players set digit1 calculator 0
scoreboard players set digit2 calculator 0
scoreboard players set #10 calculator 10

##タバコ
scoreboard objectives add smoke minecraft.used:minecraft.warped_fungus_on_a_stick "タバコ"
scoreboard players set @a smoke 0
scoreboard players set on smoke 0
scoreboard players set time smoke 0

##タバコ消費
scoreboard objectives add smoked minecraft.used:potion

##サーミネーター
scoreboard objectives add therminator dummy "サーミネーター"
scoreboard players set cnt therminator 0
scoreboard players set cnt2 therminator 0
# condition = 0 THEN 水
# condition = 1 THEN 氷 
scoreboard players set condition therminator 0

###その他
##図書室梯子
fill -117 71 19 -117 66 19 air

##射撃場『釈迦コロシ』看板
setblock -129 52 3 minecraft:dark_oak_sign[rotation=4,waterlogged=false]{Color:"white",GlowingText:1b,Text1:'{"text":""}',Text2:'{"extra":[{"text":"釈迦コロシ"}],"text":""}',Text3:'{"extra":[{"text":"準備中"}],"text":""}',Text4:'{"text":""}'}

##hage 
setblock -129 53 4 minecraft:stone