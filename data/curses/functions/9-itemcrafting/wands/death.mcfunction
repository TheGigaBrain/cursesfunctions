particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 50 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_rod"}}] {Item:{tag:{WandSpell:"death",display:{Name:'{"text":"Wand of Death","color":"dark_gray","italic":"false","bold":"true"}',Lore:['""','{"text":"Fires a wave of death.","color":"gray","italic":"false"}']},HideFlags:1,Enchantments:[{id:unbreaking,lvl:1s}]}}}

kill @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:spider_eye"}},sort=nearest,limit=1]

kill @s