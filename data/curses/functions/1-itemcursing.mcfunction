# Don't want the item cursed on death to curse the rest of the drops
execute as @a[scores={death=1..}] at @s run tag @e[type=item,distance=..2] add deathdrop
# For use in another function
execute as @a[scores={death=1..}] run tag @s add deadplayer
# Don't curse items in PvP
scoreboard players reset @a[scores={killedbyplayer=1..}] death
scoreboard players reset @a[scores={killedbyplayer=1..}] killedbyplayer
execute as @a[scores={death=1..}] at @s run data merge entity @e[type=item,sort=random,distance=..2,limit=1] {Item:{tag:{Cursed:1}}}
scoreboard players reset @a[scores={death=1..}] death
execute as @e[type=item,nbt={Item:{tag:{Cursed:1}}}] at @s as @e[type=item,distance=..1,tag=!deathdrop,tag=!fielduncurse] run data merge entity @s {Item:{tag:{Cursed:1}}}
execute as @e[type=item,nbt={Item:{tag:{Cursed:1}}}] at @s run particle minecraft:dragon_breath ~ ~0.1 ~ 0.05 0.05 0.05 0 1 normal @a[team=operator]
# Advanced tooltips showing the presence of NBT tags would give away which items are cursed, so we apply a tag to all dropped items to prevent this
execute as @e[type=item,nbt=!{Item:{tag:{Cursed:1}}}] run data merge entity @s {Item:{tag:{Cursed:0}}}