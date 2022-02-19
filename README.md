# nene
Tiny game library built around SDL2 and it's extension libraries (SDL_image, SDL_ttf, SDL_mixer).

Is a very simple game library for simple games, for now, using any dependency than the SDL2's ones is a
 non-goal.

**Note: This library is Work in Progress**

## Installing
`Nene` is a library and thus, it doesn't require installation, just the files, however, since it uses SDL2 and nelua language,
you must make both available.

### Dependencies
These are all `nene` dependencies:

- [Nelua language](https://nelua.io/)
- [SDL2 library](https://www.libsdl.org/)
- [SDL2_image](https://www.libsdl.org/projects/SDL_image/)
- [SDL2_ttf](https://www.libsdl.org/projects/SDL_ttf/)
- [SDL2_mixer](https://www.libsdl.org/projects/SDL_mixer/)

First, [install Nelua](https://nelua.io/installing/).

Then, install `SDL2` and it's extension libraries, it's generally available on systems's package managers already, for example, in Ubuntu use the following command:

```
# you may need use "sudo" before "apt-get" to install these packages on Ubuntu:
$ apt-get install libsdl2-dev libsdl2-mixer-dev libsdl2-ttf-dev libsdl2-image-dev
```

For further details and other operating systems, read [SDL2's installing documentation](https://wiki.libsdl.org/Installation).

Note that Nelua compiles to C and, theorically, you can follow any C with SDL2 programming tutorial in order to install SDL2.

Finally, just download `nene` (see below) and use it in your game as a library.

### Download
You can either download or clone the latest nene or the latest release

You can clone the latest nene using `git clone` command (or you git client, like `GitHub Desktop` or `git-cola`)

```
git clone https://github.com/Andre-LA/nene.git
```

An alternative is downloading the latest release on the [Releases page](https://github.com/Andre-LA/nene/releases), there
just downloading the source code of the release is the same as clonning, however, it will not be the latest nene release.

Whichever method you use, you only need the `nene` subdirectory of this repository in order to use `nene`.

## Examples
Nene doesn't contains a tutorial yet, but you can find some usage examples on the `examples` directory:

- [Camera](examples/camera.nelua)
- [Pong](examples/pong.nelua)
- [Rects](examples/rects.nelua)
- [Render clip](examples/render_clip.nelua)
- [Sound and music](examples/sound_and_music.nelua)
- [Sprite animation](examples/sprite_animation.nelua)
- [Tilemap](examples/tilemap.nelua)
- [Web](examples/web.nelua)

![image](https://user-images.githubusercontent.com/8538122/127941148-8597cb04-1bac-49cc-9ba1-909f199be996.png)

## License
The license of `nene` it's the same as SDL2: zlib license.

This library uses the nelua language and it's standard libraries, licensed under MIT.
