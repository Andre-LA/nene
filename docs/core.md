# nene/core.nelua
## Nene

```lua
global Nene = @record{}
```

## 
Nene's core must be initialized before used, `check`s are used to enforce this 
 
Initialization is done using the `Nene.Core.init` function
```lua
global Nene.initialized: boolean = false
```
