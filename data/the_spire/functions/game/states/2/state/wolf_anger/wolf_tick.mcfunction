


execute if entity @a[distance=..20] at @p unless block ~ ~1 ~ cave_air run data modify entity @s AngerTime set value 5
execute if entity @a[distance=..20] at @p unless block ~ ~1 ~ cave_air run data modify entity @s AngryAt set from entity @p UUID

#execute unless entity @s[tag=WOLF_MODDED] run attribute @s generic.movement_speed modifier add 77039453-61f3-4c86-88a6-4b8387984284 "wolf_speed" 1.5 multiply
execute unless entity @s[tag=WOLF_MODDED] run function the_spire:game/states/2/state/wolf_anger/wolf_mod