#警告
setblock -129 52 15 air
setblock -129 52 15 crimson_button[facing=east,face=floor]
tellraw @a {"text":"現在、他のミニゲームで既に遊んでいます。","color":"red"}