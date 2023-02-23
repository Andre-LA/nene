#ifndef NENE_VEC2I_H
#define NENE_VEC2I_H

#include <stdint.h>
#include <stdbool.h>

typedef struct nene_Vec2i {
  int32_t x;
  int32_t y;
} nene_Vec2i;

nene_Vec2i nene_Vec2i_zero(void);
nene_Vec2i nene_Vec2i_one(void);
bool nene_Vec2i_equals(nene_Vec2i a, nene_Vec2i b);
nene_Vec2i nene_Vec2i_add(nene_Vec2i a, nene_Vec2i b);
nene_Vec2i nene_Vec2i_sub(nene_Vec2i a, nene_Vec2i b);
nene_Vec2i nene_Vec2i_mul(nene_Vec2i a, nene_Vec2i b);
nene_Vec2i nene_Vec2i_scale(nene_Vec2i v, float s);
nene_Vec2i nene_Vec2i_negate(nene_Vec2i v);
float nene_Vec2i_len_sqr(nene_Vec2i v);
float nene_Vec2i_len(nene_Vec2i v);
nene_Vec2i nene_Vec2i_lerp(nene_Vec2i a, nene_Vec2i b, float t);
float nene_Vec2i_dot(nene_Vec2i a, nene_Vec2i b);
/// note: since this is a 2D vector (or z=0), the cross product returns
/// the magnitude of the cross product vector instead of the vector itself.
float nene_Vec2i_cross(nene_Vec2i a, nene_Vec2i b);

#endif // NENE_VEC2I_H
