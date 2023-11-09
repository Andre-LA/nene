/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_TILEMAP_H
#define NENE_TILEMAP_H

#include <stdint.h>
#include <stdbool.h>
#include "nene/texture.h"
#include "nene/texture_atlas.h"
#include "nene/math/grid.h"
#include "nene/math/vec2i.h"

typedef struct nene_Tilemap {
  nene_TextureAtlas tileset;
  uint16_t width;
  nene_Grid grid;
  uint32_t tile_count;
} nene_Tilemap;

nene_Tilemap nene_Tilemap_zero(void);

nene_Tilemap nene_Tilemap_copy(nene_Tilemap *tilemap);

nene_Vec2i nene_Tilemap_get_size_in_tiles(nene_Tilemap tilemap);

nene_Vec2i nene_Tilemap_get_size(nene_Tilemap tilemap);

bool nene_Tilemap_draw(nene_Tilemap tilemap, nene_Vec2 position, bool is_world_pos, uint16_t tiles[], uint32_t count);

void nene_Tilemap_destroy(nene_Tilemap *tilemap);

#endif // NENE_TILEMAP_H
