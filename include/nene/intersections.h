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
#include "nene/math/rectf.h"
#include "nene/math/segment.h"

/// Rectangle with rectangle intersection.
typedef struct nene_IntersectionRectfWithRectf {
  bool intersected;
  nene_Rectf intersection;
} nene_IntersectionRectfWithRectf;

/// Segment with rectangle intersection.
typedef struct nene_IntersectionSegmentWithRectf {
  uint8_t count;
  nene_Segment intersection;
  /// The intersected "sides" of the rectangle, the first element
  /// it's the one that intersects `intersection.origin`, while the
  /// second element it's the one that intersects `intersection.ending`.
  nene_Segment intersected_rect_sides[2];
} nene_IntersectionSegmentWithRectf;

/// Segment with segment intersection.
typedef struct nene_IntersectionSegmentWithSegment {
  bool intersected;
  bool is_parallel;
  nene_Vec2 point;
  float a_intersecting_scalar;
  float b_intersecting_scalar;
} nene_IntersectionSegmentWithSegment;

/// Returns if a rect is intersecting with another rect.
bool nene_Intersections_is_intersecting_rectf_with_rectf(nene_Rectf a, nene_Rectf b);

/// Returns if a rectangle is intersecting with a point.
bool nene_Intersections_is_intersecting_rectf_with_point(nene_Rectf rect, nene_Vec2 point);

/// Returns "no rect with rect intersection" value.
nene_IntersectionRectfWithRectf nene_IntersectionRectfWithRectf_no_intersection(void);

/// Returns "no segment with rect intersection" value.
nene_IntersectionSegmentWithRectf nene_IntersectionSegmentWithRectf_no_intersection(void);

/// Returns the intersection rectangle between two rectangles.
nene_IntersectionRectfWithRectf nene_IntersectionRectfWithRectf_get_intersection(nene_Rectf a, nene_Rectf b);

/// Returns the intersection data between a segment and a rectangle.
nene_IntersectionSegmentWithRectf nene_IntersectionSegmentWithRectf_get_intersection(nene_Segment segment, nene_Rectf rect);

/// Returns the intersection data between two segments.
nene_IntersectionSegmentWithSegment nene_IntersectionSegmentWithSegment_get_intersection(nene_Segment a, nene_Segment b);

#endif // NENE_INTERSECTIONS_H
