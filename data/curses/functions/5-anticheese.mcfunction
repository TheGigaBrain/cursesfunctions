# Prevents the soul being cheesed by suffocation or fall damage
execute as @e[tag=lostsoul,nbt={HurtTime:9s}] at @s run function curses:5-anticheese/removeblocks
execute as @e[tag=lostsoul,nbt={OnGround:0b}] store result score @s death run data get entity @s FallDistance 1
execute as @e[tag=lostsoul,scores={death=3..}] run data merge entity @s {FallDistance:0f}
scoreboard players reset @e[tag=lostsoul] death