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
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : vec2f,
  /* @offset(32) */
  tint_symbol_5 : vec2f,
  /* @offset(40) */
  tint_symbol_6 : f32,
  /* @offset(44) */
  tint_symbol_7 : f32,
  /* @offset(48) */
  tint_symbol_8 : f32,
  /* @offset(52) */
  tint_symbol_9 : f32,
  /* @offset(56) */
  tint_symbol_10 : vec2f,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_13_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_15_block {
  /* @offset(0) */
  inner : f32,
}

struct tint_symbol_11 {
  /* @offset(0) */
  tint_symbol_12 : vec2f,
}

struct tint_symbol_16_block {
  /* @offset(0) */
  inner : tint_symbol_11,
}

struct tint_symbol_17 {
  /* @offset(0) */
  tint_symbol_12 : vec4f,
  /* @offset(16) */
  tint_symbol_18 : f32,
}

var<private> tint_symbol_20_1 : u32;

var<private> tint_symbol_21_1 : u32;

var<private> tint_symbol_12_1 = vec4f();

var<private> tint_symbol_18_1 = 0.0f;

var<private> tint_symbol_18_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_43_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_13 : tint_symbol_13_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_14 : tint_symbol_13_block;

@group(0) @binding(2) var<uniform> tint_symbol_15 : tint_symbol_15_block;

@group(0) @binding(3) var<storage> tint_symbol_16 : tint_symbol_16_block;

fn tint_symbol_19_inner(tint_symbol_20 : u32, tint_symbol_21 : u32) -> tint_symbol_17 {
  var tint_symbol_18 = 0.0f;
  var tint_symbol_30 = tint_symbol_17(vec4f(), 0.0f);
  let x_43 = tint_symbol_13.inner[tint_symbol_20].tint_symbol_1;
  tint_symbol_18 = (length((x_43 - vec2f(0.0f, -1.0f))) * 512.0f);
  if ((tint_symbol_18 > 255.0f)) {
    tint_symbol_18 = 255.0f;
  }
  let x_65 = tint_symbol_13.inner[tint_symbol_20].tint_symbol_5[0i];
  let x_68 = tint_symbol_13.inner[tint_symbol_20].tint_symbol_5.y;
  let x_75 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_21));
  let x_89 = vec2f(((cos(x_75) * 0.00499999988824129105f) + x_43.x), ((sin(x_75) * 0.00499999988824129105f) + x_43.y));
  tint_symbol_30.tint_symbol_12 = vec4f(x_89.x, x_89.y, 0.0f, 1.0f);
  tint_symbol_30.tint_symbol_18 = tint_symbol_18;
  let x_97 = tint_symbol_30;
  return x_97;
}

fn tint_symbol_19_1() {
  let x_103 = tint_symbol_20_1;
  let x_104 = tint_symbol_21_1;
  let x_102 = tint_symbol_19_inner(x_103, x_104);
  tint_symbol_12_1 = x_102.tint_symbol_12;
  tint_symbol_18_1 = x_102.tint_symbol_18;
  return;
}

struct tint_symbol_19_out {
  @builtin(position)
  tint_symbol_12_1_1 : vec4f,
  @location(0)
  tint_symbol_18_1_1 : f32,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_20_1_param : u32, @builtin(vertex_index) tint_symbol_21_1_param : u32) -> tint_symbol_19_out {
  tint_symbol_20_1 = tint_symbol_20_1_param;
  tint_symbol_21_1 = tint_symbol_21_1_param;
  tint_symbol_19_1();
  return tint_symbol_19_out(tint_symbol_12_1, tint_symbol_18_1);
}

fn tint_symbol_31_inner(tint_symbol_18_3 : f32) -> vec4f {
  return vec4f(1.0f);
}

fn tint_symbol_31_1() {
  let x_115 = tint_symbol_18_2;
  let x_114 = tint_symbol_31_inner(x_115);
  value = x_114;
  return;
}

struct tint_symbol_31_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_18_2_param : f32) -> tint_symbol_31_out {
  tint_symbol_18_2 = tint_symbol_18_2_param;
  tint_symbol_31_1();
  return tint_symbol_31_out(value);
}

fn tint_symbol_36(tint_symbol_15_1 : f32, tint_symbol_37 : f32, tint_symbol_38 : f32) -> vec2f {
  let x_124 = (sin((tint_symbol_15_1 * tint_symbol_37)) * 3.14159274101257324219f);
  return (vec2f(cos(x_124), sin(x_124)) * tint_symbol_38);
}

fn tint_symbol_40(tint_symbol_41 : f32) -> f32 {
  let x_137 = tint_symbol_15.inner;
  return fract((sin((x_137 + tint_symbol_41)) * 43758.546875f));
}

