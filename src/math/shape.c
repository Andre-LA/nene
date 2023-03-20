/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/shape.h"

nene_ShapeQuadrilateral nene_Shape_get_rect_shape(nene_Rect rect) {
  // rp and rs stands for rect position and rect size.
  const nene_Vec2 rp = nene_Vec2_from_vec2i(rect.pos);
  const nene_Vec2 rs = nene_Vec2_from_vec2i(rect.size);

  // create the four sides of the rectangle.
  nene_ShapeQuadrilateral quad_shape = {
    .sides = {
      { .origin = { .x = rs.x, .y =  0.0f }, .ending = { .x = rs.x, .y = -rs.y } },
      { .origin = { .x = 0.0f, .y =  0.0f }, .ending = { .x = rs.x, .y =  0.0f } },
      { .origin = { .x = 0.0f, .y = -rs.y }, .ending = { .x = 0.0f, .y =  0.0f } },
      { .origin = { .x = rs.x, .y = -rs.y }, .ending = { .x = 0.0f, .y = -rs.y } }
    }
  };

  // a quadrilateral shape has four sides.
  for (int i = 0; i < 4; ++i) {
    quad_shape.sides[i].origin = nene_Vec2_add(quad_shape.sides[i].origin, rp);
    quad_shape.sides[i].ending = nene_Vec2_add(quad_shape.sides[i].ending, rp);
  }

  return quad_shape;
}
