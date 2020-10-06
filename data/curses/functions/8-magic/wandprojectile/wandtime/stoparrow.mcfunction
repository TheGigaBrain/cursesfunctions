execute store result score @s Motion0 run data get entity @s Motion[0] 10000
execute store result score @s Motion1 run data get entity @s Motion[1] 10000
execute store result score @s Motion2 run data get entity @s Motion[2] 10000
data merge entity @s {NoGravity:1}
execute store result entity @s Motion[0] double 0.0000001 run scoreboard players get @s Motion0
execute store result entity @s Motion[1] double 0.0000001 run scoreboard players get @s Motion1
execute store result entity @s Motion[2] double 0.0000001 run scoreboard players get @s Motion2

tag @s add timestop