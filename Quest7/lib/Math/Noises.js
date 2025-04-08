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
 
export default class PerlinNoise {
  constructor() {
    // ref: https://en.wikipedia.org/wiki/Perlin_noise
    // implementation ref: // ref: https://mrl.cs.nyu.edu/~perlin/noise/
    // Perlin Noise depends on a gradient permutation table
    this.gradientPermutation();
  }
  
  // a function to generate the gradient permutation table
  gradientPermutation() {
    // ref: https://en.wikipedia.org/wiki/Perlin_noise
    // instead of a hard-coded table, we generate one
    // we can regenerate it if needed
    // first, we start with an array of [0, 1, 2, ..., 255]
    this._permutation = Array.from( {length: 256}, (_, i) => i ); 
    // then, we shuffle the array using the Fisher-Yates shuffle algorithm
    for (let i = this._permutation.length - 1; i > 0; --i) { // it starts from the end of the array
      const j = Math.floor(Math.random() * (i + 1)); // it randomly pick one that is not shuffled yet
      [this._permutation[i], this._permutation[j]] = [this._permutation[j], this._permutation[i]]; // this is how JS can swap elements using references
    }
  }
  
  // a function to return a graident based on the hashed value
  gradient(hashvalue, x, y = 0, z = 0) {
    // ref: https://mrl.cs.nyu.edu/~perlin/noise/
    switch (hashvalue & 15) { // only use the lower 4 bits   
      // convert to the 12 gradient directions
      case 0: case 12: return  x + y; // the last four are repeated
      case 1: case 13: return -x + y;
      case 2: case 14: return  x - y;
      case 3: case 15: return -x - y;
      case 4:  return  x + z;
      case 5:  return -x + z;
      case 6:  return  x - z;
      case 7:  return -x - z;
      case 8:  return  y + z;
      case 9:  return -y + z;
      case 10: return  y - z;
      case 11: return -y - z;
    }
  }
  
  // 1D Perlin Noise
  noise1d(x) {
    // implementation ref: // ref: https://mrl.cs.nyu.edu/~perlin/noise/
    // a fade function for smoother interpolation - you can pick any cubic function
    const fade = (t) => { return t * t * t * (t * (t * 6 - 15) + 10)} ;
    // a linear interpolation function
    const interpolate = (src, dst, t) => { return src * t + dst * (1 - t) };
    // noise generation
    const ix = Math.floor(x) & 255; // for an input x, compute an index within [0, 255]
    const ixx = (ix + 1) & 255; // get the next index
    x -= Math.floor(x); // clamp the coordiantes to the cell
    let t = fade(x); // comptue the fade curve for weighted sum
    let src = this._permutation[ix]; // get the src hash value
    let dst = this._permutation[ixx]; // get the dst hash value
    let srcGrad = this.gradient(src, x); // get the src gradient value
    let dstGrad = this.gradient(dst, x - 1); // get the dst gradient value, note here, shift the value by 1
    return interpolate(srcGrad, dstGrad, t); // intepolate using the fade value
  }
  
