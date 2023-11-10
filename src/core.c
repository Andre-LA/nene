/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include <math.h>
#include <stdio.h>
#include "SDL_events.h"
#include "SDL_image.h"
#include "SDL_ttf.h"
#include "SDL_mixer.h"
#include "nene/core.h"
#include "nene/math/vec2.h"

// define and empty-initialize global variables
nene_Core _nene_instance = { .quit = false };
bool _nene_initialized = false;

void nene_Core_warn(const char fn[], const char msg[]) {
  // TODO: evaluate if fprintf it's the most approriate warning function
  fprintf(stderr, "nene warning: %s: %s\n", fn, msg);
}

bool nene_Core_is_initialized(void) {
  return _nene_initialized;
}

nene_Core* nene_Core_instance(void) {
  SDL_assert_release(_nene_initialized);
  return &_nene_instance;
}

// static (private) functions
static int nene_impl_Core_get_controller_button_bit(SDL_GameControllerButton button) {
  // if cb_event->button it's greater than 30, that means that button_bit
  // will be "1" shifted beyond the 32 bits of "buttons".
  SDL_assert_paranoid(button < 30);
  return 1 << (button + 1);
}

static int nene_impl_Core_find_gamepad_idx_from_joystick_id(nene_Core *instance, SDL_JoystickID joystick_id) {
  for (int i = 0; i < NENE_CFG_GAMEPAD_COUNT; ++i) {
    if (instance->gamepads_state[i].joystick_id == joystick_id) {
      return i;
    }
  }
  return -1;
}

static int nene_impl_Core_find_next_available_gamepad(nene_Core *instance) {
  for (int i = 0; i < NENE_CFG_GAMEPAD_COUNT; ++i) {
    if (!instance->gamepads_state[i].active) {
      return i;
    }
  }
  
  return -1;
}

static void nene_impl_Core_update_controller_device_state(nene_Core *instance, SDL_ControllerDeviceEvent *cd_event) {
  switch (cd_event->type) {
    case SDL_CONTROLLERDEVICEADDED: {
      // `which` is the device index instead of instance id, thus we need to get the instance id first
      const SDL_JoystickID joystick_id = SDL_JoystickGetDeviceInstanceID(cd_event->which);
      if (joystick_id < 0) {
        return;
      }

      // Before opening the game controller, let's find gamepad free slot.
      const int gamepad_idx = nene_impl_Core_find_next_available_gamepad(instance);
      if (gamepad_idx < 0) {
        // TODO: ask developer to change NENE_CFG_GAMEPAD_COUNT
        return;
      }
      
      // "Open" the game controller.
      SDL_GameController *const game_controller = SDL_GameControllerOpen(joystick_id);
      if (game_controller == NULL) {
        return;
      }

      // Just making really sure that there's no out of bounds access here, such thing
      // would be a bug, please report an issue if this assertion fails.
      SDL_assert_release(gamepad_idx < NENE_CFG_GAMEPAD_COUNT);

      nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_idx];
      
      // check if the gamepad isn't really active, otherwise would be a logic bug.
      SDL_assert_paranoid(!gamepad_state->active);

      // Finally register this gamepad.
      *gamepad_state = (nene_GamepadState){
        .active = true,
        .game_controller = game_controller,
        .joystick_id = joystick_id,
      };
      break;
    }
    case SDL_CONTROLLERDEVICEREMOVED: {
      const int gamepad_idx = nene_impl_Core_find_gamepad_idx_from_joystick_id(instance, cd_event->which);
      // gamepad state not found.
      if (gamepad_idx < 0) {
        return;
      }

      // Making sure gamepad_idx it's safe;
      // a failure of this assertion it's a bug, please report an issue if this happens.
      SDL_assert_release(gamepad_idx < NENE_CFG_GAMEPAD_COUNT);

      nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_idx];

      // check if the algorithm it's okay.
      SDL_assert_paranoid(gamepad_state->active);
      SDL_assert_paranoid(gamepad_state->joystick_id == cd_event->which);

      SDL_GameControllerClose(gamepad_state->game_controller);

      *gamepad_state = (nene_GamepadState){
        .active = false, 
      };
      break;
    }
  }
}

