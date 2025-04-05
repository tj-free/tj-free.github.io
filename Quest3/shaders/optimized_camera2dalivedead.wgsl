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
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_17_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

alias RTArr = array<u32>;

struct tint_symbol_18_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_20 {
  /* @offset(0) */
  tint_symbol_21 : vec4f,
  /* @offset(16) */
  tint_symbol_22 : f32,
}

var<private> tint_symbol_21_1 : vec2f;

var<private> tint_symbol_24_1 : u32;

var<private> tint_symbol_21_2 = vec4f();

var<private> tint_symbol_22_1 = 0.0f;

var<private> tint_symbol_22_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_31_1 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

@group(0) @binding(1) var<storage> tint_symbol_18 : tint_symbol_18_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_19 : tint_symbol_18_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_98 = tint_symbol_11(tint_symbol_14);
  let x_99 = tint_symbol_8(tint_symbol_13, x_98);
  let x_100 = tint_symbol_8(tint_symbol_14, x_99);
  return x_100;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_106 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_106.tint_symbol_3 / x_106.tint_symbol_2), (x_106.tint_symbol_4 / x_106.tint_symbol_2));
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_23_inner(tint_symbol_21 : vec2f, tint_symbol_24 : u32) -> tint_symbol_20 {
  var x_153 = vec2f();
  var x_161 = vec2f();
  var x_166 = vec2f();
  var x_173 = vec2f();
  var tint_symbol_35 = tint_symbol_20(vec4f(), 0.0f);
  let x_146 = tint_mod(tint_symbol_24, 1000u);
  let x_147 = tint_div(tint_symbol_24, 1000u);
  let x_151 = f32(1000u);
  let x_158 = (1.0f * 2.0f);
  let x_159 = f32(1000u);
  let x_163 = -(1.0f);
  let x_171 = ((x_158 / f32(1000u)) * 0.5f);
  let x_180 = tint_symbol_17.inner.tint_symbol_6;
  let x_176 = tint_symbol_11(x_180);
  let x_181 = tint_symbol_15(((tint_symbol_21 / vec2f(x_159)) + ((vec2f(x_163) + ((vec2f(f32(x_146), f32(x_147)) / vec2f(x_151)) * x_158)) + vec2f(x_171))), x_176);
  let x_185 = (x_181 * tint_symbol_17.inner.tint_symbol_7);
  tint_symbol_35.tint_symbol_21 = vec4f(x_185.x, x_185.y, 0.0f, 1.0f);
  tint_symbol_35.tint_symbol_22 = f32(tint_symbol_18.inner[tint_symbol_24]);
  let x_200 = tint_symbol_35;
  return x_200;
}

fn tint_symbol_23_1() {
  let x_206 = tint_symbol_21_1;
  let x_207 = tint_symbol_24_1;
  let x_205 = tint_symbol_23_inner(x_206, x_207);
  tint_symbol_21_2 = x_205.tint_symbol_21;
  tint_symbol_22_1 = x_205.tint_symbol_22;
  return;
}

struct tint_symbol_23_out {
  @builtin(position)
  tint_symbol_21_2_1 : vec4f,
  @location(0)
  tint_symbol_22_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_21_1_param : vec2f, @builtin(instance_index) tint_symbol_24_1_param : u32) -> tint_symbol_23_out {
  tint_symbol_21_1 = tint_symbol_21_1_param;
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_23_1();
  return tint_symbol_23_out(tint_symbol_21_2, tint_symbol_22_1);
}

fn tint_symbol_36_inner(tint_symbol_22 : f32) -> vec4f {
  return (vec4f(1.0f) * tint_symbol_22);
}

fn tint_symbol_36_1() {
  let x_219 = tint_symbol_22_2;
  let x_218 = tint_symbol_36_inner(x_219);
  value = x_218;
  return;
}

struct tint_symbol_36_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_22_2_param : f32) -> tint_symbol_36_out {
  tint_symbol_22_2 = tint_symbol_22_2_param;
  tint_symbol_36_1();
  return tint_symbol_36_out(value);
}

fn tint_symbol_37_inner(tint_symbol_31 : vec3u) {
  let x_224 = tint_symbol_31.x;
  let x_225 = tint_symbol_31.y;
  let x_230 = tint_symbol_18.inner[((x_225 * 1000u) + (x_224 + 1u))];
  let x_235 = tint_symbol_18.inner[((x_225 * 1000u) + (x_224 - 1u))];
  let x_241 = tint_symbol_18.inner[(((x_225 + 1u) * 1000u) + x_224)];
  let x_247 = tint_symbol_18.inner[(((x_225 - 1u) * 1000u) + x_224)];
  let x_250 = ((x_225 * 1000u) + x_224);
  let x_251 = tint_mod((x_250 + (((x_230 + x_235) + x_241) + x_247)), 2u);
  if ((x_251 == 1u)) {
    tint_symbol_19.inner[x_250] = 1u;
  } else {
    tint_symbol_19.inner[x_250] = 0u;
  }
  return;
}

fn tint_symbol_37_1() {
  let x_263 = tint_symbol_31_1;
  tint_symbol_37_inner(x_263);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_31_1_param : vec3u) {
  tint_symbol_31_1 = tint_symbol_31_1_param;
  tint_symbol_37_1();
}
