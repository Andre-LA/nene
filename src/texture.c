#include <SDL2/SDL_image.h>
#include <SDL2/SDL_render.h>
#include "nene/texture.h"
#include "nene/core.h"

static nene_Texture nene_impl_Texture_init(SDL_Texture *raw, uint16_t width, uint16_t height, SDL_TextureAccess access) {
  SDL_assert(raw != NULL);
  return (nene_Texture){
    .raw = raw,
    .width = width,
    .height = height,
    .access = access,
  };
}

static bool nene_impl_Texture_render_copy(nene_Texture texture, nene_Rect source, nene_Rect destination) {
  SDL_Rect src_rect = { .x = 0 };
  SDL_Rect *ptr_src_rect = NULL;

  if (source.size.y > 0 || source.size.y > 0) {
    src_rect = nene_Rect_to_raw(source);
    ptr_src_rect = &src_rect;
  }

  SDL_Rect dest_rect = nene_Rect_to_raw(destination);

  nene_Core *const instance = nene_Core_instance();
  SDL_Texture *raw_texture = nene_Texture_get_raw(texture);

  return SDL_RenderCopy(instance->renderer, raw_texture, ptr_src_rect, &dest_rect) != 0;
}

static bool nene_impl_Texture_render_copy_ex(nene_Texture texture, nene_Rect source, nene_Rect destination, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y) {
  SDL_Rect src_rect = { .x = 0 };
  SDL_Rect *ptr_src_rect = NULL;

  if (source.size.y > 0 || source.size.y > 0) {
    src_rect = nene_Rect_to_raw(source);
    ptr_src_rect = &src_rect;
  }

  SDL_Rect dest_rect = nene_Rect_to_raw(destination);  

  SDL_RendererFlip flip = SDL_FLIP_NONE;
  if (flip_x) { flip |= SDL_FLIP_HORIZONTAL; }
  if (flip_y) { flip |= SDL_FLIP_VERTICAL;   }

  SDL_Point rotation_center_point = {
    .x = (int)rotation_center.x, 
    .y = (int)rotation_center.y, 
  };

  nene_Core *const instance = nene_Core_instance();
  SDL_Texture *raw_texture = nene_Texture_get_raw(texture);

  return SDL_RenderCopyEx(
    instance->renderer, 
    raw_texture, 
    ptr_src_rect, 
    &dest_rect, 
    angle, 
    &rotation_center_point, 
    flip
  ) != 0;
}

void nene_Texture_destroy(nene_Texture *texture) {
  SDL_assert(texture != NULL);
  
  if (texture == NULL || texture->raw != NULL) {
    return;
  }
  
  SDL_DestroyTexture(texture->raw);
  *texture = (nene_Texture){ .raw = NULL };
}

SDL_Texture *nene_Texture_get_raw(nene_Texture texture) {
  SDL_assert(texture.raw != NULL);
  return texture.raw;
}

bool nene_Texture_apply_raw(nene_Texture *texture, SDL_Texture *raw_texture) {
  SDL_assert(texture != NULL);
  SDL_assert(raw_texture != NULL);

  if (texture == NULL || raw_texture == NULL) {
    return false;
  }

  uint32_t fmt;
  int access;
  int w;
  int h;

  if (SDL_QueryTexture(raw_texture, &fmt, &access, &w, &h) != 0) {
    nene_Core_warn("Nene.Texture.apply_raw", "could not query applied texture");
    return false;
  }

  if (texture->raw != NULL) {
    nene_Texture_destroy(texture);
  }

  *texture = nene_impl_Texture_init(raw_texture, w, h, access);
  return true;
}

bool nene_Texture_set_blend_mode(nene_Texture texture, SDL_BlendMode blend_mode) {
  SDL_Texture *raw_texture = nene_Texture_get_raw(texture);

  if (SDL_SetTextureBlendMode(raw_texture, blend_mode) != 0) {
    nene_Core_warn("Nene.Texture.set_blend_mode", "could not set texture blend mode");
    return false;
  }

  return true;
}

