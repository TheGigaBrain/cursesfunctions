scoreboard players add @s recursionCount 1

execute as @a[dx=0,dy=0,dz=0] store result score @s UUID0 run data get entity @s UUID[0]

execute as @e[type=#curses:mobs,dx=0,dy=0,dz=0,limit=1,tag=!clicktest] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] run tag @s add grabmob
execute unless entity @e[tag=grabmob] as @a[dx=0,dy=0,dz=0,limit=1,scores={talkedtovillager=0}] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] run tag @s add grabmob

teleport @s ^ ^ ^0.1
execute at @s if block ~ ~ ~ #curses:raycast unless score @s recursionCount matches 40.. unless entity @e[tag=grabmob] run function curses:8-magic/usewand/gravity/grabentity/raycast