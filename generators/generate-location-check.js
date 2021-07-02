
const fs = require('fs');
const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const ask = (query) => new Promise((resolve) => rl.question(query, resolve));


(async () => {
    let blockName = await ask("Block name to find: ");
    let radius = Number(await ask("Sphere Radius: "));

    let outputPred = {
        "condition": "minecraft:alternative",
        "terms": [
            
        ]
    };

    let termBuilder = (x, y, z) => {
        return {
            "condition": "location_check",
            "offsetX": x,
            "offsetY": y,
            "offsetZ": z,
            "predicate": {
                "block": {
                    "blocks": ["minecraft:campfire"],
                    "state": {"lit": true}
                }
            }
        }
    }

    let completedPositions = [];

    let isPositionCompleted = (coord) => {
        for(let pos of completedPositions) {
            if(pos[0] == coord[0] && pos[1] == coord[1] && pos[2] == coord[2]) {
                return true;
            }
        }
        return false;
    }

    for(let x = -radius; x < radius; x++) {
        for(let y = -radius; y < radius; y++) {
            for(let z = -radius; z < radius; z++) {
                let dist = Math.sqrt(x * x + y * y + z * z);

                if(dist < radius) {
                    if(isPositionCompleted([x, y, z])) {
                        continue;
                    }

                    outputPred.terms.push(termBuilder(x,y,z,blockName));
                }
            }
        }
    }

    fs.writeFileSync(`generated-location-pred.json`, JSON.stringify(outputPred));

    rl.close();
})()