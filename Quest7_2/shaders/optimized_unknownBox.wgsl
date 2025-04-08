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
  /* @offset(16) */
  tint_symbol_5 : f32,
  /* @offset(20) */
  tint_symbol_6 : f32,
  /* @offset(24) */
  tint_symbol_7 : f32,
  /* @offset(28) */
  tint_symbol_8 : f32,
  /* @offset(32) */
  tint_symbol_9 : f32,
  /* @offset(36) */
  tint_symbol_10 : f32,
  /* @offset(40) */
  tint_symbol_11 : f32,
  /* @offset(44) */
  tint_symbol_12 : f32,
  /* @offset(48) */
  tint_symbol_13 : f32,
  /* @offset(52) */
  tint_symbol_14 : f32,
  /* @offset(56) */
  tint_symbol_15 : f32,
  /* @offset(60) */
  tint_symbol_16 : f32,
}

struct tint_symbol_63 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_65 : vec2f,
  /* @offset(72) */
  tint_symbol_66 : vec2f,
}

struct tint_symbol_70_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
}

struct tint_symbol_71_block {
  /* @offset(0) */
  inner : tint_symbol_67,
}

alias RTArr = array<f32>;

struct tint_symbol_72_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_124_1 : vec3u;

var<private> tint_symbol_124_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

fn tint_ftoi(v : vec3f) -> vec3i {
  return select(vec3i(2147483647i), select(vec3i(v), vec3i(i32(-2147483648)), (v < vec3f(-2147483648.0f))), (v < vec3f(2147483520.0f)));
}

fn tint_ftoi_1(v_1 : f32) -> i32 {
  return select(2147483647i, select(i32(v_1), i32(-2147483648), (v_1 < -2147483648.0f)), (v_1 < 2147483520.0f));
}

fn tint_symbol_17(tint_symbol_18 : tint_symbol, tint_symbol_19 : tint_symbol) -> tint_symbol {
  var tint_symbol_20 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  tint_symbol_20.tint_symbol_1 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_1) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_2 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_2) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_3 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_3) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_4 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_4) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_5 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_5) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_6 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_6) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_7 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_7) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_11)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_8 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_8) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_9 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_9) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_10 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_10) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_11 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_11) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_12 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_12) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_13 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_13) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_14 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_14) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_1));
  tint_symbol_20.tint_symbol_15 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_15) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_6)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_16 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_16) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_1));
  let x_849 = tint_symbol_20;
  return x_849;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_885 = tint_symbol_21(tint_symbol_24);
  let x_886 = tint_symbol_17(tint_symbol_23, x_885);
  let x_887 = tint_symbol_17(tint_symbol_24, x_886);
  return x_887;
}

fn tint_symbol_25(tint_symbol_24_1 : tint_symbol) -> f32 {
  var tint_symbol_26 = 0.0f;
  tint_symbol_26 = 0.0f;
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_1 * tint_symbol_24_1.tint_symbol_1));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_2 * tint_symbol_24_1.tint_symbol_2));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_3 * tint_symbol_24_1.tint_symbol_3));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_4 * tint_symbol_24_1.tint_symbol_4));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_5 * tint_symbol_24_1.tint_symbol_5));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_6 * tint_symbol_24_1.tint_symbol_6));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_7 * tint_symbol_24_1.tint_symbol_7));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_8 * tint_symbol_24_1.tint_symbol_8));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_9 * tint_symbol_24_1.tint_symbol_9));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_10 * tint_symbol_24_1.tint_symbol_10));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_11 * tint_symbol_24_1.tint_symbol_11));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_12 * tint_symbol_24_1.tint_symbol_12));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_13 * tint_symbol_24_1.tint_symbol_13));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_14 * tint_symbol_24_1.tint_symbol_14));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_15 * tint_symbol_24_1.tint_symbol_15));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_16 * tint_symbol_24_1.tint_symbol_16));
  let x_976 = tint_symbol_26;
  return sqrt(x_976);
}

