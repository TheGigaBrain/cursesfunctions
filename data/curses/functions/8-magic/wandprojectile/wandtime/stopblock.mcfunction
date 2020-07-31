execute as @s[type=tnt] store result score @s virus run data get entity @s Fuse
execute as @s[type=tnt] run scoreboard players operation @s virus += @e[tag=wandtime,sort=nearest,limit=1] cursetimer
execute as @s[type=tnt] store result entity @s Fuse short 1 run scoreboard players get @s virus
execute as @s[type=tnt] run scoreboard players reset @s virus

execute as @s[type=falling_block] run data merge entity @s {Time:1}

data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

# We summon a new entity outside of the render distance and teleport it in
# This forces the client to update the entity, preventing visual glitches
# This won't work if the client has [0,0] loaded in the end
execute as @s[type=falling_block] at @s in minecraft:the_end run summon falling_block 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1}
execute as @s[type=tnt] at @s in minecraft:the_end run summon tnt 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1,Fuse:80}
execute in minecraft:the_end positioned 0 -64 0 run data modify entity @e[tag=newblock,sort=nearest,limit=1] {} merge from entity @s {}
execute at @s in minecraft:the_end run teleport @e[tag=newblock,sort=nearest,limit=1] @s

summon shulker ~ ~ ~ {Tags:["blockpos"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:999999999,Amplifier:0,ShowParticles:0b}],Color:15,DeathLootTable:"minecraft:empty",Invulnerable:1}
teleport @e[tag=blockpos,sort=nearest,limit=1] ~ ~0.5 ~
kill @s