tellraw @a "Loaded the_spire"

# Create all scoreboards
# Status Register - Any global values that must be tracked to maintain world/game state
scoreboard objectives add G_StatusReg dummy
# Temporary operations - This scoreboard should be assumed to be wiped each tick
scoreboard objectives add G_Temporary dummy
# Constant values - This scoreboard is setup on load, and should never be written to (read only)
scoreboard objectives add G_Constants dummy
scoreboard players set #30min G_Constants 36000
scoreboard players set #1min G_Constants 1200
scoreboard players set #2 G_Constants 2
scoreboard players set #5 G_Constants 5
scoreboard players set #20 G_Constants 20
# Timer values - These are all timers, make sure to check for duplicates.
scoreboard objectives add G_Timers dummy
# Game settings - All game settings, these should not change during a game, only during Game State 0
scoreboard objectives add G_Settings dummy


