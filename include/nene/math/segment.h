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

/// tests the equality between two segments
bool nene_Segment_equals(nene_Segment a, nene_Segment b);

/// Returns the segment as 2D vector.
nene_Vec2 nene_Segment_as_vec2(nene_Segment segment);

/// Get the midpoint (or middle point) of the segment.
nene_Vec2 nene_Segment_get_midpoint(nene_Segment segment);

/// Get the squared length of the segment.
float nene_Segment_len_sqr(nene_Segment segment);

/// Get the length of the segment.
float nene_Segment_len(nene_Segment segment);

#endif // NENE_SEGMENT_H
