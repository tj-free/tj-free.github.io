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

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
}

struct tint_symbol_3_block {
  /* @offset(0) */
  inner : tint_symbol,
}

struct tint_symbol_2 {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
}

alias RTArr = array<tint_symbol_2>;

struct tint_symbol_4_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_5_block_atomic {
  /* @offset(0) */
  inner : atomic<i32>,
}

struct tint_symbol_5_block {
  /* @offset(0) */
  inner : i32,
}

var<private> tint_symbol_1_1 : vec2f;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_17_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_3 : tint_symbol_3_block;

@group(0) @binding(1) var<storage> tint_symbol_4 : tint_symbol_4_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_5 : tint_symbol_5_block_atomic;

fn tint_symbol_6(tint_symbol_7 : vec2f) -> vec4f {
  return vec4f(0.0f, 1.0f, tint_symbol_7.y, -(tint_symbol_7.x));
}

fn tint_symbol_8(tint_symbol_9 : vec2f, tint_symbol_10 : vec2f, tint_symbol_7_1 : vec2f) -> i32 {
  var tint_return_flag = false;
  var tint_return_value = 0i;
  let x_53 = tint_symbol_6(vec2f((tint_symbol_10.x - tint_symbol_9.x), (tint_symbol_10.y - tint_symbol_9.y)));
  let x_61 = tint_symbol_6(vec2f((tint_symbol_7_1.x - tint_symbol_9.x), (tint_symbol_7_1.y - tint_symbol_9.y)));
  if (((((tint_symbol_10.x - tint_symbol_9.x) * (tint_symbol_7_1.y - tint_symbol_9.y)) - ((tint_symbol_10.y - tint_symbol_9.y) * (tint_symbol_7_1.x - tint_symbol_9.x))) > 0.0f)) {
    tint_return_flag = true;
    tint_return_value = 1i;
  } else {
    tint_return_flag = true;
    tint_return_value = 0i;
  }
  let x_89 = tint_return_value;
  return x_89;
}

fn tint_symbol_14_inner(tint_symbol_1 : vec2f) -> vec4f {
  return vec4f(tint_symbol_1.x, tint_symbol_1.y, 0.0f, 1.0f);
}

fn tint_symbol_14_1() {
  let x_101 = tint_symbol_1_1;
  let x_100 = tint_symbol_14_inner(x_101);
  value = x_100;
  return;
}

struct tint_symbol_14_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_1_1_param : vec2f) -> tint_symbol_14_out {
  tint_symbol_1_1 = tint_symbol_1_1_param;
  tint_symbol_14_1();
  return tint_symbol_14_out(value);
}

fn tint_symbol_15_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_15_1() {
  let x_111 = tint_symbol_15_inner();
  value_1 = x_111;
  return;
}

struct tint_symbol_15_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_15_out {
  tint_symbol_15_1();
  return tint_symbol_15_out(value_1);
}

fn tint_symbol_16_inner(tint_symbol_17 : vec3u) {
  var tint_symbol_10_1 = vec2f();
  var tint_symbol_19 = vec2f();
  var tint_symbol_3_1 = vec2f();
  var tint_symbol_20 = 0.0f;
  var tint_symbol_21 = 0.0f;
  var x_116 : u32;
  var x_153 : bool;
  var x_154 : bool;
  x_116 = tint_symbol_17.x;
  if ((x_116 < (arrayLength(&(tint_symbol_4.inner)) - 1u))) {
    tint_symbol_10_1 = tint_symbol_4.inner[x_116].tint_symbol_1;
    tint_symbol_19 = tint_symbol_4.inner[(x_116 + 1u)].tint_symbol_1;
    tint_symbol_3_1 = tint_symbol_3.inner.tint_symbol_1;
    tint_symbol_20 = tint_symbol_3_1[0i];
    tint_symbol_21 = tint_symbol_3_1.y;
    let x_147 = (tint_symbol_20 <= tint_symbol_10_1[0i]);
    x_154 = x_147;
    if (x_147) {
    } else {
      x_153 = (tint_symbol_20 <= tint_symbol_19[0i]);
      x_154 = x_153;
    }
    var x_166 : bool;
    var x_167 : bool;
    var x_180 : bool;
    var x_181 : bool;
    if (x_154) {
      let x_160 = (tint_symbol_21 <= tint_symbol_10_1.y);
      x_167 = x_160;
      if (x_160) {
        x_166 = (tint_symbol_21 >= tint_symbol_19.y);
        x_167 = x_166;
      }
      var x_179 : bool;
      x_181 = x_167;
      if (x_167) {
      } else {
        let x_173 = (tint_symbol_21 <= tint_symbol_19.y);
        x_180 = x_173;
        if (x_173) {
          x_179 = (tint_symbol_21 >= tint_symbol_10_1.y);
          x_180 = x_179;
        }
        x_181 = x_180;
      }
      if (x_181) {
        let x_185 = tint_symbol_10_1;
        let x_186 = tint_symbol_19;
        let x_187 = tint_symbol_3_1;
        let x_184 = tint_symbol_8(x_185, x_186, x_187);
        if ((x_184 == 1i)) {
          let x_192 = atomicAdd(&(tint_symbol_5.inner), 1i);
        } else {
          let x_196 = atomicAdd(&(tint_symbol_5.inner), -1i);
        }
      }
    }
  }
  return;
}

fn tint_symbol_16_1() {
  let x_203 = tint_symbol_17_1;
  tint_symbol_16_inner(x_203);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_17_1_param : vec3u) {
  tint_symbol_17_1 = tint_symbol_17_1_param;
  tint_symbol_16_1();
}
