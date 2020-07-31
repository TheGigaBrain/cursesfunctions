# Standard timing stuff.
execute as @a[nbt={Inventory:[{tag:{Cursed:1}}]},gamemode=!creative,gamemode=!spectator] at @s run scoreboard players add @s cursetimer 1
execute as @a[scores={cursetimer=1200..}] at @s run scoreboard players add @s virus 1
execute as @a[scores={cursetimer=1200..,virus=1..15}] at @s run particle minecraft:dust 0.5 0 0.5 1 ~ ~0.8 ~ 0.4 0.5 0.4 0 25 force
execute as @a[scores={cursetimer=1200..,virus=16..25}] at @s run particle minecraft:dust 0.8 0 0.8 1 ~ ~0.8 ~ 0.4 0.5 0.4 0 50 force
execute as @a[scores={cursetimer=1200..,virus=26..}] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.8 ~ 0.4 0.5 0.4 0 100 force
execute as @a[scores={cursetimer=1200..,virus=30..}] at @s run function curses:0-summonlostsoul
scoreboard players reset @a[scores={virus=30..}] virus
scoreboard players reset @a[scores={cursetimer=1200..}] cursetimer
scoreboard players reset @a[nbt=!{Inventory:[{tag:{Cursed:1}}]}] cursetimer