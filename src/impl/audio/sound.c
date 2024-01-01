/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/audio/sound.h"
#include "SDL_assert.h"

Mix_Chunk *nene_impl_Sound_get_raw(nene_Sound sound) {
	SDL_assert(sound.raw != NULL);
	return sound.raw;
}