fn tint_symbol_42_inner(tint_symbol_43 : vec3u) {
  var tint_symbol_6 = 0.0f;
  var tint_symbol_7 = 0.0f;
  var tint_symbol_8 = 0.0f;
  var x_193 = vec2f();
  var tint_symbol_57 = vec2f();
  var tint_symbol_58 = 0.0f;
  var tint_symbol_61 = 0.0f;
  var tint_symbol_62 = 0.0f;
  var tint_symbol_63 = 0.0f;
  var x_145 : u32;
  var x_218 : bool;
  var x_219 : bool;
  var x_267 : bool;
  var x_268 : bool;
  var x_272 : bool;
  x_145 = tint_symbol_43.x;
  if ((x_145 < arrayLength(&(tint_symbol_13.inner)))) {
    let x_151 = tint_symbol_13.inner[x_145].tint_symbol_1;
    let x_153 = tint_symbol_13.inner[x_145].tint_symbol_2;
    let x_156 = tint_symbol_13.inner[x_145].tint_symbol_3;
    let x_159 = tint_symbol_13.inner[x_145].tint_symbol_4;
    let x_161 = tint_symbol_13.inner[x_145].tint_symbol_5[0i];
    let x_163 = tint_symbol_13.inner[x_145].tint_symbol_5.y;
    tint_symbol_6 = tint_symbol_13.inner[x_145].tint_symbol_6;
    tint_symbol_7 = tint_symbol_13.inner[x_145].tint_symbol_7;
    tint_symbol_8 = tint_symbol_13.inner[x_145].tint_symbol_8;
    let x_178 = (0.00999999977648258209f / 10.0f);
    let x_181 = tint_symbol_16.inner.tint_symbol_12[0i];
    let x_183 = tint_symbol_16.inner.tint_symbol_12.y;
    let x_186 = (x_151 + x_156);
    let x_187 = (x_161 - 1.0f);
    tint_symbol_57 = (vec2f(x_156.x, (x_156.y + -0.00009999999747378752f)) - vec2f(0.0f));
    if ((abs(tint_symbol_57.y) > 0.02999999932944774628f)) {
      tint_symbol_57.y = (sign(tint_symbol_57.y) * 0.02999999932944774628f);
    }
    let x_212 = (abs((x_151.x - x_181)) <= 0.10000000149011611938f);
    x_219 = x_212;
    if (x_212) {
      x_218 = (abs((x_151.y - x_183)) <= 0.10000000149011611938f);
      x_219 = x_218;
    }
    if (x_219) {
      tint_symbol_58 = sign((x_151.x - x_181));
      if ((tint_symbol_58 == 0.0f)) {
        tint_symbol_58 = 1.0f;
      }
      if ((tint_symbol_7 == 0.0f)) {
        tint_symbol_7 = tint_symbol_58;
        tint_symbol_6 = x_178;
        tint_symbol_8 = tint_symbol_57[0i];
      }
    }
    if ((tint_symbol_7 != 0.0f)) {
      tint_symbol_6 = (tint_symbol_6 - (x_178 / 60.0f));
      if ((abs((tint_symbol_6 - tint_symbol_8)) <= (x_178 / 60.0f))) {
        tint_symbol_6 = 0.0f;
        tint_symbol_7 = 0.0f;
        tint_symbol_57[0i] = tint_symbol_8;
        tint_symbol_8 = 0.0f;
      } else {
        tint_symbol_57[0i] = (tint_symbol_7 * tint_symbol_6);
      }
    }
    let x_262 = (abs(x_186.x) > 1.0f);
    x_268 = x_262;
    if (x_262) {
    } else {
      x_267 = (abs(x_186.y) > 1.0f);
      x_268 = x_267;
    }
    let x_269 = (x_161 <= 0.0f);
    x_272 = x_268;
    if (x_268) {
    } else {
      x_272 = x_269;
    }
    if (x_272) {
      tint_symbol_61 = x_151.x;
      tint_symbol_62 = x_151.y;
      if ((abs(x_186.x) > 1.0f)) {
        tint_symbol_61 = -(x_151.x);
      }
      if ((abs(x_186.y) > 1.0f)) {
        tint_symbol_62 = -(x_151.y);
      }
      tint_symbol_14.inner[x_145].tint_symbol_1 = vec2f(tint_symbol_61, tint_symbol_62);
      tint_symbol_14.inner[x_145].tint_symbol_5[0i] = x_163;
      tint_symbol_63 = 0.0f;
      tint_symbol_14.inner[x_145].tint_symbol_3 = tint_symbol_57;
    } else {
      tint_symbol_14.inner[x_145].tint_symbol_1 = x_186;
      tint_symbol_14.inner[x_145].tint_symbol_5[0i] = x_187;
      tint_symbol_14.inner[x_145].tint_symbol_3 = tint_symbol_57;
    }
    tint_symbol_14.inner[x_145].tint_symbol_5.y = x_163;
    tint_symbol_14.inner[x_145].tint_symbol_2 = x_153;
    tint_symbol_14.inner[x_145].tint_symbol_4 = x_159;
    tint_symbol_14.inner[x_145].tint_symbol_6 = tint_symbol_6;
    tint_symbol_14.inner[x_145].tint_symbol_7 = tint_symbol_7;
    tint_symbol_14.inner[x_145].tint_symbol_8 = tint_symbol_8;
    tint_symbol_14.inner[x_145].tint_symbol_9 = tint_symbol_13.inner[x_145].tint_symbol_9;
    tint_symbol_14.inner[x_145].tint_symbol_10 = tint_symbol_13.inner[x_145].tint_symbol_10;
  }
  return;
}

fn tint_symbol_42_1() {
  let x_326 = tint_symbol_43_1;
  tint_symbol_42_inner(x_326);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_43_1_param : vec3u) {
  tint_symbol_43_1 = tint_symbol_43_1_param;
  tint_symbol_42_1();
}