static void nene_impl_Core_update_controller_button_state(nene_Core *instance, SDL_ControllerButtonEvent *cb_event) {
  const int gamepad_idx = nene_impl_Core_find_gamepad_idx_from_joystick_id(instance, cb_event->which);
  if (gamepad_idx < 0) {
    return;
  }
  
  // Making sure gamepad_idx it's safe;
  // a failure of this assertion it's a bug, please report an issue if this happens.
  SDL_assert_release(gamepad_idx < NENE_CFG_GAMEPAD_COUNT);

  nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_idx];

  // check if the algorithm it's okay.
  SDL_assert_paranoid(gamepad_state->active);
  SDL_assert_paranoid(gamepad_state->joystick_id == cb_event->which);

  const uint32_t button_bit = nene_impl_Core_get_controller_button_bit(cb_event->button);

  gamepad_state->buttons = (
    cb_event->state == SDL_PRESSED
      ? gamepad_state->buttons | button_bit
      : gamepad_state->buttons ^ button_bit
  );
}

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
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  instance->mouse_motion = nene_Vec2_zero();

  // record previous frame scancode state.
  for (int i = 0; i < SDL_NUM_SCANCODES; ++i) {
    instance->prev_scancode_state[i] = instance->scancode_state[i];
  }

  // record previous frame mouse buttons.
  instance->prev_mouse_buttons = instance->mouse_buttons;

  // record previous frame gamepads buttons.
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
      case SDL_CONTROLLERDEVICEADDED:    // [[fallthrough]];
      case SDL_CONTROLLERDEVICEREMAPPED: // [[fallthrough]];
      case SDL_CONTROLLERDEVICEREMOVED: {
        nene_impl_Core_update_controller_device_state(instance, &event.cdevice);
        break;
      }
      case SDL_CONTROLLERBUTTONDOWN: // [[fallthrough]];
      case SDL_CONTROLLERBUTTONUP: {
        nene_impl_Core_update_controller_button_state(instance, &event.cbutton);
        break;
      }
      case SDL_KEYDOWN: // [[fallthrough]];
      case SDL_KEYUP: {
        nene_impl_Core_update_keyboard_state(instance, &event.key);
        break;
      }
      case SDL_MOUSEMOTION: {
        nene_impl_Core_update_mouse_motion_state(instance, &event.motion);
        break;
      }
      case SDL_MOUSEBUTTONDOWN: // [[fallthrough]];
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

