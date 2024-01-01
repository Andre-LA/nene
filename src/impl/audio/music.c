/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/audio/music.h"
#include "SDL_assert.h"

Mix_Music *nene_impl_Music_get_raw(nene_Music music) {
	SDL_assert(music.raw != NULL);
	return music.raw;
}
