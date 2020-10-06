execute store result score @s Motion0 run data get entity @s Motion[0] 10000
execute store result score @s Motion1 run data get entity @s Motion[1] 10000
execute store result score @s Motion2 run data get entity @s Motion[2] 10000

# The falling block entity spawns 0.01 blocks higher than it should
# But if we teleport it all the way down it won't overwrite the physical block properly
# We teleport it the rest of the way in initblock.mcfunction, after its time ticks to 1
teleport @s[nbt={Time:0}] ~ ~-0.009999 ~

execute as @s[type=tnt] store result score @s virus run data get entity @s Fuse
execute as @s[type=tnt] run scoreboard players operation @s virus += @e[tag=wandtime,sort=nearest,limit=1] cursetimer
execute as @s[type=tnt] store result entity @s Fuse short 1 run scoreboard players get @s virus
execute as @s[type=tnt] run scoreboard players reset @s virus

execute as @s[type=falling_block,nbt=!{Time:0}] run data merge entity @s {Time:1}

data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

# We summon a new entity outside of the render distance and teleport it in
# This forces the client to update the entity, preventing visual glitches
# Check for bedrock at 0 0 0 to see if the falling block is in the end; if it is we teleport from the nether instead
execute as @s[type=falling_block] at @s if block 0 0 0 bedrock in minecraft:the_end run summon falling_block 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1}
execute as @s[type=tnt] at @s if block 0 0 0 bedrock in minecraft:the_end run summon tnt 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1,Fuse:80}
execute as @s[type=falling_block] at @s if block 0 0 0 bedrock in minecraft:the_end positioned 0 -64 0 run data modify entity @e[tag=newblock,sort=nearest,limit=1] BlockState set from entity @s BlockState
execute at @s if block 0 0 0 bedrock in minecraft:the_end positioned 0 -64 0 run teleport @e[tag=newblock,sort=nearest,limit=1] @s

execute as @s[type=falling_block] at @s unless block 0 0 0 bedrock in minecraft:the_nether run summon falling_block 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1}
execute as @s[type=tnt] at @s unless block 0 0 0 bedrock in minecraft:the_nether run summon tnt 0 -64 0 {Tags:["timestop","newblock"],NoGravity:1,Fuse:80}
execute as @s[type=falling_block] at @s unless block 0 0 0 bedrock in minecraft:the_nether positioned 0 -64 0 run data modify entity @e[tag=newblock,sort=nearest,limit=1] BlockState set from entity @s BlockState
execute at @s unless block 0 0 0 bedrock in minecraft:the_nether positioned 0 -64 0 run teleport @e[tag=newblock,sort=nearest,limit=1] @s

execute at @s run data modify entity @e[tag=newblock,sort=nearest,limit=1] {} merge from entity @s {}

# Shulker for block collision, riding an armor stand so it doesn't snap to the block grid
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,DisabledSlots:4144959,Tags:["blockpos"],Passengers:[{id:"minecraft:shulker",Tags:["blockpos"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:999999999,Amplifier:0,ShowParticles:0b}],Color:15,DeathLootTable:"minecraft:empty",Invulnerable:1}]}

scoreboard players operation @e[tag=blockpos,type=armor_stand,sort=nearest,limit=1] Motion0 = @s Motion0
scoreboard players operation @e[tag=blockpos,type=armor_stand,sort=nearest,limit=1] Motion1 = @s Motion1
scoreboard players operation @e[tag=blockpos,type=armor_stand,sort=nearest,limit=1] Motion2 = @s Motion2

kill @s