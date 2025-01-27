import FilteredRenderer from '/lib/Viz/FilteredRenderer.js'
import Standard2DVertexColorObject from '/lib/DSViz/VertexColorObject.js'
    
async function init() {
    // Create a canvas tag
    const canvasTag = document.createElement('canvas');
    canvasTag.id = "renderCanvas";
    document.body.appendChild(canvasTag);
    // Create a 2d renderer
    const renderer = new FilteredRenderer(canvasTag);
    await renderer.init();

    // Define variables for sheep
    const SHEEPTOP = 0.4;
    const SHEEPRIGHT = 0.6;

    const HEADWIDTH = 0.3;
    const HEADRAISE = SHEEPTOP/2;

    const THIN = 0.05;
    const THICK = 0.07;
    const FOOT = -0.6

    const FIR = 0.03;
    const SEC = 0.10;
    const THI = SHEEPRIGHT/2+FIR;
    const FOU = SHEEPRIGHT/2+SEC;

    // Create a triangle geometry
    var vertices = new Float32Array([
    // x, y, r, g, b, a - added four values for rgba color
    
    // sheep legs
    FIR,0,1,1,1,1,
    FIR + THIN,0,1,1,1,1,
    FIR,FOOT,0,0,0,1,

    FIR+THIN,FOOT,0,0,0,0,
    FIR + THIN,0,1,1,1,1,
    FIR,FOOT,0,0,0,1,

    SEC,0,1,1,1,1,
    SEC + THICK,0,1,1,1,1,
    SEC,FOOT,0,0,0,1,

    SEC+THICK,FOOT,0,0,0,0,
    SEC + THICK,0,1,1,1,1,
    SEC,FOOT,0,0,0,1,

    THI,0,1,1,1,1,
    THI + THIN,0,1,1,1,1,
    THI,FOOT,0,0,0,1,

    THI+THIN,FOOT,0,0,0,0,
    THI + THIN,0,1,1,1,1,
    THI,FOOT,0,0,0,1,

    FOU,0,1,1,1,1,
    FOU + THICK,0,1,1,1,1,
    FOU,FOOT,0,0,0,1,

    FOU+THICK,FOOT,0,0,0,0,
    FOU + THICK,0,1,1,1,1,
    FOU,FOOT,0,0,0,1,


    // sheep body
    0, SHEEPTOP/2, 1, 1, 1, 1,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    0, -SHEEPTOP/2, 0.75, 0.75, 0.75, 1,

    SHEEPRIGHT/2, SHEEPTOP, 1, 1, 1, 1,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    0, SHEEPTOP/2, 1, 1, 1, 1,

    SHEEPRIGHT/2, SHEEPTOP, 1, 1, 1, 1,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    SHEEPRIGHT, SHEEPTOP/2, 1, 1, 1, 1,

    SHEEPRIGHT, -SHEEPTOP/2, 0.75, 0.75, 0.75, 1,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    SHEEPRIGHT, SHEEPTOP/2, 1, 1, 1, 1,

    // bottom
    SHEEPRIGHT, -SHEEPTOP/2, 0.75, 0.75, 0.75, 1,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    SHEEPRIGHT/2, -SHEEPTOP, 0.25, 0.25, 0.25, 1,

    0, -SHEEPTOP/2, 0.75, 0.75, 0.75, 0.75,
    SHEEPRIGHT/2, 0, 1, 1, 1, 1,
    SHEEPRIGHT/2, -SHEEPTOP, 0.25, 0.25, 0.25, 1,

    // head
    0, HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    0, -SHEEPTOP/2, 0.75, 0.75, 0.75, 1,

    -HEADWIDTH/2, HEADWIDTH + HEADRAISE, 1, 1, 1, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    0, HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,

    -HEADWIDTH/2, HEADWIDTH + HEADRAISE, 1, 1, 1, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    -HEADWIDTH, HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,

    -HEADWIDTH, -HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    -HEADWIDTH, HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,

    -HEADWIDTH, -HEADWIDTH/2 + HEADRAISE, 1, 1, 1, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    -HEADWIDTH/2, -HEADWIDTH + HEADRAISE, 1, 1, 1, 1,

    0, -SHEEPTOP/2, 0.75, 0.75, 0.75, 1,
    -HEADWIDTH/2, 0, 1, 1, 1, 1,
    -HEADWIDTH/2, -HEADWIDTH + HEADRAISE, 1, 1, 1, 1,

    // party hat
    -HEADWIDTH/2, HEADWIDTH + HEADRAISE, 1, 0, 0, 1,
    0, 0.9, 1, 1, 0, 1,
    0, HEADWIDTH/2 + HEADRAISE, 0, 0, 1, 1,

    // face
    -3 * HEADWIDTH/4, HEADRAISE + HEADWIDTH/2, 0.25, 0.25, 0.25, 1,
    -1 * HEADWIDTH/4, HEADRAISE + HEADWIDTH/2, 0.25, 0.25, 0.25, 1,
    -1 * HEADWIDTH/4, HEADRAISE - HEADWIDTH/2, 0.25, 0.25, 0.25, 1,

    -3 * HEADWIDTH/4, HEADRAISE - HEADWIDTH/2, 0.25, 0.25, 0.25, 1,
    -3 * HEADWIDTH/4, HEADRAISE + HEADWIDTH/2, 0.25, 0.25, 0.25, 1,
    -1 * HEADWIDTH/4, HEADRAISE - HEADWIDTH/2, 0.25, 0.25, 0.25, 1,


    ]);
    await renderer.appendSceneObject(new Standard2DVertexColorObject(renderer._device, renderer._canvasFormat, vertices));
    renderer.render();
    return renderer;
}
    
init().then( ret => {
    console.log(ret);
}).catch( error => {
    const pTag = document.createElement('p');
    pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
    document.body.appendChild(pTag);
    document.getElementById("renderCanvas").remove();
});

