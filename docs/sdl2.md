# nene/sdl2.nelua
## SDL_GetPlatform

```lua
global function SDL_GetPlatform(): cstring <cimport, nodecl> end
```

## SDL_malloc

```lua
global function SDL_malloc(size: csize): pointer <cimport, nodecl> end
```

## SDL_calloc

```lua
global function SDL_calloc(nmemb: csize, size: csize): pointer <cimport, nodecl> end
```

## SDL_realloc

```lua
global function SDL_realloc(mem: pointer, size: csize): pointer <cimport, nodecl> end
```

## SDL_free

```lua
global function SDL_free(mem: pointer) <cimport, nodecl> end
```

## SDL_GetMemoryFunctions

```lua
global function SDL_GetMemoryFunctions(malloc_func: *SDL_malloc_func, calloc_func: *SDL_calloc_func, realloc_func: *SDL_realloc_func, free_func: *SDL_free_func) <cimport, nodecl> end
```

## SDL_SetMemoryFunctions

```lua
global function SDL_SetMemoryFunctions(malloc_func: SDL_malloc_func, calloc_func: SDL_calloc_func, realloc_func: SDL_realloc_func, free_func: SDL_free_func): cint <cimport, nodecl> end
```

## SDL_GetNumAllocations

```lua
global function SDL_GetNumAllocations(): cint <cimport, nodecl> end
```

## SDL_getenv

```lua
global function SDL_getenv(name: cstring): cstring <cimport, nodecl> end
```

## SDL_setenv

```lua
global function SDL_setenv(name: cstring, value: cstring, overwrite: cint): cint <cimport, nodecl> end
```

## SDL_qsort

```lua
global function SDL_qsort(base: pointer, nmemb: csize, size: csize, compare: function(pointer, pointer): cint) <cimport, nodecl> end
```

## SDL_abs

```lua
global function SDL_abs(x: cint): cint <cimport, nodecl> end
```

## SDL_isdigit

```lua
global function SDL_isdigit(x: cint): cint <cimport, nodecl> end
```

## SDL_isspace

```lua
global function SDL_isspace(x: cint): cint <cimport, nodecl> end
```

## SDL_isupper

```lua
global function SDL_isupper(x: cint): cint <cimport, nodecl> end
```

## SDL_islower

```lua
global function SDL_islower(x: cint): cint <cimport, nodecl> end
```

## SDL_toupper

```lua
global function SDL_toupper(x: cint): cint <cimport, nodecl> end
```

## SDL_tolower

```lua
global function SDL_tolower(x: cint): cint <cimport, nodecl> end
```

## SDL_crc32

```lua
global function SDL_crc32(crc: uint32, data: pointer, len: csize): uint32 <cimport, nodecl> end
```

## SDL_memset

```lua
global function SDL_memset(dst: pointer, c: cint, len: csize): pointer <cimport, nodecl> end
```

## SDL_memset4

```lua
global function SDL_memset4(dst: pointer, val: uint32, dwords: csize) <cimport, nodecl> end
```

## SDL_memcpy

```lua
global function SDL_memcpy(dst: pointer, src: pointer, len: csize): pointer <cimport, nodecl> end
```

## SDL_memmove

```lua
global function SDL_memmove(dst: pointer, src: pointer, len: csize): pointer <cimport, nodecl> end
```

## SDL_memcmp

```lua
global function SDL_memcmp(s1: pointer, s2: pointer, len: csize): cint <cimport, nodecl> end
```

## SDL_wcslen

```lua
global function SDL_wcslen(wstr: *cint): csize <cimport, nodecl> end
```

## SDL_wcslcpy

```lua
global function SDL_wcslcpy(dst: *cint, src: *cint, maxlen: csize): csize <cimport, nodecl> end
```

## SDL_wcslcat

```lua
global function SDL_wcslcat(dst: *cint, src: *cint, maxlen: csize): csize <cimport, nodecl> end
```

## SDL_wcsdup

```lua
global function SDL_wcsdup(wstr: *cint): *cint <cimport, nodecl> end
```

## SDL_wcsstr

```lua
global function SDL_wcsstr(haystack: *cint, needle: *cint): *cint <cimport, nodecl> end
```

## SDL_wcscmp

```lua
global function SDL_wcscmp(str1: *cint, str2: *cint): cint <cimport, nodecl> end
```

## SDL_wcsncmp

```lua
global function SDL_wcsncmp(str1: *cint, str2: *cint, maxlen: csize): cint <cimport, nodecl> end
```

## SDL_wcscasecmp

```lua
global function SDL_wcscasecmp(str1: *cint, str2: *cint): cint <cimport, nodecl> end
```

## SDL_wcsncasecmp

```lua
global function SDL_wcsncasecmp(str1: *cint, str2: *cint, len: csize): cint <cimport, nodecl> end
```

## SDL_strlen

```lua
global function SDL_strlen(str: cstring): csize <cimport, nodecl> end
```

## SDL_strlcpy

```lua
global function SDL_strlcpy(dst: cstring, src: cstring, maxlen: csize): csize <cimport, nodecl> end
```

## SDL_utf8strlcpy

```lua
global function SDL_utf8strlcpy(dst: cstring, src: cstring, dst_bytes: csize): csize <cimport, nodecl> end
```

## SDL_strlcat

```lua
global function SDL_strlcat(dst: cstring, src: cstring, maxlen: csize): csize <cimport, nodecl> end
```

## SDL_strdup

```lua
global function SDL_strdup(str: cstring): cstring <cimport, nodecl> end
```

## SDL_strrev

```lua
global function SDL_strrev(str: cstring): cstring <cimport, nodecl> end
```

## SDL_strupr

```lua
global function SDL_strupr(str: cstring): cstring <cimport, nodecl> end
```

## SDL_strlwr

```lua
global function SDL_strlwr(str: cstring): cstring <cimport, nodecl> end
```

## SDL_strchr

```lua
global function SDL_strchr(str: cstring, c: cint): cstring <cimport, nodecl> end
```

## SDL_strrchr

```lua
global function SDL_strrchr(str: cstring, c: cint): cstring <cimport, nodecl> end
```

## SDL_strstr

```lua
global function SDL_strstr(haystack: cstring, needle: cstring): cstring <cimport, nodecl> end
```

## SDL_strtokr

```lua
global function SDL_strtokr(s1: cstring, s2: cstring, saveptr: *cstring): cstring <cimport, nodecl> end
```

## SDL_utf8strlen

```lua
global function SDL_utf8strlen(str: cstring): csize <cimport, nodecl> end
```

## SDL_itoa

