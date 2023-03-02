/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_COLOR_H
#define NENE_COLOR_H

#include <stdbool.h>
#include <SDL2/SDL.h>

/// Alias to SDL_Color
typedef SDL_Color nene_Color;

extern const nene_Color nene_Color_black;
extern const nene_Color nene_Color_white;
extern const nene_Color nene_Color_red;
extern const nene_Color nene_Color_green;
extern const nene_Color nene_Color_blue;
extern const nene_Color nene_Color_yellow; 
extern const nene_Color nene_Color_cyan;
extern const nene_Color nene_Color_bg;

bool nene_Color_equals(nene_Color a, nene_Color b);

#endif // NENE_COLOR_H
