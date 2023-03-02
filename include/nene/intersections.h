/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

// NOTE: Intersections will be refactored and likely rewritten.

#ifndef NENE_INTERSECTIONS_H
#define NENE_INTERSECTIONS_H

#include <stdbool.h>
#include "nene/math/rect.h"

typedef struct nene_Intersections_rect_intersection {
  bool intersected;
  nene_Rect intersection;
} nene_Intersections_rect_intersection;

typedef struct nene_Intersections_rect_collision {
  bool collided;
  nene_Rect rectangle_resolved;
  nene_Rect intersection;
} nene_Intersections_rect_collision;

bool nene_Intersections_is_intersecting_rect_with_rect(nene_Rect a, nene_Rect b);
bool nene_Intersections_is_intersecting_rect_with_point(nene_Rect rect, nene_Vec2i point);
nene_Intersections_rect_intersection nene_Intersections_get_intersection_rect_with_rect(nene_Rect a, nene_Rect b);
nene_Intersections_rect_collision nene_Intersections_get_collision_rect_with_rect(nene_Rect rect, nene_Rect intersected_rect);

#endif // NENE_INTERSECTIONS_H
