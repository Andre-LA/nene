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

// FIXME: the module is "Shape", but it implements "ShapeQuadrilateral", this confuses binding generators.
// TODO: separate as a separate module or refactor this module.

/// Quadrilateral shape data strucuture, it holds four segments.
typedef struct nene_ShapeQuadrilateral {
  nene_Segment sides[4];
} nene_ShapeQuadrilateral;

/// Returns a zeroed quatrilateral shape
nene_ShapeQuadrilateral nene_ShapeQuadrilateral_zero(void);

/// Returns a copy of the quadrilateral shape reference
nene_ShapeQuadrilateral nene_ShapeQuadrilateral_copy(nene_ShapeQuadrilateral *quadrilateral_shape);

/// Returns a quadrilateral shape made from a rectanle with floating values.
nene_ShapeQuadrilateral nene_Shape_get_rectf_shape(nene_Rectf rect);

/// Returns a quadrilateral shape made from a rectanle.
nene_ShapeQuadrilateral nene_Shape_get_rect_shape(nene_Rect rect);

/// Returns the diagonal of a rectangle as a segment,
/// with direction that's horizontally left-to-right, while the vertical direction it's given
/// on the `up_to_down` boolean parameter.
nene_Segment nene_Shape_get_rectf_diagonal(nene_Rectf rect, bool up_to_down);

#endif // NENE_SHAPE_H
