scoreboard objectives add UUID0 dummy

scoreboard objectives add Motion0 dummy
scoreboard objectives add Motion1 dummy
scoreboard objectives add Motion2 dummy

scoreboard objectives add death deathCount
scoreboard objectives add killedbyplayer minecraft.killed_by:minecraft.player

scoreboard objectives add Health dummy

scoreboard objectives add mana dummy
scoreboard objectives add manadisplay dummy
scoreboard objectives add requiredmana dummy
scoreboard objectives add reqmanadisplay dummy
scoreboard objectives add talkedtovillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add recursionCount dummy

scoreboard objectives add virus dummy
scoreboard objectives add cursetimer dummy
scoreboard objectives add timerdivisor dummy
scoreboard objectives add soultimer dummy

team add operator
team add nocollision
team modify nocollision collisionRule never

execute in minecraft:overworld run forceload add -1 -1 0 0
execute in minecraft:overworld run fill 0 0 0 15 15 15 bedrock hollow
execute in minecraft:overworld run fill 1 1 1 3 1 3 lapis_block
execute in minecraft:overworld run fill 2 1 1 2 1 3 diamond_block
execute in minecraft:overworld run fill 1 1 2 3 1 2 diamond_block
execute in minecraft:overworld run setblock 2 1 2 gold_block

execute in minecraft:the_nether run forceload add -1 -1 0 0
execute in minecraft:the_nether run fill 0 0 0 15 15 15 bedrock hollow
execute in minecraft:the_nether run fill 1 1 1 3 1 3 lapis_block
execute in minecraft:the_nether run fill 2 1 1 2 1 3 diamond_block
execute in minecraft:the_nether run fill 1 1 2 3 1 2 diamond_block
execute in minecraft:the_nether run setblock 2 1 2 gold_block

execute in minecraft:the_end run forceload add -1 -1 0 0


tellraw @a {"text":"Curses & Wands setup complete!","color":"light_purple","bold":true}


execute unless score #SetupState SetupState matches 1.. run scoreboard players set #SetupState SetupState 1