bool nene_Core_is_scancode_held(SDL_Scancode scancode) {
  SDL_assert_release(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return instance->scancode_state[scancode];
}

bool nene_Core_is_scancode_pressed(SDL_Scancode scancode) {
  SDL_assert_release(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return instance->scancode_state[scancode] && !instance->prev_scancode_state[scancode];
}

bool nene_Core_is_scancode_released(SDL_Scancode scancode) {
  SDL_assert_release(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return !instance->scancode_state[scancode] && instance->prev_scancode_state[scancode];
}

bool nene_Core_is_mouse_button_held(uint32_t mouse_button) {
  SDL_assert_release(_nene_initialized);
  SDL_assert(mouse_button > 0);
  
  nene_Core *const instance = nene_Core_instance();
  return (instance->mouse_buttons & SDL_BUTTON(mouse_button)) != 0;
}

bool nene_Core_is_mouse_button_pressed(uint32_t mouse_button) {
  SDL_assert_release(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return (
    (instance->mouse_buttons & SDL_BUTTON(mouse_button)) != 0 &&
    (instance->prev_mouse_buttons & SDL_BUTTON(mouse_button)) == 0
  );
}

bool nene_Core_is_mouse_button_released(uint32_t mouse_button) {
  SDL_assert_release(_nene_initialized);
  
  nene_Core *const instance = nene_Core_instance();
  return (
    (instance->mouse_buttons & SDL_BUTTON(mouse_button)) == 0 &&
    (instance->prev_mouse_buttons & SDL_BUTTON(mouse_button)) != 0
  );
}

bool nene_Core_is_gamepad_button_held(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button) {
  // TODO: it would be nice to remove the repetetion between "held", "pressed" and "released" variants
  //       of this function.
  SDL_assert_release(_nene_initialized);
  SDL_assert(gamepad_index < NENE_CFG_GAMEPAD_COUNT);

  if (gamepad_index >= NENE_CFG_GAMEPAD_COUNT) {
    return false;
  }

  nene_Core *const instance = nene_Core_instance();

  // Making sure gamepad_index it's safe;
  // a failure of this assertion it's a bug, please report an issue if this happens.
  SDL_assert_release(gamepad_index < NENE_CFG_GAMEPAD_COUNT);
  const nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_index];

  if (!gamepad_state->active) {
    return false;
  }

  const uint32_t button_bit = nene_impl_Core_get_controller_button_bit(gamepad_button);

  return (gamepad_state->buttons & button_bit) != 0;
}

bool nene_Core_is_gamepad_button_pressed(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button) {
  SDL_assert_release(_nene_initialized);
  SDL_assert(gamepad_index < NENE_CFG_GAMEPAD_COUNT);

  if (gamepad_index >= NENE_CFG_GAMEPAD_COUNT) {
    return false;
  }

  nene_Core *const instance = nene_Core_instance();

  // Making sure gamepad_index it's safe;
  // a failure of this assertion it's a bug, please report an issue if this happens.
  SDL_assert_release(gamepad_index < NENE_CFG_GAMEPAD_COUNT);
  const nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_index];

  if (!gamepad_state->active) {
    return false;
  }

  const uint32_t button_bit = nene_impl_Core_get_controller_button_bit(gamepad_button);

  return (
    (gamepad_state->buttons & button_bit) != 0 &&
    (gamepad_state->prev_buttons & button_bit) == 0
  );
}

bool nene_Core_is_gamepad_button_released(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button) {
  SDL_assert_release(_nene_initialized);
  SDL_assert(gamepad_index < NENE_CFG_GAMEPAD_COUNT);

  if (gamepad_index >= NENE_CFG_GAMEPAD_COUNT) {
    return false;
  }

  nene_Core *const instance = nene_Core_instance();

  // Making sure gamepad_index it's safe;
  // a failure of this assertion it's a bug, please report an issue if this happens.
  SDL_assert_release(gamepad_index < NENE_CFG_GAMEPAD_COUNT);
  const nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_index];

  if (!gamepad_state->active) {
    return false;
  }

  const uint32_t button_bit = nene_impl_Core_get_controller_button_bit(gamepad_button);

  return (
    (gamepad_state->buttons & button_bit) == 0 &&
    (gamepad_state->prev_buttons & button_bit) != 0
  );
}

float nene_Core_get_gamepad_axis(uint8_t gamepad_index, SDL_GameControllerAxis gamepad_axis, float deadzone) {
  SDL_assert_release(_nene_initialized);
  SDL_assert(gamepad_index < NENE_CFG_GAMEPAD_COUNT);

  if (gamepad_index >= NENE_CFG_GAMEPAD_COUNT) {
    return false;
  }

  const nene_Core *const instance = nene_Core_instance();

  // Making sure gamepad_index it's safe;
  // a failure of this assertion it's a bug, please report an issue if this happens.
  SDL_assert_release(gamepad_index < NENE_CFG_GAMEPAD_COUNT);
  const nene_GamepadState *const gamepad_state = &instance->gamepads_state[gamepad_index];
  
  if (!gamepad_state->active) {
    return false;
  }

  const int16_t i_axis_value = SDL_GameControllerGetAxis(gamepad_state->game_controller, gamepad_axis);
  float axis_limit = i_axis_value > 0 ? SDL_JOYSTICK_AXIS_MAX : -SDL_JOYSTICK_AXIS_MIN;
  float axis_value = i_axis_value / axis_limit;
  
  // if deadzone <= 0.0001, then set to a default deadzone
  if (deadzone <= 0.0001f) {
    deadzone = NENE_CFG_GAMEPAD_DEADZONE;
  }

  return fabsf(axis_value) < deadzone ? 0.0f : axis_value;
}

bool nene_Core_get_cursor_visibility(void) {
  return SDL_ShowCursor(SDL_QUERY) == SDL_ENABLE;
}

bool nene_Core_set_cursor_visibility(bool visible) {
  if (SDL_ShowCursor(visible ? SDL_ENABLE : SDL_DISABLE) < 0) {
    return false;
  }
  return true;
}

float nene_Core_get_delta_time(void) {
  SDL_assert_release(_nene_initialized);

  const nene_Core *const instance = nene_Core_instance();
  return instance->delta_time;
}

nene_Vec2i nene_Core_get_window_size(void) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  int sx, sy;
  SDL_GetWindowSize(instance->window, &sx, &sy);

  return (nene_Vec2i){ .x = sx, .y = sy };
}

