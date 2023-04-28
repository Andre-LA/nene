/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_TEXTURE_H
#define NENE_TEXTURE_H

#include <stdint.h>
#include <stdbool.h>
#include <SDL.h>

#include "nene/math/vec2.h"
#include "nene/math/rect.h"
#include "nene/color.h"

typedef struct nene_Texture {
  SDL_Texture *raw;
  uint16_t width;
  uint16_t height;
  SDL_TextureAccess access;
} nene_Texture;

typedef struct nene_TextureCreation {
  bool created;
  nene_Texture texture;
} nene_TextureCreation;

void nene_Texture_destroy(nene_Texture *texture);
SDL_Texture *nene_Texture_get_raw(nene_Texture texture);
bool nene_Texture_apply_raw(nene_Texture *texture, SDL_Texture *raw_texture);
bool nene_Texture_set_blend_mode(nene_Texture texture, SDL_BlendMode blend_mode);
bool nene_Texture_set_color_mod(nene_Texture texture, nene_Color color);
nene_TextureCreation nene_Texture_create_with_access(uint16_t width, uint16_t height, SDL_TextureAccess access);
nene_TextureCreation nene_Texture_create(uint16_t width, uint16_t height);
nene_TextureCreation nene_Texture_load(const char *filepath);
nene_Rect nene_Texture_get_full_source_rect(nene_Texture texture);
bool nene_Texture_draw_to_point(nene_Texture texture, nene_Rect source, nene_Vec2 point, bool is_world_position);
bool nene_Texture_draw_to_rect(nene_Texture texture, nene_Rect source, nene_Rect destination);
bool nene_Texture_draw_to_point_ex(nene_Texture texture, nene_Rect source, nene_Vec2 point, bool is_world_position, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y);
bool nene_Texture_draw_to_rect_ex(nene_Texture texture, nene_Rect source, nene_Rect destination, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y);

#endif // NENE_TEXTURE_H
