#サーミネーター用tick
execute if entity @e[type=minecraft:snowball,x=-526,y=30,z=-90,dx=7,dy=1,dz=-12] if score condition therminator matches 0 run scoreboard players add cnt therminator 1
execute if entity @e[type=minecraft:snowball,x=-526,y=30,z=-90,dx=7,dy=1,dz=-12] if score condition therminator matches 0 run kill @e[type=snowball]

execute if entity @e[type=minecraft:snowball,x=-526,y=30,z=-90,dx=7,dy=1,dz=-12] if score condition therminator matches 1 run scoreboard players add cnt2 therminator 1
execute if entity @e[type=minecraft:snowball,x=-526,y=30,z=-90,dx=7,dy=1,dz=-12] if score condition therminator matches 1 run kill @e[type=snowball]

execute if score cnt therminator matches 10.. if score condition therminator matches 0 unless entity @a[x=-526,y=30,z=-90,dx=7,dy=2,dz=-12] run fill -519 29 -102 -526 31 -90 ice replace water
execute if score cnt2 therminator matches 10.. if score condition therminator matches 1 run fill -519 29 -102 -526 31 -90 water replace ice

execute if score cnt therminator matches 10.. if score condition therminator matches 0 unless entity @a[x=-526,y=30,z=-90,dx=7,dy=2,dz=-12] run scoreboard players set condition therminator 1
execute if score cnt therminator matches 10.. if score condition therminator matches 1 unless entity @a[x=-526,y=30,z=-90,dx=7,dy=2,dz=-12] run scoreboard players set cnt therminator 0
execute if score cnt2 therminator matches 10.. if score condition therminator matches 1 run scoreboard players set condition therminator 0
execute if score cnt2 therminator matches 10.. if score condition therminator matches 0 run scoreboard players set cnt2 therminator 0