scoreboard players add @s cursetimer 1
execute if score @s cursetimer matches 15.. run kill @s

particle minecraft:crit ~ ~ ~ 0.75 0.75 0.75 0 10

clone ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 1 2 1 filtered #minecraft:wither_immune move
clone ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 1 2 1 filtered minecraft:obsidian move
fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 air destroy
clone 1 2 1 4 5 4 ~-1.5 ~-1.5 ~-1.5 masked move