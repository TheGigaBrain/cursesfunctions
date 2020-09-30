execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-1
execute if entity @s[tag=wandgravity] run function curses:8-magic/usewand/gravity/launchentity
execute unless entity @s[tag=wandgravity] unless entity @s[tag=launchentity] run function curses:8-magic/usewand/gravity/grabentity
tag @s remove launchentity