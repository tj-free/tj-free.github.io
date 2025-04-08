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

struct tint_symbol_74_block {
  /* @offset(0) */
  inner : u32,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_127_1 : vec3u;

var<private> tint_symbol_127_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(4) var<uniform> tint_symbol_74 : tint_symbol_74_block;

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
  let x_852 = tint_symbol_20;
  return x_852;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_888 = tint_symbol_21(tint_symbol_24);
  let x_889 = tint_symbol_17(tint_symbol_23, x_888);
  let x_890 = tint_symbol_17(tint_symbol_24, x_889);
  return x_890;
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
  let x_979 = tint_symbol_26;
  return sqrt(x_979);
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
  let x_1018 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1018 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1018), (tint_symbol_24_3.tint_symbol_2 / x_1018), (tint_symbol_24_3.tint_symbol_3 / x_1018), (tint_symbol_24_3.tint_symbol_4 / x_1018), (tint_symbol_24_3.tint_symbol_5 / x_1018), (tint_symbol_24_3.tint_symbol_6 / x_1018), (tint_symbol_24_3.tint_symbol_7 / x_1018), (tint_symbol_24_3.tint_symbol_8 / x_1018), (tint_symbol_24_3.tint_symbol_9 / x_1018), (tint_symbol_24_3.tint_symbol_10 / x_1018), (tint_symbol_24_3.tint_symbol_11 / x_1018), (tint_symbol_24_3.tint_symbol_12 / x_1018), (tint_symbol_24_3.tint_symbol_13 / x_1018), (tint_symbol_24_3.tint_symbol_14 / x_1018), (tint_symbol_24_3.tint_symbol_15 / x_1018), (tint_symbol_24_3.tint_symbol_16 / x_1018));
  }
  let x_1061 = tint_return_value;
  return x_1061;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1067 = tint_symbol_30(tint_symbol_28_2);
  let x_1068 = tint_symbol_34(x_1067);
  return tint_symbol(0.0f, x_1068.tint_symbol_2, x_1068.tint_symbol_3, x_1068.tint_symbol_4, -(((-(x_1068.tint_symbol_3) * tint_symbol_1.z) - (x_1068.tint_symbol_2 * tint_symbol_1.y))), -(((x_1068.tint_symbol_2 * tint_symbol_1.x) - (x_1068.tint_symbol_4 * tint_symbol_1.z))), -(((x_1068.tint_symbol_4 * tint_symbol_1.y) + (x_1068.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1106 = sin((tint_symbol_36 / 2.0f));
  let x_1108 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1106 * x_1108.tint_symbol_2), (x_1106 * x_1108.tint_symbol_3), (x_1106 * x_1108.tint_symbol_4), (x_1106 * x_1108.tint_symbol_5), (x_1106 * x_1108.tint_symbol_6), (x_1106 * x_1108.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1272 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1272;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1301 : bool;
  var x_1302 : bool;
  var x_1307 : bool;
  var x_1308 : bool;
  var x_1313 : bool;
  var x_1314 : bool;
  let x_1281 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1287 = tint_symbol_42(x_1281);
  tint_symbol_58.tint_symbol_23 = x_1287;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1281.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1296 = tint_symbol_58.tint_symbol_53;
  x_1302 = x_1296;
  if (x_1296) {
    x_1301 = (abs(x_1281.tint_symbol_9) <= 0.00000000999999993923f);
    x_1302 = x_1301;
  }
  x_1308 = x_1302;
  if (x_1302) {
    x_1307 = (abs(x_1281.tint_symbol_10) <= 0.00000000999999993923f);
    x_1308 = x_1307;
  }
  x_1314 = x_1308;
  if (x_1308) {
    x_1313 = (abs(x_1281.tint_symbol_11) <= 0.00000000999999993923f);
    x_1314 = x_1313;
  }
  tint_symbol_58.tint_symbol_54 = x_1314;
  let x_1315 = tint_symbol_58;
  return x_1315;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1321 = tint_symbol_41(tint_symbol_23_3);
  let x_1322 = tint_symbol_22(x_1321, tint_symbol_24_5);
  let x_1323 = tint_symbol_42(x_1322);
  return x_1323;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1328 = tint_symbol_40(tint_symbol_24_6);
  let x_1329 = tint_symbol_41(tint_symbol_28_5);
  let x_1330 = tint_symbol_22(x_1329, x_1328);
  let x_1331 = tint_symbol_42(x_1330);
  return x_1331;
}

fn tint_symbol_75(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_76 = vec3f();
  let x_1339 = tint_symbol_70.inner.tint_symbol_64;
  let x_1336 = tint_symbol_61(tint_symbol_28_6, x_1339);
  tint_symbol_76 = x_1336;
  let x_1342 = tint_symbol_76;
  return x_1342;
}

fn tint_symbol_77(tint_symbol_78 : vec3f) -> vec3f {
  var tint_symbol_76_1 = vec3f();
  let x_1348 = tint_symbol_70.inner.tint_symbol_64;
  let x_1346 = tint_symbol_60(tint_symbol_78, x_1348);
  tint_symbol_76_1 = x_1346;
  let x_1350 = tint_symbol_76_1;
  return x_1350;
}

const x_1362 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_79(tint_symbol_80 : vec2i) {
  var tint_symbol_81 = vec4f();
  tint_symbol_81 = x_1362;
  let x_1365 = tint_symbol_81;
  textureStore(tint_symbol_73, tint_symbol_80, x_1365);
  return;
}

fn tint_symbol_82(tint_symbol_83 : vec2f, tint_symbol_84 : f32) -> vec2f {
  var tint_symbol_85 = vec2f();
  tint_symbol_85 = tint_symbol_83;
  if ((tint_symbol_83.x < 0.0f)) {
    tint_symbol_85.x = tint_symbol_84;
  } else {
    if ((tint_symbol_84 < tint_symbol_83.x)) {
      tint_symbol_85.y = tint_symbol_83.x;
      tint_symbol_85.x = tint_symbol_84;
    } else {
      if ((tint_symbol_83.y < 0.0f)) {
        tint_symbol_85.y = tint_symbol_84;
      } else {
        if ((tint_symbol_84 < tint_symbol_83.y)) {
          tint_symbol_85.y = tint_symbol_84;
        }
      }
    }
  }
  let x_1399 = tint_symbol_85;
  return x_1399;
}

fn tint_symbol_86(tint_symbol_87 : f32, tint_symbol_88 : vec2f, tint_symbol_89 : f32, tint_symbol_90 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_91 : vec2f) -> vec2f {
  var tint_symbol_92 = vec2f();
  tint_symbol_92 = tint_symbol_91;
  if ((abs(tint_symbol_90) > 0.00000000999999993923f)) {
    var x_1416 : f32;
    var x_1430 : bool;
    var x_1431 : bool;
    var x_1437 : bool;
    var x_1438 : bool;
    var x_1443 : bool;
    var x_1444 : bool;
    x_1416 = ((tint_symbol_87 - tint_symbol_89) / tint_symbol_90);
    if ((x_1416 > 0.0f)) {
      let x_1421 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1416));
      let x_1425 = (-(tint_symbol_88.x) < x_1421.x);
      x_1431 = x_1425;
      if (x_1425) {
        x_1430 = (x_1421.x < tint_symbol_88.x);
        x_1431 = x_1430;
      }
      x_1438 = x_1431;
      if (x_1431) {
        x_1437 = (-(tint_symbol_88.y) < x_1421.y);
        x_1438 = x_1437;
      }
      x_1444 = x_1438;
      if (x_1438) {
        x_1443 = (x_1421.y < tint_symbol_88.y);
        x_1444 = x_1443;
      }
      if (x_1444) {
        let x_1448 = tint_symbol_92;
        let x_1447 = tint_symbol_82(x_1448, x_1416);
        tint_symbol_92 = x_1447;
      }
    }
  }
  let x_1449 = tint_symbol_92;
  return x_1449;
}

fn tint_symbol_94(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_95 = vec2f();
  var x_1476 = vec4f();
  tint_symbol_95 = vec2f(-1.0f);
  let x_1475 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1485 = tint_symbol_95;
  let x_1478 = tint_symbol_86(x_1475.z, x_1475.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1485);
  tint_symbol_95 = x_1478;
  let x_1494 = tint_symbol_95;
  let x_1486 = tint_symbol_86(-(x_1475.z), x_1475.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1494);
  tint_symbol_95 = x_1486;
  let x_1503 = tint_symbol_95;
  let x_1495 = tint_symbol_86(-(x_1475.x), x_1475.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1503);
  tint_symbol_95 = x_1495;
  let x_1511 = tint_symbol_95;
  let x_1504 = tint_symbol_86(x_1475.x, x_1475.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1511);
  tint_symbol_95 = x_1504;
  let x_1519 = tint_symbol_95;
  let x_1512 = tint_symbol_86(x_1475.y, x_1475.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1519);
  tint_symbol_95 = x_1512;
  let x_1528 = tint_symbol_95;
  let x_1520 = tint_symbol_86(-(x_1475.y), x_1475.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1528);
  tint_symbol_95 = x_1520;
  let x_1529 = tint_symbol_95;
  return x_1529;
}

fn tint_symbol_96(tint_symbol_97 : f32, tint_symbol_91_1 : f32, tint_symbol_87_1 : f32, tint_symbol_98 : vec2f, tint_symbol_99 : vec2f, tint_symbol_89_1 : f32, tint_symbol_90_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_92_1 = 0.0f;
  var x_1558 : bool;
  var x_1559 : bool;
  var x_1564 : bool;
  var x_1565 : bool;
  var x_1570 : bool;
  var x_1571 : bool;
  tint_symbol_92_1 = tint_symbol_91_1;
  if ((abs(tint_symbol_90_1) > 0.00000000999999993923f)) {
    let x_1548 = ((tint_symbol_87_1 - tint_symbol_89_1) / tint_symbol_90_1);
    let x_1550 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1548));
    let x_1553 = (tint_symbol_98.x < x_1550.x);
    x_1559 = x_1553;
    if (x_1553) {
      x_1558 = (x_1550.x < tint_symbol_99.x);
      x_1559 = x_1558;
    }
    x_1565 = x_1559;
    if (x_1559) {
      x_1564 = (tint_symbol_98.y < x_1550.y);
      x_1565 = x_1564;
    }
    x_1571 = x_1565;
    if (x_1565) {
      x_1570 = (x_1550.y < tint_symbol_99.y);
      x_1571 = x_1570;
    }
    var x_1578 : bool;
    var x_1579 : bool;
    if (x_1571) {
      let x_1574 = (x_1548 > tint_symbol_97);
      x_1579 = x_1574;
      if (x_1574) {
        x_1578 = (tint_symbol_92_1 < x_1548);
        x_1579 = x_1578;
      }
      if (x_1579) {
        tint_symbol_92_1 = x_1548;
      }
    }
  }
  let x_1582 = tint_symbol_92_1;
  return x_1582;
}