fn tint_symbol_27(tint_symbol_28 : vec3f) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, (-(tint_symbol_28.x) / 2.0f), (-(tint_symbol_28.y) / 2.0f), (-(tint_symbol_28.z) / 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_29(tint_symbol_24_2 : tint_symbol) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, tint_symbol_24_2.tint_symbol_5, tint_symbol_24_2.tint_symbol_6, tint_symbol_24_2.tint_symbol_7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_30(tint_symbol_28_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, tint_symbol_28_1.z, -(tint_symbol_28_1.y), tint_symbol_28_1.x, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_34(tint_symbol_24_3 : tint_symbol) -> tint_symbol {
  var tint_return_flag = false;
  var tint_return_value = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  let x_1015 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1015 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1015), (tint_symbol_24_3.tint_symbol_2 / x_1015), (tint_symbol_24_3.tint_symbol_3 / x_1015), (tint_symbol_24_3.tint_symbol_4 / x_1015), (tint_symbol_24_3.tint_symbol_5 / x_1015), (tint_symbol_24_3.tint_symbol_6 / x_1015), (tint_symbol_24_3.tint_symbol_7 / x_1015), (tint_symbol_24_3.tint_symbol_8 / x_1015), (tint_symbol_24_3.tint_symbol_9 / x_1015), (tint_symbol_24_3.tint_symbol_10 / x_1015), (tint_symbol_24_3.tint_symbol_11 / x_1015), (tint_symbol_24_3.tint_symbol_12 / x_1015), (tint_symbol_24_3.tint_symbol_13 / x_1015), (tint_symbol_24_3.tint_symbol_14 / x_1015), (tint_symbol_24_3.tint_symbol_15 / x_1015), (tint_symbol_24_3.tint_symbol_16 / x_1015));
  }
  let x_1058 = tint_return_value;
  return x_1058;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1064 = tint_symbol_30(tint_symbol_28_2);
  let x_1065 = tint_symbol_34(x_1064);
  return tint_symbol(0.0f, x_1065.tint_symbol_2, x_1065.tint_symbol_3, x_1065.tint_symbol_4, -(((-(x_1065.tint_symbol_3) * tint_symbol_1.z) - (x_1065.tint_symbol_2 * tint_symbol_1.y))), -(((x_1065.tint_symbol_2 * tint_symbol_1.x) - (x_1065.tint_symbol_4 * tint_symbol_1.z))), -(((x_1065.tint_symbol_4 * tint_symbol_1.y) + (x_1065.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1103 = sin((tint_symbol_36 / 2.0f));
  let x_1105 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1103 * x_1105.tint_symbol_2), (x_1103 * x_1105.tint_symbol_3), (x_1103 * x_1105.tint_symbol_4), (x_1103 * x_1105.tint_symbol_5), (x_1103 * x_1105.tint_symbol_6), (x_1103 * x_1105.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_40(tint_symbol_24_4 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_24_4.tint_symbol_1, tint_symbol_24_4.tint_symbol_2, tint_symbol_24_4.tint_symbol_3, tint_symbol_24_4.tint_symbol_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_41(tint_symbol_23_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, -(tint_symbol_23_1.z), tint_symbol_23_1.y, -(tint_symbol_23_1.x), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_42(tint_symbol_23_2 : tint_symbol) -> vec3f {
  return vec3f((-(tint_symbol_23_2.tint_symbol_11) / tint_symbol_23_2.tint_symbol_8), (tint_symbol_23_2.tint_symbol_10 / tint_symbol_23_2.tint_symbol_8), (-(tint_symbol_23_2.tint_symbol_9) / tint_symbol_23_2.tint_symbol_8));
}

fn tint_symbol_43(tint_symbol_32 : vec3f, tint_symbol_28_4 : f32) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, tint_symbol_32.x, tint_symbol_32.y, tint_symbol_32.z, -(tint_symbol_28_4), 0.0f);
}

fn tint_symbol_44(tint_symbol_45 : vec3f, tint_symbol_46 : vec3f, tint_symbol_47 : vec3f) -> tint_symbol {
  let x_1269 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1269;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1298 : bool;
  var x_1299 : bool;
  var x_1304 : bool;
  var x_1305 : bool;
  var x_1310 : bool;
  var x_1311 : bool;
  let x_1278 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1284 = tint_symbol_42(x_1278);
  tint_symbol_58.tint_symbol_23 = x_1284;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1278.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1293 = tint_symbol_58.tint_symbol_53;
  x_1299 = x_1293;
  if (x_1293) {
    x_1298 = (abs(x_1278.tint_symbol_9) <= 0.00000000999999993923f);
    x_1299 = x_1298;
  }
  x_1305 = x_1299;
  if (x_1299) {
    x_1304 = (abs(x_1278.tint_symbol_10) <= 0.00000000999999993923f);
    x_1305 = x_1304;
  }
  x_1311 = x_1305;
  if (x_1305) {
    x_1310 = (abs(x_1278.tint_symbol_11) <= 0.00000000999999993923f);
    x_1311 = x_1310;
  }
  tint_symbol_58.tint_symbol_54 = x_1311;
  let x_1312 = tint_symbol_58;
  return x_1312;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1318 = tint_symbol_41(tint_symbol_23_3);
  let x_1319 = tint_symbol_22(x_1318, tint_symbol_24_5);
  let x_1320 = tint_symbol_42(x_1319);
  return x_1320;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1325 = tint_symbol_40(tint_symbol_24_6);
  let x_1326 = tint_symbol_41(tint_symbol_28_5);
  let x_1327 = tint_symbol_22(x_1326, x_1325);
  let x_1328 = tint_symbol_42(x_1327);
  return x_1328;
}

fn tint_symbol_74(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_75 = vec3f();
  let x_1336 = tint_symbol_70.inner.tint_symbol_64;
  let x_1333 = tint_symbol_61(tint_symbol_28_6, x_1336);
  tint_symbol_75 = x_1333;
  let x_1339 = tint_symbol_75;
  return x_1339;
}

fn tint_symbol_76(tint_symbol_77 : vec3f) -> vec3f {
  var tint_symbol_75_1 = vec3f();
  let x_1345 = tint_symbol_70.inner.tint_symbol_64;
  let x_1343 = tint_symbol_60(tint_symbol_77, x_1345);
  tint_symbol_75_1 = x_1343;
  let x_1347 = tint_symbol_75_1;
  return x_1347;
}

const x_1359 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_78(tint_symbol_79 : vec2i) {
  var tint_symbol_80 = vec4f();
  tint_symbol_80 = x_1359;
  let x_1362 = tint_symbol_80;
  textureStore(tint_symbol_73, tint_symbol_79, x_1362);
  return;
}

fn tint_symbol_81(tint_symbol_82 : vec2f, tint_symbol_83 : f32) -> vec2f {
  var tint_symbol_84 = vec2f();
  tint_symbol_84 = tint_symbol_82;
  if ((tint_symbol_82.x < 0.0f)) {
    tint_symbol_84.x = tint_symbol_83;
  } else {
    if ((tint_symbol_83 < tint_symbol_82.x)) {
      tint_symbol_84.y = tint_symbol_82.x;
      tint_symbol_84.x = tint_symbol_83;
    } else {
      if ((tint_symbol_82.y < 0.0f)) {
        tint_symbol_84.y = tint_symbol_83;
      } else {
        if ((tint_symbol_83 < tint_symbol_82.y)) {
          tint_symbol_84.y = tint_symbol_83;
        }
      }
    }
  }
  let x_1396 = tint_symbol_84;
  return x_1396;
}

fn tint_symbol_85(tint_symbol_86 : f32, tint_symbol_87 : vec2f, tint_symbol_88 : f32, tint_symbol_89 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_90 : vec2f) -> vec2f {
  var tint_symbol_91 = vec2f();
  tint_symbol_91 = tint_symbol_90;
  if ((abs(tint_symbol_89) > 0.00000000999999993923f)) {
    var x_1413 : f32;
    var x_1427 : bool;
    var x_1428 : bool;
    var x_1434 : bool;
    var x_1435 : bool;
    var x_1440 : bool;
    var x_1441 : bool;
    x_1413 = ((tint_symbol_86 - tint_symbol_88) / tint_symbol_89);
    if ((x_1413 > 0.0f)) {
      let x_1418 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1413));
      let x_1422 = (-(tint_symbol_87.x) < x_1418.x);
      x_1428 = x_1422;
      if (x_1422) {
        x_1427 = (x_1418.x < tint_symbol_87.x);
        x_1428 = x_1427;
      }
      x_1435 = x_1428;
      if (x_1428) {
        x_1434 = (-(tint_symbol_87.y) < x_1418.y);
        x_1435 = x_1434;
      }
      x_1441 = x_1435;
      if (x_1435) {
        x_1440 = (x_1418.y < tint_symbol_87.y);
        x_1441 = x_1440;
      }
      if (x_1441) {
        let x_1445 = tint_symbol_91;
        let x_1444 = tint_symbol_81(x_1445, x_1413);
        tint_symbol_91 = x_1444;
      }
    }
  }
  let x_1446 = tint_symbol_91;
  return x_1446;
}

fn tint_symbol_93(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_94 = vec2f();
  var x_1473 = vec4f();
  tint_symbol_94 = vec2f(-1.0f);
  let x_1472 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1482 = tint_symbol_94;
  let x_1475 = tint_symbol_85(x_1472.z, x_1472.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1482);
  tint_symbol_94 = x_1475;
  let x_1491 = tint_symbol_94;
  let x_1483 = tint_symbol_85(-(x_1472.z), x_1472.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1491);
  tint_symbol_94 = x_1483;
  let x_1500 = tint_symbol_94;
  let x_1492 = tint_symbol_85(-(x_1472.x), x_1472.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1500);
  tint_symbol_94 = x_1492;
  let x_1508 = tint_symbol_94;
  let x_1501 = tint_symbol_85(x_1472.x, x_1472.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1508);
  tint_symbol_94 = x_1501;
  let x_1516 = tint_symbol_94;
  let x_1509 = tint_symbol_85(x_1472.y, x_1472.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1516);
  tint_symbol_94 = x_1509;
  let x_1525 = tint_symbol_94;
  let x_1517 = tint_symbol_85(-(x_1472.y), x_1472.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1525);
  tint_symbol_94 = x_1517;
  let x_1526 = tint_symbol_94;
  return x_1526;
}

fn tint_symbol_95(tint_symbol_96 : f32, tint_symbol_90_1 : f32, tint_symbol_86_1 : f32, tint_symbol_97 : vec2f, tint_symbol_98 : vec2f, tint_symbol_88_1 : f32, tint_symbol_89_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_91_1 = 0.0f;
  var x_1555 : bool;
  var x_1556 : bool;
  var x_1561 : bool;
  var x_1562 : bool;
  var x_1567 : bool;
  var x_1568 : bool;
  tint_symbol_91_1 = tint_symbol_90_1;
  if ((abs(tint_symbol_89_1) > 0.00000000999999993923f)) {
    let x_1545 = ((tint_symbol_86_1 - tint_symbol_88_1) / tint_symbol_89_1);
    let x_1547 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1545));
    let x_1550 = (tint_symbol_97.x < x_1547.x);
    x_1556 = x_1550;
    if (x_1550) {
      x_1555 = (x_1547.x < tint_symbol_98.x);
      x_1556 = x_1555;
    }
    x_1562 = x_1556;
    if (x_1556) {
      x_1561 = (tint_symbol_97.y < x_1547.y);
      x_1562 = x_1561;
    }
    x_1568 = x_1562;
    if (x_1562) {
      x_1567 = (x_1547.y < tint_symbol_98.y);
      x_1568 = x_1567;
    }
    var x_1575 : bool;
    var x_1576 : bool;
    if (x_1568) {
      let x_1571 = (x_1545 > tint_symbol_96);
      x_1576 = x_1571;
      if (x_1571) {
        x_1575 = (tint_symbol_91_1 < x_1545);
        x_1576 = x_1575;
      }
      if (x_1576) {
        tint_symbol_91_1 = x_1545;
      }
    }
  }
  let x_1579 = tint_symbol_91_1;
  return x_1579;
}

