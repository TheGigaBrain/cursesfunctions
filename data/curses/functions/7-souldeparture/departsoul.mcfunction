execute at @s run tellraw @a[distance=..64] {"text":"\u00A78\u00A7lThe \u00A75\u00A7llost soul\u00A78\u00A7l has departed... for now."}
scoreboard players reset @s cursetimer
execute in minecraft:overworld run teleport @s 0 -48 0
data merge entity @s {Health:20.0f,NoAI:1}
tag @s add departedsoul