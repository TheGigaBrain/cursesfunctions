execute as @s[nbt={Item:{Count:9b,tag:{CursesId:"soul_fragment"}}}] run function curses:9-itemcrafting/craftgreaterfragment
execute as @s[nbt={Item:{Count:5b,tag:{CursesId:"greater_soul_fragment"}}}] run function curses:9-itemcrafting/craftgreatestfragment

execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_helmet"}}] run function curses:9-itemcrafting/armor/helmet
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_chestplate"}}] run function curses:9-itemcrafting/armor/chestplate
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_leggings"}}] run function curses:9-itemcrafting/armor/leggings
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_boots"}}] run function curses:9-itemcrafting/armor/boots

execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_sword"}}] run function curses:9-itemcrafting/weapons/sword
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bow"}}] run function curses:9-itemcrafting/weapons/bow
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greater_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_axe"}}] run function curses:9-itemcrafting/weapons/axe

execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:fire_charge"}}] run function curses:9-itemcrafting/wands/fireball
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:diamond_shovel"}}] run function curses:9-itemcrafting/wands/digging
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:ender_pearl"}}] run function curses:9-itemcrafting/wands/teleport
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:ghast_tear"}}] run function curses:9-itemcrafting/wands/cleansing
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:spider_eye"}}] run function curses:9-itemcrafting/wands/death
execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"greatest_soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:blaze_rod"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:clock"}}] run function curses:9-itemcrafting/wands/time

execute as @s[nbt={Item:{Count:1b,tag:{CursesId:"soul_fragment"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:egg"}}] run function curses:9-itemcrafting/craftspawnegg