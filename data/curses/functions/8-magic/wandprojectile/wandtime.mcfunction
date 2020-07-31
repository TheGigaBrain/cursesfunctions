scoreboard players remove @s cursetimer 1

scoreboard players set @s timerdivisor 40
scoreboard players operation @s soultimer = @s cursetimer
scoreboard players operation @s soultimer %= @s timerdivisor
execute as @s[scores={soultimer=0}] run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 3 1
execute as @s[scores={soultimer=20}] run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 3 0.85

#particle minecraft:barrier ~ ~ ~ 12 12 12 0 4 force
particle minecraft:dust 0.6 0.6 0.6 3 ~ ~ ~ 12 12 12 0.1 16 force

execute as @a[distance=..32] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[distance=..32,tag=!timestop,gamemode=!creative] unless score @s UUID0 = @e[tag=wandtime,sort=nearest,limit=1] UUID0 at @s run function curses:8-magic/wandprojectile/wandtime/stopplayer
execute as @e[distance=..32,tag=playerpos] at @s as @a[gamemode=!creative] if score @s UUID0 = @e[tag=playerpos,sort=nearest,limit=1] UUID0 run teleport @s @e[tag=playerpos,sort=nearest,limit=1]

scoreboard players add @e[type=#curses:stasis,distance=..32,tag=!wandprojectile] cursetimer 1
execute as @e[type=#curses:stasis,distance=..32,tag=!timestop,scores={cursetimer=2..},tag=!wandprojectile] run function curses:8-magic/wandprojectile/wandtime/stoparrow
#execute as @e[tag=timestop,type=falling_block] at @s unless entity @e[tag=blockpos,distance=..1] run data merge entity @s {Time:600}
execute as @e[tag=timestop,type=#curses:falling_blocks] at @s run teleport @s @e[tag=blockpos,sort=nearest,limit=1,distance=..0.9]

execute as @e[distance=..32,type=#curses:mobs,tag=!lostsoul,nbt=!{NoAI:1b}] run tag @s add timestop
execute as @e[distance=..32,tag=timestop,type=#curses:mobs] run data merge entity @s {NoAI:1,Silent:1}

execute if score @s cursetimer matches ..0 run function curses:8-magic/wandprojectile/wandtime/resumetime