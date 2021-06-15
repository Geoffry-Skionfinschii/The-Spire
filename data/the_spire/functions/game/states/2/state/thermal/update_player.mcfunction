

scoreboard players operation #temp_calc G_Temporary = @s G_AmbTemperature
#scoreboard players operation #temp_calc G_Temporary -= @s G_Temperature

execute if score #temp_calc G_Temporary matches ..-1 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-11 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-21 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-31 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-41 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-51 run scoreboard players remove @s G_Temperature 1


execute if score #temp_calc G_Temporary matches 1.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 11.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 21.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 31.. run scoreboard players add @s G_Temperature 2
execute if score #temp_calc G_Temporary matches 41.. run scoreboard players add @s G_Temperature 2
execute if score #temp_calc G_Temporary matches 51.. run scoreboard players add @s G_Temperature 2
execute if score #temp_calc G_Temporary matches 101.. run scoreboard players add @s G_Temperature 10




execute if score @s G_Temperature matches 12001.. run scoreboard players set @s G_Temperature 12000
execute if score @s G_Temperature matches ..-1 run scoreboard players set @s G_Temperature 0

# Reduce max health

execute if score @s G_Temperature matches ..4000 run effect give @s wither 1 0 true
execute if score @s G_Temperature matches 1001..4000 if score $TH_FreezingTick G_Timers matches 0 run scoreboard players remove @s G_PlayerMaxHP 1
execute if score @s G_Temperature matches 0..1000 if score $TH_VeryFreezingTick G_Timers matches 0 run scoreboard players remove @s G_PlayerMaxHP 1


# Increase max health if warm
execute if score @s G_Temperature matches 11999.. run effect give @s regeneration 1 0 true
execute if score @s G_Temperature matches 11999.. if score $TH_WarmthRegenTick G_Timers matches 0 if score @s G_PlayerMaxHP matches ..1600 run scoreboard players add @s G_PlayerMaxHP 10
execute if score @s G_Temperature matches 11999.. if score $TH_WarmthRegenTick G_Timers matches 0 if score @s G_PlayerMaxHP matches ..1600 run scoreboard players add @s G_PlayerHP 10