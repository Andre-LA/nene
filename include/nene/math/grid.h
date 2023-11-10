/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_GRID_H
#define NENE_GRID_H

#include <stdbool.h>
#include "nene/math/vec2i.h"
#include "nene/math/rect.h"

typedef struct nene_Grid {
  nene_Vec2i cell_size;
  nene_Vec2i gap;
} nene_Grid;

nene_Grid nene_Grid_zero(void);

nene_Grid nene_Grid_copy(nene_Grid *grid);

bool nene_Grid_equals(nene_Grid a, nene_Grid b);

nene_Vec2i nene_Grid_get_nth_cell_coord(uint32_t nth, uint16_t grid_width);

nene_Vec2i nene_Grid_get_cell_position(nene_Grid grid, nene_Vec2i cell_coord);

nene_Vec2i nene_Grid_get_nth_cell_position(nene_Grid grid, uint32_t nth, uint16_t grid_width);

nene_Rect nene_Grid_get_rect(nene_Grid grid, nene_Vec2i cell_coord);

#endif // NENE_GRID_H
