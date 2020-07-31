execute as @e[type=item,nbt={Item:{tag:{LostSoulDrop:1}}}] run function curses:4-uncursing/lostsouldeath
execute as @e[tag=uncursefield] at @s run particle minecraft:happy_villager ~ ~ ~ 1.5 1.5 1.5 0 3 force
execute as @e[tag=uncursefield] at @s run tag @e[type=item,distance=..2.5] add fielduncurse
execute as @e[tag=fielduncurse,nbt={Item:{tag:{Cursed:1}}},nbt=!{Item:{tag:{PermanentlyCursed:1}}}] run tag @s add onlapis

execute as @e[type=item,nbt={Item:{tag:{PermanentlyCursed:1}}}] run tag @s add soulgear
execute as @e[type=item,tag=!uncursed,tag=!soulgear] at @s if block ~ ~-1 ~ lapis_block if block ~ ~-2 ~ lava run tag @s add onlapis
# Make the check for when to uncurse lost soul gear a bit stricter, for added visual appeal
execute as @e[type=item,tag=!uncursed,tag=soulgear,nbt={Item:{tag:{Cursed:1}}}] at @s if blocks ~-1.25 ~-0.5 ~-1.25 ~1.25 ~-0.5 ~1.25 1 1 1 all run tag @s add onlapis
execute as @e[tag=onlapis,sort=random,limit=1] at @s run function curses:4-uncursing/uncurseitem

execute as @e[tag=onlapis] run tag @s remove onlapis