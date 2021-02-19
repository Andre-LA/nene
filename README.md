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

## Examples
- [Pong example](examples/pong.nelua)
- [(external) Rotor-quick tests](https://github.com/Andre-LA/rotor-quick/tree/sdl2-refactor/tests)
 
## Download
You can download this library by using a simple `git clone`:
```
git clone https://github.com/Andre-LA/nene.git
```

However, you may like to re-generate the `sdl2` libraries, in this case, you should clone recursively:
```
git clone --recurse-submodules  https://github.com/Andre-LA/nene.git
```
With this, you will also clone `nelua-decl`, used in to generate `sdl2` bindings.

(Note: a `Makefile` will be created to automatically re-generate these bindings and copy them to
 `nene` directory, but for now, you should [re-gen and copy by hand](https://github.com/edubart/nelua-decl#how-to-generate-bindings))
 