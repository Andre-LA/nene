/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

// ImplUtils shouldn't be included for bindings!

#include "nene/impl/utils.h"

SDL_Color ImplUtils_color_to_sdlcolor(nene_Color color) {
	return (SDL_Color){
		.r = color.r,
		.g = color.g,
		.b = color.b,
		.a = color.a,
	};
}
