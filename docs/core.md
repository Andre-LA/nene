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

## check_args

```lua
local function check_args(fn_name, fn_msg, lib_name, lib_get_error_fn)
```
