

execute as @e[type=item,nbt={Item:{id:"minecraft:campfire",Count:1b}}] at @s run function the_spire:game/states/2/state/craftables/campfire/item_tick

execute as @e[type=marker,tag=MISC_CAMPFIRE] at @s run function the_spire:game/states/2/state/craftables/campfire/campfire_tick