

execute if score #assassin_select_loop G_Temporary matches 1.. unless entity @r[tag=!ASSASSIN] run tellraw @a {"text":"Error: Could not find a player to set as Assassin","color":"red"}
execute if score #assassin_select_loop G_Temporary matches 1.. run execute as @r[tag=!ASSASSIN] run function the_spire:game/states/2/state/select_assassins/operate_selection

scoreboard players remove #assassin_select_loop G_Temporary 1

execute if score #assassin_select_loop G_Temporary matches 1.. run function the_spire:game/states/2/state/select_assassins/select_loop