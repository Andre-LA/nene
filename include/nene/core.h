/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_CORE_H
#define NENE_CORE_H

#include <stdbool.h>
#include <SDL.h>
#include "nene/config.h"
#include "nene/math/vec2.h"
#include "nene/math/vec2i.h"
#include "nene/math/rect.h"
#include "nene/color.h"

/// The gamepad state data structure.
typedef struct nene_GamepadState {
  bool active;
  SDL_GameController* game_controller;
  int joystick_id;
  uint32_t prev_buttons;
  uint32_t buttons;
} nene_GamepadState;

/// Alias to the return type of SDL_GetTicks64
typedef uint64_t nene_MilliTime;

/// The core data structure of Nene
typedef struct nene_Core {
  /// `true` when the application will quit, `false` otherwise.
  bool quit;
  /// time since initialization (in milliseconds).
  nene_MilliTime current_time;
  /// frame's delta time (in seconds), that is, how much time passed between previous and current frame.
  float delta_time;
  /// extra offset for rendering.
  nene_Vec2 render_offset;
  /// reference to the window created on initialization; using more than 1 window it's currently a non-goal for Nene.
  SDL_Window* window;
  /// reference to the window's renderer, created on initialization.
  SDL_Renderer* renderer;
  /// store the state of (keyboard) scancode keys in the current frame (`true` means "pressed").
  bool scancode_state[SDL_NUM_SCANCODES];
  /// the state of `scancode_state` on the previous frame.
  bool prev_scancode_state[SDL_NUM_SCANCODES];
  /// store the state of "NENE_CFG_GAMEPAD_COUNT" gamepads (by default, four), you can change this on config.h file.
  nene_GamepadState gamepads_state[NENE_CFG_GAMEPAD_COUNT];
  /// store the mouse position in screen space, relative to window origin (top-left corner).
  nene_Vec2 mouse_pos;  
  /// store the mouse relative motion.
  nene_Vec2 mouse_motion;
  /// store the mouse buttons state as a bitmask where each bit corresponds to a button (0b001 is left-button, 0b010 is middle-button, 0b100 is right-button)
  /// > Note: You can use `nene_Core_get_button` function to get a mouse button state more easily.
  uint32_t mouse_buttons;
  /// the state of `mouse_buttons` on the previous frame.
  uint32_t prev_mouse_buttons;
} nene_Core;

/// The main nene instance, this should never be modified externally, and don't make bindings for it.
/// Use `nene_Core_instance` instead.
extern nene_Core _nene_instance;

// Flag to check if nene it's properly initialized, also don't modify this externally, nor bind it.
extern bool _nene_initialized;

/// outputs an warning message to stderr stream.
void nene_Core_warn(const char fn[], const char msg[]);

/// Returns if nene is initialized.
bool nene_Core_is_initialized(void);

/// Returns the active nene instance, if nene isn't initialized, this will trigger an error.
nene_Core* nene_Core_instance(void);

/// Update's nene's state
void nene_Core_update(void);

bool nene_Core_is_scancode_held(SDL_Scancode scancode);

bool nene_Core_is_scancode_pressed(SDL_Scancode scancode);

bool nene_Core_is_scancode_released(SDL_Scancode scancode);

bool nene_Core_is_mouse_button_held(uint32_t mouse_button);

bool nene_Core_is_mouse_button_pressed(uint32_t mouse_button);

bool nene_Core_is_mouse_button_released(uint32_t mouse_button);

bool nene_Core_is_gamepad_button_held(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button);

bool nene_Core_is_gamepad_button_pressed(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button);

bool nene_Core_is_gamepad_button_released(uint8_t gamepad_index, SDL_GameControllerButton gamepad_button);

float nene_Core_get_gamepad_axis(uint8_t gamepad_index, SDL_GameControllerAxis gamepad_axis, float deadzone);

bool nene_Core_get_cursor_visibility(void);

bool nene_Core_set_cursor_visibility(bool visible);

nene_Vec2i nene_Core_get_window_size(void);

nene_Vec2 nene_Core_get_screen_center(void);

nene_Vec2 nene_Core_screen_point_to_world_pos(nene_Vec2 point);

nene_Vec2 nene_Core_world_pos_to_screen_point(nene_Vec2 pos);

bool nene_Core_set_render_draw_color(nene_Color color);

bool nene_Core_set_render_blend_mode(SDL_BlendMode blend_mode);

bool nene_Core_set_render_clip(nene_Rect clip_rect, bool clip_is_screenspace);

bool nene_Core_set_render_target(SDL_Texture *raw_target);

bool nene_Core_render_clear(nene_Color color);

bool nene_Core_render_draw_line(nene_Vec2 origin, nene_Vec2 ending, nene_Color color, bool is_world_pos);

bool nene_Core_render_draw_rect(nene_Rect rect, bool only_lines, nene_Color color, bool is_world_pos);

void nene_Core_render_present(void);

bool nene_Core_init(const char title[], uint16_t width, uint16_t height, SDL_WindowFlags flags);

bool nene_Core_should_quit(void);

void nene_Core_terminate(void);

#endif // NENE_CORE_H
