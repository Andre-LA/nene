/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_MUSIC_H
#define NENE_MUSIC_H

#include <stdbool.h>
#include <stdint.h>
#include "SDL_mixer.h"

typedef struct nene_Music {
  Mix_Music *raw;
} nene_Music;

typedef struct nene_MusicCreation {
  bool created;
  nene_Music music;
} nene_MusicCreation;

Mix_Music *nene_Music_get_raw(nene_Music music);

nene_MusicCreation nene_Music_load(const char *filepath);

bool nene_Music_play(nene_Music music, int16_t loops);

void nene_Music_stop(void);

float nene_Music_set_volume(float volume);

void nene_Music_destroy(nene_Music *music);

#endif // NENE_MUSIC_H

