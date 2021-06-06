scoreboard players add #health_prog G_Temporary 1

execute if score #health_prog G_Temporary matches 100 run scoreboard players add #temp_prog G_Temporary 1
execute if score #health_prog G_Temporary matches 101.. run scoreboard players set #health_prog G_Temporary 0

execute if score #temp_prog G_Temporary matches 100 run scoreboard players add #food_prog G_Temporary 1
execute if score #temp_prog G_Temporary matches 101.. run scoreboard players set #temp_prog G_Temporary 0

execute if score #food_prog G_Temporary matches 101.. run scoreboard players set #food_prog G_Temporary 0


function the_spire:game/states/2/state/actionbar/renderer/render_actionbar

# Draw
#data modify storage the_spire:actionbar Text append value 
#title @s actionbar {"nbt":"Text","storage":"the_spire:actionbar","interpret": true}