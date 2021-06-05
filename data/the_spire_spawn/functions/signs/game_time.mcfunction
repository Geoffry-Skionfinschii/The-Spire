
scoreboard players operation #sign_calc SPWN_Temporary = $game_time INF_Settings
scoreboard players operation #sign_calc SPWN_Temporary /= #30min INF_Constants

scoreboard players operation #sign_dec SPWN_Temporary = #sign_calc SPWN_Temporary
scoreboard players operation #sign_dec SPWN_Temporary %= #2 INF_Constants
scoreboard players operation #sign_dec SPWN_Temporary *= #5 INF_Constants
scoreboard players operation #sign_calc SPWN_Temporary /= #2 INF_Constants

data merge block ~-1 ~1 ~3 {Text1:'[{"text":"Game Time","clickEvent": {"action": "run_command","value": "/trigger SPWN_ClickSign set 6"}}]',Text2:'[{"score":{"name":"#sign_calc","objective": "SPWN_Temporary"},"color": "dark_blue"},{"text":"."},{"score":{"name":"#sign_dec","objective": "SPWN_Temporary"},"color": "dark_blue"},{"text":" hours"}]'}