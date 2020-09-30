execute as @s[type=!armor_stand] run function curses:8-magic/wandprojectile/wandgravity/holdmob
execute as @s[type=armor_stand,tag=!launchentity] run function curses:8-magic/wandprojectile/wandgravity/holdplayer
execute as @s[type=armor_stand,tag=launchentity] run function curses:8-magic/wandprojectile/wandgravity/launchplayer