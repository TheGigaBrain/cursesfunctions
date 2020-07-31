execute store result score @s Health run data get entity @s Health 10000
scoreboard players remove @s Health 140000
data merge entity @s {Fire:400s,HurtTime:10s,FallDistance:4.0f}
execute if score @s Health matches ..0 run kill @s
execute as @s[scores={Health=1..}] store result entity @s Health float 0.0001 run scoreboard players get @s Health
scoreboard players reset @s Health