/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

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

nene_Rect nene_Rect_add_pos(nene_Rect rect, nene_Vec2i pos) {
  rect.pos = nene_Vec2i_add(rect.pos, pos);
  return rect;
}

nene_Rect nene_Rect_add_size(nene_Rect rect, nene_Vec2i size) {
  rect.size = nene_Vec2i_add(rect.size, size);
  return rect;
}

nene_Vec2i nene_Rect_get_center(nene_Rect rect) {
  rect.size.y = -rect.size.y; // math it's done at "world space"
  return nene_Vec2i_add(rect.pos, nene_Vec2i_scale(rect.size, 0.5f));
}
