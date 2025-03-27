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
import StandardTextObject from '/lib/DSViz/StandardTextObject.js'
import MassSpringSystemObject from '/lib/DSViz/MassSpringSystemObject.js';
import PolygonObject from '/lib/DSViz/PolygonObject.js'
import Tree from '/lib/Tree/Tree.js';
import Node from '/lib/Tree/Node.js';

async function init() {

  // Create the tree structure
  var tree = new Tree(new Node(0));

  //Create Nodes
  for (var i = 0; i < 3; i++) {
    tree.addChild(0,new Node(tree.num))
  }
  var children = tree.root.getChildren();
  var newNode;
  for (var j = 0; j < 3; j++) {
    for (var i = 0; i < 3; i++) {
      newNode = new Node(tree.num);
      tree.addChild(children[j].getID(),newNode);
    }
  }
  console.log(tree.getAllNodes())

  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d animated renderer
  const renderer = new Renderer(canvasTag);
  await renderer.init();
  // make the mass spring object
  const particles = new MassSpringSystemObject(renderer._device, renderer._canvasFormat,tree);
  await renderer.appendSceneObject(particles);
  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps);
  
  // make the main polygon
  //const polygon = new PolygonObject(renderer._device, renderer._canvasFormat, '/assets/box.polygon');
  //await renderer.appendSceneObject(polygon);
  //var needToWait = false;

  // window.addEventListener("keydown", async (e) => {
  //   switch (e.key) {
  //     case 'w': case 'W': 
  //       if (!needToWait) {
  //         needToWait = true;
  //         await polygon.changePolygon('/assets/circle.polygon');
  //         needToWait = false;
  //         particles.updateBoundary(new Float32Array(polygon._vertices));  
  //       }
  //       break;
  //   }
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