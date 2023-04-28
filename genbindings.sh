# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# note: this script currently requires clang-check and tl commands.
# clang-check: is part of clang tooling.
# tl: the Teal language compiler.
# You also will need to install a Lua runtime on your system (required by Teal).

# usage: just use the command "$ sh genbindings.sh"

# utils
bindgen_log() {
  echo "nene bindgen log: $1"
}

# clear previous build
bindgen_log "clear previous build"

rm -rf dumps/
mkdir dumps/
mkdir dumps/math
mkdir dumps/audio

# dump AST
bindgen_log "dumping ASTs"
dump_ast() {
  clang-check include/nene/$1.h -ast-dump -ast-dump-filter=$2 --extra-arg="-fno-color-diagnostics" > dumps/$3.txt 
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
bindgen_log "generating bindings"
bindgen_log "generating nelua bindings"
tl run bindgen/generate_nelua.tl

# bindgen_log "generating carp bindings"
# $LUA bindgen/generate_carp.lua

bindgen_log "done"
