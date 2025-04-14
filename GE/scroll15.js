import PGA3D from '/lib/Math/PGA3D.js'

// TRANSLATE

// define a 3D point
// let p = [0, 0, 0];
// // create a translator
// let dt = PGA3D.createTranslator(0, 0, -1);
// // apply the translator twice
// let pga_result = PGA3D.applyMotorToPoint(p, dt);
// pga_result = PGA3D.applyMotorToPoint(pga_result, dt);
// // check the result. You should see (0, 0, -2) in the console
// console.log(pga_result.map(val => val.toFixed(4)));

// // define a pose for this point object
// let pose = new Float32Array(Array(16).fill(0));
// pose[0] = 1;
// // create a translator
// let poset = PGA3D.createTranslator(1, 3, 2);
// // accumulate the translator to the pose
// let cpose = PGA3D.geometricProduct(poset, pose);
// // apply the pose
// let check = PGA3D.applyMotorToPoint(p, cpose);
// // check the result. You should see (1, 3, 2) in the console
// console.log(check.map(val => val.toFixed(4)));
// // apply dt to the pose twice
// cpose = PGA3D.geometricProduct(cpose, dt);
// cpose = PGA3D.geometricProduct(cpose, dt);
// // apply the pose
// check = PGA3D.applyMotorToPoint(p, cpose);
// // check the result. You should see (1, 3, 0) in the console
// console.log(check.map(val => val.toFixed(4)));


// ROTATE

// define a 3D point
let p = [1, 0, 0];
// create a rotor rotating around (1, 0, 0) by 90 degrees
let dr = PGA3D.createRotor(Math.PI / 2, 1, 0, 0); // note, the passing through point is defaulted to (0, 0, 0)
// this rotates (1, 0, 0) by 90 degrees around (1, 0, 0)
let pga_result = PGA3D.applyMotorToPoint(p, dr);
// check the result. You should see (1, 0, 0) in the console. Well, (1, 0, 0) is on the rotation axis, so it shouldn't move.
console.log(pga_result.map(val => val.toFixed(4)));

// // define a 3D point
// p = [1, 1, 1];
// // create a rotor rotating around (1, 0, -1) by 180 degrees
// dr = PGA3D.createRotor(Math.PI, 1, 0, -1);
// // create a translator by (1, 0, 0)
// let dt = PGA3D.createTranslator(1, 0, 0);
// // combine them to a motor
// let dm = PGA3D.geometricProduct(dt, dr);
// // the below should be an identity - this tells you that the reverse always cancel the transform
// console.log(PGA3D.geometricProduct(PGA3D.reverse(dm), dm).map(val => val.toFixed(4)));
// // this rotates (1, 1, 1) by 180 degrees around (1, 0, -1) then translates by (1, 0, 0)
// let pga_result = PGA3D.applyMotorToPoint(p, dm);
// // check the result. You should see (0, -1, -1) in the console
// console.log(pga_result.map(val => val.toFixed(4)));
// // now, try to apply it one by one
// let test = PGA3D.applyMotorToPoint(p, dr);
// let g = PGA3D.applyMotorToPoint(test, dt);
// // this should be the same
// console.log(g.map(val => val.toFixed(4)));