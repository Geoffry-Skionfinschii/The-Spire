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
scoreboard players set #11999 G_Constants 11999
scoreboard players set #10000 G_Constants 10000
scoreboard players set #9999 G_Constants 9999
scoreboard players set #120 G_Constants 120
scoreboard players set #100 G_Constants 100
scoreboard players set #99 G_Constants 99
scoreboard players set #80 G_Constants 80
scoreboard players set #2 G_Constants 2
scoreboard players set #5 G_Constants 5
scoreboard players set #20 G_Constants 20
scoreboard players set #2^16 G_Constants 65536
scoreboard players set #2^8 G_Constants 256
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

# Player ID - Used to display player names for voting and various aspects of the game
scoreboard objectives add G_PlayerId dummy "PlayerID"
scoreboard players set $CurrentId G_PlayerId 0

# Evicted Votes - A trigger objective players can use, tracks currently selected PlayerId for each person
scoreboard objectives add G_EvictedVote trigger "EvictedIDS"
# Previous vote - Used so we know when a player changed vote
scoreboard objectives add G_PreEvictedVote dummy "Previous Vote"

# Dead body dragging scoreboard
# Stores a reference to the entity being dragged & the player who is dragging
scoreboard objectives add G_DraggingBodyId dummy "Drag Ids"

# Tracks campfire life and extinguishes them after a time
scoreboard objectives add G_CampfireExpiry dummy "Marker campfire expiry"

# Player clicked lectern inside cabin
scoreboard objectives add mc_LecternUsed minecraft.custom:interact_with_lectern "Lectern uses"
# Current player food
scoreboard objectives add mc_PlayerFood food "Minecraft Player Food"
# Eaten tropical fish - (food reskinned as cooked beef)
scoreboard objectives add mc_EatenFood minecraft.used:tropical_fish "Basic Food"
# Current in game player HP. read only.
scoreboard objectives add mc_PlayerHP health "Minecraft Player HP"
# In game player HP, previous tick.
scoreboard objectives add mc_PlayerPrevHP dummy "Minecraft Player HP"
# Death counter for detecting deaths
scoreboard objectives add mc_Deaths minecraft.custom:deaths "Deaths"

scoreboard objectives add G_DebugInfo dummy "For all debug values"

# A scoreboard that tracks players that actually exist in the current game. Any players not in this list
# should be modified by the current gamestate as seen fit.
# This scoreboard should have all values reset at 2-begin
# 0 - Do Nothing
# 1 - Do Nothing
# 2B- Reset Scoreboard, Reset Tags
# 2 - Reset Tags, Add to SURVIVOR, GHOST
scoreboard objectives add G_ValidPlayers dummy


bossbar add the_spire:time_remaining "Time until the Storm"
bossbar set the_spire:time_remaining color blue
bossbar set the_spire:time_remaining style notched_10



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
execute unless score $debug G_StatusReg matches 1 run gamerule sendCommandFeedback false
execute if score $debug G_StatusReg matches 1 run gamerule sendCommandFeedback true


execute if score $debug G_StatusReg matches 1 run tellraw @a "This game is running in DEBUG mode"
execute if score $debug G_StatusReg matches 1 run tellraw @a {"text":"Click here to disable","clickEvent": {"action": "run_command","value": "/function the_spire:disable_debug"}}



# Essential Tags
#define tag W_WORLDSPAWN Worldspawn marker
#define tag W_BUILDING A building - should be placed at the center of any structure

#define tag BLD_CABIN Cabin building
#define tag BLD_OBJ Objective building
#define tag BLD_MISC Miscellaneous building

# extra tags should be defined as needed per structure

