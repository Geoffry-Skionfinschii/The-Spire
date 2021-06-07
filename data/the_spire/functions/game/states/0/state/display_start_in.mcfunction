

scoreboard players operation #time_until_start G_Temporary = $GameBeginTimer G_Timers
scoreboard players operation #time_until_start G_Temporary /= #20 G_Constants

title @a actionbar [{"text":"Game begins in "},{"score":{"name": "#time_until_start","objective": "G_Temporary"}},{"text":"s"}]