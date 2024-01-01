/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/font.h"
#include "nene/core.h"
#include "nene/impl/utils.h"
#include "nene/impl/texture.h"
#include "nene/impl/font.h"

nene_GlyphMetrics nene_GlyphMetrics_zero(void) {
  return (nene_GlyphMetrics){
    .min_x = 0,
  };
}

nene_GlyphMetrics nene_GlyphMetrics_copy(nene_GlyphMetrics *metrics) {
  if (metrics == NULL) {
    return nene_GlyphMetrics_zero();
  }
  else {
    return *metrics;
  }
}

nene_Font nene_Font_zero(void) {
  return (nene_Font){
    .raw = NULL
  };
}

nene_Font nene_Font_copy(nene_Font *font) {
  if (font == NULL) {
    return nene_Font_zero();
  }
  else {
    return *font;
  }
}

nene_FontCreation nene_Font_load(const char filepath[], int16_t pt_size) {
  SDL_assert(filepath != NULL);

  if (filepath == NULL) {
    return (nene_FontCreation){
      .created = false,
    };
  }
  
  TTF_Font *const raw_font = TTF_OpenFont(filepath, pt_size);

  if (raw_font == NULL) {
    return (nene_FontCreation){
      .created = false,
    };
  }

  return (nene_FontCreation){
    .created = true,
    .font = (nene_Font){
      .raw = raw_font,
    }
  };
}

nene_TextureCreation nene_Font_render(nene_Font font, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length) {
  nene_Core *const instance = nene_Core_instance();

  SDL_Surface *raw_surface = NULL;
  SDL_Color sdl_color = ImplUtils_color_to_sdlcolor(color);

  switch (quality) {
    case NENE_TEXT_QUALITY_SOLID: {
      if (wrap_length > 0) { raw_surface = TTF_RenderUTF8_Solid_Wrapped(nene_impl_Font_get_raw(font), text, sdl_color, wrap_length); }
      else                 { raw_surface = TTF_RenderUTF8_Solid(nene_impl_Font_get_raw(font), text, sdl_color);                      }
      break;
    }
    case NENE_TEXT_QUALITY_BLENDED: {
      if (wrap_length > 0) { raw_surface = TTF_RenderUTF8_Blended_Wrapped(nene_impl_Font_get_raw(font), text, sdl_color, wrap_length); }
      else                 { raw_surface = TTF_RenderUTF8_Blended(nene_impl_Font_get_raw(font), text, sdl_color);                      }
      break;
    }
    default: {
      return (nene_TextureCreation){
        .created = false,
      };
    }
  }

  if (raw_surface == NULL) {
    return (nene_TextureCreation){
      .created = false,
    };
  }

  //NOTE: From this point, raw_surface should be freed before returning any value!
  SDL_Texture *raw_texture = SDL_CreateTextureFromSurface(instance->renderer, raw_surface);

  if (raw_texture == NULL) {
    SDL_FreeSurface(raw_surface);
    return (nene_TextureCreation){
      .created = false,
    };
  }

  nene_Texture texture = { .raw = NULL };
  nene_impl_Texture_apply_raw(&texture, raw_texture);

  SDL_FreeSurface(raw_surface);
  return (nene_TextureCreation){
    .created = true,
    .texture = texture,
  };
}

bool nene_Font_update_text(nene_Font font, nene_Texture *text_texture, const char text[], nene_TextQuality quality, nene_Color color, uint32_t wrap_length) {
  SDL_assert_release(text_texture != NULL);

  if (text_texture == NULL) {
    return false;
  }
  
  nene_TextureCreation text_creation = nene_Font_render(font, text, quality, color, wrap_length);

  if (!text_creation.created) {
    return false;
  }

  nene_Texture_destroy(text_texture);
  *text_texture = text_creation.texture;

  return true;
}

nene_GlyphMetricsQuery nene_Font_get_glyph_metrics(nene_Font font, uint32_t glyph) {
  TTF_Font *const raw_font = nene_impl_Font_get_raw(font);

  int min_x = 0, min_y = 0, max_x = 0, max_y = 0, advance = 0;

  if (TTF_GlyphMetrics32(raw_font, glyph, &min_x, &max_x, &min_y, &max_y, &advance) != 0) {
    return (nene_GlyphMetricsQuery){
      .queried = false,
    };
  }

  return (nene_GlyphMetricsQuery){
    .queried = true,
    .metrics = (nene_GlyphMetrics){
      .min_x = min_x,
      .min_y = min_y,
      .max_x = max_x,
      .max_y = max_y,
    }
  };
}

uint16_t nene_Font_get_height(nene_Font font) {
  return TTF_FontHeight(nene_impl_Font_get_raw(font));
}

uint16_t nene_Font_get_ascent(nene_Font font) {
  return TTF_FontAscent(nene_impl_Font_get_raw(font));
}

uint16_t nene_Font_get_descent(nene_Font font) {
  return TTF_FontDescent(nene_impl_Font_get_raw(font));
}

uint16_t nene_Font_get_line_skip(nene_Font font) {
  return TTF_FontLineSkip(nene_impl_Font_get_raw(font));
}

nene_TextDimensions nene_Font_get_text_dimensions(nene_Font font, const char text[]) {
  TTF_Font *const raw_font = nene_impl_Font_get_raw(font);
  int w = 0, h = 0;

  if (TTF_SizeUTF8(raw_font, text, &w, &h) != 0) {
    return (nene_TextDimensions){
      .calculated = false,
    };
  }

  return (nene_TextDimensions){
    .calculated = true,
    .dimensions = { .x = w, .y = h },
  };
}

bool nene_Font_is_monospaced(nene_Font font) {
  return TTF_FontFaceIsFixedWidth(nene_impl_Font_get_raw(font)) != 0;
}

void nene_Font_destroy(nene_Font *font) {
  SDL_assert_release(font != NULL);

  if (font == NULL || font->raw == NULL) {
    return;
  }
  
  TTF_CloseFont(nene_impl_Font_get_raw(*font));

  *font = nene_Font_zero();
}
