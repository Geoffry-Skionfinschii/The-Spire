

scoreboard players operation #temp_calc G_Temporary = @s G_AmbTemperature
#scoreboard players operation #temp_calc G_Temporary -= @s G_Temperature

execute if score #temp_calc G_Temporary matches ..-1 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-11 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-21 run scoreboard players remove @s G_Temperature 1
execute if score #temp_calc G_Temporary matches ..-31 run scoreboard players remove @s G_Temperature 1


execute if score #temp_calc G_Temporary matches 1.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 11.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 21.. run scoreboard players add @s G_Temperature 1
execute if score #temp_calc G_Temporary matches 31.. run scoreboard players add @s G_Temperature 1




execute if score @s G_Temperature matches 12001.. run scoreboard players set @s G_Temperature 12000
execute if score @s G_Temperature matches ..-1 run scoreboard players set @s G_Temperature 0