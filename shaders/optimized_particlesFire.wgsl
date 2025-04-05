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
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_6_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_8_block {
  /* @offset(0) */
  inner : f32,
}

struct tint_symbol_9 {
  /* @offset(0) */
  tint_symbol_10 : vec4f,
  /* @offset(16) */
  tint_symbol_11 : f32,
}

var<private> tint_symbol_13_1 : u32;

var<private> tint_symbol_14_1 : u32;

var<private> tint_symbol_10_1 = vec4f();

var<private> tint_symbol_11_1 = 0.0f;

var<private> tint_symbol_11_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_36_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_6 : tint_symbol_6_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_7 : tint_symbol_6_block;

@group(0) @binding(2) var<uniform> tint_symbol_8 : tint_symbol_8_block;

fn tint_symbol_12_inner(tint_symbol_13 : u32, tint_symbol_14 : u32) -> tint_symbol_9 {
  var tint_symbol_11 = 0.0f;
  var tint_symbol_23 = tint_symbol_9(vec4f(), 0.0f);
  let x_39 = tint_symbol_6.inner[tint_symbol_13].tint_symbol_1;
  tint_symbol_11 = (length((x_39 - vec2f(0.0f, -1.0f))) * 512.0f);
  if ((tint_symbol_11 > 255.0f)) {
    tint_symbol_11 = 255.0f;
  }
  let x_59 = ((0.01250000018626451492f * (255.0f - tint_symbol_11)) / 255.0f);
  let x_65 = tint_symbol_6.inner[tint_symbol_13].tint_symbol_5[0i];
  let x_68 = tint_symbol_6.inner[tint_symbol_13].tint_symbol_5.y;
  let x_75 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_14));
  let x_89 = vec2f(((cos(x_75) * x_59) + x_39.x), ((sin(x_75) * x_59) + x_39.y));
  tint_symbol_23.tint_symbol_10 = vec4f(x_89.x, x_89.y, 0.0f, 1.0f);
  tint_symbol_23.tint_symbol_11 = tint_symbol_11;
  let x_97 = tint_symbol_23;
  return x_97;
}

fn tint_symbol_12_1() {
  let x_103 = tint_symbol_13_1;
  let x_104 = tint_symbol_14_1;
  let x_102 = tint_symbol_12_inner(x_103, x_104);
  tint_symbol_10_1 = x_102.tint_symbol_10;
  tint_symbol_11_1 = x_102.tint_symbol_11;
  return;
}

struct tint_symbol_12_out {
  @builtin(position)
  tint_symbol_10_1_1 : vec4f,
  @location(0)
  tint_symbol_11_1_1 : f32,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_13_1_param : u32, @builtin(vertex_index) tint_symbol_14_1_param : u32) -> tint_symbol_12_out {
  tint_symbol_13_1 = tint_symbol_13_1_param;
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_12_1();
  return tint_symbol_12_out(tint_symbol_10_1, tint_symbol_11_1);
}

const x_118 = vec4f(0.94901961088180541992f, 0.49019607901573181152f, 0.04705882444977760315f, 1.0f);

fn tint_symbol_24_inner(tint_symbol_11_3 : f32) -> vec4f {
  if ((tint_symbol_11_3 > 128.0f)) {
    let x_129 = ((tint_symbol_11_3 - 128.0f) / 127.0f);
    return ((vec4f(0.50196081399917602539f, 0.03529411926865577698f, 0.03529411926865577698f, 1.0f) * x_129) + (x_118 * (1.0f - x_129)));
  } else {
    let x_135 = ((128.0f - tint_symbol_11_3) / 128.0f);
    return ((vec4f(0.99215686321258544922f, 0.81176471710205078125f, 0.34509804844856262207f, 1.0f) * x_135) + (x_118 * (1.0f - x_135)));
  }
}

fn tint_symbol_24_1() {
  let x_143 = tint_symbol_11_2;
  let x_142 = tint_symbol_24_inner(x_143);
  value = x_142;
  return;
}

