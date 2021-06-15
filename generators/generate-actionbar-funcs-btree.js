const fs = require('fs');

const BTree = require('sorted-btree');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
const PROGRESS_FRACTIONALS = [``,``,``,``,``,``,``,``,``];
const TEMP_AMNT_INDICATORS = [``, ``, ``, ``, ``, ``, ``]; //From triple down to triple up

const TEMP_BAR_LEN = 10;
const TEMP_BAR_MAX = 80;
const FOOD_BAR_LEN = 10;
const FOOD_BAR_MAX = 80;



const BTREE = new BTree.default(undefined, undefined, 32);

// Returns a JSON structure that represents the BTREE
const recursiveGenerate = (node, output = {}) => {
    let constructedOutputTree = output;

    if(node.children) {
        for(let i = 0 ; i < node.keys.length; i ++) {
            if(!constructedOutputTree[node.keys[0]]) {
                constructedOutputTree[node.keys[0]] = {};
            }
            constructedOutputTree[node.keys[i]] = recursiveGenerate(node.children[i]);
        }
    } else {
        for(let i = 0; i < node.keys.length; i++) {
            constructedOutputTree[node.keys[i]] = node.values[i];
        }
    }

    return constructedOutputTree;
}

const getBar = (value, len) => {
    let barPercentRaw = value / len;
    let barPercent = Math.floor(barPercentRaw);
    //console.log(barPercent);

    let remainingBarPart = barPercentRaw - barPercent;
    let str = `${PROGRESS_FRACTIONALS[PROGRESS_FRACTIONALS.length - 1].repeat(barPercent)}`;

    //console.log(remainingBarPart);

    str += PROGRESS_FRACTIONALS[Math.floor(remainingBarPart * PROGRESS_FRACTIONALS.length)];

    str += `${PROGRESS_FRACTIONALS[0].repeat(Math.max(0, len - str.length))}`;

    if(str.includes("undefined")) throw str;
    return str.substr(0, len);
}

const getMinecraftTellraw = (temp, food, temp_change) => {
    return JSON.stringify([
        {"text": `${temp_change - 3} ${temp}`},
        getBar(temp, TEMP_BAR_LEN),
        {"text": `    Food ${food}: `},
        getBar(food, FOOD_BAR_LEN)
    ]);
}


for(let temperature_value = 0; temperature_value <= TEMP_BAR_MAX; temperature_value++) {
    for(let food_value = 0; food_value <= FOOD_BAR_MAX; food_value++) {
        for(let temperate_increase_amnt = 0; temperate_increase_amnt < TEMP_AMNT_INDICATORS.length; temperate_increase_amnt++) {
            let tempIncreaseShifted = temperate_increase_amnt << 16;
            let foodShifted = food_value << 8;
            let tempShifted = temperature_value;

            let index_value = tempIncreaseShifted + foodShifted + tempShifted;

            BTREE.set(index_value, getMinecraftTellraw(temperature_value, food_value, temperate_increase_amnt));
        }
    }
}





// Generate the actual mcfunction files

let rootNode = BTREE._root;

const mcfunctionStructure = recursiveGenerate(rootNode);

fs.rmSync(`./generated_actionbar`, {recursive: true});

const generateMCFunctionRecursive = (struct, file_dir = './generated_actionbar/renderer', func_dir = FUNCTION_DIR) => {
    if(!fs.existsSync(file_dir)) {
        fs.mkdirSync(file_dir, {recursive: true});
    }

    let orderedKeys = [];
    for(let key in struct) {
        orderedKeys.push(key);
    }
    orderedKeys.sort((a, b) => a - b);

    let executeList = "";
    for(let i = 0; i < orderedKeys.length; i++) {
        let key = orderedKeys[i];
        let prevKey = i == 0 ? null : orderedKeys[i - 1];
        let data = struct[key];

        if(typeof(data) == "string") {
            //Generate the tellraw file
            if(prevKey == null) {
                executeList += `execute if score #actionbar_data G_Temporary matches ..${key} run tellraw @s ${data}\n`;
            } else {
                if(+prevKey + 1 == key) {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${key} run tellraw @s ${data}\n`;
                } else {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${+prevKey + 1}..${key} run tellraw @s ${data}\n`;
                }
            }
        } else {
            //Recursion and write file
            generateMCFunctionRecursive(data, file_dir + `/${key}`, func_dir + `/${key}`);

            if(prevKey == null) {
                executeList += `execute if score #actionbar_data G_Temporary matches ..${key} run function ${func_dir}/${key}/execute_tree\n`;
            } else {
                if(+prevKey + 1 == key) {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${key} run function ${func_dir}/${key}/execute_tree\n`;
                } else {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${+prevKey + 1}..${key} run function ${func_dir}/${key}/execute_tree\n`;
                }
            }
        }
    }

    fs.writeFileSync(file_dir + `/execute_tree.mcfunction`, executeList);
}


generateMCFunctionRecursive(mcfunctionStructure);


