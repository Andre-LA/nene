/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include <math.h>
#include "nene/collision.h"
#include "nene/intersections.h"
#include "nene/math/vec2.h"
#include "nene/math/vec2i.h"

static nene_Vec2 nene_impl_Collision_rect_with_segment_get_colliding_corner(nene_Rect rect, nene_Vec2 intersection_midpoint) {
  const nene_Vec2i corners[4] = {
    nene_Vec2i_add(rect.pos, (nene_Vec2i){ .x = rect.size.x }),                    // top-right
    rect.pos,                                                                      // top-left
    nene_Vec2i_add(rect.pos, (nene_Vec2i){ .y = -rect.size.y }),                   // bottom-left
    nene_Vec2i_add(rect.pos, (nene_Vec2i){ .x = rect.size.x, .y = -rect.size.y }), // bottom-right
  };

  nene_Vec2 near_rect_corner = nene_Vec2_zero();
  float shortest_len = HUGE_VALF;

  // There are four corners, thus we iterate four times.
  for (int i = 0; i < 4; ++i) {
    const nene_Vec2 corner = nene_Vec2_from_vec2i(corners[i]);
    const float len = nene_Vec2_len_sqr(nene_Vec2_sub(intersection_midpoint, corner));

    if (len < shortest_len) {
      shortest_len = len;
      near_rect_corner = corner;
    }
  }

  return near_rect_corner;
}


nene_Collision nene_Collision_no_collision(void) {
  return (nene_Collision){
    .collided = false,
    .delta = nene_Vec2_zero(),
  };
}

nene_Collision nene_Collision_rect_with_rect(nene_Rect rect, nene_Rect intersected_rect, nene_Vec2 delta_pos) {
  // first, get the intersection between rectangles
  const nene_IntersectionRectWithRect intersection = nene_IntersectionRectWithRect_get_intersection(rect, intersected_rect);

  // if there's no intersection, then there's no collision
  if (!intersection.intersected) {
    return nene_Collision_no_collision();
  }

  // get the center of each rectangle.
  const nene_Vec2i rect_center = nene_Rect_get_center(rect);
  const nene_Vec2i intersected_rect_center = nene_Rect_get_center(intersected_rect);

  // get the difference between centers, this results on a delta position between two rectangles;
  const nene_Vec2 diff = nene_Vec2_from_vec2i(nene_Vec2i_sub(intersected_rect_center, rect_center));

  // multiply this difference and the delta_pos vector
  const nene_Vec2 directions = nene_Vec2_mul(diff, delta_pos);

  // First, in order to slide on rectangle with another, we need to compare the size of each axis
  // on the intersection;
  // if the width it's greater than the height, that means that the rectangle
  // will slide horizontally, however, if the height it's greater than the width, then it'll slide
  // vertically.
  // Finally, if both sizes are equal, then the rectangle it's on the corner of each other, thus
  // there will be no slide.
  const bool slides_horizontally = intersection.intersection.size.x > intersection.intersection.size.y;
  const bool slides_vertically = intersection.intersection.size.y > intersection.intersection.size.x;
  
  // When an axis of the above product it's positive and it doesn't slides, it means that the 
  // rect it's going against intersected_rect on that axis.
  // In this case, the response will be the size of respective axis of the intersection,
  // multiplied by the opposite sign of delta_pos.
  nene_Vec2i delta = nene_Vec2i_zero();

  if (!slides_horizontally && directions.x > 0.0f) {
    delta.x = delta_pos.x > 0.0f ? -intersection.intersection.size.x : intersection.intersection.size.x;
  }
  if (!slides_vertically && directions.y > 0.0f) {
    delta.y = delta_pos.y > 0.0f ? -intersection.intersection.size.y : intersection.intersection.size.y;
  }

  return (nene_Collision){
    .collided = true,
    .delta = nene_Vec2_from_vec2i(delta),
  };
}

