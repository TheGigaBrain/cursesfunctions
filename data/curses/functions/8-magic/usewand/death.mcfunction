execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clicktest,sort=nearest,limit=1,distance=..4] ^ ^ ^-2
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 1
execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Marker:1,Silent:1,DisabledSlots:8191,Small:1,Invisible:1,Tags:["wanddeath"]}
execute as @e[tag=wanddeath,sort=nearest,limit=1] rotated as @p positioned as @s run teleport @s ~ ~ ~ ~ ~

execute store result score @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]

execute as @e[tag=wanddeath,sort=nearest,limit=1] at @s run function curses:8-magic/usewand/death/raycast
kill @e[tag=wanddeath]