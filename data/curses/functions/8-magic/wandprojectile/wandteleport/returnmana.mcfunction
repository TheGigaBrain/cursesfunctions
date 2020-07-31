tellraw @s {"text":"Target out of range!","color":"dark_red"}
execute at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
execute if score @s mana matches 1001..2000 run scoreboard players set @s[gamemode=!creative] mana 2000
execute if score @s mana matches ..1000 run scoreboard players add @s[gamemode=!creative] mana 1000

kill @e[tag=wandpearl,sort=nearest,limit=1]
kill @e[tag=wandteleport,sort=nearest,limit=1]