scoreboard players operation #temp_prog G_Temporary = @s G_Temperature
scoreboard players operation #temp_prog G_Temporary /= #120 G_Constants

execute if score @s G_AmbTemperature matches 1.. run scoreboard players set #temp_change_dir G_Temporary 1
execute if score @s G_AmbTemperature matches 0 run scoreboard players set #temp_change_dir G_Temporary 0
execute if score @s G_AmbTemperature matches ..-1 run scoreboard players set #temp_change_dir G_Temporary -1


execute unless score $RenderPlayerBar G_Timers matches -2147483648..2147483647 run scoreboard players set $RenderPlayerBar G_Timers 0
execute if score $RenderPlayerBar G_Timers matches 0 run function the_spire:game/states/2/state/actionbar/renderer/execute_tree

scoreboard players add $RenderPlayerBar G_Timers 1
execute if score $RenderPlayerBar G_Timers matches 5.. run scoreboard players set $RenderPlayerBar G_Timers 0

# Draw
#data modify storage the_spire:actionbar Text append value 
#title @s actionbar {"nbt":"Text","storage":"the_spire:actionbar","interpret": true}