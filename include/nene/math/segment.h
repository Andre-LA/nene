/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_SEGMENT_H
#define NENE_SEGMENT_H

#include "nene/math/vec2.h"

typedef struct nene_Segment {
  nene_Vec2 origin;
  nene_Vec2 ending;
} nene_Segment;

nene_Vec2 nene_Segment_as_vec2(nene_Segment segment);
nene_Vec2 nene_Segment_get_center(nene_Segment segment);

#endif // NENE_SEGMENT_H
