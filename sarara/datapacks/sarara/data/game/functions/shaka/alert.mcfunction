#警告
setblock -129 52 4 air
setblock -129 52 4 warped_button[facing=east,face=floor]
tellraw @a {"text":"現在、他のミニゲームで既に遊んでいます。","color":"red"}