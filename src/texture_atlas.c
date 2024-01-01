/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/texture_atlas.h"
#include "nene/core.h"
#include "SDL_assert.h"

nene_TextureAtlas nene_TextureAtlas_zero(void) {
  return (nene_TextureAtlas){
    .texture = nene_Texture_zero()
  };
}

nene_TextureAtlas nene_TextureAtlas_copy(nene_TextureAtlas *texture_atlas) {
  if (texture_atlas == NULL) {
    return nene_TextureAtlas_zero();
  }
  else {
    return *texture_atlas;
  }
}

void nene_TextureAtlas_destroy(nene_TextureAtlas *texture_atlas) {
  SDL_assert_release(texture_atlas != NULL);

  if (texture_atlas == NULL) {
    return;
  }

  nene_Texture_destroy(&texture_atlas->texture);
  *texture_atlas = (nene_TextureAtlas){ .width = 0 };
}

nene_TextureAtlasCreation nene_TextureAtlas_load(const char *filepath, uint16_t width, nene_Grid grid) {
  SDL_assert(filepath != NULL);
  SDL_assert(width > 0);

  nene_TextureCreation texture_creation = nene_Texture_load(filepath);

  if (!texture_creation.created) {
    return (nene_TextureAtlasCreation){
      .created = false,
    };
  }

  return (nene_TextureAtlasCreation){
    .created = true,
    .texture_atlas = (nene_TextureAtlas){
      .texture = texture_creation.texture,
      .grid = grid,
      .width = width,
    },
  };
}

bool nene_TextureAtlas_draw_sub_texture(nene_TextureAtlas texture_atlas, nene_Vec2i subtexture_coord, nene_Vec2 position, bool is_world_pos) {
  if (is_world_pos) {
    position = nene_Core_world_pos_to_screen_point(position);
  }
  nene_Rect source_rect = nene_Grid_get_rect(texture_atlas.grid, subtexture_coord);
  nene_Rect destination_rect = {
    .pos = nene_Vec2_to_vec2i(position),
    .size = source_rect.size,
  };

  return nene_Texture_draw_to_rect(texture_atlas.texture, source_rect, destination_rect);
}

bool nene_TextureAtlas_draw_sub_texture_ex(nene_TextureAtlas texture_atlas, nene_Vec2i subtexture_coord, nene_Vec2 position, bool is_world_pos, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y) {
  if (is_world_pos) {
    position = nene_Core_world_pos_to_screen_point(position);
  }
  nene_Rect source_rect = nene_Grid_get_rect(texture_atlas.grid, subtexture_coord);
  nene_Rect destination_rect = {
    .pos = nene_Vec2_to_vec2i(position),
    .size = source_rect.size,
  };

  return nene_Texture_draw_to_rect_ex(texture_atlas.texture, source_rect, destination_rect, angle, rotation_center, flip_x, flip_y);
}

bool nene_TextureAtlas_draw_nth_sub_texture(nene_TextureAtlas texture_atlas, uint32_t nth, nene_Vec2 position, bool is_world_pos) {
  nene_Vec2i texture_coord = nene_Grid_get_nth_cell_coord(nth, texture_atlas.width);
  return nene_TextureAtlas_draw_sub_texture(texture_atlas, texture_coord, position, is_world_pos);
}

bool nene_TextureAtlas_draw_nth_sub_texture_ex(nene_TextureAtlas texture_atlas, uint32_t nth, nene_Vec2 position, bool is_world_pos, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y) {
  nene_Vec2i texture_coord = nene_Grid_get_nth_cell_coord(nth, texture_atlas.width);
  return nene_TextureAtlas_draw_sub_texture_ex(texture_atlas, texture_coord, position, is_world_pos, angle, rotation_center, flip_x, flip_y);
}

nene_Vec2 nene_TextureAtlas_get_sub_texture_center(nene_TextureAtlas texture_atlas) {
  return nene_Vec2_scale(nene_Vec2_from_vec2i(texture_atlas.grid.cell_size), 0.5f);
}
