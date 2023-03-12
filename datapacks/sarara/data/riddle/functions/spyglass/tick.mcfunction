#望遠鏡用tick
execute as @a[x=-114,y=51,z=-35,distance=..1,advancements={sarara:spyglass=true}] at @s run scoreboard players set @s spyglass 1
execute as @a[advancements={sarara:spyglass=false}] at @s run scoreboard players set @s spyglass 0
execute as @a[scores={spyglass=1}] run effect give @a[scores={spyglass=0}] blindness 1000000 255 true
execute unless entity @a[advancements={sarara:spyglass=true}] as @a[scores={spyglass=0}] run effect clear @s blindness
execute if score on spyglass matches 0 if entity @a[scores={spyglass=1}] run function riddle:spyglass/change
execute if score on spyglass matches 1 unless entity @a[scores={spyglass=1}] run function riddle:spyglass/init
advancement revoke @a only sarara:spyglass