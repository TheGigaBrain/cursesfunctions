particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 10 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_boots"}}] {Item:{tag:{Cursed:1,PermanentlyCursed:1,Unbreakable:1,display:{Name:'{"text":"Sabatons of the Cursed","color":"dark_red","bold":"true","italic":"false"}'},Enchantments:[{id:protection,lvl:5}]}}}

kill @s