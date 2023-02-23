#ifndef NENE_RECT_H
#define NENE_RECT_H

#include <stdint.h>
#include <stdbool.h>
#include <SDL2/SDL.h>

#include "nene/math/vec2i.h"
#include "nene/math/vec2.h"

typedef struct nene_Rect {
  nene_Vec2i pos;
  nene_Vec2i size;
} nene_Rect;

// TODO: move intersection related functions to an `intersection` module
typedef struct nene_Rect_intersection_result {
  bool intersected;
  nene_Rect intersection;
} nene_Rect_intersection_result;

typedef struct nene_Rect_collision_result {
  bool collided;
  nene_Rect rectangle_resolved;
  nene_Rect intersection;
} nene_Rect_collision_result;

nene_Rect nene_Rect_zero(void);
SDL_Rect nene_Rect_to_raw(nene_Rect rect);
bool nene_Rect_equals(nene_Rect a, nene_Rect b);
nene_Rect nene_Rect_with_pos(nene_Rect rect, nene_Vec2i pos);
nene_Rect nene_Rect_add_pos(nene_Rect rect, nene_Vec2i pos);
nene_Rect nene_Rect_with_size(nene_Rect rect, nene_Vec2i size);
nene_Rect nene_Rect_add_size(nene_Rect rect, nene_Vec2i size);
bool nene_Rect_is_rect_intersecting(nene_Rect a, nene_Rect b);
bool nene_Rect_is_point_intersecting(nene_Rect rect, nene_Vec2i point);
nene_Rect_intersection_result nene_Rect_get_intersection(nene_Rect a, nene_Rect b);
nene_Vec2i nene_Rect_get_center(nene_Rect rect);
nene_Rect_collision_result nene_Rect_simple_collision(nene_Rect rect, nene_Rect intersected_rect);

#endif // NENE_RECT_H
