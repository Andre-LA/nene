# nene
Tiny game library build around SDL2 and it's extension libraries (SDL_image, SDL_ttf, SDL_mixer).

Is a very simple game library for simple games, for now, using any library than the SDL2's ones is a
 non-goal.

Some examples are also available on [Rotor-quick](https://github.com/andre-la/rotor-quick), which is
 where `nene` is currently used.
 
## Download
You can download this library using a simple `git clone`:
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
 