nene_TextureCreation nene_Texture_create_with_access(uint16_t width, uint16_t height, SDL_TextureAccess access) {
  SDL_assert(width > 0);
  SDL_assert(height > 0);

  nene_Core *const instance = nene_Core_instance();

  SDL_Texture *raw_texture = SDL_CreateTexture(instance->renderer, SDL_PIXELFORMAT_RGBA8888, access, width, height);

  if (raw_texture == NULL) {
    nene_Core_warn("Nene.Texture.create", "could not create texture");
    return (nene_TextureCreation){
      .created = false
    };
  }

  return (nene_TextureCreation){
    .created = true,
    .texture = nene_impl_Texture_init(raw_texture, width, height, access),
  };
}

nene_TextureCreation nene_Texture_create(uint16_t width, uint16_t height) {
  return nene_Texture_create_with_access(width, height, SDL_TEXTUREACCESS_STATIC);
}

nene_TextureCreation nene_Texture_load(const char *filepath) {
  SDL_assert(filepath != NULL);
  
  if (filepath == NULL) {
    return (nene_TextureCreation) {
      .created = false,
    };
  }
  
  nene_Core *const instance = nene_Core_instance();
  SDL_Texture *raw_texture = IMG_LoadTexture(instance->renderer, filepath);

  if (raw_texture == NULL) {
    nene_Core_warn("Nene.Texture.create", "could not load image as a texture");
    return (nene_TextureCreation){
      .created = false,  
    };
  }

  nene_Texture texture = { .raw = NULL };

  // let's apply the raw texture to nene texture, if the query fails, then
  // the texture it's destroyed and a failure it's returned.
  if (!nene_Texture_apply_raw(&texture, raw_texture)) {
    nene_Texture_destroy(&texture);
    nene_Core_warn("Nene.Texture.load", "could not apply loaded image as a texture");
    return (nene_TextureCreation){
      .created = false,  
    };
  }

  return (nene_TextureCreation){
    .created = true,
    .texture = texture,
  };
}

bool nene_Texture_draw_to_point(nene_Texture texture, nene_Rect source, nene_Vec2 point) {
  nene_Rect destination = {
    .pos = nene_Vec2_to_vec2i(point),
    .size = (nene_Vec2i){ .x = texture.width, .y = texture.height },
  };

  if (nene_impl_Texture_render_copy(texture, source, destination)) {
    nene_Core_warn("Nene.Texture.draw_to_point", "could not draw a texture on a point position");
    return false;
  }

  return true;
}

bool nene_Texture_draw_to_rect(nene_Texture texture, nene_Rect source, nene_Rect destination) {
  if (nene_impl_Texture_render_copy(texture, source, destination)) {
    nene_Core_warn("Nene.Texture.draw_to_rect", "could not draw a texture on a rectangle");
    return false;
  }

  return true;
}

bool nene_Texture_draw_to_point_ex(nene_Texture texture, nene_Rect source, nene_Vec2 point, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y) {
  nene_Rect destination = {
    .pos = nene_Vec2_to_vec2i(point),
    .size = (nene_Vec2i){ .x = texture.width, .y = texture.height },
  };

  if (nene_impl_Texture_render_copy_ex(texture, source, destination, angle, rotation_center, flip_x, flip_y)) {
    nene_Core_warn("Nene.Texture.draw_to_point_ex", "could not (extended) draw a texture on a point position");
    return false;
  }

  return true;
}

bool nene_Texture_draw_to_rect_ex(nene_Texture texture, nene_Rect source, nene_Rect destination, double angle, nene_Vec2 rotation_center, bool flip_x, bool flip_y) {
  if (nene_impl_Texture_render_copy_ex(texture, source, destination, angle, rotation_center, flip_x, flip_y)) {
    nene_Core_warn("Nene.Texture.draw_to_rect_ex", "could not (extended) draw a texture on a rectangle");
    return false;
  }

  return true;
}
