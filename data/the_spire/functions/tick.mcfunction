

execute unless score $world_loaded G_StatusReg matches -2147483648..2147483647 run function the_spire:init_world

execute if score $world_loaded G_StatusReg matches -2147483648..2147483647 run function the_spire:game/states/gamestate_tick



kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]