

# Thermal Module Info
# Temperature is a player property that must be managed
# Temperature is effectively a timer that ticks down to zero
# At base speed, it should take 5 minutes for a player to start freezing
# Max value is 5 * 60 * 20 = 6000
# Min value is 0

# Temperature can increase/decrease at speeds 0, 1, 2 and 3.
# Temperature should be calculated per player using a sum of all sources.
# The 'temperature' of these sources should then decide what speed to decrease at.

# Generally: 
# World is -10C
# Water is -100C
# Ice is -50C
# Lava is +40C
# Camp fire is +20C
# When snowing(/raining) unless inside -20C
# During final blizzard -50C

# 

# World Temperature is -10C
scoreboard players set #area_temperature_calc G_Temporary -10

# Snowing and outside
# (If player is within a 'weathersafe' area, but not underneath a block)
execute if predicate the_spire:is_raining if entity @e[type=marker,tag=TM_WEATHERSAFE,distance=..30] if blocks ~ ~1 ~ ~ 250 ~ ~ ~3 ~ all run scoreboard players remove #area_temperature_calc G_Temporary 20
# (If a player is not within a 'weathersafe' area)
execute if predicate the_spire:is_raining unless entity @e[type=marker,tag=TM_WEATHERSAFE,distance=..30] run scoreboard players remove #area_temperature_calc G_Temporary 20

# Is the player in water or on ice?
execute if block ~ ~ ~ water run scoreboard players remove #area_temperature_calc G_Temporary 100
execute if block ~ ~-1 ~ ice run scoreboard players remove #area_temperature_calc G_Temporary 50
execute if block ~ ~-1 ~ air if block ~ ~-2 ~ ice run scoreboard players remove #area_temperature_calc G_Temporary 50

# Is there a campfire within 5 blocks
execute if predicate the_spire:is_campfire_nearby run scoreboard players add #area_temperature_calc G_Temporary 20

# Is there lava within an area
execute if predicate the_spire:is_lava_nearby run scoreboard players add #area_temperature_calc G_Temporary 40

# Are they on fire? - Add lava again
execute if predicate the_spire:is_burning run scoreboard players add #area_temperature_calc G_Temporary 40

scoreboard players operation @s G_AmbTemperature = #area_temperature_calc G_Temporary