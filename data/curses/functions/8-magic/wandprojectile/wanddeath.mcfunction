scoreboard players add @s cursetimer 1
execute if score @s cursetimer matches 60.. run kill @s

particle minecraft:dust 0 0 0 1.5 ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 2

effect give @e[distance=..2.5,tag=!lostsoul,type=!player,type=!wither] minecraft:instant_damage 1 7 true
execute as @a[distance=..2.5] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[distance=..2.5] unless score @s UUID0 = @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run scoreboard players add @s killedbyplayer 1
execute as @a[distance=..2.5] unless score @s UUID0 = @e[tag=wanddeath,sort=nearest,limit=1] UUID0 run effect give @s instant_damage 1 7 true
execute as @e[distance=..2.5,tag=!lostsoul] run data merge entity @s {FallDistance:1024.0f}
effect give @e[distance=..2.5,tag=lostsoul] minecraft:instant_health 1 2 true
scoreboard players reset @a UUID0