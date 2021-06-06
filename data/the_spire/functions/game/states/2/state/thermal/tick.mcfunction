
scoreboard players add $RecalculateAmbientTemperature G_Timers 1

execute if score $RecalculateAmbientTemperature G_Timers matches 20.. run function the_spire:game/states/2/state/thermal/update_ambient_temperatures


execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/thermal/update_player