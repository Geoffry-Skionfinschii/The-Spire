

execute unless score $world_loaded INF_StatusReg matches -2147483648..2147483647 run title @a actionbar {"text":"Run /function infection_ctm:init_world","color":"green"}

execute if score $world_loaded INF_StatusReg matches -2147483648..2147483647 run function the_spire:game/states/gamestate_tick