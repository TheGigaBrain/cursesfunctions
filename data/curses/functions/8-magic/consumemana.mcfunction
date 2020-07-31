execute if score @s mana >= @s requiredmana run tag @s add hasmana
execute if entity @s[tag=hasmana,gamemode=!creative] run scoreboard players operation @s mana -= @s requiredmana
execute if entity @s[gamemode=creative] run tag @s add hasmana
execute unless entity @s[tag=hasmana] run tellraw @s {"text":"Not enough mana!","color":"dark_red"}
execute unless entity @s[tag=hasmana] run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
execute as @s[tag=hasmana] run function curses:8-magic/usewand