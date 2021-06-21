
# For now only spawn top half

summon armor_stand ~ ~-1 ~1 {ArmorItems:[{},{},{id:"leather_chestplate",Count:1b},{id:"zombie_head",Count:1b}],DisabledSlots:4144943,Invisible:1b,NoGravity:true,NoBasePlate:1b,ShowArms:1b,Pose:{Body:[278f,0f,0f],Head:[317f,0f,0f],LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]},Tags:["DEAD_BODY","DEAD_BODY_HEAD","sdfgBFBYUfbsef"]}
#summon armor_stand ~ ~-0.35 ~1.6 {ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{},{}],DisabledSlots:4144959,Invisible:1b,NoGravity:true,NoBasePlate:1b,Pose:{Body:[270f,180f,180f],LeftLeg:[270f,0f,0f],RightLeg:[270f,0f,0f]},Tags:["DEAD_BODY","DEAD_BODY_FEET","sd126asgshADsef"]}


loot spawn ~ 255 ~ loot the_spire:get_name_item

#data modify entity @e[tag=sdfgBFBYUfbsef,limit=1] CustomName set from entity @e[type=item,nbt={Item:{tag:{GetNameItemLootTable:1b}}},limit=1] Item.tag.display.Name
data modify entity @e[tag=sdfgBFBYUfbsef,limit=1] ArmorItems[3] set from entity @e[type=item,nbt={Item:{tag:{GetNameItemLootTable:1b}}},limit=1] Item

kill @e[type=item,nbt={Item:{tag:{GetNameItemLootTable:1b}}}]

#scoreboard players set in math -2000000
#scoreboard players set in1 math 2000000
#function math:rng/range

#scoreboard players operation @e[tag=sdfgBFBYUfbsef] G_DraggingBodyId = out math
scoreboard players operation @e[tag=sdfgBFBYUfbsef] G_DraggingBodyId = @s G_PlayerId




execute as @e[tag=sdfgBFBYUfbsef] run tag @s remove sdfgBFBYUfbsef
#execute as @e[tag=sd126asgshADsef] run tag @s remove sd126asgshADsef