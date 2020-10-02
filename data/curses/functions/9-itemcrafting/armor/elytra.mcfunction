particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.05 10 force
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.5

data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:elytra"}}] {Item:{tag:{Cursed:1,PermanentlyCursed:1,Unbreakable:1,display:{Name:'{"text":"Wings of the Cursed","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{id:"protection",lvl:5},{id:"feather_falling",lvl:10}],AttributeModifiers:[{Slot:"chest",AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1178385839,-769896961,-1506410717,279922270]}]}}}

kill @s