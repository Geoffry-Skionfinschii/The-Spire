tellraw @a "Generating world for the first time..."
tag @s add SPAWN_MODERATOR

function the_spire_worldgen:generate_spawn




scoreboard players set $world_loaded G_StatusReg 1
scoreboard players set $game_state G_StatusReg 0
scoreboard players set $world_x_offset G_StatusReg 5000


scoreboard players set $infected_count G_Settings 1
scoreboard players set $infected_gear G_Settings 1
scoreboard players set $infected_gear_scale G_Settings 10
scoreboard players set $hold_time G_Settings 6000
scoreboard players set $game_time G_Settings 144000