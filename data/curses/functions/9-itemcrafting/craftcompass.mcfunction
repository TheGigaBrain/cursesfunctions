particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 10 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:compass"}}] {Item:{tag:{WandSpell:"calibration",display:{Name:'{"text":"Compass of Attunement","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"Calibrates your wands. Sneak to reduce calibration.","color":"gray","italic":false}']},Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:1}}}

kill @s