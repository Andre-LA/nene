/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/collision.h"
#include "nene/intersections.h"
#include "nene/math/segment.h"
#include "nene/math/shape.h"
#include "nene/math/vec2.h"
#include "SDL_assert.h"

typedef struct nene_impl_CollidingData {
  nene_Vec2 corner;
  nene_Vec2 intersection_perpendicular;
} nene_impl_CollidingData;

// This function receives the intersected rectangle and the intersection.
// It returns which corner of the rectangle should be used to produce the response,
// alongside with the perpendicular of the intersection that'll intersects the intersection segment (in order to produce the response delta).
static nene_impl_CollidingData nene_impl_Collision_rect_with_segment_get_colliding_data(nene_Rectf rect, nene_IntersectionSegmentWithRectf intersection) {
  // indexes of each corner
  const int TOP_RIGHT = 0;
  const int TOP_LEFT = 1;
  const int BOTTOM_LEFT = 2;
  const int BOTTOM_RIGHT = 3;

  // position of each corner
  const nene_Vec2 corners[4] = {
    nene_Vec2_add(rect.pos, (nene_Vec2){ .x = rect.size.x }),                    // top-right
    rect.pos,                                                                    // top-left
    nene_Vec2_add(rect.pos, (nene_Vec2){ .y = -rect.size.y }),                   // bottom-left
    nene_Vec2_add(rect.pos, (nene_Vec2){ .x = rect.size.x, .y = -rect.size.y }), // bottom-right
  };
  // These normals points outside the rectangle.
  const nene_Vec2 corner_normals[4] = {
    (nene_Vec2){ .x =  1.0f, .y =  1.0f }, // top-right
    (nene_Vec2){ .x = -1.0f, .y =  1.0f }, // top-left
    (nene_Vec2){ .x = -1.0f, .y = -1.0f }, // bottom-left
    (nene_Vec2){ .x =  1.0f, .y = -1.0f }, // bottom-right
  };
  const nene_Vec2 rect_center = nene_Rectf_get_center(rect);
  const nene_Vec2 side0_center = nene_Vec2_sub(nene_Segment_get_midpoint(intersection.intersected_rect_sides[0]), rect_center);
  const nene_Vec2 side1_center = nene_Vec2_sub(nene_Segment_get_midpoint(intersection.intersected_rect_sides[1]), rect_center);
  const nene_Vec2 corner_dir = nene_Vec2_add(side0_center, side1_center);
  nene_Vec2 intersection_perp = nene_Vec2_perpendicular(nene_Segment_as_vec2(intersection.intersection));
  
  const bool is_sides_adjacent = nene_Vec2_len_sqr(corner_dir) >= 1.0f;

  if (is_sides_adjacent) {
    if (nene_Vec2_dot(intersection_perp, corner_dir) > 0) {
      intersection_perp = nene_Vec2_negate(intersection_perp);
    }

    // check top-right
    if (corner_dir.x > 0.0f && corner_dir.y > 0.0f) {
      return (nene_impl_CollidingData){
        .corner = corners[TOP_RIGHT],
        .intersection_perpendicular = intersection_perp,
      };
    }
    // check top-left
    else if (corner_dir.x < 0.0f && corner_dir.y > 0.0f) {
      return (nene_impl_CollidingData){
        .corner = corners[TOP_LEFT],
        .intersection_perpendicular = intersection_perp,
      };
    }
    // check bottom-left
    else if (corner_dir.x < 0.0f && corner_dir.y < 0.0f) {
      return (nene_impl_CollidingData){
        .corner = corners[BOTTOM_LEFT],
        .intersection_perpendicular = intersection_perp,
      };
    }
    // check bottom-right
    else if (corner_dir.x > 0.0f && corner_dir.y < 0.0f) {
      return (nene_impl_CollidingData){
        .corner = corners[BOTTOM_RIGHT],
        .intersection_perpendicular = intersection_perp,
      };
    }
  }
  else {
    int first_corner_idx  = -1;
    int second_corner_idx = -1;
    // find the corners to be considered and assign them to first/second_corner_idx variables.
    {
      const nene_Vec2 intersection_center = nene_Segment_get_midpoint(intersection.intersection);
      const nene_Vec2 rc_to_ic = nene_Vec2_sub(intersection_center, rect_center);
      const nene_Vec2 diff = nene_Vec2_sub(side0_center, side1_center);
      // if (dx > dy), then the segment intersects the left and the right sides.
      if (diff.x > diff.y) {
        if (rc_to_ic.y > 0.0f) {
          first_corner_idx = TOP_LEFT;
          second_corner_idx = TOP_RIGHT;
          // negate the perpendicular if it points away from the corners.
          if (intersection_perp.y < 0.0f) {
            intersection_perp= nene_Vec2_negate(intersection_perp);
          }
        }
        else {
          first_corner_idx = BOTTOM_LEFT;
          second_corner_idx = BOTTOM_RIGHT;
          // negate the perpendicular if it points away from the corners.
          if (intersection_perp.y > 0.0f) {
            intersection_perp= nene_Vec2_negate(intersection_perp);
          }
        }
      }
      else {
        if (rc_to_ic.x > 0.0f) {
          first_corner_idx = TOP_RIGHT;
          second_corner_idx = BOTTOM_RIGHT;
          // negate the perpendicular if it points away from the corners.
          if (intersection_perp.x < 0.0f) {
            intersection_perp= nene_Vec2_negate(intersection_perp);
          }
        }
        else {
          first_corner_idx = TOP_LEFT;
          second_corner_idx = BOTTOM_LEFT;
          // negate the perpendicular if it points away from the corners.
          if (intersection_perp.x > 0.0f) {
            intersection_perp= nene_Vec2_negate(intersection_perp);
          }
        }
      }
    }

    // array access with an array of 4 elements, this protects against out-of-bounds problems
    bool in_bounds = first_corner_idx >= 0 && second_corner_idx >= 0 && first_corner_idx < 4 && second_corner_idx < 4;
    SDL_assert(in_bounds);
    if (in_bounds) {
      const nene_Vec2 first_corner_norm = corner_normals[first_corner_idx];
      const nene_Vec2 second_corner_norm = corner_normals[second_corner_idx];

      const nene_Vec2 perp_n = nene_Vec2_normalize(intersection_perp);
      
      const float dot_first = nene_Vec2_dot(perp_n, first_corner_norm);
      const float dot_second = nene_Vec2_dot(perp_n, second_corner_norm);
      
      int corner_idx = dot_first > dot_second ? first_corner_idx : second_corner_idx;
      nene_Vec2 corner = corners[corner_idx];

      return (nene_impl_CollidingData){
        .intersection_perpendicular = nene_Vec2_negate(intersection_perp),
        .corner = corner
      };
    }
  }

  // NOTE: This line should be unreachable
  return (nene_impl_CollidingData) {
    .corner = nene_Vec2_zero(),
  };  
}

