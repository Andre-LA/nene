/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_INTERSECTIONS_H
#define NENE_INTERSECTIONS_H

#include <stdbool.h>
#include "nene/math/vec2.h"
#include "nene/math/rect.h"
#include "nene/math/segment.h"

/// Rectangle with rectangle intersection.
typedef struct nene_IntersectionRectWithRect {
  bool intersected;
  nene_Rect intersection;
} nene_IntersectionRectWithRect;

/// Segment with rectangle intersection.
typedef struct nene_IntersectionSegmentWithRect {
  uint8_t count;
  nene_Segment intersection;
  /// The intersected "sides" of the rectangle, the first element
  /// it's the one that intersects `intersection.origin`, while the
  /// second element it's the one that intersects `intersection.ending`.
  nene_Segment intersected_rect_sides[2];
} nene_IntersectionSegmentWithRect;

/// Segment with segment intersection.
typedef struct nene_IntersectionSegmentWithSegment {
  bool intersected;
  bool is_parallel;
  nene_Vec2 point;
  float a_intersecting_scalar;
  float b_intersecting_scalar;
} nene_IntersectionSegmentWithSegment;

/// Returns if a rect is intersecting with another rect.
bool nene_Intersections_is_intersecting_rect_with_rect(nene_Rect a, nene_Rect b);

/// Returns if a rectangle is intersecting with a point.
bool nene_Intersections_is_intersecting_rect_with_point(nene_Rect rect, nene_Vec2i point);

/// Returns "no rect with rect intersection" value.
nene_IntersectionRectWithRect nene_IntersectionRectWithRect_no_intersection(void);

/// Returns "no segment with rect intersection" value.
nene_IntersectionSegmentWithRect nene_IntersectionSegmentWithRect_no_intersection(void);

/// Returns the intersection rectangle between two rectangles.
nene_IntersectionRectWithRect nene_IntersectionRectWithRect_get_intersection(nene_Rect a, nene_Rect b);

/// Returns the intersection data between a segment and a rectangle.
nene_IntersectionSegmentWithRect nene_IntersectionSegmentWithRect_get_intersection(nene_Segment segment, nene_Rect rect);

/// Returns the intersection data between two segments.
nene_IntersectionSegmentWithSegment nene_IntersectionSegmentWithSegment_get_intersection(nene_Segment a, nene_Segment b);

#endif // NENE_INTERSECTIONS_H
