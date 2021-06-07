


data modify entity @s AngerTime set value 10
data modify entity @s AngryAt set from entity @p UUID

#execute unless entity @s[tag=WOLF_MODDED] run attribute @s generic.movement_speed modifier add 77039453-61f3-4c86-88a6-4b8387984284 "wolf_speed" 1.5 multiply
execute unless entity @s[tag=WOLF_MODDED] run attribute @s generic.movement_speed base set 0.5
execute unless entity @s[tag=WOLF_MODDED] run attribute @s generic.follow_range modifier add e50e3c42-bdd8-45ff-ba56-3459bbf7dd21 "wolf_follow" 10 add

tag @s add WOLF_MODDED