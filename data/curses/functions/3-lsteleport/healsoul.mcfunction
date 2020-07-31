# Storing health as a scoreboard value so it can be added to
# Scaling by 10,000 to preserve significant digits since the scoreboard only takes integers
execute store result score @s virus run data get entity @s Health 10000
scoreboard players add @s virus 10000
execute if score @s virus matches 200000.. run scoreboard players set @s virus 200000
execute store result entity @s Health float 0.0001 run scoreboard players get @s virus
scoreboard players reset @s virus