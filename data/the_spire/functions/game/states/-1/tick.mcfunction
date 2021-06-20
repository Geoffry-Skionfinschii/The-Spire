effect give @a saturation 5 2 true

function the_spire_spawn:tick


execute unless entity @e[tag=SPAWN_MODERATOR] run title @a actionbar "Run /function the_spire:mod to have access to signs"
execute as @e[tag=SPAWN_MODERATOR] run title @s actionbar "You are MODERATOR"