/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_SHAPE_H
#define NENE_SHAPE_H

#include "nene/math/segment.h"
#include "nene/math/rect.h"
#include "nene/math/rectf.h"

/// Quadrilateral shape data strucuture, it holds four segments.
typedef struct nene_ShapeQuadrilateral {
  nene_Segment sides[4];
} nene_ShapeQuadrilateral;

/// Returns a quadrilateral shape made from a rectanle with floating values.
nene_ShapeQuadrilateral nene_Shape_get_rectf_shape(nene_Rectf rect);

/// Returns a quadrilateral shape made from a rectanle.
nene_ShapeQuadrilateral nene_Shape_get_rect_shape(nene_Rect rect);

#endif // NENE_SHAPE_H
