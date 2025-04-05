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

struct tint_symbol_18 {
  /* @offset(0) */
  tint_symbol_19 : vec4f,
  /* @offset(16) */
  tint_symbol_20 : vec4f,
}

var<private> tint_symbol_22_1 : vec2f;

var<private> tint_symbol_20_1 : vec4f;

var<private> tint_symbol_19_1 = vec4f();

var<private> tint_symbol_20_2 = vec4f();

var<private> tint_symbol_27_1 : vec4f;

var<private> tint_symbol_20_3 : vec4f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

fn tint_symbol_9(tint_symbol_10 : tint_symbol, tint_symbol_11 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_1) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_2)), ((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_2) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_1)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_3) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_4)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_1)) - (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_2)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_4) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_3)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_2)) + (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_1)));
}

fn tint_symbol_12(tint_symbol_10_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_10_1.tint_symbol_1, -(tint_symbol_10_1.tint_symbol_2), -(tint_symbol_10_1.tint_symbol_3), -(tint_symbol_10_1.tint_symbol_4));
}

fn tint_symbol_13(tint_symbol_14 : tint_symbol, tint_symbol_15 : tint_symbol) -> tint_symbol {
  let x_89 = tint_symbol_12(tint_symbol_15);
  let x_90 = tint_symbol_9(tint_symbol_14, x_89);
  let x_91 = tint_symbol_9(tint_symbol_15, x_90);
  return x_91;
}

fn tint_symbol_16(tint_symbol_14_1 : vec2f, tint_symbol_15_1 : tint_symbol) -> vec2f {
  let x_97 = tint_symbol_13(tint_symbol(0.0f, 1.0f, tint_symbol_14_1.x, tint_symbol_14_1.y), tint_symbol_15_1);
  return vec2f((x_97.tint_symbol_3 / x_97.tint_symbol_2), (x_97.tint_symbol_4 / x_97.tint_symbol_2));
}

fn tint_symbol_21_inner(tint_symbol_22 : vec2f, tint_symbol_20 : vec4f) -> tint_symbol_18 {
  var tint_symbol_23 = tint_symbol_18(vec4f(), vec4f());
  let x_126 = tint_symbol_8.inner.tint_symbol_6;
  let x_121 = tint_symbol_16(tint_symbol_22, x_126);
  let x_131 = (x_121 * tint_symbol_8.inner.tint_symbol_7);
  tint_symbol_23.tint_symbol_19 = vec4f(x_131.x, x_131.y, 0.0f, 1.0f);
  tint_symbol_23.tint_symbol_20 = tint_symbol_20;
  let x_138 = tint_symbol_23;
  return x_138;
}

fn tint_symbol_21_1() {
  let x_144 = tint_symbol_22_1;
  let x_145 = tint_symbol_20_1;
  let x_143 = tint_symbol_21_inner(x_144, x_145);
  tint_symbol_19_1 = x_143.tint_symbol_19;
  tint_symbol_20_2 = x_143.tint_symbol_20;
  return;
}

struct tint_symbol_21_out {
  @builtin(position)
  tint_symbol_19_1_1 : vec4f,
  @location(0)
  tint_symbol_20_2_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_22_1_param : vec2f, @location(1) tint_symbol_20_1_param : vec4f) -> tint_symbol_21_out {
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_20_1 = tint_symbol_20_1_param;
  tint_symbol_21_1();
  return tint_symbol_21_out(tint_symbol_19_1, tint_symbol_20_2);
}

fn tint_symbol_26_inner(tint_symbol_27 : vec4f, tint_symbol_20_4 : vec4f) -> vec4f {
  return tint_symbol_20_4;
}

fn tint_symbol_26_1() {
  let x_156 = tint_symbol_27_1;
  let x_157 = tint_symbol_20_3;
  let x_155 = tint_symbol_26_inner(x_156, x_157);
  value = x_155;
  return;
}

struct tint_symbol_26_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@builtin(position) tint_symbol_27_1_param : vec4f, @location(0) tint_symbol_20_3_param : vec4f) -> tint_symbol_26_out {
  tint_symbol_27_1 = tint_symbol_27_1_param;
  tint_symbol_20_3 = tint_symbol_20_3_param;
  tint_symbol_26_1();
  return tint_symbol_26_out(value);
}
