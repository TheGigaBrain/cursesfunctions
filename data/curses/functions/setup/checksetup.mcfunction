scoreboard objectives add SetupState dummy
execute store result score #SetupState SetupState run scoreboard players get #SetupState SetupState
execute unless score #SetupState SetupState matches 1.. run function curses:setup/setup