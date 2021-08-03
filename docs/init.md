## init

TODO (general):
* Almost all SDL calls can fail, this library should check
all these calls and do something about it.
* Review implicit conversions and try to optimize that
* Also review integer sizes, should I use uinteger,
usize, or smaller fixed sizes like int32?
* Try to change the "ok, errmsg, result" return pattern to an more lua-like "ok, err_msg"
* Abstract used SDL symbols, like SDL_Scancode, used in get_key method
* Create a good color palette
* I'm thinking about setting all types in lowercase, just like nelua standard library
* create `Nene.Resource` record, which will replace all `._data` fields and methods
* move some functions from CoreState to respective records, passing CoreState as argument
* rename Nene.CoreState to Nene.State

---
