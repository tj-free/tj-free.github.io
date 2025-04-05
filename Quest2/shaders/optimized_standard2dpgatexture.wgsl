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

struct tint_symbol_8_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

struct tint_symbol_20 {
  /* @offset(0) */
  tint_symbol_21 : vec4f,
  /* @offset(16) */
  tint_symbol_22 : vec2f,
}

alias Arr = array<vec2f, 6u>;

var<private> tint_symbol_24_1 : vec2f;

var<private> tint_symbol_25_1 : u32;

var<private> tint_symbol_21_1 = vec4f();

var<private> tint_symbol_22_1 = vec2f();

var<private> tint_symbol_30_1 : vec4f;

var<private> tint_symbol_22_2 : vec2f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

@group(0) @binding(1) var tint_symbol_9 : texture_2d<f32>;

@group(0) @binding(2) var tint_symbol_10 : sampler;

fn tint_symbol_11(tint_symbol_12 : tint_symbol, tint_symbol_13 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_1) - (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_2)), ((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_2) + (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_1)), ((((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_3) + (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_4)) + (tint_symbol_12.tint_symbol_3 * tint_symbol_13.tint_symbol_1)) - (tint_symbol_12.tint_symbol_4 * tint_symbol_13.tint_symbol_2)), ((((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_4) - (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_3)) + (tint_symbol_12.tint_symbol_3 * tint_symbol_13.tint_symbol_2)) + (tint_symbol_12.tint_symbol_4 * tint_symbol_13.tint_symbol_1)));
}

fn tint_symbol_14(tint_symbol_12_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_12_1.tint_symbol_1, -(tint_symbol_12_1.tint_symbol_2), -(tint_symbol_12_1.tint_symbol_3), -(tint_symbol_12_1.tint_symbol_4));
}

fn tint_symbol_15(tint_symbol_16 : tint_symbol, tint_symbol_17 : tint_symbol) -> tint_symbol {
  let x_99 = tint_symbol_14(tint_symbol_17);
  let x_100 = tint_symbol_11(tint_symbol_16, x_99);
  let x_101 = tint_symbol_11(tint_symbol_17, x_100);
  return x_101;
}

fn tint_symbol_18(tint_symbol_16_1 : vec2f, tint_symbol_17_1 : tint_symbol) -> vec2f {
  let x_107 = tint_symbol_15(tint_symbol(0.0f, 1.0f, tint_symbol_16_1.x, tint_symbol_16_1.y), tint_symbol_17_1);
  return vec2f((x_107.tint_symbol_3 / x_107.tint_symbol_2), (x_107.tint_symbol_4 / x_107.tint_symbol_2));
}

const x_149 = vec2f(1.0f);

fn tint_symbol_23_inner(tint_symbol_24 : vec2f, tint_symbol_25 : u32) -> tint_symbol_20 {
  var tint_symbol_26 = tint_symbol_20(vec4f(), vec2f());
  var tint_symbol_22 = array<vec2f, 6u>();
  let x_135 = tint_symbol_8.inner.tint_symbol_6;
  let x_131 = tint_symbol_18(tint_symbol_24, x_135);
  let x_140 = (x_131 * tint_symbol_8.inner.tint_symbol_7);
  tint_symbol_26.tint_symbol_21 = vec4f(x_140.x, x_140.y, 0.0f, 1.0f);
  tint_symbol_22 = Arr(vec2f(0.0f, 1.0f), x_149, vec2f(), vec2f(), vec2f(1.0f, 0.0f), x_149);
  tint_symbol_26.tint_symbol_22 = tint_symbol_22[tint_symbol_25];
  let x_159 = tint_symbol_26;
  return x_159;
}

fn tint_symbol_23_1() {
  let x_165 = tint_symbol_24_1;
  let x_166 = tint_symbol_25_1;
  let x_164 = tint_symbol_23_inner(x_165, x_166);
  tint_symbol_21_1 = x_164.tint_symbol_21;
  tint_symbol_22_1 = x_164.tint_symbol_22;
  return;
}

struct tint_symbol_23_out {
  @builtin(position)
  tint_symbol_21_1_1 : vec4f,
  @location(0)
  tint_symbol_22_1_1 : vec2f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_24_1_param : vec2f, @builtin(vertex_index) tint_symbol_25_1_param : u32) -> tint_symbol_23_out {
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_25_1 = tint_symbol_25_1_param;
  tint_symbol_23_1();
  return tint_symbol_23_out(tint_symbol_21_1, tint_symbol_22_1);
}

fn tint_symbol_29_inner(tint_symbol_30 : vec4f, tint_symbol_22_3 : vec2f) -> vec4f {
  let x_174 = textureSample(tint_symbol_9, tint_symbol_10, tint_symbol_22_3);
  return x_174;
}

fn tint_symbol_29_1() {
  let x_182 = tint_symbol_30_1;
  let x_183 = tint_symbol_22_2;
  let x_181 = tint_symbol_29_inner(x_182, x_183);
  value = x_181;
  return;
}

struct tint_symbol_29_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@builtin(position) tint_symbol_30_1_param : vec4f, @location(0) tint_symbol_22_2_param : vec2f) -> tint_symbol_29_out {
  tint_symbol_30_1 = tint_symbol_30_1_param;
  tint_symbol_22_2 = tint_symbol_22_2_param;
  tint_symbol_29_1();
  return tint_symbol_29_out(value);
}
