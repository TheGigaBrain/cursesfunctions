#execute if entity @e[tag=wandtime,distance=..64] run tag @s add spellfailed
#execute as @s[tag=spellfailed] run tellraw @s {"text":"Time is already stopped!","color":"dark_red"}
#execute as @s[tag=spellfailed] run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
#execute as @s[tag=spellfailed] if score @s mana matches ..2000 run scoreboard players set @s[gamemode=!creative] mana 2000

playsound minecraft:block.bell.use player @a ~ ~ ~ 3 0.5
playsound minecraft:block.bell.resonate player @a ~ ~ ~ 3 1
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 3 1

summon armor_stand ~ ~ ~ {Silent:1,Marker:1,Invisible:1,Tags:["wandtime","wandprojectile"]}
scoreboard players set @e[tag=wandtime,sort=nearest,limit=1] cursetimer 300
execute store result score @e[tag=wandtime,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]

tag @s remove spellfailed
