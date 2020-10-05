execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Marker:1,Silent:1,DisabledSlots:8191,Small:1,Invisible:1,Tags:["raycast"]}
execute as @e[tag=raycast,sort=nearest,limit=1] rotated as @p positioned as @s run teleport @s ~ ~ ~ ~ ~
execute store result score @e[tag=raycast,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]
execute as @e[tag=raycast,sort=nearest,limit=1] at @s run function curses:8-magic/usewand/gravity/grabentity/raycast
kill @e[tag=raycast]

execute unless entity @e[tag=grabmob] run function curses:8-magic/usewand/gravity/grabentity/returnmana
execute if entity @e[tag=grabmob] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 2
execute if entity @e[tag=grabmob] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute as @e[tag=grabmob,type=!player] run function curses:8-magic/usewand/gravity/grabentity/grabmob
execute as @e[tag=grabmob,type=player] run function curses:8-magic/usewand/gravity/grabentity/grabplayer
tag @e[tag=grabmob] remove grabmob