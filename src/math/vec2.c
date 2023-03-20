/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/vec2.h"
#include <math.h>

#include "nene/math/vec2i.h"

nene_Vec2 nene_Vec2_from_vec2i(nene_Vec2i v) {
  return (nene_Vec2){ .x = v.x, .y = v.y };
}

nene_Vec2i nene_Vec2_to_vec2i(nene_Vec2 v) {
  float x = roundf(v.x);
  float y = roundf(v.y);
  return (nene_Vec2i){ .x = (int32_t)x, .y = (int32_t)y };
}

nene_Vec2 nene_Vec2_zero(void) { 
  return (nene_Vec2){ .x = 0.0f, .y = 0.0f };
}

nene_Vec2 nene_Vec2_one(void) {
  return (nene_Vec2){ .x = 1.0f, .y = 1.0f };
}

bool nene_Vec2_equals(nene_Vec2 a, nene_Vec2 b) {
  return a.x == b.x && a.y == b.y;
}

nene_Vec2 nene_Vec2_add(nene_Vec2 a, nene_Vec2 b) {
  return (nene_Vec2){ .x = a.x + b.x, .y = a.y + b.y };
}

nene_Vec2 nene_Vec2_sub(nene_Vec2 a, nene_Vec2 b) {
  return (nene_Vec2){ .x = a.x - b.x, .y = a.y - b.y };
}

nene_Vec2 nene_Vec2_mul(nene_Vec2 a, nene_Vec2 b) {
  return (nene_Vec2){ .x = a.x * b.x, .y = a.y * b.y };
}

nene_Vec2 nene_Vec2_scale(nene_Vec2 a, float s) {
  return (nene_Vec2){ .x = a.x * s, .y = a.y * s };
}

nene_Vec2 nene_Vec2_negate(nene_Vec2 v) {
  return (nene_Vec2){ .x = -v.x, .y = -v.y };
}

float nene_Vec2_len_sqr(nene_Vec2 v) {
  return v.x * v.x + v.y * v.y;
}

float nene_Vec2_len(nene_Vec2 v) {
  return sqrtf(nene_Vec2_len_sqr(v));
}

nene_Vec2 nene_Vec2_lerp(nene_Vec2 a, nene_Vec2 b, float t) {
  // (1.0 - t) * a + t * b
  nene_Vec2 a_scaled = nene_Vec2_scale(a, 1.0f - t);
  nene_Vec2 b_scaled = nene_Vec2_scale(b, t);
  return nene_Vec2_add(a_scaled, b_scaled);
}

nene_Vec2 nene_Vec2_normalize(nene_Vec2 v) {
  nene_Vec2 result = nene_Vec2_zero();
  float len = nene_Vec2_len(v);

  if (len > 0.0f) {
    return (nene_Vec2){ .x = v.x / len, .y = v.y / len };
  }

  return result;
}

float nene_Vec2_dot(nene_Vec2 a, nene_Vec2 b) {
  return a.x * b.x + a.y * b.y;
}

float nene_Vec2_cross(nene_Vec2 a, nene_Vec2 b) {
  return a.x * b.y - a.y * b.x;
}

nene_Vec2 nene_Vec2_perpendicular(nene_Vec2 v) {
  return (nene_Vec2){ .x = -v.y, .y = v.x };
}
