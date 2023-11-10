/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_COLOR_H
#define NENE_COLOR_H

#include <stdint.h>
#include <stdbool.h>

/// The color structure, it's a rgba color strucuture using one byte each
typedef struct nene_Color {
	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
} nene_Color;

/// Returns a zero-initialized color, that's a transparent black.
nene_Color nene_Color_zero(void);

/// Returns a copy of the color.
nene_Color nene_Color_copy(nene_Color *color);

/// The "black" color of nene's palette (`{ .r = 0x00, .g = 0x00, .b = 0x00, .a = 0xff }`)
nene_Color nene_Color_black(void);
/// The "white" color of nene's palette (`{ .r = 0xff, .g = 0xff, .b = 0xff, .a = 0xff }`)
nene_Color nene_Color_white(void);
/// The "red" color of nene's palette (`{ .r = 0xff, .g = 0x00, .b = 0x00, .a = 0xff }`)
nene_Color nene_Color_red(void);
/// The "green" color of nene's palette (`{ .r = 0x00, .g = 0xff, .b = 0x00, .a = 0xff }`)
nene_Color nene_Color_green(void);
/// The "blue" color of nene's palette (`{ .r = 0x00, .g = 0x00, .b = 0xff, .a = 0xff }`)
nene_Color nene_Color_blue(void);
/// The "yellow" color of nene's palette (`{ .r = 0xfc, .g = 0xea, .b = 0x20, .a = 0xff }`)
nene_Color nene_Color_yellow(void);
/// The "cyan" color of nene's palette (`{ .r = 0x00, .g = 0xff, .b = 0xff, .a = 0xff }`)
nene_Color nene_Color_cyan(void);
/// The "bg" color of nene's palette (`{ .r = 0x69, .g = 0x46, .b = 0x6b, .a = 0xff }`)
nene_Color nene_Color_bg(void);

bool nene_Color_equals(nene_Color a, nene_Color b);

#endif // NENE_COLOR_H
