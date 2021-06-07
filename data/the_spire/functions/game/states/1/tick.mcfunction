

# Locate center of map and place a marker
# Forceload all chunks within area
# Set worldborder with radius of 1000 (tbd)
# Generate 1 cabin - <50 blocks of center
# Generate 3 repair sites - >100 blocks of center
# Generate 8 minor buildings - >100 blocks of center, >50 blocks other structures
# Generate 4 traitor airdops - within 40 blocks of cabin, repair or minor









scoreboard players add $WorldGenStep G_Timers 1
execute if score $WorldGenStep G_Timers matches 10.. run scoreboard players set $game_state G_StatusReg 2


