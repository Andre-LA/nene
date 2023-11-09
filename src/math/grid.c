/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/grid.h"
#include "nene/math/vec2i.h"

nene_Grid nene_Grid_zero(void) {
  return (nene_Grid){
    .cell_size = nene_Vec2i_zero(),
  };
}

nene_Grid nene_Grid_copy(nene_Grid *grid) {
  if (grid == NULL) {
    return nene_Grid_zero();
  }
  else {
    return *grid;
  }
}

bool nene_Grid_equals(nene_Grid a, nene_Grid b) {
  return nene_Vec2i_equals(a.cell_size, b.cell_size) && nene_Vec2i_equals(a.gap, b.gap);
}

nene_Vec2i nene_Grid_get_nth_cell_coord(uint32_t nth, uint16_t grid_width) {
  return (nene_Vec2i){
    .x = nth % grid_width,
    .y = nth / grid_width,
  };
}

nene_Vec2i nene_Grid_get_cell_position(nene_Grid grid, nene_Vec2i cell_coord) {
  return nene_Vec2i_add(
    nene_Vec2i_mul(grid.cell_size, cell_coord),
    nene_Vec2i_mul(grid.gap, cell_coord)
  );
}

nene_Vec2i nene_Grid_get_nth_cell_position(nene_Grid grid, uint32_t nth, uint16_t grid_width) {
  return nene_Grid_get_cell_position(grid, nene_Grid_get_nth_cell_coord(nth, grid_width));
}

nene_Rect nene_Grid_get_rect(nene_Grid grid, nene_Vec2i cell_coord) {
  return (nene_Rect){
    .pos = nene_Grid_get_cell_position(grid, cell_coord),
    .size = grid.cell_size,
  };
}

