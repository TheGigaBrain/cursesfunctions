#tellraw @s {"text":"No target!","color":"dark_red"}
#execute at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
execute if score @s mana matches 1201..2000 run scoreboard players set @s[gamemode=!creative] mana 2000
execute if score @s mana matches ..1200 run scoreboard players add @s[gamemode=!creative] mana 800