particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 50 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_rod"}}] {Item:{tag:{WandSpell:"digging",display:{Name:'{"text":"Wand of Digging","color":"gold","italic":"false","bold":"true"}',Lore:['""','{"text":"Razes blocks in front of you.","color":"gray","italic":"false"}']},HideFlags:1,Enchantments:[{id:unbreaking,lvl:1s}]}}}

kill @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:diamond_shovel"}},sort=nearest,limit=1]

kill @s