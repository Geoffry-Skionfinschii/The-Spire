scoreboard players operation #sign_calc SPWN_Temporary = $infected_count G_Settings

data merge block ~1 ~2 ~3 {Text1:'[{"text":"# Infected","clickEvent": {"action": "run_command","value": "/trigger SPWN_ClickSign set 1"}}]',Text2:'[{"score":{"name":"#sign_calc","objective": "SPWN_Temporary"},"color": "dark_blue"},{"text":" players"}]'}