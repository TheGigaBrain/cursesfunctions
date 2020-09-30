particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 50 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_rod"}}] {Item:{tag:{WandSpell:"gravity",display:{Name:'{"text":"Wand of Gravity","color":"light_purple","italic":false,"bold":true}',Lore:['""','{"text":"Pick up and launch targets.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"unbreaking",lvl:1}]}}}

kill @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:phantom_membrane"}},sort=nearest,limit=1]

kill @s