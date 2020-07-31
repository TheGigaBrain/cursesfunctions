particle flame ~ ~ ~ 0 0 0 0.1 200 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1
execute as @e[distance=..3,type=#curses:mobs,tag=!lostsoul,tag=!clicktest,nbt={HurtTime:0s}] run function curses:8-magic/wandprojectile/wandfire/damageentity

execute as @a[distance=..3] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[distance=..3] unless score @s UUID0 = @e[tag=wandfire,sort=nearest,limit=1] UUID0 run scoreboard players add @s killedbyplayer 1
execute as @a[distance=..3] unless score @s UUID0 = @e[tag=wandfire,sort=nearest,limit=1] UUID0 run effect give @s instant_damage 1 1 true

kill @s