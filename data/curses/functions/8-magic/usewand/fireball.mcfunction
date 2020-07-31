execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-2
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
execute positioned ~ ~-0.5 ~ anchored eyes run summon armor_stand ^ ^ ^1.5 {Silent:1,DisabledSlots:8191,Small:1,Invisible:1,Tags:["wandfire","wandprojectile"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {Tags:["wandvector"]}
team join nocollision @e[tag=wandfire,sort=nearest,limit=1]
data modify entity @e[tag=wandfire,sort=nearest,limit=1] Motion set from entity @e[tag=wandvector,sort=arbitrary,limit=1] Pos
execute as @e[tag=wandfire,sort=nearest,limit=1] store result score @s Motion0 run data get entity @s Motion[0] 100000
execute as @e[tag=wandfire,sort=nearest,limit=1] store result score @s Motion1 run data get entity @s Motion[1] 100000
execute as @e[tag=wandfire,sort=nearest,limit=1] store result score @s Motion2 run data get entity @s Motion[2] 100000

execute store result score @e[tag=wandfire,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]