struct tint_symbol_24_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_11_2_param : f32) -> tint_symbol_24_out {
  tint_symbol_11_2 = tint_symbol_11_2_param;
  tint_symbol_24_1();
  return tint_symbol_24_out(value);
}

fn tint_symbol_29(tint_symbol_8_1 : f32, tint_symbol_30 : f32, tint_symbol_31 : f32) -> vec2f {
  let x_152 = (sin((tint_symbol_8_1 * tint_symbol_30)) * 3.14159274101257324219f);
  return (vec2f(cos(x_152), sin(x_152)) * tint_symbol_31);
}

fn tint_symbol_33(tint_symbol_34 : f32) -> f32 {
  let x_165 = tint_symbol_8.inner;
  return fract((sin((x_165 + tint_symbol_34)) * 43758.546875f));
}

fn tint_symbol_35_inner(tint_symbol_36 : vec3u) {
  var x_201 = vec2f();
  var x_173 : u32;
  var x_212 : bool;
  var x_213 : bool;
  var x_217 : bool;
  x_173 = tint_symbol_36.x;
  if ((x_173 < arrayLength(&(tint_symbol_6.inner)))) {
    let x_179 = tint_symbol_6.inner[x_173].tint_symbol_1;
    let x_181 = tint_symbol_6.inner[x_173].tint_symbol_2;
    let x_184 = tint_symbol_6.inner[x_173].tint_symbol_3;
    let x_187 = tint_symbol_6.inner[x_173].tint_symbol_4;
    let x_189 = tint_symbol_6.inner[x_173].tint_symbol_5[0i];
    let x_191 = tint_symbol_6.inner[x_173].tint_symbol_5.y;
    let x_194 = (x_179 + x_184);
    let x_195 = (x_189 - 1.0f);
    let x_200 = (vec2f(x_184.x, (x_184.y + -0.00009999999747378752f)) - vec2f(0.0f));
    let x_207 = (abs(x_194.x) > 1.0f);
    x_213 = x_207;
    if (x_207) {
    } else {
      x_212 = (abs(x_194.y) > 1.0f);
      x_213 = x_212;
    }
    let x_214 = (x_189 <= 0.0f);
    x_217 = x_213;
    if (x_213) {
    } else {
      x_217 = x_214;
    }
    if (x_217) {
      tint_symbol_7.inner[x_173].tint_symbol_1 = x_181;
      tint_symbol_7.inner[x_173].tint_symbol_5[0i] = x_191;
      let x_223 = tint_symbol_33(x_184.x);
      let x_226 = tint_symbol_33(x_184.y);
      tint_symbol_7.inner[x_173].tint_symbol_3 = vec2f(((x_223 * 0.00999999977648258209f) - (0.00999999977648258209f / 2.0f)), (x_226 * 0.00999999977648258209f));
    } else {
      tint_symbol_7.inner[x_173].tint_symbol_1 = x_194;
      tint_symbol_7.inner[x_173].tint_symbol_5[0i] = x_195;
      tint_symbol_7.inner[x_173].tint_symbol_3 = x_200;
      tint_symbol_7.inner[x_173].tint_symbol_1[0i] = (tint_symbol_7.inner[x_173].tint_symbol_1[0i] + ((0.0f - (x_179.x / 10.0f)) * 0.15000000596046447754f));
      tint_symbol_7.inner[x_173].tint_symbol_3[0i] = (tint_symbol_7.inner[x_173].tint_symbol_3[0i] * 0.98000001907348632812f);
    }
    tint_symbol_7.inner[x_173].tint_symbol_5.y = x_191;
    tint_symbol_7.inner[x_173].tint_symbol_2 = x_181;
    tint_symbol_7.inner[x_173].tint_symbol_4 = x_187;
  }
  return;
}

fn tint_symbol_35_1() {
  let x_257 = tint_symbol_36_1;
  tint_symbol_35_inner(x_257);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_36_1_param : vec3u) {
  tint_symbol_36_1 = tint_symbol_36_1_param;
  tint_symbol_35_1();
}
