# nene
[![Matrix](https://img.shields.io/matrix/nene-and-friends:matrix.org?label=Matrix%20chat&logo=matrix)](https://matrix.to/#/#nene-and-friends:matrix.org)

`Nene` it's a little game framework built on top of `SDL2` and it's extension libraries (`SDL2_image`, `SDL2_ttf`, `SDL2_mixer`).

> Eventually Nene will upgrade to `SDL3`

## Dependencies

### Nene library (runtime, used on games)
These are bundled with `Nene` and thus no download it's required, more information below.

- SDL2 `2.26.5`
- SDL2_image `2.6.3`
- SDL2_ttf `2.20.2`
- SDL2_mixer `2.6.3`
 
### Building Nene library
Installed externally, like on Visual Studio Installer or your system package manager.

- C compiler (tested: Clang, MSVC, GCC)
- CMake
- Git


### Generating Nene bindings
For now this is only expected to work on Linux, better support for Windows will be written, however
bindings are already generated on the repository, thus you don't need to generate them unless you change
`Nene` and/or the generators.

- Lua
- Teal
- clang-check
- Bash

To generate bindings:

```sh
$ sh genbindings.sh
```

## Building

> **Note**
> This section it's still being written.

## Usage

> **Note**
> This section it's still being written.

## Examples
Nene doesn't contains a tutorial yet, but you can find some usage examples on the `examples` directory:

- [Camera](examples/nelua/camera.nelua)
- [Pong](examples/nelua/pong.nelua)
- [Rects](examples/nelua/rects.nelua)
- [Render clip](examples/nelua/render_clip.nelua)
- [Sound and music](examples/nelua/sound_and_music.nelua)
- [Sprite animation](examples/nelua/sprite_animation.nelua)
- [Tilemap](examples/nelua/tilemap.nelua)
- [Web](examples/nelua/web.nelua)

Screenshot with some of the examples above (these shapes are sprites):
![image](https://user-images.githubusercontent.com/8538122/127941148-8597cb04-1bac-49cc-9ba1-909f199be996.png)

## License
The license of `nene` it's the same as SDL2: zlib license.
