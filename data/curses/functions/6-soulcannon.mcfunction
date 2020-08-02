execute as @e[tag=lostsoul,nbt=!{NoAI:1b}] run function curses:6-soulcannon/firearrow

# Make the area-effect-cloud move with the arrow projectile, so it ends up where the arrow lands
execute as @e[tag=movingsoulfield] at @s unless entity @e[tag=soulcannon,distance=..2.1] run tag @s remove movingsoulfield
execute as @e[tag=movingsoulfield] at @s run teleport @s @e[tag=soulcannon,sort=nearest,limit=1,distance=..2.1]
tag @e[tag=soulcannon,nbt={inGround:1b}] remove soulcannon