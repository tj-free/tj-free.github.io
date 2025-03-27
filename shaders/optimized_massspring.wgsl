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
  tint_symbol_4 : f32,
  /* @offset(28) */
  tint_symbol_5 : f32,
  /* @offset(32) */
  tint_symbol_6 : vec4f,
  /* @offset(48) */
  tint_symbol_7 : vec2f,
  /* @offset(56) */
  tint_symbol_8 : f32,
  /* @offset(60) */
  tint_symbol_9 : f32,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_15_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_10 {
  /* @offset(0) */
  tint_symbol_11 : vec2f,
  /* @offset(8) */
  tint_symbol_12 : f32,
  /* @offset(12) */
  tint_symbol_13 : f32,
}

alias RTArr_1 = array<tint_symbol_10>;

struct tint_symbol_17_block {
  /* @offset(0) */
  inner : RTArr_1,
}

struct tint_symbol_14 {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
}

alias RTArr_2 = array<tint_symbol_14>;

struct tint_symbol_18_block {
  /* @offset(0) */
  inner : RTArr_2,
}

var<private> tint_symbol_20_1 : u32;

var<private> tint_symbol_21_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_20_2 : u32;

var<private> tint_symbol_21_2 : u32;

var<private> value_2 = vec4f();

var<private> value_3 = vec4f();

var<private> tint_symbol_39_1 : vec3u;

var<private> tint_symbol_39_2 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_15 : tint_symbol_15_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_16 : tint_symbol_15_block;

@group(0) @binding(2) var<storage> tint_symbol_17 : tint_symbol_17_block;

@group(0) @binding(3) var<storage> tint_symbol_18 : tint_symbol_18_block;

fn tint_ftou(v : f32) -> u32 {
  return select(4294967295u, select(u32(v), 0u, (v < 0.0f)), (v < 4294967040.0f));
}

fn tint_symbol_19_inner(tint_symbol_20 : u32, tint_symbol_21 : u32) -> vec4f {
  let x_61 = tint_symbol_15.inner[tint_symbol_20];
  let x_62 = x_61.tint_symbol_4;
  let x_69 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_21));
  let x_84 = vec2f(((cos(x_69) * x_62) + x_61.tint_symbol_1.x), ((sin(x_69) * x_62) + x_61.tint_symbol_1.y));
  return vec4f(x_84.x, x_84.y, 0.0f, 1.0f);
}

fn tint_symbol_19_1() {
  let x_94 = tint_symbol_20_1;
  let x_95 = tint_symbol_21_1;
  let x_93 = tint_symbol_19_inner(x_94, x_95);
  value = x_93;
  return;
}

struct tint_symbol_19_out {
  @builtin(position)
  value_4 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_20_1_param : u32, @builtin(vertex_index) tint_symbol_21_1_param : u32) -> tint_symbol_19_out {
  tint_symbol_20_1 = tint_symbol_20_1_param;
  tint_symbol_21_1 = tint_symbol_21_1_param;
  tint_symbol_19_1();
  return tint_symbol_19_out(value);
}

fn tint_symbol_28_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_28_1() {
  let x_105 = tint_symbol_28_inner();
  value_1 = x_105;
  return;
}

