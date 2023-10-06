/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_VEC2I_H
#define NENE_VEC2I_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

/// 2D mathematical vector with `x` and `y` components (using 32-bit integer type, a.k.a. `int32_t`).
typedef struct nene_Vec2i {
	/// The `x` component.
	int32_t x;
	/// The `y` component.
	int32_t y;
} nene_Vec2i;

/// Returns a vector with `0` value on `x` and `y` components.
nene_Vec2i nene_Vec2i_zero(void);

/// Returns a vector with `1` value on `x` and `y` components.
nene_Vec2i nene_Vec2i_one(void);

/// Returns a clone of the vector reference.
nene_Vec2i nene_Vec2i_clone(nene_Vec2i *v);

/// Tests equality between `a` and `b` vectors.
bool nene_Vec2i_equals(nene_Vec2i a, nene_Vec2i b);

/// Returns the sum of two vectors.
nene_Vec2i nene_Vec2i_add(nene_Vec2i a, nene_Vec2i b);

/// Returns the difference between two vectors.
nene_Vec2i nene_Vec2i_sub(nene_Vec2i a, nene_Vec2i b);

/// Returns the product between two vectors.
nene_Vec2i nene_Vec2i_mul(nene_Vec2i a, nene_Vec2i b);

/// Returns a vector that's the vector `a` scaled by `s` scalar.
nene_Vec2i nene_Vec2i_scale(nene_Vec2i v, float s);

/// Returns the negation of the `v` vector.
nene_Vec2i nene_Vec2i_negate(nene_Vec2i v);

/// Returns a squared length of the `v` vector
float nene_Vec2i_len_sqr(nene_Vec2i v);

/// Returns the length of the `v` vector.
float nene_Vec2i_len(nene_Vec2i v);

/// Returns a vector that's the interpolation between `a` and `b` vectors by the scalar `t`.
nene_Vec2i nene_Vec2i_lerp(nene_Vec2i a, nene_Vec2i b, float t);

/// Returns the dot product of `a` and `b` vectors.
float nene_Vec2i_dot(nene_Vec2i a, nene_Vec2i b);

/// Note: since this is a 2D vector (or z=0), the cross product returns
/// The magnitude of the cross product vector instead of the vector itself.
float nene_Vec2i_cross(nene_Vec2i a, nene_Vec2i b);

/// Returns the perpendicular vector of the vector v, with the same magnitude (length)
/// > note: The "rotation" it's counterclockwise.
nene_Vec2i nene_Vec2i_perpendicular(nene_Vec2i v);

#endif // NENE_VEC2I_H
