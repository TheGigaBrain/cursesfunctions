scoreboard players add @s recursionCount 1

particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
particle dust 0 0 0 1 ^ ^ ^-0.05 0 0 0 0 1 force

execute as @a[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] unless score @s UUID0 = @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run scoreboard players add @s killedbyplayer 1
execute as @a[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] unless score @s UUID0 = @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run effect give @s instant_damage 1 7 true
execute as @e[dx=0,dy=0,dz=0,tag=!lostsoul,type=#curses:mobs,type=!player,type=!wither,type=!ender_dragon,type=!elder_guardian,nbt=!{Invulnerable:1b}] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] run kill @s
execute positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[dx=0,dy=0,dz=0,tag=lostsoul] minecraft:instant_health 1 2 true

teleport @s ^ ^ ^0.1
execute at @s unless score @s recursionCount matches 320.. if block ~ ~ ~ #curses:raycast run function curses:8-magic/usewand/death/raycast


