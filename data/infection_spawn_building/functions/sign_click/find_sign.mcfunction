

execute if score @s SPWN_ClickSign matches 1 run function infection_spawn_building:sign_click/infected_count
execute if score @s SPWN_ClickSign matches 2 run function infection_spawn_building:sign_click/gear_scaling
execute if score @s SPWN_ClickSign matches 3 run function infection_spawn_building:sign_click/gear_scale_rate
execute if score @s SPWN_ClickSign matches 4 run function infection_spawn_building:sign_click/hold_point_time
execute if score @s SPWN_ClickSign matches 5 run function infection_spawn_building:sign_click/start_game
execute if score @s SPWN_ClickSign matches 6 run function infection_spawn_building:sign_click/game_time

function infection_spawn_building:refresh_all_signs

scoreboard players set @s SPWN_ClickSign 0