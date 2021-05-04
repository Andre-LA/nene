# nene/main_state.nelua
## Nene.Main
A ready-to-use main state record, it already contains the core and does extra management to make game development easy. 
The `Core.Main` module isn't required by any other module, and can be replaced by your own "Main" module if you wish.
```lua
global Nene.Main = @record{
  core: Nene.Core, -- nene core state
  resources: record{
    textures: resourcepool(Nene.Texture),
    --musics: resourcepool(Nene.Music),
    --sounds: resourcepool(Nene.Sound),
    --fonts: resourcepool(Nene.Font),
  }
}
```

## Nene.Main.init
initializes the main state, it also does some `assert`s to ensure that everything properly initialized.
```lua
function Nene.Main.init(title: string, window_size_x: integer, window_size_y: integer): Nene.Main
```

## Nene.Main:terminate
Finalize application by freeing all resources and terminating the core
```lua
function Nene.Main:terminate()
```