nene_Collision nene_Collision_zero(void) {
  return (nene_Collision){
    .collided = false
  };
}

nene_Collision nene_Collision_copy(nene_Collision *collision) {
  if (collision == NULL) {
    return nene_Collision_zero();
  }
  else {
    return *collision;
  }
}

nene_Collision nene_Collision_no_collision(void) {
  return nene_Collision_zero();
}

nene_Collision nene_Collision_rectf_with_rectf(nene_Rectf rect, nene_Rectf intersected_rect, nene_Vec2 delta_pos) {
  // first, get the intersection between rectangles
  const nene_IntersectionRectfWithRectf intersection = nene_IntersectionRectfWithRectf_get_intersection(rect, intersected_rect);

  // if there's no intersection, then there's no collision
  if (!intersection.intersected) {
    return nene_Collision_no_collision();
  }

  // get the center of each rectangle.
  const nene_Vec2 rect_center = nene_Rectf_get_center(rect);
  const nene_Vec2 intersected_rect_center = nene_Rectf_get_center(intersected_rect);

  // get the difference between centers, this results on a delta position between two rectangles;
  const nene_Vec2 diff = nene_Vec2_sub(intersected_rect_center, rect_center);

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
  nene_Vec2 delta = nene_Vec2_zero();

  if (!slides_horizontally && directions.x > 0.0f) {
    delta.x = delta_pos.x > 0.0f ? -intersection.intersection.size.x : intersection.intersection.size.x;
  }
  if (!slides_vertically && directions.y > 0.0f) {
    delta.y = delta_pos.y > 0.0f ? -intersection.intersection.size.y : intersection.intersection.size.y;
  }

  return (nene_Collision){
    .collided = true,
    .delta = delta,
  };
}

nene_Collision nene_Collision_rectf_with_segment(nene_Rectf rect, nene_Segment segment, nene_Vec2 delta_pos) {
  nene_IntersectionSegmentWithRectf intersection = nene_IntersectionSegmentWithRectf_get_intersection(segment, rect);

  if (intersection.count == 0 || nene_Segment_len_sqr(intersection.intersection) == 0.0f) {
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
        const nene_impl_CollidingData colliding_data =
          nene_impl_Collision_rect_with_segment_get_colliding_data(rect, intersection);

        const nene_Segment response_segment = (nene_Segment){
          .origin = colliding_data.corner,
          .ending = nene_Vec2_add(
            colliding_data.corner,
            nene_Vec2_scale(
             nene_Vec2_normalize(colliding_data.intersection_perpendicular),
             nene_Vec2_len(nene_Segment_as_vec2(nene_Shape_get_rectf_diagonal(rect, false))) + 1.0f
            )
          )
        };
        const nene_IntersectionSegmentWithSegment response_intersection =
          nene_IntersectionSegmentWithSegment_get_intersection(response_segment, segment);

        // NOTE: This intersection it's expected to happen, when it doesn't, a "very wrong" delta it's returned.
        // As a counter-measurement no collision is returned.
        if (!response_intersection.intersected) {
          // FIXME: unfortunately there are some corner cases where the algorithm doesn't works and no intersection
          // it's done, see issue #30: https://github.com/Andre-LA/nene/issues/30
          return nene_Collision_no_collision();
        }

        nene_Vec2 delta = nene_Vec2_sub(response_intersection.point, colliding_data.corner);

        return (nene_Collision){
          .collided = true,
          .delta = delta,
        };
      }
    }
  }

  // actually unreachable
  return nene_Collision_no_collision();
}
