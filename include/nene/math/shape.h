/*
Copyright (c) 2023-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_SHAPE_H
#define NENE_SHAPE_H

#include "nene/math/segment.h"
#include "nene/math/rect.h"

/// Quadrilateral shape data strucuture, it holds four segments.
typedef struct nene_ShapeQuadrilateral {
  nene_Segment sides[4];
} nene_ShapeQuadrilateral;

/// Returns a quadrilateral shape made from a rectanle.
nene_ShapeQuadrilateral nene_Shape_get_rect_shape(nene_Rect rect);

#endif // NENE_SHAPE_H
