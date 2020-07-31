execute as @a run function curses:8-magic/manaregen
execute as @a[tag=!holdingwand] at @s if data entity @s SelectedItem.tag.WandSpell run function curses:8-magic/startholding
execute as @a[tag=holdingwand] at @s unless data entity @s SelectedItem.tag.WandSpell run function curses:8-magic/stopholding
execute as @a[tag=holdingwand] anchored eyes at @s run function curses:8-magic/continueholding
execute as @a[tag=holdingwand,scores={talkedtovillager=1..}] anchored eyes at @s run function curses:8-magic/consumemana

execute as @e[tag=wandprojectile] at @s run function curses:8-magic/wandprojectile

execute as @e[tag=clicktest] at @s unless entity @a[tag=holdingwand,distance=..4] run teleport @s 0 -64 0
execute as @e[tag=clicktest] at @s unless entity @a[tag=holdingwand,distance=..4] run kill @s
team join nocollision @e[tag=clicktest]
scoreboard players reset @a talkedtovillager