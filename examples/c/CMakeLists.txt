# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

add_executable(nene_c_collisions WIN32 collisions.c)
target_link_libraries(nene_c_collisions PRIVATE nene)
