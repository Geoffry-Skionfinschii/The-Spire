
tellraw @a "generate"

setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"the_spire_worldgen:cabin",posX:-9,posY:-2,posZ:-9,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:18,sizeY:10,sizeZ:16}
setblock ~ ~1 ~ redstone_block

forceload add ~ ~

function the_spire:game/states/1/state/generate_world/essentials/cabin/generate_cabin/post_cabin_build