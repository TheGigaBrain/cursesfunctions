# Time in ticks between each projectile
scoreboard players set @s timerdivisor 100

scoreboard players operation @s soultimer = @s cursetimer
scoreboard players operation @s soultimer %= @s timerdivisor

# Instead of directly targeting the player, summon an entity at their position 3 ticks before firing, and target that
# Makes the shot a bit easier to dodge by strafing
execute as @s[scores={soultimer=57}] at @s run execute at @e[type=#curses:combatants,distance=..32,sort=nearest,limit=1,gamemode=!creative,gamemode=!spectator] anchored feet positioned ~ ~-1 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Tags:["soultarget"]}

# The projectiles to be used
# We check for a player to prevent entity spam in certain edge cases
execute as @s[scores={soultimer=60}] at @s if entity @e[type=#curses:combatants,distance=..32,gamemode=!creative,gamemode=!spectator] facing entity @e[tag=soultarget,sort=nearest,limit=1] feet rotated ~ 0 run summon minecraft:arrow ^ ^1.5 ^0.5 {damage:4,pickup:0,crit:1,Fire:1200,CustomPotionEffects:[{Id:20,Amplifier:0,Duration:200}],Tags:["soulcannon"],SoundEvent:"minecraft:entity.generic.explode"}
execute as @s[scores={soultimer=60}] at @s if entity @e[type=#curses:combatants,distance=..32,gamemode=!creative,gamemode=!spectator] facing entity @e[tag=soultarget,sort=nearest,limit=1] feet rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^1.5 ^0.5 {Duration:200,WaitTime:20,DurationOnUse:0,RadiusOnUse:0,RadiusPerTick:0,Radius:4,Particle:"minecraft:dust 0.25 0 0.25 1.5",Effects:[{Id:20,Amplifier:4,Duration:10,ShowParticles:0}],Tags:["movingsoulfield","soulfield"]}

# Separate the slowness effect of the area effect cloud so we can avoid applying it to the lost soul
#execute as @e[tag=!lostsoul] at @s if entity @e[tag=soulfield,distance=..4] run attribute @s minecraft:generic.movement_speed modifier add c62deefe-a070-499f-9e3e-8cfb7065456d SoulField -0.25 multiply
#execute as @e[tag=!lostsoul] at @s unless entity @e[tag=soulfield,distance=..4] run attribute @s minecraft:generic.movement_speed modifier remove c62deefe-a070-499f-9e3e-8cfb7065456d

execute as @s[scores={soultimer=60}] at @s if entity @e[type=#curses:combatants,distance=..32,gamemode=!creative,gamemode=!spectator] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2

# YOTTABRAIN MOMENTS
# We summon a placeholder entity rotationally relative to the world origin
# And then we use its positional value as a movement vector
# Thank you to the random dude on Reddit who posted about this a year ago
execute as @s[scores={soultimer=60}] at @s facing entity @e[tag=soultarget,sort=nearest,limit=1] feet positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["soulvector"]}
execute as @s[scores={soultimer=60}] at @s run data modify entity @e[tag=soulcannon,sort=nearest,limit=1] Motion set from entity @e[tag=soulvector,sort=arbitrary,limit=1] Pos

# Set owner UUIDs so death messages report the Lost Soul as the killer
execute as @s[scores={soultimer=60}] at @s run data modify entity @e[tag=soulcannon,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @s[scores={soultimer=60}] at @s run data modify entity @e[tag=movingsoulfield,sort=nearest,limit=1] Owner set from entity @s UUID