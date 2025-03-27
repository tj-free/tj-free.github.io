/*!
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

// Check your browser supports: https://github.com/gpuweb/gpuweb/wiki/Implementation-Status#implementation-status
// Need to enable experimental flags chrome://flags/
// Chrome & Edge 113+ : Enable Vulkan, Default ANGLE Vulkan, Vulkan from ANGLE, Unsafe WebGPU Support, and WebGPU Developer Features (if exsits)
// Firefox Nightly: sudo snap install firefox --channel=latext/edge or download from https://www.mozilla.org/en-US/firefox/channel/desktop/

import Renderer from '/lib/Viz/2DRenderer.js'
import PolygonObject from '/lib/DSViz/PolygonObject.js'
import StandardTextObject from '/lib/DSViz/StandardTextObject.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d animated renderer
  const renderer = new Renderer(canvasTag);
  await renderer.init();
  //const polygon = new PolygonObject(renderer._device, renderer._canvasFormat, '/assets/box.polygon');
  const polygon = new PolygonObject(renderer._device, renderer._canvasFormat, '/assets/box.polygon');
  await renderer.appendSceneObject(polygon);
  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps, '10');
  let insideInit = 'unknown'
  var InfoText = new StandardTextObject('Inside: ' + insideInit + '\nw/W: change polygon');

  // create mouse buffer
  canvasTag.addEventListener('mousemove', async (e) => {
    var mouseX = (e.clientX / window.innerWidth) * 2 - 1;
    var mouseY = (-e.clientY / window.innerHeight) * 2 + 1;
    const mouse = new Float32Array([mouseX,mouseY]);
    polygon.updateMouseBuffer(mouse)
    var inside = await polygon.checkWindingNumber();
    InfoText.updateText('Inside: ' + inside  + '\nw/W: change polygon');
  });

  var needToWait = false;
  window.addEventListener("keydown", async (e) => {
    switch (e.key) {
      case 'w': case 'W': 
        if (!needToWait) {
          needToWait = true;
          const polygonTypes = ["box.polygon","circle.polygon","star.polygon","human.polygon","dense.polygon"];
          polygon._index += 1;
          if (polygon._index >= polygonTypes.length) {
            polygon._index = 0;
          }
          await polygon.changePolygon('/assets/' + polygonTypes[polygon._index]);
          needToWait = false;
        }
        break;
    }
  });

  // // look at mouse and determine if it's inside
  // canvasTag.addEventListener('mousemove', (e) => {
  //   const mouseX = (e.clientX / window.innerWidth) * 2 - 1;
  //   const mouseY = (-e.clientY / window.innerHeight) * 2 + 1;

  //   const mouseP = new Float32Array([mouseX,mouseY]);
  //   const boundary = polygon._polygon;
  //   const vertices = boundary._polygon;

  //   // // signed triangle test
  //   // var inside = true;
  //   // for (var i = 0; i < vertices.length-1; i++) {
  //   //   inside = inside && boundary.isInside(vertices[i],vertices[i+1],mouseP);
  //   // }

  //   // // winding number (even vs odd)
  //   // var wind = 0;
  //   // // check every edge
  //   // for (var i = 0; i < vertices.length-1; i++) {
  //   //   // will a horizontal line from the point cut this edge?
  //   //   if (mouseX <= vertices[i][0] || mouseX <= vertices[i+1][0]) {
  //   //     if ( (mouseY <= vertices[i][1] && mouseY >= vertices[i+1][1]) ||
  //   //           (mouseY <= vertices[i+1][1] && mouseY >= vertices[i][1]) ) {
  //   //           // check area
  //   //           wind += 1;
  //   //       }
  //   //   }
      
  //   // }
  //   // var inside;
  //   // if (wind % 2 == 0) {
  //   //   inside = false;
  //   // } else {
  //   //   inside = true;
  //   // }

  //   // winding number (zero) 
  //   var wind = 0;
  //   // check every edge
  //   for (var i = 0; i < vertices.length-1; i++) {
  //     // will a horizontal line from the point cut this edge?
  //     if (mouseX <= vertices[i][0] || mouseX <= vertices[i+1][0]) {
  //       if ( (mouseY <= vertices[i][1] && mouseY >= vertices[i+1][1]) ||
  //             (mouseY <= vertices[i+1][1] && mouseY >= vertices[i][1]) ) {
  //             // check area
  //             if (boundary.isInside(vertices[i],vertices[i+1],mouseP)) {
  //               wind += 1;
  //             } else {
  //               wind -= 1;
  //             }
  //         }
  //     }
      
  //   }
  //   var inside;
  //   if (wind == 0) {
  //     inside = false;
  //   } else {
  //     inside = true;
  //   }
  //   console.log(inside);
  // });

  

  // run animation at 60 fps
  var frameCnt = 0;
  var tgtFPS = 60;
  var secPerFrame = 1. / tgtFPS;
  var frameInterval = secPerFrame * 1000;
  var lastCalled;
  let renderFrame = () => {
    let elapsed = Date.now() - lastCalled;
    if (elapsed > frameInterval) {
      ++frameCnt;
      lastCalled = Date.now() - (elapsed % frameInterval);
      renderer.render();
    }
    requestAnimationFrame(renderFrame);
  };
  lastCalled = Date.now();
  renderFrame();
  setInterval(() => { 
    fpsText.updateText('fps: ' + frameCnt);
    frameCnt = 0;
  }, 1000); // call every 1000 ms
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