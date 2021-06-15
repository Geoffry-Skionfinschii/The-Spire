const fs = require('fs');

const BTree = require('sorted-btree');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
const PROGRESS_FRACTIONALS = [];

for(let i = 0xE000; i < 0xE000 + 80; i++) {
    PROGRESS_FRACTIONALS.push(String.fromCharCode(i));
}
const TEMP_AMNT_INDICATORS = ["", "", "", "", "", "", ""]; //From triple down to triple up

const TEMP_BAR_LEN = 1;
const TEMP_BAR_MAX = 80;
const FOOD_BAR_LEN = 1;
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

const getBar = (value, max, len) => {
    let barPercentRaw = (value / max) * len;

    let barPercent = Math.floor(barPercentRaw);
    //console.log(barPercent);

    let str = `${PROGRESS_FRACTIONALS[Math.floor(barPercentRaw * (PROGRESS_FRACTIONALS.length - 1))]}`;

    if(str.includes("undefined")) throw str;
    return str.substr(0, len);
}

const getMinecraftTellraw = (temp, food, temp_change) => {
    return JSON.stringify([
        {"text": `${TEMP_AMNT_INDICATORS[temp_change]} 🔥 `, "color": "gold"},
        {"text": getBar(temp, TEMP_BAR_MAX, TEMP_BAR_LEN), "color": temp < (TEMP_BAR_MAX / 2) ? "red" : "aqua"},
        {"text": `               Food: `, "color": "gold"},
        {"text": getBar(food, FOOD_BAR_MAX, FOOD_BAR_LEN), "color": food < (FOOD_BAR_MAX / 2) ? "red" : "aqua"}
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
                executeList += `execute if score #actionbar_data G_Temporary matches ..${key} run title @s actionbar ${data}\n`;
            } else {
                if(+prevKey + 1 == key) {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${key} run title @s actionbar ${data}\n`;
                } else {
                    executeList += `execute if score #actionbar_data G_Temporary matches ${+prevKey + 1}..${key} run title @s actionbar ${data}\n`;
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


