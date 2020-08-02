execute as @a[tag=deadplayer,gamemode=!creative,gamemode=!spectator] at @s if predicate curses:1-4_chance run execute as @e[tag=lostsoul,distance=..32,sort=nearest,limit=1] run function curses:7-souldeparture/departsoul
execute as @a[tag=deadplayer,gamemode=!creative,gamemode=!spectator] at @s run data merge entity @e[tag=lostsoul,sort=nearest,limit=1,distance=..32] {NoAI:1b}
execute as @a[tag=deadplayer] run tag @s remove deadplayer

execute as @e[tag=departedsoul] run data merge entity @s {Health:20.0f,NoAI:1}
execute as @e[tag=departedsoul] if entity @a[gamemode=!creative,gamemode=!spectator,team=!operator] run scoreboard players add #SoulReturnTimer cursetimer 1
execute if score #SoulReturnTimer cursetimer matches 18000.. if predicate curses:1-4_chance run execute as @e[tag=departedsoul,sort=random,limit=1] run function curses:7-souldeparture/returnsoul
execute if score #SoulReturnTimer cursetimer matches 18000.. run scoreboard players reset #SoulReturnTimer cursetimer