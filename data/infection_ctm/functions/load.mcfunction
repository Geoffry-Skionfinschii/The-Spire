tellraw @a "Loaded infection_ctm"

# Create all scoreboards
# Status Register - Any global values that must be tracked to maintain world/game state
scoreboard objectives add INF_StatusReg dummy
# Temporary operations - This scoreboard should be assumed to be wiped each tick
scoreboard objectives add INF_Temporary dummy
# Constant values - This scoreboard is setup on load, and should never be written to (read only)
scoreboard objectives add INF_Constants dummy
# Timer values - These are all timers, make sure to check for duplicates.
scoreboard objectives add INF_Timers dummy

execute unless score $world_loaded INF_StatusReg matches -2147483648..2147483647 run function infection_ctm:init_world
