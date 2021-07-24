
scoreboard players add $NumBarrelShedPlaced G_DebugInfo 1

setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"the_spire_worldgen:misc/barrel_shed",posX:-2,posY:-1,posZ:-2,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:5,sizeZ:5}
setblock ~ ~-1 ~ minecraft:redstone_block

tag @s remove BLD_PLACING