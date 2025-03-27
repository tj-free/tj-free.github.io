/* 
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

struct Particle {
  p: vec2f,   // the particle position
  v: vec2f,   // the particle velocity
  dv: vec2f,  // the velocity update
  m: f32,     // the particle size
  id: f32,
  dummy1: vec4f,
  dummy2: vec2f,
  dummy3: f32,
  parent: f32,
}

struct Spring {
  pts: vec2f, // the indices of two connected partilces
  l: f32,     // the original spring length
  s: f32      // the stiffness coefficient
}

struct Vertex {
  p: vec2f
}

// TODO 4: bind the storage buffer variables
@group(0) @binding(0) var<storage> particlesIn: array<Particle>;
@group(0) @binding(1) var<storage,read_write> particlesOut: array<Particle>;
@group(0) @binding(2) var<storage> springsIn: array<Spring>;
@group(0) @binding(3) var<storage> vertices: array<Vertex>;



@vertex
fn vertexMain(@builtin(instance_index) idx: u32, @builtin(vertex_index) vIdx: u32) -> @builtin(position) vec4f {
  // draw circles to represent a particle
  let particle = particlesIn[idx];
  let r = particle.m;
  let pi = 3.14159265;
  let theta = 2. * pi / 8 * f32(vIdx);
  let x = cos(theta) * r;
  let y = sin(theta) * r;
  return vec4f(vec2f(x + particle.p[0], y + particle.p[1]), 0, 1);
}

@fragment
fn fragmentMain() -> @location(0) vec4f {
  return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
}

@vertex
fn vertexSpringMain(@builtin(instance_index) idx: u32, @builtin(vertex_index) vIdx: u32) -> @builtin(position) vec4f {
  //draw lines to present a spring - here is an ugly hack using an offset, which does not visualize nicely...
  // for better apperance, use texture mapping, by now, you should know how to use vertex_index/instance_index to draw the shapes you like in the vertex shader
  
  return vec4f(particlesIn[u32(springsIn[idx].pts[vIdx % 2])].p + 0.001 * f32(vIdx / 2), 0, 1);
}

@fragment
fn fragmentSpringMain() -> @location(0) vec4f {
  return vec4f(255.f/255, 163.f/255, 0.f/255, 1); // (R, G, B, A)
}

fn createPoint(p: vec2f) -> vec4f {
  return vec4f(0, 1, p[1], -p[0]);
}

fn isInside(v0: vec2f, v1: vec2f, p: vec2f) -> i32 {
  let edge = createPoint(vec2f(v1[0] - v0[0], v1[1] - v0[1]));
  let point = createPoint(vec2f(p[0] - v0[0], p[1] - v0[1]));
  let inside = (v1[0] - v0[0]) * (p[1] - v0[1]) - (v1[1] - v0[1]) * (p[0] - v0[0]) > 0;
  if (inside) {
    return 1;
  } else {
    return 0;
  }
}

@compute @workgroup_size(256)
fn computeMain(@builtin(global_invocation_id) global_id: vec3u) {
  let idx = global_id.x;

  if (idx < arrayLength(&springsIn)) {
    // SPRING FORCE (Hooke's Law)
    var spring = springsIn[idx];
    let aIdx = u32(spring.pts[0]);
    let bIdx = u32(spring.pts[1]);

    // get particle data from the ends of the spring
    let ptA = particlesIn[aIdx].p;
    let ptB = particlesIn[bIdx].p;
    let massA = particlesIn[aIdx].m;
    let massB = particlesIn[bIdx].m;
    var vA = particlesIn[aIdx].dv;
    var vB = particlesIn[bIdx].dv;

    // BOUNDARY FORCE
    var boundaryForce = 1.0;
    var wind = 0;
    for (var j: u32 = 0; j < arrayLength(&vertices); j++) {
      // vertices 
      var v1 = vertices[j].p;
      var v2 = vertices[j+1].p;

      // particle
      var pX = ptA[0];
      var pY = ptA[1];
    
      // will a horizontal line from the point cut this edge?
      if (pX <= v1[0] || pX <= v2[0]) {
        if ( (pY <= v1[1] && pY >= v2[1]) ||
              (pY <= v2[1] && pY >= v1[1]) ) {
              // check area
              if (isInside(v1,v2,ptA) == 1) {
                wind = wind + 1;
              } else {
                wind = wind - 1;
              }
          }
      }

      // particle 2
      pX = ptB[0];
      pY = ptB[1];

      // will a horizontal line from the point cut this edge?
      if (pX <= v1[0] || pX <= v2[0]) {
        if ( (pY <= v1[1] && pY >= v2[1]) ||
            (pY <= v2[1] && pY >= v1[1]) ) {
            // check area
            if (isInside(v1,v2,ptB) == 1) {
              wind = wind + 1;
            } else {
              wind = wind - 1;
            }
        }
      }

      if (wind == 0) {
        // not inside, increase the attraction toward parent 
        boundaryForce = 100.0;
      }

    }

    let diff = ptB - ptA;
    let dist = length(diff);
    let force = spring.s * (dist - spring.l) * boundaryForce;
    
    let dir = normalize(diff);
    if (massA > 0) { vA += (force * dir) / (massA * 1000); }
    if (massB > 0) { vB -= (force * dir) / (massB * 1000); }
    
    particlesOut[aIdx].dv = vA;
    particlesOut[bIdx].dv = vB;
    particlesOut[aIdx].m = massA;
    particlesOut[bIdx].m = massB;
  }
  
  if (idx < arrayLength(&particlesIn)) {
    var forceRepulsion = vec2f(0.0, 0.0);
    let ptA = particlesIn[idx].p;
    
    // REPULSIVE FORCE (Coulomb's Law)
    for (var j: u32 = 0; j < arrayLength(&particlesIn); j++) {
      if (j == idx) { continue; } // Skip self-interaction

      let ptB = particlesIn[j].p;
      let diff = ptA - ptB;
      let dist = max(length(diff), 0.01); // Avoid division by zero

      let repulsionStrength = 0.0005;
      let repulseForce = repulsionStrength / (dist * dist); // Inverse square law
      
      forceRepulsion += repulseForce * normalize(diff);
    }
    particlesOut[idx].dv += forceRepulsion * 0.1; // Scale down repulsion 
  }
  
}

@compute @workgroup_size(256)
fn updateMain(@builtin(global_invocation_id) global_id: vec3u) {
  let idx = global_id.x;
  
  if (idx < arrayLength(&particlesIn)) {
    var particle = particlesIn[idx];
    if (particle.id == 0) {
      //anchor root
      particlesOut[idx].p = particlesIn[idx].p;
    } else {
      particlesOut[idx].p = particle.p + particle.v + particlesOut[idx].dv; // update the posistion
      let maxBounds = vec2f(1.0, 1.0);
      particlesOut[idx].p = clamp(particlesOut[idx].p, -maxBounds, maxBounds);
    }
    
    particlesOut[idx].v = (particle.v + particlesOut[idx].dv) * 0.85;     // Increase damping
    particlesOut[idx].dv = vec2f(0, 0);                                   // reset delta velocity to zeros
    particlesOut[idx].m = particle.m;                                     // copy the mass over
  }
}

