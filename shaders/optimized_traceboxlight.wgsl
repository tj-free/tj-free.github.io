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

struct tint_symbol_81_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
  /* @offset(32) */
  tint_symbol_70 : vec4f,
  /* @offset(48) */
  tint_symbol_71 : vec4f,
}

alias Arr = array<tint_symbol_67, 6u>;

struct tint_symbol_72 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_73 : vec4f,
  /* @offset(80) */
  tint_symbol_74 : Arr,
}

struct tint_symbol_82_block {
  /* @offset(0) */
  inner : tint_symbol_72,
}

struct tint_symbol_75 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_77 : vec4f,
  /* @offset(32) */
  tint_symbol_78 : vec4f,
  /* @offset(48) */
  tint_symbol_79 : vec4f,
  /* @offset(64) */
  tint_symbol_80 : vec4f,
}

struct tint_symbol_84_block {
  /* @offset(0) */
  inner : tint_symbol_75,
}

struct tint_symbol_85_block {
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

struct tint_symbol_105 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_106 : vec3f,
}

alias Arr_1 = array<f32, 5u>;

var<private> tint_symbol_121_1 : vec3u;

var<private> tint_symbol_121_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_81 : tint_symbol_81_block;

@group(0) @binding(1) var<uniform> tint_symbol_82 : tint_symbol_82_block;

@group(0) @binding(2) var tint_symbol_83 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_84 : tint_symbol_84_block;

