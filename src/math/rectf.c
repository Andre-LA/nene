/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/rectf.h"

/*
TODO: This code contains some code expressions to get a specific side of the 
rectangle from an axis, like `a.pos.x + a.pos.w`;
it would be convenient to separate this as functions
*/

nene_Rectf nene_Rectf_zero(void) {
  return (nene_Rectf){
    .pos = nene_Vec2_zero(),
    .size = nene_Vec2_zero(),
  };
}

nene_Rectf nene_Rectf_copy(nene_Rectf *rect) {
  if (rect == NULL) {
    return nene_Rectf_zero();
  }
  else {
    return *rect;
  }
}

SDL_FRect nene_Rectf_to_raw(nene_Rectf rect) {
  return (SDL_FRect){
    .x = rect.pos.x,
    .y = rect.pos.y,
    .w = rect.size.x,
    .h = rect.size.y,
  };
}

bool nene_Rectf_equals(nene_Rectf a, nene_Rectf b) {
  return nene_Vec2_equals(a.pos, b.pos) && nene_Vec2_equals(a.size, b.size);
}

nene_Rectf nene_Rectf_add_pos(nene_Rectf rect, nene_Vec2 pos) {
  rect.pos = nene_Vec2_add(rect.pos, pos);
  return rect;
}

nene_Rectf nene_Rectf_add_size(nene_Rectf rect, nene_Vec2 size) {
  rect.size = nene_Vec2_add(rect.size, size);
  return rect;
}

nene_Vec2 nene_Rectf_get_center(nene_Rectf rect) {
  rect.size.y = -rect.size.y; // math it's done at "world space"
  return nene_Vec2_add(rect.pos, nene_Vec2_scale(rect.size, 0.5f));
}

nene_Rect nene_Rectf_to_rect(nene_Rectf rect) {
  return (nene_Rect){
    .pos  = nene_Vec2_to_vec2i(rect.pos),
    .size = nene_Vec2_to_vec2i(rect.size),
  };
}

nene_Rectf nene_Rectf_from_rect(nene_Rect rect) {
  return (nene_Rectf){
    .pos  = nene_Vec2_from_vec2i(rect.pos),
    .size = nene_Vec2_from_vec2i(rect.size),
  };
}
