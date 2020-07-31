playsound minecraft:block.beacon.activate player @a ~ ~ ~ 3 2

execute as @a[tag=timestop] run tag @s remove timestop
kill @e[tag=playerpos,distance=..33]

execute as @e[type=#curses:stasis,tag=timestop,distance=..33] run data merge entity @s {NoGravity:0}
execute as @e[type=#curses:stasis,tag=timestop,distance=..33] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s Motion0
execute as @e[type=#curses:stasis,tag=timestop,distance=..33] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s Motion1
execute as @e[type=#curses:stasis,tag=timestop,distance=..33] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s Motion2
execute as @e[type=#curses:stasis,tag=timestop,distance=..33] run tag @s remove timestop
execute as @e[type=#curses:stasis,tag=newblock,distance=..33] run tag @s remove newblock

# get mobs like endermen who teleported out of the field
execute as @e[tag=timestop,type=#curses:mobs] at @s unless entity @e[tag=wandtime,distance=..32] run data merge entity @s {NoAI:0,Silent:0}
execute as @e[tag=timestop,type=#curses:mobs] at @s unless entity @e[tag=wandtime,distance=..32] run tag @s remove timestop
execute as @e[tag=timestop,type=#curses:mobs,distance=..33] run data merge entity @s {NoAI:0,Silent:0}
execute as @e[tag=timestop,type=#curses:mobs,distance=..33] run tag @s remove timestop

tag @e[tag=blockpos,distance=..33] add killme
teleport @e[tag=killme] 0 -64 0
kill @e[tag=killme]

kill @s