const x_1590 = vec4f(0.0f, 1.0f, 0.0f, 1.0f);

fn tint_symbol_99(tint_symbol_100 : f32, tint_symbol_101 : f32, tint_symbol_102 : f32, tint_symbol_103 : f32) -> vec4f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec4f();
  let x_1593 = ((tint_symbol_101 + tint_symbol_100) * 0.5f);
  let x_1595 = ((tint_symbol_103 + tint_symbol_102) * 0.5f);
  if ((x_1593 > x_1595)) {
    let x_1601 = ((x_1593 - x_1595) / (tint_symbol_103 - x_1595));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(0.0f, 0.0f, 1.0f, 1.0f) * x_1601) + (x_1590 * (1.0f - x_1601)));
  }
  if (!(tint_return_flag_1)) {
    let x_1612 = ((x_1595 - x_1593) / (x_1595 - tint_symbol_102));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(1.0f, 0.0f, 0.0f, 1.0f) * x_1612) + (x_1590 * (1.0f - x_1612)));
  }
  let x_1617 = tint_return_value_1;
  return x_1617;
}

fn tint_symbol_106(tint_symbol_79_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f) {
  var tint_symbol_107 = vec2f();
  var tint_symbol_80_1 = vec4f();
  var tint_symbol_108 = 0.0f;
  var tint_symbol_109 = vec4f();
  var tint_symbol_110 = 0.0f;
  var x_1673 = vec3f();
  var tint_symbol_112 = vec3f();
  var x_1705 = vec4f();
  var x_1819 = vec4f();
  var x_1635 : bool;
  var x_1636 : bool;
  let x_1624 = tint_symbol_93(tint_symbol_23_7, tint_symbol_28_10);
  tint_symbol_107 = x_1624;
  tint_symbol_80_1 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);
  let x_1630 = (tint_symbol_107.y < 0.0f);
  x_1636 = x_1630;
  if (x_1630) {
    x_1635 = (tint_symbol_107.x > 0.0f);
    x_1636 = x_1635;
  }
  if (x_1636) {
    tint_symbol_107.y = tint_symbol_107.x;
    tint_symbol_107.x = 0.0f;
  }
  if ((tint_symbol_107.x >= 0.0f)) {
    tint_symbol_108 = (tint_symbol_107.x + 0.00009999999747378752f);
    tint_symbol_109 = vec4f(0.69999998807907104492f, 0.69999998807907104492f, 0.80000001192092895508f, 1.0f);
    tint_symbol_110 = 1.0f;
    let x_1672 = ((vec3f(1.0f) * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    loop {
      if (!((tint_symbol_108 < tint_symbol_107.y))) {
        break;
      }
      tint_symbol_112 = (tint_symbol_23_7 + (tint_symbol_28_10 * tint_symbol_108));
      let x_1704 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_1708 = tint_symbol_112;
      let x_1707 = tint_ftoi(((x_1708 + x_1704.xyz) / x_1672));
      let x_1715 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1713 = tint_ftoi_1(x_1715);
      let x_1718 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1716 = tint_ftoi_1(x_1718);
      let x_1724 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1722 = tint_ftoi_1(x_1724);
      let x_1731 = tint_symbol_72.inner[(((x_1707.z * (x_1713 * x_1716)) + (x_1707.y * x_1722)) + x_1707.x)];
      let x_1735 = ((vec3f(x_1707) * x_1672) - x_1704.xyz);
      let x_1736 = (x_1735 + x_1672);
      let x_1739 = tint_symbol_107.x;
      let x_1741 = tint_symbol_108;
      let x_1743 = tint_symbol_112.x;
      let x_1737 = tint_symbol_95((x_1739 + 0.00009999999747378752f), x_1741, x_1743, vec2f(x_1735.y, x_1735.z), vec2f(x_1736.y, x_1736.z), tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      let x_1756 = tint_symbol_107.x;
      let x_1758 = tint_symbol_108;
      let x_1760 = tint_symbol_112.y;
      let x_1754 = tint_symbol_95((x_1756 + 0.00009999999747378752f), x_1758, x_1760, vec2f(x_1735.x, x_1735.z), vec2f(x_1736.x, x_1736.z), tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      let x_1773 = tint_symbol_107.x;
      let x_1775 = tint_symbol_108;
      let x_1777 = tint_symbol_112.z;
      let x_1771 = tint_symbol_95((x_1773 + 0.00009999999747378752f), x_1775, x_1777, vec2f(x_1735.x, x_1735.y), vec2f(x_1736.x, x_1736.y), tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_80_1 = (tint_symbol_80_1 + (tint_symbol_109 * (clamp((x_1731 * 0.01999999955296516418f), 0.0f, 0.10000000149011611938f) * tint_symbol_110)));
      tint_symbol_108 = ((min(x_1737, min(x_1754, x_1771)) + 0.00009999999747378752f) + 0.00009999999747378752f);
      if ((tint_symbol_110 > 0.20000000298023223877f)) {
        break;
      }
    }
    if ((tint_symbol_110 < 0.10000000149011611938f)) {
      tint_symbol_80_1 = x_1359;
    } else {
      tint_symbol_80_1 = (tint_symbol_80_1 / vec4f((tint_symbol_107.y - tint_symbol_107.x)));
      tint_symbol_80_1.w = 1.0f;
    }
  } else {
    tint_symbol_80_1 = x_1359;
  }
  let x_1824 = tint_symbol_80_1;
  textureStore(tint_symbol_73, tint_symbol_79_1, x_1824);
  return;
}

const x_1846 = vec2f(2.0f);

fn tint_symbol_123_inner(tint_symbol_124 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_127 = vec3f();
  var x_1842 : bool;
  var x_1843 : bool;
  let x_1829 = bitcast<vec2i>(tint_symbol_124.xy);
  let x_1832 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_1837 = (x_1829.x < x_1832.x);
  x_1843 = x_1837;
  if (x_1837) {
    x_1842 = (x_1829.y < x_1832.y);
    x_1843 = x_1842;
  }
  if (x_1843) {
    let x_1851 = (x_1846 / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1829.x) + 0.5f) * x_1851.x) - 1.0f), (((f32(x_1829.y) + 0.5f) * x_1851.y) - 1.0f), 0.0f);
    tint_symbol_127 = vec3f(0.0f, 0.0f, 1.0f);
    let x_1869 = tint_symbol_37_1;
    let x_1868 = tint_symbol_76(x_1869);
    tint_symbol_37_1 = x_1868;
    let x_1871 = tint_symbol_127;
    let x_1870 = tint_symbol_74(x_1871);
    tint_symbol_127 = x_1870;
    let x_1873 = tint_symbol_37_1;
    let x_1874 = tint_symbol_127;
    tint_symbol_106(x_1829, x_1873, x_1874);
  }
  return;
}

