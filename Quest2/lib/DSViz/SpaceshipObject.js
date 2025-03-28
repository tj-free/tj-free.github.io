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

import Standard2DPGAPosedVertexColorObject from "/lib/DSViz/Standard2DPGAPosedVertexColorObject.js"

export default class SpaceshipObject extends Standard2DPGAPosedVertexColorObject {
  constructor(device, canvasFormat, pose) {
    let _vertices = new Float32Array([
      // x, y, r, g, b
       -0.1, -0.15, 255/255, 255/255, 255/255, 1, // Two triangles for the body
       -0.1, -0.45, 255/255, 255/255, 255/255, 1,
       0.1, -0.45, 255/255, 255/255, 255/255, 1,
       -0.1, -0.15, 255/255, 255/255, 255/255, 1,
       0.1, -0.45, 255/255, 255/255, 255/255, 1,
       0.1, -0.15, 255/255, 255/255, 255/255, 1,
      
       0,  0.1, 150/255, 150/255 , 150/255, 1, // A triangle for the top
       -0.1, -0.15, 150/255, 150/255 , 150/255, 1,
       0.1, -0.15, 150/255, 150/255 , 150/255, 1,

    
       0,  -0.75, 200/255, 200/255 , 200/255, 1, // Thee triangles for the bottom
       -0.1, -0.45, 200/255, 200/255 , 200/255, 1,
       0.1, -0.45, 200/255, 200/255 , 200/255, 1,
       
       0.1,  -0.45, 200/255, 200/255 , 200/255, 1,
       0, -0.75, 200/255, 200/255 , 200/255, 1,
       0.2, -0.75, 200/255, 200/255 , 200/255, 1,
       
       -0.1,  -0.45, 200/255, 200/255 , 200/255, 1, 
       -0.2, -0.75, 200/255, 200/255 , 200/255, 1,
       0, -0.75, 200/255, 200/255 , 200/255, 1,
    ]); 
    super(device, canvasFormat, _vertices, pose);
    this._interval = 50;
    this._t = 0;
    this._step = 1;
    this._pose0 = [-1, 0, 0.5, -0.5, 0.5, 0.5];
    this._pose1 = [0, 1, -0.5, 0.5, 0.5, 0.5];
    this._pose2 = [-1, 0, -0.5, 0.5, 0.5, 0.5];
    this._poses = [this._pose0,this._pose1,this._pose2];
    this._p = 0;
  }
  
  updateGeometry() {
    // get index for current pose
    var pNext = this._p + this._step;
    
    // linearly interpolate the motor
    this._pose[0] = this._poses[this._p][0] * (1 - this._t / this._interval) + this._poses[pNext][0] * this._t / this._interval;
    this._pose[1] = this._poses[this._p][1] * (1 - this._t / this._interval) + this._poses[pNext][1] * this._t / this._interval;
    this._pose[2] = this._poses[this._p][2] * (1 - this._t / this._interval) + this._poses[pNext][2] * this._t / this._interval;
    this._pose[3] = this._poses[this._p][3] * (1 - this._t / this._interval) + this._poses[pNext][3] * this._t / this._interval;
    // interpolating back and forth
    this._t += 1;
    if (this._t >= this._interval) {
      this._p = this._p + this._step;
      this._t = 0;
      if (this._p == this._poses.length - 1) {
        this._step = -1;
      } else if (this._p == 0) {
        this._step = 1;
      }
    }
    
    
    super.updateGeometry();
  }
}