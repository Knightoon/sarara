##ボイスとテキスト選択

# Area Effect Cloudを召喚
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}

# 召喚したAECのUUIDを取得
execute store result score voice rng run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]

# 召喚したAECを削除
kill @e[tag=RNG,distance=..0.01,limit=1]

# 取得したUUIDを100で割った時の余りを取得
scoreboard players operation voice rng %= #22 rng

execute if score voice rng matches 0..4 run tellraw @a[tag=minigame] {"text": "いてぇよ！"}
execute if score voice rng matches 0..4 run playsound sarara:iteyo master @a[tag=minigame] ~ ~ ~ 0.3 1.0 0.3
execute if score voice rng matches 5..9 run tellraw @a[tag=minigame] {"text": "くそが！"}
execute if score voice rng matches 5..9 run playsound sarara:kusoga master @a[tag=minigame] ~ ~ ~ 0.3 1.0 0.3
execute if score voice rng matches 10..14 run tellraw @a[tag=minigame] {"text": "ふぁっきゅー！"}
execute if score voice rng matches 10..14 run playsound sarara:fuckyou master @a[tag=minigame] ~ ~ ~ 0.3 1.0 0.3
execute if score voice rng matches 15..19 run tellraw @a[tag=minigame] {"text": "Hey You!"}
execute if score voice rng matches 15..19 run playsound sarara:heyyou master @a[tag=minigame] ~ ~ ~ 0.3 1.0 0.3
execute if score voice rng matches 20..21 run tellraw @a[tag=minigame] {"text": "川越出身です"}
execute if score voice rng matches 20..21 run playsound sarara:bonus master @a[tag=minigame] ~ ~ ~ 0.3 1.0 0.3