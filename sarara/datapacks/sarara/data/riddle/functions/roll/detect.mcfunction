#ボタン検知
#時計回り
execute if block -133 52 -92 polished_blackstone_button[powered=true] if score on1 roll matches 0 run function riddle:roll/switch/1
execute if block -121 52 -92 polished_blackstone_button[powered=true] if score on2 roll matches 0 run function riddle:roll/switch/2
execute if block -140 52 -85 polished_blackstone_button[powered=true] if score on3 roll matches 0 run function riddle:roll/switch/3
execute if block -114 52 -85 polished_blackstone_button[powered=true] if score on4 roll matches 0 run function riddle:roll/switch/4

#反時計回り
execute if block -113 52 -83 polished_blackstone_button[powered=true] if score on5 roll matches 0 run function riddle:roll/switch/5
execute if block -134 52 -91 polished_blackstone_button[powered=true] if score on6 roll matches 0 run function riddle:roll/switch/6
execute if block -141 52 -83 polished_blackstone_button[powered=true] if score on7 roll matches 0 run function riddle:roll/switch/7
execute if block -120 52 -91 polished_blackstone_button[powered=true] if score on8 roll matches 0 run function riddle:roll/switch/8

#ブロック回転
execute if block -127 54 -77 stone_button[powered=true] run function riddle:roll/start

#正解検知
execute if score unlocked roll matches 0 if score time roll matches 0 if score count roll matches 4 if score switch1 roll matches 1 if score switch2 roll matches 0 if score switch3 roll matches 0 if score switch4 roll matches 0 if score switch5 roll matches 1 if score switch6 roll matches 1 if score switch7 roll matches 1 if score switch8 roll matches 0 run function riddle:roll/done