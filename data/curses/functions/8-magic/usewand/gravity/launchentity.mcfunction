tag @s add launchentity

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2

execute as @e[tag=wandgravity,tag=wandprojectile,type=!armor_stand] if score @s UUID0 = @p UUID0 at @s run function curses:8-magic/usewand/gravity/launchentity/launchmob
execute as @e[tag=wandgravity,tag=wandprojectile,type=armor_stand] if score @s UUID0 = @p UUID0 at @s run function curses:8-magic/usewand/gravity/launchentity/launchplayer