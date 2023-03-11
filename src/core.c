/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_ttf.h>
#include <SDL2/SDL_mixer.h>
#include "nene/core.h"

static void nene_impl_Core_warn(const char fn[], const char msg[]) {
  
}

// define and empty-initialize global variables
nene_Core _nene_instance = { .quit = false };
bool _nene_initialized = false;

nene_Core* nene_Core_instance(void) {
  SDL_assert_release(_nene_initialized);
  return &_nene_instance;
}

// static (private) functions
static void nene_impl_Core_update_keyboard_state(nene_Core *instance, SDL_KeyboardEvent *kb_event) {
  instance->scancode_state[kb_event->keysym.scancode] = kb_event->state == SDL_PRESSED;
}

static void nene_impl_Core_update_mouse_buttons_state(nene_Core *instance, SDL_MouseButtonEvent *mb_event) {
  instance->mouse_pos = (nene_Vec2){ .x = mb_event->x, .y = mb_event->y };

  instance->mouse_buttons = (
    mb_event->state == SDL_PRESSED
      ? instance->mouse_buttons | SDL_BUTTON(mb_event->button)
      : instance->mouse_buttons ^ SDL_BUTTON(mb_event->button)
  );
}

static void nene_impl_Core_update_mouse_motion_state(nene_Core *instance, SDL_MouseMotionEvent *mm_event) {
  instance->mouse_pos = (nene_Vec2){ .x = mm_event->x, .y = mm_event->y };
  instance->mouse_motion = (nene_Vec2){ .x = mm_event->xrel, .y = mm_event->yrel };
}

void nene_Core_update(void) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  instance->mouse_motion = nene_Vec2_zero();
  for (int i = 0; i < SDL_NUM_SCANCODES; ++i) {
    instance->prev_scancode_state[i] = instance->scancode_state[i];
  }
  instance->prev_mouse_buttons = instance->mouse_buttons;
  for (int i = 0; i < NENE_CFG_GAMEPAD_COUNT; ++i) {
    instance->gamepads_state[i].prev_buttons = instance->gamepads_state[i].buttons;
  }

  SDL_Event event;

  while (SDL_PollEvent(&event)) {
    switch (event.type) {
      case SDL_QUIT: {
        instance->quit = true;
        break;
      }
      // TODO: Handle game controllers.
      case SDL_KEYDOWN: // fall-through.
      case SDL_KEYUP: {
        nene_impl_Core_update_keyboard_state(instance, &event.key);
        break;
      }
      case SDL_MOUSEMOTION: {
        nene_impl_Core_update_mouse_motion_state(instance, &event.motion);
        break;
      }
      case SDL_MOUSEBUTTONDOWN: // fall-through
      case SDL_MOUSEBUTTONUP: {
        nene_impl_Core_update_mouse_buttons_state(instance, &event.button);
        break;
      }
    }
  }

  const nene_MilliTime prev_time = instance->current_time;
  instance->current_time = SDL_GetTicks64();
  instance->delta_time = (instance->current_time - prev_time) / 1000.0f;
}

bool nene_Core_is_scancode_pressed(SDL_Scancode scancode) {
  SDL_assert(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return instance->scancode_state[scancode];
}

bool nene_Core_is_scancode_just_pressed(SDL_Scancode scancode) {
  SDL_assert(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return instance->scancode_state[scancode] && !instance->prev_scancode_state[scancode];
}

bool nene_Core_is_scancode_just_released(SDL_Scancode scancode) {
  SDL_assert(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return !instance->scancode_state[scancode] && instance->prev_scancode_state[scancode];
}

bool nene_Core_is_mouse_button_pressed(uint32_t mouse_button) {
  SDL_assert(_nene_initialized);
  SDL_assert(mouse_button > 0);
  
  nene_Core *const instance = nene_Core_instance();
  return (instance->mouse_buttons & SDL_BUTTON(mouse_button)) != 0;
}

bool nene_Core_is_mouse_button_just_pressed(uint32_t mouse_button) {
  SDL_assert(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return (
    (instance->mouse_buttons & SDL_BUTTON(mouse_button)) != 0 &&
    (instance->prev_mouse_buttons & SDL_BUTTON(mouse_button)) == 0
  );
}

bool nene_Core_is_mouse_button_just_released(uint32_t mouse_button) {
  SDL_assert(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return (
    (instance->mouse_buttons & SDL_BUTTON(mouse_button)) == 0 &&
    (instance->prev_mouse_buttons & SDL_BUTTON(mouse_button)) != 0
  );
}

nene_Vec2i nene_Core_get_window_size(void) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  int sx, sy;
  SDL_GetWindowSize(instance->window, &sx, &sy);

  return (nene_Vec2i){ .x = sx, .y = sy };
}

nene_Vec2 nene_Core_get_screen_center(void) {
  SDL_assert(_nene_initialized);

  nene_Vec2i window_size = nene_Core_get_window_size();
  return nene_Vec2_from_vec2i(nene_Vec2i_scale(window_size, 0.5f));
}

nene_Vec2 nene_Core_screen_point_to_world_pos(nene_Vec2 point) {
  SDL_assert(_nene_initialized);
  
  nene_Vec2 diff = nene_Vec2_sub(point, nene_Core_get_screen_center());
  diff.y = -diff.y;
  return diff;
}

nene_Vec2 nene_Core_world_pos_to_screen_point(nene_Vec2 pos) {
  SDL_assert(_nene_initialized);

  pos.y = -pos.y;
  return nene_Vec2_add(nene_Core_get_screen_center(), pos);
}

bool nene_Core_set_render_blend_mode(SDL_BlendMode blend_mode) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  if (SDL_SetRenderDrawBlendMode(instance->renderer, blend_mode) != 0) {
    nene_impl_Core_warn("Nene.Core.set_render_blend_mode", "could not set the  rendering blend mode");
    return false;
  }

  return true;
}

bool nene_Core_set_render_draw_color(nene_Color color) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  if (SDL_SetRenderDrawColor(instance->renderer, color.r, color.g, color.b, color.a) != 0) {
    nene_impl_Core_warn("Nene.Core.set_render_draw_color", "could not set rendering color");
    return false;
  }

  return true;
}

bool nene_Core_render_clear(nene_Color color) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  nene_Core_set_render_draw_color(color);

  if (SDL_RenderClear(instance->renderer) != 0) {
    nene_impl_Core_warn("Nene.Core.render_clear", "could not clear the rendering target");
    return false;
  }

  return true;
}

bool nene_Core_render_draw_line(nene_Vec2 origin, nene_Vec2 ending, nene_Color color) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  const nene_Vec2i screen_origin = nene_Vec2_to_vec2i(nene_Core_world_pos_to_screen_point(origin));
  const nene_Vec2i screen_destination = nene_Vec2_to_vec2i(nene_Core_world_pos_to_screen_point(ending));

  nene_Core_set_render_draw_color(color);

  if (SDL_RenderDrawLine(instance->renderer, screen_origin.x, screen_origin.y, screen_destination.x, screen_destination.y) != 0) {
    nene_impl_Core_warn("Nene.Core.render_draw_line", "could not draw a line");
    return false;
  }

  return true;
}

