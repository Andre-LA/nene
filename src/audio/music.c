/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/audio/music.h"
#include "SDL2/SDL.h"

Mix_Music *nene_Music_get_raw(nene_Music music) {
  SDL_assert(music.raw != NULL);
  return music.raw;
}

nene_MusicCreation nene_Music_load(const char *filepath) {
  SDL_assert(filepath != NULL);

  if (filepath == NULL) {
    return (nene_MusicCreation){
      .created = false,
    };
  }

  Mix_Music *raw_music = Mix_LoadMUS(filepath);

  if (raw_music == NULL) {
    return (nene_MusicCreation){
      .created = false,
    };
  }

  return (nene_MusicCreation){
    .created = true,
    .music = (nene_Music){
      .raw = raw_music,
    }
  };
}

bool nene_Music_play(nene_Music music, int16_t loops) {
  SDL_assert(music.raw != NULL);

  if (music.raw == NULL) {
    return false;
  }

  if (Mix_PlayMusic(nene_Music_get_raw(music), loops) != 0) {
    return false;
  }

  return true;
}

void nene_Music_stop(void) {
  Mix_HaltMusic();
}

float nene_Music_set_volume(float volume) {
  SDL_assert(volume >= 0.0f && volume <= 1.0f);
  int scaled_vol = (int)(volume * MIX_MAX_VOLUME);

  // clamp(scaled_vol, 0, MIX_MAX_VOLUME)
  scaled_vol = scaled_vol < 0 ? 0 : scaled_vol;
  scaled_vol = scaled_vol > MIX_MAX_VOLUME ? MIX_MAX_VOLUME : scaled_vol;

  int16_t prev_volume = Mix_VolumeMusic(scaled_vol);

  return (float)prev_volume / MIX_MAX_VOLUME;
}

void nene_Music_destroy(nene_Music *music) {
  SDL_assert(music != NULL);
  SDL_assert(music->raw != NULL);

  if (music == NULL || music->raw == NULL) {
    return;
  }

  Mix_FreeMusic(nene_Music_get_raw(*music));

  *music = (nene_Music){ .raw = NULL };
}
