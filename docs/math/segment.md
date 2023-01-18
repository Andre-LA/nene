### Summary
* [Segment](#segment)
* [Segment.as_vec2](#segmentas_vec2)
* [Segment.segments_from_rect](#segmentsegments_from_rect)
* [Segment.get_segment_intersection](#segmentget_segment_intersection)
* [Segment.get_rect_intersections](#segmentget_rect_intersections)
* [Segment.is_intersecting](#segmentis_intersecting)

## segment

The Segment module, it represents a "finite line", with an origin and ending

### Segment

```lua
local Segment = @record{
  origin: Vec2,
  ending: Vec2,
}
```



### Segment.as_vec2

```lua
function Segment.as_vec2(self: Segment): Vec2
```

Return the vector of the segment, that is, the ending minus the origin.

### Segment.segments_from_rect

```lua
function Segment.segments_from_rect(rect: Rect): [4]Segment
```

Returns 4 segments respective to each side of an rectangle.

### Segment.get_segment_intersection

```lua
function Segment.get_segment_intersection(self: Segment, other: Segment): (boolean, boolean, Vec2, number, number)
```

Makes an intersection test with another segment and returns the following values:

* boolean: `true` if there's intersection, `false` otherwise;
* boolean: `true` if both segments are parallel, note that there's no intersection when segments are parallel;
* Vec2   : the intersection point, if no intersection is found then it's a zeroed Vec2;
* number : the scalar of `self` that would intersect `other`, when there's no intersection, the value will be out of the [0, 1] interval;
* number : the scalar of `other` that would intersect `self`, when there's no intersection, the value will be out of the [0, 1] interval.

### Segment.get_rect_intersections

```lua
function Segment.get_rect_intersections(self: Segment, other: Rect): (boolean, integer, [2]Vec2)
```

Makes an intersection test with an rectangle, returns the following values:

* boolean: `true` if there's intersection, `false` otherwise;
* integer: The count of intersections, since an segment can intersects two rectangle edges.
* [2]Vec2: The points of intersections, when there's not intersection on a point, then it's zeroed.

### Segment.is_intersecting

```lua
function Segment.is_intersecting(self: Segment, other: overload(Segment, Rect)): boolean
```



---
