execute if entity @s[nbt=!{SelectedItem:{tag:{WandSpell:"calibration"}}}] if score @s mana >= @s requiredmana run title @s actionbar {"text":"Mana: ","color":"aqua","extra":[{"color":"green","score":{"name":"*","objective":"manadisplay"}},{"text":"% / ","color":"aqua"},{"color":"dark_aqua","score":{"name":"*","objective":"reqmanadisplay"}},{"text":"%","color":"aqua"}]}
execute if entity @s[nbt=!{SelectedItem:{tag:{WandSpell:"calibration"}}}] if score @s mana < @s requiredmana run title @s actionbar {"text":"Mana: ","color":"aqua","extra":[{"color":"red","score":{"name":"*","objective":"manadisplay"}},{"text":"% / ","color":"aqua"},{"color":"dark_aqua","score":{"name":"*","objective":"reqmanadisplay"}},{"text":"%","color":"aqua"}]}

execute if entity @s[nbt={SelectedItem:{tag:{WandSpell:"calibration"}}}] run title @s actionbar {"color": "aqua","text":"Calibration: ","extra":[{"color": "green","score":{"name":"@s","objective":"WandCalibration"}},{"color": "aqua","text": " ticks"}]}

execute as @e[tag=clicktest] if score @s UUID0 = @p UUID0 run tag @s add clickowner
execute positioned ~ ~-1 ~ anchored eyes run teleport @e[tag=clickowner] ^ ^ ^1
execute unless entity @e[tag=clickowner] run summon villager ^ ^ ^-1 {Invulnerable:1,Silent:1,NoAI:1,Offers:{},ActiveEffects:[{Id:14,Duration:999999999,Amplifier:0,ShowParticles:0b}],Tags:["clicktest","clickspawn"]}
execute if entity @e[tag=clickspawn] positioned ^ ^ ^-1 store result score @e[tag=clickspawn,sort=nearest,limit=1] UUID0 run data get entity @s UUID[0]
execute at @e[tag=clickowner] facing entity @s eyes facing ^ ^ ^-1 run teleport @e[tag=clickowner,sort=nearest,limit=1] ~ ~ ~ ~ 0
tag @e[tag=clickowner] remove clickowner
tag @e[tag=clickspawn] remove clickspawn

# So much bullshit here, the end goal is to find the difference between the villager's location last tick and its location in the current tick
# Then to translate it further in that direction
# This vastly improves detection while moving; performance impact right now is unknown

summon area_effect_cloud ^ ^ ^1 {Tags:["newpos"]}
execute store result score @s PosX0 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=newpos,sort=nearest,limit=1] Pos[0] 100
execute store result score @s PosY0 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=newpos,sort=nearest,limit=1] Pos[1] 100
execute store result score @s PosZ0 anchored eyes positioned ^ ^ ^1 run data get entity @e[tag=newpos,sort=nearest,limit=1] Pos[2] 100
kill @e[tag=newpos]

scoreboard players operation @s Motion0 = @s PosX0
scoreboard players operation @s Motion1 = @s PosY0
scoreboard players operation @s Motion2 = @s PosZ0
scoreboard players operation @s Motion0 -= @s PosX1
scoreboard players operation @s Motion1 -= @s PosY1
scoreboard players operation @s Motion2 -= @s PosZ1

scoreboard players operation @s Motion0 *= @s WandCalibration
scoreboard players operation @s Motion1 *= @s WandCalibration
scoreboard players operation @s Motion2 *= @s WandCalibration

execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result score @s Motion0 run data get entity @s Pos[0] 100
execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result score @s Motion1 run data get entity @s Pos[1] 100
execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result score @s Motion2 run data get entity @s Pos[2] 100
execute anchored eyes positioned ^ ^ ^1 run scoreboard players operation @e[tag=clicktest,sort=nearest,limit=1] Motion0 += @s Motion0
execute anchored eyes positioned ^ ^ ^1 run scoreboard players operation @e[tag=clicktest,sort=nearest,limit=1] Motion1 += @s Motion1
execute anchored eyes positioned ^ ^ ^1 run scoreboard players operation @e[tag=clicktest,sort=nearest,limit=1] Motion2 += @s Motion2
execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players get @s Motion0
execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result entity @s Pos[1] double 0.01 run scoreboard players get @s Motion1
execute anchored eyes positioned ^ ^ ^1 as @e[tag=clicktest,sort=nearest,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players get @s Motion2

execute if entity @s[nbt={SelectedItem:{tag:{WandSpell:"calibration"}}}] at @e[tag=clicktest] if score @e[tag=clicktest,sort=nearest,limit=1] UUID0 = @s UUID0 run data modify entity @e[tag=clicktest,sort=nearest,limit=1] ActiveEffects[{Id:14b}].Duration set value 0
# would like to just "/data merge" but that leads to issues with it not updating on the client side
execute if entity @s[nbt=!{SelectedItem:{tag:{WandSpell:"calibration"}}}] at @e[tag=clicktest] if score @e[tag=clicktest,sort=nearest,limit=1] UUID0 = @s UUID0 unless data entity @e[tag=clicktest,sort=nearest,limit=1] ActiveEffects[{Id:14b}] run effect give @e[tag=clicktest,sort=nearest,limit=1] invisibility 999999 0 true

scoreboard players operation @s PosX1 = @s PosX0
scoreboard players operation @s PosY1 = @s PosY0
scoreboard players operation @s PosZ1 = @s PosZ0