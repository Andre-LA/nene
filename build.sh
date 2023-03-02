# clear previous build
rm -rf build/
mkdir build/
mkdir build/ast_dumps
mkdir build/ast_dumps/math

# compile sources
clang -c -Wall -Wextra -Wpedantic -std=c99 -I ./include/ src/*.c src/math/*.c 
mv *.o build/

# archive objects for static linking
llvm-ar -rcs build/libnene.a build/*.o

# dump AST
dump_ast() {
  clang-check include/nene/$1.h -ast-dump -ast-dump-filter=$2 --extra-arg="-fno-color-diagnostics" > build/ast_dumps/$3.txt 
}

dump_ast "math/vec2i" "nene_Vec2i" "math/vec2i"
dump_ast "math/vec2" "nene_Vec2" "math/vec2"
dump_ast "math/rect" "nene_Rect" "math/rect"
dump_ast "intersections" "nene_Intersections" "intersections"
dump_ast "animation" "nene_Animation" "animation"
dump_ast "color" "nene_Color" "color"

# generate bindings
lua bindgen/generate.lua
