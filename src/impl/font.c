/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/font.h"

TTF_Font *nene_impl_Font_get_raw(nene_Font font) {
	SDL_assert_release(font.raw != NULL);
	return font.raw;
}
