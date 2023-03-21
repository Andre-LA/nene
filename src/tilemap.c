/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/core.h"
#include "nene/tilemap.h"
#include "nene/math/vec2.h"

nene_Vec2i nene_Tilemap_get_size_in_tiles(nene_Tilemap tilemap) {
  const nene_Vec2i at_tile_coord = nene_Grid_get_nth_cell_coord(tilemap.tile_count, tilemap.width);
  return (nene_Vec2i){
    .x = tilemap.width,
    .y = at_tile_coord.y + 1,
  };
}

nene_Vec2i nene_Tilemap_get_size(nene_Tilemap tilemap) {
  nene_Vec2i size_in_tiles = nene_Tilemap_get_size_in_tiles(tilemap);
  size_in_tiles.y--;
  return nene_Vec2i_sub(
    nene_Grid_get_cell_position(
      tilemap.grid,
      size_in_tiles
    ),
    tilemap.grid.gap
  );
}

bool nene_Tilemap_draw(nene_Tilemap tilemap, nene_Vec2 position, bool is_world_pos, uint16_t tiles[], uint32_t count) {
  SDL_assert(tiles != NULL);
  SDL_assert(count > 0);
  SDL_assert(count <= tilemap.tile_count);
  SDL_assert(tilemap.width > 0);

  if (count <= 0 || count > tilemap.tile_count || tilemap.width <= 0) {
    return false;
  }

  if (is_world_pos) {
    position = nene_Core_world_pos_to_screen_point(position);
  }

  bool fail = false;

  // TODO: here we "trust" that `count` it's on a valid range of `tiles` array, it's this the 
  // best approach?
  for (size_t tile_i = 0; tile_i < count; ++tile_i) {
    const uint16_t tileset_n = tiles[tile_i];

    // tiles with 0 value are ignored
    if (tileset_n > 0) {
      const nene_Vec2 tile_position = nene_Vec2_from_vec2i(
        nene_Grid_get_nth_cell_position(tilemap.grid, tile_i, tilemap.width)
      );
      // NOTE: tileset_n - 1 it's safe because it's on a tileset_n > 0 condition.
      fail = fail || !nene_TextureAtlas_draw_nth_sub_texture(tilemap.tileset, tileset_n - 1, nene_Vec2_add(position, tile_position), false);
    }
  }

  return !fail;
}

void nene_Tilemap_destroy(nene_Tilemap *tilemap) {
  SDL_assert(tilemap != NULL);

  if (tilemap == NULL) {
    return;
  }
  
  nene_TextureAtlas_destroy(&tilemap->tileset);
  *tilemap = (nene_Tilemap){ .tile_count = 0 };
}
