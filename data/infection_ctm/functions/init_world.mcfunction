tellraw @a "Generating world for the first time..."
tag @s add SPAWN_MODERATOR

function infection_world_gen:generate_spawn




scoreboard players set $world_loaded INF_StatusReg 1
scoreboard players set $game_state INF_StatusReg 0


scoreboard players set $infected_count INF_Settings 1
scoreboard players set $infected_gear INF_Settings 1
scoreboard players set $infected_gear_scale INF_Settings 10
scoreboard players set $hold_time INF_Settings 6000
scoreboard players set $game_time INF_Settings 144000