/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_SOUND_H
#define NENE_SOUND_H

#include <stdint.h>
#include <stdbool.h>
#include "SDL_mixer.h"

typedef struct nene_Sound {
  Mix_Chunk *raw;
  int16_t channel;
} nene_Sound;

typedef struct nene_SoundCreation {
  bool created;
  nene_Sound sound;
} nene_SoundCreation;

nene_Sound nene_Sound_zero(void);

nene_Sound nene_Sound_copy(nene_Sound *sound);

Mix_Chunk *nene_Sound_get_raw(nene_Sound sound);

nene_SoundCreation nene_Sound_load(const char *filepath);

bool nene_Sound_play(nene_Sound *sound, int16_t loops);

bool nene_Sound_halt(nene_Sound *sound);

bool nene_Sound_halt_all(void);

float nene_Sound_set_volume(nene_Sound sound, float volume);

void nene_Sound_destroy(nene_Sound *sound);

#endif // NENE_SOUND_H

