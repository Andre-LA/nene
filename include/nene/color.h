/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_COLOR_H
#define NENE_COLOR_H

#include <stdbool.h>
#include <SDL.h>

/// Alias to SDL_color
typedef SDL_Color nene_Color;

/// The "black" color of nene's palette (`{ .r = 0x00, .g = 0x00, .b = 0x00, .a = 0xff }`)
extern const nene_Color nene_Color_black;
/// The "white" color of nene's palette (`{ .r = 0xff, .g = 0xff, .b = 0xff, .a = 0xff }`)
extern const nene_Color nene_Color_white;
/// The "red" color of nene's palette (`{ .r = 0xff, .g = 0x00, .b = 0x00, .a = 0xff }`)
extern const nene_Color nene_Color_red;
/// The "green" color of nene's palette (`{ .r = 0x00, .g = 0xff, .b = 0x00, .a = 0xff }`)
extern const nene_Color nene_Color_green;
/// The "blue" color of nene's palette (`{ .r = 0x00, .g = 0x00, .b = 0xff, .a = 0xff }`)
extern const nene_Color nene_Color_blue;
/// The "yellow" color of nene's palette (`{ .r = 0xfc, .g = 0xea, .b = 0x20, .a = 0xff }`)
extern const nene_Color nene_Color_yellow;
/// The "cyan" color of nene's palette (`{ .r = 0x00, .g = 0xff, .b = 0xff, .a = 0xff }`)
extern const nene_Color nene_Color_cyan;
/// The "bg" color of nene's palette (`{ .r = 0x69, .g = 0x46, .b = 0x6b, .a = 0xff }`)
extern const nene_Color nene_Color_bg;

bool nene_Color_equals(nene_Color a, nene_Color b);

#endif // NENE_COLOR_H
