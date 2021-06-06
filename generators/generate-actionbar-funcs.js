const fs = require('fs');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
//const PROGRESS_FRACTIONALS = [``,``,``,``,``,``,``,``,``];
//Every 2nd removed
const PROGRESS_FRACTIONALS = [``,``,``,``,``];

const HEALTH_BAR_LEN = 10;
const HEALTH_BAR_MAX = 100;
const TEMP_BAR_LEN = 10;
const TEMP_BAR_MAX = 100;
const FOOD_BAR_LEN = 10;
const FOOD_BAR_MAX = 100;


if(fs.existsSync('./actionbar_funcs')) {
    fs.rmSync(`./actionbar_funcs`, {recursive: true});
}

if(!fs.existsSync('./actionbar_funcs')) {
    fs.mkdirSync('./actionbar_funcs');
    fs.mkdirSync(`./actionbar_funcs/bin`);
}

const getBar = (value, max, len) => {
    //console.log("baqr");
    //console.log(value, max, len);
    let barPercent = Math.floor(value / max);
    //console.log(barPercent);

    let remainingBarPart = value % PROGRESS_FRACTIONALS.length;
    let str = `${PROGRESS_FRACTIONALS[PROGRESS_FRACTIONALS.length - 1].repeat(barPercent)}`;

    //console.log(remainingBarPart);

    str += PROGRESS_FRACTIONALS[Math.floor(remainingBarPart)];

    str += `${PROGRESS_FRACTIONALS[0].repeat(Math.max(0, len - str.length))}`;

    if(str.includes("undefined")) throw str;
    return str;
}

const generateRawJSON = (h, t, f) => {
    return JSON.stringify(
        [
            {"text": "Health"},{"text": getBar(h, HEALTH_BAR_MAX, HEALTH_BAR_LEN) + h},
            {"text": "Temp"},{"text": getBar(t, TEMP_BAR_MAX, TEMP_BAR_LEN) + t},
            {"text": "Food"},{"text": getBar(f, FOOD_BAR_MAX, FOOD_BAR_LEN) + f}
        ]
    )
}

let BinTreeMain = "# Auto generated list of all actionbar outcomes\n";

for(let h = 0; h <= HEALTH_BAR_LEN * PROGRESS_FRACTIONALS.length; h++) {

    let hState = h;
    
    let buildAString = "";
    for(let t = 0; t <= TEMP_BAR_LEN * PROGRESS_FRACTIONALS.length; t++) {

        let tState = t;

        let internalString = "";
        for(let f = 0; f <= FOOD_BAR_LEN * PROGRESS_FRACTIONALS.length; f++) {
            let fState = f;

            internalString += `execute ` +
                `if score #food_prog G_Temporary matches ${f}..${Math.floor(f + ((FOOD_BAR_LEN * PROGRESS_FRACTIONALS.length) / FOOD_BAR_MAX))} ` +
                `run title @s actionbar ${generateRawJSON(h, t, f)}\n`
        }
        if(!fs.existsSync(`./actionbar_funcs/bin/${h}`)) {
            fs.mkdirSync(`./actionbar_funcs/bin/${h}`);
        }
        fs.writeFileSync(`./actionbar_funcs/bin/${h}/${t}.mcfunction`, internalString);
        buildAString += `execute if score #temp_prog G_Temporary matches ${t}..${Math.floor(t + ((TEMP_BAR_LEN * PROGRESS_FRACTIONALS.length) / TEMP_BAR_MAX))} run function ${FUNCTION_DIR}/bin/${h}/${t}\n`;
    }
    fs.writeFileSync(`./actionbar_funcs/bin/${h}.mcfunction`, buildAString);
    BinTreeMain += `execute if score #health_prog G_Temporary matches ${h}..${Math.floor(h + ((TEMP_BAR_LEN * PROGRESS_FRACTIONALS.length) / TEMP_BAR_MAX))} run function ${FUNCTION_DIR}/bin/${h}` + '\n';
}

fs.writeFileSync("./actionbar_funcs/render_actionbar.mcfunction", BinTreeMain);