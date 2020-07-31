# Visual effects
execute as @s[tag=!soulgear] at @s run data modify entity @s Motion[1] set value 0.25d
execute as @s[tag=soulgear] at @s run data merge entity @s {Motion:[0.0,0.75,0.0],Invulnerable:1}
execute as @s[tag=!soulgear,nbt={Item:{tag:{Cursed:1}}}] at @s run playsound minecraft:entity.experience_orb.pickup master @a[distance=..8] ~ ~ ~ 0.5
execute as @s[tag=!soulgear,nbt={Item:{tag:{Cursed:1}}}] at @s run particle minecraft:happy_villager ~ ~0.2 ~ 0.2 0.2 0.2 0 5 force @a
execute as @s[tag=!soulgear,nbt={Item:{tag:{Cursed:0}}}] at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..8] ~ ~ ~ 0.5 0.5
execute as @s[tag=!soulgear,nbt={Item:{tag:{Cursed:0}}}] at @s run particle minecraft:smoke ~ ~0.2 ~ 0.2 0.2 0.2 0 5 force @a
execute as @s[tag=soulgear] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..32] ~ ~ ~ 1 0.5
execute as @s[tag=soulgear] at @s run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 1 1
execute as @s[tag=soulgear] at @s run particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 force @a
#execute as @e[tag=superuncurse] at @s run summon minecraft:lightning_bolt ~ ~ ~
#execute as @e[tag=uncursed,nbt={Item:{tag:{PermanentlyCursed:1}}}] at @s run particle minecraft:happy_villager ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a

data merge entity @s {Item:{tag:{Cursed:0}}}
execute as @s[tag=!soulgear,tag=!fielduncurse] at @s run setblock ~ ~-1 ~ cobblestone replace
execute as @s[tag=soulgear,tag=!fielduncurse] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 cobblestone replace

tag @s add uncursed