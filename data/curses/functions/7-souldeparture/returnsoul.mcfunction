execute at @r[gamemode=!creative,gamemode=!spectator] run function curses:7-souldeparture/returnsoul/placesoul
tag @s remove departedsoul
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
data merge entity @s {Health:20.0f}