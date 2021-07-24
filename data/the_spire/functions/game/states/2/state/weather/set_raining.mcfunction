# Takes the value from #weather_rain_time G_Temporary and sets raining for that long.
# IF #weather_rain_time is not set, throw an error

execute unless score #weather_rain_time G_Temporary matches -2147483648..2147483647 run tellraw @a "Error in weather script - No time set"

scoreboard players operation $raining_time_left G_StatusReg = #weather_rain_time G_Temporary

weather rain

# Reset the objective
scoreboard players reset #weather_rain_time G_Temporary