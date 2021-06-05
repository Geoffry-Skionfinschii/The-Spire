

execute if score @s SPWN_ClickSign matches 1 run function the_spire_spawn:sign_click/assassin_count
execute if score @s SPWN_ClickSign matches 2 run function the_spire_spawn:sign_click/airdrops
execute if score @s SPWN_ClickSign matches 3 run function the_spire_spawn:sign_click/ghost_abilities
execute if score @s SPWN_ClickSign matches 4 run function the_spire_spawn:sign_click/points_to_win
execute if score @s SPWN_ClickSign matches 5 run function the_spire_spawn:sign_click/start_game
execute if score @s SPWN_ClickSign matches 6 run function the_spire_spawn:sign_click/game_time

function the_spire_spawn:refresh_all_signs

scoreboard players set @s SPWN_ClickSign 0