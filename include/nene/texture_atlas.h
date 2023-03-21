/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_TEXTURE_ATLAS_H
#define NENE_TEXTURE_ATLAS_H

#include <stdbool.h>
#include <stdint.h>

#include "nene/math/grid.h"
#include "nene/texture.h"
#include "nene/math/vec2i.h"
#include "nene/math/vec2.h"

typedef struct nene_TextureAtlas {
  uint16_t width;
  nene_Grid grid;
  nene_Texture texture;
} nene_TextureAtlas;

typedef struct nene_TextureAtlasCreation {
  bool created;
  nene_TextureAtlas texture_atlas;
} nene_TextureAtlasCreation;

void nene_TextureAtlas_destroy(nene_TextureAtlas *texture_atlas);

nene_TextureAtlasCreation nene_TextureAtlas_load(const char *filepath, uint16_t width, nene_Grid grid);

bool nene_TextureAtlas_draw_sub_texture(nene_TextureAtlas texture_atlas, nene_Vec2i subtexture_coord, nene_Vec2 position, bool is_world_pos);

bool nene_TextureAtlas_draw_sub_texture_ex(nene_TextureAtlas texture_atlas, nene_Vec2i subtexture_coord, nene_Vec2 position, bool is_world_pos, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y);

bool nene_TextureAtlas_draw_nth_sub_texture(nene_TextureAtlas texture_atlas, uint32_t nth, nene_Vec2 position, bool is_world_pos);

bool nene_TextureAtlas_draw_nth_sub_texture_ex(nene_TextureAtlas texture_atlas, uint32_t nth, nene_Vec2 position, bool is_world_pos, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y);

nene_Vec2 nene_TextureAtlas_get_sub_texture_center(nene_TextureAtlas texture_atlas);

#endif // NENE_TEXTURE_ATLAS_H
