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
#include "SDL_ttf.h"
#include "nene/math/vec2i.h"
#include "nene/texture.h"
#include "nene/color.h"

/// The quality of the text rendering.
typedef enum nene_TextQuality {
  /// Solid is faster, but not "smooth", ideal for fast rendering or pixel-art fonts.
  NENE_TEXTQUALITY_SOLID = 0,
  /// Blended is slower, but have high-quality, with antialiasing.
  NENE_TEXTQUALITY_BLENDED = 2,
} nene_TextQuality;

/// The Font handle.
/// You should not use the internal resource
typedef struct nene_Font {
  TTF_Font *raw;
} nene_Font;

/// A font creation result.
typedef struct nene_FontCreation {
  /// true if font creation succeded.
  bool created;
  /// the font handle created, empty on case of failure.
  nene_Font font;
} nene_FontCreation;

/// The metrics of the font
typedef struct nene_GlyphMetrics {
  int16_t min_x;
  int16_t min_y;
  int16_t max_x;
  int16_t max_y;
} nene_GlyphMetrics;

/// The query result about a font.
typedef struct nene_GlyphMetricsQuery {
  bool queried;
  nene_GlyphMetrics metrics;
} nene_GlyphMetricsQuery;

/// The dimensions result of a text.
typedef struct nene_TextDimensions {
  bool calculated;
  nene_Vec2i dimensions;
} nene_TextDimensions;

/// Returns the internal data of the Font handle.
TTF_Font *nene_Font_get_raw(nene_Font font);

/// Returns the font creation result, this creates a font from a font asset (like .ttf files).
nene_FontCreation nene_Font_load(const char filepath[], int16_t pt_size);

/// Renders a text using the given font, returns a texture creation result.
nene_TextureCreation nene_Font_render(nene_Font font, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length);

/// Updates the text of the reference texture, (this mutates the reference).
bool nene_Font_update_text(nene_Font font, nene_Texture *text_texture, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length);

/// Query the metrics of the given glyph of the given font.
nene_GlyphMetricsQuery nene_Font_get_glyph_metrics(nene_Font font, uint32_t glyph);

/// Get font's height.
uint16_t nene_Font_get_height(nene_Font font);

/// Get font's ascent.
uint16_t nene_Font_get_ascent(nene_Font font);

/// Get font's descent.
uint16_t nene_Font_get_descent(nene_Font font);

/// Get's the line skip height.
uint16_t nene_Font_get_line_skip(nene_Font font);

/// Calculates the dimensions of the given text using the given font.
nene_TextDimensions nene_Font_get_text_dimensions(nene_Font font, const char text[]);

/// Checks if the given font is mono spaced.
bool nene_Font_is_monospaced(nene_Font font);

/// Destroys the font resource.
void nene_Font_destroy(nene_Font *font);

#endif /// NENE_FONT_H
