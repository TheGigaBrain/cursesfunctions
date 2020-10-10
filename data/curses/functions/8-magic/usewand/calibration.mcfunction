playsound ui.button.click master @s ~ ~ ~ 1 1

scoreboard players add @s[predicate=!curses:sneaking] WandCalibration 1
scoreboard players remove @s[predicate=curses:sneaking] WandCalibration 1
scoreboard players set @s[scores={WandCalibration=..-1}] WandCalibration 15
scoreboard players set @s[scores={WandCalibration=16..}] WandCalibration 0