```lua
global function SDL_itoa(value: cint, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_uitoa

```lua
global function SDL_uitoa(value: cuint, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_ltoa

```lua
global function SDL_ltoa(value: clong, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_ultoa

```lua
global function SDL_ultoa(value: culong, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_lltoa

```lua
global function SDL_lltoa(value: int64, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_ulltoa

```lua
global function SDL_ulltoa(value: uint64, str: cstring, radix: cint): cstring <cimport, nodecl> end
```

## SDL_atoi

```lua
global function SDL_atoi(str: cstring): cint <cimport, nodecl> end
```

## SDL_atof

```lua
global function SDL_atof(str: cstring): float64 <cimport, nodecl> end
```

## SDL_strtol

```lua
global function SDL_strtol(str: cstring, endp: *cstring, base: cint): clong <cimport, nodecl> end
```

## SDL_strtoul

```lua
global function SDL_strtoul(str: cstring, endp: *cstring, base: cint): culong <cimport, nodecl> end
```

## SDL_strtoll

```lua
global function SDL_strtoll(str: cstring, endp: *cstring, base: cint): int64 <cimport, nodecl> end
```

## SDL_strtoull

```lua
global function SDL_strtoull(str: cstring, endp: *cstring, base: cint): uint64 <cimport, nodecl> end
```

## SDL_strtod

```lua
global function SDL_strtod(str: cstring, endp: *cstring): float64 <cimport, nodecl> end
```

## SDL_strcmp

```lua
global function SDL_strcmp(str1: cstring, str2: cstring): cint <cimport, nodecl> end
```

## SDL_strncmp

```lua
global function SDL_strncmp(str1: cstring, str2: cstring, maxlen: csize): cint <cimport, nodecl> end
```

## SDL_strcasecmp

```lua
global function SDL_strcasecmp(str1: cstring, str2: cstring): cint <cimport, nodecl> end
```

## SDL_strncasecmp

```lua
global function SDL_strncasecmp(str1: cstring, str2: cstring, len: csize): cint <cimport, nodecl> end
```

## SDL_sscanf

```lua
global function SDL_sscanf(text: cstring, fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```

## SDL_vsscanf

```lua
global function SDL_vsscanf(text: cstring, fmt: cstring, ap: cvalist): cint <cimport, nodecl> end
```

## SDL_snprintf

```lua
global function SDL_snprintf(text: cstring, maxlen: csize, fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```

## SDL_vsnprintf

```lua
global function SDL_vsnprintf(text: cstring, maxlen: csize, fmt: cstring, ap: cvalist): cint <cimport, nodecl> end
```

## SDL_acos

```lua
global function SDL_acos(x: float64): float64 <cimport, nodecl> end
```

## SDL_acosf

```lua
global function SDL_acosf(x: float32): float32 <cimport, nodecl> end
```

## SDL_asin

```lua
global function SDL_asin(x: float64): float64 <cimport, nodecl> end
```

## SDL_asinf

```lua
global function SDL_asinf(x: float32): float32 <cimport, nodecl> end
```

## SDL_atan

```lua
global function SDL_atan(x: float64): float64 <cimport, nodecl> end
```

## SDL_atanf

```lua
global function SDL_atanf(x: float32): float32 <cimport, nodecl> end
```

## SDL_atan2

```lua
global function SDL_atan2(x: float64, y: float64): float64 <cimport, nodecl> end
```

## SDL_atan2f

```lua
global function SDL_atan2f(x: float32, y: float32): float32 <cimport, nodecl> end
```

## SDL_ceil

```lua
global function SDL_ceil(x: float64): float64 <cimport, nodecl> end
```

## SDL_ceilf

```lua
global function SDL_ceilf(x: float32): float32 <cimport, nodecl> end
```

## SDL_copysign

```lua
global function SDL_copysign(x: float64, y: float64): float64 <cimport, nodecl> end
```

## SDL_copysignf

```lua
global function SDL_copysignf(x: float32, y: float32): float32 <cimport, nodecl> end
```

## SDL_cos

```lua
global function SDL_cos(x: float64): float64 <cimport, nodecl> end
```

## SDL_cosf

```lua
global function SDL_cosf(x: float32): float32 <cimport, nodecl> end
```

## SDL_exp

```lua
global function SDL_exp(x: float64): float64 <cimport, nodecl> end
```

## SDL_expf

```lua
global function SDL_expf(x: float32): float32 <cimport, nodecl> end
```

## SDL_fabs

```lua
global function SDL_fabs(x: float64): float64 <cimport, nodecl> end
```

## SDL_fabsf

```lua
global function SDL_fabsf(x: float32): float32 <cimport, nodecl> end
```

## SDL_floor

```lua
global function SDL_floor(x: float64): float64 <cimport, nodecl> end
```

## SDL_floorf

```lua
global function SDL_floorf(x: float32): float32 <cimport, nodecl> end
```

## SDL_trunc

```lua
global function SDL_trunc(x: float64): float64 <cimport, nodecl> end
```

## SDL_truncf

```lua
global function SDL_truncf(x: float32): float32 <cimport, nodecl> end
```

## SDL_fmod

```lua
global function SDL_fmod(x: float64, y: float64): float64 <cimport, nodecl> end
```

## SDL_fmodf

```lua
global function SDL_fmodf(x: float32, y: float32): float32 <cimport, nodecl> end
```

## SDL_log

```lua
global function SDL_log(x: float64): float64 <cimport, nodecl> end
```

## SDL_logf

```lua
global function SDL_logf(x: float32): float32 <cimport, nodecl> end
```

## SDL_log10

```lua
global function SDL_log10(x: float64): float64 <cimport, nodecl> end
```

## SDL_log10f

```lua
global function SDL_log10f(x: float32): float32 <cimport, nodecl> end
```

## SDL_pow

```lua
global function SDL_pow(x: float64, y: float64): float64 <cimport, nodecl> end
```

## SDL_powf

```lua
global function SDL_powf(x: float32, y: float32): float32 <cimport, nodecl> end
```

## SDL_scalbn

```lua
global function SDL_scalbn(x: float64, n: cint): float64 <cimport, nodecl> end
```

## SDL_scalbnf

```lua
global function SDL_scalbnf(x: float32, n: cint): float32 <cimport, nodecl> end
```

## SDL_sin

```lua
global function SDL_sin(x: float64): float64 <cimport, nodecl> end
```

## SDL_sinf

```lua
global function SDL_sinf(x: float32): float32 <cimport, nodecl> end
```

## SDL_sqrt

```lua
global function SDL_sqrt(x: float64): float64 <cimport, nodecl> end
```

## SDL_sqrtf

```lua
global function SDL_sqrtf(x: float32): float32 <cimport, nodecl> end
```

## SDL_tan

```lua
global function SDL_tan(x: float64): float64 <cimport, nodecl> end
```

## SDL_tanf

```lua
global function SDL_tanf(x: float32): float32 <cimport, nodecl> end
```

## SDL_iconv_open

```lua
global _SDL_iconv_t: type <cimport, nodecl, forwarddecl, ctypedef> = @record{}
global SDL_iconv_t: type = @*_SDL_iconv_t
global function SDL_iconv_open(tocode: cstring, fromcode: cstring): SDL_iconv_t <cimport, nodecl> end
```

## SDL_iconv_close

```lua
global function SDL_iconv_close(cd: SDL_iconv_t): cint <cimport, nodecl> end
```

## SDL_iconv

```lua
global function SDL_iconv(cd: SDL_iconv_t, inbuf: *cstring, inbytesleft: *csize, outbuf: *cstring, outbytesleft: *csize): csize <cimport, nodecl> end
```

## SDL_iconv_string

```lua
global function SDL_iconv_string(tocode: cstring, fromcode: cstring, inbuf: cstring, inbytesleft: csize): cstring <cimport, nodecl> end
```

## SDL_memcpy4

```lua
global function SDL_memcpy4(dst: pointer, src: pointer, dwords: csize): pointer <cimport, nodecl> end
```

## SDL_main

```lua
global function SDL_main(argc: cint, argv: *cstring): cint <cimport, nodecl> end
```

## SDL_SetMainReady

```lua
global function SDL_SetMainReady() <cimport, nodecl> end
```

## SDL_ReportAssertion

```lua
global SDL_AssertData: type <cimport, nodecl, forwarddecl> = @record{}
SDL_AssertData = @record{
  always_ignore: cint,
  trigger_count: cuint,
  condition: cstring,
  filename: cstring,
  linenum: cint,
  Function: cstring,
  next: *SDL_AssertData
}
global function SDL_ReportAssertion(a1: *SDL_AssertData, a2: cstring, a3: cstring, a4: cint): SDL_AssertState <cimport, nodecl> end
```

## SDL_SetAssertionHandler

```lua
global function SDL_SetAssertionHandler(handler: SDL_AssertionHandler, userdata: pointer) <cimport, nodecl> end
```

## SDL_GetDefaultAssertionHandler

```lua
global function SDL_GetDefaultAssertionHandler(): SDL_AssertionHandler <cimport, nodecl> end
```

## SDL_GetAssertionHandler

```lua
global function SDL_GetAssertionHandler(puserdata: *pointer): SDL_AssertionHandler <cimport, nodecl> end
```

## SDL_GetAssertionReport

```lua
global function SDL_GetAssertionReport(): *SDL_AssertData <cimport, nodecl> end
```

## SDL_ResetAssertionReport

```lua
global function SDL_ResetAssertionReport() <cimport, nodecl> end
```

## SDL_AtomicTryLock

```lua
global function SDL_AtomicTryLock(lock: *cint): SDL_bool <cimport, nodecl> end
```

## SDL_AtomicLock

```lua
global function SDL_AtomicLock(lock: *cint) <cimport, nodecl> end
```

## SDL_AtomicUnlock

```lua
global function SDL_AtomicUnlock(lock: *cint) <cimport, nodecl> end
```

## SDL_MemoryBarrierReleaseFunction

```lua
global function SDL_MemoryBarrierReleaseFunction() <cimport, nodecl> end
```

## SDL_MemoryBarrierAcquireFunction

```lua
global function SDL_MemoryBarrierAcquireFunction() <cimport, nodecl> end
```

## SDL_AtomicCAS

```lua
global SDL_atomic_t: type <cimport, nodecl> = @record{
  value: cint
}
global function SDL_AtomicCAS(a: *SDL_atomic_t, oldval: cint, newval: cint): SDL_bool <cimport, nodecl> end
```

## SDL_AtomicSet

```lua
global function SDL_AtomicSet(a: *SDL_atomic_t, v: cint): cint <cimport, nodecl> end
```

## SDL_AtomicGet

```lua
global function SDL_AtomicGet(a: *SDL_atomic_t): cint <cimport, nodecl> end
```

## SDL_AtomicAdd

```lua
global function SDL_AtomicAdd(a: *SDL_atomic_t, v: cint): cint <cimport, nodecl> end
```

## SDL_AtomicCASPtr

```lua
global function SDL_AtomicCASPtr(a: *pointer, oldval: pointer, newval: pointer): SDL_bool <cimport, nodecl> end
```

## SDL_AtomicSetPtr

```lua
global function SDL_AtomicSetPtr(a: *pointer, v: pointer): pointer <cimport, nodecl> end
```

## SDL_AtomicGetPtr

```lua
global function SDL_AtomicGetPtr(a: *pointer): pointer <cimport, nodecl> end
```

## SDL_SetError

```lua
global function SDL_SetError(fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```

## SDL_GetError

```lua
global function SDL_GetError(): cstring <cimport, nodecl> end
```

## SDL_GetErrorMsg

```lua
global function SDL_GetErrorMsg(errstr: cstring, maxlen: cint): cstring <cimport, nodecl> end
```

## SDL_ClearError

```lua
global function SDL_ClearError() <cimport, nodecl> end
```

## SDL_Error

```lua
global function SDL_Error(code: SDL_errorcode): cint <cimport, nodecl> end
```

## SDL_Swap16

```lua
global function SDL_Swap16(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_Swap32

```lua
global function SDL_Swap32(x: uint32): uint32 <cimport, nodecl> end
```

## SDL_Swap64

```lua
global function SDL_Swap64(x: uint64): uint64 <cimport, nodecl> end
```

## SDL_SwapFloat

```lua
global function SDL_SwapFloat(x: float32): float32 <cimport, nodecl> end
```

## SDL_CreateMutex

```lua
global SDL_mutex: type <cimport, nodecl, forwarddecl> = @record{}
global function SDL_CreateMutex(): *SDL_mutex <cimport, nodecl> end
```

## SDL_LockMutex

```lua
global function SDL_LockMutex(mutex: *SDL_mutex): cint <cimport, nodecl> end
```

## SDL_TryLockMutex

```lua
global function SDL_TryLockMutex(mutex: *SDL_mutex): cint <cimport, nodecl> end
```

## SDL_UnlockMutex

```lua
global function SDL_UnlockMutex(mutex: *SDL_mutex): cint <cimport, nodecl> end
```

## SDL_DestroyMutex

```lua
global function SDL_DestroyMutex(mutex: *SDL_mutex) <cimport, nodecl> end
```

## SDL_CreateSemaphore

```lua
global SDL_semaphore: type <cimport, nodecl, forwarddecl, ctypedef> = @record{}
global SDL_sem: type = @SDL_semaphore
global function SDL_CreateSemaphore(initial_value: uint32): *SDL_sem <cimport, nodecl> end
```

## SDL_DestroySemaphore

```lua
global function SDL_DestroySemaphore(sem: *SDL_sem) <cimport, nodecl> end
```

## SDL_SemWait

```lua
global function SDL_SemWait(sem: *SDL_sem): cint <cimport, nodecl> end
```

## SDL_SemTryWait

```lua
global function SDL_SemTryWait(sem: *SDL_sem): cint <cimport, nodecl> end
```

## SDL_SemWaitTimeout

```lua
global function SDL_SemWaitTimeout(sem: *SDL_sem, ms: uint32): cint <cimport, nodecl> end
```

## SDL_SemPost

```lua
global function SDL_SemPost(sem: *SDL_sem): cint <cimport, nodecl> end
```

## SDL_SemValue

```lua
global function SDL_SemValue(sem: *SDL_sem): uint32 <cimport, nodecl> end
```

## SDL_CreateCond

```lua
global SDL_cond: type <cimport, nodecl, forwarddecl> = @record{}
global function SDL_CreateCond(): *SDL_cond <cimport, nodecl> end
```

## SDL_DestroyCond

```lua
global function SDL_DestroyCond(cond: *SDL_cond) <cimport, nodecl> end
```

## SDL_CondSignal

```lua
global function SDL_CondSignal(cond: *SDL_cond): cint <cimport, nodecl> end
```

## SDL_CondBroadcast

```lua
global function SDL_CondBroadcast(cond: *SDL_cond): cint <cimport, nodecl> end
```

## SDL_CondWait

```lua
global function SDL_CondWait(cond: *SDL_cond, mutex: *SDL_mutex): cint <cimport, nodecl> end
```

## SDL_CondWaitTimeout

```lua
global function SDL_CondWaitTimeout(cond: *SDL_cond, mutex: *SDL_mutex, ms: uint32): cint <cimport, nodecl> end
```

## SDL_CreateThread

```lua
global SDL_Thread: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_ThreadPriority: type <cimport, nodecl, using> = @enum(cint){
  SDL_THREAD_PRIORITY_LOW = 0,
  SDL_THREAD_PRIORITY_NORMAL = 1,
  SDL_THREAD_PRIORITY_HIGH = 2,
  SDL_THREAD_PRIORITY_TIME_CRITICAL = 3
}
global SDL_ThreadFunction: type <cimport, nodecl> = @function(pointer): cint
global function SDL_CreateThread(fn: SDL_ThreadFunction, name: cstring, data: pointer): *SDL_Thread <cimport, nodecl> end
```

## SDL_CreateThreadWithStackSize

```lua
global function SDL_CreateThreadWithStackSize(fn: SDL_ThreadFunction, name: cstring, stacksize: csize, data: pointer): *SDL_Thread <cimport, nodecl> end
```

## SDL_GetThreadName

```lua
global function SDL_GetThreadName(thread: *SDL_Thread): cstring <cimport, nodecl> end
```

## SDL_ThreadID

```lua
global function SDL_ThreadID(): culong <cimport, nodecl> end
```

## SDL_GetThreadID

```lua
global function SDL_GetThreadID(thread: *SDL_Thread): culong <cimport, nodecl> end
```

## SDL_SetThreadPriority

```lua
global function SDL_SetThreadPriority(priority: SDL_ThreadPriority): cint <cimport, nodecl> end
```

## SDL_WaitThread

```lua
global function SDL_WaitThread(thread: *SDL_Thread, status: *cint) <cimport, nodecl> end
```

## SDL_DetachThread

```lua
global function SDL_DetachThread(thread: *SDL_Thread) <cimport, nodecl> end
```

## SDL_TLSCreate

```lua
global function SDL_TLSCreate(): cuint <cimport, nodecl> end
```

## SDL_TLSGet

```lua
global function SDL_TLSGet(id: cuint): pointer <cimport, nodecl> end
```

## SDL_TLSSet

```lua
global function SDL_TLSSet(id: cuint, value: pointer, destructor: function(pointer)): cint <cimport, nodecl> end
```

## SDL_RWFromFile

```lua
global SDL_RWops: type <cimport, nodecl, forwarddecl> = @record{}
SDL_RWops = @record{
  size: function(*SDL_RWops): int64,
  seek: function(*SDL_RWops, int64, cint): int64,
  read: function(*SDL_RWops, pointer, csize, csize): csize,
  write: function(*SDL_RWops, pointer, csize, csize): csize,
  close: function(*SDL_RWops): cint,
  type: uint32,
  hidden: union{
    stdio: record{
      autoclose: SDL_bool,
      fp: *FILE
    },
    mem: record{
      base: *uint8,
      here: *uint8,
      stop: *uint8
    },
    unknown: record{
      data1: pointer,
      data2: pointer
    }
  }
}
global function SDL_RWFromFile(file: cstring, mode: cstring): *SDL_RWops <cimport, nodecl> end
```

## SDL_RWFromFP

```lua
global function SDL_RWFromFP(fp: *FILE, autoclose: SDL_bool): *SDL_RWops <cimport, nodecl> end
```

## SDL_RWFromMem

```lua
global function SDL_RWFromMem(mem: pointer, size: cint): *SDL_RWops <cimport, nodecl> end
```

## SDL_RWFromConstMem

```lua
global function SDL_RWFromConstMem(mem: pointer, size: cint): *SDL_RWops <cimport, nodecl> end
```

## SDL_AllocRW

```lua
global function SDL_AllocRW(): *SDL_RWops <cimport, nodecl> end
```

## SDL_FreeRW

```lua
global function SDL_FreeRW(area: *SDL_RWops) <cimport, nodecl> end
```

## SDL_RWsize

```lua
global function SDL_RWsize(context: *SDL_RWops): int64 <cimport, nodecl> end
```

## SDL_RWseek

```lua
global function SDL_RWseek(context: *SDL_RWops, offset: int64, whence: cint): int64 <cimport, nodecl> end
```

## SDL_RWtell

```lua
global function SDL_RWtell(context: *SDL_RWops): int64 <cimport, nodecl> end
```

## SDL_RWread

```lua
global function SDL_RWread(context: *SDL_RWops, ptr: pointer, size: csize, maxnum: csize): csize <cimport, nodecl> end
```

## SDL_RWwrite

```lua
global function SDL_RWwrite(context: *SDL_RWops, ptr: pointer, size: csize, num: csize): csize <cimport, nodecl> end
```

## SDL_RWclose

```lua
global function SDL_RWclose(context: *SDL_RWops): cint <cimport, nodecl> end
```

## SDL_LoadFile_RW

```lua
global function SDL_LoadFile_RW(src: *SDL_RWops, datasize: *csize, freesrc: cint): pointer <cimport, nodecl> end
```

## SDL_LoadFile

```lua
global function SDL_LoadFile(file: cstring, datasize: *csize): pointer <cimport, nodecl> end
```

## SDL_ReadU8

```lua
global function SDL_ReadU8(src: *SDL_RWops): uint8 <cimport, nodecl> end
```

## SDL_ReadLE16

```lua
global function SDL_ReadLE16(src: *SDL_RWops): uint16 <cimport, nodecl> end
```

## SDL_ReadBE16

```lua
global function SDL_ReadBE16(src: *SDL_RWops): uint16 <cimport, nodecl> end
```

## SDL_ReadLE32

```lua
global function SDL_ReadLE32(src: *SDL_RWops): uint32 <cimport, nodecl> end
```

## SDL_ReadBE32

```lua
global function SDL_ReadBE32(src: *SDL_RWops): uint32 <cimport, nodecl> end
```

## SDL_ReadLE64

```lua
global function SDL_ReadLE64(src: *SDL_RWops): uint64 <cimport, nodecl> end
```

## SDL_ReadBE64

```lua
global function SDL_ReadBE64(src: *SDL_RWops): uint64 <cimport, nodecl> end
```

## SDL_WriteU8

```lua
global function SDL_WriteU8(dst: *SDL_RWops, value: uint8): csize <cimport, nodecl> end
```

## SDL_WriteLE16

```lua
global function SDL_WriteLE16(dst: *SDL_RWops, value: uint16): csize <cimport, nodecl> end
```

## SDL_WriteBE16

```lua
global function SDL_WriteBE16(dst: *SDL_RWops, value: uint16): csize <cimport, nodecl> end
```

## SDL_WriteLE32

```lua
global function SDL_WriteLE32(dst: *SDL_RWops, value: uint32): csize <cimport, nodecl> end
```

## SDL_WriteBE32

```lua
global function SDL_WriteBE32(dst: *SDL_RWops, value: uint32): csize <cimport, nodecl> end
```

## SDL_WriteLE64

```lua
global function SDL_WriteLE64(dst: *SDL_RWops, value: uint64): csize <cimport, nodecl> end
```

## SDL_WriteBE64

```lua
global function SDL_WriteBE64(dst: *SDL_RWops, value: uint64): csize <cimport, nodecl> end
```

## SDL_GetNumAudioDrivers

```lua
global SDL_AudioSpec: type <cimport, nodecl> = @record{
  freq: cint,
  format: cushort,
  channels: uint8,
  silence: uint8,
  samples: uint16,
  padding: uint16,
  size: uint32,
  callback: SDL_AudioCallback,
  userdata: pointer
}
global SDL_AudioCVT: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_AudioFilter: type <cimport, nodecl> = @function(*SDL_AudioCVT, cushort)
SDL_AudioCVT = @record{
  needed: cint,
  src_format: cushort,
  dst_format: cushort,
  rate_incr: float64,
  buf: *uint8,
  len: cint,
  len_cvt: cint,
  len_mult: cint,
  len_ratio: float64,
  filters: [10]SDL_AudioFilter,
  filter_index: cint
}
global function SDL_GetNumAudioDrivers(): cint <cimport, nodecl> end
```

## SDL_GetAudioDriver

```lua
global function SDL_GetAudioDriver(index: cint): cstring <cimport, nodecl> end
```

## SDL_AudioInit

```lua
global function SDL_AudioInit(driver_name: cstring): cint <cimport, nodecl> end
```

## SDL_AudioQuit

```lua
global function SDL_AudioQuit() <cimport, nodecl> end
```

## SDL_GetCurrentAudioDriver

```lua
global function SDL_GetCurrentAudioDriver(): cstring <cimport, nodecl> end
```

## SDL_OpenAudio

```lua
global function SDL_OpenAudio(desired: *SDL_AudioSpec, obtained: *SDL_AudioSpec): cint <cimport, nodecl> end
```

## SDL_GetNumAudioDevices

```lua
global function SDL_GetNumAudioDevices(iscapture: cint): cint <cimport, nodecl> end
```

## SDL_GetAudioDeviceName

```lua
global function SDL_GetAudioDeviceName(index: cint, iscapture: cint): cstring <cimport, nodecl> end
```

## SDL_OpenAudioDevice

```lua
global function SDL_OpenAudioDevice(device: cstring, iscapture: cint, desired: *SDL_AudioSpec, obtained: *SDL_AudioSpec, allowed_changes: cint): cuint <cimport, nodecl> end
```

## SDL_GetAudioStatus

```lua
global function SDL_GetAudioStatus(): SDL_AudioStatus <cimport, nodecl> end
```

## SDL_GetAudioDeviceStatus

```lua
global function SDL_GetAudioDeviceStatus(dev: cuint): SDL_AudioStatus <cimport, nodecl> end
```

## SDL_PauseAudio

```lua
global function SDL_PauseAudio(pause_on: cint) <cimport, nodecl> end
```

## SDL_PauseAudioDevice

```lua
global function SDL_PauseAudioDevice(dev: cuint, pause_on: cint) <cimport, nodecl> end
```

## SDL_LoadWAV_RW

```lua
global function SDL_LoadWAV_RW(src: *SDL_RWops, freesrc: cint, spec: *SDL_AudioSpec, audio_buf: **uint8, audio_len: *uint32): *SDL_AudioSpec <cimport, nodecl> end
```

## SDL_FreeWAV

```lua
global function SDL_FreeWAV(audio_buf: *uint8) <cimport, nodecl> end
```

## SDL_BuildAudioCVT

```lua
global function SDL_BuildAudioCVT(cvt: *SDL_AudioCVT, src_format: cushort, src_channels: uint8, src_rate: cint, dst_format: cushort, dst_channels: uint8, dst_rate: cint): cint <cimport, nodecl> end
```

## SDL_ConvertAudio

```lua
global function SDL_ConvertAudio(cvt: *SDL_AudioCVT): cint <cimport, nodecl> end
```

## SDL_NewAudioStream

```lua
global SDL_AudioStream: type <cimport, nodecl, forwarddecl> = @record{}
global function SDL_NewAudioStream(src_format: cushort, src_channels: uint8, src_rate: cint, dst_format: cushort, dst_channels: uint8, dst_rate: cint): *SDL_AudioStream <cimport, nodecl> end
```

## SDL_AudioStreamPut

```lua
global function SDL_AudioStreamPut(stream: *SDL_AudioStream, buf: pointer, len: cint): cint <cimport, nodecl> end
```

## SDL_AudioStreamGet

```lua
global function SDL_AudioStreamGet(stream: *SDL_AudioStream, buf: pointer, len: cint): cint <cimport, nodecl> end
```

## SDL_AudioStreamAvailable

```lua
global function SDL_AudioStreamAvailable(stream: *SDL_AudioStream): cint <cimport, nodecl> end
```

## SDL_AudioStreamFlush

```lua
global function SDL_AudioStreamFlush(stream: *SDL_AudioStream): cint <cimport, nodecl> end
```

## SDL_AudioStreamClear

```lua
global function SDL_AudioStreamClear(stream: *SDL_AudioStream) <cimport, nodecl> end
```

## SDL_FreeAudioStream

```lua
global function SDL_FreeAudioStream(stream: *SDL_AudioStream) <cimport, nodecl> end
```

## SDL_MixAudio

```lua
global function SDL_MixAudio(dst: *uint8, src: *uint8, len: uint32, volume: cint) <cimport, nodecl> end
```

## SDL_MixAudioFormat

```lua
global function SDL_MixAudioFormat(dst: *uint8, src: *uint8, format: cushort, len: uint32, volume: cint) <cimport, nodecl> end
```

## SDL_QueueAudio

```lua
global function SDL_QueueAudio(dev: cuint, data: pointer, len: uint32): cint <cimport, nodecl> end
```

## SDL_DequeueAudio

```lua
global function SDL_DequeueAudio(dev: cuint, data: pointer, len: uint32): uint32 <cimport, nodecl> end
```

## SDL_GetQueuedAudioSize

```lua
global function SDL_GetQueuedAudioSize(dev: cuint): uint32 <cimport, nodecl> end
```

## SDL_ClearQueuedAudio

```lua
global function SDL_ClearQueuedAudio(dev: cuint) <cimport, nodecl> end
```

## SDL_LockAudio

```lua
global function SDL_LockAudio() <cimport, nodecl> end
```

## SDL_LockAudioDevice

```lua
global function SDL_LockAudioDevice(dev: cuint) <cimport, nodecl> end
```

## SDL_UnlockAudio

```lua
global function SDL_UnlockAudio() <cimport, nodecl> end
```

## SDL_UnlockAudioDevice

```lua
global function SDL_UnlockAudioDevice(dev: cuint) <cimport, nodecl> end
```

## SDL_CloseAudio

```lua
global function SDL_CloseAudio() <cimport, nodecl> end
```

## SDL_CloseAudioDevice

```lua
global function SDL_CloseAudioDevice(dev: cuint) <cimport, nodecl> end
```

## SDL_SetClipboardText

```lua
global function SDL_SetClipboardText(text: cstring): cint <cimport, nodecl> end
```

## SDL_GetClipboardText

```lua
global function SDL_GetClipboardText(): cstring <cimport, nodecl> end
```

## SDL_HasClipboardText

```lua
global function SDL_HasClipboardText(): SDL_bool <cimport, nodecl> end
```

## SDL_GetCPUCount

```lua
global function SDL_GetCPUCount(): cint <cimport, nodecl> end
```

## SDL_GetCPUCacheLineSize

```lua
global function SDL_GetCPUCacheLineSize(): cint <cimport, nodecl> end
```

## SDL_HasRDTSC

```lua
global function SDL_HasRDTSC(): SDL_bool <cimport, nodecl> end
```

## SDL_HasAltiVec

```lua
global function SDL_HasAltiVec(): SDL_bool <cimport, nodecl> end
```

## SDL_HasMMX

```lua
global function SDL_HasMMX(): SDL_bool <cimport, nodecl> end
```

## SDL_Has3DNow

```lua
global function SDL_Has3DNow(): SDL_bool <cimport, nodecl> end
```

## SDL_HasSSE

```lua
global function SDL_HasSSE(): SDL_bool <cimport, nodecl> end
```

## SDL_HasSSE2

```lua
global function SDL_HasSSE2(): SDL_bool <cimport, nodecl> end
```

## SDL_HasSSE3

```lua
global function SDL_HasSSE3(): SDL_bool <cimport, nodecl> end
```

## SDL_HasSSE41

```lua
global function SDL_HasSSE41(): SDL_bool <cimport, nodecl> end
```

## SDL_HasSSE42

```lua
global function SDL_HasSSE42(): SDL_bool <cimport, nodecl> end
```

## SDL_HasAVX

```lua
global function SDL_HasAVX(): SDL_bool <cimport, nodecl> end
```

## SDL_HasAVX2

```lua
global function SDL_HasAVX2(): SDL_bool <cimport, nodecl> end
```

## SDL_HasAVX512F

```lua
global function SDL_HasAVX512F(): SDL_bool <cimport, nodecl> end
```

## SDL_HasARMSIMD

```lua
global function SDL_HasARMSIMD(): SDL_bool <cimport, nodecl> end
```

## SDL_HasNEON

```lua
global function SDL_HasNEON(): SDL_bool <cimport, nodecl> end
```

## SDL_GetSystemRAM

```lua
global function SDL_GetSystemRAM(): cint <cimport, nodecl> end
```

## SDL_SIMDGetAlignment

```lua
global function SDL_SIMDGetAlignment(): csize <cimport, nodecl> end
```

## SDL_SIMDAlloc

```lua
global function SDL_SIMDAlloc(len: csize): pointer <cimport, nodecl> end
```

## SDL_SIMDRealloc

```lua
global function SDL_SIMDRealloc(mem: pointer, len: csize): pointer <cimport, nodecl> end
```

## SDL_SIMDFree

```lua
global function SDL_SIMDFree(ptr: pointer) <cimport, nodecl> end
```

## SDL_GetPixelFormatName

```lua
global SDL_Color: type <cimport, nodecl> = @record{
  r: uint8,
  g: uint8,
  b: uint8,
  a: uint8
}
global SDL_Palette: type <cimport, nodecl> = @record{
  ncolors: cint,
  colors: *SDL_Color,
  version: uint32,
  refcount: cint
}
global SDL_PixelFormat: type <cimport, nodecl, forwarddecl> = @record{}
SDL_PixelFormat = @record{
  format: uint32,
  palette: *SDL_Palette,
  BitsPerPixel: uint8,
  BytesPerPixel: uint8,
  padding: [2]uint8,
  Rmask: uint32,
  Gmask: uint32,
  Bmask: uint32,
  Amask: uint32,
  Rloss: uint8,
  Gloss: uint8,
  Bloss: uint8,
  Aloss: uint8,
  Rshift: uint8,
  Gshift: uint8,
  Bshift: uint8,
  Ashift: uint8,
  refcount: cint,
  next: *SDL_PixelFormat
}
global function SDL_GetPixelFormatName(format: uint32): cstring <cimport, nodecl> end
```

## SDL_PixelFormatEnumToMasks

```lua
global function SDL_PixelFormatEnumToMasks(format: uint32, bpp: *cint, Rmask: *uint32, Gmask: *uint32, Bmask: *uint32, Amask: *uint32): SDL_bool <cimport, nodecl> end
```

## SDL_MasksToPixelFormatEnum

```lua
global function SDL_MasksToPixelFormatEnum(bpp: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): uint32 <cimport, nodecl> end
```

## SDL_AllocFormat

```lua
global function SDL_AllocFormat(pixel_format: uint32): *SDL_PixelFormat <cimport, nodecl> end
```

## SDL_FreeFormat

```lua
global function SDL_FreeFormat(format: *SDL_PixelFormat) <cimport, nodecl> end
```

## SDL_AllocPalette

```lua
global function SDL_AllocPalette(ncolors: cint): *SDL_Palette <cimport, nodecl> end
```

## SDL_SetPixelFormatPalette

```lua
global function SDL_SetPixelFormatPalette(format: *SDL_PixelFormat, palette: *SDL_Palette): cint <cimport, nodecl> end
```

## SDL_SetPaletteColors

```lua
global function SDL_SetPaletteColors(palette: *SDL_Palette, colors: *SDL_Color, firstcolor: cint, ncolors: cint): cint <cimport, nodecl> end
```

## SDL_FreePalette

```lua
global function SDL_FreePalette(palette: *SDL_Palette) <cimport, nodecl> end
```

## SDL_MapRGB

```lua
global function SDL_MapRGB(format: *SDL_PixelFormat, r: uint8, g: uint8, b: uint8): uint32 <cimport, nodecl> end
```

## SDL_MapRGBA

```lua
global function SDL_MapRGBA(format: *SDL_PixelFormat, r: uint8, g: uint8, b: uint8, a: uint8): uint32 <cimport, nodecl> end
```

## SDL_GetRGB

```lua
global function SDL_GetRGB(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8) <cimport, nodecl> end
```

## SDL_GetRGBA

```lua
global function SDL_GetRGBA(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8, a: *uint8) <cimport, nodecl> end
```

## SDL_CalculateGammaRamp

```lua
global function SDL_CalculateGammaRamp(gamma: float32, ramp: *uint16) <cimport, nodecl> end
```

## SDL_PointInRect

```lua
global SDL_Point: type <cimport, nodecl> = @record{
  x: cint,
  y: cint
}
global SDL_FPoint: type <cimport, nodecl> = @record{
  x: float32,
  y: float32
}
global SDL_Rect: type <cimport, nodecl> = @record{
  x: cint,
  y: cint,
  w: cint,
  h: cint
}
global SDL_FRect: type <cimport, nodecl> = @record{
  x: float32,
  y: float32,
  w: float32,
  h: float32
}
global function SDL_PointInRect(p: *SDL_Point, r: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_RectEmpty

```lua
global function SDL_RectEmpty(r: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_RectEquals

```lua
global function SDL_RectEquals(a: *SDL_Rect, b: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_HasIntersection

```lua
global function SDL_HasIntersection(A: *SDL_Rect, B: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_IntersectRect

```lua
global function SDL_IntersectRect(A: *SDL_Rect, B: *SDL_Rect, result: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_UnionRect

```lua
global function SDL_UnionRect(A: *SDL_Rect, B: *SDL_Rect, result: *SDL_Rect) <cimport, nodecl> end
```

## SDL_EnclosePoints

```lua
global function SDL_EnclosePoints(points: *SDL_Point, count: cint, clip: *SDL_Rect, result: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_IntersectRectAndLine

```lua
global function SDL_IntersectRectAndLine(rect: *SDL_Rect, X1: *cint, Y1: *cint, X2: *cint, Y2: *cint): SDL_bool <cimport, nodecl> end
```

## SDL_ComposeCustomBlendMode

```lua
global function SDL_ComposeCustomBlendMode(srcColorFactor: SDL_BlendFactor, dstColorFactor: SDL_BlendFactor, colorOperation: SDL_BlendOperation, srcAlphaFactor: SDL_BlendFactor, dstAlphaFactor: SDL_BlendFactor, alphaOperation: SDL_BlendOperation): SDL_BlendMode <cimport, nodecl> end
```

## SDL_CreateRGBSurface

```lua
global SDL_BlitMap: type <cimport, nodecl, forwarddecl, ctypedef> = @record{}
global SDL_Surface: type <cimport, nodecl> = @record{
  flags: uint32,
  format: *SDL_PixelFormat,
  w: cint,
  h: cint,
  pitch: cint,
  pixels: pointer,
  userdata: pointer,
  locked: cint,
  list_blitmap: pointer,
  clip_rect: SDL_Rect,
  map: *SDL_BlitMap,
  refcount: cint
}
global SDL_blit: type <cimport, nodecl> = @function(*SDL_Surface, *SDL_Rect, *SDL_Surface, *SDL_Rect): cint
global SDL_YUV_CONVERSION_MODE: type <cimport, nodecl, using> = @enum(cint){
  SDL_YUV_CONVERSION_JPEG = 0,
  SDL_YUV_CONVERSION_BT601 = 1,
  SDL_YUV_CONVERSION_BT709 = 2,
  SDL_YUV_CONVERSION_AUTOMATIC = 3
}
global function SDL_CreateRGBSurface(flags: uint32, width: cint, height: cint, depth: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_CreateRGBSurfaceWithFormat

```lua
global function SDL_CreateRGBSurfaceWithFormat(flags: uint32, width: cint, height: cint, depth: cint, format: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_CreateRGBSurfaceFrom

```lua
global function SDL_CreateRGBSurfaceFrom(pixels: pointer, width: cint, height: cint, depth: cint, pitch: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_CreateRGBSurfaceWithFormatFrom

```lua
global function SDL_CreateRGBSurfaceWithFormatFrom(pixels: pointer, width: cint, height: cint, depth: cint, pitch: cint, format: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_FreeSurface

```lua
global function SDL_FreeSurface(surface: *SDL_Surface) <cimport, nodecl> end
```

## SDL_SetSurfacePalette

```lua
global function SDL_SetSurfacePalette(surface: *SDL_Surface, palette: *SDL_Palette): cint <cimport, nodecl> end
```

## SDL_LockSurface

```lua
global function SDL_LockSurface(surface: *SDL_Surface): cint <cimport, nodecl> end
```

## SDL_UnlockSurface

```lua
global function SDL_UnlockSurface(surface: *SDL_Surface) <cimport, nodecl> end
```

## SDL_LoadBMP_RW

```lua
global function SDL_LoadBMP_RW(src: *SDL_RWops, freesrc: cint): *SDL_Surface <cimport, nodecl> end
```

## SDL_SaveBMP_RW

```lua
global function SDL_SaveBMP_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint): cint <cimport, nodecl> end
```

## SDL_SetSurfaceRLE

```lua
global function SDL_SetSurfaceRLE(surface: *SDL_Surface, flag: cint): cint <cimport, nodecl> end
```

## SDL_HasSurfaceRLE

```lua
global function SDL_HasSurfaceRLE(surface: *SDL_Surface): SDL_bool <cimport, nodecl> end
```

## SDL_SetColorKey

```lua
global function SDL_SetColorKey(surface: *SDL_Surface, flag: cint, key: uint32): cint <cimport, nodecl> end
```

## SDL_HasColorKey

```lua
global function SDL_HasColorKey(surface: *SDL_Surface): SDL_bool <cimport, nodecl> end
```

## SDL_GetColorKey

```lua
global function SDL_GetColorKey(surface: *SDL_Surface, key: *uint32): cint <cimport, nodecl> end
```

## SDL_SetSurfaceColorMod

```lua
global function SDL_SetSurfaceColorMod(surface: *SDL_Surface, r: uint8, g: uint8, b: uint8): cint <cimport, nodecl> end
```

## SDL_GetSurfaceColorMod

```lua
global function SDL_GetSurfaceColorMod(surface: *SDL_Surface, r: *uint8, g: *uint8, b: *uint8): cint <cimport, nodecl> end
```

## SDL_SetSurfaceAlphaMod

```lua
global function SDL_SetSurfaceAlphaMod(surface: *SDL_Surface, alpha: uint8): cint <cimport, nodecl> end
```

## SDL_GetSurfaceAlphaMod

```lua
global function SDL_GetSurfaceAlphaMod(surface: *SDL_Surface, alpha: *uint8): cint <cimport, nodecl> end
```

## SDL_SetSurfaceBlendMode

```lua
global function SDL_SetSurfaceBlendMode(surface: *SDL_Surface, blendMode: SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_GetSurfaceBlendMode

```lua
global function SDL_GetSurfaceBlendMode(surface: *SDL_Surface, blendMode: *SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_SetClipRect

```lua
global function SDL_SetClipRect(surface: *SDL_Surface, rect: *SDL_Rect): SDL_bool <cimport, nodecl> end
```

## SDL_GetClipRect

```lua
global function SDL_GetClipRect(surface: *SDL_Surface, rect: *SDL_Rect) <cimport, nodecl> end
```

## SDL_DuplicateSurface

```lua
global function SDL_DuplicateSurface(surface: *SDL_Surface): *SDL_Surface <cimport, nodecl> end
```

## SDL_ConvertSurface

```lua
global function SDL_ConvertSurface(src: *SDL_Surface, fmt: *SDL_PixelFormat, flags: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_ConvertSurfaceFormat

```lua
global function SDL_ConvertSurfaceFormat(src: *SDL_Surface, pixel_format: uint32, flags: uint32): *SDL_Surface <cimport, nodecl> end
```

## SDL_ConvertPixels

```lua
global function SDL_ConvertPixels(width: cint, height: cint, src_format: uint32, src: pointer, src_pitch: cint, dst_format: uint32, dst: pointer, dst_pitch: cint): cint <cimport, nodecl> end
```

## SDL_FillRect

```lua
global function SDL_FillRect(dst: *SDL_Surface, rect: *SDL_Rect, color: uint32): cint <cimport, nodecl> end
```

## SDL_FillRects

```lua
global function SDL_FillRects(dst: *SDL_Surface, rects: *SDL_Rect, count: cint, color: uint32): cint <cimport, nodecl> end
```

## SDL_UpperBlit

```lua
global function SDL_UpperBlit(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_LowerBlit

```lua
global function SDL_LowerBlit(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_SoftStretch

```lua
global function SDL_SoftStretch(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_UpperBlitScaled

```lua
global function SDL_UpperBlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_LowerBlitScaled

```lua
global function SDL_LowerBlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_SetYUVConversionMode

```lua
global function SDL_SetYUVConversionMode(mode: SDL_YUV_CONVERSION_MODE) <cimport, nodecl> end
```

## SDL_GetYUVConversionMode

```lua
global function SDL_GetYUVConversionMode(): SDL_YUV_CONVERSION_MODE <cimport, nodecl> end
```

## SDL_GetYUVConversionModeForResolution

```lua
global function SDL_GetYUVConversionModeForResolution(width: cint, height: cint): SDL_YUV_CONVERSION_MODE <cimport, nodecl> end
```

## SDL_GetNumVideoDrivers

```lua
global SDL_DisplayMode: type <cimport, nodecl> = @record{
  format: uint32,
  w: cint,
  h: cint,
  refresh_rate: cint,
  driverdata: pointer
}
global SDL_Window: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_WindowFlags: type <cimport, nodecl, using> = @enum(cint){
  SDL_WINDOW_FULLSCREEN = 1,
  SDL_WINDOW_OPENGL = 2,
  SDL_WINDOW_SHOWN = 4,
  SDL_WINDOW_HIDDEN = 8,
  SDL_WINDOW_BORDERLESS = 16,
  SDL_WINDOW_RESIZABLE = 32,
  SDL_WINDOW_MINIMIZED = 64,
  SDL_WINDOW_MAXIMIZED = 128,
  SDL_WINDOW_INPUT_GRABBED = 256,
  SDL_WINDOW_INPUT_FOCUS = 512,
  SDL_WINDOW_MOUSE_FOCUS = 1024,
  SDL_WINDOW_FULLSCREEN_DESKTOP = 4097,
  SDL_WINDOW_FOREIGN = 2048,
  SDL_WINDOW_ALLOW_HIGHDPI = 8192,
  SDL_WINDOW_MOUSE_CAPTURE = 16384,
  SDL_WINDOW_ALWAYS_ON_TOP = 32768,
  SDL_WINDOW_SKIP_TASKBAR = 65536,
  SDL_WINDOW_UTILITY = 131072,
  SDL_WINDOW_TOOLTIP = 262144,
  SDL_WINDOW_POPUP_MENU = 524288,
  SDL_WINDOW_VULKAN = 268435456,
  SDL_WINDOW_METAL = 536870912
}
global SDL_WindowEventID: type <cimport, nodecl, using> = @enum(cint){
  SDL_WINDOWEVENT_NONE = 0,
  SDL_WINDOWEVENT_SHOWN = 1,
  SDL_WINDOWEVENT_HIDDEN = 2,
  SDL_WINDOWEVENT_EXPOSED = 3,
  SDL_WINDOWEVENT_MOVED = 4,
  SDL_WINDOWEVENT_RESIZED = 5,
  SDL_WINDOWEVENT_SIZE_CHANGED = 6,
  SDL_WINDOWEVENT_MINIMIZED = 7,
  SDL_WINDOWEVENT_MAXIMIZED = 8,
  SDL_WINDOWEVENT_RESTORED = 9,
  SDL_WINDOWEVENT_ENTER = 10,
  SDL_WINDOWEVENT_LEAVE = 11,
  SDL_WINDOWEVENT_FOCUS_GAINED = 12,
  SDL_WINDOWEVENT_FOCUS_LOST = 13,
  SDL_WINDOWEVENT_CLOSE = 14,
  SDL_WINDOWEVENT_TAKE_FOCUS = 15,
  SDL_WINDOWEVENT_HIT_TEST = 16
}
global SDL_DisplayEventID: type <cimport, nodecl, using> = @enum(cint){
  SDL_DISPLAYEVENT_NONE = 0,
  SDL_DISPLAYEVENT_ORIENTATION = 1,
  SDL_DISPLAYEVENT_CONNECTED = 2,
  SDL_DISPLAYEVENT_DISCONNECTED = 3
}
global SDL_DisplayOrientation: type <cimport, nodecl, using> = @enum(cint){
  SDL_ORIENTATION_UNKNOWN = 0,
  SDL_ORIENTATION_LANDSCAPE = 1,
  SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2,
  SDL_ORIENTATION_PORTRAIT = 3,
  SDL_ORIENTATION_PORTRAIT_FLIPPED = 4
}
global SDL_GLContext: type = @pointer
global SDL_GLattr: type <cimport, nodecl, using> = @enum(cint){
  SDL_GL_RED_SIZE = 0,
  SDL_GL_GREEN_SIZE = 1,
  SDL_GL_BLUE_SIZE = 2,
  SDL_GL_ALPHA_SIZE = 3,
  SDL_GL_BUFFER_SIZE = 4,
  SDL_GL_DOUBLEBUFFER = 5,
  SDL_GL_DEPTH_SIZE = 6,
  SDL_GL_STENCIL_SIZE = 7,
  SDL_GL_ACCUM_RED_SIZE = 8,
  SDL_GL_ACCUM_GREEN_SIZE = 9,
  SDL_GL_ACCUM_BLUE_SIZE = 10,
  SDL_GL_ACCUM_ALPHA_SIZE = 11,
  SDL_GL_STEREO = 12,
  SDL_GL_MULTISAMPLEBUFFERS = 13,
  SDL_GL_MULTISAMPLESAMPLES = 14,
  SDL_GL_ACCELERATED_VISUAL = 15,
  SDL_GL_RETAINED_BACKING = 16,
  SDL_GL_CONTEXT_MAJOR_VERSION = 17,
  SDL_GL_CONTEXT_MINOR_VERSION = 18,
  SDL_GL_CONTEXT_EGL = 19,
  SDL_GL_CONTEXT_FLAGS = 20,
  SDL_GL_CONTEXT_PROFILE_MASK = 21,
  SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22,
  SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23,
  SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24,
  SDL_GL_CONTEXT_RESET_NOTIFICATION = 25,
  SDL_GL_CONTEXT_NO_ERROR = 26
}
global SDL_GLprofile: type <cimport, nodecl, using> = @enum(cint){
  SDL_GL_CONTEXT_PROFILE_CORE = 1,
  SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
  SDL_GL_CONTEXT_PROFILE_ES = 4
}
global SDL_GLcontextFlag: type <cimport, nodecl, using> = @enum(cint){
  SDL_GL_CONTEXT_DEBUG_FLAG = 1,
  SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
  SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
  SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8
}
global SDL_GLcontextReleaseFlag: type <cimport, nodecl, using> = @enum(cint){
  SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0,
  SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1
}
global SDL_GLContextResetNotification: type <cimport, nodecl, using> = @enum(cint){
  SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0,
  SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1
}
global function SDL_GetNumVideoDrivers(): cint <cimport, nodecl> end
```

## SDL_GetVideoDriver

```lua
global function SDL_GetVideoDriver(index: cint): cstring <cimport, nodecl> end
```

## SDL_VideoInit

```lua
global function SDL_VideoInit(driver_name: cstring): cint <cimport, nodecl> end
```

## SDL_VideoQuit

```lua
global function SDL_VideoQuit() <cimport, nodecl> end
```

## SDL_GetCurrentVideoDriver

```lua
global function SDL_GetCurrentVideoDriver(): cstring <cimport, nodecl> end
```

## SDL_GetNumVideoDisplays

```lua
global function SDL_GetNumVideoDisplays(): cint <cimport, nodecl> end
```

## SDL_GetDisplayName

```lua
global function SDL_GetDisplayName(displayIndex: cint): cstring <cimport, nodecl> end
```

## SDL_GetDisplayBounds

```lua
global function SDL_GetDisplayBounds(displayIndex: cint, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_GetDisplayUsableBounds

```lua
global function SDL_GetDisplayUsableBounds(displayIndex: cint, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_GetDisplayDPI

```lua
global function SDL_GetDisplayDPI(displayIndex: cint, ddpi: *float32, hdpi: *float32, vdpi: *float32): cint <cimport, nodecl> end
```

## SDL_GetDisplayOrientation

```lua
global function SDL_GetDisplayOrientation(displayIndex: cint): SDL_DisplayOrientation <cimport, nodecl> end
```

## SDL_GetNumDisplayModes

```lua
global function SDL_GetNumDisplayModes(displayIndex: cint): cint <cimport, nodecl> end
```

## SDL_GetDisplayMode

```lua
global function SDL_GetDisplayMode(displayIndex: cint, modeIndex: cint, mode: *SDL_DisplayMode): cint <cimport, nodecl> end
```

## SDL_GetDesktopDisplayMode

```lua
global function SDL_GetDesktopDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode): cint <cimport, nodecl> end
```

## SDL_GetCurrentDisplayMode

```lua
global function SDL_GetCurrentDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode): cint <cimport, nodecl> end
```

## SDL_GetClosestDisplayMode

```lua
global function SDL_GetClosestDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode, closest: *SDL_DisplayMode): *SDL_DisplayMode <cimport, nodecl> end
```

## SDL_GetWindowDisplayIndex

```lua
global function SDL_GetWindowDisplayIndex(window: *SDL_Window): cint <cimport, nodecl> end
```

## SDL_SetWindowDisplayMode

```lua
global function SDL_SetWindowDisplayMode(window: *SDL_Window, mode: *SDL_DisplayMode): cint <cimport, nodecl> end
```

## SDL_GetWindowDisplayMode

```lua
global function SDL_GetWindowDisplayMode(window: *SDL_Window, mode: *SDL_DisplayMode): cint <cimport, nodecl> end
```

## SDL_GetWindowPixelFormat

```lua
global function SDL_GetWindowPixelFormat(window: *SDL_Window): uint32 <cimport, nodecl> end
```

## SDL_CreateWindow

```lua
global function SDL_CreateWindow(title: cstring, x: cint, y: cint, w: cint, h: cint, flags: uint32): *SDL_Window <cimport, nodecl> end
```

## SDL_CreateWindowFrom

```lua
global function SDL_CreateWindowFrom(data: pointer): *SDL_Window <cimport, nodecl> end
```

## SDL_GetWindowID

```lua
global function SDL_GetWindowID(window: *SDL_Window): uint32 <cimport, nodecl> end
```

## SDL_GetWindowFromID

```lua
global function SDL_GetWindowFromID(id: uint32): *SDL_Window <cimport, nodecl> end
```

## SDL_GetWindowFlags

```lua
global function SDL_GetWindowFlags(window: *SDL_Window): uint32 <cimport, nodecl> end
```

## SDL_SetWindowTitle

```lua
global function SDL_SetWindowTitle(window: *SDL_Window, title: cstring) <cimport, nodecl> end
```

## SDL_GetWindowTitle

```lua
global function SDL_GetWindowTitle(window: *SDL_Window): cstring <cimport, nodecl> end
```

## SDL_SetWindowIcon

```lua
global function SDL_SetWindowIcon(window: *SDL_Window, icon: *SDL_Surface) <cimport, nodecl> end
```

## SDL_SetWindowData

```lua
global function SDL_SetWindowData(window: *SDL_Window, name: cstring, userdata: pointer): pointer <cimport, nodecl> end
```

## SDL_GetWindowData

```lua
global function SDL_GetWindowData(window: *SDL_Window, name: cstring): pointer <cimport, nodecl> end
```

## SDL_SetWindowPosition

```lua
global function SDL_SetWindowPosition(window: *SDL_Window, x: cint, y: cint) <cimport, nodecl> end
```

## SDL_GetWindowPosition

```lua
global function SDL_GetWindowPosition(window: *SDL_Window, x: *cint, y: *cint) <cimport, nodecl> end
```

## SDL_SetWindowSize

```lua
global function SDL_SetWindowSize(window: *SDL_Window, w: cint, h: cint) <cimport, nodecl> end
```

## SDL_GetWindowSize

```lua
global function SDL_GetWindowSize(window: *SDL_Window, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_GetWindowBordersSize

```lua
global function SDL_GetWindowBordersSize(window: *SDL_Window, top: *cint, left: *cint, bottom: *cint, right: *cint): cint <cimport, nodecl> end
```

## SDL_SetWindowMinimumSize

```lua
global function SDL_SetWindowMinimumSize(window: *SDL_Window, min_w: cint, min_h: cint) <cimport, nodecl> end
```

## SDL_GetWindowMinimumSize

```lua
global function SDL_GetWindowMinimumSize(window: *SDL_Window, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_SetWindowMaximumSize

```lua
global function SDL_SetWindowMaximumSize(window: *SDL_Window, max_w: cint, max_h: cint) <cimport, nodecl> end
```

## SDL_GetWindowMaximumSize

```lua
global function SDL_GetWindowMaximumSize(window: *SDL_Window, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_SetWindowBordered

```lua
global function SDL_SetWindowBordered(window: *SDL_Window, bordered: SDL_bool) <cimport, nodecl> end
```

## SDL_SetWindowResizable

```lua
global function SDL_SetWindowResizable(window: *SDL_Window, resizable: SDL_bool) <cimport, nodecl> end
```

## SDL_ShowWindow

```lua
global function SDL_ShowWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_HideWindow

```lua
global function SDL_HideWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_RaiseWindow

```lua
global function SDL_RaiseWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_MaximizeWindow

```lua
global function SDL_MaximizeWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_MinimizeWindow

```lua
global function SDL_MinimizeWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_RestoreWindow

```lua
global function SDL_RestoreWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_SetWindowFullscreen

```lua
global function SDL_SetWindowFullscreen(window: *SDL_Window, flags: uint32): cint <cimport, nodecl> end
```

## SDL_GetWindowSurface

```lua
global function SDL_GetWindowSurface(window: *SDL_Window): *SDL_Surface <cimport, nodecl> end
```

## SDL_UpdateWindowSurface

```lua
global function SDL_UpdateWindowSurface(window: *SDL_Window): cint <cimport, nodecl> end
```

## SDL_UpdateWindowSurfaceRects

```lua
global function SDL_UpdateWindowSurfaceRects(window: *SDL_Window, rects: *SDL_Rect, numrects: cint): cint <cimport, nodecl> end
```

## SDL_SetWindowGrab

```lua
global function SDL_SetWindowGrab(window: *SDL_Window, grabbed: SDL_bool) <cimport, nodecl> end
```

## SDL_GetWindowGrab

```lua
global function SDL_GetWindowGrab(window: *SDL_Window): SDL_bool <cimport, nodecl> end
```

## SDL_GetGrabbedWindow

```lua
global function SDL_GetGrabbedWindow(): *SDL_Window <cimport, nodecl> end
```

## SDL_SetWindowBrightness

```lua
global function SDL_SetWindowBrightness(window: *SDL_Window, brightness: float32): cint <cimport, nodecl> end
```

## SDL_GetWindowBrightness

```lua
global function SDL_GetWindowBrightness(window: *SDL_Window): float32 <cimport, nodecl> end
```

## SDL_SetWindowOpacity

```lua
global function SDL_SetWindowOpacity(window: *SDL_Window, opacity: float32): cint <cimport, nodecl> end
```

## SDL_GetWindowOpacity

```lua
global function SDL_GetWindowOpacity(window: *SDL_Window, out_opacity: *float32): cint <cimport, nodecl> end
```

## SDL_SetWindowModalFor

```lua
global function SDL_SetWindowModalFor(modal_window: *SDL_Window, parent_window: *SDL_Window): cint <cimport, nodecl> end
```

## SDL_SetWindowInputFocus

```lua
global function SDL_SetWindowInputFocus(window: *SDL_Window): cint <cimport, nodecl> end
```

## SDL_SetWindowGammaRamp

```lua
global function SDL_SetWindowGammaRamp(window: *SDL_Window, red: *uint16, green: *uint16, blue: *uint16): cint <cimport, nodecl> end
```

## SDL_GetWindowGammaRamp

```lua
global function SDL_GetWindowGammaRamp(window: *SDL_Window, red: *uint16, green: *uint16, blue: *uint16): cint <cimport, nodecl> end
```

## SDL_SetWindowHitTest

```lua
global function SDL_SetWindowHitTest(window: *SDL_Window, callback: SDL_HitTest, callback_data: pointer): cint <cimport, nodecl> end
```

## SDL_DestroyWindow

```lua
global function SDL_DestroyWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_IsScreenSaverEnabled

```lua
global function SDL_IsScreenSaverEnabled(): SDL_bool <cimport, nodecl> end
```

## SDL_EnableScreenSaver

```lua
global function SDL_EnableScreenSaver() <cimport, nodecl> end
```

## SDL_DisableScreenSaver

```lua
global function SDL_DisableScreenSaver() <cimport, nodecl> end
```

## SDL_GL_LoadLibrary

```lua
global function SDL_GL_LoadLibrary(path: cstring): cint <cimport, nodecl> end
```

## SDL_GL_GetProcAddress

```lua
global function SDL_GL_GetProcAddress(proc: cstring): pointer <cimport, nodecl> end
```

## SDL_GL_UnloadLibrary

```lua
global function SDL_GL_UnloadLibrary() <cimport, nodecl> end
```

## SDL_GL_ExtensionSupported

```lua
global function SDL_GL_ExtensionSupported(extension: cstring): SDL_bool <cimport, nodecl> end
```

## SDL_GL_ResetAttributes

```lua
global function SDL_GL_ResetAttributes() <cimport, nodecl> end
```

## SDL_GL_SetAttribute

```lua
global function SDL_GL_SetAttribute(attr: SDL_GLattr, value: cint): cint <cimport, nodecl> end
```

## SDL_GL_GetAttribute

```lua
global function SDL_GL_GetAttribute(attr: SDL_GLattr, value: *cint): cint <cimport, nodecl> end
```

## SDL_GL_CreateContext

```lua
global function SDL_GL_CreateContext(window: *SDL_Window): SDL_GLContext <cimport, nodecl> end
```

## SDL_GL_MakeCurrent

```lua
global function SDL_GL_MakeCurrent(window: *SDL_Window, context: SDL_GLContext): cint <cimport, nodecl> end
```

## SDL_GL_GetCurrentWindow

```lua
global function SDL_GL_GetCurrentWindow(): *SDL_Window <cimport, nodecl> end
```

## SDL_GL_GetCurrentContext

```lua
global function SDL_GL_GetCurrentContext(): SDL_GLContext <cimport, nodecl> end
```

## SDL_GL_GetDrawableSize

```lua
global function SDL_GL_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_GL_SetSwapInterval

```lua
global function SDL_GL_SetSwapInterval(interval: cint): cint <cimport, nodecl> end
```

## SDL_GL_GetSwapInterval

```lua
global function SDL_GL_GetSwapInterval(): cint <cimport, nodecl> end
```

## SDL_GL_SwapWindow

```lua
global function SDL_GL_SwapWindow(window: *SDL_Window) <cimport, nodecl> end
```

## SDL_GL_DeleteContext

```lua
global function SDL_GL_DeleteContext(context: SDL_GLContext) <cimport, nodecl> end
```

## SDL_GetKeyboardFocus

```lua
global SDL_Keysym: type <cimport, nodecl> = @record{
  scancode: SDL_Scancode,
  sym: cint,
  mod: uint16,
  unused: uint32
}
global function SDL_GetKeyboardFocus(): *SDL_Window <cimport, nodecl> end
```

## SDL_GetKeyboardState

```lua
global function SDL_GetKeyboardState(numkeys: *cint): *uint8 <cimport, nodecl> end
```

## SDL_GetModState

```lua
global function SDL_GetModState(): SDL_Keymod <cimport, nodecl> end
```

## SDL_SetModState

```lua
global function SDL_SetModState(modstate: SDL_Keymod) <cimport, nodecl> end
```

## SDL_GetKeyFromScancode

```lua
global function SDL_GetKeyFromScancode(scancode: SDL_Scancode): cint <cimport, nodecl> end
```

## SDL_GetScancodeFromKey

```lua
global function SDL_GetScancodeFromKey(key: cint): SDL_Scancode <cimport, nodecl> end
```

## SDL_GetScancodeName

```lua
global function SDL_GetScancodeName(scancode: SDL_Scancode): cstring <cimport, nodecl> end
```

## SDL_GetScancodeFromName

```lua
global function SDL_GetScancodeFromName(name: cstring): SDL_Scancode <cimport, nodecl> end
```

## SDL_GetKeyName

```lua
global function SDL_GetKeyName(key: cint): cstring <cimport, nodecl> end
```

## SDL_GetKeyFromName

```lua
global function SDL_GetKeyFromName(name: cstring): cint <cimport, nodecl> end
```

## SDL_StartTextInput

```lua
global function SDL_StartTextInput() <cimport, nodecl> end
```

## SDL_IsTextInputActive

```lua
global function SDL_IsTextInputActive(): SDL_bool <cimport, nodecl> end
```

## SDL_StopTextInput

```lua
global function SDL_StopTextInput() <cimport, nodecl> end
```

## SDL_SetTextInputRect

```lua
global function SDL_SetTextInputRect(rect: *SDL_Rect) <cimport, nodecl> end
```

## SDL_HasScreenKeyboardSupport

```lua
global function SDL_HasScreenKeyboardSupport(): SDL_bool <cimport, nodecl> end
```

## SDL_IsScreenKeyboardShown

```lua
global function SDL_IsScreenKeyboardShown(window: *SDL_Window): SDL_bool <cimport, nodecl> end
```

## SDL_GetMouseFocus

```lua
global SDL_Cursor: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_SystemCursor: type <cimport, nodecl, using> = @enum(cint){
  SDL_SYSTEM_CURSOR_ARROW = 0,
  SDL_SYSTEM_CURSOR_IBEAM = 1,
  SDL_SYSTEM_CURSOR_WAIT = 2,
  SDL_SYSTEM_CURSOR_CROSSHAIR = 3,
  SDL_SYSTEM_CURSOR_WAITARROW = 4,
  SDL_SYSTEM_CURSOR_SIZENWSE = 5,
  SDL_SYSTEM_CURSOR_SIZENESW = 6,
  SDL_SYSTEM_CURSOR_SIZEWE = 7,
  SDL_SYSTEM_CURSOR_SIZENS = 8,
  SDL_SYSTEM_CURSOR_SIZEALL = 9,
  SDL_SYSTEM_CURSOR_NO = 10,
  SDL_SYSTEM_CURSOR_HAND = 11,
  SDL_NUM_SYSTEM_CURSORS = 12
}
global SDL_MouseWheelDirection: type <cimport, nodecl, using> = @enum(cint){
  SDL_MOUSEWHEEL_NORMAL = 0,
  SDL_MOUSEWHEEL_FLIPPED = 1
}
global function SDL_GetMouseFocus(): *SDL_Window <cimport, nodecl> end
```

## SDL_GetMouseState

```lua
global function SDL_GetMouseState(x: *cint, y: *cint): uint32 <cimport, nodecl> end
```

## SDL_GetGlobalMouseState

```lua
global function SDL_GetGlobalMouseState(x: *cint, y: *cint): uint32 <cimport, nodecl> end
```

## SDL_GetRelativeMouseState

```lua
global function SDL_GetRelativeMouseState(x: *cint, y: *cint): uint32 <cimport, nodecl> end
```

## SDL_WarpMouseInWindow

```lua
global function SDL_WarpMouseInWindow(window: *SDL_Window, x: cint, y: cint) <cimport, nodecl> end
```

## SDL_WarpMouseGlobal

```lua
global function SDL_WarpMouseGlobal(x: cint, y: cint): cint <cimport, nodecl> end
```

## SDL_SetRelativeMouseMode

```lua
global function SDL_SetRelativeMouseMode(enabled: SDL_bool): cint <cimport, nodecl> end
```

## SDL_CaptureMouse

```lua
global function SDL_CaptureMouse(enabled: SDL_bool): cint <cimport, nodecl> end
```

## SDL_GetRelativeMouseMode

```lua
global function SDL_GetRelativeMouseMode(): SDL_bool <cimport, nodecl> end
```

## SDL_CreateCursor

```lua
global function SDL_CreateCursor(data: *uint8, mask: *uint8, w: cint, h: cint, hot_x: cint, hot_y: cint): *SDL_Cursor <cimport, nodecl> end
```

## SDL_CreateColorCursor

```lua
global function SDL_CreateColorCursor(surface: *SDL_Surface, hot_x: cint, hot_y: cint): *SDL_Cursor <cimport, nodecl> end
```

## SDL_CreateSystemCursor

```lua
global function SDL_CreateSystemCursor(id: SDL_SystemCursor): *SDL_Cursor <cimport, nodecl> end
```

## SDL_SetCursor

```lua
global function SDL_SetCursor(cursor: *SDL_Cursor) <cimport, nodecl> end
```

## SDL_GetCursor

```lua
global function SDL_GetCursor(): *SDL_Cursor <cimport, nodecl> end
```

## SDL_GetDefaultCursor

```lua
global function SDL_GetDefaultCursor(): *SDL_Cursor <cimport, nodecl> end
```

## SDL_FreeCursor

```lua
global function SDL_FreeCursor(cursor: *SDL_Cursor) <cimport, nodecl> end
```

## SDL_ShowCursor

```lua
global function SDL_ShowCursor(toggle: cint): cint <cimport, nodecl> end
```

## SDL_LockJoysticks

```lua
global SDL_Joystick: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_JoystickGUID: type <cimport, nodecl> = @record{
  data: [16]uint8
}
global SDL_JoystickType: type <cimport, nodecl, using> = @enum(cint){
  SDL_JOYSTICK_TYPE_UNKNOWN = 0,
  SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1,
  SDL_JOYSTICK_TYPE_WHEEL = 2,
  SDL_JOYSTICK_TYPE_ARCADE_STICK = 3,
  SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4,
  SDL_JOYSTICK_TYPE_DANCE_PAD = 5,
  SDL_JOYSTICK_TYPE_GUITAR = 6,
  SDL_JOYSTICK_TYPE_DRUM_KIT = 7,
  SDL_JOYSTICK_TYPE_ARCADE_PAD = 8,
  SDL_JOYSTICK_TYPE_THROTTLE = 9
}
global SDL_JoystickPowerLevel: type <cimport, nodecl, using> = @enum(cint){
  SDL_JOYSTICK_POWER_UNKNOWN = -1,
  SDL_JOYSTICK_POWER_EMPTY = 0,
  SDL_JOYSTICK_POWER_LOW = 1,
  SDL_JOYSTICK_POWER_MEDIUM = 2,
  SDL_JOYSTICK_POWER_FULL = 3,
  SDL_JOYSTICK_POWER_WIRED = 4,
  SDL_JOYSTICK_POWER_MAX = 5
}
global function SDL_LockJoysticks() <cimport, nodecl> end
```

## SDL_UnlockJoysticks

```lua
global function SDL_UnlockJoysticks() <cimport, nodecl> end
```

## SDL_NumJoysticks

```lua
global function SDL_NumJoysticks(): cint <cimport, nodecl> end
```

## SDL_JoystickNameForIndex

```lua
global function SDL_JoystickNameForIndex(device_index: cint): cstring <cimport, nodecl> end
```

## SDL_JoystickGetDevicePlayerIndex

```lua
global function SDL_JoystickGetDevicePlayerIndex(device_index: cint): cint <cimport, nodecl> end
```

## SDL_JoystickGetDeviceGUID

```lua
global function SDL_JoystickGetDeviceGUID(device_index: cint): SDL_JoystickGUID <cimport, nodecl> end
```

## SDL_JoystickGetDeviceVendor

```lua
global function SDL_JoystickGetDeviceVendor(device_index: cint): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetDeviceProduct

```lua
global function SDL_JoystickGetDeviceProduct(device_index: cint): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetDeviceProductVersion

```lua
global function SDL_JoystickGetDeviceProductVersion(device_index: cint): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetDeviceType

```lua
global function SDL_JoystickGetDeviceType(device_index: cint): SDL_JoystickType <cimport, nodecl> end
```

## SDL_JoystickGetDeviceInstanceID

```lua
global function SDL_JoystickGetDeviceInstanceID(device_index: cint): cint <cimport, nodecl> end
```

## SDL_JoystickOpen

```lua
global function SDL_JoystickOpen(device_index: cint): *SDL_Joystick <cimport, nodecl> end
```

## SDL_JoystickFromInstanceID

```lua
global function SDL_JoystickFromInstanceID(instance_id: cint): *SDL_Joystick <cimport, nodecl> end
```

## SDL_JoystickFromPlayerIndex

```lua
global function SDL_JoystickFromPlayerIndex(player_index: cint): *SDL_Joystick <cimport, nodecl> end
```

## SDL_JoystickAttachVirtual

```lua
global function SDL_JoystickAttachVirtual(type: SDL_JoystickType, naxes: cint, nbuttons: cint, nhats: cint): cint <cimport, nodecl> end
```

## SDL_JoystickDetachVirtual

```lua
global function SDL_JoystickDetachVirtual(device_index: cint): cint <cimport, nodecl> end
```

## SDL_JoystickIsVirtual

```lua
global function SDL_JoystickIsVirtual(device_index: cint): SDL_bool <cimport, nodecl> end
```

## SDL_JoystickSetVirtualAxis

```lua
global function SDL_JoystickSetVirtualAxis(joystick: *SDL_Joystick, axis: cint, value: int16): cint <cimport, nodecl> end
```

## SDL_JoystickSetVirtualButton

```lua
global function SDL_JoystickSetVirtualButton(joystick: *SDL_Joystick, button: cint, value: uint8): cint <cimport, nodecl> end
```

## SDL_JoystickSetVirtualHat

```lua
global function SDL_JoystickSetVirtualHat(joystick: *SDL_Joystick, hat: cint, value: uint8): cint <cimport, nodecl> end
```

## SDL_JoystickName

```lua
global function SDL_JoystickName(joystick: *SDL_Joystick): cstring <cimport, nodecl> end
```

## SDL_JoystickGetPlayerIndex

```lua
global function SDL_JoystickGetPlayerIndex(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickSetPlayerIndex

```lua
global function SDL_JoystickSetPlayerIndex(joystick: *SDL_Joystick, player_index: cint) <cimport, nodecl> end
```

## SDL_JoystickGetGUID

```lua
global function SDL_JoystickGetGUID(joystick: *SDL_Joystick): SDL_JoystickGUID <cimport, nodecl> end
```

## SDL_JoystickGetVendor

```lua
global function SDL_JoystickGetVendor(joystick: *SDL_Joystick): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetProduct

```lua
global function SDL_JoystickGetProduct(joystick: *SDL_Joystick): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetProductVersion

```lua
global function SDL_JoystickGetProductVersion(joystick: *SDL_Joystick): uint16 <cimport, nodecl> end
```

## SDL_JoystickGetSerial

```lua
global function SDL_JoystickGetSerial(joystick: *SDL_Joystick): cstring <cimport, nodecl> end
```

## SDL_JoystickGetType

```lua
global function SDL_JoystickGetType(joystick: *SDL_Joystick): SDL_JoystickType <cimport, nodecl> end
```

## SDL_JoystickGetGUIDString

```lua
global function SDL_JoystickGetGUIDString(guid: SDL_JoystickGUID, pszGUID: cstring, cbGUID: cint) <cimport, nodecl> end
```

## SDL_JoystickGetGUIDFromString

```lua
global function SDL_JoystickGetGUIDFromString(pchGUID: cstring): SDL_JoystickGUID <cimport, nodecl> end
```

## SDL_JoystickGetAttached

```lua
global function SDL_JoystickGetAttached(joystick: *SDL_Joystick): SDL_bool <cimport, nodecl> end
```

## SDL_JoystickInstanceID

```lua
global function SDL_JoystickInstanceID(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickNumAxes

```lua
global function SDL_JoystickNumAxes(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickNumBalls

```lua
global function SDL_JoystickNumBalls(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickNumHats

```lua
global function SDL_JoystickNumHats(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickNumButtons

```lua
global function SDL_JoystickNumButtons(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_JoystickUpdate

```lua
global function SDL_JoystickUpdate() <cimport, nodecl> end
```

## SDL_JoystickEventState

```lua
global function SDL_JoystickEventState(state: cint): cint <cimport, nodecl> end
```

## SDL_JoystickGetAxis

```lua
global function SDL_JoystickGetAxis(joystick: *SDL_Joystick, axis: cint): int16 <cimport, nodecl> end
```

## SDL_JoystickGetAxisInitialState

```lua
global function SDL_JoystickGetAxisInitialState(joystick: *SDL_Joystick, axis: cint, state: *int16): SDL_bool <cimport, nodecl> end
```

## SDL_JoystickGetHat

```lua
global function SDL_JoystickGetHat(joystick: *SDL_Joystick, hat: cint): uint8 <cimport, nodecl> end
```

## SDL_JoystickGetBall

```lua
global function SDL_JoystickGetBall(joystick: *SDL_Joystick, ball: cint, dx: *cint, dy: *cint): cint <cimport, nodecl> end
```

## SDL_JoystickGetButton

```lua
global function SDL_JoystickGetButton(joystick: *SDL_Joystick, button: cint): uint8 <cimport, nodecl> end
```

## SDL_JoystickRumble

```lua
global function SDL_JoystickRumble(joystick: *SDL_Joystick, low_frequency_rumble: uint16, high_frequency_rumble: uint16, duration_ms: uint32): cint <cimport, nodecl> end
```

## SDL_JoystickRumbleTriggers

```lua
global function SDL_JoystickRumbleTriggers(joystick: *SDL_Joystick, left_rumble: uint16, right_rumble: uint16, duration_ms: uint32): cint <cimport, nodecl> end
```

## SDL_JoystickHasLED

```lua
global function SDL_JoystickHasLED(joystick: *SDL_Joystick): SDL_bool <cimport, nodecl> end
```

## SDL_JoystickSetLED

```lua
global function SDL_JoystickSetLED(joystick: *SDL_Joystick, red: uint8, green: uint8, blue: uint8): cint <cimport, nodecl> end
```

## SDL_JoystickClose

```lua
global function SDL_JoystickClose(joystick: *SDL_Joystick) <cimport, nodecl> end
```

## SDL_JoystickCurrentPowerLevel

```lua
global function SDL_JoystickCurrentPowerLevel(joystick: *SDL_Joystick): SDL_JoystickPowerLevel <cimport, nodecl> end
```

## SDL_LockSensors

```lua
global SDL_Sensor: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_SensorType: type <cimport, nodecl, using> = @enum(cint){
  SDL_SENSOR_INVALID = -1,
  SDL_SENSOR_UNKNOWN = 0,
  SDL_SENSOR_ACCEL = 1,
  SDL_SENSOR_GYRO = 2
}
global function SDL_LockSensors() <cimport, nodecl> end
```

## SDL_UnlockSensors

```lua
global function SDL_UnlockSensors() <cimport, nodecl> end
```

## SDL_NumSensors

```lua
global function SDL_NumSensors(): cint <cimport, nodecl> end
```

## SDL_SensorGetDeviceName

```lua
global function SDL_SensorGetDeviceName(device_index: cint): cstring <cimport, nodecl> end
```

## SDL_SensorGetDeviceType

```lua
global function SDL_SensorGetDeviceType(device_index: cint): SDL_SensorType <cimport, nodecl> end
```

## SDL_SensorGetDeviceNonPortableType

```lua
global function SDL_SensorGetDeviceNonPortableType(device_index: cint): cint <cimport, nodecl> end
```

## SDL_SensorGetDeviceInstanceID

```lua
global function SDL_SensorGetDeviceInstanceID(device_index: cint): cint <cimport, nodecl> end
```

## SDL_SensorOpen

```lua
global function SDL_SensorOpen(device_index: cint): *SDL_Sensor <cimport, nodecl> end
```

## SDL_SensorFromInstanceID

```lua
global function SDL_SensorFromInstanceID(instance_id: cint): *SDL_Sensor <cimport, nodecl> end
```

## SDL_SensorGetName

```lua
global function SDL_SensorGetName(sensor: *SDL_Sensor): cstring <cimport, nodecl> end
```

## SDL_SensorGetType

```lua
global function SDL_SensorGetType(sensor: *SDL_Sensor): SDL_SensorType <cimport, nodecl> end
```

## SDL_SensorGetNonPortableType

```lua
global function SDL_SensorGetNonPortableType(sensor: *SDL_Sensor): cint <cimport, nodecl> end
```

## SDL_SensorGetInstanceID

```lua
global function SDL_SensorGetInstanceID(sensor: *SDL_Sensor): cint <cimport, nodecl> end
```

## SDL_SensorGetData

```lua
global function SDL_SensorGetData(sensor: *SDL_Sensor, data: *float32, num_values: cint): cint <cimport, nodecl> end
```

## SDL_SensorClose

```lua
global function SDL_SensorClose(sensor: *SDL_Sensor) <cimport, nodecl> end
```

## SDL_SensorUpdate

```lua
global function SDL_SensorUpdate() <cimport, nodecl> end
```

## SDL_GameControllerAddMappingsFromRW

```lua
global SDL_GameController: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_GameControllerType: type <cimport, nodecl, using> = @enum(cint){
  SDL_CONTROLLER_TYPE_UNKNOWN = 0,
  SDL_CONTROLLER_TYPE_XBOX360 = 1,
  SDL_CONTROLLER_TYPE_XBOXONE = 2,
  SDL_CONTROLLER_TYPE_PS3 = 3,
  SDL_CONTROLLER_TYPE_PS4 = 4,
  SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 5,
  SDL_CONTROLLER_TYPE_VIRTUAL = 6,
  SDL_CONTROLLER_TYPE_PS5 = 7
}
global SDL_GameControllerBindType: type <cimport, nodecl, using> = @enum(cint){
  SDL_CONTROLLER_BINDTYPE_NONE = 0,
  SDL_CONTROLLER_BINDTYPE_BUTTON = 1,
  SDL_CONTROLLER_BINDTYPE_AXIS = 2,
  SDL_CONTROLLER_BINDTYPE_HAT = 3
}
global SDL_GameControllerButtonBind: type <cimport, nodecl> = @record{
  bindType: SDL_GameControllerBindType,
  value: union{
    button: cint,
    axis: cint,
    hat: record{
      hat: cint,
      hat_mask: cint
    }
  }
}
global function SDL_GameControllerAddMappingsFromRW(rw: *SDL_RWops, freerw: cint): cint <cimport, nodecl> end
```

## SDL_GameControllerAddMapping

```lua
global function SDL_GameControllerAddMapping(mappingString: cstring): cint <cimport, nodecl> end
```

## SDL_GameControllerNumMappings

```lua
global function SDL_GameControllerNumMappings(): cint <cimport, nodecl> end
```

## SDL_GameControllerMappingForIndex

```lua
global function SDL_GameControllerMappingForIndex(mapping_index: cint): cstring <cimport, nodecl> end
```

## SDL_GameControllerMappingForGUID

```lua
global function SDL_GameControllerMappingForGUID(guid: SDL_JoystickGUID): cstring <cimport, nodecl> end
```

## SDL_GameControllerMapping

```lua
global function SDL_GameControllerMapping(gamecontroller: *SDL_GameController): cstring <cimport, nodecl> end
```

## SDL_IsGameController

```lua
global function SDL_IsGameController(joystick_index: cint): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerNameForIndex

```lua
global function SDL_GameControllerNameForIndex(joystick_index: cint): cstring <cimport, nodecl> end
```

## SDL_GameControllerTypeForIndex

```lua
global function SDL_GameControllerTypeForIndex(joystick_index: cint): SDL_GameControllerType <cimport, nodecl> end
```

## SDL_GameControllerMappingForDeviceIndex

```lua
global function SDL_GameControllerMappingForDeviceIndex(joystick_index: cint): cstring <cimport, nodecl> end
```

## SDL_GameControllerOpen

```lua
global function SDL_GameControllerOpen(joystick_index: cint): *SDL_GameController <cimport, nodecl> end
```

## SDL_GameControllerFromInstanceID

```lua
global function SDL_GameControllerFromInstanceID(joyid: cint): *SDL_GameController <cimport, nodecl> end
```

## SDL_GameControllerFromPlayerIndex

```lua
global function SDL_GameControllerFromPlayerIndex(player_index: cint): *SDL_GameController <cimport, nodecl> end
```

## SDL_GameControllerName

```lua
global function SDL_GameControllerName(gamecontroller: *SDL_GameController): cstring <cimport, nodecl> end
```

## SDL_GameControllerGetType

```lua
global function SDL_GameControllerGetType(gamecontroller: *SDL_GameController): SDL_GameControllerType <cimport, nodecl> end
```

## SDL_GameControllerGetPlayerIndex

```lua
global function SDL_GameControllerGetPlayerIndex(gamecontroller: *SDL_GameController): cint <cimport, nodecl> end
```

## SDL_GameControllerSetPlayerIndex

```lua
global function SDL_GameControllerSetPlayerIndex(gamecontroller: *SDL_GameController, player_index: cint) <cimport, nodecl> end
```

## SDL_GameControllerGetVendor

```lua
global function SDL_GameControllerGetVendor(gamecontroller: *SDL_GameController): uint16 <cimport, nodecl> end
```

## SDL_GameControllerGetProduct

```lua
global function SDL_GameControllerGetProduct(gamecontroller: *SDL_GameController): uint16 <cimport, nodecl> end
```

## SDL_GameControllerGetProductVersion

```lua
global function SDL_GameControllerGetProductVersion(gamecontroller: *SDL_GameController): uint16 <cimport, nodecl> end
```

## SDL_GameControllerGetSerial

```lua
global function SDL_GameControllerGetSerial(gamecontroller: *SDL_GameController): cstring <cimport, nodecl> end
```

## SDL_GameControllerGetAttached

```lua
global function SDL_GameControllerGetAttached(gamecontroller: *SDL_GameController): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerGetJoystick

```lua
global function SDL_GameControllerGetJoystick(gamecontroller: *SDL_GameController): *SDL_Joystick <cimport, nodecl> end
```

## SDL_GameControllerEventState

```lua
global function SDL_GameControllerEventState(state: cint): cint <cimport, nodecl> end
```

## SDL_GameControllerUpdate

```lua
global function SDL_GameControllerUpdate() <cimport, nodecl> end
```

## SDL_GameControllerGetAxisFromString

```lua
global function SDL_GameControllerGetAxisFromString(pchString: cstring): SDL_GameControllerAxis <cimport, nodecl> end
```

## SDL_GameControllerGetStringForAxis

```lua
global function SDL_GameControllerGetStringForAxis(axis: SDL_GameControllerAxis): cstring <cimport, nodecl> end
```

## SDL_GameControllerGetBindForAxis

```lua
global function SDL_GameControllerGetBindForAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): SDL_GameControllerButtonBind <cimport, nodecl> end
```

## SDL_GameControllerHasAxis

```lua
global function SDL_GameControllerHasAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerGetAxis

```lua
global function SDL_GameControllerGetAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): int16 <cimport, nodecl> end
```

## SDL_GameControllerGetButtonFromString

```lua
global function SDL_GameControllerGetButtonFromString(pchString: cstring): SDL_GameControllerButton <cimport, nodecl> end
```

## SDL_GameControllerGetStringForButton

```lua
global function SDL_GameControllerGetStringForButton(button: SDL_GameControllerButton): cstring <cimport, nodecl> end
```

## SDL_GameControllerGetBindForButton

```lua
global function SDL_GameControllerGetBindForButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): SDL_GameControllerButtonBind <cimport, nodecl> end
```

## SDL_GameControllerHasButton

```lua
global function SDL_GameControllerHasButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerGetButton

```lua
global function SDL_GameControllerGetButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): uint8 <cimport, nodecl> end
```

## SDL_GameControllerGetNumTouchpads

```lua
global function SDL_GameControllerGetNumTouchpads(gamecontroller: *SDL_GameController): cint <cimport, nodecl> end
```

## SDL_GameControllerGetNumTouchpadFingers

```lua
global function SDL_GameControllerGetNumTouchpadFingers(gamecontroller: *SDL_GameController, touchpad: cint): cint <cimport, nodecl> end
```

## SDL_GameControllerGetTouchpadFinger

```lua
global function SDL_GameControllerGetTouchpadFinger(gamecontroller: *SDL_GameController, touchpad: cint, finger: cint, state: *uint8, x: *float32, y: *float32, pressure: *float32): cint <cimport, nodecl> end
```

## SDL_GameControllerHasSensor

```lua
global function SDL_GameControllerHasSensor(gamecontroller: *SDL_GameController, type: SDL_SensorType): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerSetSensorEnabled

```lua
global function SDL_GameControllerSetSensorEnabled(gamecontroller: *SDL_GameController, type: SDL_SensorType, enabled: SDL_bool): cint <cimport, nodecl> end
```

## SDL_GameControllerIsSensorEnabled

```lua
global function SDL_GameControllerIsSensorEnabled(gamecontroller: *SDL_GameController, type: SDL_SensorType): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerGetSensorData

```lua
global function SDL_GameControllerGetSensorData(gamecontroller: *SDL_GameController, type: SDL_SensorType, data: *float32, num_values: cint): cint <cimport, nodecl> end
```

## SDL_GameControllerRumble

```lua
global function SDL_GameControllerRumble(gamecontroller: *SDL_GameController, low_frequency_rumble: uint16, high_frequency_rumble: uint16, duration_ms: uint32): cint <cimport, nodecl> end
```

## SDL_GameControllerRumbleTriggers

```lua
global function SDL_GameControllerRumbleTriggers(gamecontroller: *SDL_GameController, left_rumble: uint16, right_rumble: uint16, duration_ms: uint32): cint <cimport, nodecl> end
```

## SDL_GameControllerHasLED

```lua
global function SDL_GameControllerHasLED(gamecontroller: *SDL_GameController): SDL_bool <cimport, nodecl> end
```

## SDL_GameControllerSetLED

```lua
global function SDL_GameControllerSetLED(gamecontroller: *SDL_GameController, red: uint8, green: uint8, blue: uint8): cint <cimport, nodecl> end
```

## SDL_GameControllerClose

```lua
global function SDL_GameControllerClose(gamecontroller: *SDL_GameController) <cimport, nodecl> end
```

## SDL_GetNumTouchDevices

```lua
global SDL_Finger: type <cimport, nodecl> = @record{
  id: clong,
  x: float32,
  y: float32,
  pressure: float32
}
global function SDL_GetNumTouchDevices(): cint <cimport, nodecl> end
```

## SDL_GetTouchDevice

```lua
global function SDL_GetTouchDevice(index: cint): clong <cimport, nodecl> end
```

## SDL_GetTouchDeviceType

```lua
global function SDL_GetTouchDeviceType(touchID: clong): SDL_TouchDeviceType <cimport, nodecl> end
```

## SDL_GetNumTouchFingers

```lua
global function SDL_GetNumTouchFingers(touchID: clong): cint <cimport, nodecl> end
```

## SDL_GetTouchFinger

```lua
global function SDL_GetTouchFinger(touchID: clong, index: cint): *SDL_Finger <cimport, nodecl> end
```

## SDL_RecordGesture

```lua
global function SDL_RecordGesture(touchId: clong): cint <cimport, nodecl> end
```

## SDL_SaveAllDollarTemplates

```lua
global function SDL_SaveAllDollarTemplates(dst: *SDL_RWops): cint <cimport, nodecl> end
```

## SDL_SaveDollarTemplate

```lua
global function SDL_SaveDollarTemplate(gestureId: clong, dst: *SDL_RWops): cint <cimport, nodecl> end
```

## SDL_LoadDollarTemplates

```lua
global function SDL_LoadDollarTemplates(touchId: clong, src: *SDL_RWops): cint <cimport, nodecl> end
```

## SDL_PumpEvents

```lua
global SDL_CommonEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32
}
global SDL_DisplayEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  display: uint32,
  event: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  data1: int32
}
global SDL_WindowEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  event: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  data1: int32,
  data2: int32
}
global SDL_KeyboardEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  state: uint8,
  Repeat: uint8,
  padding2: uint8,
  padding3: uint8,
  keysym: SDL_Keysym
}
global SDL_TextEditingEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  text: [32]cchar,
  start: int32,
  length: int32
}
global SDL_TextInputEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  text: [32]cchar
}
global SDL_MouseMotionEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  which: uint32,
  state: uint32,
  x: int32,
  y: int32,
  xrel: int32,
  yrel: int32
}
global SDL_MouseButtonEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  which: uint32,
  button: uint8,
  state: uint8,
  clicks: uint8,
  padding1: uint8,
  x: int32,
  y: int32
}
global SDL_MouseWheelEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  which: uint32,
  x: int32,
  y: int32,
  direction: uint32
}
global SDL_JoyAxisEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  axis: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  value: int16,
  padding4: uint16
}
global SDL_JoyBallEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  ball: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  xrel: int16,
  yrel: int16
}
global SDL_JoyHatEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  hat: uint8,
  value: uint8,
  padding1: uint8,
  padding2: uint8
}
global SDL_JoyButtonEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  button: uint8,
  state: uint8,
  padding1: uint8,
  padding2: uint8
}
global SDL_JoyDeviceEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: int32
}
global SDL_ControllerAxisEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  axis: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  value: int16,
  padding4: uint16
}
global SDL_ControllerButtonEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  button: uint8,
  state: uint8,
  padding1: uint8,
  padding2: uint8
}
global SDL_ControllerDeviceEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: int32
}
global SDL_ControllerTouchpadEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  touchpad: int32,
  finger: int32,
  x: float32,
  y: float32,
  pressure: float32
}
global SDL_ControllerSensorEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  sensor: int32,
  data: [3]float32
}
global SDL_AudioDeviceEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: uint32,
  iscapture: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8
}
global SDL_TouchFingerEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  touchId: clong,
  fingerId: clong,
  x: float32,
  y: float32,
  dx: float32,
  dy: float32,
  pressure: float32,
  windowID: uint32
}
global SDL_MultiGestureEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  touchId: clong,
  dTheta: float32,
  dDist: float32,
  x: float32,
  y: float32,
  numFingers: uint16,
  padding: uint16
}
global SDL_DollarGestureEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  touchId: clong,
  gestureId: clong,
  numFingers: uint32,
  error: float32,
  x: float32,
  y: float32
}
global SDL_DropEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  file: cstring,
  windowID: uint32
}
global SDL_SensorEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  which: int32,
  data: [6]float32
}
global SDL_QuitEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32
}
global SDL_OSEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32
}
global SDL_UserEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  code: int32,
  data1: pointer,
  data2: pointer
}
global SDL_SysWMmsg: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_SysWMEvent: type <cimport, nodecl> = @record{
  type: uint32,
  timestamp: uint32,
  msg: *SDL_SysWMmsg
}
global SDL_Event: type <cimport, nodecl> = @union{
  type: uint32,
  common: SDL_CommonEvent,
  display: SDL_DisplayEvent,
  window: SDL_WindowEvent,
  key: SDL_KeyboardEvent,
  edit: SDL_TextEditingEvent,
  text: SDL_TextInputEvent,
  motion: SDL_MouseMotionEvent,
  button: SDL_MouseButtonEvent,
  wheel: SDL_MouseWheelEvent,
  jaxis: SDL_JoyAxisEvent,
  jball: SDL_JoyBallEvent,
  jhat: SDL_JoyHatEvent,
  jbutton: SDL_JoyButtonEvent,
  jdevice: SDL_JoyDeviceEvent,
  caxis: SDL_ControllerAxisEvent,
  cbutton: SDL_ControllerButtonEvent,
  cdevice: SDL_ControllerDeviceEvent,
  ctouchpad: SDL_ControllerTouchpadEvent,
  csensor: SDL_ControllerSensorEvent,
  adevice: SDL_AudioDeviceEvent,
  sensor: SDL_SensorEvent,
  quit: SDL_QuitEvent,
  user: SDL_UserEvent,
  syswm: SDL_SysWMEvent,
  tfinger: SDL_TouchFingerEvent,
  mgesture: SDL_MultiGestureEvent,
  dgesture: SDL_DollarGestureEvent,
  drop: SDL_DropEvent,
  padding: [56]uint8
}
global function SDL_PumpEvents() <cimport, nodecl> end
```

## SDL_PeepEvents

```lua
global function SDL_PeepEvents(events: *SDL_Event, numevents: cint, action: SDL_eventaction, minType: uint32, maxType: uint32): cint <cimport, nodecl> end
```

## SDL_HasEvent

```lua
global function SDL_HasEvent(type: uint32): SDL_bool <cimport, nodecl> end
```

## SDL_HasEvents

```lua
global function SDL_HasEvents(minType: uint32, maxType: uint32): SDL_bool <cimport, nodecl> end
```

## SDL_FlushEvent

```lua
global function SDL_FlushEvent(type: uint32) <cimport, nodecl> end
```

## SDL_FlushEvents

```lua
global function SDL_FlushEvents(minType: uint32, maxType: uint32) <cimport, nodecl> end
```

## SDL_PollEvent

```lua
global function SDL_PollEvent(event: *SDL_Event): cint <cimport, nodecl> end
```

## SDL_WaitEvent

```lua
global function SDL_WaitEvent(event: *SDL_Event): cint <cimport, nodecl> end
```

## SDL_WaitEventTimeout

```lua
global function SDL_WaitEventTimeout(event: *SDL_Event, timeout: cint): cint <cimport, nodecl> end
```

## SDL_PushEvent

```lua
global function SDL_PushEvent(event: *SDL_Event): cint <cimport, nodecl> end
```

## SDL_SetEventFilter

```lua
global function SDL_SetEventFilter(filter: SDL_EventFilter, userdata: pointer) <cimport, nodecl> end
```

## SDL_GetEventFilter

```lua
global function SDL_GetEventFilter(filter: *SDL_EventFilter, userdata: *pointer): SDL_bool <cimport, nodecl> end
```

## SDL_AddEventWatch

```lua
global function SDL_AddEventWatch(filter: SDL_EventFilter, userdata: pointer) <cimport, nodecl> end
```

## SDL_DelEventWatch

```lua
global function SDL_DelEventWatch(filter: SDL_EventFilter, userdata: pointer) <cimport, nodecl> end
```

## SDL_FilterEvents

```lua
global function SDL_FilterEvents(filter: SDL_EventFilter, userdata: pointer) <cimport, nodecl> end
```

## SDL_EventState

```lua
global function SDL_EventState(type: uint32, state: cint): uint8 <cimport, nodecl> end
```

## SDL_RegisterEvents

```lua
global function SDL_RegisterEvents(numevents: cint): uint32 <cimport, nodecl> end
```

## SDL_GetBasePath

```lua
global function SDL_GetBasePath(): cstring <cimport, nodecl> end
```

## SDL_GetPrefPath

```lua
global function SDL_GetPrefPath(org: cstring, app: cstring): cstring <cimport, nodecl> end
```

## SDL_NumHaptics

```lua
global SDL_Haptic: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_HapticDirection: type <cimport, nodecl> = @record{
  type: uint8,
  dir: [3]int32
}
global SDL_HapticConstant: type <cimport, nodecl> = @record{
  type: uint16,
  direction: SDL_HapticDirection,
  length: uint32,
  delay: uint16,
  button: uint16,
  interval: uint16,
  level: int16,
  attack_length: uint16,
  attack_level: uint16,
  fade_length: uint16,
  fade_level: uint16
}
global SDL_HapticPeriodic: type <cimport, nodecl> = @record{
  type: uint16,
  direction: SDL_HapticDirection,
  length: uint32,
  delay: uint16,
  button: uint16,
  interval: uint16,
  period: uint16,
  magnitude: int16,
  offset: int16,
  phase: uint16,
  attack_length: uint16,
  attack_level: uint16,
  fade_length: uint16,
  fade_level: uint16
}
global SDL_HapticCondition: type <cimport, nodecl> = @record{
  type: uint16,
  direction: SDL_HapticDirection,
  length: uint32,
  delay: uint16,
  button: uint16,
  interval: uint16,
  right_sat: [3]uint16,
  left_sat: [3]uint16,
  right_coeff: [3]int16,
  left_coeff: [3]int16,
  deadband: [3]uint16,
  center: [3]int16
}
global SDL_HapticRamp: type <cimport, nodecl> = @record{
  type: uint16,
  direction: SDL_HapticDirection,
  length: uint32,
  delay: uint16,
  button: uint16,
  interval: uint16,
  start: int16,
  End: int16,
  attack_length: uint16,
  attack_level: uint16,
  fade_length: uint16,
  fade_level: uint16
}
global SDL_HapticLeftRight: type <cimport, nodecl> = @record{
  type: uint16,
  length: uint32,
  large_magnitude: uint16,
  small_magnitude: uint16
}
global SDL_HapticCustom: type <cimport, nodecl> = @record{
  type: uint16,
  direction: SDL_HapticDirection,
  length: uint32,
  delay: uint16,
  button: uint16,
  interval: uint16,
  channels: uint8,
  period: uint16,
  samples: uint16,
  data: *uint16,
  attack_length: uint16,
  attack_level: uint16,
  fade_length: uint16,
  fade_level: uint16
}
global SDL_HapticEffect: type <cimport, nodecl> = @union{
  type: uint16,
  constant: SDL_HapticConstant,
  periodic: SDL_HapticPeriodic,
  condition: SDL_HapticCondition,
  ramp: SDL_HapticRamp,
  leftright: SDL_HapticLeftRight,
  custom: SDL_HapticCustom
}
global function SDL_NumHaptics(): cint <cimport, nodecl> end
```

## SDL_HapticName

```lua
global function SDL_HapticName(device_index: cint): cstring <cimport, nodecl> end
```

## SDL_HapticOpen

```lua
global function SDL_HapticOpen(device_index: cint): *SDL_Haptic <cimport, nodecl> end
```

## SDL_HapticOpened

```lua
global function SDL_HapticOpened(device_index: cint): cint <cimport, nodecl> end
```

## SDL_HapticIndex

```lua
global function SDL_HapticIndex(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_MouseIsHaptic

```lua
global function SDL_MouseIsHaptic(): cint <cimport, nodecl> end
```

## SDL_HapticOpenFromMouse

```lua
global function SDL_HapticOpenFromMouse(): *SDL_Haptic <cimport, nodecl> end
```

## SDL_JoystickIsHaptic

```lua
global function SDL_JoystickIsHaptic(joystick: *SDL_Joystick): cint <cimport, nodecl> end
```

## SDL_HapticOpenFromJoystick

```lua
global function SDL_HapticOpenFromJoystick(joystick: *SDL_Joystick): *SDL_Haptic <cimport, nodecl> end
```

## SDL_HapticClose

```lua
global function SDL_HapticClose(haptic: *SDL_Haptic) <cimport, nodecl> end
```

## SDL_HapticNumEffects

```lua
global function SDL_HapticNumEffects(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticNumEffectsPlaying

```lua
global function SDL_HapticNumEffectsPlaying(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticQuery

```lua
global function SDL_HapticQuery(haptic: *SDL_Haptic): cuint <cimport, nodecl> end
```

## SDL_HapticNumAxes

```lua
global function SDL_HapticNumAxes(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticEffectSupported

```lua
global function SDL_HapticEffectSupported(haptic: *SDL_Haptic, effect: *SDL_HapticEffect): cint <cimport, nodecl> end
```

## SDL_HapticNewEffect

```lua
global function SDL_HapticNewEffect(haptic: *SDL_Haptic, effect: *SDL_HapticEffect): cint <cimport, nodecl> end
```

## SDL_HapticUpdateEffect

```lua
global function SDL_HapticUpdateEffect(haptic: *SDL_Haptic, effect: cint, data: *SDL_HapticEffect): cint <cimport, nodecl> end
```

## SDL_HapticRunEffect

```lua
global function SDL_HapticRunEffect(haptic: *SDL_Haptic, effect: cint, iterations: uint32): cint <cimport, nodecl> end
```

## SDL_HapticStopEffect

```lua
global function SDL_HapticStopEffect(haptic: *SDL_Haptic, effect: cint): cint <cimport, nodecl> end
```

## SDL_HapticDestroyEffect

```lua
global function SDL_HapticDestroyEffect(haptic: *SDL_Haptic, effect: cint) <cimport, nodecl> end
```

## SDL_HapticGetEffectStatus

```lua
global function SDL_HapticGetEffectStatus(haptic: *SDL_Haptic, effect: cint): cint <cimport, nodecl> end
```

## SDL_HapticSetGain

```lua
global function SDL_HapticSetGain(haptic: *SDL_Haptic, gain: cint): cint <cimport, nodecl> end
```

## SDL_HapticSetAutocenter

```lua
global function SDL_HapticSetAutocenter(haptic: *SDL_Haptic, autocenter: cint): cint <cimport, nodecl> end
```

## SDL_HapticPause

```lua
global function SDL_HapticPause(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticUnpause

```lua
global function SDL_HapticUnpause(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticStopAll

```lua
global function SDL_HapticStopAll(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticRumbleSupported

```lua
global function SDL_HapticRumbleSupported(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticRumbleInit

```lua
global function SDL_HapticRumbleInit(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_HapticRumblePlay

```lua
global function SDL_HapticRumblePlay(haptic: *SDL_Haptic, strength: float32, length: uint32): cint <cimport, nodecl> end
```

## SDL_HapticRumbleStop

```lua
global function SDL_HapticRumbleStop(haptic: *SDL_Haptic): cint <cimport, nodecl> end
```

## SDL_SetHintWithPriority

```lua
global function SDL_SetHintWithPriority(name: cstring, value: cstring, priority: SDL_HintPriority): SDL_bool <cimport, nodecl> end
```

## SDL_SetHint

```lua
global function SDL_SetHint(name: cstring, value: cstring): SDL_bool <cimport, nodecl> end
```

## SDL_GetHint

```lua
global function SDL_GetHint(name: cstring): cstring <cimport, nodecl> end
```

## SDL_GetHintBoolean

```lua
global function SDL_GetHintBoolean(name: cstring, default_value: SDL_bool): SDL_bool <cimport, nodecl> end
```

## SDL_AddHintCallback

```lua
global function SDL_AddHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer) <cimport, nodecl> end
```

## SDL_DelHintCallback

```lua
global function SDL_DelHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer) <cimport, nodecl> end
```

## SDL_ClearHints

```lua
global function SDL_ClearHints() <cimport, nodecl> end
```

## SDL_LoadObject

```lua
global function SDL_LoadObject(sofile: cstring): pointer <cimport, nodecl> end
```

## SDL_LoadFunction

```lua
global function SDL_LoadFunction(handle: pointer, name: cstring): pointer <cimport, nodecl> end
```

## SDL_UnloadObject

```lua
global function SDL_UnloadObject(handle: pointer) <cimport, nodecl> end
```

## SDL_LogSetAllPriority

```lua
global function SDL_LogSetAllPriority(priority: SDL_LogPriority) <cimport, nodecl> end
```

## SDL_LogSetPriority

```lua
global function SDL_LogSetPriority(category: cint, priority: SDL_LogPriority) <cimport, nodecl> end
```

## SDL_LogGetPriority

```lua
global function SDL_LogGetPriority(category: cint): SDL_LogPriority <cimport, nodecl> end
```

## SDL_LogResetPriorities

```lua
global function SDL_LogResetPriorities() <cimport, nodecl> end
```

## SDL_Log

```lua
global function SDL_Log(fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogVerbose

```lua
global function SDL_LogVerbose(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogDebug

```lua
global function SDL_LogDebug(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogInfo

```lua
global function SDL_LogInfo(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogWarn

```lua
global function SDL_LogWarn(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogError

```lua
global function SDL_LogError(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogCritical

```lua
global function SDL_LogCritical(category: cint, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogMessage

```lua
global function SDL_LogMessage(category: cint, priority: SDL_LogPriority, fmt: cstring, ...: cvarargs) <cimport, nodecl> end
```

## SDL_LogMessageV

```lua
global function SDL_LogMessageV(category: cint, priority: SDL_LogPriority, fmt: cstring, ap: cvalist) <cimport, nodecl> end
```

## SDL_LogGetOutputFunction

```lua
global function SDL_LogGetOutputFunction(callback: *SDL_LogOutputFunction, userdata: *pointer) <cimport, nodecl> end
```

## SDL_LogSetOutputFunction

```lua
global function SDL_LogSetOutputFunction(callback: SDL_LogOutputFunction, userdata: pointer) <cimport, nodecl> end
```

## SDL_ShowMessageBox

```lua
global SDL_MessageBoxButtonData: type <cimport, nodecl> = @record{
  flags: uint32,
  buttonid: cint,
  text: cstring
}
global SDL_MessageBoxColor: type <cimport, nodecl> = @record{
  r: uint8,
  g: uint8,
  b: uint8
}
global SDL_MessageBoxColorType: type <cimport, nodecl, using> = @enum(cint){
  SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
  SDL_MESSAGEBOX_COLOR_TEXT = 1,
  SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
  SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
  SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
  SDL_MESSAGEBOX_COLOR_MAX = 5
}
global SDL_MessageBoxColorScheme: type <cimport, nodecl> = @record{
  colors: [5]SDL_MessageBoxColor
}
global SDL_MessageBoxData: type <cimport, nodecl> = @record{
  flags: uint32,
  window: *SDL_Window,
  title: cstring,
  message: cstring,
  numbuttons: cint,
  buttons: *SDL_MessageBoxButtonData,
  colorScheme: *SDL_MessageBoxColorScheme
}
global function SDL_ShowMessageBox(messageboxdata: *SDL_MessageBoxData, buttonid: *cint): cint <cimport, nodecl> end
```

## SDL_ShowSimpleMessageBox

```lua
global function SDL_ShowSimpleMessageBox(flags: uint32, title: cstring, message: cstring, window: *SDL_Window): cint <cimport, nodecl> end
```

## SDL_Metal_CreateView

```lua
global function SDL_Metal_CreateView(window: *SDL_Window): SDL_MetalView <cimport, nodecl> end
```

## SDL_Metal_DestroyView

```lua
global function SDL_Metal_DestroyView(view: SDL_MetalView) <cimport, nodecl> end
```

## SDL_Metal_GetLayer

```lua
global function SDL_Metal_GetLayer(view: SDL_MetalView): pointer <cimport, nodecl> end
```

## SDL_Metal_GetDrawableSize

```lua
global function SDL_Metal_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_GetPowerInfo

```lua
global function SDL_GetPowerInfo(secs: *cint, pct: *cint): SDL_PowerState <cimport, nodecl> end
```

## SDL_GetNumRenderDrivers

```lua
global SDL_RendererInfo: type <cimport, nodecl> = @record{
  name: cstring,
  flags: uint32,
  num_texture_formats: uint32,
  texture_formats: [16]uint32,
  max_texture_width: cint,
  max_texture_height: cint
}
global SDL_ScaleMode: type <cimport, nodecl, using> = @enum(cint){
  SDL_ScaleModeNearest = 0,
  SDL_ScaleModeLinear = 1,
  SDL_ScaleModeBest = 2
}
global SDL_TextureAccess: type <cimport, nodecl, using> = @enum(cint){
  SDL_TEXTUREACCESS_STATIC = 0,
  SDL_TEXTUREACCESS_STREAMING = 1,
  SDL_TEXTUREACCESS_TARGET = 2
}
global SDL_TextureModulate: type <cimport, nodecl, using> = @enum(cint){
  SDL_TEXTUREMODULATE_NONE = 0,
  SDL_TEXTUREMODULATE_COLOR = 1,
  SDL_TEXTUREMODULATE_ALPHA = 2
}
global SDL_RendererFlip: type <cimport, nodecl, using> = @enum(cint){
  SDL_FLIP_NONE = 0,
  SDL_FLIP_HORIZONTAL = 1,
  SDL_FLIP_VERTICAL = 2
}
global SDL_Renderer: type <cimport, nodecl, forwarddecl> = @record{}
global SDL_Texture: type <cimport, nodecl, forwarddecl> = @record{}
global function SDL_GetNumRenderDrivers(): cint <cimport, nodecl> end
```

## SDL_GetRenderDriverInfo

```lua
global function SDL_GetRenderDriverInfo(index: cint, info: *SDL_RendererInfo): cint <cimport, nodecl> end
```

## SDL_CreateWindowAndRenderer

```lua
global function SDL_CreateWindowAndRenderer(width: cint, height: cint, window_flags: uint32, window: **SDL_Window, renderer: **SDL_Renderer): cint <cimport, nodecl> end
```

## SDL_CreateRenderer

```lua
global function SDL_CreateRenderer(window: *SDL_Window, index: cint, flags: uint32): *SDL_Renderer <cimport, nodecl> end
```

## SDL_CreateSoftwareRenderer

```lua
global function SDL_CreateSoftwareRenderer(surface: *SDL_Surface): *SDL_Renderer <cimport, nodecl> end
```

## SDL_GetRenderer

```lua
global function SDL_GetRenderer(window: *SDL_Window): *SDL_Renderer <cimport, nodecl> end
```

## SDL_GetRendererInfo

```lua
global function SDL_GetRendererInfo(renderer: *SDL_Renderer, info: *SDL_RendererInfo): cint <cimport, nodecl> end
```

## SDL_GetRendererOutputSize

```lua
global function SDL_GetRendererOutputSize(renderer: *SDL_Renderer, w: *cint, h: *cint): cint <cimport, nodecl> end
```

## SDL_CreateTexture

```lua
global function SDL_CreateTexture(renderer: *SDL_Renderer, format: uint32, access: cint, w: cint, h: cint): *SDL_Texture <cimport, nodecl> end
```

## SDL_CreateTextureFromSurface

```lua
global function SDL_CreateTextureFromSurface(renderer: *SDL_Renderer, surface: *SDL_Surface): *SDL_Texture <cimport, nodecl> end
```

## SDL_QueryTexture

```lua
global function SDL_QueryTexture(texture: *SDL_Texture, format: *uint32, access: *cint, w: *cint, h: *cint): cint <cimport, nodecl> end
```

## SDL_SetTextureColorMod

```lua
global function SDL_SetTextureColorMod(texture: *SDL_Texture, r: uint8, g: uint8, b: uint8): cint <cimport, nodecl> end
```

## SDL_GetTextureColorMod

```lua
global function SDL_GetTextureColorMod(texture: *SDL_Texture, r: *uint8, g: *uint8, b: *uint8): cint <cimport, nodecl> end
```

## SDL_SetTextureAlphaMod

```lua
global function SDL_SetTextureAlphaMod(texture: *SDL_Texture, alpha: uint8): cint <cimport, nodecl> end
```

## SDL_GetTextureAlphaMod

```lua
global function SDL_GetTextureAlphaMod(texture: *SDL_Texture, alpha: *uint8): cint <cimport, nodecl> end
```

## SDL_SetTextureBlendMode

```lua
global function SDL_SetTextureBlendMode(texture: *SDL_Texture, blendMode: SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_GetTextureBlendMode

```lua
global function SDL_GetTextureBlendMode(texture: *SDL_Texture, blendMode: *SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_SetTextureScaleMode

```lua
global function SDL_SetTextureScaleMode(texture: *SDL_Texture, scaleMode: SDL_ScaleMode): cint <cimport, nodecl> end
```

## SDL_GetTextureScaleMode

```lua
global function SDL_GetTextureScaleMode(texture: *SDL_Texture, scaleMode: *SDL_ScaleMode): cint <cimport, nodecl> end
```

## SDL_UpdateTexture

```lua
global function SDL_UpdateTexture(texture: *SDL_Texture, rect: *SDL_Rect, pixels: pointer, pitch: cint): cint <cimport, nodecl> end
```

## SDL_UpdateYUVTexture

```lua
global function SDL_UpdateYUVTexture(texture: *SDL_Texture, rect: *SDL_Rect, Yplane: *uint8, Ypitch: cint, Uplane: *uint8, Upitch: cint, Vplane: *uint8, Vpitch: cint): cint <cimport, nodecl> end
```

## SDL_LockTexture

```lua
global function SDL_LockTexture(texture: *SDL_Texture, rect: *SDL_Rect, pixels: *pointer, pitch: *cint): cint <cimport, nodecl> end
```

## SDL_LockTextureToSurface

```lua
global function SDL_LockTextureToSurface(texture: *SDL_Texture, rect: *SDL_Rect, surface: **SDL_Surface): cint <cimport, nodecl> end
```

## SDL_UnlockTexture

```lua
global function SDL_UnlockTexture(texture: *SDL_Texture) <cimport, nodecl> end
```

## SDL_RenderTargetSupported

```lua
global function SDL_RenderTargetSupported(renderer: *SDL_Renderer): SDL_bool <cimport, nodecl> end
```

## SDL_SetRenderTarget

```lua
global function SDL_SetRenderTarget(renderer: *SDL_Renderer, texture: *SDL_Texture): cint <cimport, nodecl> end
```

## SDL_GetRenderTarget

```lua
global function SDL_GetRenderTarget(renderer: *SDL_Renderer): *SDL_Texture <cimport, nodecl> end
```

## SDL_RenderSetLogicalSize

```lua
global function SDL_RenderSetLogicalSize(renderer: *SDL_Renderer, w: cint, h: cint): cint <cimport, nodecl> end
```

## SDL_RenderGetLogicalSize

```lua
global function SDL_RenderGetLogicalSize(renderer: *SDL_Renderer, w: *cint, h: *cint) <cimport, nodecl> end
```

## SDL_RenderSetIntegerScale

```lua
global function SDL_RenderSetIntegerScale(renderer: *SDL_Renderer, enable: SDL_bool): cint <cimport, nodecl> end
```

## SDL_RenderGetIntegerScale

```lua
global function SDL_RenderGetIntegerScale(renderer: *SDL_Renderer): SDL_bool <cimport, nodecl> end
```

## SDL_RenderSetViewport

```lua
global function SDL_RenderSetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_RenderGetViewport

```lua
global function SDL_RenderGetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect) <cimport, nodecl> end
```

## SDL_RenderSetClipRect

```lua
global function SDL_RenderSetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_RenderGetClipRect

```lua
global function SDL_RenderGetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect) <cimport, nodecl> end
```

## SDL_RenderIsClipEnabled

```lua
global function SDL_RenderIsClipEnabled(renderer: *SDL_Renderer): SDL_bool <cimport, nodecl> end
```

## SDL_RenderSetScale

```lua
global function SDL_RenderSetScale(renderer: *SDL_Renderer, scaleX: float32, scaleY: float32): cint <cimport, nodecl> end
```

## SDL_RenderGetScale

```lua
global function SDL_RenderGetScale(renderer: *SDL_Renderer, scaleX: *float32, scaleY: *float32) <cimport, nodecl> end
```

## SDL_SetRenderDrawColor

```lua
global function SDL_SetRenderDrawColor(renderer: *SDL_Renderer, r: uint8, g: uint8, b: uint8, a: uint8): cint <cimport, nodecl> end
```

## SDL_GetRenderDrawColor

```lua
global function SDL_GetRenderDrawColor(renderer: *SDL_Renderer, r: *uint8, g: *uint8, b: *uint8, a: *uint8): cint <cimport, nodecl> end
```

## SDL_SetRenderDrawBlendMode

```lua
global function SDL_SetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_GetRenderDrawBlendMode

```lua
global function SDL_GetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: *SDL_BlendMode): cint <cimport, nodecl> end
```

## SDL_RenderClear

```lua
global function SDL_RenderClear(renderer: *SDL_Renderer): cint <cimport, nodecl> end
```

## SDL_RenderDrawPoint

```lua
global function SDL_RenderDrawPoint(renderer: *SDL_Renderer, x: cint, y: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawPoints

```lua
global function SDL_RenderDrawPoints(renderer: *SDL_Renderer, points: *SDL_Point, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawLine

```lua
global function SDL_RenderDrawLine(renderer: *SDL_Renderer, x1: cint, y1: cint, x2: cint, y2: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawLines

```lua
global function SDL_RenderDrawLines(renderer: *SDL_Renderer, points: *SDL_Point, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawRect

```lua
global function SDL_RenderDrawRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_RenderDrawRects

```lua
global function SDL_RenderDrawRects(renderer: *SDL_Renderer, rects: *SDL_Rect, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderFillRect

```lua
global function SDL_RenderFillRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_RenderFillRects

```lua
global function SDL_RenderFillRects(renderer: *SDL_Renderer, rects: *SDL_Rect, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderCopy

```lua
global function SDL_RenderCopy(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_RenderCopyEx

```lua
global function SDL_RenderCopyEx(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_Rect, angle: float64, center: *SDL_Point, flip: SDL_RendererFlip): cint <cimport, nodecl> end
```

## SDL_RenderDrawPointF

```lua
global function SDL_RenderDrawPointF(renderer: *SDL_Renderer, x: float32, y: float32): cint <cimport, nodecl> end
```

## SDL_RenderDrawPointsF

```lua
global function SDL_RenderDrawPointsF(renderer: *SDL_Renderer, points: *SDL_FPoint, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawLineF

```lua
global function SDL_RenderDrawLineF(renderer: *SDL_Renderer, x1: float32, y1: float32, x2: float32, y2: float32): cint <cimport, nodecl> end
```

## SDL_RenderDrawLinesF

```lua
global function SDL_RenderDrawLinesF(renderer: *SDL_Renderer, points: *SDL_FPoint, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderDrawRectF

```lua
global function SDL_RenderDrawRectF(renderer: *SDL_Renderer, rect: *SDL_FRect): cint <cimport, nodecl> end
```

## SDL_RenderDrawRectsF

```lua
global function SDL_RenderDrawRectsF(renderer: *SDL_Renderer, rects: *SDL_FRect, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderFillRectF

```lua
global function SDL_RenderFillRectF(renderer: *SDL_Renderer, rect: *SDL_FRect): cint <cimport, nodecl> end
```

## SDL_RenderFillRectsF

```lua
global function SDL_RenderFillRectsF(renderer: *SDL_Renderer, rects: *SDL_FRect, count: cint): cint <cimport, nodecl> end
```

## SDL_RenderCopyF

```lua
global function SDL_RenderCopyF(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_FRect): cint <cimport, nodecl> end
```

## SDL_RenderCopyExF

```lua
global function SDL_RenderCopyExF(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_FRect, angle: float64, center: *SDL_FPoint, flip: SDL_RendererFlip): cint <cimport, nodecl> end
```

## SDL_RenderReadPixels

```lua
global function SDL_RenderReadPixels(renderer: *SDL_Renderer, rect: *SDL_Rect, format: uint32, pixels: pointer, pitch: cint): cint <cimport, nodecl> end
```

## SDL_RenderPresent

```lua
global function SDL_RenderPresent(renderer: *SDL_Renderer) <cimport, nodecl> end
```

## SDL_DestroyTexture

```lua
global function SDL_DestroyTexture(texture: *SDL_Texture) <cimport, nodecl> end
```

## SDL_DestroyRenderer

```lua
global function SDL_DestroyRenderer(renderer: *SDL_Renderer) <cimport, nodecl> end
```

## SDL_RenderFlush

```lua
global function SDL_RenderFlush(renderer: *SDL_Renderer): cint <cimport, nodecl> end
```

## SDL_GL_BindTexture

```lua
global function SDL_GL_BindTexture(texture: *SDL_Texture, texw: *float32, texh: *float32): cint <cimport, nodecl> end
```

## SDL_GL_UnbindTexture

```lua
global function SDL_GL_UnbindTexture(texture: *SDL_Texture): cint <cimport, nodecl> end
```

## SDL_RenderGetMetalLayer

```lua
global function SDL_RenderGetMetalLayer(renderer: *SDL_Renderer): pointer <cimport, nodecl> end
```

## SDL_RenderGetMetalCommandEncoder

```lua
global function SDL_RenderGetMetalCommandEncoder(renderer: *SDL_Renderer): pointer <cimport, nodecl> end
```

## SDL_CreateShapedWindow

```lua
global function SDL_CreateShapedWindow(title: cstring, x: cuint, y: cuint, w: cuint, h: cuint, flags: uint32): *SDL_Window <cimport, nodecl> end
```

## SDL_IsShapedWindow

```lua
global function SDL_IsShapedWindow(window: *SDL_Window): SDL_bool <cimport, nodecl> end
```

## SDL_SetWindowShape

```lua
global SDL_WindowShapeMode: type <cimport, nodecl> = @record{
  mode: WindowShapeMode,
  parameters: SDL_WindowShapeParams
}
global function SDL_SetWindowShape(window: *SDL_Window, shape: *SDL_Surface, shape_mode: *SDL_WindowShapeMode): cint <cimport, nodecl> end
```

## SDL_GetShapedWindowMode

```lua
global function SDL_GetShapedWindowMode(window: *SDL_Window, shape_mode: *SDL_WindowShapeMode): cint <cimport, nodecl> end
```

## SDL_LinuxSetThreadPriority

```lua
global function SDL_LinuxSetThreadPriority(threadID: int64, priority: cint): cint <cimport, nodecl> end
```

## SDL_IsTablet

```lua
global function SDL_IsTablet(): SDL_bool <cimport, nodecl> end
```

## SDL_OnApplicationWillTerminate

```lua
global function SDL_OnApplicationWillTerminate() <cimport, nodecl> end
```

## SDL_OnApplicationDidReceiveMemoryWarning

```lua
global function SDL_OnApplicationDidReceiveMemoryWarning() <cimport, nodecl> end
```

## SDL_OnApplicationWillResignActive

```lua
global function SDL_OnApplicationWillResignActive() <cimport, nodecl> end
```

## SDL_OnApplicationDidEnterBackground

```lua
global function SDL_OnApplicationDidEnterBackground() <cimport, nodecl> end
```

## SDL_OnApplicationWillEnterForeground

```lua
global function SDL_OnApplicationWillEnterForeground() <cimport, nodecl> end
```

## SDL_OnApplicationDidBecomeActive

```lua
global function SDL_OnApplicationDidBecomeActive() <cimport, nodecl> end
```

## SDL_GetTicks

```lua
global function SDL_GetTicks(): uint32 <cimport, nodecl> end
```

## SDL_GetPerformanceCounter

```lua
global function SDL_GetPerformanceCounter(): uint64 <cimport, nodecl> end
```

## SDL_GetPerformanceFrequency

```lua
global function SDL_GetPerformanceFrequency(): uint64 <cimport, nodecl> end
```

## SDL_Delay

```lua
global function SDL_Delay(ms: uint32) <cimport, nodecl> end
```

## SDL_AddTimer

```lua
global function SDL_AddTimer(interval: uint32, callback: SDL_TimerCallback, param: pointer): cint <cimport, nodecl> end
```

## SDL_RemoveTimer

```lua
global function SDL_RemoveTimer(id: cint): SDL_bool <cimport, nodecl> end
```

## SDL_GetVersion

```lua
global SDL_version: type <cimport, nodecl> = @record{
  major: uint8,
  minor: uint8,
  patch: uint8
}
global function SDL_GetVersion(ver: *SDL_version) <cimport, nodecl> end
```

## SDL_GetRevision

```lua
global function SDL_GetRevision(): cstring <cimport, nodecl> end
```

## SDL_GetRevisionNumber

```lua
global function SDL_GetRevisionNumber(): cint <cimport, nodecl> end
```

## SDL_GetPreferredLocales

```lua
global SDL_Locale: type <cimport, nodecl> = @record{
  language: cstring,
  country: cstring
}
global function SDL_GetPreferredLocales(): *SDL_Locale <cimport, nodecl> end
```

## SDL_OpenURL

```lua
global function SDL_OpenURL(url: cstring): cint <cimport, nodecl> end
```

## SDL_Init

```lua
global function SDL_Init(flags: uint32): cint <cimport, nodecl> end
```

## SDL_InitSubSystem

```lua
global function SDL_InitSubSystem(flags: uint32): cint <cimport, nodecl> end
```

## SDL_QuitSubSystem

```lua
global function SDL_QuitSubSystem(flags: uint32) <cimport, nodecl> end
```

## SDL_WasInit

```lua
global function SDL_WasInit(flags: uint32): uint32 <cimport, nodecl> end
```

## SDL_Quit

```lua
global function SDL_Quit() <cimport, nodecl> end
```

## SDL_BlitSurface

```lua
global function SDL_BlitSurface(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_BlitScaled

```lua
global function SDL_BlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint <cimport, nodecl> end
```

## SDL_TriggerBreakpoint

```lua
global function SDL_TriggerBreakpoint() <cimport, nodecl> end
```

## SDL_CompilerBarrier

```lua
global function SDL_CompilerBarrier() <cimport, nodecl> end
```

## SDL_MemoryBarrierRelease

```lua
global function SDL_MemoryBarrierRelease() <cimport, nodecl> end
```

## SDL_MemoryBarrierAcquire

```lua
global function SDL_MemoryBarrierAcquire() <cimport, nodecl> end
```

## SDL_AtomicIncRef

```lua
global function SDL_AtomicIncRef(a: *SDL_atomic_t): cint <cimport, nodecl> end
```

## SDL_AtomicDecRef

```lua
global function SDL_AtomicDecRef(a: *SDL_atomic_t): cint <cimport, nodecl> end
```

## SDL_OutOfMemory

```lua
global function SDL_OutOfMemory(): cint <cimport, nodecl> end
```

## SDL_Unsupported

```lua
global function SDL_Unsupported(): cint <cimport, nodecl> end
```

## SDL_InvalidParamError

```lua
global function SDL_InvalidParamError(param: cstring): cint <cimport, nodecl> end
```

## SDL_SwapLE16

```lua
global function SDL_SwapLE16(x: int16): int16 <cimport, nodecl> end
```

## SDL_SwapLE32

```lua
global function SDL_SwapLE32(x: int32): int32 <cimport, nodecl> end
```

## SDL_SwapLE64

```lua
global function SDL_SwapLE64(x: int64): int64 <cimport, nodecl> end
```

## SDL_SwapFloatLE

```lua
global function SDL_SwapFloatLE(x: float32): float32 <cimport, nodecl> end
```

## SDL_SwapBE16

```lua
global function SDL_SwapBE16(x: int16): int16 <cimport, nodecl> end
```

## SDL_SwapBE32

```lua
global function SDL_SwapBE32(x: int32): int32 <cimport, nodecl> end
```

## SDL_SwapBE64

```lua
global function SDL_SwapBE64(x: int64): int64 <cimport, nodecl> end
```

## SDL_SwapFloatBE

```lua
global function SDL_SwapFloatBE(x: float32): float32 <cimport, nodecl> end
```

## SDL_LoadWAV

```lua
global function SDL_LoadWAV(file: cstring, spec: *SDL_AudioSpec, audio_buf: **uint8, audio_len: *uint32): *SDL_AudioSpec <cimport, nodecl> end
```

## SDL_LoadBMP

```lua
global function SDL_LoadBMP(file: cstring): *SDL_Surface <cimport, nodecl> end
```

## SDL_SaveBMP

```lua
global function SDL_SaveBMP(surface: *SDL_Surface, file: cstring): cint <cimport, nodecl> end
```

## SDL_GameControllerAddMappingsFromFile

```lua
global function SDL_GameControllerAddMappingsFromFile(file: cstring): cint <cimport, nodecl> end
```

## SDL_QuitRequested

```lua
global function SDL_QuitRequested(): cint <cimport, nodecl> end
```

## SDL_GetEventState

```lua
global function SDL_GetEventState(type: uint32): uint8 <cimport, nodecl> end
```

## SDL_AUDIO_BITSIZE

```lua
global function SDL_AUDIO_BITSIZE(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISFLOAT

```lua
global function SDL_AUDIO_ISFLOAT(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISBIGENDIAN

```lua
global function SDL_AUDIO_ISBIGENDIAN(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISSIGNED

```lua
global function SDL_AUDIO_ISSIGNED(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISINT

```lua
global function SDL_AUDIO_ISINT(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISLITTLEENDIAN

```lua
global function SDL_AUDIO_ISLITTLEENDIAN(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_AUDIO_ISUNSIGNED

```lua
global function SDL_AUDIO_ISUNSIGNED(x: uint16): uint16 <cimport, nodecl> end
```

## SDL_PIXELFLAG

```lua
global function SDL_PIXELFLAG(x: cint): cint <cimport, nodecl> end
```

## SDL_PIXELTYPE

```lua
global function SDL_PIXELTYPE(x: cint): cint <cimport, nodecl> end
```

## SDL_PIXELORDER

```lua
global function SDL_PIXELORDER(x: cint): cint <cimport, nodecl> end
```

## SDL_PIXELLAYOUT

```lua
global function SDL_PIXELLAYOUT(x: cint): cint <cimport, nodecl> end
```

## SDL_BITSPERPIXEL

```lua
global function SDL_BITSPERPIXEL(x: cint): cint <cimport, nodecl> end
```

## SDL_BYTESPERPIXEL

```lua
global function SDL_BYTESPERPIXEL(x: cint): cint <cimport, nodecl> end
```

## SDL_ISPIXELFORMAT_INDEXED

```lua
global function SDL_ISPIXELFORMAT_INDEXED(format: SDL_PixelFormatEnum): SDL_bool <cimport, nodecl> end
```

## SDL_ISPIXELFORMAT_PACKED

```lua
global function SDL_ISPIXELFORMAT_PACKED(format: SDL_PixelFormatEnum): SDL_bool <cimport, nodecl> end
```

## SDL_ISPIXELFORMAT_ARRAY

```lua
global function SDL_ISPIXELFORMAT_ARRAY(format: SDL_PixelFormatEnum): SDL_bool <cimport, nodecl> end
```

## SDL_ISPIXELFORMAT_ALPHA

```lua
global function SDL_ISPIXELFORMAT_ALPHA(format: SDL_PixelFormatEnum): SDL_bool <cimport, nodecl> end
```

## SDL_ISPIXELFORMAT_FOURCC

```lua
global function SDL_ISPIXELFORMAT_FOURCC(format: SDL_PixelFormatEnum): SDL_bool <cimport, nodecl> end
```

## SDL_WINDOWPOS_ISUNDEFINED

```lua
global function SDL_WINDOWPOS_ISUNDEFINED(x: uint32): SDL_bool <cimport, nodecl> end
```

## SDL_WINDOWPOS_ISCENTERED

```lua
global function SDL_WINDOWPOS_ISCENTERED(x: uint32): SDL_bool <cimport, nodecl> end
```

## SDL_MUSTLOCK

```lua
global function SDL_MUSTLOCK(s: *SDL_Surface): SDL_bool <cimport, nodecl> end
```

## SDL_SCANCODE_TO_KEYCODE

```lua
global function SDL_SCANCODE_TO_KEYCODE(x: SDL_Scancode): SDL_KeyCode <cimport, nodecl> end
```

## SDL_SHAPEMODEALPHA

```lua
global function SDL_SHAPEMODEALPHA(mode: WindowShapeMode): SDL_bool <cimport, nodecl> end
```

## SDL_VERSION

```lua
global function SDL_VERSION(x: *SDL_version) <cimport, nodecl> end
```

## SDL_VERSION_ATLEAST

```lua
global function SDL_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool <cimport, nodecl> end
```
