/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/math/rectf.h"

SDL_FRect nene_impl_Rectf_to_raw(nene_Rectf rect) {
	return (SDL_FRect){
		.x = rect.pos.x,
		.y = rect.pos.y,
		.w = rect.size.x,
		.h = rect.size.y,
	};
}
