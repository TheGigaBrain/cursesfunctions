execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-2
playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 1 1
summon snowball ^ ^ ^-1 {NoGravity:1b,Tags:["wanddigging","wandprojectile"],Item:{id:"minecraft:flint",Count:1}}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Tags:["wandvector"]}
teleport @e[tag=wanddigging,sort=nearest,limit=1] ^ ^ ^3
data modify entity @e[tag=wanddigging,sort=nearest,limit=1] Motion set from entity @e[tag=wandvector,sort=arbitrary,limit=1] Pos
data modify entity @e[tag=wanddigging,sort=nearest,limit=1] Owner set from entity @s UUID