struct tint_symbol_28_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_28_out {
  tint_symbol_28_1();
  return tint_symbol_28_out(value_1);
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_29_inner(tint_symbol_20_3 : u32, tint_symbol_21_3 : u32) -> vec4f {
  var x_140 = vec2f();
  let x_127 = tint_mod(tint_symbol_21_3, 2u);
  let x_131 = tint_symbol_17.inner[tint_symbol_20_3].tint_symbol_11[x_127];
  let x_126 = tint_ftou(x_131);
  let x_134 = tint_symbol_15.inner[x_126].tint_symbol_1;
  let x_137 = tint_div(tint_symbol_21_3, 2u);
  let x_139 = (x_134 + vec2f((0.00100000004749745131f * f32(x_137))));
  return vec4f(x_139.x, x_139.y, 0.0f, 1.0f);
}

fn tint_symbol_29_1() {
  let x_150 = tint_symbol_20_2;
  let x_151 = tint_symbol_21_2;
  let x_149 = tint_symbol_29_inner(x_150, x_151);
  value_2 = x_149;
  return;
}

struct tint_symbol_29_out {
  @builtin(position)
  value_2_1 : vec4f,
}

@vertex
fn vertexSpringMain(@builtin(instance_index) tint_symbol_20_2_param : u32, @builtin(vertex_index) tint_symbol_21_2_param : u32) -> tint_symbol_29_out {
  tint_symbol_20_2 = tint_symbol_20_2_param;
  tint_symbol_21_2 = tint_symbol_21_2_param;
  tint_symbol_29_1();
  return tint_symbol_29_out(value_2);
}

fn tint_symbol_30_inner() -> vec4f {
  return vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
}

fn tint_symbol_30_1() {
  let x_158 = tint_symbol_30_inner();
  value_3 = x_158;
  return;
}

struct tint_symbol_30_out {
  @location(0)
  value_3_1 : vec4f,
}

@fragment
fn fragmentSpringMain() -> tint_symbol_30_out {
  tint_symbol_30_1();
  return tint_symbol_30_out(value_3);
}

fn tint_symbol_31(tint_symbol_1 : vec2f) -> vec4f {
  return vec4f(0.0f, 1.0f, tint_symbol_1.y, -(tint_symbol_1.x));
}

fn tint_symbol_32(tint_symbol_33 : vec2f, tint_symbol_34 : vec2f, tint_symbol_1_1 : vec2f) -> i32 {
  var tint_return_flag = false;
  var tint_return_value = 0i;
  let x_178 = tint_symbol_31(vec2f((tint_symbol_34.x - tint_symbol_33.x), (tint_symbol_34.y - tint_symbol_33.y)));
  let x_186 = tint_symbol_31(vec2f((tint_symbol_1_1.x - tint_symbol_33.x), (tint_symbol_1_1.y - tint_symbol_33.y)));
  if (((((tint_symbol_34.x - tint_symbol_33.x) * (tint_symbol_1_1.y - tint_symbol_33.y)) - ((tint_symbol_34.y - tint_symbol_33.y) * (tint_symbol_1_1.x - tint_symbol_33.x))) > 0.0f)) {
    tint_return_flag = true;
    tint_return_value = 1i;
  } else {
    tint_return_flag = true;
    tint_return_value = 0i;
  }
  let x_214 = tint_return_value;
  return x_214;
}

fn tint_symbol_38_inner(tint_symbol_39 : vec3u) {
  var tint_symbol_40 = tint_symbol_10(vec2f(), 0.0f, 0.0f);
  var tint_symbol_47 = vec2f();
  var tint_symbol_48 = vec2f();
  var tint_symbol_49 = 0.0f;
  var tint_symbol_50 = 0i;
  var tint_symbol_51 = 0u;
  var tint_symbol_34_1 = vec2f();
  var tint_symbol_52 = vec2f();
  var tint_symbol_53 = 0.0f;
  var tint_symbol_54 = 0.0f;
  var x_409 = vec2f();
  var x_419 = vec2f();
  var tint_symbol_59 = vec2f();
  var tint_symbol_51_1 = 0u;
  let x_219 = tint_symbol_39.x;
  if ((x_219 < arrayLength(&(tint_symbol_17.inner)))) {
    tint_symbol_40 = tint_symbol_17.inner[x_219];
    let x_233 = tint_symbol_40.tint_symbol_11[0i];
    let x_230 = tint_ftou(x_233);
    let x_236 = tint_symbol_40.tint_symbol_11.y;
    let x_234 = tint_ftou(x_236);
    let x_238 = tint_symbol_15.inner[x_230].tint_symbol_1;
    let x_240 = tint_symbol_15.inner[x_234].tint_symbol_1;
    let x_243 = tint_symbol_15.inner[x_230].tint_symbol_4;
    let x_245 = tint_symbol_15.inner[x_234].tint_symbol_4;
    tint_symbol_47 = tint_symbol_15.inner[x_230].tint_symbol_3;
    tint_symbol_48 = tint_symbol_15.inner[x_234].tint_symbol_3;
    tint_symbol_49 = 1.0f;
    tint_symbol_50 = 0i;
    tint_symbol_51 = 0u;
    loop {
      var x_288 : bool;
      var x_289 : bool;
      var x_341 : bool;
      var x_342 : bool;
      if (!((tint_symbol_51 < arrayLength(&(tint_symbol_18.inner))))) {
        break;
      }
      tint_symbol_34_1 = tint_symbol_18.inner[tint_symbol_51].tint_symbol_1;
      tint_symbol_52 = tint_symbol_18.inner[(tint_symbol_51 + 1u)].tint_symbol_1;
      tint_symbol_53 = x_238.x;
      tint_symbol_54 = x_238.y;
      let x_282 = (tint_symbol_53 <= tint_symbol_34_1[0i]);
      x_289 = x_282;
      if (x_282) {
      } else {
        x_288 = (tint_symbol_53 <= tint_symbol_52[0i]);
        x_289 = x_288;
      }
      var x_301 : bool;
      var x_302 : bool;
      var x_315 : bool;
      var x_316 : bool;
      if (x_289) {
        let x_295 = (tint_symbol_54 <= tint_symbol_34_1.y);
        x_302 = x_295;
        if (x_295) {
          x_301 = (tint_symbol_54 >= tint_symbol_52.y);
          x_302 = x_301;
        }
        var x_314 : bool;
        x_316 = x_302;
        if (x_302) {
        } else {
          let x_308 = (tint_symbol_54 <= tint_symbol_52.y);
          x_315 = x_308;
          if (x_308) {
            x_314 = (tint_symbol_54 >= tint_symbol_34_1.y);
            x_315 = x_314;
          }
          x_316 = x_315;
        }
        if (x_316) {
          let x_320 = tint_symbol_34_1;
          let x_321 = tint_symbol_52;
          let x_319 = tint_symbol_32(x_320, x_321, x_238);
          if ((x_319 == 1i)) {
            tint_symbol_50 = (tint_symbol_50 + 1i);
          } else {
            tint_symbol_50 = (tint_symbol_50 - 1i);
          }
        }
      }
      tint_symbol_53 = x_240.x;
      tint_symbol_54 = x_240.y;
      let x_335 = (tint_symbol_53 <= tint_symbol_34_1[0i]);
      x_342 = x_335;
      if (x_335) {
      } else {
        x_341 = (tint_symbol_53 <= tint_symbol_52[0i]);
        x_342 = x_341;
      }
      var x_354 : bool;
      var x_355 : bool;
      var x_368 : bool;
      var x_369 : bool;
      if (x_342) {
        let x_348 = (tint_symbol_54 <= tint_symbol_34_1.y);
        x_355 = x_348;
        if (x_348) {
          x_354 = (tint_symbol_54 >= tint_symbol_52.y);
          x_355 = x_354;
        }
        var x_367 : bool;
        x_369 = x_355;
        if (x_355) {
        } else {
          let x_361 = (tint_symbol_54 <= tint_symbol_52.y);
          x_368 = x_361;
          if (x_361) {
            x_367 = (tint_symbol_54 >= tint_symbol_34_1.y);
            x_368 = x_367;
          }
          x_369 = x_368;
        }
        if (x_369) {
          let x_373 = tint_symbol_34_1;
          let x_374 = tint_symbol_52;
          let x_372 = tint_symbol_32(x_373, x_374, x_240);
          if ((x_372 == 1i)) {
            tint_symbol_50 = (tint_symbol_50 + 1i);
          } else {
            tint_symbol_50 = (tint_symbol_50 - 1i);
          }
        }
      }
      if ((tint_symbol_50 == 0i)) {
        tint_symbol_49 = 100.0f;
      }

      continuing {
        tint_symbol_51 = (tint_symbol_51 + 1u);
      }
    }
    let x_390 = (x_240 - x_238);
    let x_399 = ((tint_symbol_40.tint_symbol_13 * (length(x_390) - tint_symbol_40.tint_symbol_12)) * tint_symbol_49);
    let x_400 = normalize(x_390);
    if ((x_243 > 0.0f)) {
      tint_symbol_47 = (tint_symbol_47 + ((x_400 * x_399) / vec2f((x_243 * 1000.0f))));
    }
    if ((x_245 > 0.0f)) {
      tint_symbol_48 = (tint_symbol_48 - ((x_400 * x_399) / vec2f((x_245 * 1000.0f))));
    }
    tint_symbol_16.inner[x_230].tint_symbol_3 = tint_symbol_47;
    tint_symbol_16.inner[x_234].tint_symbol_3 = tint_symbol_48;
    tint_symbol_16.inner[x_230].tint_symbol_4 = x_243;
    tint_symbol_16.inner[x_234].tint_symbol_4 = x_245;
  }
  if ((x_219 < arrayLength(&(tint_symbol_15.inner)))) {
    tint_symbol_59 = vec2f();
    let x_434 = tint_symbol_15.inner[x_219].tint_symbol_1;
    tint_symbol_51_1 = 0u;
    loop {
      if (!((tint_symbol_51_1 < arrayLength(&(tint_symbol_15.inner))))) {
        break;
      }
      if ((tint_symbol_51_1 == x_219)) {
        continue;
      }
      let x_453 = (x_434 - tint_symbol_15.inner[tint_symbol_51_1].tint_symbol_1);
      let x_454 = max(length(x_453), 0.00999999977648258209f);
      tint_symbol_59 = (tint_symbol_59 + (normalize(x_453) * (0.00050000002374872565f / (x_454 * x_454))));

      continuing {
        tint_symbol_51_1 = (tint_symbol_51_1 + 1u);
      }
    }
    tint_symbol_16.inner[x_219].tint_symbol_3 = (tint_symbol_16.inner[x_219].tint_symbol_3 + (tint_symbol_59 * 0.10000000149011611938f));
  }
  return;
}

fn tint_symbol_38_1() {
  let x_476 = tint_symbol_39_1;
  tint_symbol_38_inner(x_476);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_39_1_param : vec3u) {
  tint_symbol_39_1 = tint_symbol_39_1_param;
  tint_symbol_38_1();
}

const x_509 = vec2f(1.0f);

fn tint_symbol_62_inner(tint_symbol_39_3 : vec3u) {
  var tint_symbol_22 = tint_symbol(vec2f(), vec2f(), vec2f(), 0.0f, 0.0f, vec4f(), vec2f(), 0.0f, 0.0f);
  var x_480 : u32;
  x_480 = tint_symbol_39_3.x;
  if ((x_480 < arrayLength(&(tint_symbol_15.inner)))) {
    tint_symbol_22 = tint_symbol_15.inner[x_480];
    if ((tint_symbol_22.tint_symbol_5 == 0.0f)) {
      tint_symbol_16.inner[x_480].tint_symbol_1 = tint_symbol_15.inner[x_480].tint_symbol_1;
    } else {
      tint_symbol_16.inner[x_480].tint_symbol_1 = ((tint_symbol_22.tint_symbol_1 + tint_symbol_22.tint_symbol_2) + tint_symbol_16.inner[x_480].tint_symbol_3);
      tint_symbol_16.inner[x_480].tint_symbol_1 = clamp(tint_symbol_16.inner[x_480].tint_symbol_1, -(x_509), x_509);
    }
    tint_symbol_16.inner[x_480].tint_symbol_2 = ((tint_symbol_22.tint_symbol_2 + tint_symbol_16.inner[x_480].tint_symbol_3) * 0.85000002384185791016f);
    tint_symbol_16.inner[x_480].tint_symbol_3 = vec2f();
    tint_symbol_16.inner[x_480].tint_symbol_4 = tint_symbol_22.tint_symbol_4;
  }
  return;
}

fn tint_symbol_62_1() {
  let x_530 = tint_symbol_39_2;
  tint_symbol_62_inner(x_530);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn updateMain(@builtin(global_invocation_id) tint_symbol_39_2_param : vec3u) {
  tint_symbol_39_2 = tint_symbol_39_2_param;
  tint_symbol_62_1();
}