bool nene_Core_render_draw_rect(nene_Rect rect, bool only_lines, nene_Color color) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  rect.pos = nene_Vec2_to_vec2i(
    nene_Core_world_pos_to_screen_point(nene_Vec2_from_vec2i(rect.pos))
  );

  rect = nene_Rect_add_pos(rect, nene_Vec2_to_vec2i(instance->render_offset));

  SDL_Rect sdl_rect = nene_Rect_to_raw(rect);

  nene_Core_set_render_draw_color(color);

  if (only_lines) {
    if (SDL_RenderDrawRect(instance->renderer, &sdl_rect) != 0) {
      nene_impl_Core_warn("Nene.Core.render_draw_rect", "could not draw a rectangle");
      return false;
    }
  }
  else {
    if (SDL_RenderFillRect(instance->renderer, &sdl_rect) != 0) {
      nene_impl_Core_warn("Nene.Core.render_draw_rect", "could not draw a filled rectangle");
      return false;
    }
  }

  return true;
}

void nene_Core_render_present(void) {
  SDL_assert(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();
  SDL_RenderPresent(instance->renderer);
}

bool nene_Core_init(const char title[], uint16_t width, uint16_t height, SDL_WindowFlags flags) {
  SDL_assert_release(!_nene_initialized);
  SDL_assert(width > 0);
  SDL_assert(height > 0);

  if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_GAMECONTROLLER) != 0) {
    nene_impl_Core_warn("Nene.Core.init", "could not initialize SDL");
    return false;
  }

  const int img_flags = IMG_INIT_PNG;

  if ((IMG_Init(img_flags) & img_flags) != img_flags) {
    nene_impl_Core_warn("Nene.Core.init", "could not initialize SDL Image library");
    return false;
  }

  if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, 2, 2048) != 0) {
    nene_impl_Core_warn("Nene.Core.init", "could not initialize SDL mixer library");
    return false;
  }

  const int mix_flags = MIX_INIT_OGG;

  if ((Mix_Init(mix_flags) & mix_flags) != mix_flags) {
    nene_impl_Core_warn("Nene.Core.init", "could not initialize SDL mixer library");
    return false;
  }

  if (TTF_Init() != 0) {
    nene_impl_Core_warn("Nene.Core.init", "could not initialize SDL ttf library");
    return false;
  }

  SDL_Window *window = SDL_CreateWindow(title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, flags);

  if (!window) {
    nene_impl_Core_warn("Nene.Core.init", "could not create the window");
    return false;
  }

  SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (!renderer) {
    nene_impl_Core_warn("Nene.Core.init", "could not create the 2D renderer");
    return false;
  }

  // nene it's fully initialized :)
  _nene_initialized = true;

  _nene_instance = (nene_Core){
    .delta_time = (1.0f / 60.0f), // fake delta time, this is done because 0s delta time it's problematic.
    .window = window,
    .renderer = renderer,
  };

  nene_Core_set_render_draw_color(nene_Color_white);
  nene_Core_set_render_blend_mode(SDL_BLENDMODE_BLEND);

  return true;
}

bool nene_Core_should_quit(void) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();
  return instance->quit;
}

void nene_Core_terminate(void) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  _nene_initialized = false;

  for (int i = 0; i < NENE_CFG_GAMEPAD_COUNT; ++i) {
    if (instance->gamepads_state[i].active) {
      SDL_GameControllerClose(instance->gamepads_state[i].game_controller);
    }
  }

  SDL_DestroyRenderer(instance->renderer);
  SDL_DestroyWindow(instance->window);

  TTF_Quit();
  
  Mix_Quit();
  Mix_CloseAudio();

  IMG_Quit();

  SDL_Quit();

  _nene_instance = (nene_Core){ .quit = true };
}

