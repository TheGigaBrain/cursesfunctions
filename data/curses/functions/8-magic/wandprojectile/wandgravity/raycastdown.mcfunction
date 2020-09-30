scoreboard players add @s recursionCount 1

teleport @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #curses:raycast unless score @s recursionCount matches 16.. run function curses:8-magic/wandprojectile/wandgravity/raycastdown