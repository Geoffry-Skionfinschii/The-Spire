

# Just spawn related things - timers, current block color etc
scoreboard objectives add SPWN_SpawnStuff dummy

# Spawn temporary table
scoreboard objectives add SPWN_Temporary dummy

# Detect sign clicks
# 0 - no click
# 1 - number of infected
# 2 - gear scaling
# 3 - gear scale rate
# 4 - hold time
# 5 - start game
# 6 - game time
# 
# 
scoreboard objectives add SPWN_ClickSign trigger

scoreboard players set $Glass SPWN_SpawnStuff 0