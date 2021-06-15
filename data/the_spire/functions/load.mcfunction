tellraw @a "Loaded the_spire"

#declare tag GHOST GHOSTS are dead players
#declare tag ASSASSIN The bad team
#declare tag SURVIVOR The good team

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
scoreboard players set #12000 G_Constants 12000
scoreboard players set #120 G_Constants 120
scoreboard players set #100 G_Constants 100
scoreboard players set #99 G_Constants 99
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

# Track player temperature
# See the thermal module in game state 2
# The players current temperature
scoreboard objectives add G_Temperature dummy "Player Internal Temp"
# The current local temperature - the players temperature will approach this.
# This is updated every few ticks
scoreboard objectives add G_AmbTemperature dummy "Player Ambient Temp"

# Player current max health x 100 - this value will depend on current temperature, but does not go up naturally
scoreboard objectives add G_PlayerMaxHP dummy "Player Health"

# Player current health x 100 - This value will be used instead of normal player health.
scoreboard objectives add G_PlayerHP dummy "Player HP"

# Player food score - goes from 10000 -> 0 over time. Eating food ups this.
scoreboard objectives add G_PlayerFood dummy "Player Hunger"

# Current player food
scoreboard objectives add mc_PlayerFood food "Minecraft Player Food"
# Eaten tropical fish - (food reskinned as cooked beef)
scoreboard objectives add mc_EatenFood minecraft.used:tropical_fish "Basic Food"
# Current in game player HP. read only.
scoreboard objectives add mc_PlayerHP health "Minecraft Player HP"
# In game player HP, previous tick.
scoreboard objectives add mc_PlayerPrevHP dummy "Minecraft Player HP"

# A scoreboard that tracks players that actually exist in the current game. Any players not in this list
# should be modified by the current gamestate as seen fit.
# This scoreboard should have all values reset at 2-begin
# 0 - Do Nothing
# 1 - Do Nothing
# 2B- Reset Scoreboard, Reset Tags
# 2 - Reset Tags, Add to SURVIVOR, GHOST
scoreboard objectives add G_ValidPlayers dummy




# Teams - Team Radio Channels
team add Radio_RED "Red Channel"
team modify Radio_RED color white
team add Radio_BLUE "Blue Channel"
team modify Radio_BLUE color white
team add Radio_GREEN "Green Channel"
team modify Radio_GREEN color white


# Gamerules
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule disableRaids true
gamerule doDaylightCycle false
time set noon
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule spawnRadius 0
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule doLimitedCrafting true



# Essential Tags
#define tag W_WORLDSPAWN Worldspawn marker
#define tag W_BUILDING A building - should be placed at the center of any structure

#define tag BLD_CABIN Cabin building
#define tag BLD_OBJ Objective building
#define tag BLD_MISC Miscellaneous building

# extra tags should be defined as needed per structure

