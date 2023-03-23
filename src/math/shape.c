/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/shape.h"

nene_ShapeQuadrilateral nene_Shape_get_rectf_shape(nene_Rectf rect) {
  // create the four sides of the rectangle.
  nene_ShapeQuadrilateral quad_shape = {
    .sides = {
      { .origin = { .x = rect.size.x, .y =         0.0f }, .ending = { .x = rect.size.x, .y = -rect.size.y } },
      { .origin = { .x =        0.0f, .y =         0.0f }, .ending = { .x = rect.size.x, .y =         0.0f } },
      { .origin = { .x =        0.0f, .y = -rect.size.y }, .ending = { .x =        0.0f, .y =         0.0f } },
      { .origin = { .x = rect.size.x, .y = -rect.size.y }, .ending = { .x =        0.0f, .y = -rect.size.y } }
    }
  };

  // a quadrilateral shape has four sides.
  for (int i = 0; i < 4; ++i) {
    quad_shape.sides[i].origin = nene_Vec2_add(quad_shape.sides[i].origin, rect.pos);
    quad_shape.sides[i].ending = nene_Vec2_add(quad_shape.sides[i].ending, rect.pos);
  }

  return quad_shape;
}

nene_ShapeQuadrilateral nene_Shape_get_rect_shape(nene_Rect rect) {
  return nene_Shape_get_rectf_shape(nene_Rectf_from_rect(rect));
}
