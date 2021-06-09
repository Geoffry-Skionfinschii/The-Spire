

# Locate center of map and place a marker
# Set worldborder with radius of 1000 (tbd) - Don't do this for now, we may use structure blocks to build a 'mountain' range along the edge
# Generate 1 cabin - <50 blocks of center
# Generate 3 repair sites - >100 blocks of center
# Generate 8 minor buildings - >100 blocks of center, >50 blocks other structures
# Generate 4 traitor airdops - within 40 blocks of cabin, repair or minor
execute if score $WorldGenStep G_Timers matches 1 run function the_spire_worldgen:generate_world/world/find_spawn

execute if score $WorldGenStep G_Timers matches 5 run function the_spire_worldgen:generate_world/essentials/generate

execute if score $WorldGenStep G_Timers matches 9 positioned as @e[type=marker,tag=BLD_CABIN,limit=1] run tp @a ~ ~ ~







scoreboard players add $WorldGenStep G_Timers 1
execute if score $WorldGenStep G_Timers matches 200.. run scoreboard players set $game_state G_StatusReg 2


