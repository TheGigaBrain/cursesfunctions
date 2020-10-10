summon villager 0 -64 0 {Invulnerable:1,Silent:1,NoAI:1,Offers:{},ActiveEffects:[{Id:14,Duration:999999999,Amplifier:0,ShowParticles:0b}],Tags:["clicktest"]}
teleport @e[tag=clicktest,x=0,y=-64,z=0,sort=nearest,limit=1] ^ ^ ^1
execute positioned ^ ^ ^1 store result score @e[tag=clicktest,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]

tag @s add holdingwand

summon area_effect_cloud ^ ^ ^1 {Tags:["oldpos"]}
execute store result score @s PosX1 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=oldpos,sort=nearest,limit=1] Pos[0] 100
execute store result score @s PosY1 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=oldpos,sort=nearest,limit=1] Pos[1] 100
execute store result score @s PosZ1 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=oldpos,sort=nearest,limit=1] Pos[2] 100
kill @e[tag=oldpos]