playsound minecraft:block.bell.use player @a ~ ~ ~ 3 0.5
playsound minecraft:block.bell.resonate player @a ~ ~ ~ 3 1
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 3 1

summon armor_stand ~ ~ ~ {Silent:1,Marker:1,Invisible:1,Tags:["wandtime","wandprojectile"]}
scoreboard players set @e[tag=wandtime,sort=nearest,limit=1] cursetimer 300
execute store result score @e[tag=wandtime,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]

execute store result score @s UUID0 run data get entity @s UUID[0]
execute as @e[tag=playerpos] if score @s UUID0 = @p UUID0 run kill @s
