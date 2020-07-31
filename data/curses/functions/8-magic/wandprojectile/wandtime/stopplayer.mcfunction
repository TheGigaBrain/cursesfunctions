summon armor_stand ~ ~ ~ {Marker:1,Silent:1,Invisible:1,Tags:["playerpos"]}
data modify entity @e[tag=playerpos,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute store result score @e[tag=playerpos,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]
tag @s add timestop
scoreboard players reset @a UUID0