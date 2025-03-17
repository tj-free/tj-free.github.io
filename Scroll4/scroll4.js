import renderer from '/lib/Viz/2DRenderer.js'
import Standard2DGAPosedVertexColorObject from '/lib/DSViz/Standard2DGAPosedVertexColorObject.js'

let applyRotorToRotor = (dr, r) => {
    // r = cS + s exey
    // dr = ccS + ss exey
    // dr r = (c * cc - s * ss)S + (cc * s + ss * s) e01
    return [dr[0] * r[0] - dr[1] * r[1], dr[0] * r[1] + dr[1] * r[0]];
  };

setInterval(() => { 
    renderer.render();
    // update pose
    let newrotor = applyRotorToRotor(dr, [pose[0], pose[1]]);
    pose[0] = newrotor[0];
    pose[1] = newrotor[1];
}, 100); // call every 100 ms