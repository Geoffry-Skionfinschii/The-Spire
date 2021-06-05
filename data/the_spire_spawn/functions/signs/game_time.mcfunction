
scoreboard players operation #sign_calc SPWN_Temporary = $game_time G_Settings
scoreboard players operation #sign_calc SPWN_Temporary /= #1min G_Constants

data merge block ~-1 ~1 ~3 {Text1:'[{"text":"Game Time","clickEvent": {"action": "run_command","value": "/trigger SPWN_ClickSign set 6"}}]',Text2:'[{"score":{"name":"#sign_calc","objective": "SPWN_Temporary"},"color": "dark_blue"},{"text":" minutes"}]',Text4:'{"text":"R: 45 minutes"}'}