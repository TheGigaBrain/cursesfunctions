scoreboard players add @s cursetimer 1
execute if score @s cursetimer matches 100.. run kill @s

execute as @s[tag=wandpearl] store result score @s UUID0 run data get entity @s Owner[0]
execute as @s[tag=!wandpearl] run data modify entity @e[tag=wandpearl,sort=nearest,limit=1,distance=..24] Pos set from entity @s Pos
execute as @s[tag=!wandpearl] unless entity @a[distance=..128,nbt={SelectedItem:{tag:{WandSpell:"teleport"}}}] as @a if score @s UUID0 = @e[tag=wandpearl,sort=nearest,limit=1] UUID0 run function curses:8-magic/wandprojectile/wandteleport/returnmana

execute as @s[tag=wandpearl] unless entity @e[tag=wandteleport,tag=!wandpearl,distance=..24] as @a if score @s UUID0 = @e[tag=wandpearl,sort=nearest,limit=1] UUID0 run effect give @s resistance 1 4 true