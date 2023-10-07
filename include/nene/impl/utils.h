/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

// ImplUtils shouldn't be included for bindings!

#ifndef NENE_IMPL_UTILS_H
#define NENE_IMPL_UTILS_H

#include "SDL.h"

#include "nene/color.h"

SDL_Color ImplUtils_color_to_sdlcolor(nene_Color);

#endif
