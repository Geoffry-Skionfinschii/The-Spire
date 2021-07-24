

# Locate center of map and place a marker
# Set worldborder with radius of 1000 (tbd) - Don't do this for now, we may use structure blocks to build a 'mountain' range along the edge
# Generate 1 cabin - <50 blocks of center
# Generate 3 repair sites - >100 blocks of center
# Generate 8 minor buildings - >100 blocks of center, >50 blocks other structures
# Generate 4 traitor airdops - within 40 blocks of cabin, repair or minor
execute if score $debug G_StatusReg matches 1 if score $WorldGenStep G_Timers matches 1 run tellraw @a "Finding suitable spawn point..."
execute if score $WorldGenStep G_Timers matches 1 run function the_spire:game/states/1/state/generate_world/world/find_spawn

execute if score $debug G_StatusReg matches 1 if score $WorldGenStep G_Timers matches 2 run tellraw @a "Generating essential structures..."
execute if score $WorldGenStep G_Timers matches 2 run function the_spire:game/states/1/state/generate_world/essentials/generate

execute if score $debug G_StatusReg matches 1 if score $WorldGenStep G_Timers matches 3 run tellraw @a "Generating Misc Structures..."
execute if score $WorldGenStep G_Timers matches 3 run function the_spire:game/states/1/state/generate_world/misc/generate

execute if score $debug G_StatusReg matches 1 if score $WorldGenStep G_Timers matches 5 run tellraw @a "Moving players to cabin..."
execute if score $WorldGenStep G_Timers matches 5 positioned as @e[type=marker,tag=BLD_CABIN,limit=1] run tp @a ~ ~ ~







scoreboard players add $WorldGenStep G_Timers 1
execute if score $WorldGenStep G_Timers matches 6.. run scoreboard players set $game_state G_StatusReg 2


