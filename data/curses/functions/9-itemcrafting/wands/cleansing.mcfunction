particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 50 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_rod"}}] {Item:{tag:{WandSpell:"cleansing",display:{Name:'{"text":"Wand of Recovery","color":"green","italic":false,"bold":true}',Lore:['""','{"text":"Heals and clears potion effects.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"unbreaking",lvl:1}]}}}

kill @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:ghast_tear"}},sort=nearest,limit=1]

kill @s