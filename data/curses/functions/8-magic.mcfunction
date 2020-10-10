execute as @a store result score @s UUID0 run data get entity @s UUID[0]

execute as @a run function curses:8-magic/manaregen
execute as @a[tag=!holdingwand] at @s if data entity @s SelectedItem.tag.WandSpell run function curses:8-magic/startholding
execute as @a[tag=holdingwand] at @s unless data entity @s SelectedItem.tag.WandSpell run function curses:8-magic/stopholding
execute as @a[tag=holdingwand] anchored eyes at @s run function curses:8-magic/continueholding
execute as @a[tag=holdingwand,scores={talkedtovillager=1..}] anchored eyes at @s run function curses:8-magic/consumemana

execute as @e[tag=wandprojectile] at @s run function curses:8-magic/wandprojectile

execute as @e[tag=clicktest] at @a[tag=holdingwand] if score @p UUID0 = @s UUID0 run tag @s add clickowner
execute as @e[tag=clicktest,tag=!clickowner] run teleport @s 0 -64 0
execute as @e[tag=clicktest,tag=!clickowner] run kill @s
tag @e[tag=clickowner] remove clickowner

team join nocollision @e[tag=clicktest]
execute as @e[tag=clicktest,nbt=!{Fire:0s}] run data merge entity @s {Fire:0s}
scoreboard players set @a talkedtovillager 0