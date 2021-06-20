tellraw @a "Generating world for the first time..."
tag @s add SPAWN_MODERATOR

function the_spire_worldgen:generate_spawn




scoreboard players set $world_loaded G_StatusReg 1
scoreboard players set $game_state G_StatusReg -1
scoreboard players set $world_x_offset G_StatusReg 5000


scoreboard players set $assassin_count G_Settings 1
scoreboard players set $airdrops_enabled G_Settings 1
scoreboard players set $ghost_abilities_enabled G_Settings 1
scoreboard players set $points_to_win G_Settings 10
scoreboard players set $game_time G_Settings 54000