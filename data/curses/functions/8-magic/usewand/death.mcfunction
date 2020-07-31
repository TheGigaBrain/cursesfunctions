execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-2
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 1
summon snowball ^ ^ ^-1 {NoGravity:1b,Tags:["wanddeath","wandprojectile"],Item:{id:"minecraft:black_concrete",Count:1}}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Tags:["wandvector"]}
teleport @e[tag=wanddeath,sort=nearest,limit=1] ^ ^ ^1
data modify entity @e[tag=wanddeath,sort=nearest,limit=1] Motion set from entity @e[tag=wandvector,sort=arbitrary,limit=1] Pos
execute store result score @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]