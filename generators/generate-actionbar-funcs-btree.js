const fs = require('fs');

const BTree = require('sorted-btree');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
const PROGRESS_FRACTIONALS = [];

for(let i = 0xE000; i < 0xE000 + 80; i++) {
    PROGRESS_FRACTIONALS.push(String.fromCharCode(i));
}

const THERMAL_ICO = {full: '\uE002', half: '\uE001', empty: '\uE000', betweenElements: '\uF801'}
const FOOD_ICO = {full: '\uE012', half: '\uE011', empty: '\uE010', betweenElements: '\uF802'}
const TEMP_AMNT_INDICATORS = ['\uE020', '\uE021', '\uE022', '\uE023', '\uE024', '\uE025', '\uE026']; //From triple down to triple up



// Command to show bar at normal values
// /title @a actionbar {"text":"\uF82B\uF82A\uF826\uE002\uF801\uE002\uF801\uE002\uF801\uE002\uF801\uE002\uF801\uE002\uF801\uE001\uF801\uE000\uF801\uE002\uF801\uE002\uF802\uE020\uF80B\uF809\uF808\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE011\uF802\uE010\uF802\uE012\uF802\uE012"}


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


/**
 * 
 * @param {{full: string, half:string, empty:string, betweenElements:string}} barData 
 * @param {number} value 
 */
const genSingleBar = (barData, value) => {
    let bar = [];
    let fullNum = Math.floor(value / 2);
    let showHalf = value % 2 == 0 ? false : true;
    let emptyNum = 10 - fullNum - (showHalf ? 1 : 0);

    for(let i = 0; i < emptyNum; i++) {
        bar.push(barData.empty);
    }

    if(showHalf) {
        bar.push(barData.half);
    }

    for(let i = 0; i < fullNum; i++) {
        bar.push(barData.full);
    }

    return bar.join(barData.betweenElements);
}

const getMinecraftTellraw = (temp, food, temp_change) => {
    
    let tempBar = genSingleBar(THERMAL_ICO, temp);
    let foodBar = genSingleBar(FOOD_ICO, food);

    return JSON.stringify([
        {"text": `\uF82B\uF82A\uF826${tempBar}\uF802${TEMP_AMNT_INDICATORS[temp_change]}\uF80B\uF809\uF808${foodBar}`}
    ]);
}


for(let temperature_value = 0; temperature_value <= 20; temperature_value++) {
    for(let food_value = 0; food_value <= 20; food_value++) {
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


