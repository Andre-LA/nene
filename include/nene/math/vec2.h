/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_VEC2_H
#define NENE_VEC2_H

#include <stdbool.h>
#include "nene/math/vec2i.h"

/// 2D mathematical vector with `x` and `y` components.
typedef struct nene_Vec2 {
  float x;
  float y;
} nene_Vec2;

/// converts a `nene_Vec2i` value to `nene_Vec2`.
nene_Vec2 nene_Vec2_from_vec2i(nene_Vec2i v);

/// converts a `nene_Vec2` value to `nene_Vec2i`.
nene_Vec2i nene_Vec2_to_vec2i(nene_Vec2 v);

/// returns a vector with `0` value on `x` and `y` components.
nene_Vec2 nene_Vec2_zero(void);

/// returns a vector with `1` value on `x` and `y` components.
nene_Vec2 nene_Vec2_one(void);

/// tests equality between `a` and `b` vectors.
bool nene_Vec2_equals(nene_Vec2 a, nene_Vec2 b);

/// returns the sum of two vectors.
nene_Vec2 nene_Vec2_add(nene_Vec2 a, nene_Vec2 b);

/// returns the difference between two vectors.
nene_Vec2 nene_Vec2_sub(nene_Vec2 a, nene_Vec2 b);

/// returns the product between two vectors.
nene_Vec2 nene_Vec2_mul(nene_Vec2 a, nene_Vec2 b);

/// returns a vector that's the vector `a` scaled by `s` scalar.
nene_Vec2 nene_Vec2_scale(nene_Vec2 a, float s);

/// returns the negation of the `v` vector.
nene_Vec2 nene_Vec2_negate(nene_Vec2 v);

/// returns a squared length of the `v` vector
float nene_Vec2_len_sqr(nene_Vec2 v);

/// returns the length of the `v` vector.
float nene_Vec2_len(nene_Vec2 v);

/// returns a vector that's the interpolation between `a` and `b` vectors by the scalar `t`.
nene_Vec2 nene_Vec2_lerp(nene_Vec2 a, nene_Vec2 b, float t);

/// returns the `v` vector normalized.
nene_Vec2 nene_Vec2_normalize(nene_Vec2 v);

/// returns the dot product of `a` and `b` vectors.
float nene_Vec2_dot(nene_Vec2 a, nene_Vec2 b);

/// returns the cross product of the `a` and `b` vector.
/// > note: since this is a 2D vector (no `z` component), the cross product returns
/// > the magnitude of the cross product vector instead of the vector itself.
float nene_Vec2_cross(nene_Vec2 a, nene_Vec2 b);

/// returns the perpendicular vector of the vector v, with the same magnitude (length)
/// > note: The "rotation" it's counterclockwise.
nene_Vec2 nene_Vec2_perpendicular(nene_Vec2 v);

#endif // NENE_VEC2_H
