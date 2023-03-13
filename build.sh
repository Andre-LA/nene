# clear previous build
echo "clear previous build"

rm -rf build/
mkdir build/
mkdir build/ast_dumps
mkdir build/ast_dumps/math

# compile sources
echo "creating object files"

clang -c -Wall -Wextra -Wpedantic -std=c99 -I ./include/ src/*.c src/math/*.c
mv *.o build/

# archive objects for static linking
echo "archiving object files"
llvm-ar -rcs build/libnene.a build/*.o

# dump AST
echo "dumping ASTs"
dump_ast() {
  clang-check include/nene/$1.h -ast-dump -ast-dump-filter=$2 --extra-arg="-fno-color-diagnostics" > build/ast_dumps/$3.txt 
}

dump_ast "core" "nene" "core"
dump_ast "texture" "nene_Texture" "texture"
dump_ast "texture_atlas" "nene_TextureAtlas" "texture_atlas"
dump_ast "math/vec2i" "nene_Vec2i" "math/vec2i"
dump_ast "math/vec2" "nene_Vec2" "math/vec2"
dump_ast "math/rect" "nene_Rect" "math/rect"
dump_ast "math/grid" "nene_Grid" "math/grid"
dump_ast "math/segment" "nene_Segment" "math/segment"
dump_ast "math/shape" "nene_Shape" "math/shape"
dump_ast "intersections" "nene_Intersection" "intersections"
dump_ast "collision" "nene_Collision" "collision"
dump_ast "animation" "nene_Animation" "animation"
dump_ast "color" "nene_Color" "color"

# generate bindings
echo "generating bindings"
lua bindgen/generate.lua

echo "done"
