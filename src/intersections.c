/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/intersections.h"
#include "nene/math/shape.h"
#include <stdio.h>

bool nene_Intersections_is_intersecting_rect_with_rect(nene_Rect a, nene_Rect b) {
  return !( // if any of the following predicates it's true, then there's no intersection.
    (a.pos.x + a.size.x) < b.pos.x || // is `a` on the left of `b`?
    (b.pos.x + b.size.x) < a.pos.x || // is `b` on the left of `a`?
    (a.pos.y - a.size.y) > b.pos.y || // is `a` on the top of `b`?
    (b.pos.y - b.size.y) > a.pos.y    // is `b` on the top of `a`?
  );
}

bool nene_Intersections_is_intersecting_rect_with_point(nene_Rect rect, nene_Vec2i point) {
  return point.x >= rect.pos.x && point.x <= rect.pos.x + rect.size.x &&
         point.y <= rect.pos.y && point.y >= rect.pos.y - rect.size.y;
}

nene_IntersectionRectWithRect nene_IntersectionRectWithRect_no_intersection(void) {
  return (nene_IntersectionRectWithRect){ 
    .intersected = false,
  };
}

nene_IntersectionSegmentWithRect nene_IntersectionSegmentWithRect_no_intersection(void) {
  return (nene_IntersectionSegmentWithRect){
    .count = 0,
  };
}

nene_IntersectionRectWithRect nene_IntersectionRectWithRect_get_intersection(nene_Rect a, nene_Rect b) {
  if (!nene_Intersections_is_intersecting_rect_with_rect(a, b)) {
    return nene_IntersectionRectWithRect_no_intersection();
  }

  const int32_t ax = a.pos.x;
  const int32_t ay = a.pos.y;
  const int32_t asx = a.pos.x + a.size.x;
  const int32_t asy = a.pos.y - a.size.y;

  const int32_t bx = b.pos.x;
  const int32_t by = b.pos.y;
  const int32_t bsx = b.pos.x + b.size.x;
  const int32_t bsy = b.pos.y - b.size.y;

  const int32_t max_x = (ax > bx) ? ax : bx;
  const int32_t min_y = (ay < by) ? ay : by;
  const int32_t min_sx = (asx < bsx) ? asx : bsx;
  const int32_t max_sy = (asy > bsy) ? asy : bsy;

  return (nene_IntersectionRectWithRect){
    .intersected = true,
    .intersection = (nene_Rect){ 
      .pos  = { .x = max_x, .y = min_y },
      .size = { .x = abs(min_sx - max_x), .y = abs(max_sy - min_y) },
    },
  };
}

nene_IntersectionSegmentWithRect nene_IntersectionSegmentWithRect_get_intersection(nene_Segment segment, nene_Rect rect) {
  nene_IntersectionSegmentWithRect result = nene_IntersectionSegmentWithRect_no_intersection();
  nene_ShapeQuadrilateral quad_shape = nene_Shape_get_rect_shape(rect);

  nene_Vec2 points[2] = { nene_Vec2_zero(), nene_Vec2_zero() };

  // a quadrilateral shape has four sides.
  for (int i = 0; i < 4; ++i) {
    nene_IntersectionSegmentWithSegment quad_seg_intersection = 
      nene_IntersectionSegmentWithSegment_get_intersection(segment, quad_shape.sides[i]);

    if (quad_seg_intersection.intersected) {
      points[result.count] = quad_seg_intersection.point;
      result.intersected_rect_sides[result.count] = quad_shape.sides[i];
      result.count++;
      // count must be <= 2 because there are at most two intersection points.
      if (result.count == 2) {
        break; // we found the two intersection points.
      }
    }
  }

  // if there's only one intersection point, then we assign to the second point to the
  // intersecting "tip" (either origin or ending) of the segment.
  if (result.count == 1) {
    if (nene_Intersections_is_intersecting_rect_with_point(rect, nene_Vec2_to_vec2i(segment.origin))) {
      points[1] = segment.origin;
    }
    else {
      points[1] = segment.ending;
    }
  }

  result.intersection = (nene_Segment){
    .origin = points[0],
    .ending = points[1]
  };

  return result;
}

nene_IntersectionSegmentWithSegment nene_IntersectionSegmentWithSegment_get_intersection(nene_Segment a, nene_Segment b) {
  // reference: https://www.youtube.com/watch?v=5FkOO1Wwb8w
  const nene_Vec2 wx = nene_Segment_as_vec2(a);
  const nene_Vec2 yz = nene_Segment_as_vec2(b);

  const float wx_cross_yz = nene_Vec2_cross(wx, yz);

  if (wx_cross_yz == 0.0f) {
    return (nene_IntersectionSegmentWithSegment){
      .intersected = false,
      .is_parallel = true,
    };
  }

  const nene_Vec2 wy = nene_Segment_as_vec2((nene_Segment){ .origin = a.origin, .ending = b.origin });

  nene_IntersectionSegmentWithSegment result = {
    .a_intersecting_scalar =  nene_Vec2_cross(wy, yz) / wx_cross_yz,
    .b_intersecting_scalar = -nene_Vec2_cross(wx, wy) / wx_cross_yz,
  };

  result.intersected = 0.0f <= result.a_intersecting_scalar && result.a_intersecting_scalar <= 1.0f && 
                       0.0f <= result.b_intersecting_scalar && result.b_intersecting_scalar <= 1.0f;

  if (result.intersected) {
    result.point = nene_Vec2_add(a.origin, nene_Vec2_scale(wx, result.a_intersecting_scalar));
  }

  return result;
}