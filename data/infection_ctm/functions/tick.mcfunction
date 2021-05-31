

execute unless score $world_loaded INF_StatusReg matches -2147483648..2147483647 run title @a actionbar {"text":"Run /function infection_ctm:init_world","color":"green"}

function infection_ctm:game/states/gamestate_tick