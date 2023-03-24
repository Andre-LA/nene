# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# usage: just use the command "$ sh build.sh"
# you can also change the C compiler, Lua interpreter or object archiver by
# passing parameters, like: "$ sh build.sh emcc nelua-lua emar"
# note however for the time being only the defaults were tested.

# variables
CC=clang
LUA=lua
AR=llvm-ar

if [ $# -gt 0 ] # C compiler passed
then
CC=$1
fi

if [ $# -gt 1 ] # Object archiver passed
then
AR=$2
fi

if [ $# -gt 2 ] # Lua interpreter passed
then
LUA=$3
fi

# echo configuration
echo "config:"
echo "C compiler: $CC"
echo "Object achiver: $AR"
echo "Lua interpreter: $LUA"

# setup flags

## warning flags
WFLAGS="-Wall -Wextra -Wpedantic"

# C standard flag
CSTD="-std=c99"

# include flags
IFLAGS="-I./include/"

# source files
SOURCES="src/*.c src/math/*.c src/audio/*.c"

# clear previous build
echo "clear previous build"

rm -rf build/
mkdir build/
mkdir build/ast_dumps
mkdir build/ast_dumps/math
mkdir build/ast_dumps/audio

# compile sources
echo "creating object files"

$CC -c $WFLAGS $CSTD $IFLAGS $SOURCES
mv *.o build/

# archive objects for static linking
echo "archiving object files"
$AR -rcs build/libnene.a build/*.o

# dump AST
echo "dumping ASTs"
dump_ast() {
  clang-check include/nene/$1.h -ast-dump -ast-dump-filter=$2 --extra-arg="-fno-color-diagnostics" > build/ast_dumps/$3.txt 
}

dump_ast "core" "nene" "core"
dump_ast "texture" "nene_Texture" "texture"
dump_ast "font" "nene" "font"
dump_ast "texture_atlas" "nene_TextureAtlas" "texture_atlas"
dump_ast "audio/music" "nene_Music" "audio/music"
dump_ast "audio/sound" "nene_Sound" "audio/sound"
dump_ast "math/vec2i" "nene_Vec2i" "math/vec2i"
dump_ast "math/vec2" "nene_Vec2" "math/vec2"
dump_ast "math/rect" "nene_Rect" "math/rect"
dump_ast "math/rectf" "nene_Rectf" "math/rectf"
dump_ast "math/grid" "nene_Grid" "math/grid"
dump_ast "math/segment" "nene_Segment" "math/segment"
dump_ast "math/shape" "nene_Shape" "math/shape"
dump_ast "intersections" "nene_Intersection" "intersections"
dump_ast "collision" "nene_Collision" "collision"
dump_ast "animation" "nene_Animation" "animation"
dump_ast "tilemap" "nene_Tilemap" "tilemap"
dump_ast "color" "nene_Color" "color"

# generate bindings
echo "generating bindings"
$LUA bindgen/generate.lua

echo "done"