nene_Collision nene_Collision_rect_with_segment(nene_Rect rect, nene_Segment segment, nene_Vec2 delta_pos) {
  nene_IntersectionSegmentWithRect intersection = nene_IntersectionSegmentWithRect_get_intersection(segment, rect);

  if (intersection.count == 0) {
    return nene_Collision_no_collision();
  } 
  else {
    // The response algorithm of collision it's different if there's one or two intersections between a
    // segment and a rectangle.
    switch (intersection.count) {
      case 1: {
        // note: it isn't a normal yet actually...
        nene_Vec2 intersection_normal = nene_Segment_as_vec2(intersection.intersection);

        if (nene_Vec2_len_sqr(intersection_normal) <= 0.0f) {
          return nene_Collision_no_collision();
        }

        // now let's actually calculate the normal.
        intersection_normal = nene_Vec2_normalize(intersection_normal);
        
        const nene_Vec2 origin_side_normal = nene_Vec2_normalize(
          nene_Vec2_perpendicular(nene_Segment_as_vec2(intersection.intersected_rect_sides[0]))
        );

        const nene_Vec2 delta_pos_norm = nene_Vec2_normalize(delta_pos);

        const nene_Vec2 delta_pos_normal_x = (nene_Vec2){ .x = delta_pos_norm.x };
        const nene_Vec2 delta_pos_normal_y = (nene_Vec2){ .y = delta_pos_norm.y };
        
        const nene_Vec2 intersection_normal_x = (nene_Vec2){ .x = intersection_normal.x };
        const nene_Vec2 intersection_normal_y = (nene_Vec2){ .y = intersection_normal.y };
        
        const nene_Vec2 origin_side_normal_x = (nene_Vec2){ .x = origin_side_normal.x };
        const nene_Vec2 origin_side_normal_y = (nene_Vec2){ .y = origin_side_normal.y };

        nene_Vec2 delta = nene_Vec2_zero();

        if (
          nene_Vec2_dot(intersection_normal_x, delta_pos_normal_x) < 0.0f && 
          nene_Vec2_dot(origin_side_normal_x, delta_pos_normal_x) > 0.0f
        ) {
          delta.x = -delta_pos.x;
        }
        
        if (
          nene_Vec2_dot(intersection_normal_y, delta_pos_normal_y) < 0.0f && 
          nene_Vec2_dot(origin_side_normal_y, delta_pos_normal_y) > 0.0f
        ) {
          delta.y = -delta_pos.y;
        }

        return (nene_Collision){
          .collided = true,
          .delta = delta,
        };        
      }
      case 2: {
        const nene_Vec2 intersection_midpoint = nene_Vec2_lerp(
          intersection.intersection.origin,
          intersection.intersection.ending,
          0.5f
        );
        const nene_Vec2 segment_perpendicular = nene_Vec2_perpendicular(
          nene_Segment_as_vec2(segment)
        );
        const nene_Vec2 rect_corner = 
          nene_impl_Collision_rect_with_segment_get_colliding_corner(rect, intersection_midpoint);
        const float perpendicular_scalar = (
          // dot(segment_perpendicular, intersection_midpoint - rect_corner) > 0 ? 1.0 : -1.0
          nene_Vec2_dot(
            segment_perpendicular, nene_Vec2_sub(intersection_midpoint, rect_corner)
          ) > 0 ? 1.0f : -1.0f
        );
        const nene_Segment response_segment = (nene_Segment){
          .origin = rect_corner,
          .ending = nene_Vec2_add(
            rect_corner, 
            nene_Vec2_scale(segment_perpendicular, perpendicular_scalar)
          ),
        };
        const nene_IntersectionSegmentWithSegment response_intersection = 
          nene_IntersectionSegmentWithSegment_get_intersection(response_segment, segment);

        return (nene_Collision){
          .collided = true,
          .delta = nene_Vec2_sub(response_intersection.point, rect_corner)
        };
      }
    }
  }

  // actually unreachable
  return nene_Collision_no_collision();
}
