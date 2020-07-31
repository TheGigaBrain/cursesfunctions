scoreboard players add @s cursetimer 1
execute if score @s cursetimer matches 15.. run kill @s

particle minecraft:crit ~ ~ ~ 0.75 0.75 0.75 0 10

clone ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 -111 10 -47 filtered #minecraft:wither_immune move
clone ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 -111 10 -47 filtered minecraft:obsidian move
fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 air destroy
clone -111 10 -47 -108 13 -44 ~-1.5 ~-1.5 ~-1.5 masked move