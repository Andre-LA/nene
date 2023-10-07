/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_RECTF_H
#define NENE_RECTF_H

#include <stdbool.h>
#include "SDL.h"

#include "nene/math/vec2.h"
#include "nene/math/rect.h"

typedef struct nene_Rectf {
  nene_Vec2 pos;
  nene_Vec2 size;
} nene_Rectf;

nene_Rectf nene_Rectf_zero(void);
nene_Rectf nene_Rectf_clone(nene_Rectf *rect);
SDL_FRect nene_Rectf_to_raw(nene_Rectf rect);
bool nene_Rectf_equals(nene_Rectf a, nene_Rectf b);
nene_Rectf nene_Rectf_add_pos(nene_Rectf rect, nene_Vec2 pos);
nene_Rectf nene_Rectf_add_size(nene_Rectf rect, nene_Vec2 size);
nene_Vec2 nene_Rectf_get_center(nene_Rectf rect);
nene_Rect nene_Rectf_to_rect(nene_Rectf rect);
nene_Rectf nene_Rectf_from_rect(nene_Rect rect);

#endif // NENE_RECTF_H
