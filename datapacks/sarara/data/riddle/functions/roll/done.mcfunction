##クリア判定
scoreboard players set unlocked roll 1
setblock -127 54 -76 air
setblock -127 54 -77 air

tellraw @a {"text":"謎を解き明かしました","color": "gold","bold": true}
execute as @a at @s run playsound sarara:fuckyou master @s ~ ~ ~ 0.4 1.0 0.4