/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/math/segment.h"

nene_Vec2 nene_Segment_as_vec2(nene_Segment segment) {
  return nene_Vec2_sub(segment.ending, segment.origin);
}

nene_Vec2 nene_Segment_get_center(nene_Segment segment) {
  return nene_Vec2_lerp(segment.origin, segment.ending, 0.5f);
}
