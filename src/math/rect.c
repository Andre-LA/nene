#include "nene/math/rect.h"
#include <math.h>

/*
TODO: This code contains some code expressions to get a specific side of the 
rectangle from an axis, like `a.pos.x + a.pos.w`;
it would be convenient to separate this as functions
*/

nene_Rect nene_Rect_zero(void) {
  return (nene_Rect){
    .pos = nene_Vec2i_zero(),
    .size = nene_Vec2i_zero(),
  };
}

SDL_Rect nene_Rect_to_raw(nene_Rect rect) {
  return (SDL_Rect){
    .x = rect.pos.x,
    .y = rect.pos.y,
    .w = rect.size.x,
    .h = rect.size.y,
  };
}

bool nene_Rect_equals(nene_Rect a, nene_Rect b) {
  return nene_Vec2i_equals(a.pos, b.pos) && nene_Vec2i_equals(a.size, b.size);
}

nene_Rect nene_Rect_with_pos(nene_Rect rect, nene_Vec2i pos) {
  return (nene_Rect){
    .pos = pos,
    .size = rect.size,
  };
}

nene_Rect nene_Rect_add_pos(nene_Rect rect, nene_Vec2i pos) {
  return nene_Rect_with_pos(rect, nene_Vec2i_add(rect.pos, pos));
}

nene_Rect nene_Rect_with_size(nene_Rect rect, nene_Vec2i size) {
  return (nene_Rect){
    .pos = rect.pos,
    .size = size,
  };
}

nene_Rect nene_Rect_add_size(nene_Rect rect, nene_Vec2i size) {
  return nene_Rect_with_size(rect, nene_Vec2i_add(rect.size, size));
}

bool nene_Rect_is_rect_intersecting(nene_Rect a, nene_Rect b) {
  return !( // if any of the following predicates it's true, then the rectangles aren't intersecting.
    (a.pos.x + a.size.x) < b.pos.x || // is `a` on the left of `b`?
    (b.pos.x + b.size.x) < a.pos.x || // is `b` on the left of `a`?
    (a.pos.y + a.size.y) < b.pos.y || // is `a` on the top of `b`?
    (b.pos.y + b.size.y) < a.pos.y    // is `b` on the top of `a`?
  );  
}

bool nene_Rect_is_point_intersecting(nene_Rect rect, nene_Vec2i point) {
  return point.x >= rect.pos.x && point.x <= rect.pos.x + rect.size.x &&
         point.y >= rect.pos.y && point.y <= rect.pos.y + rect.size.y;
}

nene_Rect_intersection_result nene_Rect_get_intersection(nene_Rect a, nene_Rect b) {
  if (!nene_Rect_is_rect_intersecting(a, b)) {
    return (nene_Rect_intersection_result) { .intersected = false, .intersection = nene_Rect_zero() };
  }

  const int32_t ax = a.pos.x;
  const int32_t ay = a.pos.y;
  const int32_t asx = a.pos.x + a.size.x;
  const int32_t asy = a.pos.y + a.size.y;

  const int32_t bx = b.pos.x;
  const int32_t by = b.pos.y;
  const int32_t bsx = b.pos.x + b.size.x;
  const int32_t bsy = b.pos.y + b.size.y;

  const int32_t max_x = (ax > bx) ? ax : bx;
  const int32_t max_y = (ay > by) ? ay : by;
  const int32_t min_sx = (asx < bsx) ? asx : bsx;
  const int32_t min_sy = (asy < bsy) ? asy : bsy;

  return (nene_Rect_intersection_result){
    .intersected = true,
    .intersection = (nene_Rect){ 
      .pos = { .x = max_x, .y = max_y },
      .size = { .x = abs(min_sx - max_x), .y = abs(min_sy - max_y) },
    },
  };
}

nene_Vec2i nene_Rect_get_center(nene_Rect rect) {
  return nene_Vec2i_add(rect.pos, nene_Vec2i_scale(rect.size, 0.5f));
}

static nene_Rect nene_Rect__resolve_vertical(nene_Rect result, nene_Rect rect, nene_Vec2i rect_center, nene_Rect intersected, nene_Vec2i intersected_center) {
  if (rect_center.y < intersected_center.y) { // go top
    result.pos.y = intersected.pos.y - rect.size.y;
  } else { // go bottom
    result.pos.y = intersected.pos.y + intersected.size.y;
  }
  return result;
}

static nene_Rect nene_Rect__resolve_horizontal(nene_Rect result, nene_Rect rect, nene_Vec2i rect_center, nene_Rect intersected, nene_Vec2i intersected_center) {
  if (rect_center.x < intersected_center.x) { // go left
    result.pos.x = intersected.pos.x - rect.size.x;
  } else { // go right
    result.pos.x = intersected.pos.x + intersected.size.x;
  }
  return result;
}

nene_Rect_collision_result nene_Rect_simple_collision(nene_Rect rect, nene_Rect intersected_rect) {
  const nene_Rect_intersection_result intersection = nene_Rect_get_intersection(rect, intersected_rect);

  // skip if there's not intersection
  if (!intersection.intersected) {
    return (nene_Rect_collision_result){ 
      .collided = false, 
      .rectangle_resolved = nene_Rect_zero(), 
      .intersection = nene_Rect_zero() 
    };
  }

  nene_Rect result = rect; // result it's a modified value of rect
  
  const nene_Vec2i rect_center = nene_Rect_get_center(rect);
  const nene_Vec2i intersected_rect_center = nene_Rect_get_center(intersected_rect);

  if (intersection.intersection.size.x > intersection.intersection.size.y) { // then it's vertical
    result = nene_Rect__resolve_vertical(result, rect, rect_center, intersected_rect, intersected_rect_center);
  } else if (intersection.intersection.size.x < intersection.intersection.size.y) { // then it's horizontal
    result = nene_Rect__resolve_horizontal(result, rect, rect_center, intersected_rect, intersected_rect_center);
  } else { // then it's diagonal, thus it's both
    result = nene_Rect__resolve_vertical(result, rect, rect_center, intersected_rect, intersected_rect_center);
    result = nene_Rect__resolve_horizontal(result, rect, rect_center, intersected_rect, intersected_rect_center);
  }

  return (nene_Rect_collision_result){
    .collided = true, 
    .rectangle_resolved = result, 
    .intersection = intersection.intersection 
  };
}

