scoreboard players operation #hpmax_in_hearts G_Temporary = @s G_PlayerMaxHP
# Force round up
scoreboard players operation #hpmax_in_hearts G_Temporary += #99 G_Constants
scoreboard players operation #hpmax_in_hearts G_Temporary /= #100 G_Constants

#tellraw @a "Ran MaxHP"

execute if score #hpmax_in_hearts G_Temporary matches 1 run attribute @s generic.max_health base set 1
execute if score #hpmax_in_hearts G_Temporary matches 2 run attribute @s generic.max_health base set 2
execute if score #hpmax_in_hearts G_Temporary matches 3 run attribute @s generic.max_health base set 3
execute if score #hpmax_in_hearts G_Temporary matches 4 run attribute @s generic.max_health base set 4
execute if score #hpmax_in_hearts G_Temporary matches 5 run attribute @s generic.max_health base set 5
execute if score #hpmax_in_hearts G_Temporary matches 6 run attribute @s generic.max_health base set 6
execute if score #hpmax_in_hearts G_Temporary matches 7 run attribute @s generic.max_health base set 7
execute if score #hpmax_in_hearts G_Temporary matches 8 run attribute @s generic.max_health base set 8
execute if score #hpmax_in_hearts G_Temporary matches 9 run attribute @s generic.max_health base set 9
execute if score #hpmax_in_hearts G_Temporary matches 10 run attribute @s generic.max_health base set 10
execute if score #hpmax_in_hearts G_Temporary matches 11 run attribute @s generic.max_health base set 11
execute if score #hpmax_in_hearts G_Temporary matches 12 run attribute @s generic.max_health base set 12
execute if score #hpmax_in_hearts G_Temporary matches 13 run attribute @s generic.max_health base set 13
execute if score #hpmax_in_hearts G_Temporary matches 14 run attribute @s generic.max_health base set 14
execute if score #hpmax_in_hearts G_Temporary matches 15 run attribute @s generic.max_health base set 15
execute if score #hpmax_in_hearts G_Temporary matches 16 run attribute @s generic.max_health base set 16
execute if score #hpmax_in_hearts G_Temporary matches 17 run attribute @s generic.max_health base set 17
execute if score #hpmax_in_hearts G_Temporary matches 18 run attribute @s generic.max_health base set 18
execute if score #hpmax_in_hearts G_Temporary matches 19 run attribute @s generic.max_health base set 19
execute if score #hpmax_in_hearts G_Temporary matches 20 run attribute @s generic.max_health base set 20