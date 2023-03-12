##アマスタリカバリキル
#時計回り
kill @e[type=armor_stand,tag=r1]
kill @e[type=armor_stand,tag=r2]
kill @e[type=armor_stand,tag=r3]
kill @e[type=armor_stand,tag=r4]

#反時計回り
kill @e[type=armor_stand,tag=r5]
kill @e[type=armor_stand,tag=r6]
kill @e[type=armor_stand,tag=r7]
kill @e[type=armor_stand,tag=r8]

execute run function riddle:roll/init

#落下ブロック削除
kill @e[type=falling_block,x=-120,y=60,z=-77,dx=-15,dy=-6,dz=0]