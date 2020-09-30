scoreboard players add @s recursionCount 1

teleport @s ^ ^ ^-0.1
execute at @s if block ^ ^ ^-0.1 #curses:raycast unless score @s recursionCount matches 25.. run function curses:8-magic/wandprojectile/wandgravity/raycast