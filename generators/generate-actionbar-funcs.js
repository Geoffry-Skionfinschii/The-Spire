const fs = require('fs');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
const PROGRESS_FRACTIONALS = [``,``,``,``,``,``,``,``,``];

//Every 2nd removed
//const PROGRESS_FRACTIONALS = [``,``,``,``,``];

//const PROGRESS_FRACTIONALS = [`A`, `B`, `C`, `D`];

const TEMP_BAR_LEN = 10;
const TEMP_BAR_MAX = 100;


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
    let barPercentRaw = value / len;
    let barPercent = Math.floor(barPercentRaw);
    //console.log(barPercent);

    let remainingBarPart = barPercentRaw - barPercent;
    let str = `${PROGRESS_FRACTIONALS[PROGRESS_FRACTIONALS.length - 1].repeat(barPercent)}`;

    //console.log(remainingBarPart);

    str += PROGRESS_FRACTIONALS[Math.floor(remainingBarPart * PROGRESS_FRACTIONALS.length)];

    str += `${PROGRESS_FRACTIONALS[0].repeat(Math.max(0, len - str.length))}`;

    if(str.includes("undefined")) throw str;
    return str.substr(0, 10);
}

const generateRawJSON = (t, changeDir) => {
    let tRaw = t / TEMP_BAR_LEN;

    let returnJson = {};
    switch(changeDir) {
        case -1:
            returnJson = {"text": "∨ 🔥 ","color":"dark_blue"}
            break;
        case 0:
            returnJson = {"text": "– 🔥 ","color":"gold"}
            break;
        case 1:
            returnJson = {"text": "∧ 🔥 ","color":"gold"}
            break;
        default:
            throw new Error("Invalid state");
    }
    return JSON.stringify(
        [
            returnJson,{"text": getBar(t, TEMP_BAR_MAX, TEMP_BAR_LEN), "color": "green"}
        ]
    )
}

let BinTreeMain = "# Auto generated list of all actionbar outcomes\n";

for(let t = 0; t <= (TEMP_BAR_MAX / TEMP_BAR_LEN) * PROGRESS_FRACTIONALS.length; t++) {
    tRel = t * (TEMP_BAR_MAX / TEMP_BAR_LEN) / PROGRESS_FRACTIONALS.length;

    let internalString = "";
    for(let changeSt = -1; changeSt <= 1; changeSt++) {

        internalString += `execute ` +
            `if score #temp_change_dir G_Temporary matches ${changeSt} ` +
            `run title @s actionbar ${generateRawJSON(tRel, changeSt)}\n`
    }

    fs.writeFileSync(`./actionbar_funcs/bin/${t}.mcfunction`, internalString);
    BinTreeMain += `execute if score #temp_prog G_Temporary matches ${Math.floor(tRel)}..${Math.floor(tRel + ((TEMP_BAR_MAX / TEMP_BAR_LEN) / PROGRESS_FRACTIONALS.length)) - 1} run function ${FUNCTION_DIR}/bin/${t}` + '\n';
}
    

fs.writeFileSync("./actionbar_funcs/render_actionbar.mcfunction", BinTreeMain);