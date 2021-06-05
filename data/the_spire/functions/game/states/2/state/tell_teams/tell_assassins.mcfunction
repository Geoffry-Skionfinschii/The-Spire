

tellraw @s [{"text":"You are an "},{"text": "ASSASSIN","color": "dark_red"}]
tellraw @s [{"text":"Be the last team alive to win."}]

execute if entity @a[tag=ASSASSIN,distance=0.01..] run tellraw @s [{"text":"Your teammates are: "},{"selector":"@a[tag=ASSASSIN,distance=0.01..]"}]
execute unless entity @a[tag=ASSASSIN,distance=0.01..] run tellraw @s [{"text":"You have no teammates."}]

title @s times 20 200 20
title @s subtitle {"text": "ASSASSIN","color": "dark_red"}
title @s title ""