@group(0) @binding(4) var<uniform> tint_symbol_85 : tint_symbol_85_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
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
  let x_838 = tint_symbol_20;
  return x_838;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_874 = tint_symbol_21(tint_symbol_24);
  let x_875 = tint_symbol_17(tint_symbol_23, x_874);
  let x_876 = tint_symbol_17(tint_symbol_24, x_875);
  return x_876;
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
  let x_965 = tint_symbol_26;
  return sqrt(x_965);
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
  let x_1005 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1005 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1005), (tint_symbol_24_3.tint_symbol_2 / x_1005), (tint_symbol_24_3.tint_symbol_3 / x_1005), (tint_symbol_24_3.tint_symbol_4 / x_1005), (tint_symbol_24_3.tint_symbol_5 / x_1005), (tint_symbol_24_3.tint_symbol_6 / x_1005), (tint_symbol_24_3.tint_symbol_7 / x_1005), (tint_symbol_24_3.tint_symbol_8 / x_1005), (tint_symbol_24_3.tint_symbol_9 / x_1005), (tint_symbol_24_3.tint_symbol_10 / x_1005), (tint_symbol_24_3.tint_symbol_11 / x_1005), (tint_symbol_24_3.tint_symbol_12 / x_1005), (tint_symbol_24_3.tint_symbol_13 / x_1005), (tint_symbol_24_3.tint_symbol_14 / x_1005), (tint_symbol_24_3.tint_symbol_15 / x_1005), (tint_symbol_24_3.tint_symbol_16 / x_1005));
  }
  let x_1048 = tint_return_value;
  return x_1048;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1054 = tint_symbol_30(tint_symbol_28_2);
  let x_1055 = tint_symbol_34(x_1054);
  return tint_symbol(0.0f, x_1055.tint_symbol_2, x_1055.tint_symbol_3, x_1055.tint_symbol_4, -(((-(x_1055.tint_symbol_3) * tint_symbol_1.z) - (x_1055.tint_symbol_2 * tint_symbol_1.y))), -(((x_1055.tint_symbol_2 * tint_symbol_1.x) - (x_1055.tint_symbol_4 * tint_symbol_1.z))), -(((x_1055.tint_symbol_4 * tint_symbol_1.y) + (x_1055.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1093 = sin((tint_symbol_36 / 2.0f));
  let x_1095 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1093 * x_1095.tint_symbol_2), (x_1093 * x_1095.tint_symbol_3), (x_1093 * x_1095.tint_symbol_4), (x_1093 * x_1095.tint_symbol_5), (x_1093 * x_1095.tint_symbol_6), (x_1093 * x_1095.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1259 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1259;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1288 : bool;
  var x_1289 : bool;
  var x_1294 : bool;
  var x_1295 : bool;
  var x_1300 : bool;
  var x_1301 : bool;
  let x_1268 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1274 = tint_symbol_42(x_1268);
  tint_symbol_58.tint_symbol_23 = x_1274;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1268.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1283 = tint_symbol_58.tint_symbol_53;
  x_1289 = x_1283;
  if (x_1283) {
    x_1288 = (abs(x_1268.tint_symbol_9) <= 0.00000000999999993923f);
    x_1289 = x_1288;
  }
  x_1295 = x_1289;
  if (x_1289) {
    x_1294 = (abs(x_1268.tint_symbol_10) <= 0.00000000999999993923f);
    x_1295 = x_1294;
  }
  x_1301 = x_1295;
  if (x_1295) {
    x_1300 = (abs(x_1268.tint_symbol_11) <= 0.00000000999999993923f);
    x_1301 = x_1300;
  }
  tint_symbol_58.tint_symbol_54 = x_1301;
  let x_1302 = tint_symbol_58;
  return x_1302;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1308 = tint_symbol_41(tint_symbol_23_3);
  let x_1309 = tint_symbol_22(x_1308, tint_symbol_24_5);
  let x_1310 = tint_symbol_42(x_1309);
  return x_1310;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1315 = tint_symbol_40(tint_symbol_24_6);
  let x_1316 = tint_symbol_41(tint_symbol_28_5);
  let x_1317 = tint_symbol_22(x_1316, x_1315);
  let x_1318 = tint_symbol_42(x_1317);
  return x_1318;
}

fn tint_symbol_86(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_87 : tint_symbol_67, tint_symbol_88 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_89 = 0.0f;
  let x_1330 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1332 = tint_symbol_87.tint_symbol_68;
  let x_1334 = tint_symbol_87.tint_symbol_69;
  let x_1336 = tint_symbol_87.tint_symbol_70;
  let x_1331 = tint_symbol_44(x_1332.xyz, x_1334.xyz, x_1336.xyz);
  let x_1338 = tint_symbol_55(x_1330, x_1331);
  tint_symbol_58_1 = x_1338;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1366 : bool;
    var x_1367 : bool;
    var x_1382 : bool;
    var x_1383 : bool;
    if ((abs((tint_symbol_87.tint_symbol_68.z - tint_symbol_87.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1359 = (tint_symbol_87.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1367 = x_1359;
      if (x_1359) {
        x_1366 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_87.tint_symbol_70.x);
        x_1367 = x_1366;
      }
      var x_1381 : bool;
      x_1383 = x_1367;
      if (x_1367) {
        let x_1374 = (tint_symbol_87.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1382 = x_1374;
        if (x_1374) {
          x_1381 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_87.tint_symbol_70.y);
          x_1382 = x_1381;
        }
        x_1383 = x_1382;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1383;
    } else {
      var x_1406 : bool;
      var x_1407 : bool;
      var x_1422 : bool;
      var x_1423 : bool;
      if ((abs((tint_symbol_87.tint_symbol_68.y - tint_symbol_87.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1399 = (tint_symbol_87.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1407 = x_1399;
        if (x_1399) {
          x_1406 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_87.tint_symbol_70.x);
          x_1407 = x_1406;
        }
        var x_1421 : bool;
        x_1423 = x_1407;
        if (x_1407) {
          let x_1414 = (tint_symbol_87.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1422 = x_1414;
          if (x_1414) {
            x_1421 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_87.tint_symbol_70.z);
            x_1422 = x_1421;
          }
          x_1423 = x_1422;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1423;
      } else {
        var x_1445 : bool;
        var x_1446 : bool;
        var x_1461 : bool;
        var x_1462 : bool;
        if ((abs((tint_symbol_87.tint_symbol_68.x - tint_symbol_87.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1438 = (tint_symbol_87.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1446 = x_1438;
          if (x_1438) {
            x_1445 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_87.tint_symbol_70.y);
            x_1446 = x_1445;
          }
          var x_1460 : bool;
          x_1462 = x_1446;
          if (x_1446) {
            let x_1453 = (tint_symbol_87.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1461 = x_1453;
            if (x_1453) {
              x_1460 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_87.tint_symbol_70.z);
              x_1461 = x_1460;
            }
            x_1462 = x_1461;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1462;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_89 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_89 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
      } else {
        if ((tint_symbol_88 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_89, 1.0f);
        } else {
          if ((tint_symbol_89 < tint_symbol_88)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_89, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
  }
  let x_1522 = tint_return_value_1;
  return x_1522;
}

fn tint_symbol_90(tint_symbol_28_7 : vec3f) -> vec3f {
  var tint_symbol_91 = vec3f();
  let x_1530 = tint_symbol_81.inner.tint_symbol_64;
  let x_1527 = tint_symbol_61(tint_symbol_28_7, x_1530);
  tint_symbol_91 = x_1527;
  let x_1533 = tint_symbol_91;
  let x_1536 = tint_symbol_82.inner.tint_symbol_64;
  let x_1534 = tint_symbol_21(x_1536);
  let x_1537 = tint_symbol_61(x_1533, x_1534);
  tint_symbol_91 = x_1537;
  tint_symbol_91 = (tint_symbol_91 / tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1544 = tint_symbol_91;
  return x_1544;
}

fn tint_symbol_92(tint_symbol_93 : vec3f) -> vec3f {
  var tint_symbol_91_1 = vec3f();
  let x_1550 = tint_symbol_81.inner.tint_symbol_64;
  let x_1548 = tint_symbol_60(tint_symbol_93, x_1550);
  tint_symbol_91_1 = x_1548;
  let x_1552 = tint_symbol_91_1;
  let x_1555 = tint_symbol_82.inner.tint_symbol_64;
  let x_1553 = tint_symbol_21(x_1555);
  let x_1556 = tint_symbol_60(x_1552, x_1553);
  tint_symbol_91_1 = x_1556;
  tint_symbol_91_1 = (tint_symbol_91_1 / tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1562 = tint_symbol_91_1;
  return x_1562;
}

fn tint_symbol_94(tint_symbol_32_1 : vec3f) -> vec3f {
  var tint_symbol_91_2 = vec3f();
  tint_symbol_91_2 = (tint_symbol_32_1 * tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1572 = tint_symbol_91_2;
  let x_1574 = tint_symbol_82.inner.tint_symbol_64;
  let x_1571 = tint_symbol_61(x_1572, x_1574);
  tint_symbol_91_2 = x_1571;
  let x_1576 = tint_symbol_91_2;
  return normalize(x_1576);
}

fn tint_symbol_95(tint_symbol_93_1 : vec3f) -> vec3f {
  var tint_symbol_91_3 = vec3f();
  tint_symbol_91_3 = (tint_symbol_93_1 * tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1586 = tint_symbol_91_3;
  let x_1588 = tint_symbol_82.inner.tint_symbol_64;
  let x_1585 = tint_symbol_60(x_1586, x_1588);
  tint_symbol_91_3 = x_1585;
  let x_1589 = tint_symbol_91_3;
  return x_1589;
}

fn tint_symbol_96(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_97 = 0.0f;
  var tint_symbol_98 = 0.0f;
  var tint_symbol_99 = 0i;
  tint_symbol_97 = -1.0f;
  tint_symbol_98 = -1.0f;
  tint_symbol_99 = 0i;
  loop {
    if (!((tint_symbol_99 < 6i))) {
      break;
    }
    let x_1613 = tint_symbol_82.inner.tint_symbol_74[tint_symbol_99];
    let x_1614 = tint_symbol_97;
    let x_1609 = tint_symbol_86(tint_symbol_1_2, tint_symbol_28_8, x_1613, x_1614);
    if ((x_1609.y > 0.0f)) {
      tint_symbol_97 = x_1609.x;
      tint_symbol_98 = f32(tint_symbol_99);
    }

    continuing {
      tint_symbol_99 = (tint_symbol_99 + 1i);
    }
  }
  let x_1624 = tint_symbol_97;
  let x_1625 = tint_symbol_98;
  return vec2f(x_1624, x_1625);
}

const x_1630 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_101() -> vec4f {
  return x_1630;
}

fn tint_symbol_102(tint_symbol_98_1 : i32) -> vec4f {
  var tint_symbol_103 = vec4f();
  switch(tint_symbol_98_1) {
    case 5i: {
      tint_symbol_103 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
    }
    case 4i: {
      tint_symbol_103 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
    }
    case 3i: {
      tint_symbol_103 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
    }
    case 2i: {
      tint_symbol_103 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
    }
    case 1i: {
      tint_symbol_103 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
    }
    case 0i: {
      tint_symbol_103 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
    }
    default: {
      tint_symbol_103 = x_1630;
    }
  }
  let x_1665 = tint_symbol_103;
  return x_1665;
}

const x_1682 = vec3f(0.0f, -1.0f, 0.0f);

const x_1681 = vec3f(-1.0f, 0.0f, 0.0f);

const x_1680 = vec3f(0.0f, 0.0f, -1.0f);

fn tint_symbol_104(tint_symbol_98_2 : i32) -> vec3f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec3f();
  switch(tint_symbol_98_2) {
    case 5i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1682;
    }
    case 4i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1682;
    }
    case 3i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1681;
    }
    case 2i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1681;
    }
    case 1i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1680;
    }
    case 0i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1680;
    }
    default: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f();
    }
  }
  let x_1683 = tint_return_value_2;
  return x_1683;
}

fn tint_symbol_107(tint_symbol_108 : vec3f, tint_symbol_109 : vec3f, tint_symbol_110 : vec3f, tint_symbol_111 : vec3f) -> tint_symbol_105 {
  var tint_symbol_76 = vec4f();
  var tint_symbol_112 = 0.0f;
  var x_1715 = vec4f();
  var tint_symbol_114 = vec3f();
  var tint_symbol_91_4 = tint_symbol_105(vec4f(), vec3f());
  tint_symbol_76 = tint_symbol_84.inner.tint_symbol_76;
  tint_symbol_112 = length((tint_symbol_110 - tint_symbol_108));
  tint_symbol_76 = (tint_symbol_76 / vec4f(((tint_symbol_84.inner.tint_symbol_79[0i] + (tint_symbol_112 * tint_symbol_84.inner.tint_symbol_79.y)) + ((tint_symbol_112 * tint_symbol_112) * tint_symbol_84.inner.tint_symbol_79.z))));
  tint_symbol_114 = normalize((tint_symbol_110 - tint_symbol_108));
  tint_symbol_91_4.tint_symbol_76 = (tint_symbol_76 * max(dot(tint_symbol_114, -(tint_symbol_111)), 0.0f));
  tint_symbol_91_4.tint_symbol_106 = tint_symbol_114;
  let x_1732 = tint_symbol_91_4;
  return x_1732;
}

const x_1740 = Arr_1(0.0f, 0.20000000298023223877f, 0.5f, 0.80000001192092895508f, 1.0f);

fn tint_symbol_115(tint_symbol_38 : vec3f) -> vec3f {
  var tint_symbol_87_1 = vec3f();
  var tint_symbol_99_1 = 0u;
  var tint_symbol_117 = 0.0f;
  var tint_symbol_118 = 0.0f;
  var tint_symbol_119 = 0u;
  var var_for_index = array<f32, 5u>();
  var var_for_index_1 = array<f32, 5u>();
  tint_symbol_99_1 = 0u;
  loop {
    if (!((tint_symbol_99_1 < 3u))) {
      break;
    }
    tint_symbol_117 = abs((tint_symbol_38[tint_symbol_99_1] - x_1740[0u]));
    tint_symbol_118 = x_1740[0u];
    tint_symbol_119 = 1u;
    loop {
      if (!((tint_symbol_119 < 5u))) {
        break;
      }
      var_for_index = x_1740;
      let x_1775 = abs((tint_symbol_38[tint_symbol_99_1] - var_for_index[tint_symbol_119]));
      if ((x_1775 < tint_symbol_117)) {
        tint_symbol_117 = x_1775;
        var_for_index_1 = x_1740;
        tint_symbol_118 = var_for_index_1[tint_symbol_119];
      }

      continuing {
        tint_symbol_119 = (tint_symbol_119 + 1u);
      }
    }
    let x_1792 = tint_symbol_99_1;
    tint_symbol_87_1[x_1792] = tint_symbol_118;

    continuing {
      tint_symbol_99_1 = (tint_symbol_99_1 + 1u);
    }
  }
  let x_1797 = tint_symbol_87_1;
  return x_1797;
}

const x_1821 = vec2f(2.0f);

const x_1853 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_120_inner(tint_symbol_121 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_125 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var tint_symbol_103_1 = vec4f();
  var tint_symbol_127 = vec4f();
  var tint_symbol_128 = vec3f();
  var tint_symbol_129 = vec3f();
  var x_1817 : bool;
  var x_1818 : bool;
  let x_1803 = bitcast<vec2i>(tint_symbol_121.xy);
  let x_1807 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
  let x_1812 = (x_1803.x < x_1807.x);
  x_1818 = x_1812;
  if (x_1812) {
    x_1817 = (x_1803.y < x_1807.y);
    x_1818 = x_1817;
  }
  if (x_1818) {
    let x_1826 = (x_1821 / tint_symbol_81.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1803.x) + 0.5f) * x_1826.x) - 1.0f), (((f32(x_1803.y) + 0.5f) * x_1826.y) - 1.0f), 0.0f);
    tint_symbol_125 = vec3f(0.0f, 0.0f, 1.0f);
    let x_1844 = tint_symbol_37_1;
    let x_1843 = tint_symbol_92(x_1844);
    tint_symbol_37_1 = x_1843;
    let x_1846 = tint_symbol_125;
    let x_1845 = tint_symbol_90(x_1846);
    tint_symbol_125 = x_1845;
    let x_1848 = tint_symbol_37_1;
    let x_1849 = tint_symbol_125;
    let x_1847 = tint_symbol_96(x_1848, x_1849);
    tint_symbol_58_2 = x_1847;
    tint_symbol_103_1 = x_1853;
    if ((tint_symbol_58_2.x > 0.0f)) {
      let x_1860 = tint_symbol_101();
      let x_1864 = tint_symbol_58_2.y;
      let x_1862 = tint_ftoi(x_1864);
      let x_1861 = tint_symbol_102(x_1862);
      tint_symbol_127 = x_1861;
      let x_1869 = tint_symbol_58_2.y;
      let x_1867 = tint_ftoi(x_1869);
      let x_1866 = tint_symbol_104(x_1867);
      tint_symbol_128 = x_1866;
      let x_1872 = tint_symbol_128;
      let x_1871 = tint_symbol_94(x_1872);
      tint_symbol_128 = x_1871;
      let x_1875 = tint_symbol_81.inner.tint_symbol_64;
      let x_1873 = tint_symbol_21(x_1875);
      let x_1878 = tint_symbol_84.inner.tint_symbol_77;
      let x_1876 = tint_symbol_60(x_1878.xyz, x_1873);
      let x_1882 = tint_symbol_81.inner.tint_symbol_64;
      let x_1880 = tint_symbol_21(x_1882);
      let x_1885 = tint_symbol_84.inner.tint_symbol_78;
      let x_1883 = tint_symbol_61(x_1885.xyz, x_1880);
      tint_symbol_129 = (tint_symbol_37_1 + (tint_symbol_125 * tint_symbol_58_2.x));
      let x_1895 = tint_symbol_129;
      let x_1894 = tint_symbol_95(x_1895);
      tint_symbol_129 = x_1894;
      let x_1897 = tint_symbol_129;
      let x_1898 = tint_symbol_128;
      let x_1896 = tint_symbol_107(x_1876, x_1883, x_1897, x_1898);
      tint_symbol_127 = (tint_symbol_127 * x_1896.tint_symbol_76);
      tint_symbol_103_1 = (x_1860 + tint_symbol_127);
    }
    let x_1906 = tint_symbol_103_1;
    textureStore(tint_symbol_83, x_1803, x_1906);
  }
  return;
}

fn tint_symbol_120_1() {
  let x_1911 = tint_symbol_121_1;
  tint_symbol_120_inner(x_1911);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_121_1_param : vec3u) {
  tint_symbol_121_1 = tint_symbol_121_1_param;
  tint_symbol_120_1();
}

const x_1948 = vec2f(0.5f);

const x_2115 = vec4f(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f, 1.0f);

const x_2126 = vec4f(1.0f);

fn tint_symbol_131_inner(tint_symbol_121_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_125_1 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var tint_symbol_103_2 = vec4f();
  var tint_symbol_127_1 = vec4f();
  var tint_symbol_128_1 = vec3f();
  var tint_symbol_129_1 = vec3f();
  var tint_symbol_37_3 = vec3f();
  var tint_symbol_125_2 = vec3f();
  var tint_symbol_58_4 = vec2f();
  var tint_symbol_103_3 = vec4f();
  var tint_symbol_127_2 = vec4f();
  var tint_symbol_128_2 = vec3f();
  var tint_symbol_129_2 = vec3f();
  var tint_symbol_37_4 = vec3f();
  var tint_symbol_125_3 = vec3f();
  var tint_symbol_58_5 = vec2f();
  var tint_symbol_103_4 = vec4f();
  var tint_symbol_127_3 = vec4f();
  var tint_symbol_128_3 = vec3f();
  var tint_symbol_129_3 = vec3f();
  var x_1934 : bool;
  var x_1935 : bool;
  if ((tint_symbol_85.inner == 0u)) {
    let x_1922 = bitcast<vec2i>(tint_symbol_121_3.xy);
    let x_1924 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
    let x_1929 = (x_1922.x < x_1924.x);
    x_1935 = x_1929;
    if (x_1929) {
      x_1934 = (x_1922.y < x_1924.y);
      x_1935 = x_1934;
    }
    if (x_1935) {
      let x_1939 = tint_symbol_81.inner.tint_symbol_66;
      tint_symbol_37_2 = vec3f();
      let x_1950 = (((vec2f(x_1922) - (tint_symbol_81.inner.tint_symbol_66 * 0.5f)) + x_1948) * (x_1821 / x_1939.xy));
      tint_symbol_125_1 = vec3f(x_1950.x, x_1950.y, 1.0f);
      let x_1956 = tint_symbol_37_2;
      let x_1955 = tint_symbol_92(x_1956);
      tint_symbol_37_2 = x_1955;
      let x_1958 = tint_symbol_125_1;
      let x_1957 = tint_symbol_90(x_1958);
      tint_symbol_125_1 = x_1957;
      let x_1960 = tint_symbol_37_2;
      let x_1961 = tint_symbol_125_1;
      let x_1959 = tint_symbol_96(x_1960, x_1961);
      tint_symbol_58_3 = x_1959;
      tint_symbol_103_2 = x_1853;
      if ((tint_symbol_58_3.x > 0.0f)) {
        let x_1969 = tint_symbol_101();
        let x_1973 = tint_symbol_58_3.y;
        let x_1971 = tint_ftoi(x_1973);
        let x_1970 = tint_symbol_102(x_1971);
        tint_symbol_127_1 = x_1970;
        let x_1978 = tint_symbol_58_3.y;
        let x_1976 = tint_ftoi(x_1978);
        let x_1975 = tint_symbol_104(x_1976);
        tint_symbol_128_1 = x_1975;
        let x_1981 = tint_symbol_128_1;
        let x_1980 = tint_symbol_94(x_1981);
        tint_symbol_128_1 = x_1980;
        let x_1984 = tint_symbol_81.inner.tint_symbol_64;
        let x_1982 = tint_symbol_21(x_1984);
        let x_1987 = tint_symbol_84.inner.tint_symbol_77;
        let x_1985 = tint_symbol_60(x_1987.xyz, x_1982);
        let x_1991 = tint_symbol_81.inner.tint_symbol_64;
        let x_1989 = tint_symbol_21(x_1991);
        let x_1994 = tint_symbol_84.inner.tint_symbol_78;
        let x_1992 = tint_symbol_61(x_1994.xyz, x_1989);
        tint_symbol_129_1 = (tint_symbol_37_2 + (tint_symbol_125_1 * tint_symbol_58_3.x));
        let x_2004 = tint_symbol_129_1;
        let x_2003 = tint_symbol_95(x_2004);
        tint_symbol_129_1 = x_2003;
        let x_2006 = tint_symbol_129_1;
        let x_2007 = tint_symbol_128_1;
        let x_2005 = tint_symbol_107(x_1985, x_1992, x_2006, x_2007);
        tint_symbol_127_1 = (tint_symbol_127_1 * x_2005.tint_symbol_76);
        tint_symbol_103_2 = (x_1969 + tint_symbol_127_1);
      }
      let x_2015 = tint_symbol_103_2;
      textureStore(tint_symbol_83, x_1922, x_2015);
    }
  } else {
    var x_2034 : bool;
    var x_2035 : bool;
    if ((tint_symbol_85.inner == 1u)) {
      let x_2022 = bitcast<vec2i>(tint_symbol_121_3.xy);
      let x_2024 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
      let x_2029 = (x_2022.x < x_2024.x);
      x_2035 = x_2029;
      if (x_2029) {
        x_2034 = (x_2022.y < x_2024.y);
        x_2035 = x_2034;
      }
      if (x_2035) {
        let x_2039 = tint_symbol_81.inner.tint_symbol_66;
        tint_symbol_37_3 = vec3f();
        let x_2049 = (((vec2f(x_2022) - (tint_symbol_81.inner.tint_symbol_66 * 0.5f)) + x_1948) * (x_1821 / x_2039.xy));
        tint_symbol_125_2 = vec3f(x_2049.x, x_2049.y, 1.0f);
        let x_2055 = tint_symbol_37_3;
        let x_2054 = tint_symbol_92(x_2055);
        tint_symbol_37_3 = x_2054;
        let x_2057 = tint_symbol_125_2;
        let x_2056 = tint_symbol_90(x_2057);
        tint_symbol_125_2 = x_2056;
        let x_2059 = tint_symbol_37_3;
        let x_2060 = tint_symbol_125_2;
        let x_2058 = tint_symbol_96(x_2059, x_2060);
        tint_symbol_58_4 = x_2058;
        tint_symbol_103_3 = x_1853;
        if ((tint_symbol_58_4.x > 0.0f)) {
          let x_2068 = tint_symbol_101();
          let x_2072 = tint_symbol_58_4.y;
          let x_2070 = tint_ftoi(x_2072);
          let x_2069 = tint_symbol_102(x_2070);
          tint_symbol_127_2 = x_2069;
          let x_2077 = tint_symbol_58_4.y;
          let x_2075 = tint_ftoi(x_2077);
          let x_2074 = tint_symbol_104(x_2075);
          tint_symbol_128_2 = x_2074;
          let x_2080 = tint_symbol_128_2;
          let x_2079 = tint_symbol_94(x_2080);
          tint_symbol_128_2 = x_2079;
          let x_2083 = tint_symbol_81.inner.tint_symbol_64;
          let x_2081 = tint_symbol_21(x_2083);
          let x_2086 = tint_symbol_84.inner.tint_symbol_77;
          let x_2084 = tint_symbol_60(x_2086.xyz, x_2081);
          let x_2090 = tint_symbol_81.inner.tint_symbol_64;
          let x_2088 = tint_symbol_21(x_2090);
          let x_2093 = tint_symbol_84.inner.tint_symbol_78;
          let x_2091 = tint_symbol_61(x_2093.xyz, x_2088);
          tint_symbol_129_2 = (tint_symbol_37_3 + (tint_symbol_125_2 * tint_symbol_58_4.x));
          let x_2103 = tint_symbol_129_2;
          let x_2102 = tint_symbol_95(x_2103);
          tint_symbol_129_2 = x_2102;
          let x_2105 = tint_symbol_129_2;
          let x_2106 = tint_symbol_128_2;
          let x_2104 = tint_symbol_107(x_2084, x_2091, x_2105, x_2106);
          let x_2109 = tint_symbol_125_2;
          let x_2111 = -(x_2104.tint_symbol_106);
          let x_2113 = tint_symbol_128_2;
          tint_symbol_127_2 = (tint_symbol_127_2 * x_2104.tint_symbol_76);
          let x_2134 = clamp(((((x_2068 + tint_symbol_127_2) + ((x_2126 * (1.0f * pow(max(dot(normalize(-(x_2109)), reflect(x_2111, x_2113)), 0.0f), 51.0f))) * x_2104.tint_symbol_76)) + (x_2115 * x_2104.tint_symbol_76))).xyz, vec3f(), vec3f(1.0f));
          tint_symbol_103_3 = vec4f(x_2134.x, x_2134.y, x_2134.z, 1.0f);
        }
        let x_2143 = tint_symbol_103_3;
        textureStore(tint_symbol_83, x_2022, x_2143);
      }
    } else {
      var x_2161 : bool;
      var x_2162 : bool;
      if ((tint_symbol_85.inner == 2u)) {
        let x_2149 = bitcast<vec2i>(tint_symbol_121_3.xy);
        let x_2151 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
        let x_2156 = (x_2149.x < x_2151.x);
        x_2162 = x_2156;
        if (x_2156) {
          x_2161 = (x_2149.y < x_2151.y);
          x_2162 = x_2161;
        }
        if (x_2162) {
          let x_2166 = tint_symbol_81.inner.tint_symbol_66;
          tint_symbol_37_4 = vec3f();
          let x_2176 = (((vec2f(x_2149) - (tint_symbol_81.inner.tint_symbol_66 * 0.5f)) + x_1948) * (x_1821 / x_2166.xy));
          tint_symbol_125_3 = vec3f(x_2176.x, x_2176.y, 1.0f);
          let x_2182 = tint_symbol_37_4;
          let x_2181 = tint_symbol_92(x_2182);
          tint_symbol_37_4 = x_2181;
          let x_2184 = tint_symbol_125_3;
          let x_2183 = tint_symbol_90(x_2184);
          tint_symbol_125_3 = x_2183;
          let x_2186 = tint_symbol_37_4;
          let x_2187 = tint_symbol_125_3;
          let x_2185 = tint_symbol_96(x_2186, x_2187);
          tint_symbol_58_5 = x_2185;
          tint_symbol_103_4 = x_1853;
          if ((tint_symbol_58_5.x > 0.0f)) {
            let x_2195 = tint_symbol_101();
            let x_2199 = tint_symbol_58_5.y;
            let x_2197 = tint_ftoi(x_2199);
            let x_2196 = tint_symbol_102(x_2197);
            tint_symbol_127_3 = x_2196;
            let x_2204 = tint_symbol_58_5.y;
            let x_2202 = tint_ftoi(x_2204);
            let x_2201 = tint_symbol_104(x_2202);
            tint_symbol_128_3 = x_2201;
            let x_2207 = tint_symbol_128_3;
            let x_2206 = tint_symbol_94(x_2207);
            tint_symbol_128_3 = x_2206;
            let x_2210 = tint_symbol_81.inner.tint_symbol_64;
            let x_2208 = tint_symbol_21(x_2210);
            let x_2213 = tint_symbol_84.inner.tint_symbol_77;
            let x_2211 = tint_symbol_60(x_2213.xyz, x_2208);
            let x_2217 = tint_symbol_81.inner.tint_symbol_64;
            let x_2215 = tint_symbol_21(x_2217);
            let x_2220 = tint_symbol_84.inner.tint_symbol_78;
            let x_2218 = tint_symbol_61(x_2220.xyz, x_2215);
            tint_symbol_129_3 = (tint_symbol_37_4 + (tint_symbol_125_3 * tint_symbol_58_5.x));
            let x_2230 = tint_symbol_129_3;
            let x_2229 = tint_symbol_95(x_2230);
            tint_symbol_129_3 = x_2229;
            let x_2232 = tint_symbol_129_3;
            let x_2233 = tint_symbol_128_3;
            let x_2231 = tint_symbol_107(x_2211, x_2218, x_2232, x_2233);
            let x_2236 = tint_symbol_125_3;
            let x_2238 = -(x_2231.tint_symbol_106);
            let x_2240 = tint_symbol_128_3;
            tint_symbol_127_3 = (tint_symbol_127_3 * x_2231.tint_symbol_76);
            let x_2257 = (((x_2195 + tint_symbol_127_3) + ((x_2126 * (1.0f * pow(max(dot(normalize(-(x_2236)), -(reflect(x_2238, x_2240))), 0.0f), 51.0f))) * x_2231.tint_symbol_76)) + (x_2115 * x_2231.tint_symbol_76));
            let x_2258 = tint_symbol_115(x_2257.xyz);
            tint_symbol_103_4 = vec4f(x_2258.x, x_2258.y, x_2258.z, 1.0f);
          }
          let x_2266 = tint_symbol_103_4;
          textureStore(tint_symbol_83, x_2149, x_2266);
        }
      }
    }
  }
  return;
}

fn tint_symbol_131_1() {
  let x_2270 = tint_symbol_121_2;
  tint_symbol_131_inner(x_2270);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_121_2_param : vec3u) {
  tint_symbol_121_2 = tint_symbol_121_2_param;
  tint_symbol_131_1();
}
