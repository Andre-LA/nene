/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/math/rect.h"

SDL_Rect nene_impl_Rect_to_raw(nene_Rect rect) {
	return (SDL_Rect){
		.x = rect.pos.x,
		.y = rect.pos.y,
		.w = rect.size.x,
		.h = rect.size.y,
	};
}
