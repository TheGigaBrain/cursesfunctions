execute unless score @s mana matches 2000.. run scoreboard players add @s mana 1
scoreboard players operation @s manadisplay = @s mana
scoreboard players set @s timerdivisor 20
scoreboard players operation @s manadisplay /= @s timerdivisor

scoreboard players set @s requiredmana 0
execute if data entity @s {SelectedItem:{tag:{WandSpell:"fireball"}}} run scoreboard players set @s requiredmana 300
execute if data entity @s {SelectedItem:{tag:{WandSpell:"digging"}}} run scoreboard players set @s requiredmana 500
execute if data entity @s {SelectedItem:{tag:{WandSpell:"teleport"}}} run scoreboard players set @s requiredmana 1000
execute if data entity @s {SelectedItem:{tag:{WandSpell:"cleansing"}}} run scoreboard players set @s requiredmana 1200
execute if data entity @s {SelectedItem:{tag:{WandSpell:"death"}}} run scoreboard players set @s requiredmana 1600
execute if data entity @s {SelectedItem:{tag:{WandSpell:"time"}}} run scoreboard players set @s requiredmana 2000

tag @s remove wandgravity
execute at @e[tag=wandprojectile,tag=wandgravity,tag=!launchentity] if score @e[tag=wandprojectile,tag=wandgravity,sort=nearest,limit=1] UUID0 = @s UUID0 run tag @s add wandgravity
execute if data entity @s {SelectedItem:{tag:{WandSpell:"gravity"}}} run scoreboard players set @s requiredmana 800
execute if data entity @s {SelectedItem:{tag:{WandSpell:"gravity"}}} if entity @s[tag=wandgravity] run scoreboard players set @s requiredmana 0

scoreboard players operation @s reqmanadisplay = @s requiredmana
scoreboard players operation @s reqmanadisplay /= @s timerdivisor