  // 2D Perlin Noise
  noise2d(x, y) {
    // fade function for smooth interpolation
    const fade = (t) => { return t * t * t * (t * (t * 6 - 15) + 10) };
  
    // linear interpolation
    const interpolate = (src, dst, t) => { return src * t + dst * (1 - t) };
  
    // simplified gradient function for 2D
    const gradient = (hash, x, y) => {
      const h = hash & 3; // only 4 directions
      const u = h & 1 ? x : -x;
      const v = h & 2 ? y : -y;
      return u + v;
    };
  
    // hash coordinates for corners
    const ix = Math.floor(x) & 255;
    const ixx = (ix + 1) & 255;
    const iy = Math.floor(y) & 255;
    const iyy = (iy + 1) & 255;
  
    // local coordinates within the cell
    x -= Math.floor(x);
    y -= Math.floor(y);
  
    // fade curves for interpolation
    let tx = fade(x);
    let ty = fade(y);
  
    // hash values for four corners
    let a = this._permutation[ix] + iy;
    let b = this._permutation[ixx] + iy;
  
    // gradients at the corners
    let grad00 = gradient(this._permutation[a], x, y);
    let grad10 = gradient(this._permutation[b], x - 1, y);
    let grad01 = gradient(this._permutation[a + 1], x, y - 1);
    let grad11 = gradient(this._permutation[b + 1], x - 1, y - 1);
  
    // bilinear interpolation
    let interpX1 = interpolate(grad00, grad10, tx);
    let interpX2 = interpolate(grad01, grad11, tx);
    return interpolate(interpX1, interpX2, ty);
  }
  
  
  // 3D Perlin Noise
  noise3d(x, y, z) {
    // fade function for smooth interpolation
    const fade = (t) => { return t * t * t * (t * (t * 6 - 15) + 10) };

    // linear interpolation
    const interpolate = (src, dst, t) => { return src * t + dst * (1 - t) };

    // simplified gradient function for 3D
    const gradient = (hash, x, y, z) => {
      const h = hash & 15; // pick from 16 directions
      const u = h < 8 ? x : y;
      const v = h < 4 ? y : (h === 12 || h === 14 ? x : z);
      return ((h & 1) === 0 ? u : -u) + ((h & 2) === 0 ? v : -v);
    };

    // hash coordinates for corners
    const ix = Math.floor(x) & 255;
    const ixx = (ix + 1) & 255;
    const iy = Math.floor(y) & 255;
    const iyy = (iy + 1) & 255;
    const iz = Math.floor(z) & 255;
    const izz = (iz + 1) & 255;

    // local coordinates within the cell
    x -= Math.floor(x);
    y -= Math.floor(y);
    z -= Math.floor(z);

    // fade curves for interpolation
    let tx = fade(x);
    let ty = fade(y);
    let tz = fade(z);

    // hash values for the 8 cube corners
    const p = this._permutation;
    const A  = p[ix] + iy,    AA = p[A] + iz,    AB = p[A + 1] + iz;
    const B  = p[ixx] + iy,   BA = p[B] + iz,    BB = p[B + 1] + iz;

    // gradients at cube corners
    const grad000 = gradient(p[AA],     x,     y,     z);
    const grad100 = gradient(p[BA],     x-1,   y,     z);
    const grad010 = gradient(p[AB],     x,     y-1,   z);
    const grad110 = gradient(p[BB],     x-1,   y-1,   z);
    const grad001 = gradient(p[AA + 1], x,     y,     z-1);
    const grad101 = gradient(p[BA + 1], x-1,   y,     z-1);
    const grad011 = gradient(p[AB + 1], x,     y-1,   z-1);
    const grad111 = gradient(p[BB + 1], x-1,   y-1,   z-1);

    // interpolate along x
    const lerpX00 = interpolate(grad000, grad100, tx);
    const lerpX10 = interpolate(grad010, grad110, tx);
    const lerpX01 = interpolate(grad001, grad101, tx);
    const lerpX11 = interpolate(grad011, grad111, tx);

    // interpolate along y
    const lerpY0 = interpolate(lerpX00, lerpX10, ty);
    const lerpY1 = interpolate(lerpX01, lerpX11, ty);

    // final interpolate along z
    return interpolate(lerpY0, lerpY1, tz);
  }

  
  
  // 2D Octave Perlin Noise
  octaveNoise2d(x, y, freq = 0.005, A = 1, H = 0.5, octaves = 4, lacunarity = 2) {
    let noise = 0;
    let maxVal = 0;
    let frequency = freq;
  
    for (let i = 0; i < octaves; i++) {
      let gain = Math.pow(freq,-H * i);
      A = A*gain;
      maxVal += A;
      noise += this.noise2d(x * frequency, y * frequency) * A;
      frequency *= lacunarity;
    }
  
    return noise / maxVal;
  }
  
}