const x_1593 = vec4f(0.0f, 1.0f, 0.0f, 1.0f);

fn tint_symbol_100(tint_symbol_101 : f32, tint_symbol_102 : f32, tint_symbol_103 : f32, tint_symbol_104 : f32) -> vec4f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec4f();
  let x_1596 = ((tint_symbol_102 + tint_symbol_101) * 0.5f);
  let x_1598 = ((tint_symbol_104 + tint_symbol_103) * 0.5f);
  if ((x_1596 > x_1598)) {
    let x_1604 = ((x_1596 - x_1598) / (tint_symbol_104 - x_1598));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(0.0f, 0.0f, 1.0f, 1.0f) * x_1604) + (x_1593 * (1.0f - x_1604)));
  }
  if (!(tint_return_flag_1)) {
    let x_1615 = ((x_1598 - x_1596) / (x_1598 - tint_symbol_103));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(1.0f, 0.0f, 0.0f, 1.0f) * x_1615) + (x_1593 * (1.0f - x_1615)));
  }
  let x_1620 = tint_return_value_1;
  return x_1620;
}

const x_1629 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

const x_1657 = vec3f(1.0f);

fn tint_symbol_107(tint_symbol_80_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f) {
  var tint_symbol_108 = vec2f();
  var tint_symbol_81_1 = vec4f();
  var tint_symbol_109 = 0.0f;
  var x_1671 = vec3f();
  var tint_symbol_111 = 0.0f;
  var tint_symbol_112 = vec3f();
  var x_1704 = vec4f();
  var x_1638 : bool;
  var x_1639 : bool;
  let x_1627 = tint_symbol_94(tint_symbol_23_7, tint_symbol_28_10);
  tint_symbol_108 = x_1627;
  tint_symbol_81_1 = x_1629;
  let x_1633 = (tint_symbol_108.y < 0.0f);
  x_1639 = x_1633;
  if (x_1633) {
    x_1638 = (tint_symbol_108.x > 0.0f);
    x_1639 = x_1638;
  }
  if (x_1639) {
    tint_symbol_108.y = tint_symbol_108.x;
    tint_symbol_108.x = 0.0f;
  }
  if ((tint_symbol_108.x >= 0.0f)) {
    tint_symbol_109 = (tint_symbol_108.x + 0.00009999999747378752f);
    let x_1670 = ((x_1657 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_111 = 0.0f;
    loop {
      if (!((tint_symbol_109 < tint_symbol_108.y))) {
        break;
      }
      tint_symbol_112 = (tint_symbol_23_7 + (tint_symbol_28_10 * tint_symbol_109));
      let x_1703 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_1707 = tint_symbol_112;
      let x_1706 = tint_ftoi(((x_1707 + x_1703.xyz) / x_1670));
      let x_1714 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1712 = tint_ftoi_1(x_1714);
      let x_1717 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1715 = tint_ftoi_1(x_1717);
      let x_1723 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1721 = tint_ftoi_1(x_1723);
      tint_symbol_111 = max(tint_symbol_111, tint_symbol_72.inner[(((x_1706.z * (x_1712 * x_1715)) + (x_1706.y * x_1721)) + x_1706.x)]);
      let x_1736 = ((vec3f(x_1706) * x_1670) - x_1703.xyz);
      let x_1737 = (x_1736 + x_1670);
      let x_1740 = tint_symbol_108.x;
      let x_1742 = tint_symbol_109;
      let x_1744 = tint_symbol_112.x;
      let x_1738 = tint_symbol_96((x_1740 + 0.00009999999747378752f), x_1742, x_1744, vec2f(x_1736.y, x_1736.z), vec2f(x_1737.y, x_1737.z), tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      let x_1757 = tint_symbol_108.x;
      let x_1759 = tint_symbol_109;
      let x_1761 = tint_symbol_112.y;
      let x_1755 = tint_symbol_96((x_1757 + 0.00009999999747378752f), x_1759, x_1761, vec2f(x_1736.x, x_1736.z), vec2f(x_1737.x, x_1737.z), tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      let x_1774 = tint_symbol_108.x;
      let x_1776 = tint_symbol_109;
      let x_1778 = tint_symbol_112.z;
      let x_1772 = tint_symbol_96((x_1774 + 0.00009999999747378752f), x_1776, x_1778, vec2f(x_1736.x, x_1736.y), vec2f(x_1737.x, x_1737.y), tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_109 = (min(x_1738, min(x_1755, x_1772)) + 0.00009999999747378752f);
    }
    tint_symbol_111 = (tint_symbol_111 / 4095.0f);
    tint_symbol_81_1 = vec4f(tint_symbol_111, tint_symbol_111, tint_symbol_111, 1.0f);
  } else {
    tint_symbol_81_1 = x_1362;
  }
  let x_1801 = tint_symbol_81_1;
  textureStore(tint_symbol_73, tint_symbol_80_1, x_1801);
  return;
}

fn tint_symbol_119(tint_symbol_80_2 : vec2i, tint_symbol_23_8 : vec3f, tint_symbol_28_11 : vec3f) {
  var tint_symbol_108_1 = vec2f();
  var tint_symbol_81_2 = vec4f();
  var tint_symbol_109_1 = 0.0f;
  var x_1848 = vec3f();
  var tint_symbol_120 = 0.0f;
  var tint_symbol_112_1 = vec3f();
  var x_1881 = vec4f();
  var x_1817 : bool;
  var x_1818 : bool;
  let x_1807 = tint_symbol_94(tint_symbol_23_8, tint_symbol_28_11);
  tint_symbol_108_1 = x_1807;
  tint_symbol_81_2 = x_1629;
  let x_1812 = (tint_symbol_108_1.y < 0.0f);
  x_1818 = x_1812;
  if (x_1812) {
    x_1817 = (tint_symbol_108_1.x > 0.0f);
    x_1818 = x_1817;
  }
  if (x_1818) {
    tint_symbol_108_1.y = tint_symbol_108_1.x;
    tint_symbol_108_1.x = 0.0f;
  }
  if ((tint_symbol_108_1.x >= 0.0f)) {
    tint_symbol_109_1 = (tint_symbol_108_1.x + 0.00009999999747378752f);
    let x_1847 = ((x_1657 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_120 = 0.0f;
    loop {
      if (!((tint_symbol_109_1 < tint_symbol_108_1.y))) {
        break;
      }
      tint_symbol_112_1 = (tint_symbol_23_8 + (tint_symbol_28_11 * tint_symbol_109_1));
      let x_1880 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_1884 = tint_symbol_112_1;
      let x_1883 = tint_ftoi(((x_1884 + x_1880.xyz) / x_1847));
      let x_1891 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1889 = tint_ftoi_1(x_1891);
      let x_1894 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1892 = tint_ftoi_1(x_1894);
      let x_1900 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1898 = tint_ftoi_1(x_1900);
      let x_1906 = tint_symbol_72.inner[(((x_1883.z * (x_1889 * x_1892)) + (x_1883.y * x_1898)) + x_1883.x)];
      let x_1910 = ((vec3f(x_1883) * x_1847) - x_1880.xyz);
      let x_1911 = (x_1910 + x_1847);
      let x_1914 = tint_symbol_108_1.x;
      let x_1916 = tint_symbol_109_1;
      let x_1918 = tint_symbol_112_1.x;
      let x_1912 = tint_symbol_96((x_1914 + 0.00009999999747378752f), x_1916, x_1918, vec2f(x_1910.y, x_1910.z), vec2f(x_1911.y, x_1911.z), tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
      let x_1931 = tint_symbol_108_1.x;
      let x_1933 = tint_symbol_109_1;
      let x_1935 = tint_symbol_112_1.y;
      let x_1929 = tint_symbol_96((x_1931 + 0.00009999999747378752f), x_1933, x_1935, vec2f(x_1910.x, x_1910.z), vec2f(x_1911.x, x_1911.z), tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
      let x_1948 = tint_symbol_108_1.x;
      let x_1950 = tint_symbol_109_1;
      let x_1952 = tint_symbol_112_1.z;
      let x_1946 = tint_symbol_96((x_1948 + 0.00009999999747378752f), x_1950, x_1952, vec2f(x_1910.x, x_1910.y), vec2f(x_1911.x, x_1911.y), tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
      let x_1965 = (min(x_1912, min(x_1929, x_1946)) + 0.00009999999747378752f);
      tint_symbol_120 = (tint_symbol_120 + ((((x_1965 - tint_symbol_109_1) + 0.00009999999747378752f) * x_1906) / 4095.0f));
      tint_symbol_109_1 = (x_1965 + 0.00009999999747378752f);
    }
    let x_1974 = clamp((1.0f - exp(-(tint_symbol_120))), 0.0f, 1.0f);
    tint_symbol_81_2 = vec4f(x_1974, x_1974, x_1974, 1.0f);
  } else {
    tint_symbol_81_2 = x_1362;
  }
  let x_1982 = tint_symbol_81_2;
  textureStore(tint_symbol_73, tint_symbol_80_2, x_1982);
  return;
}

fn tint_symbol_123(tint_symbol_80_3 : vec2i, tint_symbol_23_9 : vec3f, tint_symbol_28_12 : vec3f) {
  var tint_symbol_108_2 = vec2f();
  var tint_symbol_81_3 = vec4f();
  var tint_symbol_109_2 = 0.0f;
  var x_2029 = vec3f();
  var tint_symbol_112_2 = vec3f();
  var x_2061 = vec4f();
  var x_2168 = vec4f();
  var x_1998 : bool;
  var x_1999 : bool;
  let x_1988 = tint_symbol_94(tint_symbol_23_9, tint_symbol_28_12);
  tint_symbol_108_2 = x_1988;
  tint_symbol_81_3 = x_1629;
  let x_1993 = (tint_symbol_108_2.y < 0.0f);
  x_1999 = x_1993;
  if (x_1993) {
    x_1998 = (tint_symbol_108_2.x > 0.0f);
    x_1999 = x_1998;
  }
  if (x_1999) {
    tint_symbol_108_2.y = tint_symbol_108_2.x;
    tint_symbol_108_2.x = 0.0f;
  }
  if ((tint_symbol_108_2.x >= 0.0f)) {
    tint_symbol_109_2 = (tint_symbol_108_2.x + 0.00009999999747378752f);
    let x_2028 = ((x_1657 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    loop {
      if (!((tint_symbol_109_2 < tint_symbol_108_2.y))) {
        break;
      }
      tint_symbol_112_2 = (tint_symbol_23_9 + (tint_symbol_28_12 * tint_symbol_109_2));
      let x_2060 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_2064 = tint_symbol_112_2;
      let x_2063 = tint_ftoi(((x_2064 + x_2060.xyz) / x_2028));
      let x_2071 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2069 = tint_ftoi_1(x_2071);
      let x_2074 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_2072 = tint_ftoi_1(x_2074);
      let x_2080 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2078 = tint_ftoi_1(x_2080);
      let x_2086 = tint_symbol_72.inner[(((x_2063.z * (x_2069 * x_2072)) + (x_2063.y * x_2078)) + x_2063.x)];
      let x_2090 = ((vec3f(x_2063) * x_2028) - x_2060.xyz);
      let x_2091 = (x_2090 + x_2028);
      let x_2094 = tint_symbol_108_2.x;
      let x_2096 = tint_symbol_109_2;
      let x_2098 = tint_symbol_112_2.x;
      let x_2092 = tint_symbol_96((x_2094 + 0.00009999999747378752f), x_2096, x_2098, vec2f(x_2090.y, x_2090.z), vec2f(x_2091.y, x_2091.z), tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
      let x_2111 = tint_symbol_108_2.x;
      let x_2113 = tint_symbol_109_2;
      let x_2115 = tint_symbol_112_2.y;
      let x_2109 = tint_symbol_96((x_2111 + 0.00009999999747378752f), x_2113, x_2115, vec2f(x_2090.x, x_2090.z), vec2f(x_2091.x, x_2091.z), tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
      let x_2128 = tint_symbol_108_2.x;
      let x_2130 = tint_symbol_109_2;
      let x_2132 = tint_symbol_112_2.z;
      let x_2126 = tint_symbol_96((x_2128 + 0.00009999999747378752f), x_2130, x_2132, vec2f(x_2090.x, x_2090.y), vec2f(x_2091.x, x_2091.y), tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
      let x_2145 = (min(x_2092, min(x_2109, x_2126)) + 0.00009999999747378752f);
      let x_2146 = tint_symbol_109_2;
      let x_2149 = tint_symbol_81_3;
      let x_2153 = tint_symbol_109_2;
      let x_2155 = tint_symbol_108_2.x;
      let x_2157 = tint_symbol_108_2.y;
      let x_2152 = tint_symbol_100(x_2153, x_2145, x_2155, x_2157);
      tint_symbol_81_3 = (x_2149 + (x_2152 * ((((x_2145 - x_2146) + 0.00009999999747378752f) * x_2086) / 4095.0f)));
      tint_symbol_109_2 = (x_2145 + 0.00009999999747378752f);
    }
    tint_symbol_81_3 = (tint_symbol_81_3 / vec4f((tint_symbol_108_2.y - tint_symbol_108_2.x)));
    tint_symbol_81_3.w = 1.0f;
  } else {
    tint_symbol_81_3 = x_1362;
  }
  let x_2173 = tint_symbol_81_3;
  textureStore(tint_symbol_73, tint_symbol_80_3, x_2173);
  return;
}

fn tint_symbol_124(tint_symbol_80_4 : vec2i, tint_symbol_23_10 : vec3f, tint_symbol_28_13 : vec3f) {
  var tint_symbol_108_3 = vec2f();
  var tint_symbol_81_4 = vec4f();
  var x_2189 : bool;
  var x_2190 : bool;
  let x_2179 = tint_symbol_94(tint_symbol_23_10, tint_symbol_28_13);
  tint_symbol_108_3 = x_2179;
  tint_symbol_81_4 = x_1629;
  let x_2184 = (tint_symbol_108_3.y < 0.0f);
  x_2190 = x_2184;
  if (x_2184) {
    x_2189 = (tint_symbol_108_3.x > 0.0f);
    x_2190 = x_2189;
  }
  if (x_2190) {
    tint_symbol_108_3.y = tint_symbol_108_3.x;
    tint_symbol_108_3.x = 0.0f;
  }
  if ((tint_symbol_108_3.x >= 0.0f)) {
    let x_2207 = (tint_symbol_108_3.y - tint_symbol_108_3.x);
    tint_symbol_81_4 = vec4f(x_2207, (1.0f - x_2207), 0.0f, 1.0f);
  } else {
    tint_symbol_81_4 = x_1362;
  }
  let x_2212 = tint_symbol_81_4;
  textureStore(tint_symbol_73, tint_symbol_80_4, x_2212);
  return;
}

const x_2234 = vec2f(2.0f);

fn tint_symbol_126_inner(tint_symbol_127 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_130 = vec3f();
  var x_2230 : bool;
  var x_2231 : bool;
  let x_2217 = bitcast<vec2i>(tint_symbol_127.xy);
  let x_2220 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_2225 = (x_2217.x < x_2220.x);
  x_2231 = x_2225;
  if (x_2225) {
    x_2230 = (x_2217.y < x_2220.y);
    x_2231 = x_2230;
  }
  if (x_2231) {
    let x_2239 = (x_2234 / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_2217.x) + 0.5f) * x_2239.x) - 1.0f), (((f32(x_2217.y) + 0.5f) * x_2239.y) - 1.0f), 0.0f);
    tint_symbol_130 = vec3f(0.0f, 0.0f, 1.0f);
    let x_2257 = tint_symbol_37_1;
    let x_2256 = tint_symbol_77(x_2257);
    tint_symbol_37_1 = x_2256;
    let x_2259 = tint_symbol_130;
    let x_2258 = tint_symbol_75(x_2259);
    tint_symbol_130 = x_2258;
    let x_2261 = tint_symbol_37_1;
    let x_2262 = tint_symbol_130;
    tint_symbol_124(x_2217, x_2261, x_2262);
  }
  return;
}

fn tint_symbol_126_1() {
  let x_2267 = tint_symbol_127_1;
  tint_symbol_126_inner(x_2267);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_127_1_param : vec3u) {
  tint_symbol_127_1 = tint_symbol_127_1_param;
  tint_symbol_126_1();
}

const x_2305 = vec2f(0.5f);

fn tint_symbol_131_inner(tint_symbol_127_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_130_1 = vec3f();
  var tint_symbol_37_3 = vec3f();
  var tint_symbol_130_2 = vec3f();
  var tint_symbol_37_4 = vec3f();
  var tint_symbol_130_3 = vec3f();
  var tint_symbol_37_5 = vec3f();
  var tint_symbol_130_4 = vec3f();
  var x_2291 : bool;
  var x_2292 : bool;
  if ((tint_symbol_74.inner == 0u)) {
    let x_2279 = bitcast<vec2i>(tint_symbol_127_3.xy);
    let x_2281 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
    let x_2286 = (x_2279.x < x_2281.x);
    x_2292 = x_2286;
    if (x_2286) {
      x_2291 = (x_2279.y < x_2281.y);
      x_2292 = x_2291;
    }
    if (x_2292) {
      let x_2296 = tint_symbol_70.inner.tint_symbol_66;
      tint_symbol_37_2 = vec3f();
      let x_2307 = (((vec2f(x_2279) - (tint_symbol_70.inner.tint_symbol_66 * 0.5f)) + x_2305) * (x_2234 / x_2296.xy));
      tint_symbol_130_1 = vec3f(x_2307.x, x_2307.y, 1.0f);
      let x_2313 = tint_symbol_37_2;
      let x_2312 = tint_symbol_77(x_2313);
      tint_symbol_37_2 = x_2312;
      let x_2315 = tint_symbol_130_1;
      let x_2314 = tint_symbol_75(x_2315);
      tint_symbol_130_1 = x_2314;
      let x_2317 = tint_symbol_37_2;
      let x_2318 = tint_symbol_130_1;
      tint_symbol_124(x_2279, x_2317, x_2318);
    }
  } else {
    var x_2337 : bool;
    var x_2338 : bool;
    if ((tint_symbol_74.inner == 1u)) {
      let x_2325 = bitcast<vec2i>(tint_symbol_127_3.xy);
      let x_2327 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
      let x_2332 = (x_2325.x < x_2327.x);
      x_2338 = x_2332;
      if (x_2332) {
        x_2337 = (x_2325.y < x_2327.y);
        x_2338 = x_2337;
      }
      if (x_2338) {
        let x_2342 = tint_symbol_70.inner.tint_symbol_65;
        let x_2345 = tint_symbol_70.inner.tint_symbol_66;
        tint_symbol_37_3 = vec3f();
        let x_2355 = (((vec2f(x_2325) - (tint_symbol_70.inner.tint_symbol_66 * 0.5f)) + x_2305) * ((x_2342 * x_2234) / x_2345.xy));
        tint_symbol_130_2 = vec3f(x_2355.x, x_2355.y, 1.0f);
        let x_2361 = tint_symbol_37_3;
        let x_2360 = tint_symbol_77(x_2361);
        tint_symbol_37_3 = x_2360;
        let x_2363 = tint_symbol_130_2;
        let x_2362 = tint_symbol_75(x_2363);
        tint_symbol_130_2 = x_2362;
        let x_2365 = tint_symbol_37_3;
        let x_2366 = tint_symbol_130_2;
        tint_symbol_107(x_2325, x_2365, x_2366);
      }
    } else {
      var x_2385 : bool;
      var x_2386 : bool;
      if ((tint_symbol_74.inner == 2u)) {
        let x_2373 = bitcast<vec2i>(tint_symbol_127_3.xy);
        let x_2375 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
        let x_2380 = (x_2373.x < x_2375.x);
        x_2386 = x_2380;
        if (x_2380) {
          x_2385 = (x_2373.y < x_2375.y);
          x_2386 = x_2385;
        }
        if (x_2386) {
          let x_2390 = tint_symbol_70.inner.tint_symbol_65;
          let x_2393 = tint_symbol_70.inner.tint_symbol_66;
          tint_symbol_37_4 = vec3f();
          let x_2403 = (((vec2f(x_2373) - (tint_symbol_70.inner.tint_symbol_66 * 0.5f)) + x_2305) * ((x_2390 * x_2234) / x_2393.xy));
          tint_symbol_130_3 = vec3f(x_2403.x, x_2403.y, 1.0f);
          let x_2409 = tint_symbol_37_4;
          let x_2408 = tint_symbol_77(x_2409);
          tint_symbol_37_4 = x_2408;
          let x_2411 = tint_symbol_130_3;
          let x_2410 = tint_symbol_75(x_2411);
          tint_symbol_130_3 = x_2410;
          let x_2413 = tint_symbol_37_4;
          let x_2414 = tint_symbol_130_3;
          tint_symbol_119(x_2373, x_2413, x_2414);
        }
      } else {
        var x_2432 : bool;
        var x_2433 : bool;
        if ((tint_symbol_74.inner == 3u)) {
          let x_2420 = bitcast<vec2i>(tint_symbol_127_3.xy);
          let x_2422 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
          let x_2427 = (x_2420.x < x_2422.x);
          x_2433 = x_2427;
          if (x_2427) {
            x_2432 = (x_2420.y < x_2422.y);
            x_2433 = x_2432;
          }
          if (x_2433) {
            let x_2437 = tint_symbol_70.inner.tint_symbol_65;
            let x_2440 = tint_symbol_70.inner.tint_symbol_66;
            tint_symbol_37_5 = vec3f();
            let x_2450 = (((vec2f(x_2420) - (tint_symbol_70.inner.tint_symbol_66 * 0.5f)) + x_2305) * ((x_2437 * x_2234) / x_2440.xy));
            tint_symbol_130_4 = vec3f(x_2450.x, x_2450.y, 1.0f);
            let x_2456 = tint_symbol_37_5;
            let x_2455 = tint_symbol_77(x_2456);
            tint_symbol_37_5 = x_2455;
            let x_2458 = tint_symbol_130_4;
            let x_2457 = tint_symbol_75(x_2458);
            tint_symbol_130_4 = x_2457;
            let x_2460 = tint_symbol_37_5;
            let x_2461 = tint_symbol_130_4;
            tint_symbol_123(x_2420, x_2460, x_2461);
          }
        }
      }
    }
  }
  return;
}

fn tint_symbol_131_1() {
  let x_2465 = tint_symbol_127_2;
  tint_symbol_131_inner(x_2465);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_127_2_param : vec3u) {
  tint_symbol_127_2 = tint_symbol_127_2_param;
  tint_symbol_131_1();
}
