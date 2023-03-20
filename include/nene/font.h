/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_FONT_H
#define NENE_FONT_H

#include <stdint.h>
#include <stdbool.h>
#include <SDL2/SDL_ttf.h>
#include "nene/math/vec2i.h"
#include "nene/texture.h"
#include "nene/color.h"

typedef struct nene_Font {
  TTF_Font *raw;
} nene_Font;

typedef struct nene_FontCreation {
  bool created;
  nene_Font font;
} nene_FontCreation;

typedef struct nene_GlyphMetrics {
  int16_t min_x;
  int16_t min_y;
  int16_t max_x;
  int16_t max_y;
} nene_GlyphMetrics;

typedef struct nene_GlyphMetricsQuery {
  bool queried;
  nene_GlyphMetrics metrics;
} nene_GlyphMetricsQuery;

typedef struct nene_TextDimensions {
  bool calculated;
  nene_Vec2i dimensions;
} nene_TextDimensions;

typedef enum nene_TextQuality {
  NENE_TEXT_QUALITY_SOLID   = 0,
  //TODO: NENE_TEXT_QUALITY_SHADED  = 1,
  NENE_TEXT_QUALITY_BLENDED = 2,
  //TODO: NENE_TEXT_QUALITY_LCD     = 3,
} nene_TextQuality;

TTF_Font *nene_Font_get_raw(nene_Font font);

nene_FontCreation nene_Font_load(const char filepath[], int16_t pt_size);

nene_TextureCreation nene_Font_render(nene_Font font, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length);

bool nene_Font_update_text(nene_Font font, nene_Texture *text_texture, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length);

nene_GlyphMetricsQuery nene_Font_get_glyph_metrics(nene_Font font, uint32_t glyph);

uint16_t nene_Font_get_height(nene_Font font);

uint16_t nene_Font_get_ascent(nene_Font font);

uint16_t nene_Font_get_descent(nene_Font font);

uint16_t nene_Font_get_line_skip(nene_Font font);

nene_TextDimensions nene_Font_get_text_dimensions(nene_Font font, const char text[]);

bool nene_Font_is_monospaced(nene_Font font);

void nene_Font_destroy(nene_Font *font);

#endif // NENE_FONT_H
