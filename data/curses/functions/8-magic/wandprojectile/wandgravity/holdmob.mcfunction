execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute at @s at @a[distance=..32,nbt={SelectedItem:{tag:{WandSpell:"gravity"}}}] if score @p UUID0 = @s UUID0 run tag @s add gravityowner

execute unless entity @s[tag=gravityowner] run tag @s remove wandprojectile
execute unless entity @s[tag=gravityowner] run tag @s remove wandgravity
execute unless entity @s[tag=gravityowner] run scoreboard players reset @s UUID0

tag @s remove gravityowner

execute if entity @s[tag=wandgravity] at @a if score @p UUID0 = @s UUID0 facing ^ ^ ^-1 anchored eyes run teleport @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=wandgravity] at @s run function curses:8-magic/wandprojectile/wandgravity/raycast
scoreboard players reset @s recursionCount
# Move the mob down by up to 0.8 blocks
# This centers the bodies of zombies, skeletons, etc. making for a nicer look
execute if entity @s[tag=wandgravity] at @s run function curses:8-magic/wandprojectile/wandgravity/raycastdown
scoreboard players reset @s recursionCount