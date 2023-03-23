/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_COLLISIONS_H
#define NENE_COLLISIONS_H

#include <stdbool.h>
#include "nene/math/vec2.h"
#include "nene/math/rectf.h"
#include "nene/math/segment.h"

/// Collision data structure.
typedef struct nene_Collision {
  bool collided;
  nene_Vec2 delta;
} nene_Collision;

/// Returns "no collision" value.
nene_Collision nene_Collision_no_collision(void);

/// Returns the collision response between two rects.
nene_Collision nene_Collision_rectf_with_rectf(nene_Rectf a, nene_Rectf b, nene_Vec2 delta_pos);

/// Returns the collision response between a rectangle and a segment.
nene_Collision nene_Collision_rectf_with_segment(nene_Rectf rect, nene_Segment segment, nene_Vec2 delta_pos);

#endif // NENE_COLLISIONS_H
