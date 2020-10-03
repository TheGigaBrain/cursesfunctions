execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-1

# Prevent player from using the wand of gravity if another player has them grabbed
execute at @e[tag=wandprojectile,tag=wandgravity] if score @e[tag=wandprojectile,tag=wandgravity,sort=nearest,limit=1] Motion0 = @s UUID0 run tag @s add playergravity
execute if entity @s[tag=wandgravity] run function curses:8-magic/usewand/gravity/launchentity
execute if entity @s[tag=!wandgravity,tag=!launchentity,tag=!playergravity] run function curses:8-magic/usewand/gravity/grabentity
execute if entity @s[tag=!wandgravity,tag=!launchentity,tag=playergravity] run function curses:8-magic/usewand/gravity/grabentity/returnmana
tag @s remove playergravity
tag @s remove launchentity