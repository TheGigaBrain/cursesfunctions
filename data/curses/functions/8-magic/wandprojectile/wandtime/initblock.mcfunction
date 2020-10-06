# This stuff has to happen one tick after a falling block is frozen

scoreboard players operation @e[tag=newblock,sort=nearest,limit=1,distance=..0.99] Motion0 = @s Motion0
scoreboard players operation @e[tag=newblock,sort=nearest,limit=1,distance=..0.99] Motion1 = @s Motion1
scoreboard players operation @e[tag=newblock,sort=nearest,limit=1,distance=..0.99] Motion2 = @s Motion2
teleport @e[tag=newblock,sort=nearest,limit=1,distance=..0.99,nbt={Time:1}] ~ ~-0.000001 ~
execute if entity @e[tag=newblock,distance=..0.99,nbt={Time:1}] run teleport @s ~ ~-0.000001 ~
tag @s add initblock