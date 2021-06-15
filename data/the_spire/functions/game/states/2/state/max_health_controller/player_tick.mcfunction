execute unless score @s G_PlayerHP matches -2147483648..2147483647 run scoreboard players set @s G_PlayerHP 2000
execute unless score @s G_PlayerMaxHP matches -2147483648..2147483647 run scoreboard players set @s G_PlayerMaxHP 2000

execute if score @s G_PlayerHP > @s G_PlayerMaxHP run scoreboard players operation @s G_PlayerHP = @s G_PlayerMaxHP

# Detect if players ingame health has changed in the negative direction since the previous tick.
# This will be applied to the stored PlayerHP.
function the_spire:game/states/2/state/max_health_controller/detect_outside_damage

scoreboard players set #did_run_unequal G_Temporary 0

scoreboard players operation #hp_in_hearts G_Temporary = @s G_PlayerHP
# Force round up
scoreboard players operation #hp_in_hearts G_Temporary += #99 G_Constants
scoreboard players operation #hp_in_hearts G_Temporary /= #100 G_Constants

execute unless score @s mc_PlayerHP = #hp_in_hearts G_Temporary store result score #did_run_unequal G_Temporary run function the_spire:game/states/2/state/max_health_controller/set_current_hp
execute unless score #did_run_unequal G_Temporary matches 1.. run function the_spire:game/states/2/state/max_health_controller/set_max_hp



# Copy current mc health into the 'prev' scoreboard
scoreboard players operation @s mc_PlayerPrevHP = @s mc_PlayerHP