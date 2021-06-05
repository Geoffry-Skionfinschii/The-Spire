tellraw @a "Loaded the_spire"

# Create all scoreboards
# Status Register - Any global values that must be tracked to maintain world/game state
scoreboard objectives add G_StatusReg dummy
# Temporary operations - This scoreboard should be assumed to be wiped each tick
scoreboard objectives add G_Temporary dummy
# Constant values - This scoreboard is setup on load, and should never be written to (read only)
scoreboard objectives add G_Constants dummy
scoreboard players set #30min G_Constants 36000
scoreboard players set #15min G_Constants 18000
scoreboard players set #1min G_Constants 1200
scoreboard players set #30sec G_Constants 600
scoreboard players set #2 G_Constants 2
scoreboard players set #5 G_Constants 5
scoreboard players set #20 G_Constants 20
# Timer values - These are all timers, make sure to check for duplicates.
scoreboard objectives add G_Timers dummy
# Game settings - All game settings, these should not change during a game, only during Game State 0
scoreboard objectives add G_Settings dummy

#declare score_holder $airdrops_enabled G_Settings - Are airdrops enabled (traitor req, normal)
#declare score_holder $assassin_count G_Settings - Number of assassins
#declare score_holder $game_time G_Settings - how long until innocents lose
#declare score_holder $ghost_abilities_enabled G_Settings - can ghosts use abilities
#declare score_holder $points_to_win G_Settings - How many points to win (generally 1p/s)


# A scoreboard that tracks players that actually exist in the current game. Any players not in this list
# should be modified by the current gamestate as seen fit.
# This scoreboard should have all values reset at 2-begin
# 0 - Do Nothing
# 1 - Do Nothing
# 2B- Reset Scoreboard, Reset Tags
# 2 - Reset Tags, Add to SURVIVOR, GHOST
scoreboard objectives add G_ValidPlayers dummy

