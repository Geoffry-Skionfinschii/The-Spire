
summon item ~ ~ ~ {Tags:["sbhrdgvserbkgvss"],Item:{Count:1b,id:"stone"},PickupDelay:0}

execute as @e[type=item,tag=sbhrdgvserbkgvss] run data modify entity @s Item set from storage the_spire:drop_item_inventory ItemNBT[0]

tag @e[type=item,tag=sbhrdgvserbkgvss] remove sbhrdgvserbkgvss

data remove storage the_spire:drop_item_inventory ItemNBT[0]

execute if data storage the_spire:drop_item_inventory ItemNBT[0] run function the_spire:game/states/2/state/inventory/drop_items/drop_loop