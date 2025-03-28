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
import PGA2D from '/lib/Math/PGA2D.js'

export default class MoonObject extends Standard2DPGAPosedVertexColorObject {
  constructor(device, canvasFormat, pose, start) {
    let _vertices = new Float32Array([
      // x, y, r, g, b
       start[0] + -0.1, start[1] + -0.1, 255/255, 255/255, 255/255, 1, // Two triangles for quad
       start[0] + -0.1, start[1] + 0.1, 255/255, 255/255, 255/255, 1,
       start[0] + 0.1, start[1] + -0.1, 255/255, 255/255, 255/255, 1,
       start[0] + 0.1, start[1] + -0.1, 255/255, 255/255, 255/255, 1,
       start[0] + 0.1, start[1] + 0.1, 255/255, 255/255, 255/255, 1,
       start[0] + -0.1, start[1] + 0.1, 255/255, 255/255, 255/255, 1,
    ]); 
    super(device, canvasFormat, _vertices, pose);
    this._pivot = start;
  }
  
  updateGeometry() {
    this.updatePivot();
    let angle = Math.PI / 100;
    let pivot = this._pivot; // Set the pivot point

    // Step 1: Compute translation motors
    let T_negP = [1, 0, -pivot[0] / 2, -pivot[1] / 2]; // Move to origin
    let T_posP = [1, 0, pivot[0] / 2, pivot[1] / 2];  // Move back

    // Step 2: Compute rotation motor
    let dr = PGA2D.normaliozeMotor([
        Math.cos(angle / 2),
        -Math.sin(angle / 2),
        0, 0
    ]);

    // Step 3: Apply full conjugation: newMotor = T(P) * R * T(-P) * oldMotor
    let temp1 = PGA2D.geometricProduct(T_negP, this._pose);  // T(-P) * M
    let temp2 = PGA2D.geometricProduct(dr, temp1);           // R * (T(-P) * M)
    let temp3 = PGA2D.geometricProduct(T_posP, temp2);       // T(P) * (R * T(-P) * M)
    let newmotor = PGA2D.normaliozeMotor(temp3);

    // Step 4: Store the new motor
    this._pose[0] = newmotor[0];
    this._pose[1] = newmotor[1];
    this._pose[2] = newmotor[2];
    this._pose[3] = newmotor[3];

    super.updateGeometry();
  }

  updatePivot() {
    let angle = Math.PI / 100;
    let pivot = [0,0]; // Set the pivot point

    // Step 1: Compute translation motors
    let T_negP = [1, 0, -pivot[0] / 2, -pivot[1] / 2]; // Move to origin
    let T_posP = [1, 0, pivot[0] / 2, pivot[1] / 2];  // Move back

    // Step 2: Compute rotation motor
    let dr = PGA2D.normaliozeMotor([
        Math.cos(angle / 2),
        -Math.sin(angle / 2),
        0, 0
    ]);

    // Step 3: Apply full conjugation: newMotor = T(P) * R * T(-P) * oldMotor
    let temp1 = PGA2D.geometricProduct(T_negP, this._pose);  // T(-P) * M
    let temp2 = PGA2D.geometricProduct(dr, temp1);           // R * (T(-P) * M)
    let temp3 = PGA2D.geometricProduct(T_posP, temp2);       // T(P) * (R * T(-P) * M)
    let newmotor = PGA2D.normaliozeMotor(temp3);

    // Step 4: Store the new motor
    this._pivot[0] = newmotor[2];
    this._pivot[1] = newmotor[3];
  }
}