nene_Vec2 nene_Core_get_screen_center(void) {
  SDL_assert_release(_nene_initialized);

  nene_Vec2i screen_size = nene_Vec2i_zero();

  // first, try to get render target and query it's texture size, then set it as screen size,
  // otherwise (if no target it's being used or query failure), use the window size as
  // screen size.

  nene_Core *const instance = nene_Core_instance();
  SDL_Texture *raw_target = SDL_GetRenderTarget(instance->renderer);
  
  if (raw_target == NULL) {
    screen_size = nene_Core_get_window_size();
  }
  else {
    int w = 0, h = 0;
    if (SDL_QueryTexture(raw_target, NULL, NULL, &w, &h) != 0) {
      nene_Core_warn("Nene.Core.get_screen_center", "could not query target texture");
      screen_size = nene_Core_get_window_size();
    }
    else {
      screen_size = (nene_Vec2i){ .x = w, .y = h };
    }
  }

  return nene_Vec2_from_vec2i(nene_Vec2i_scale(screen_size, 0.5f));
}

nene_Vec2 nene_Core_get_render_offset(void) {
  SDL_assert_release(_nene_initialized);

  const nene_Core *const instance = nene_Core_instance();

  return instance->render_offset;
}

nene_Vec2 nene_Core_screen_point_to_world_pos(nene_Vec2 point) {
  SDL_assert_release(_nene_initialized);
  
  nene_Vec2 diff = nene_Vec2_sub(point, nene_Core_get_screen_center());
  diff.y = -diff.y;
  return diff;
}

nene_Vec2 nene_Core_world_pos_to_screen_point(nene_Vec2 pos) {
  SDL_assert_release(_nene_initialized);

  pos.y = -pos.y;
  return nene_Vec2_add(nene_Core_get_screen_center(), pos);
}

bool nene_Core_set_render_draw_color(nene_Color color) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  if (SDL_SetRenderDrawColor(instance->renderer, color.r, color.g, color.b, color.a) != 0) {
    nene_Core_warn("Nene.Core.set_render_draw_color", "could not set rendering color");
    return false;
  }

  return true;
}

bool nene_Core_set_render_blend_mode(SDL_BlendMode blend_mode) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  if (SDL_SetRenderDrawBlendMode(instance->renderer, blend_mode) != 0) {
    nene_Core_warn("Nene.Core.set_render_blend_mode", "could not set the  rendering blend mode");
    return false;
  }

  return true;
}

bool nene_Core_set_render_clip(nene_Rect clip_rect, bool clip_is_screenspace){
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  SDL_Rect raw_rect = {.x = 0 };
  SDL_Rect *ptr_raw_clip_rect = NULL;

  if (!nene_Rect_equals(clip_rect, nene_Rect_zero())) {
    if (!clip_is_screenspace) {
      clip_rect.pos = nene_Vec2_to_vec2i(
        nene_Core_world_pos_to_screen_point( nene_Vec2_from_vec2i(clip_rect.pos) )
      );
    }
    raw_rect = nene_Rect_to_raw(clip_rect);
    ptr_raw_clip_rect = &raw_rect;
  }

  if (SDL_RenderSetClipRect(instance->renderer, ptr_raw_clip_rect) != 0) {
    nene_Core_warn("Nene.set_render_clip", "could not set the rendering clip rectangle");
    return false;
  }

  return true;
}

bool nene_Core_set_render_target(SDL_Texture *raw_target) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  bool can_use_render_target = true; // TODO;

  if (!can_use_render_target) {
    return false;
  }

  if (SDL_SetRenderTarget(instance->renderer, raw_target) != 0) {
    return false;
  }

  return true;
}

void nene_Core_set_render_offset(nene_Vec2 render_offset) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  instance->render_offset = render_offset;
}

