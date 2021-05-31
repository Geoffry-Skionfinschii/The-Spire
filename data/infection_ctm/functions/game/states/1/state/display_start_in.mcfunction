

scoreboard players operation #time_until_start INF_Temporary = $GameBeginTimer INF_Timers
scoreboard players operation #time_until_start INF_Temporary /= #20 INF_Constants

title @a actionbar [{"text":"Game begins in "},{"score":{"name": "#time_until_start","objective": "INF_Temporary"}},{"text":"s"}]