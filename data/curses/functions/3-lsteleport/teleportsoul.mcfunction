# Don't want the soul getting a free hit in after it teleports on top of a player
# So, we pause its AI for a second
data merge entity @s {NoAI:1}
execute at @s run teleport @s @p[distance=..32,gamemode=!creative,gamemode=!spectator]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1
scoreboard players reset @s cursetimer