fn tint_symbol_123_1() {
  let x_1879 = tint_symbol_124_1;
  tint_symbol_123_inner(x_1879);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_124_1_param : vec3u) {
  tint_symbol_124_1 = tint_symbol_124_1_param;
  tint_symbol_123_1();
}

fn tint_symbol_128_inner(tint_symbol_124_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_127_1 = vec3f();
  var x_1895 : bool;
  var x_1896 : bool;
  let x_1883 = bitcast<vec2i>(tint_symbol_124_3.xy);
  let x_1885 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_1890 = (x_1883.x < x_1885.x);
  x_1896 = x_1890;
  if (x_1890) {
    x_1895 = (x_1883.y < x_1885.y);
    x_1896 = x_1895;
  }
  if (x_1896) {
    let x_1900 = tint_symbol_70.inner.tint_symbol_65;
    let x_1903 = tint_symbol_70.inner.tint_symbol_66;
    tint_symbol_37_2 = vec3f();
    let x_1914 = (((vec2f(x_1883) - (tint_symbol_70.inner.tint_symbol_66 * 0.5f)) + vec2f(0.5f)) * ((x_1900 * x_1846) / x_1903.xy));
    tint_symbol_127_1 = vec3f(x_1914.x, x_1914.y, 1.0f);
    let x_1920 = tint_symbol_37_2;
    let x_1919 = tint_symbol_76(x_1920);
    tint_symbol_37_2 = x_1919;
    let x_1922 = tint_symbol_127_1;
    let x_1921 = tint_symbol_74(x_1922);
    tint_symbol_127_1 = x_1921;
    let x_1924 = tint_symbol_37_2;
    let x_1925 = tint_symbol_127_1;
    tint_symbol_106(x_1883, x_1924, x_1925);
  }
  return;
}

fn tint_symbol_128_1() {
  let x_1929 = tint_symbol_124_2;
  tint_symbol_128_inner(x_1929);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_124_2_param : vec3u) {
  tint_symbol_124_2 = tint_symbol_124_2_param;
  tint_symbol_128_1();
}
