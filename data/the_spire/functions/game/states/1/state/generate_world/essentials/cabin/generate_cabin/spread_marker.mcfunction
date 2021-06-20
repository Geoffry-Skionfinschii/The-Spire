

execute at @e[type=marker,tag=W_WORLDSPAWN] run spreadplayers ~ ~ 0.0 20.0 false @s


scoreboard players set #is_marker_safe G_Temporary 1
#execute at @e[type=marker,tag=W_WORLDSPAWN] unless entity @s[distance=..50] run scoreboard players set #is_marker_safe G_Temporary 1