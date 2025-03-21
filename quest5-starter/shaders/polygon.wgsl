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

struct Mouse {
  pos: vec2f
};

struct Vertex {
  pos: vec2f
};

@group(0) @binding(0) var<storage> mouse: Mouse;
@group(0) @binding(1) var<storage> vertices: array<Vertex>;
@group(0) @binding(2) var<storage, read_write> wind : atomic<i32>;


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

@vertex // this compute the scene coordinate of each input vertex
fn vertexMain(@location(0) pos: vec2f) -> @builtin(position) vec4f {
  return vec4f(pos, 0, 1); // (pos, Z, W) = (X, Y, Z, W)
}

@fragment // this compute the color of each pixel
fn fragmentMain() -> @location(0) vec4f {
  return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
}

@compute @workgroup_size(256)
fn computeMain(@builtin(global_invocation_id) global_id: vec3u) {
    let i = global_id.x;

    if (i < arrayLength(&vertices)-1) {
      // vertices 
      var v1 = vertices[i].pos;
      var v2 = vertices[i+1].pos;

      // mouse
      var mouse = mouse.pos;
      var mouseX = mouse[0];
      var mouseY = mouse[1];
    
      // will a horizontal line from the point cut this edge?
      if (mouseX <= v1[0] || mouseX <= v2[0]) {
        if ( (mouseY <= v1[1] && mouseY >= v2[1]) ||
              (mouseY <= v2[1] && mouseY >= v1[1]) ) {
              // check area
              if (isInside(v1,v2,mouse)) {
                atomic_add(wind, 1);
              } else {
                atomic_add(wind, -1);
              }
          }
      }
    }
}