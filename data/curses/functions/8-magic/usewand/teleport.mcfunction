execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-2
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

summon snowball ^ ^ ^-1 {NoGravity:1b,Tags:["wandteleport","wandprojectile"],Item:{id:"minecraft:ender_pearl",Count:1}}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^8 {Tags:["wandvector"]}
teleport @e[tag=wandteleport,sort=nearest,limit=1] ^ ^ ^1
data modify entity @e[tag=wandteleport,sort=nearest,limit=1] Motion set from entity @e[tag=wandvector,sort=arbitrary,limit=1] Pos
kill @e[tag=wandvector]

summon ender_pearl ^ ^ ^-1 {Tags:["wandpearl","wandprojectile","wandteleport"],NoGravity:1b}
execute at @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.8 {Tags:["wandvector"]}
teleport @e[tag=wandpearl,sort=nearest,limit=1] ^ ^ ^1
data modify entity @e[tag=wandpearl,sort=nearest,limit=1] Motion set from entity @e[tag=wandvector,sort=arbitrary,limit=1] Pos
data modify entity @e[tag=wandpearl,sort=nearest,limit=1] Owner set from entity @s UUID