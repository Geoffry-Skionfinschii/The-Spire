

scoreboard players set $RecalculateAmbientTemperature G_Timers 0


execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/thermal/update_ambient_temp_player