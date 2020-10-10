execute at @a if score @p UUID0 = @s Motion1 unless data entity @p {SelectedItem:{tag:{WandSpell:"gravity"}}} run kill @s

#execute at @a if score @p UUID0 = @s Motion0 positioned as @s run teleport @s ~ ~ ~ ~ ~
execute at @a if score @p UUID0 = @s Motion0 run teleport @p @s

execute if data entity @s {OnGround:1b} run kill @s