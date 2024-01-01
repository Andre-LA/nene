/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_IMPL_TEXTURE_H
#define NENE_IMPL_TEXTURE_H

#include "nene/texture.h"

nene_Texture nene_impl_Texture_init(SDL_Texture *raw, uint16_t width, uint16_t height, nene_TextureAccess access);
SDL_Texture *nene_impl_Texture_get_raw(nene_Texture texture);
bool nene_impl_Texture_apply_raw(nene_Texture *texture, SDL_Texture *raw_texture);

#endif // NENE_IMPL_TEXTURE
