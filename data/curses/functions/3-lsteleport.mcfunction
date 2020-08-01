execute as @e[tag=lostsoul,tag=!departedsoul] at @s if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s cursetimer 1
execute as @e[tag=lostsoul,scores={cursetimer=520}] at @s run playsound minecraft:block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.2
execute as @e[tag=lostsoul,scores={cursetimer=600..}] run function curses:3-lsteleport/teleportsoul
execute as @e[tag=lostsoul,scores={cursetimer=20}] at @s run data merge entity @s {NoAI:0}

#execute as @e[tag=lostsoul,scores={cursetimer=1}] run function curses:3-lsteleport/healsoul