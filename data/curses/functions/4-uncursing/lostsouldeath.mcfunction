# Handle the lost soul's death
execute at @s if entity @a[distance=..64,gamemode=!creative,gamemode=!spectator] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["uncursefield"]}
execute at @s run tellraw @a[distance=..64,gamemode=!creative,gamemode=!spectator] {"text":"\u00A7a\u00A7lA \u00A75\u00A7llost soul\u00A7a\u00A7l has been slain!"}
execute at @s run playsound entity.wither.death master @a[distance=..64,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 10 1
kill @s