bool nene_Core_render_clear(nene_Color color) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  nene_Core_set_render_draw_color(color);

  if (SDL_RenderClear(instance->renderer) != 0) {
    nene_Core_warn("Nene.Core.render_clear", "could not clear the rendering target");
    return false;
  }

  return true;
}

bool nene_Core_render_draw_line(nene_Vec2 origin, nene_Vec2 ending, nene_Color color, bool is_world_pos) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();

  if (is_world_pos) {
    origin = nene_Core_world_pos_to_screen_point(origin);
    ending = nene_Core_world_pos_to_screen_point(ending);
  }

  origin = nene_Vec2_add(origin, instance->render_offset);
  ending = nene_Vec2_add(ending, instance->render_offset);

  const nene_Vec2i screen_origin = nene_Vec2_to_vec2i(origin);
  const nene_Vec2i screen_destination = nene_Vec2_to_vec2i(ending);

  nene_Core_set_render_draw_color(color);

  if (SDL_RenderDrawLine(instance->renderer, screen_origin.x, screen_origin.y, screen_destination.x, screen_destination.y) != 0) {
    nene_Core_warn("Nene.Core.render_draw_line", "could not draw a line");
    return false;
  }

  return true;
}

bool nene_Core_render_draw_rect(nene_Rect rect, bool only_lines, nene_Color color, bool is_world_pos) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();
  
  if (is_world_pos) {
    rect.pos = nene_Vec2_to_vec2i(
      nene_Core_world_pos_to_screen_point(nene_Vec2_from_vec2i(rect.pos))
    );
  }

  rect = nene_Rect_add_pos(rect, nene_Vec2_to_vec2i(instance->render_offset));

  SDL_Rect sdl_rect = nene_Rect_to_raw(rect);

  nene_Core_set_render_draw_color(color);

  if (only_lines) {
    if (SDL_RenderDrawRect(instance->renderer, &sdl_rect) != 0) {
      nene_Core_warn("Nene.Core.render_draw_rect", "could not draw a rectangle");
      return false;
    }
  }
  else {
    if (SDL_RenderFillRect(instance->renderer, &sdl_rect) != 0) {
      nene_Core_warn("Nene.Core.render_draw_rect", "could not draw a filled rectangle");
      return false;
    }
  }

  return true;
}

void nene_Core_render_present(void) {
  SDL_assert_release(_nene_initialized);

  nene_Core *const instance = nene_Core_instance();
  SDL_RenderPresent(instance->renderer);
}

bool nene_Core_init(const char title[], uint16_t width, uint16_t height, SDL_WindowFlags flags) {
  SDL_assert_release(!_nene_initialized);
  SDL_assert(width > 0);
  SDL_assert(height > 0);

  if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_GAMECONTROLLER) != 0) {
    nene_Core_warn("Nene.Core.init", "could not initialize SDL");
    return false;
  }

  const int img_flags = IMG_INIT_PNG;

  if ((IMG_Init(img_flags) & img_flags) != img_flags) {
    nene_Core_warn("Nene.Core.init", "could not initialize SDL Image library");
    return false;
  }

  if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, 2, 2048) != 0) {
    nene_Core_warn("Nene.Core.init", "could not initialize SDL mixer library");
    return false;
  }

  const int mix_flags = MIX_INIT_OGG;

  if ((Mix_Init(mix_flags) & mix_flags) != mix_flags) {
    nene_Core_warn("Nene.Core.init", "could not initialize SDL mixer library");
    return false;
  }

  if (TTF_Init() != 0) {
    nene_Core_warn("Nene.Core.init", "could not initialize SDL ttf library");
    return false;
  }

  SDL_Window *window = SDL_CreateWindow(title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, flags);

  if (!window) {
    nene_Core_warn("Nene.Core.init", "could not create the window");
    return false;
  }

  SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (!renderer) {
    nene_Core_warn("Nene.Core.init", "could not create the 2D renderer");
    return false;
  }

  // nene it's fully initialized :)
  _nene_initialized = true;

  _nene_instance = (nene_Core){
    .delta_time = (1.0f / 60.0f), // fake delta time, this is done because 0s delta time it's problematic.
    .window = window,
    .renderer = renderer,
  };

  nene_Core_set_render_draw_color(nene_Color_white());
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
