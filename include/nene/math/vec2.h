/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_VEC2_H
#define NENE_VEC2_H

#include <stdint.h>
#include <stdbool.h>

struct nene_Vec2i;

typedef struct nene_Vec2 {
  float x;
  float y;
} nene_Vec2;

nene_Vec2 nene_Vec2_from_Vec2i(struct nene_Vec2i v);
struct nene_Vec2i nene_Vec2_to_Vec2i(nene_Vec2 v);
nene_Vec2 nene_Vec2_zero(void);
nene_Vec2 nene_Vec2_one(void);
bool nene_Vec2_equals(nene_Vec2 a, nene_Vec2 b);
nene_Vec2 nene_Vec2_add(nene_Vec2 a, nene_Vec2 b);
nene_Vec2 nene_Vec2_sub(nene_Vec2 a, nene_Vec2 b);
nene_Vec2 nene_Vec2_mul(nene_Vec2 a, nene_Vec2 b);
nene_Vec2 nene_Vec2_scale(nene_Vec2 a, float s);
nene_Vec2 nene_Vec2_negate(nene_Vec2 v);
float nene_Vec2_len_sqr(nene_Vec2 v);
float nene_Vec2_len(nene_Vec2 v);
nene_Vec2 nene_Vec2_lerp(nene_Vec2 a, nene_Vec2 b, float t);
nene_Vec2 nene_Vec2_normalize(nene_Vec2 v);
float nene_Vec2_dot(nene_Vec2 a, nene_Vec2 b);
/// note: since this is a 2D vector (or z=0), the cross product returns
/// the magnitude of the cross product vector instead of the vector itself.
float nene_Vec2_cross(nene_Vec2 a, nene_Vec2 b);


#endif // NENE_VEC2_H
