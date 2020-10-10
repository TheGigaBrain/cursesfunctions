execute at @s at @a[distance=..32,nbt={SelectedItem:{tag:{WandSpell:"gravity"}}}] if score @p UUID0 = @s UUID0 run tag @s add gravityowner
execute at @s at @a[distance=..32] if score @p UUID0 = @s Motion0 run tag @s add gravitytarget
execute unless entity @s[tag=gravityowner,tag=gravitytarget] run kill @s

execute at @a if score @p UUID0 = @s UUID0 facing ^ ^ ^-1 anchored eyes run teleport @s ^ ^ ^0.1 ~ ~
execute at @s run function curses:8-magic/wandprojectile/wandgravity/raycast
scoreboard players reset @s recursionCount

#execute at @a if score @p UUID0 = @s Motion0 positioned as @s run teleport @s ~ ~ ~ ~ ~
execute as @s[tag=gravityowner,tag=gravitytarget] at @a if score @p UUID0 = @s Motion0 run teleport @p @s

tag @s remove gravityowner
tag @s remove gravitytarget