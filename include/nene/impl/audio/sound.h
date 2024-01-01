/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_IMPL_SOUND_H
#define NENE_IMPL_SOUND_H

#include "nene/audio/sound.h"
#include "SDL_mixer.h"

Mix_Chunk *nene_impl_Sound_get_raw(nene_Sound sound);

#endif // NENE_IMPL_SOUND_H
