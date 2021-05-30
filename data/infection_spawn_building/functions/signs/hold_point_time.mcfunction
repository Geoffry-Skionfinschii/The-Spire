scoreboard players operation #sign_calc SPWN_Temporary = $hold_time INF_Settings
scoreboard players operation #sign_calc SPWN_Temporary /= #1min INF_Constants

data merge block ~1 ~1 ~3 {Text1:'[{"text":"Hold Time","clickEvent": {"action": "run_command","value": "/trigger SPWN_ClickSign set 4"}}]',Text2:'[{"score":{"name":"#sign_calc","objective": "SPWN_Temporary"},"color": "dark_blue"},{"text":" minutes"}]'}