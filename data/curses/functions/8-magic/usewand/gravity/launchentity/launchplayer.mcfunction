tag @s add launchentity

execute at @a if score @s UUID0 = @p UUID0 positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3.5 {Tags:["gravityvector"]}
data modify entity @s Motion set from entity @e[tag=gravityvector,sort=arbitrary,limit=1] Pos
scoreboard players reset @s UUID0