/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include <stdlib.h>
#include "nene/core.h"
#include "nene/collision.h"

int main(int argc, char *argv[]) {
  bool ok = nene_Core_init("collision test", 1280, 720, SDL_WINDOW_SHOWN);
  if (!ok) {
    return EXIT_FAILURE;
  }

  // nene_Rectf rect  = { .size = { .x = 40, .y = 260 } };
  nene_Rectf rect  = { .size = { .x = 4, .y = 26 } };

  #define SEGMENTS_COUNT 4

  nene_Segment segments[SEGMENTS_COUNT] = {
    { { -500, 200 }, { -400, 150 } },
    { { -300, -130 }, { -120, -100 } },
    { { -40, -030 }, { 220, 200 } },
    { { 200, -10 }, { 400,  -300 } },
  };

  do {
    nene_Core_update();

    nene_Core_render_clear(nene_Color_bg());

    nene_Vec2 delta = nene_Vec2_zero();

    if (nene_Core_is_scancode_held(SDL_SCANCODE_W)) {
      delta.y += 1;
    }
    if (nene_Core_is_scancode_held(SDL_SCANCODE_S)) {
      delta.y -= 1;
    }
    if (nene_Core_is_scancode_held(SDL_SCANCODE_A)) {
      delta.x -= 1;
    }
    if (nene_Core_is_scancode_held(SDL_SCANCODE_D)) {
      delta.x += 1;
    }

    rect.pos = nene_Vec2_add(rect.pos, delta);

    if (!nene_Core_is_scancode_held(SDL_SCANCODE_SPACE)) {
      for (int i = 0; i < SEGMENTS_COUNT; ++i) {
        nene_Collision collision = nene_Collision_rectf_with_segment(rect, segments[i], delta);
        if (collision.collided) {
          rect.pos = nene_Vec2_add(rect.pos, collision.delta);
        }
      }
    }

    nene_Color color = nene_Core_is_scancode_held(SDL_SCANCODE_SPACE) ? nene_Color_cyan(): nene_Color_white();

    nene_Core_render_draw_rect(nene_Rectf_to_rect(rect), true, color, true);

    for (int i = 0; i < SEGMENTS_COUNT; ++i) {
      nene_Core_render_draw_line(segments[i].origin, segments[i].ending, nene_Color_black(), true);
    }

    nene_Core_render_present();
  } while (!nene_Core_should_quit());

  #undef SEGMENTS_COUNT
  
  nene_Core_terminate();
  return EXIT_SUCCESS;
}
