/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_RECT_H
#define NENE_RECT_H

#include <stdbool.h>
#include <SDL2/SDL.h>

#include "nene/math/vec2i.h"
#include "nene/math/vec2.h"

typedef struct nene_Rect {
  nene_Vec2i pos;
  nene_Vec2i size;
} nene_Rect;

nene_Rect nene_Rect_zero(void);
SDL_Rect nene_Rect_to_raw(nene_Rect rect);
bool nene_Rect_equals(nene_Rect a, nene_Rect b);
nene_Rect nene_Rect_add_pos(nene_Rect rect, nene_Vec2i pos);
nene_Rect nene_Rect_add_size(nene_Rect rect, nene_Vec2i size);
nene_Vec2i nene_Rect_get_center(nene_Rect rect);

#endif // NENE_RECT_H
