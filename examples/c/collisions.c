/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

/*
you can compile this source code using a "simple" compiler command (clang example, on Fedora linux 39):
clang examples/c/collisions.c -o collisions -lnene -lSDL2 -lSDL2_mixer -lSDL2_ttf -lSDL2_image -lm -I libnene/include/ -I libnene/include/SDL2/ -L libnene/lib/ -L libnene/lib64 -Wl,-rpath="\$ORIGIN"/libnene/lib64

command explanation:
clang: it's clang
examples/c/collisions.c: we're compiling this source code
-o collisions: the output it's a "collisions" executable file
-lnene -lSDL2 -lSDL2_mixer -lSDL2_ttf -lSDL2_image -lm: we're linking to nene, all SDL2 libraries and the math library
-I libnene/include/ -I libnene/include/SDL2/: adding the include paths, otherwise the compiler can't find the headers of "#include" directives
-L libnene/lib/ -L libnene/lib64: adding the search path of binary libraries, on linux "lib" it's for Nene and "lib64" it's for SDL2 
-Wl,-rpath="\$ORIGIN"/libnene/lib64: SDL2 it's loaded at runtime (because they're shared libraries), this flags makes the executable to search these libraries on "$ORIGIN/libnene/lib64", "$ORIGIN" is the path relative to the exectuable.

You can also check the CMakeLists to see how to use CMake in this case, although CMake it's still an WIP work.
*/

#include <stdlib.h>
#include "nene/core.h"
#include "nene/collision.h"

int main(int argc, char *argv[]) {
  bool ok = nene_Core_init("collision test", 1280, 720, NENE_WINDOW_FLAG_SHOWN);
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

    if (nene_Core_is_scancode_held(NENE_SCANCODE_W)) {
      delta.y += 1;
    }
    if (nene_Core_is_scancode_held(NENE_SCANCODE_S)) {
      delta.y -= 1;
    }
    if (nene_Core_is_scancode_held(NENE_SCANCODE_A)) {
      delta.x -= 1;
    }
    if (nene_Core_is_scancode_held(NENE_SCANCODE_D)) {
      delta.x += 1;
    }

    rect.pos = nene_Vec2_add(rect.pos, delta);

    if (!nene_Core_is_scancode_held(NENE_SCANCODE_SPACE)) {
      for (int i = 0; i < SEGMENTS_COUNT; ++i) {
        nene_Collision collision = nene_Collision_rectf_with_segment(rect, segments[i], delta);
        if (collision.collided) {
          rect.pos = nene_Vec2_add(rect.pos, collision.delta);
        }
      }
    }

    nene_Color color = nene_Core_is_scancode_held(NENE_SCANCODE_SPACE) ? nene_Color_cyan(): nene_Color_white();

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
