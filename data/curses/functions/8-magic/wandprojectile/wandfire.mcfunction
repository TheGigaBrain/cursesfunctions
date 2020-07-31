scoreboard players add @s cursetimer 1
execute if score @s cursetimer matches 100.. run kill @s

summon area_effect_cloud ~ ~ ~ {Tags:["firevector"]}
data modify entity @e[tag=firevector,sort=nearest,limit=1] Pos set from entity @s Motion
execute as @e[tag=firevector] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["firevectortest"]}
execute positioned 0.0 0.0 0.0 if entity @e[tag=firevectortest,distance=..1.3] at @s positioned ~ ~0.5 ~ run function curses:8-magic/wandprojectile/wandfire/collision
kill @e[tag=firevector]
kill @e[tag=firevectortest]
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s Motion0
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s Motion1
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s Motion2

particle flame ~ ~0.5 ~ 0.25 0.25 0.25 0.01 10 force
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5

execute positioned ~-0.5 ~ ~-0.5 as @e[dx=0.0,dy=0.0,dz=0.0,type=#curses:mobs,tag=!lostsoul,tag=!clicktest,nbt={HurtTime:0s}] run function curses:8-magic/wandprojectile/wandfire/damageentity
execute positioned ~-0.5 ~ ~-0.5 as @a[dx=0.0,dy=0.0,dz=0.0] store result score @s UUID0 run data get entity @s UUID[0]
execute positioned ~-0.5 ~ ~-0.5 as @a[dx=0.0,dy=0.0,dz=0.0] unless score @s UUID0 = @e[tag=wandfire,sort=nearest,limit=1] UUID0 run scoreboard players add @s killedbyplayer 1
execute positioned ~-0.5 ~ ~-0.5 as @a[dx=0.0,dy=0.0,dz=0.0] unless score @s UUID0 = @e[tag=wandfire,sort=nearest,limit=1] UUID0 run effect give @s instant_damage 1 1 true