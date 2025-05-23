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

import RayTracer from '/lib/Viz/RayTracer.js'
import StandardTextObject from '/lib/DSViz/StandardTextObject.js'
import RayTracingBoxObject from '/lib/DSViz/RayTracingBoxObject.js'
import ParticleSystemObject from '/lib/DSViz/ParticleSystemObject.js'
import RayTracingSphereObject from '/lib/DSViz/RayTracingSphereObject.js'
import Camera from '/lib/Viz/3DCamera.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a ray tracer
  const tracer = new RayTracer(canvasTag);
  await tracer.init();
  // Create a 3D Camera
  var camera = new Camera();
  // Create an object to trace
  var tracerObj = new RayTracingBoxObject(tracer._device, tracer._canvasFormat, camera);
  //var tracerSphere = new RayTracingSphereObject(tracer._device, tracer._canvasFormat, camera);
  await tracer.setTracerObject(tracerObj);
  //await tracer.setTracerObject(tracerSphere);

  var particles = new ParticleSystemObject(tracer._device, tracer._canvasFormat, tracer._canvas);
  await tracer.setTracerObject(particles);

  var movespeed = 0.05;
  var rotSpeed = 0.1;
  var newFocal = new Float32Array(Array(2).fill(1));
  window.addEventListener("keydown", (e) => {
    switch (e.key) {
      case 'w': case 'W': 
        camera.moveY(-movespeed);
        tracerObj.updateCameraPose();
        //console.log(triangle._cameraPose);
        break;
      case 's': case 'S': 
        camera.moveY(movespeed);
        tracerObj.updateCameraPose();     
        break;
      case 'a': case 'A': 
        camera.moveX(-movespeed);
        tracerObj.updateCameraPose();
        break;
      case 'd': case 'D': 
        camera.moveX(movespeed);
        tracerObj.updateCameraPose();       
        break;
      case 'e': case 'E': 
        camera.moveZ(movespeed);
        tracerObj.updateCameraPose();
        break;
      case 'q': case 'Q': 
        camera.moveZ(-movespeed);
        tracerObj.updateCameraPose();     
        break;
      case 'k': case 'K':
        camera.rotateX(movespeed,rotSpeed);
        tracerObj.updateCameraPose();
        break;
      case 'i': case 'I':   
        camera.rotateX(-movespeed,-rotSpeed);
        tracerObj.updateCameraPose();     
        break;
      case 'l': case 'L':
        camera.rotateY(movespeed,-rotSpeed);
        tracerObj.updateCameraPose();
        break;
      case 'j': case 'J':   
        camera.rotateY(-movespeed,rotSpeed);
        tracerObj.updateCameraPose();     
        break;
      case 'u': case 'U':
        camera.rotateZ(movespeed,rotSpeed);
        tracerObj.updateCameraPose();
        break;
      case 'o': case 'O':   
        camera.rotateZ(-movespeed,-rotSpeed);
        tracerObj.updateCameraPose();     
        break;
        case 't': case 'T': 
        tracerObj.moveY(-movespeed);
        tracerObj.updateBoxPose();
        //console.log(triangle._cameraPose);
        break;
      case 'g': case 'G': 
        tracerObj.moveY(movespeed);
        tracerObj.updateBoxPose();     
        break;
      case 'f': case 'F': 
        tracerObj.moveX(-movespeed);
        tracerObj.updateBoxPose();
        break;
      case 'h': case 'H': 
        tracerObj.moveX(movespeed);
        tracerObj.updateBoxPose();       
        break;
      case 'y': case 'Y': 
        tracerObj.moveZ(movespeed);
        tracerObj.updateBoxPose();
        break;
      case 'r': case 'R': 
        tracerObj.moveZ(-movespeed);
        tracerObj.updateBoxPose();     
        break;
      case 'ArrowDown':
        tracerObj.rotateX(movespeed,rotSpeed);
        tracerObj.updateBoxPose();
        break;
      case 'ArrowUp':  
        tracerObj.rotateX(-movespeed,-rotSpeed);
        tracerObj.updateBoxPose();     
        break;
      case 'ArrowRight':
        tracerObj.rotateY(movespeed,-rotSpeed);
        tracerObj.updateBoxPose();
        break;
      case 'ArrowLeft':   
        tracerObj.rotateY(-movespeed,rotSpeed);
        tracerObj.updateBoxPose();     
        break;
      case 'n': case 'N':
        tracerObj.rotateZ(movespeed,rotSpeed);
        tracerObj.updateBoxPose();
        break;
      case 'm': case 'M':   
        tracerObj.rotateZ(-movespeed,-rotSpeed);
        tracerObj.updateBoxPose();     
        break;
      case '[':
        newFocal[0] = tracerObj._camera._focal[0] + 1;
        newFocal[1] = tracerObj._camera._focal[1];
        tracerObj.updateCameraFocal(newFocal);
        console.log(tracerObj._camera._focal);
        break;
      case ']':
        newFocal[0] = tracerObj._camera._focal[0] - 1;
        newFocal[1] = tracerObj._camera._focal[1];
        tracerObj.updateCameraFocal(newFocal);
        console.log(tracerObj._camera._focal);
        break;
      case '{': 
        newFocal[0] = tracerObj._camera._focal[0];
        newFocal[1] = tracerObj._camera._focal[1] + 1;
        tracerObj.updateCameraFocal(newFocal);
        console.log(tracerObj._camera._focal);
        break;
      case '}':  
        newFocal[0] = tracerObj._camera._focal[0];
        newFocal[1] = tracerObj._camera._focal[1] - 1;
        tracerObj.updateCameraFocal(newFocal);
        console.log(tracerObj._camera._focal);
        break;
      case 'b': case 'B': 
        fpsText.toggleVisibility(); 
        instructText.toggleVisibility();
        break;
    }
  });
  
  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps, "10");
  var instructions = 'move camera: wasdqe\nrotate camera: ijkluo\nmove box: tfghry\nrotate box: arrows,nm\nfocal x: []\nfocal y: {}\nb/B: toggle visibility';
  var instructText = new StandardTextObject(instructions);
  
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
      tracer.render();
    }
    requestAnimationFrame(renderFrame);
  };
  lastCalled = Date.now();
  renderFrame();
  setInterval(() => { 
    fpsText.updateText('fps: ' + frameCnt);
    frameCnt = 0;
  }, 1000); // call every 1000 ms
  return tracer;
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});