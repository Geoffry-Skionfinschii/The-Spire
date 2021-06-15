scoreboard players operation #temp_prog G_Temporary = @s G_Temperature
scoreboard players operation #temp_prog G_Temporary *= #80 G_Constants
scoreboard players operation #temp_prog G_Temporary /= #12000 G_Constants

scoreboard players operation #food_prog G_Temporary = @s G_PlayerFood
scoreboard players operation #food_prog G_Temporary *= #80 G_Constants
scoreboard players operation #food_prog G_Temporary /= #10000 G_Constants

execute if score @s G_AmbTemperature matches 1..10 run scoreboard players set #temp_change_dir G_Temporary 4
execute if score @s G_AmbTemperature matches 11..20 run scoreboard players set #temp_change_dir G_Temporary 5
execute if score @s G_AmbTemperature matches 21.. run scoreboard players set #temp_change_dir G_Temporary 6
execute if score @s G_AmbTemperature matches 0 run scoreboard players set #temp_change_dir G_Temporary 3
execute if score @s G_AmbTemperature matches -10..-1 run scoreboard players set #temp_change_dir G_Temporary 2
execute if score @s G_AmbTemperature matches -20..-11 run scoreboard players set #temp_change_dir G_Temporary 1
execute if score @s G_AmbTemperature matches ..-21 run scoreboard players set #temp_change_dir G_Temporary 0

scoreboard players operation #temp_change_dir G_Temporary *= #2^16 G_Constants
scoreboard players operation #food_prog G_Temporary *= #2^8 G_Constants

scoreboard players operation #actionbar_data G_Temporary = #temp_prog G_Temporary
scoreboard players operation #actionbar_data G_Temporary += #food_prog G_Temporary
scoreboard players operation #actionbar_data G_Temporary += #temp_change_dir G_Temporary

#tellraw @a {"score": {"name": "#actionbar_data", "objective": "G_Temporary"}}

# Calculate the #actionbar_data

# temp_change << 16 + food_value << 8 + temp_value
#let tempIncreaseShifted = temperate_increase_amnt << 16;
#            let foodShifted = food_value << 8;
#            let tempShifted = temperature_value;

 #           let index_value = tempIncreaseShifted + foodShifted + tempShifted;

execute unless score $RenderPlayerBar G_Timers matches -2147483648..2147483647 run scoreboard players set $RenderPlayerBar G_Timers 0
execute if score $RenderPlayerBar G_Timers matches 0 run function the_spire:game/states/2/state/actionbar/renderer/execute_tree

scoreboard players add $RenderPlayerBar G_Timers 1
execute if score $RenderPlayerBar G_Timers matches 5.. run scoreboard players set $RenderPlayerBar G_Timers 0

