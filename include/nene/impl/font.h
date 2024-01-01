/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_IMPL_FONT_H
#define NENE_IMPL_FONT_H

#include "nene/font.h"

/// Returns the internal data of the Font handle.
TTF_Font *nene_impl_Font_get_raw(nene_Font font);

#endif // NENE_IMPL_FONT_H

