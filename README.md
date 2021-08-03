# nene
Tiny game library build around SDL2 and it's extension libraries (SDL_image, SDL_ttf, SDL_mixer).

Is a very simple game library for simple games, for now, using any library than the SDL2's ones is a
 non-goal.
 
**Note: This is WIP, incomplete and unstable (frequent breaking changes)**
 
## Dependencies
- [Nelua language](https://nelua.io/)
- [SDL2 library](https://www.libsdl.org/)
- [SDL2_image](https://www.libsdl.org/projects/SDL_image/)
- [SDL2_ttf](https://www.libsdl.org/projects/SDL_ttf/)
- [SDL2_mixer](https://www.libsdl.org/projects/SDL_mixer/)

`nelua-decl` is bundled as a git submodule, but this dependency is only used for `nene` development.

## Installation

First, [Install Nelua](https://nelua.io/installing/).

Then, install SDL2 and extension libraries, it's generally available on systems's package managers, for example, in Ubuntu use the following command:
```
$ apt-get install libsdl2-dev libsdl2-mixer-dev libsdl2-ttf-dev libsdl2-image-dev 
# you may need use sudo to install on Ubuntu 
```

Finally, just download `nene` (see below) and use in your game as a library.
 
## Download
You can download this library by using a simple `git clone`:
```
git clone https://github.com/Andre-LA/nene.git
```

You only need the `nene` subdirectory of this repository in order to use `nene`.

However, you may like to re-generate the `sdl2` libraries, in this case, you should clone recursively:
```
git clone --recurse-submodules  https://github.com/Andre-LA/nene.git
```
With this, you will also clone `nelua-decl`, used in to generate `sdl2` bindings.

(Note: a `Makefile` will be created to automatically re-generate these bindings and copy them to
 `nene` directory, but for now, you should [re-gen and copy by hand](https://github.com/edubart/nelua-decl#how-to-generate-bindings))

## Examples
- [Pong](examples/pong.nelua)
- [Rectangles](examples/rects.nelua)
- [Sprite Animation](examples/sprite_animation.nelua)
- [Tilemap](examples/tilemap.nelua)

![image](https://user-images.githubusercontent.com/8538122/127941148-8597cb04-1bac-49cc-9ba1-909f199be996.png)
