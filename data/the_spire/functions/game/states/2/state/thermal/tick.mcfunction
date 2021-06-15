
execute if score $TH_VeryFreezingTick G_Timers matches 10.. run scoreboard players set $TH_VeryFreezingTick G_Timers 0
execute if score $TH_FreezingTick G_Timers matches 0.. run scoreboard players set $TH_VeryFreezingTick G_Timers 0
execute if score $TH_WarmthRegenTick G_Timers matches 20.. run scoreboard players set $TH_WarmthRegenTick G_Timers 0

execute if score $RecalculateAmbientTemperature G_Timers matches 20.. run function the_spire:game/states/2/state/thermal/update_ambient_temperatures


execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/thermal/update_player






scoreboard players add $RecalculateAmbientTemperature G_Timers 1
scoreboard players add $TH_VeryFreezingTick G_Timers 1
scoreboard players add $TH_FreezingTick G_Timers 1
scoreboard players add $TH_WarmthRegenTick G_Timers 1