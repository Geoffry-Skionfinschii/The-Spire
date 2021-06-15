const fs = require('fs');

const FUNCTION_DIR = "the_spire:game/states/2/state/actionbar/renderer";
//All 8
const PROGRESS_FRACTIONALS = [``,``,``,``,``,``,``,``,``];
const TEMP_AMNT_INDICATORS = [``, ``, ``, ``, ``, ``, ``]; //From triple down to triple up

//Every 2nd removed
//const PROGRESS_FRACTIONALS = [``,``,``,``,``];

//const PROGRESS_FRACTIONALS = [`A`, `B`, `C`, `D`];

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

const generateRawJSON = (t, f, changeDir) => {

    let returnJson = {"text": `${TEMP_AMNT_INDICATORS[changeDir + 3]} 🔥 `};
    if(changeDir < 0) {
        returnJson.color = "dark_blue";
    } else {
        returnJson.color = "gold";
    }

    return JSON.stringify(
        [
            returnJson, 
            {"text": getBar(t, TEMP_BAR_MAX, TEMP_BAR_LEN), "color": "dark_green"}, 
            {"text": "   Food: "},
            {"text": getBar(f, FOOD_BAR_MAX, FOOD_BAR_LEN), "color": "red"}
        ]
    )
}

let BinTreeMain = "# Auto generated list of all actionbar outcomes\n";

for(let t = 0; t <= (TEMP_BAR_MAX / TEMP_BAR_LEN) * PROGRESS_FRACTIONALS.length; t++) {
    tRel = t * (TEMP_BAR_MAX / TEMP_BAR_LEN) / PROGRESS_FRACTIONALS.length;
    let internalString = "";
    for(let f = 0; f <= (FOOD_BAR_MAX / FOOD_BAR_LEN) * PROGRESS_FRACTIONALS.length; f++) {
        fRel = f * (FOOD_BAR_MAX / FOOD_BAR_LEN) / PROGRESS_FRACTIONALS.length;
        if(!fs.existsSync(`./actionbar_funcs/bin/${t}`)) {
            fs.mkdirSync(`./actionbar_funcs/bin/${t}`, {recursive: true});
        }

        let generatedBar = "";
        for(let changeSt = -3; changeSt <= 3; changeSt++) {

            generatedBar += `execute ` +
                `if score #temp_change_dir G_Temporary matches ${changeSt} ` +
                `run title @s actionbar ${generateRawJSON(tRel, fRel, changeSt)}\n`
            
        }
        fs.writeFileSync(`./actionbar_funcs/bin/${t}/${f}.mcfunction`, generatedBar);

        internalString += `execute if score #food_prog G_Temporary matches ${Math.floor(fRel)}..${Math.floor(fRel + ((FOOD_BAR_MAX / FOOD_BAR_LEN) / PROGRESS_FRACTIONALS.length)) - 1} run function ${FUNCTION_DIR}/bin/${t}/${f}` + '\n';
    }
    fs.writeFileSync(`./actionbar_funcs/bin/${t}.mcfunction`, internalString);
    BinTreeMain += `execute if score #temp_prog G_Temporary matches ${Math.floor(tRel)}..${Math.floor(tRel + ((TEMP_BAR_MAX / TEMP_BAR_LEN) / PROGRESS_FRACTIONALS.length)) - 1} run function ${FUNCTION_DIR}/bin/${t}` + '\n';
}
    

fs.writeFileSync("./actionbar_funcs/render_actionbar.mcfunction", BinTreeMain);