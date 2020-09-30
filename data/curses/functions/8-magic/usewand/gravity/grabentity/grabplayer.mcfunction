execute at @s run summon armor_stand ~ ~ ~ {Silent:1,DisabledSlots:8191,Small:1,Invisible:1,Tags:["wandgravity","wandprojectile","grabmob"]}
execute at @s as @e[tag=wandgravity,tag=wandprojectile,tag=grabmob,sort=nearest,limit=1] store result score @s Motion0 run data get entity @p UUID[0]
execute as @e[tag=wandgravity,tag=wandprojectile,tag=grabmob,sort=nearest,limit=1] store result score @s UUID0 run data get entity @p UUID[0]
execute as @e[tag=wandgravity,tag=wandprojectile,tag=grabmob,sort=nearest,limit=1] run tag @s remove grabmob