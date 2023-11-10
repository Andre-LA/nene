/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/vec2i.h"
#include <math.h>

nene_Vec2i nene_Vec2i_zero(void) { 
  return (nene_Vec2i){ .x = 0, .y = 0 };
}

nene_Vec2i nene_Vec2i_copy(nene_Vec2i *v) {
  if (v == NULL) {
    return nene_Vec2i_zero();
  }
  else {
    return *v;
  }
}

nene_Vec2i nene_Vec2i_one(void) {
  return (nene_Vec2i){ .x = 1, .y = 1 };
}

bool nene_Vec2i_equals(nene_Vec2i a, nene_Vec2i b) {
  return a.x == b.x && a.y == b.y;
}

nene_Vec2i nene_Vec2i_add(nene_Vec2i a, nene_Vec2i b) {
  return (nene_Vec2i){ .x = a.x + b.x, .y = a.y + b.y };
}

nene_Vec2i nene_Vec2i_sub(nene_Vec2i a, nene_Vec2i b) {
  return (nene_Vec2i){ .x = a.x - b.x, .y = a.y - b.y };
}

nene_Vec2i nene_Vec2i_mul(nene_Vec2i a, nene_Vec2i b) {
  return (nene_Vec2i){ .x = a.x * b.x, .y = a.y * b.y };
}

nene_Vec2i nene_Vec2i_scale(nene_Vec2i v, float s) {
  float x = roundf(v.x * s);
  float y = roundf(v.y * s);
  return (nene_Vec2i){ .x = (int32_t)x, .y = (int32_t)y };
}

nene_Vec2i nene_Vec2i_negate(nene_Vec2i v) {
  return (nene_Vec2i){ .x = -v.x, .y = -v.y };
}

float nene_Vec2i_len_sqr(nene_Vec2i v) {
  return v.x * v.x + v.y * v.y;
}

float nene_Vec2i_len(nene_Vec2i v) {
  return sqrtf(nene_Vec2i_len_sqr(v));
}

nene_Vec2i nene_Vec2i_lerp(nene_Vec2i a, nene_Vec2i b, float t) {
  // (1.0 - t) * a + t * b
  nene_Vec2i a_scaled = nene_Vec2i_scale(a, 1.0f - t);
  nene_Vec2i b_scaled = nene_Vec2i_scale(b, t);
  return nene_Vec2i_add(a_scaled, b_scaled);
}

float nene_Vec2i_dot(nene_Vec2i a, nene_Vec2i b) {
  return a.x * b.x + a.y * b.y;
}

float nene_Vec2i_cross(nene_Vec2i a, nene_Vec2i b) {
  return a.x * b.y - a.y * b.x;
}

nene_Vec2i nene_Vec2i_perpendicular(nene_Vec2i v) {
  return (nene_Vec2i){ .x = -v.y, .y = v.x };
}
