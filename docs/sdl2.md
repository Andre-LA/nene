### SDL_GetPlatform

```lua
global function SDL_GetPlatform(): cstring
```



### SDL_bool

```lua
global SDL_bool: type = @enum(cint){
  SDL_FALSE = 0,
  SDL_TRUE = 1
}
```



### SDL_malloc

```lua
global function SDL_malloc(size: csize): pointer
```



### SDL_calloc

```lua
global function SDL_calloc(nmemb: csize, size: csize): pointer
```



### SDL_realloc

```lua
global function SDL_realloc(mem: pointer, size: csize): pointer
```



### SDL_free

```lua
global function SDL_free(mem: pointer)
```



### SDL_malloc_func

```lua
global SDL_malloc_func: type = @function(csize): pointer
```



### SDL_calloc_func

```lua
global SDL_calloc_func: type = @function(csize, csize): pointer
```



### SDL_realloc_func

```lua
global SDL_realloc_func: type = @function(pointer, csize): pointer
```



### SDL_free_func

```lua
global SDL_free_func: type = @function(pointer)
```



### SDL_GetMemoryFunctions

```lua
global function SDL_GetMemoryFunctions(malloc_func: *SDL_malloc_func, calloc_func: *SDL_calloc_func, realloc_func: *SDL_realloc_func, free_func: *SDL_free_func)
```



### SDL_SetMemoryFunctions

```lua
global function SDL_SetMemoryFunctions(malloc_func: SDL_malloc_func, calloc_func: SDL_calloc_func, realloc_func: SDL_realloc_func, free_func: SDL_free_func): cint
```



### SDL_GetNumAllocations

```lua
global function SDL_GetNumAllocations(): cint
```



### SDL_getenv

```lua
global function SDL_getenv(name: cstring): cstring
```



### SDL_setenv

```lua
global function SDL_setenv(name: cstring, value: cstring, overwrite: cint): cint
```



### SDL_qsort

```lua
global function SDL_qsort(base: pointer, nmemb: csize, size: csize, compare: function(pointer, pointer): cint)
```



### SDL_abs

```lua
global function SDL_abs(x: cint): cint
```



### SDL_isdigit

```lua
global function SDL_isdigit(x: cint): cint
```



### SDL_isspace

```lua
global function SDL_isspace(x: cint): cint
```



### SDL_isupper

```lua
global function SDL_isupper(x: cint): cint
```



### SDL_islower

```lua
global function SDL_islower(x: cint): cint
```



### SDL_toupper

```lua
global function SDL_toupper(x: cint): cint
```



### SDL_tolower

```lua
global function SDL_tolower(x: cint): cint
```



### SDL_crc32

```lua
global function SDL_crc32(crc: uint32, data: pointer, len: csize): uint32
```



### SDL_memset

```lua
global function SDL_memset(dst: pointer, c: cint, len: csize): pointer
```



### SDL_memset4

```lua
global function SDL_memset4(dst: pointer, val: uint32, dwords: csize)
```



### SDL_memcpy

```lua
global function SDL_memcpy(dst: pointer, src: pointer, len: csize): pointer
```



### SDL_memmove

```lua
global function SDL_memmove(dst: pointer, src: pointer, len: csize): pointer
```



### SDL_memcmp

```lua
global function SDL_memcmp(s1: pointer, s2: pointer, len: csize): cint
```



### SDL_wcslen

```lua
global function SDL_wcslen(wstr: *cint): csize
```



### SDL_wcslcpy

```lua
global function SDL_wcslcpy(dst: *cint, src: *cint, maxlen: csize): csize
```



### SDL_wcslcat

```lua
global function SDL_wcslcat(dst: *cint, src: *cint, maxlen: csize): csize
```



### SDL_wcsdup

```lua
global function SDL_wcsdup(wstr: *cint): *cint
```



### SDL_wcsstr

```lua
global function SDL_wcsstr(haystack: *cint, needle: *cint): *cint
```



### SDL_wcscmp

```lua
global function SDL_wcscmp(str1: *cint, str2: *cint): cint
```



### SDL_wcsncmp

```lua
global function SDL_wcsncmp(str1: *cint, str2: *cint, maxlen: csize): cint
```



### SDL_wcscasecmp

```lua
global function SDL_wcscasecmp(str1: *cint, str2: *cint): cint
```



### SDL_wcsncasecmp

```lua
global function SDL_wcsncasecmp(str1: *cint, str2: *cint, len: csize): cint
```



### SDL_strlen

```lua
global function SDL_strlen(str: cstring): csize
```



### SDL_strlcpy

```lua
global function SDL_strlcpy(dst: cstring, src: cstring, maxlen: csize): csize
```



### SDL_utf8strlcpy

```lua
global function SDL_utf8strlcpy(dst: cstring, src: cstring, dst_bytes: csize): csize
```



### SDL_strlcat

```lua
global function SDL_strlcat(dst: cstring, src: cstring, maxlen: csize): csize
```



### SDL_strdup

```lua
global function SDL_strdup(str: cstring): cstring
```



### SDL_strrev

```lua
global function SDL_strrev(str: cstring): cstring
```



### SDL_strupr

```lua
global function SDL_strupr(str: cstring): cstring
```



### SDL_strlwr

```lua
global function SDL_strlwr(str: cstring): cstring
```



### SDL_strchr

```lua
global function SDL_strchr(str: cstring, c: cint): cstring
```



### SDL_strrchr

```lua
global function SDL_strrchr(str: cstring, c: cint): cstring
```



### SDL_strstr

```lua
global function SDL_strstr(haystack: cstring, needle: cstring): cstring
```



### SDL_strtokr

```lua
global function SDL_strtokr(s1: cstring, s2: cstring, saveptr: *cstring): cstring
```



### SDL_utf8strlen

```lua
global function SDL_utf8strlen(str: cstring): csize
```



### SDL_itoa

```lua
global function SDL_itoa(value: cint, str: cstring, radix: cint): cstring
```



### SDL_uitoa

```lua
global function SDL_uitoa(value: cuint, str: cstring, radix: cint): cstring
```



### SDL_ltoa

```lua
global function SDL_ltoa(value: clong, str: cstring, radix: cint): cstring
```



### SDL_ultoa

```lua
global function SDL_ultoa(value: culong, str: cstring, radix: cint): cstring
```



### SDL_lltoa

```lua
global function SDL_lltoa(value: int64, str: cstring, radix: cint): cstring
```



### SDL_ulltoa

```lua
global function SDL_ulltoa(value: uint64, str: cstring, radix: cint): cstring
```



### SDL_atoi

```lua
global function SDL_atoi(str: cstring): cint
```



### SDL_atof

```lua
global function SDL_atof(str: cstring): float64
```



### SDL_strtol

```lua
global function SDL_strtol(str: cstring, endp: *cstring, base: cint): clong
```



### SDL_strtoul

```lua
global function SDL_strtoul(str: cstring, endp: *cstring, base: cint): culong
```



### SDL_strtoll

```lua
global function SDL_strtoll(str: cstring, endp: *cstring, base: cint): int64
```



### SDL_strtoull

```lua
global function SDL_strtoull(str: cstring, endp: *cstring, base: cint): uint64
```



### SDL_strtod

```lua
global function SDL_strtod(str: cstring, endp: *cstring): float64
```



### SDL_strcmp

```lua
global function SDL_strcmp(str1: cstring, str2: cstring): cint
```



### SDL_strncmp

```lua
global function SDL_strncmp(str1: cstring, str2: cstring, maxlen: csize): cint
```



### SDL_strcasecmp

```lua
global function SDL_strcasecmp(str1: cstring, str2: cstring): cint
```



### SDL_strncasecmp

```lua
global function SDL_strncasecmp(str1: cstring, str2: cstring, len: csize): cint
```



### SDL_sscanf

```lua
global function SDL_sscanf(text: cstring, fmt: cstring, ...: cvarargs): cint
```



### SDL_vsscanf

```lua
global function SDL_vsscanf(text: cstring, fmt: cstring, ap: cvalist): cint
```



### SDL_snprintf

```lua
global function SDL_snprintf(text: cstring, maxlen: csize, fmt: cstring, ...: cvarargs): cint
```



### SDL_vsnprintf

```lua
global function SDL_vsnprintf(text: cstring, maxlen: csize, fmt: cstring, ap: cvalist): cint
```



### SDL_acos

```lua
global function SDL_acos(x: float64): float64
```



### SDL_acosf

```lua
global function SDL_acosf(x: float32): float32
```



### SDL_asin

```lua
global function SDL_asin(x: float64): float64
```



### SDL_asinf

```lua
global function SDL_asinf(x: float32): float32
```



### SDL_atan

```lua
global function SDL_atan(x: float64): float64
```



### SDL_atanf

```lua
global function SDL_atanf(x: float32): float32
```



### SDL_atan2

```lua
global function SDL_atan2(x: float64, y: float64): float64
```



### SDL_atan2f

```lua
global function SDL_atan2f(x: float32, y: float32): float32
```



### SDL_ceil

```lua
global function SDL_ceil(x: float64): float64
```



### SDL_ceilf

```lua
global function SDL_ceilf(x: float32): float32
```



### SDL_copysign

```lua
global function SDL_copysign(x: float64, y: float64): float64
```



### SDL_copysignf

```lua
global function SDL_copysignf(x: float32, y: float32): float32
```



### SDL_cos

```lua
global function SDL_cos(x: float64): float64
```



### SDL_cosf

```lua
global function SDL_cosf(x: float32): float32
```



### SDL_exp

```lua
global function SDL_exp(x: float64): float64
```



### SDL_expf

```lua
global function SDL_expf(x: float32): float32
```



### SDL_fabs

```lua
global function SDL_fabs(x: float64): float64
```



### SDL_fabsf

```lua
global function SDL_fabsf(x: float32): float32
```



### SDL_floor

```lua
global function SDL_floor(x: float64): float64
```



### SDL_floorf

```lua
global function SDL_floorf(x: float32): float32
```



### SDL_trunc

```lua
global function SDL_trunc(x: float64): float64
```



### SDL_truncf

```lua
global function SDL_truncf(x: float32): float32
```



### SDL_fmod

```lua
global function SDL_fmod(x: float64, y: float64): float64
```



### SDL_fmodf

```lua
global function SDL_fmodf(x: float32, y: float32): float32
```



### SDL_log

```lua
global function SDL_log(x: float64): float64
```



### SDL_logf

```lua
global function SDL_logf(x: float32): float32
```



### SDL_log10

```lua
global function SDL_log10(x: float64): float64
```



### SDL_log10f

```lua
global function SDL_log10f(x: float32): float32
```



### SDL_pow

```lua
global function SDL_pow(x: float64, y: float64): float64
```



### SDL_powf

```lua
global function SDL_powf(x: float32, y: float32): float32
```



### SDL_scalbn

```lua
global function SDL_scalbn(x: float64, n: cint): float64
```



### SDL_scalbnf

```lua
global function SDL_scalbnf(x: float32, n: cint): float32
```



### SDL_sin

```lua
global function SDL_sin(x: float64): float64
```



### SDL_sinf

```lua
global function SDL_sinf(x: float32): float32
```



### SDL_sqrt

```lua
global function SDL_sqrt(x: float64): float64
```



### SDL_sqrtf

```lua
global function SDL_sqrtf(x: float32): float32
```



### SDL_tan

```lua
global function SDL_tan(x: float64): float64
```



### SDL_tanf

```lua
global function SDL_tanf(x: float32): float32
```



### _SDL_iconv_t

```lua
global _SDL_iconv_t: type = @record{}
```



### SDL_iconv_t

```lua
global SDL_iconv_t: type = @*_SDL_iconv_t
```



### SDL_iconv_open

```lua
global function SDL_iconv_open(tocode: cstring, fromcode: cstring): SDL_iconv_t
```



### SDL_iconv_close

```lua
global function SDL_iconv_close(cd: SDL_iconv_t): cint
```



### SDL_iconv

```lua
global function SDL_iconv(cd: SDL_iconv_t, inbuf: *cstring, inbytesleft: *csize, outbuf: *cstring, outbytesleft: *csize): csize
```



### SDL_iconv_string

```lua
global function SDL_iconv_string(tocode: cstring, fromcode: cstring, inbuf: cstring, inbytesleft: csize): cstring
```



### SDL_memcpy4

```lua
global function SDL_memcpy4(dst: pointer, src: pointer, dwords: csize): pointer
```



### SDL_main_func

```lua
global SDL_main_func: type = @function(cint, *cstring): cint
```



### SDL_main

```lua
global function SDL_main(argc: cint, argv: *cstring): cint
```



### SDL_SetMainReady

```lua
global function SDL_SetMainReady()
```



### SDL_AssertState

```lua
global SDL_AssertState: type = @enum(cint){
  SDL_ASSERTION_RETRY = 0,
  SDL_ASSERTION_BREAK = 1,
  SDL_ASSERTION_ABORT = 2,
  SDL_ASSERTION_IGNORE = 3,
  SDL_ASSERTION_ALWAYS_IGNORE = 4
}
```



### SDL_AssertData

```lua
global SDL_AssertData: type = @record{}
```



### SDL_ReportAssertion

```lua
global function SDL_ReportAssertion(a1: *SDL_AssertData, a2: cstring, a3: cstring, a4: cint): SDL_AssertState
```



### SDL_AssertionHandler

```lua
global SDL_AssertionHandler: type = @function(*SDL_AssertData, pointer): SDL_AssertState
```



### SDL_SetAssertionHandler

```lua
global function SDL_SetAssertionHandler(handler: SDL_AssertionHandler, userdata: pointer)
```



### SDL_GetDefaultAssertionHandler

```lua
global function SDL_GetDefaultAssertionHandler(): SDL_AssertionHandler
```



### SDL_GetAssertionHandler

```lua
global function SDL_GetAssertionHandler(puserdata: *pointer): SDL_AssertionHandler
```



### SDL_GetAssertionReport

```lua
global function SDL_GetAssertionReport(): *SDL_AssertData
```



### SDL_ResetAssertionReport

```lua
global function SDL_ResetAssertionReport()
```



### SDL_AtomicTryLock

```lua
global function SDL_AtomicTryLock(lock: *cint): SDL_bool
```



### SDL_AtomicLock

```lua
global function SDL_AtomicLock(lock: *cint)
```



### SDL_AtomicUnlock

```lua
global function SDL_AtomicUnlock(lock: *cint)
```



### SDL_MemoryBarrierReleaseFunction

```lua
global function SDL_MemoryBarrierReleaseFunction()
```



### SDL_MemoryBarrierAcquireFunction

```lua
global function SDL_MemoryBarrierAcquireFunction()
```



### SDL_atomic_t

```lua
global SDL_atomic_t: type = @record{
  value: cint
}
```



### SDL_AtomicCAS

```lua
global function SDL_AtomicCAS(a: *SDL_atomic_t, oldval: cint, newval: cint): SDL_bool
```



### SDL_AtomicSet

```lua
global function SDL_AtomicSet(a: *SDL_atomic_t, v: cint): cint
```



### SDL_AtomicGet

```lua
global function SDL_AtomicGet(a: *SDL_atomic_t): cint
```



### SDL_AtomicAdd

```lua
global function SDL_AtomicAdd(a: *SDL_atomic_t, v: cint): cint
```



### SDL_AtomicCASPtr

```lua
global function SDL_AtomicCASPtr(a: *pointer, oldval: pointer, newval: pointer): SDL_bool
```



### SDL_AtomicSetPtr

```lua
global function SDL_AtomicSetPtr(a: *pointer, v: pointer): pointer
```



### SDL_AtomicGetPtr

```lua
global function SDL_AtomicGetPtr(a: *pointer): pointer
```



### SDL_SetError

```lua
global function SDL_SetError(fmt: cstring, ...: cvarargs): cint
```



### SDL_GetError

```lua
global function SDL_GetError(): cstring
```



### SDL_GetErrorMsg

```lua
global function SDL_GetErrorMsg(errstr: cstring, maxlen: cint): cstring
```



### SDL_ClearError

```lua
global function SDL_ClearError()
```



### SDL_errorcode

```lua
global SDL_errorcode: type = @enum(cint){
  SDL_ENOMEM = 0,
  SDL_EFREAD = 1,
  SDL_EFWRITE = 2,
  SDL_EFSEEK = 3,
  SDL_UNSUPPORTED = 4,
  SDL_LASTERROR = 5
}
```



### SDL_Error

```lua
global function SDL_Error(code: SDL_errorcode): cint
```



### SDL_Swap16

```lua
global function SDL_Swap16(x: uint16): uint16
```



### SDL_Swap32

```lua
global function SDL_Swap32(x: uint32): uint32
```



### SDL_Swap64

```lua
global function SDL_Swap64(x: uint64): uint64
```



### SDL_SwapFloat

```lua
global function SDL_SwapFloat(x: float32): float32
```



### SDL_mutex

```lua
global SDL_mutex: type = @record{}
```



### SDL_CreateMutex

```lua
global function SDL_CreateMutex(): *SDL_mutex
```



### SDL_LockMutex

```lua
global function SDL_LockMutex(mutex: *SDL_mutex): cint
```



### SDL_TryLockMutex

```lua
global function SDL_TryLockMutex(mutex: *SDL_mutex): cint
```



### SDL_UnlockMutex

```lua
global function SDL_UnlockMutex(mutex: *SDL_mutex): cint
```



### SDL_DestroyMutex

```lua
global function SDL_DestroyMutex(mutex: *SDL_mutex)
```



### SDL_semaphore

```lua
global SDL_semaphore: type = @record{}
```



### SDL_sem

```lua
global SDL_sem: type = @SDL_semaphore
```



### SDL_CreateSemaphore

```lua
global function SDL_CreateSemaphore(initial_value: uint32): *SDL_sem
```



### SDL_DestroySemaphore

```lua
global function SDL_DestroySemaphore(sem: *SDL_sem)
```



### SDL_SemWait

```lua
global function SDL_SemWait(sem: *SDL_sem): cint
```



### SDL_SemTryWait

```lua
global function SDL_SemTryWait(sem: *SDL_sem): cint
```



### SDL_SemWaitTimeout

```lua
global function SDL_SemWaitTimeout(sem: *SDL_sem, ms: uint32): cint
```



### SDL_SemPost

```lua
global function SDL_SemPost(sem: *SDL_sem): cint
```



### SDL_SemValue

```lua
global function SDL_SemValue(sem: *SDL_sem): uint32
```



### SDL_cond

```lua
global SDL_cond: type = @record{}
```



### SDL_CreateCond

```lua
global function SDL_CreateCond(): *SDL_cond
```



### SDL_DestroyCond

```lua
global function SDL_DestroyCond(cond: *SDL_cond)
```



### SDL_CondSignal

```lua
global function SDL_CondSignal(cond: *SDL_cond): cint
```



### SDL_CondBroadcast

```lua
global function SDL_CondBroadcast(cond: *SDL_cond): cint
```



### SDL_CondWait

```lua
global function SDL_CondWait(cond: *SDL_cond, mutex: *SDL_mutex): cint
```



### SDL_CondWaitTimeout

```lua
global function SDL_CondWaitTimeout(cond: *SDL_cond, mutex: *SDL_mutex, ms: uint32): cint
```



### SDL_Thread

```lua
global SDL_Thread: type = @record{}
```



### SDL_ThreadPriority

```lua
global SDL_ThreadPriority: type = @enum(cint){
  SDL_THREAD_PRIORITY_LOW = 0,
  SDL_THREAD_PRIORITY_NORMAL = 1,
  SDL_THREAD_PRIORITY_HIGH = 2,
  SDL_THREAD_PRIORITY_TIME_CRITICAL = 3
}
```



### SDL_ThreadFunction

```lua
global SDL_ThreadFunction: type = @function(pointer): cint
```



### SDL_CreateThread

```lua
global function SDL_CreateThread(fn: SDL_ThreadFunction, name: cstring, data: pointer): *SDL_Thread
```



### SDL_CreateThreadWithStackSize

```lua
global function SDL_CreateThreadWithStackSize(fn: SDL_ThreadFunction, name: cstring, stacksize: csize, data: pointer): *SDL_Thread
```



### SDL_GetThreadName

```lua
global function SDL_GetThreadName(thread: *SDL_Thread): cstring
```



### SDL_ThreadID

```lua
global function SDL_ThreadID(): culong
```



### SDL_GetThreadID

```lua
global function SDL_GetThreadID(thread: *SDL_Thread): culong
```



### SDL_SetThreadPriority

```lua
global function SDL_SetThreadPriority(priority: SDL_ThreadPriority): cint
```



### SDL_WaitThread

```lua
global function SDL_WaitThread(thread: *SDL_Thread, status: *cint)
```



### SDL_DetachThread

```lua
global function SDL_DetachThread(thread: *SDL_Thread)
```



### SDL_TLSCreate

```lua
global function SDL_TLSCreate(): cuint
```



### SDL_TLSGet

```lua
global function SDL_TLSGet(id: cuint): pointer
```



### SDL_TLSSet

```lua
global function SDL_TLSSet(id: cuint, value: pointer, destructor: function(pointer)): cint
```



### SDL_RWops

```lua
global SDL_RWops: type = @record{}
```



### SDL_RWFromFile

```lua
global function SDL_RWFromFile(file: cstring, mode: cstring): *SDL_RWops
```



### SDL_RWFromFP

```lua
global function SDL_RWFromFP(fp: *FILE, autoclose: SDL_bool): *SDL_RWops
```



### SDL_RWFromMem

```lua
global function SDL_RWFromMem(mem: pointer, size: cint): *SDL_RWops
```



### SDL_RWFromConstMem

```lua
global function SDL_RWFromConstMem(mem: pointer, size: cint): *SDL_RWops
```



### SDL_AllocRW

```lua
global function SDL_AllocRW(): *SDL_RWops
```



### SDL_FreeRW

```lua
global function SDL_FreeRW(area: *SDL_RWops)
```



### SDL_RWsize

```lua
global function SDL_RWsize(context: *SDL_RWops): int64
```



### SDL_RWseek

```lua
global function SDL_RWseek(context: *SDL_RWops, offset: int64, whence: cint): int64
```



### SDL_RWtell

```lua
global function SDL_RWtell(context: *SDL_RWops): int64
```



### SDL_RWread

```lua
global function SDL_RWread(context: *SDL_RWops, ptr: pointer, size: csize, maxnum: csize): csize
```



### SDL_RWwrite

```lua
global function SDL_RWwrite(context: *SDL_RWops, ptr: pointer, size: csize, num: csize): csize
```



### SDL_RWclose

```lua
global function SDL_RWclose(context: *SDL_RWops): cint
```



### SDL_LoadFile_RW

```lua
global function SDL_LoadFile_RW(src: *SDL_RWops, datasize: *csize, freesrc: cint): pointer
```



### SDL_LoadFile

```lua
global function SDL_LoadFile(file: cstring, datasize: *csize): pointer
```



### SDL_ReadU8

```lua
global function SDL_ReadU8(src: *SDL_RWops): uint8
```



### SDL_ReadLE16

```lua
global function SDL_ReadLE16(src: *SDL_RWops): uint16
```



### SDL_ReadBE16

```lua
global function SDL_ReadBE16(src: *SDL_RWops): uint16
```



### SDL_ReadLE32

```lua
global function SDL_ReadLE32(src: *SDL_RWops): uint32
```



### SDL_ReadBE32

```lua
global function SDL_ReadBE32(src: *SDL_RWops): uint32
```



### SDL_ReadLE64

```lua
global function SDL_ReadLE64(src: *SDL_RWops): uint64
```



### SDL_ReadBE64

```lua
global function SDL_ReadBE64(src: *SDL_RWops): uint64
```



### SDL_WriteU8

```lua
global function SDL_WriteU8(dst: *SDL_RWops, value: uint8): csize
```



### SDL_WriteLE16

```lua
global function SDL_WriteLE16(dst: *SDL_RWops, value: uint16): csize
```



### SDL_WriteBE16

```lua
global function SDL_WriteBE16(dst: *SDL_RWops, value: uint16): csize
```



### SDL_WriteLE32

```lua
global function SDL_WriteLE32(dst: *SDL_RWops, value: uint32): csize
```



### SDL_WriteBE32

```lua
global function SDL_WriteBE32(dst: *SDL_RWops, value: uint32): csize
```



### SDL_WriteLE64

```lua
global function SDL_WriteLE64(dst: *SDL_RWops, value: uint64): csize
```



### SDL_WriteBE64

```lua
global function SDL_WriteBE64(dst: *SDL_RWops, value: uint64): csize
```



### SDL_AudioCallback

```lua
global SDL_AudioCallback: type = @function(pointer, *uint8, cint)
```



### SDL_AudioSpec

```lua
global SDL_AudioSpec: type = @record{
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
```



### SDL_AudioCVT

```lua
global SDL_AudioCVT: type = @record{}
```



### SDL_AudioFilter

```lua
global SDL_AudioFilter: type = @function(*SDL_AudioCVT, cushort)
```



### SDL_GetNumAudioDrivers

```lua
global function SDL_GetNumAudioDrivers(): cint
```



### SDL_GetAudioDriver

```lua
global function SDL_GetAudioDriver(index: cint): cstring
```



### SDL_AudioInit

```lua
global function SDL_AudioInit(driver_name: cstring): cint
```



### SDL_AudioQuit

```lua
global function SDL_AudioQuit()
```



### SDL_GetCurrentAudioDriver

```lua
global function SDL_GetCurrentAudioDriver(): cstring
```



### SDL_OpenAudio

```lua
global function SDL_OpenAudio(desired: *SDL_AudioSpec, obtained: *SDL_AudioSpec): cint
```



### SDL_GetNumAudioDevices

```lua
global function SDL_GetNumAudioDevices(iscapture: cint): cint
```



### SDL_GetAudioDeviceName

```lua
global function SDL_GetAudioDeviceName(index: cint, iscapture: cint): cstring
```



### SDL_OpenAudioDevice

```lua
global function SDL_OpenAudioDevice(device: cstring, iscapture: cint, desired: *SDL_AudioSpec, obtained: *SDL_AudioSpec, allowed_changes: cint): cuint
```



### SDL_AudioStatus

```lua
global SDL_AudioStatus: type = @enum(cint){
  SDL_AUDIO_STOPPED = 0,
  SDL_AUDIO_PLAYING = 1,
  SDL_AUDIO_PAUSED = 2
}
```



### SDL_GetAudioStatus

```lua
global function SDL_GetAudioStatus(): SDL_AudioStatus
```



### SDL_GetAudioDeviceStatus

```lua
global function SDL_GetAudioDeviceStatus(dev: cuint): SDL_AudioStatus
```



### SDL_PauseAudio

```lua
global function SDL_PauseAudio(pause_on: cint)
```



### SDL_PauseAudioDevice

```lua
global function SDL_PauseAudioDevice(dev: cuint, pause_on: cint)
```



### SDL_LoadWAV_RW

```lua
global function SDL_LoadWAV_RW(src: *SDL_RWops, freesrc: cint, spec: *SDL_AudioSpec, audio_buf: **uint8, audio_len: *uint32): *SDL_AudioSpec
```



### SDL_FreeWAV

```lua
global function SDL_FreeWAV(audio_buf: *uint8)
```



### SDL_BuildAudioCVT

```lua
global function SDL_BuildAudioCVT(cvt: *SDL_AudioCVT, src_format: cushort, src_channels: uint8, src_rate: cint, dst_format: cushort, dst_channels: uint8, dst_rate: cint): cint
```



### SDL_ConvertAudio

```lua
global function SDL_ConvertAudio(cvt: *SDL_AudioCVT): cint
```



### SDL_AudioStream

```lua
global SDL_AudioStream: type = @record{}
```



### SDL_NewAudioStream

```lua
global function SDL_NewAudioStream(src_format: cushort, src_channels: uint8, src_rate: cint, dst_format: cushort, dst_channels: uint8, dst_rate: cint): *SDL_AudioStream
```



### SDL_AudioStreamPut

```lua
global function SDL_AudioStreamPut(stream: *SDL_AudioStream, buf: pointer, len: cint): cint
```



### SDL_AudioStreamGet

```lua
global function SDL_AudioStreamGet(stream: *SDL_AudioStream, buf: pointer, len: cint): cint
```



### SDL_AudioStreamAvailable

```lua
global function SDL_AudioStreamAvailable(stream: *SDL_AudioStream): cint
```



### SDL_AudioStreamFlush

```lua
global function SDL_AudioStreamFlush(stream: *SDL_AudioStream): cint
```



### SDL_AudioStreamClear

```lua
global function SDL_AudioStreamClear(stream: *SDL_AudioStream)
```



### SDL_FreeAudioStream

```lua
global function SDL_FreeAudioStream(stream: *SDL_AudioStream)
```



### SDL_MixAudio

```lua
global function SDL_MixAudio(dst: *uint8, src: *uint8, len: uint32, volume: cint)
```



### SDL_MixAudioFormat

```lua
global function SDL_MixAudioFormat(dst: *uint8, src: *uint8, format: cushort, len: uint32, volume: cint)
```



### SDL_QueueAudio

```lua
global function SDL_QueueAudio(dev: cuint, data: pointer, len: uint32): cint
```



### SDL_DequeueAudio

```lua
global function SDL_DequeueAudio(dev: cuint, data: pointer, len: uint32): uint32
```



### SDL_GetQueuedAudioSize

```lua
global function SDL_GetQueuedAudioSize(dev: cuint): uint32
```



### SDL_ClearQueuedAudio

```lua
global function SDL_ClearQueuedAudio(dev: cuint)
```



### SDL_LockAudio

```lua
global function SDL_LockAudio()
```



### SDL_LockAudioDevice

```lua
global function SDL_LockAudioDevice(dev: cuint)
```



### SDL_UnlockAudio

```lua
global function SDL_UnlockAudio()
```



### SDL_UnlockAudioDevice

```lua
global function SDL_UnlockAudioDevice(dev: cuint)
```



### SDL_CloseAudio

```lua
global function SDL_CloseAudio()
```



### SDL_CloseAudioDevice

```lua
global function SDL_CloseAudioDevice(dev: cuint)
```



### SDL_SetClipboardText

```lua
global function SDL_SetClipboardText(text: cstring): cint
```



### SDL_GetClipboardText

```lua
global function SDL_GetClipboardText(): cstring
```



### SDL_HasClipboardText

```lua
global function SDL_HasClipboardText(): SDL_bool
```



### SDL_GetCPUCount

```lua
global function SDL_GetCPUCount(): cint
```



### SDL_GetCPUCacheLineSize

```lua
global function SDL_GetCPUCacheLineSize(): cint
```



### SDL_HasRDTSC

```lua
global function SDL_HasRDTSC(): SDL_bool
```



### SDL_HasAltiVec

```lua
global function SDL_HasAltiVec(): SDL_bool
```



### SDL_HasMMX

```lua
global function SDL_HasMMX(): SDL_bool
```



### SDL_Has3DNow

```lua
global function SDL_Has3DNow(): SDL_bool
```



### SDL_HasSSE

```lua
global function SDL_HasSSE(): SDL_bool
```



### SDL_HasSSE2

```lua
global function SDL_HasSSE2(): SDL_bool
```



### SDL_HasSSE3

```lua
global function SDL_HasSSE3(): SDL_bool
```



### SDL_HasSSE41

```lua
global function SDL_HasSSE41(): SDL_bool
```



### SDL_HasSSE42

```lua
global function SDL_HasSSE42(): SDL_bool
```



### SDL_HasAVX

```lua
global function SDL_HasAVX(): SDL_bool
```



### SDL_HasAVX2

```lua
global function SDL_HasAVX2(): SDL_bool
```



### SDL_HasAVX512F

```lua
global function SDL_HasAVX512F(): SDL_bool
```



### SDL_HasARMSIMD

```lua
global function SDL_HasARMSIMD(): SDL_bool
```



### SDL_HasNEON

```lua
global function SDL_HasNEON(): SDL_bool
```



### SDL_GetSystemRAM

```lua
global function SDL_GetSystemRAM(): cint
```



### SDL_SIMDGetAlignment

```lua
global function SDL_SIMDGetAlignment(): csize
```



### SDL_SIMDAlloc

```lua
global function SDL_SIMDAlloc(len: csize): pointer
```



### SDL_SIMDRealloc

```lua
global function SDL_SIMDRealloc(mem: pointer, len: csize): pointer
```



### SDL_SIMDFree

```lua
global function SDL_SIMDFree(ptr: pointer)
```



### SDL_PixelType

```lua
global SDL_PixelType: type = @enum(cint){
  SDL_PIXELTYPE_UNKNOWN = 0,
  SDL_PIXELTYPE_INDEX1 = 1,
  SDL_PIXELTYPE_INDEX4 = 2,
  SDL_PIXELTYPE_INDEX8 = 3,
  SDL_PIXELTYPE_PACKED8 = 4,
  SDL_PIXELTYPE_PACKED16 = 5,
  SDL_PIXELTYPE_PACKED32 = 6,
  SDL_PIXELTYPE_ARRAYU8 = 7,
  SDL_PIXELTYPE_ARRAYU16 = 8,
  SDL_PIXELTYPE_ARRAYU32 = 9,
  SDL_PIXELTYPE_ARRAYF16 = 10,
  SDL_PIXELTYPE_ARRAYF32 = 11
}
```



### SDL_BitmapOrder

```lua
global SDL_BitmapOrder: type = @enum(cint){
  SDL_BITMAPORDER_NONE = 0,
  SDL_BITMAPORDER_4321 = 1,
  SDL_BITMAPORDER_1234 = 2
}
```



### SDL_PackedOrder

```lua
global SDL_PackedOrder: type = @enum(cint){
  SDL_PACKEDORDER_NONE = 0,
  SDL_PACKEDORDER_XRGB = 1,
  SDL_PACKEDORDER_RGBX = 2,
  SDL_PACKEDORDER_ARGB = 3,
  SDL_PACKEDORDER_RGBA = 4,
  SDL_PACKEDORDER_XBGR = 5,
  SDL_PACKEDORDER_BGRX = 6,
  SDL_PACKEDORDER_ABGR = 7,
  SDL_PACKEDORDER_BGRA = 8
}
```



### SDL_ArrayOrder

```lua
global SDL_ArrayOrder: type = @enum(cint){
  SDL_ARRAYORDER_NONE = 0,
  SDL_ARRAYORDER_RGB = 1,
  SDL_ARRAYORDER_RGBA = 2,
  SDL_ARRAYORDER_ARGB = 3,
  SDL_ARRAYORDER_BGR = 4,
  SDL_ARRAYORDER_BGRA = 5,
  SDL_ARRAYORDER_ABGR = 6
}
```



### SDL_PackedLayout

```lua
global SDL_PackedLayout: type = @enum(cint){
  SDL_PACKEDLAYOUT_NONE = 0,
  SDL_PACKEDLAYOUT_332 = 1,
  SDL_PACKEDLAYOUT_4444 = 2,
  SDL_PACKEDLAYOUT_1555 = 3,
  SDL_PACKEDLAYOUT_5551 = 4,
  SDL_PACKEDLAYOUT_565 = 5,
  SDL_PACKEDLAYOUT_8888 = 6,
  SDL_PACKEDLAYOUT_2101010 = 7,
  SDL_PACKEDLAYOUT_1010102 = 8
}
```



### SDL_PixelFormatEnum

```lua
global SDL_PixelFormatEnum: type = @enum(cint){
  SDL_PIXELFORMAT_UNKNOWN = 0,
  SDL_PIXELFORMAT_INDEX1LSB = 286261504,
  SDL_PIXELFORMAT_INDEX1MSB = 287310080,
  SDL_PIXELFORMAT_INDEX4LSB = 303039488,
  SDL_PIXELFORMAT_INDEX4MSB = 304088064,
  SDL_PIXELFORMAT_INDEX8 = 318769153,
  SDL_PIXELFORMAT_RGB332 = 336660481,
  SDL_PIXELFORMAT_XRGB4444 = 353504258,
  SDL_PIXELFORMAT_RGB444 = 353504258,
  SDL_PIXELFORMAT_XBGR4444 = 357698562,
  SDL_PIXELFORMAT_BGR444 = 357698562,
  SDL_PIXELFORMAT_XRGB1555 = 353570562,
  SDL_PIXELFORMAT_RGB555 = 353570562,
  SDL_PIXELFORMAT_XBGR1555 = 357764866,
  SDL_PIXELFORMAT_BGR555 = 357764866,
  SDL_PIXELFORMAT_ARGB4444 = 355602434,
  SDL_PIXELFORMAT_RGBA4444 = 356651010,
  SDL_PIXELFORMAT_ABGR4444 = 359796738,
  SDL_PIXELFORMAT_BGRA4444 = 360845314,
  SDL_PIXELFORMAT_ARGB1555 = 355667970,
  SDL_PIXELFORMAT_RGBA5551 = 356782082,
  SDL_PIXELFORMAT_ABGR1555 = 359862274,
  SDL_PIXELFORMAT_BGRA5551 = 360976386,
  SDL_PIXELFORMAT_RGB565 = 353701890,
  SDL_PIXELFORMAT_BGR565 = 357896194,
  SDL_PIXELFORMAT_RGB24 = 386930691,
  SDL_PIXELFORMAT_BGR24 = 390076419,
  SDL_PIXELFORMAT_XRGB8888 = 370546692,
  SDL_PIXELFORMAT_RGB888 = 370546692,
  SDL_PIXELFORMAT_RGBX8888 = 371595268,
  SDL_PIXELFORMAT_XBGR8888 = 374740996,
  SDL_PIXELFORMAT_BGR888 = 374740996,
  SDL_PIXELFORMAT_BGRX8888 = 375789572,
  SDL_PIXELFORMAT_ARGB8888 = 372645892,
  SDL_PIXELFORMAT_RGBA8888 = 373694468,
  SDL_PIXELFORMAT_ABGR8888 = 376840196,
  SDL_PIXELFORMAT_BGRA8888 = 377888772,
  SDL_PIXELFORMAT_ARGB2101010 = 372711428,
  SDL_PIXELFORMAT_RGBA32 = 376840196,
  SDL_PIXELFORMAT_ARGB32 = 377888772,
  SDL_PIXELFORMAT_BGRA32 = 372645892,
  SDL_PIXELFORMAT_ABGR32 = 373694468,
  SDL_PIXELFORMAT_YV12 = 842094169,
  SDL_PIXELFORMAT_IYUV = 1448433993,
  SDL_PIXELFORMAT_YUY2 = 844715353,
  SDL_PIXELFORMAT_UYVY = 1498831189,
  SDL_PIXELFORMAT_YVYU = 1431918169,
  SDL_PIXELFORMAT_NV12 = 842094158,
  SDL_PIXELFORMAT_NV21 = 825382478,
  SDL_PIXELFORMAT_EXTERNAL_OES = 542328143
}
```



### SDL_Color

```lua
global SDL_Color: type = @record{
  r: uint8,
  g: uint8,
  b: uint8,
  a: uint8
}
```



### SDL_Palette

```lua
global SDL_Palette: type = @record{
  ncolors: cint,
  colors: *SDL_Color,
  version: uint32,
  refcount: cint
}
```



### SDL_PixelFormat

```lua
global SDL_PixelFormat: type = @record{}
```



### SDL_GetPixelFormatName

```lua
global function SDL_GetPixelFormatName(format: uint32): cstring
```



### SDL_PixelFormatEnumToMasks

```lua
global function SDL_PixelFormatEnumToMasks(format: uint32, bpp: *cint, Rmask: *uint32, Gmask: *uint32, Bmask: *uint32, Amask: *uint32): SDL_bool
```



### SDL_MasksToPixelFormatEnum

```lua
global function SDL_MasksToPixelFormatEnum(bpp: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): uint32
```



### SDL_AllocFormat

```lua
global function SDL_AllocFormat(pixel_format: uint32): *SDL_PixelFormat
```



### SDL_FreeFormat

```lua
global function SDL_FreeFormat(format: *SDL_PixelFormat)
```



### SDL_AllocPalette

```lua
global function SDL_AllocPalette(ncolors: cint): *SDL_Palette
```



### SDL_SetPixelFormatPalette

```lua
global function SDL_SetPixelFormatPalette(format: *SDL_PixelFormat, palette: *SDL_Palette): cint
```



### SDL_SetPaletteColors

```lua
global function SDL_SetPaletteColors(palette: *SDL_Palette, colors: *SDL_Color, firstcolor: cint, ncolors: cint): cint
```



### SDL_FreePalette

```lua
global function SDL_FreePalette(palette: *SDL_Palette)
```



### SDL_MapRGB

```lua
global function SDL_MapRGB(format: *SDL_PixelFormat, r: uint8, g: uint8, b: uint8): uint32
```



### SDL_MapRGBA

```lua
global function SDL_MapRGBA(format: *SDL_PixelFormat, r: uint8, g: uint8, b: uint8, a: uint8): uint32
```



### SDL_GetRGB

```lua
global function SDL_GetRGB(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8)
```



### SDL_GetRGBA

```lua
global function SDL_GetRGBA(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8, a: *uint8)
```



### SDL_CalculateGammaRamp

```lua
global function SDL_CalculateGammaRamp(gamma: float32, ramp: *uint16)
```



### SDL_Point

```lua
global SDL_Point: type = @record{
  x: cint,
  y: cint
}
```



### SDL_FPoint

```lua
global SDL_FPoint: type = @record{
  x: float32,
  y: float32
}
```



### SDL_Rect

```lua
global SDL_Rect: type = @record{
  x: cint,
  y: cint,
  w: cint,
  h: cint
}
```



### SDL_FRect

```lua
global SDL_FRect: type = @record{
  x: float32,
  y: float32,
  w: float32,
  h: float32
}
```



### SDL_PointInRect

```lua
global function SDL_PointInRect(p: *SDL_Point, r: *SDL_Rect): SDL_bool
```



### SDL_RectEmpty

```lua
global function SDL_RectEmpty(r: *SDL_Rect): SDL_bool
```



### SDL_RectEquals

```lua
global function SDL_RectEquals(a: *SDL_Rect, b: *SDL_Rect): SDL_bool
```



### SDL_HasIntersection

```lua
global function SDL_HasIntersection(A: *SDL_Rect, B: *SDL_Rect): SDL_bool
```



### SDL_IntersectRect

```lua
global function SDL_IntersectRect(A: *SDL_Rect, B: *SDL_Rect, result: *SDL_Rect): SDL_bool
```



### SDL_UnionRect

```lua
global function SDL_UnionRect(A: *SDL_Rect, B: *SDL_Rect, result: *SDL_Rect)
```



### SDL_EnclosePoints

```lua
global function SDL_EnclosePoints(points: *SDL_Point, count: cint, clip: *SDL_Rect, result: *SDL_Rect): SDL_bool
```



### SDL_IntersectRectAndLine

```lua
global function SDL_IntersectRectAndLine(rect: *SDL_Rect, X1: *cint, Y1: *cint, X2: *cint, Y2: *cint): SDL_bool
```



### SDL_BlendMode

```lua
global SDL_BlendMode: type = @enum(cint){
  SDL_BLENDMODE_NONE = 0,
  SDL_BLENDMODE_BLEND = 1,
  SDL_BLENDMODE_ADD = 2,
  SDL_BLENDMODE_MOD = 4,
  SDL_BLENDMODE_MUL = 8,
  SDL_BLENDMODE_INVALID = 2147483647
}
```



### SDL_BlendOperation

```lua
global SDL_BlendOperation: type = @enum(cint){
  SDL_BLENDOPERATION_ADD = 1,
  SDL_BLENDOPERATION_SUBTRACT = 2,
  SDL_BLENDOPERATION_REV_SUBTRACT = 3,
  SDL_BLENDOPERATION_MINIMUM = 4,
  SDL_BLENDOPERATION_MAXIMUM = 5
}
```



### SDL_BlendFactor

```lua
global SDL_BlendFactor: type = @enum(cint){
  SDL_BLENDFACTOR_ZERO = 1,
  SDL_BLENDFACTOR_ONE = 2,
  SDL_BLENDFACTOR_SRC_COLOR = 3,
  SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4,
  SDL_BLENDFACTOR_SRC_ALPHA = 5,
  SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6,
  SDL_BLENDFACTOR_DST_COLOR = 7,
  SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8,
  SDL_BLENDFACTOR_DST_ALPHA = 9,
  SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10
}
```



### SDL_ComposeCustomBlendMode

```lua
global function SDL_ComposeCustomBlendMode(srcColorFactor: SDL_BlendFactor, dstColorFactor: SDL_BlendFactor, colorOperation: SDL_BlendOperation, srcAlphaFactor: SDL_BlendFactor, dstAlphaFactor: SDL_BlendFactor, alphaOperation: SDL_BlendOperation): SDL_BlendMode
```



### SDL_BlitMap

```lua
global SDL_BlitMap: type = @record{}
```



### SDL_Surface

```lua
global SDL_Surface: type = @record{
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
```



### SDL_blit

```lua
global SDL_blit: type = @function(*SDL_Surface, *SDL_Rect, *SDL_Surface, *SDL_Rect): cint
```



### SDL_YUV_CONVERSION_MODE

```lua
global SDL_YUV_CONVERSION_MODE: type = @enum(cint){
  SDL_YUV_CONVERSION_JPEG = 0,
  SDL_YUV_CONVERSION_BT601 = 1,
  SDL_YUV_CONVERSION_BT709 = 2,
  SDL_YUV_CONVERSION_AUTOMATIC = 3
}
```



### SDL_CreateRGBSurface

```lua
global function SDL_CreateRGBSurface(flags: uint32, width: cint, height: cint, depth: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): *SDL_Surface
```



### SDL_CreateRGBSurfaceWithFormat

```lua
global function SDL_CreateRGBSurfaceWithFormat(flags: uint32, width: cint, height: cint, depth: cint, format: uint32): *SDL_Surface
```



### SDL_CreateRGBSurfaceFrom

```lua
global function SDL_CreateRGBSurfaceFrom(pixels: pointer, width: cint, height: cint, depth: cint, pitch: cint, Rmask: uint32, Gmask: uint32, Bmask: uint32, Amask: uint32): *SDL_Surface
```



### SDL_CreateRGBSurfaceWithFormatFrom

```lua
global function SDL_CreateRGBSurfaceWithFormatFrom(pixels: pointer, width: cint, height: cint, depth: cint, pitch: cint, format: uint32): *SDL_Surface
```



### SDL_FreeSurface

```lua
global function SDL_FreeSurface(surface: *SDL_Surface)
```



### SDL_SetSurfacePalette

```lua
global function SDL_SetSurfacePalette(surface: *SDL_Surface, palette: *SDL_Palette): cint
```



### SDL_LockSurface

```lua
global function SDL_LockSurface(surface: *SDL_Surface): cint
```



### SDL_UnlockSurface

```lua
global function SDL_UnlockSurface(surface: *SDL_Surface)
```



### SDL_LoadBMP_RW

```lua
global function SDL_LoadBMP_RW(src: *SDL_RWops, freesrc: cint): *SDL_Surface
```



### SDL_SaveBMP_RW

```lua
global function SDL_SaveBMP_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint): cint
```



### SDL_SetSurfaceRLE

```lua
global function SDL_SetSurfaceRLE(surface: *SDL_Surface, flag: cint): cint
```



### SDL_HasSurfaceRLE

```lua
global function SDL_HasSurfaceRLE(surface: *SDL_Surface): SDL_bool
```



### SDL_SetColorKey

```lua
global function SDL_SetColorKey(surface: *SDL_Surface, flag: cint, key: uint32): cint
```



### SDL_HasColorKey

```lua
global function SDL_HasColorKey(surface: *SDL_Surface): SDL_bool
```



### SDL_GetColorKey

```lua
global function SDL_GetColorKey(surface: *SDL_Surface, key: *uint32): cint
```



### SDL_SetSurfaceColorMod

```lua
global function SDL_SetSurfaceColorMod(surface: *SDL_Surface, r: uint8, g: uint8, b: uint8): cint
```



### SDL_GetSurfaceColorMod

```lua
global function SDL_GetSurfaceColorMod(surface: *SDL_Surface, r: *uint8, g: *uint8, b: *uint8): cint
```



### SDL_SetSurfaceAlphaMod

```lua
global function SDL_SetSurfaceAlphaMod(surface: *SDL_Surface, alpha: uint8): cint
```



### SDL_GetSurfaceAlphaMod

```lua
global function SDL_GetSurfaceAlphaMod(surface: *SDL_Surface, alpha: *uint8): cint
```



### SDL_SetSurfaceBlendMode

```lua
global function SDL_SetSurfaceBlendMode(surface: *SDL_Surface, blendMode: SDL_BlendMode): cint
```



### SDL_GetSurfaceBlendMode

```lua
global function SDL_GetSurfaceBlendMode(surface: *SDL_Surface, blendMode: *SDL_BlendMode): cint
```



### SDL_SetClipRect

```lua
global function SDL_SetClipRect(surface: *SDL_Surface, rect: *SDL_Rect): SDL_bool
```



### SDL_GetClipRect

```lua
global function SDL_GetClipRect(surface: *SDL_Surface, rect: *SDL_Rect)
```



### SDL_DuplicateSurface

```lua
global function SDL_DuplicateSurface(surface: *SDL_Surface): *SDL_Surface
```



### SDL_ConvertSurface

```lua
global function SDL_ConvertSurface(src: *SDL_Surface, fmt: *SDL_PixelFormat, flags: uint32): *SDL_Surface
```



### SDL_ConvertSurfaceFormat

```lua
global function SDL_ConvertSurfaceFormat(src: *SDL_Surface, pixel_format: uint32, flags: uint32): *SDL_Surface
```



### SDL_ConvertPixels

```lua
global function SDL_ConvertPixels(width: cint, height: cint, src_format: uint32, src: pointer, src_pitch: cint, dst_format: uint32, dst: pointer, dst_pitch: cint): cint
```



### SDL_FillRect

```lua
global function SDL_FillRect(dst: *SDL_Surface, rect: *SDL_Rect, color: uint32): cint
```



### SDL_FillRects

```lua
global function SDL_FillRects(dst: *SDL_Surface, rects: *SDL_Rect, count: cint, color: uint32): cint
```



### SDL_UpperBlit

```lua
global function SDL_UpperBlit(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_LowerBlit

```lua
global function SDL_LowerBlit(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_SoftStretch

```lua
global function SDL_SoftStretch(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_UpperBlitScaled

```lua
global function SDL_UpperBlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_LowerBlitScaled

```lua
global function SDL_LowerBlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_SetYUVConversionMode

```lua
global function SDL_SetYUVConversionMode(mode: SDL_YUV_CONVERSION_MODE)
```



### SDL_GetYUVConversionMode

```lua
global function SDL_GetYUVConversionMode(): SDL_YUV_CONVERSION_MODE
```



### SDL_GetYUVConversionModeForResolution

```lua
global function SDL_GetYUVConversionModeForResolution(width: cint, height: cint): SDL_YUV_CONVERSION_MODE
```



### SDL_DisplayMode

```lua
global SDL_DisplayMode: type = @record{
  format: uint32,
  w: cint,
  h: cint,
  refresh_rate: cint,
  driverdata: pointer
}
```



### SDL_Window

```lua
global SDL_Window: type = @record{}
```



### SDL_WindowFlags

```lua
global SDL_WindowFlags: type = @enum(cint){
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
```



### SDL_WindowEventID

```lua
global SDL_WindowEventID: type = @enum(cint){
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
```



### SDL_DisplayEventID

```lua
global SDL_DisplayEventID: type = @enum(cint){
  SDL_DISPLAYEVENT_NONE = 0,
  SDL_DISPLAYEVENT_ORIENTATION = 1,
  SDL_DISPLAYEVENT_CONNECTED = 2,
  SDL_DISPLAYEVENT_DISCONNECTED = 3
}
```



### SDL_DisplayOrientation

```lua
global SDL_DisplayOrientation: type = @enum(cint){
  SDL_ORIENTATION_UNKNOWN = 0,
  SDL_ORIENTATION_LANDSCAPE = 1,
  SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2,
  SDL_ORIENTATION_PORTRAIT = 3,
  SDL_ORIENTATION_PORTRAIT_FLIPPED = 4
}
```



### SDL_GLContext

```lua
global SDL_GLContext: type = @pointer
```



### SDL_GLattr

```lua
global SDL_GLattr: type = @enum(cint){
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
```



### SDL_GLprofile

```lua
global SDL_GLprofile: type = @enum(cint){
  SDL_GL_CONTEXT_PROFILE_CORE = 1,
  SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
  SDL_GL_CONTEXT_PROFILE_ES = 4
}
```



### SDL_GLcontextFlag

```lua
global SDL_GLcontextFlag: type = @enum(cint){
  SDL_GL_CONTEXT_DEBUG_FLAG = 1,
  SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
  SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
  SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8
}
```



### SDL_GLcontextReleaseFlag

```lua
global SDL_GLcontextReleaseFlag: type = @enum(cint){
  SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0,
  SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1
}
```



### SDL_GLContextResetNotification

```lua
global SDL_GLContextResetNotification: type = @enum(cint){
  SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0,
  SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1
}
```



### SDL_GetNumVideoDrivers

```lua
global function SDL_GetNumVideoDrivers(): cint
```



### SDL_GetVideoDriver

```lua
global function SDL_GetVideoDriver(index: cint): cstring
```



### SDL_VideoInit

```lua
global function SDL_VideoInit(driver_name: cstring): cint
```



### SDL_VideoQuit

```lua
global function SDL_VideoQuit()
```



### SDL_GetCurrentVideoDriver

```lua
global function SDL_GetCurrentVideoDriver(): cstring
```



### SDL_GetNumVideoDisplays

```lua
global function SDL_GetNumVideoDisplays(): cint
```



### SDL_GetDisplayName

```lua
global function SDL_GetDisplayName(displayIndex: cint): cstring
```



### SDL_GetDisplayBounds

```lua
global function SDL_GetDisplayBounds(displayIndex: cint, rect: *SDL_Rect): cint
```



### SDL_GetDisplayUsableBounds

```lua
global function SDL_GetDisplayUsableBounds(displayIndex: cint, rect: *SDL_Rect): cint
```



### SDL_GetDisplayDPI

```lua
global function SDL_GetDisplayDPI(displayIndex: cint, ddpi: *float32, hdpi: *float32, vdpi: *float32): cint
```



### SDL_GetDisplayOrientation

```lua
global function SDL_GetDisplayOrientation(displayIndex: cint): SDL_DisplayOrientation
```



### SDL_GetNumDisplayModes

```lua
global function SDL_GetNumDisplayModes(displayIndex: cint): cint
```



### SDL_GetDisplayMode

```lua
global function SDL_GetDisplayMode(displayIndex: cint, modeIndex: cint, mode: *SDL_DisplayMode): cint
```



### SDL_GetDesktopDisplayMode

```lua
global function SDL_GetDesktopDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode): cint
```



### SDL_GetCurrentDisplayMode

```lua
global function SDL_GetCurrentDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode): cint
```



### SDL_GetClosestDisplayMode

```lua
global function SDL_GetClosestDisplayMode(displayIndex: cint, mode: *SDL_DisplayMode, closest: *SDL_DisplayMode): *SDL_DisplayMode
```



### SDL_GetWindowDisplayIndex

```lua
global function SDL_GetWindowDisplayIndex(window: *SDL_Window): cint
```



### SDL_SetWindowDisplayMode

```lua
global function SDL_SetWindowDisplayMode(window: *SDL_Window, mode: *SDL_DisplayMode): cint
```



### SDL_GetWindowDisplayMode

```lua
global function SDL_GetWindowDisplayMode(window: *SDL_Window, mode: *SDL_DisplayMode): cint
```



### SDL_GetWindowPixelFormat

```lua
global function SDL_GetWindowPixelFormat(window: *SDL_Window): uint32
```



### SDL_CreateWindow

```lua
global function SDL_CreateWindow(title: cstring, x: cint, y: cint, w: cint, h: cint, flags: uint32): *SDL_Window
```



### SDL_CreateWindowFrom

```lua
global function SDL_CreateWindowFrom(data: pointer): *SDL_Window
```



### SDL_GetWindowID

```lua
global function SDL_GetWindowID(window: *SDL_Window): uint32
```



### SDL_GetWindowFromID

```lua
global function SDL_GetWindowFromID(id: uint32): *SDL_Window
```



### SDL_GetWindowFlags

```lua
global function SDL_GetWindowFlags(window: *SDL_Window): uint32
```



### SDL_SetWindowTitle

```lua
global function SDL_SetWindowTitle(window: *SDL_Window, title: cstring)
```



### SDL_GetWindowTitle

```lua
global function SDL_GetWindowTitle(window: *SDL_Window): cstring
```



### SDL_SetWindowIcon

```lua
global function SDL_SetWindowIcon(window: *SDL_Window, icon: *SDL_Surface)
```



### SDL_SetWindowData

```lua
global function SDL_SetWindowData(window: *SDL_Window, name: cstring, userdata: pointer): pointer
```



### SDL_GetWindowData

```lua
global function SDL_GetWindowData(window: *SDL_Window, name: cstring): pointer
```



### SDL_SetWindowPosition

```lua
global function SDL_SetWindowPosition(window: *SDL_Window, x: cint, y: cint)
```



### SDL_GetWindowPosition

```lua
global function SDL_GetWindowPosition(window: *SDL_Window, x: *cint, y: *cint)
```



### SDL_SetWindowSize

```lua
global function SDL_SetWindowSize(window: *SDL_Window, w: cint, h: cint)
```



### SDL_GetWindowSize

```lua
global function SDL_GetWindowSize(window: *SDL_Window, w: *cint, h: *cint)
```



### SDL_GetWindowBordersSize

```lua
global function SDL_GetWindowBordersSize(window: *SDL_Window, top: *cint, left: *cint, bottom: *cint, right: *cint): cint
```



### SDL_SetWindowMinimumSize

```lua
global function SDL_SetWindowMinimumSize(window: *SDL_Window, min_w: cint, min_h: cint)
```



### SDL_GetWindowMinimumSize

```lua
global function SDL_GetWindowMinimumSize(window: *SDL_Window, w: *cint, h: *cint)
```



### SDL_SetWindowMaximumSize

```lua
global function SDL_SetWindowMaximumSize(window: *SDL_Window, max_w: cint, max_h: cint)
```



### SDL_GetWindowMaximumSize

```lua
global function SDL_GetWindowMaximumSize(window: *SDL_Window, w: *cint, h: *cint)
```



### SDL_SetWindowBordered

```lua
global function SDL_SetWindowBordered(window: *SDL_Window, bordered: SDL_bool)
```



### SDL_SetWindowResizable

```lua
global function SDL_SetWindowResizable(window: *SDL_Window, resizable: SDL_bool)
```



### SDL_ShowWindow

```lua
global function SDL_ShowWindow(window: *SDL_Window)
```



### SDL_HideWindow

```lua
global function SDL_HideWindow(window: *SDL_Window)
```



### SDL_RaiseWindow

```lua
global function SDL_RaiseWindow(window: *SDL_Window)
```



### SDL_MaximizeWindow

```lua
global function SDL_MaximizeWindow(window: *SDL_Window)
```



### SDL_MinimizeWindow

```lua
global function SDL_MinimizeWindow(window: *SDL_Window)
```



### SDL_RestoreWindow

```lua
global function SDL_RestoreWindow(window: *SDL_Window)
```



### SDL_SetWindowFullscreen

```lua
global function SDL_SetWindowFullscreen(window: *SDL_Window, flags: uint32): cint
```



### SDL_GetWindowSurface

```lua
global function SDL_GetWindowSurface(window: *SDL_Window): *SDL_Surface
```



### SDL_UpdateWindowSurface

```lua
global function SDL_UpdateWindowSurface(window: *SDL_Window): cint
```



### SDL_UpdateWindowSurfaceRects

```lua
global function SDL_UpdateWindowSurfaceRects(window: *SDL_Window, rects: *SDL_Rect, numrects: cint): cint
```



### SDL_SetWindowGrab

```lua
global function SDL_SetWindowGrab(window: *SDL_Window, grabbed: SDL_bool)
```



### SDL_GetWindowGrab

```lua
global function SDL_GetWindowGrab(window: *SDL_Window): SDL_bool
```



### SDL_GetGrabbedWindow

```lua
global function SDL_GetGrabbedWindow(): *SDL_Window
```



### SDL_SetWindowBrightness

```lua
global function SDL_SetWindowBrightness(window: *SDL_Window, brightness: float32): cint
```



### SDL_GetWindowBrightness

```lua
global function SDL_GetWindowBrightness(window: *SDL_Window): float32
```



### SDL_SetWindowOpacity

```lua
global function SDL_SetWindowOpacity(window: *SDL_Window, opacity: float32): cint
```



### SDL_GetWindowOpacity

```lua
global function SDL_GetWindowOpacity(window: *SDL_Window, out_opacity: *float32): cint
```



### SDL_SetWindowModalFor

```lua
global function SDL_SetWindowModalFor(modal_window: *SDL_Window, parent_window: *SDL_Window): cint
```



### SDL_SetWindowInputFocus

```lua
global function SDL_SetWindowInputFocus(window: *SDL_Window): cint
```



### SDL_SetWindowGammaRamp

```lua
global function SDL_SetWindowGammaRamp(window: *SDL_Window, red: *uint16, green: *uint16, blue: *uint16): cint
```



### SDL_GetWindowGammaRamp

```lua
global function SDL_GetWindowGammaRamp(window: *SDL_Window, red: *uint16, green: *uint16, blue: *uint16): cint
```



### SDL_HitTestResult

```lua
global SDL_HitTestResult: type = @enum(cint){
  SDL_HITTEST_NORMAL = 0,
  SDL_HITTEST_DRAGGABLE = 1,
  SDL_HITTEST_RESIZE_TOPLEFT = 2,
  SDL_HITTEST_RESIZE_TOP = 3,
  SDL_HITTEST_RESIZE_TOPRIGHT = 4,
  SDL_HITTEST_RESIZE_RIGHT = 5,
  SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
  SDL_HITTEST_RESIZE_BOTTOM = 7,
  SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
  SDL_HITTEST_RESIZE_LEFT = 9
}
```



### SDL_HitTest

```lua
global SDL_HitTest: type = @function(*SDL_Window, *SDL_Point, pointer): SDL_HitTestResult
```



### SDL_SetWindowHitTest

```lua
global function SDL_SetWindowHitTest(window: *SDL_Window, callback: SDL_HitTest, callback_data: pointer): cint
```



### SDL_DestroyWindow

```lua
global function SDL_DestroyWindow(window: *SDL_Window)
```



### SDL_IsScreenSaverEnabled

```lua
global function SDL_IsScreenSaverEnabled(): SDL_bool
```



### SDL_EnableScreenSaver

```lua
global function SDL_EnableScreenSaver()
```



### SDL_DisableScreenSaver

```lua
global function SDL_DisableScreenSaver()
```



### SDL_GL_LoadLibrary

```lua
global function SDL_GL_LoadLibrary(path: cstring): cint
```



### SDL_GL_GetProcAddress

```lua
global function SDL_GL_GetProcAddress(proc: cstring): pointer
```



### SDL_GL_UnloadLibrary

```lua
global function SDL_GL_UnloadLibrary()
```



### SDL_GL_ExtensionSupported

```lua
global function SDL_GL_ExtensionSupported(extension: cstring): SDL_bool
```



### SDL_GL_ResetAttributes

```lua
global function SDL_GL_ResetAttributes()
```



### SDL_GL_SetAttribute

```lua
global function SDL_GL_SetAttribute(attr: SDL_GLattr, value: cint): cint
```



### SDL_GL_GetAttribute

```lua
global function SDL_GL_GetAttribute(attr: SDL_GLattr, value: *cint): cint
```



### SDL_GL_CreateContext

```lua
global function SDL_GL_CreateContext(window: *SDL_Window): SDL_GLContext
```



### SDL_GL_MakeCurrent

```lua
global function SDL_GL_MakeCurrent(window: *SDL_Window, context: SDL_GLContext): cint
```



### SDL_GL_GetCurrentWindow

```lua
global function SDL_GL_GetCurrentWindow(): *SDL_Window
```



### SDL_GL_GetCurrentContext

```lua
global function SDL_GL_GetCurrentContext(): SDL_GLContext
```



### SDL_GL_GetDrawableSize

```lua
global function SDL_GL_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint)
```



### SDL_GL_SetSwapInterval

```lua
global function SDL_GL_SetSwapInterval(interval: cint): cint
```



### SDL_GL_GetSwapInterval

```lua
global function SDL_GL_GetSwapInterval(): cint
```



### SDL_GL_SwapWindow

```lua
global function SDL_GL_SwapWindow(window: *SDL_Window)
```



### SDL_GL_DeleteContext

```lua
global function SDL_GL_DeleteContext(context: SDL_GLContext)
```



### SDL_Scancode

```lua
global SDL_Scancode: type = @enum(cint){
  SDL_SCANCODE_UNKNOWN = 0,
  SDL_SCANCODE_A = 4,
  SDL_SCANCODE_B = 5,
  SDL_SCANCODE_C = 6,
  SDL_SCANCODE_D = 7,
  SDL_SCANCODE_E = 8,
  SDL_SCANCODE_F = 9,
  SDL_SCANCODE_G = 10,
  SDL_SCANCODE_H = 11,
  SDL_SCANCODE_I = 12,
  SDL_SCANCODE_J = 13,
  SDL_SCANCODE_K = 14,
  SDL_SCANCODE_L = 15,
  SDL_SCANCODE_M = 16,
  SDL_SCANCODE_N = 17,
  SDL_SCANCODE_O = 18,
  SDL_SCANCODE_P = 19,
  SDL_SCANCODE_Q = 20,
  SDL_SCANCODE_R = 21,
  SDL_SCANCODE_S = 22,
  SDL_SCANCODE_T = 23,
  SDL_SCANCODE_U = 24,
  SDL_SCANCODE_V = 25,
  SDL_SCANCODE_W = 26,
  SDL_SCANCODE_X = 27,
  SDL_SCANCODE_Y = 28,
  SDL_SCANCODE_Z = 29,
  SDL_SCANCODE_1 = 30,
  SDL_SCANCODE_2 = 31,
  SDL_SCANCODE_3 = 32,
  SDL_SCANCODE_4 = 33,
  SDL_SCANCODE_5 = 34,
  SDL_SCANCODE_6 = 35,
  SDL_SCANCODE_7 = 36,
  SDL_SCANCODE_8 = 37,
  SDL_SCANCODE_9 = 38,
  SDL_SCANCODE_0 = 39,
  SDL_SCANCODE_RETURN = 40,
  SDL_SCANCODE_ESCAPE = 41,
  SDL_SCANCODE_BACKSPACE = 42,
  SDL_SCANCODE_TAB = 43,
  SDL_SCANCODE_SPACE = 44,
  SDL_SCANCODE_MINUS = 45,
  SDL_SCANCODE_EQUALS = 46,
  SDL_SCANCODE_LEFTBRACKET = 47,
  SDL_SCANCODE_RIGHTBRACKET = 48,
  SDL_SCANCODE_BACKSLASH = 49,
  SDL_SCANCODE_NONUSHASH = 50,
  SDL_SCANCODE_SEMICOLON = 51,
  SDL_SCANCODE_APOSTROPHE = 52,
  SDL_SCANCODE_GRAVE = 53,
  SDL_SCANCODE_COMMA = 54,
  SDL_SCANCODE_PERIOD = 55,
  SDL_SCANCODE_SLASH = 56,
  SDL_SCANCODE_CAPSLOCK = 57,
  SDL_SCANCODE_F1 = 58,
  SDL_SCANCODE_F2 = 59,
  SDL_SCANCODE_F3 = 60,
  SDL_SCANCODE_F4 = 61,
  SDL_SCANCODE_F5 = 62,
  SDL_SCANCODE_F6 = 63,
  SDL_SCANCODE_F7 = 64,
  SDL_SCANCODE_F8 = 65,
  SDL_SCANCODE_F9 = 66,
  SDL_SCANCODE_F10 = 67,
  SDL_SCANCODE_F11 = 68,
  SDL_SCANCODE_F12 = 69,
  SDL_SCANCODE_PRINTSCREEN = 70,
  SDL_SCANCODE_SCROLLLOCK = 71,
  SDL_SCANCODE_PAUSE = 72,
  SDL_SCANCODE_INSERT = 73,
  SDL_SCANCODE_HOME = 74,
  SDL_SCANCODE_PAGEUP = 75,
  SDL_SCANCODE_DELETE = 76,
  SDL_SCANCODE_END = 77,
  SDL_SCANCODE_PAGEDOWN = 78,
  SDL_SCANCODE_RIGHT = 79,
  SDL_SCANCODE_LEFT = 80,
  SDL_SCANCODE_DOWN = 81,
  SDL_SCANCODE_UP = 82,
  SDL_SCANCODE_NUMLOCKCLEAR = 83,
  SDL_SCANCODE_KP_DIVIDE = 84,
  SDL_SCANCODE_KP_MULTIPLY = 85,
  SDL_SCANCODE_KP_MINUS = 86,
  SDL_SCANCODE_KP_PLUS = 87,
  SDL_SCANCODE_KP_ENTER = 88,
  SDL_SCANCODE_KP_1 = 89,
  SDL_SCANCODE_KP_2 = 90,
  SDL_SCANCODE_KP_3 = 91,
  SDL_SCANCODE_KP_4 = 92,
  SDL_SCANCODE_KP_5 = 93,
  SDL_SCANCODE_KP_6 = 94,
  SDL_SCANCODE_KP_7 = 95,
  SDL_SCANCODE_KP_8 = 96,
  SDL_SCANCODE_KP_9 = 97,
  SDL_SCANCODE_KP_0 = 98,
  SDL_SCANCODE_KP_PERIOD = 99,
  SDL_SCANCODE_NONUSBACKSLASH = 100,
  SDL_SCANCODE_APPLICATION = 101,
  SDL_SCANCODE_POWER = 102,
  SDL_SCANCODE_KP_EQUALS = 103,
  SDL_SCANCODE_F13 = 104,
  SDL_SCANCODE_F14 = 105,
  SDL_SCANCODE_F15 = 106,
  SDL_SCANCODE_F16 = 107,
  SDL_SCANCODE_F17 = 108,
  SDL_SCANCODE_F18 = 109,
  SDL_SCANCODE_F19 = 110,
  SDL_SCANCODE_F20 = 111,
  SDL_SCANCODE_F21 = 112,
  SDL_SCANCODE_F22 = 113,
  SDL_SCANCODE_F23 = 114,
  SDL_SCANCODE_F24 = 115,
  SDL_SCANCODE_EXECUTE = 116,
  SDL_SCANCODE_HELP = 117,
  SDL_SCANCODE_MENU = 118,
  SDL_SCANCODE_SELECT = 119,
  SDL_SCANCODE_STOP = 120,
  SDL_SCANCODE_AGAIN = 121,
  SDL_SCANCODE_UNDO = 122,
  SDL_SCANCODE_CUT = 123,
  SDL_SCANCODE_COPY = 124,
  SDL_SCANCODE_PASTE = 125,
  SDL_SCANCODE_FIND = 126,
  SDL_SCANCODE_MUTE = 127,
  SDL_SCANCODE_VOLUMEUP = 128,
  SDL_SCANCODE_VOLUMEDOWN = 129,
  SDL_SCANCODE_KP_COMMA = 133,
  SDL_SCANCODE_KP_EQUALSAS400 = 134,
  SDL_SCANCODE_INTERNATIONAL1 = 135,
  SDL_SCANCODE_INTERNATIONAL2 = 136,
  SDL_SCANCODE_INTERNATIONAL3 = 137,
  SDL_SCANCODE_INTERNATIONAL4 = 138,
  SDL_SCANCODE_INTERNATIONAL5 = 139,
  SDL_SCANCODE_INTERNATIONAL6 = 140,
  SDL_SCANCODE_INTERNATIONAL7 = 141,
  SDL_SCANCODE_INTERNATIONAL8 = 142,
  SDL_SCANCODE_INTERNATIONAL9 = 143,
  SDL_SCANCODE_LANG1 = 144,
  SDL_SCANCODE_LANG2 = 145,
  SDL_SCANCODE_LANG3 = 146,
  SDL_SCANCODE_LANG4 = 147,
  SDL_SCANCODE_LANG5 = 148,
  SDL_SCANCODE_LANG6 = 149,
  SDL_SCANCODE_LANG7 = 150,
  SDL_SCANCODE_LANG8 = 151,
  SDL_SCANCODE_LANG9 = 152,
  SDL_SCANCODE_ALTERASE = 153,
  SDL_SCANCODE_SYSREQ = 154,
  SDL_SCANCODE_CANCEL = 155,
  SDL_SCANCODE_CLEAR = 156,
  SDL_SCANCODE_PRIOR = 157,
  SDL_SCANCODE_RETURN2 = 158,
  SDL_SCANCODE_SEPARATOR = 159,
  SDL_SCANCODE_OUT = 160,
  SDL_SCANCODE_OPER = 161,
  SDL_SCANCODE_CLEARAGAIN = 162,
  SDL_SCANCODE_CRSEL = 163,
  SDL_SCANCODE_EXSEL = 164,
  SDL_SCANCODE_KP_00 = 176,
  SDL_SCANCODE_KP_000 = 177,
  SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
  SDL_SCANCODE_DECIMALSEPARATOR = 179,
  SDL_SCANCODE_CURRENCYUNIT = 180,
  SDL_SCANCODE_CURRENCYSUBUNIT = 181,
  SDL_SCANCODE_KP_LEFTPAREN = 182,
  SDL_SCANCODE_KP_RIGHTPAREN = 183,
  SDL_SCANCODE_KP_LEFTBRACE = 184,
  SDL_SCANCODE_KP_RIGHTBRACE = 185,
  SDL_SCANCODE_KP_TAB = 186,
  SDL_SCANCODE_KP_BACKSPACE = 187,
  SDL_SCANCODE_KP_A = 188,
  SDL_SCANCODE_KP_B = 189,
  SDL_SCANCODE_KP_C = 190,
  SDL_SCANCODE_KP_D = 191,
  SDL_SCANCODE_KP_E = 192,
  SDL_SCANCODE_KP_F = 193,
  SDL_SCANCODE_KP_XOR = 194,
  SDL_SCANCODE_KP_POWER = 195,
  SDL_SCANCODE_KP_PERCENT = 196,
  SDL_SCANCODE_KP_LESS = 197,
  SDL_SCANCODE_KP_GREATER = 198,
  SDL_SCANCODE_KP_AMPERSAND = 199,
  SDL_SCANCODE_KP_DBLAMPERSAND = 200,
  SDL_SCANCODE_KP_VERTICALBAR = 201,
  SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
  SDL_SCANCODE_KP_COLON = 203,
  SDL_SCANCODE_KP_HASH = 204,
  SDL_SCANCODE_KP_SPACE = 205,
  SDL_SCANCODE_KP_AT = 206,
  SDL_SCANCODE_KP_EXCLAM = 207,
  SDL_SCANCODE_KP_MEMSTORE = 208,
  SDL_SCANCODE_KP_MEMRECALL = 209,
  SDL_SCANCODE_KP_MEMCLEAR = 210,
  SDL_SCANCODE_KP_MEMADD = 211,
  SDL_SCANCODE_KP_MEMSUBTRACT = 212,
  SDL_SCANCODE_KP_MEMMULTIPLY = 213,
  SDL_SCANCODE_KP_MEMDIVIDE = 214,
  SDL_SCANCODE_KP_PLUSMINUS = 215,
  SDL_SCANCODE_KP_CLEAR = 216,
  SDL_SCANCODE_KP_CLEARENTRY = 217,
  SDL_SCANCODE_KP_BINARY = 218,
  SDL_SCANCODE_KP_OCTAL = 219,
  SDL_SCANCODE_KP_DECIMAL = 220,
  SDL_SCANCODE_KP_HEXADECIMAL = 221,
  SDL_SCANCODE_LCTRL = 224,
  SDL_SCANCODE_LSHIFT = 225,
  SDL_SCANCODE_LALT = 226,
  SDL_SCANCODE_LGUI = 227,
  SDL_SCANCODE_RCTRL = 228,
  SDL_SCANCODE_RSHIFT = 229,
  SDL_SCANCODE_RALT = 230,
  SDL_SCANCODE_RGUI = 231,
  SDL_SCANCODE_MODE = 257,
  SDL_SCANCODE_AUDIONEXT = 258,
  SDL_SCANCODE_AUDIOPREV = 259,
  SDL_SCANCODE_AUDIOSTOP = 260,
  SDL_SCANCODE_AUDIOPLAY = 261,
  SDL_SCANCODE_AUDIOMUTE = 262,
  SDL_SCANCODE_MEDIASELECT = 263,
  SDL_SCANCODE_WWW = 264,
  SDL_SCANCODE_MAIL = 265,
  SDL_SCANCODE_CALCULATOR = 266,
  SDL_SCANCODE_COMPUTER = 267,
  SDL_SCANCODE_AC_SEARCH = 268,
  SDL_SCANCODE_AC_HOME = 269,
  SDL_SCANCODE_AC_BACK = 270,
  SDL_SCANCODE_AC_FORWARD = 271,
  SDL_SCANCODE_AC_STOP = 272,
  SDL_SCANCODE_AC_REFRESH = 273,
  SDL_SCANCODE_AC_BOOKMARKS = 274,
  SDL_SCANCODE_BRIGHTNESSDOWN = 275,
  SDL_SCANCODE_BRIGHTNESSUP = 276,
  SDL_SCANCODE_DISPLAYSWITCH = 277,
  SDL_SCANCODE_KBDILLUMTOGGLE = 278,
  SDL_SCANCODE_KBDILLUMDOWN = 279,
  SDL_SCANCODE_KBDILLUMUP = 280,
  SDL_SCANCODE_EJECT = 281,
  SDL_SCANCODE_SLEEP = 282,
  SDL_SCANCODE_APP1 = 283,
  SDL_SCANCODE_APP2 = 284,
  SDL_SCANCODE_AUDIOREWIND = 285,
  SDL_SCANCODE_AUDIOFASTFORWARD = 286,
  SDL_NUM_SCANCODES = 512
}
```



### SDL_KeyCode

```lua
global SDL_KeyCode: type = @enum(cint){
  SDLK_UNKNOWN = 0,
  SDLK_RETURN = 13,
  SDLK_ESCAPE = 27,
  SDLK_BACKSPACE = 8,
  SDLK_TAB = 9,
  SDLK_SPACE = 32,
  SDLK_EXCLAIM = 33,
  SDLK_QUOTEDBL = 34,
  SDLK_HASH = 35,
  SDLK_PERCENT = 37,
  SDLK_DOLLAR = 36,
  SDLK_AMPERSAND = 38,
  SDLK_QUOTE = 39,
  SDLK_LEFTPAREN = 40,
  SDLK_RIGHTPAREN = 41,
  SDLK_ASTERISK = 42,
  SDLK_PLUS = 43,
  SDLK_COMMA = 44,
  SDLK_MINUS = 45,
  SDLK_PERIOD = 46,
  SDLK_SLASH = 47,
  SDLK_0 = 48,
  SDLK_1 = 49,
  SDLK_2 = 50,
  SDLK_3 = 51,
  SDLK_4 = 52,
  SDLK_5 = 53,
  SDLK_6 = 54,
  SDLK_7 = 55,
  SDLK_8 = 56,
  SDLK_9 = 57,
  SDLK_COLON = 58,
  SDLK_SEMICOLON = 59,
  SDLK_LESS = 60,
  SDLK_EQUALS = 61,
  SDLK_GREATER = 62,
  SDLK_QUESTION = 63,
  SDLK_AT = 64,
  SDLK_LEFTBRACKET = 91,
  SDLK_BACKSLASH = 92,
  SDLK_RIGHTBRACKET = 93,
  SDLK_CARET = 94,
  SDLK_UNDERSCORE = 95,
  SDLK_BACKQUOTE = 96,
  SDLK_a = 97,
  SDLK_b = 98,
  SDLK_c = 99,
  SDLK_d = 100,
  SDLK_e = 101,
  SDLK_f = 102,
  SDLK_g = 103,
  SDLK_h = 104,
  SDLK_i = 105,
  SDLK_j = 106,
  SDLK_k = 107,
  SDLK_l = 108,
  SDLK_m = 109,
  SDLK_n = 110,
  SDLK_o = 111,
  SDLK_p = 112,
  SDLK_q = 113,
  SDLK_r = 114,
  SDLK_s = 115,
  SDLK_t = 116,
  SDLK_u = 117,
  SDLK_v = 118,
  SDLK_w = 119,
  SDLK_x = 120,
  SDLK_y = 121,
  SDLK_z = 122,
  SDLK_CAPSLOCK = 1073741881,
  SDLK_F1 = 1073741882,
  SDLK_F2 = 1073741883,
  SDLK_F3 = 1073741884,
  SDLK_F4 = 1073741885,
  SDLK_F5 = 1073741886,
  SDLK_F6 = 1073741887,
  SDLK_F7 = 1073741888,
  SDLK_F8 = 1073741889,
  SDLK_F9 = 1073741890,
  SDLK_F10 = 1073741891,
  SDLK_F11 = 1073741892,
  SDLK_F12 = 1073741893,
  SDLK_PRINTSCREEN = 1073741894,
  SDLK_SCROLLLOCK = 1073741895,
  SDLK_PAUSE = 1073741896,
  SDLK_INSERT = 1073741897,
  SDLK_HOME = 1073741898,
  SDLK_PAGEUP = 1073741899,
  SDLK_DELETE = 127,
  SDLK_END = 1073741901,
  SDLK_PAGEDOWN = 1073741902,
  SDLK_RIGHT = 1073741903,
  SDLK_LEFT = 1073741904,
  SDLK_DOWN = 1073741905,
  SDLK_UP = 1073741906,
  SDLK_NUMLOCKCLEAR = 1073741907,
  SDLK_KP_DIVIDE = 1073741908,
  SDLK_KP_MULTIPLY = 1073741909,
  SDLK_KP_MINUS = 1073741910,
  SDLK_KP_PLUS = 1073741911,
  SDLK_KP_ENTER = 1073741912,
  SDLK_KP_1 = 1073741913,
  SDLK_KP_2 = 1073741914,
  SDLK_KP_3 = 1073741915,
  SDLK_KP_4 = 1073741916,
  SDLK_KP_5 = 1073741917,
  SDLK_KP_6 = 1073741918,
  SDLK_KP_7 = 1073741919,
  SDLK_KP_8 = 1073741920,
  SDLK_KP_9 = 1073741921,
  SDLK_KP_0 = 1073741922,
  SDLK_KP_PERIOD = 1073741923,
  SDLK_APPLICATION = 1073741925,
  SDLK_POWER = 1073741926,
  SDLK_KP_EQUALS = 1073741927,
  SDLK_F13 = 1073741928,
  SDLK_F14 = 1073741929,
  SDLK_F15 = 1073741930,
  SDLK_F16 = 1073741931,
  SDLK_F17 = 1073741932,
  SDLK_F18 = 1073741933,
  SDLK_F19 = 1073741934,
  SDLK_F20 = 1073741935,
  SDLK_F21 = 1073741936,
  SDLK_F22 = 1073741937,
  SDLK_F23 = 1073741938,
  SDLK_F24 = 1073741939,
  SDLK_EXECUTE = 1073741940,
  SDLK_HELP = 1073741941,
  SDLK_MENU = 1073741942,
  SDLK_SELECT = 1073741943,
  SDLK_STOP = 1073741944,
  SDLK_AGAIN = 1073741945,
  SDLK_UNDO = 1073741946,
  SDLK_CUT = 1073741947,
  SDLK_COPY = 1073741948,
  SDLK_PASTE = 1073741949,
  SDLK_FIND = 1073741950,
  SDLK_MUTE = 1073741951,
  SDLK_VOLUMEUP = 1073741952,
  SDLK_VOLUMEDOWN = 1073741953,
  SDLK_KP_COMMA = 1073741957,
  SDLK_KP_EQUALSAS400 = 1073741958,
  SDLK_ALTERASE = 1073741977,
  SDLK_SYSREQ = 1073741978,
  SDLK_CANCEL = 1073741979,
  SDLK_CLEAR = 1073741980,
  SDLK_PRIOR = 1073741981,
  SDLK_RETURN2 = 1073741982,
  SDLK_SEPARATOR = 1073741983,
  SDLK_OUT = 1073741984,
  SDLK_OPER = 1073741985,
  SDLK_CLEARAGAIN = 1073741986,
  SDLK_CRSEL = 1073741987,
  SDLK_EXSEL = 1073741988,
  SDLK_KP_00 = 1073742000,
  SDLK_KP_000 = 1073742001,
  SDLK_THOUSANDSSEPARATOR = 1073742002,
  SDLK_DECIMALSEPARATOR = 1073742003,
  SDLK_CURRENCYUNIT = 1073742004,
  SDLK_CURRENCYSUBUNIT = 1073742005,
  SDLK_KP_LEFTPAREN = 1073742006,
  SDLK_KP_RIGHTPAREN = 1073742007,
  SDLK_KP_LEFTBRACE = 1073742008,
  SDLK_KP_RIGHTBRACE = 1073742009,
  SDLK_KP_TAB = 1073742010,
  SDLK_KP_BACKSPACE = 1073742011,
  SDLK_KP_A = 1073742012,
  SDLK_KP_B = 1073742013,
  SDLK_KP_C = 1073742014,
  SDLK_KP_D = 1073742015,
  SDLK_KP_E = 1073742016,
  SDLK_KP_F = 1073742017,
  SDLK_KP_XOR = 1073742018,
  SDLK_KP_POWER = 1073742019,
  SDLK_KP_PERCENT = 1073742020,
  SDLK_KP_LESS = 1073742021,
  SDLK_KP_GREATER = 1073742022,
  SDLK_KP_AMPERSAND = 1073742023,
  SDLK_KP_DBLAMPERSAND = 1073742024,
  SDLK_KP_VERTICALBAR = 1073742025,
  SDLK_KP_DBLVERTICALBAR = 1073742026,
  SDLK_KP_COLON = 1073742027,
  SDLK_KP_HASH = 1073742028,
  SDLK_KP_SPACE = 1073742029,
  SDLK_KP_AT = 1073742030,
  SDLK_KP_EXCLAM = 1073742031,
  SDLK_KP_MEMSTORE = 1073742032,
  SDLK_KP_MEMRECALL = 1073742033,
  SDLK_KP_MEMCLEAR = 1073742034,
  SDLK_KP_MEMADD = 1073742035,
  SDLK_KP_MEMSUBTRACT = 1073742036,
  SDLK_KP_MEMMULTIPLY = 1073742037,
  SDLK_KP_MEMDIVIDE = 1073742038,
  SDLK_KP_PLUSMINUS = 1073742039,
  SDLK_KP_CLEAR = 1073742040,
  SDLK_KP_CLEARENTRY = 1073742041,
  SDLK_KP_BINARY = 1073742042,
  SDLK_KP_OCTAL = 1073742043,
  SDLK_KP_DECIMAL = 1073742044,
  SDLK_KP_HEXADECIMAL = 1073742045,
  SDLK_LCTRL = 1073742048,
  SDLK_LSHIFT = 1073742049,
  SDLK_LALT = 1073742050,
  SDLK_LGUI = 1073742051,
  SDLK_RCTRL = 1073742052,
  SDLK_RSHIFT = 1073742053,
  SDLK_RALT = 1073742054,
  SDLK_RGUI = 1073742055,
  SDLK_MODE = 1073742081,
  SDLK_AUDIONEXT = 1073742082,
  SDLK_AUDIOPREV = 1073742083,
  SDLK_AUDIOSTOP = 1073742084,
  SDLK_AUDIOPLAY = 1073742085,
  SDLK_AUDIOMUTE = 1073742086,
  SDLK_MEDIASELECT = 1073742087,
  SDLK_WWW = 1073742088,
  SDLK_MAIL = 1073742089,
  SDLK_CALCULATOR = 1073742090,
  SDLK_COMPUTER = 1073742091,
  SDLK_AC_SEARCH = 1073742092,
  SDLK_AC_HOME = 1073742093,
  SDLK_AC_BACK = 1073742094,
  SDLK_AC_FORWARD = 1073742095,
  SDLK_AC_STOP = 1073742096,
  SDLK_AC_REFRESH = 1073742097,
  SDLK_AC_BOOKMARKS = 1073742098,
  SDLK_BRIGHTNESSDOWN = 1073742099,
  SDLK_BRIGHTNESSUP = 1073742100,
  SDLK_DISPLAYSWITCH = 1073742101,
  SDLK_KBDILLUMTOGGLE = 1073742102,
  SDLK_KBDILLUMDOWN = 1073742103,
  SDLK_KBDILLUMUP = 1073742104,
  SDLK_EJECT = 1073742105,
  SDLK_SLEEP = 1073742106,
  SDLK_APP1 = 1073742107,
  SDLK_APP2 = 1073742108,
  SDLK_AUDIOREWIND = 1073742109,
  SDLK_AUDIOFASTFORWARD = 1073742110
}
```



### SDL_Keymod

```lua
global SDL_Keymod: type = @enum(cint){
  KMOD_NONE = 0,
  KMOD_LSHIFT = 1,
  KMOD_RSHIFT = 2,
  KMOD_LCTRL = 64,
  KMOD_RCTRL = 128,
  KMOD_LALT = 256,
  KMOD_RALT = 512,
  KMOD_LGUI = 1024,
  KMOD_RGUI = 2048,
  KMOD_NUM = 4096,
  KMOD_CAPS = 8192,
  KMOD_MODE = 16384,
  KMOD_RESERVED = 32768,
  KMOD_CTRL = 192,
  KMOD_SHIFT = 3,
  KMOD_ALT = 768,
  KMOD_GUI = 3072
}
```



### SDL_Keysym

```lua
global SDL_Keysym: type = @record{
  scancode: SDL_Scancode,
  sym: cint,
  mod: uint16,
  unused: uint32
}
```



### SDL_GetKeyboardFocus

```lua
global function SDL_GetKeyboardFocus(): *SDL_Window
```



### SDL_GetKeyboardState

```lua
global function SDL_GetKeyboardState(numkeys: *cint): *uint8
```



### SDL_GetModState

```lua
global function SDL_GetModState(): SDL_Keymod
```



### SDL_SetModState

```lua
global function SDL_SetModState(modstate: SDL_Keymod)
```



### SDL_GetKeyFromScancode

```lua
global function SDL_GetKeyFromScancode(scancode: SDL_Scancode): cint
```



### SDL_GetScancodeFromKey

```lua
global function SDL_GetScancodeFromKey(key: cint): SDL_Scancode
```



### SDL_GetScancodeName

```lua
global function SDL_GetScancodeName(scancode: SDL_Scancode): cstring
```



### SDL_GetScancodeFromName

```lua
global function SDL_GetScancodeFromName(name: cstring): SDL_Scancode
```



### SDL_GetKeyName

```lua
global function SDL_GetKeyName(key: cint): cstring
```



### SDL_GetKeyFromName

```lua
global function SDL_GetKeyFromName(name: cstring): cint
```



### SDL_StartTextInput

```lua
global function SDL_StartTextInput()
```



### SDL_IsTextInputActive

```lua
global function SDL_IsTextInputActive(): SDL_bool
```



### SDL_StopTextInput

```lua
global function SDL_StopTextInput()
```



### SDL_SetTextInputRect

```lua
global function SDL_SetTextInputRect(rect: *SDL_Rect)
```



### SDL_HasScreenKeyboardSupport

```lua
global function SDL_HasScreenKeyboardSupport(): SDL_bool
```



### SDL_IsScreenKeyboardShown

```lua
global function SDL_IsScreenKeyboardShown(window: *SDL_Window): SDL_bool
```



### SDL_Cursor

```lua
global SDL_Cursor: type = @record{}
```



### SDL_SystemCursor

```lua
global SDL_SystemCursor: type = @enum(cint){
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
```



### SDL_MouseWheelDirection

```lua
global SDL_MouseWheelDirection: type = @enum(cint){
  SDL_MOUSEWHEEL_NORMAL = 0,
  SDL_MOUSEWHEEL_FLIPPED = 1
}
```



### SDL_GetMouseFocus

```lua
global function SDL_GetMouseFocus(): *SDL_Window
```



### SDL_GetMouseState

```lua
global function SDL_GetMouseState(x: *cint, y: *cint): uint32
```



### SDL_GetGlobalMouseState

```lua
global function SDL_GetGlobalMouseState(x: *cint, y: *cint): uint32
```



### SDL_GetRelativeMouseState

```lua
global function SDL_GetRelativeMouseState(x: *cint, y: *cint): uint32
```



### SDL_WarpMouseInWindow

```lua
global function SDL_WarpMouseInWindow(window: *SDL_Window, x: cint, y: cint)
```



### SDL_WarpMouseGlobal

```lua
global function SDL_WarpMouseGlobal(x: cint, y: cint): cint
```



### SDL_SetRelativeMouseMode

```lua
global function SDL_SetRelativeMouseMode(enabled: SDL_bool): cint
```



### SDL_CaptureMouse

```lua
global function SDL_CaptureMouse(enabled: SDL_bool): cint
```



### SDL_GetRelativeMouseMode

```lua
global function SDL_GetRelativeMouseMode(): SDL_bool
```



### SDL_CreateCursor

```lua
global function SDL_CreateCursor(data: *uint8, mask: *uint8, w: cint, h: cint, hot_x: cint, hot_y: cint): *SDL_Cursor
```



### SDL_CreateColorCursor

```lua
global function SDL_CreateColorCursor(surface: *SDL_Surface, hot_x: cint, hot_y: cint): *SDL_Cursor
```



### SDL_CreateSystemCursor

```lua
global function SDL_CreateSystemCursor(id: SDL_SystemCursor): *SDL_Cursor
```



### SDL_SetCursor

```lua
global function SDL_SetCursor(cursor: *SDL_Cursor)
```



### SDL_GetCursor

```lua
global function SDL_GetCursor(): *SDL_Cursor
```



### SDL_GetDefaultCursor

```lua
global function SDL_GetDefaultCursor(): *SDL_Cursor
```



### SDL_FreeCursor

```lua
global function SDL_FreeCursor(cursor: *SDL_Cursor)
```



### SDL_ShowCursor

```lua
global function SDL_ShowCursor(toggle: cint): cint
```



### SDL_Joystick

```lua
global SDL_Joystick: type = @record{}
```



### SDL_JoystickGUID

```lua
global SDL_JoystickGUID: type = @record{
  data: [16]uint8
}
```



### SDL_JoystickType

```lua
global SDL_JoystickType: type = @enum(cint){
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
```



### SDL_JoystickPowerLevel

```lua
global SDL_JoystickPowerLevel: type = @enum(cint){
  SDL_JOYSTICK_POWER_UNKNOWN = -1,
  SDL_JOYSTICK_POWER_EMPTY = 0,
  SDL_JOYSTICK_POWER_LOW = 1,
  SDL_JOYSTICK_POWER_MEDIUM = 2,
  SDL_JOYSTICK_POWER_FULL = 3,
  SDL_JOYSTICK_POWER_WIRED = 4,
  SDL_JOYSTICK_POWER_MAX = 5
}
```



### SDL_LockJoysticks

```lua
global function SDL_LockJoysticks()
```



### SDL_UnlockJoysticks

```lua
global function SDL_UnlockJoysticks()
```



### SDL_NumJoysticks

```lua
global function SDL_NumJoysticks(): cint
```



### SDL_JoystickNameForIndex

```lua
global function SDL_JoystickNameForIndex(device_index: cint): cstring
```



### SDL_JoystickGetDevicePlayerIndex

```lua
global function SDL_JoystickGetDevicePlayerIndex(device_index: cint): cint
```



### SDL_JoystickGetDeviceGUID

```lua
global function SDL_JoystickGetDeviceGUID(device_index: cint): SDL_JoystickGUID
```



### SDL_JoystickGetDeviceVendor

```lua
global function SDL_JoystickGetDeviceVendor(device_index: cint): uint16
```



### SDL_JoystickGetDeviceProduct

```lua
global function SDL_JoystickGetDeviceProduct(device_index: cint): uint16
```



### SDL_JoystickGetDeviceProductVersion

```lua
global function SDL_JoystickGetDeviceProductVersion(device_index: cint): uint16
```



### SDL_JoystickGetDeviceType

```lua
global function SDL_JoystickGetDeviceType(device_index: cint): SDL_JoystickType
```



### SDL_JoystickGetDeviceInstanceID

```lua
global function SDL_JoystickGetDeviceInstanceID(device_index: cint): cint
```



### SDL_JoystickOpen

```lua
global function SDL_JoystickOpen(device_index: cint): *SDL_Joystick
```



### SDL_JoystickFromInstanceID

```lua
global function SDL_JoystickFromInstanceID(instance_id: cint): *SDL_Joystick
```



### SDL_JoystickFromPlayerIndex

```lua
global function SDL_JoystickFromPlayerIndex(player_index: cint): *SDL_Joystick
```



### SDL_JoystickAttachVirtual

```lua
global function SDL_JoystickAttachVirtual(type: SDL_JoystickType, naxes: cint, nbuttons: cint, nhats: cint): cint
```



### SDL_JoystickDetachVirtual

```lua
global function SDL_JoystickDetachVirtual(device_index: cint): cint
```



### SDL_JoystickIsVirtual

```lua
global function SDL_JoystickIsVirtual(device_index: cint): SDL_bool
```



### SDL_JoystickSetVirtualAxis

```lua
global function SDL_JoystickSetVirtualAxis(joystick: *SDL_Joystick, axis: cint, value: int16): cint
```



### SDL_JoystickSetVirtualButton

```lua
global function SDL_JoystickSetVirtualButton(joystick: *SDL_Joystick, button: cint, value: uint8): cint
```



### SDL_JoystickSetVirtualHat

```lua
global function SDL_JoystickSetVirtualHat(joystick: *SDL_Joystick, hat: cint, value: uint8): cint
```



### SDL_JoystickName

```lua
global function SDL_JoystickName(joystick: *SDL_Joystick): cstring
```



### SDL_JoystickGetPlayerIndex

```lua
global function SDL_JoystickGetPlayerIndex(joystick: *SDL_Joystick): cint
```



### SDL_JoystickSetPlayerIndex

```lua
global function SDL_JoystickSetPlayerIndex(joystick: *SDL_Joystick, player_index: cint)
```



### SDL_JoystickGetGUID

```lua
global function SDL_JoystickGetGUID(joystick: *SDL_Joystick): SDL_JoystickGUID
```



### SDL_JoystickGetVendor

```lua
global function SDL_JoystickGetVendor(joystick: *SDL_Joystick): uint16
```



### SDL_JoystickGetProduct

```lua
global function SDL_JoystickGetProduct(joystick: *SDL_Joystick): uint16
```



### SDL_JoystickGetProductVersion

```lua
global function SDL_JoystickGetProductVersion(joystick: *SDL_Joystick): uint16
```



### SDL_JoystickGetSerial

```lua
global function SDL_JoystickGetSerial(joystick: *SDL_Joystick): cstring
```



### SDL_JoystickGetType

```lua
global function SDL_JoystickGetType(joystick: *SDL_Joystick): SDL_JoystickType
```



### SDL_JoystickGetGUIDString

```lua
global function SDL_JoystickGetGUIDString(guid: SDL_JoystickGUID, pszGUID: cstring, cbGUID: cint)
```



### SDL_JoystickGetGUIDFromString

```lua
global function SDL_JoystickGetGUIDFromString(pchGUID: cstring): SDL_JoystickGUID
```



### SDL_JoystickGetAttached

```lua
global function SDL_JoystickGetAttached(joystick: *SDL_Joystick): SDL_bool
```



### SDL_JoystickInstanceID

```lua
global function SDL_JoystickInstanceID(joystick: *SDL_Joystick): cint
```



### SDL_JoystickNumAxes

```lua
global function SDL_JoystickNumAxes(joystick: *SDL_Joystick): cint
```



### SDL_JoystickNumBalls

```lua
global function SDL_JoystickNumBalls(joystick: *SDL_Joystick): cint
```



### SDL_JoystickNumHats

```lua
global function SDL_JoystickNumHats(joystick: *SDL_Joystick): cint
```



### SDL_JoystickNumButtons

```lua
global function SDL_JoystickNumButtons(joystick: *SDL_Joystick): cint
```



### SDL_JoystickUpdate

```lua
global function SDL_JoystickUpdate()
```



### SDL_JoystickEventState

```lua
global function SDL_JoystickEventState(state: cint): cint
```



### SDL_JoystickGetAxis

```lua
global function SDL_JoystickGetAxis(joystick: *SDL_Joystick, axis: cint): int16
```



### SDL_JoystickGetAxisInitialState

```lua
global function SDL_JoystickGetAxisInitialState(joystick: *SDL_Joystick, axis: cint, state: *int16): SDL_bool
```



### SDL_JoystickGetHat

```lua
global function SDL_JoystickGetHat(joystick: *SDL_Joystick, hat: cint): uint8
```



### SDL_JoystickGetBall

```lua
global function SDL_JoystickGetBall(joystick: *SDL_Joystick, ball: cint, dx: *cint, dy: *cint): cint
```



### SDL_JoystickGetButton

```lua
global function SDL_JoystickGetButton(joystick: *SDL_Joystick, button: cint): uint8
```



### SDL_JoystickRumble

```lua
global function SDL_JoystickRumble(joystick: *SDL_Joystick, low_frequency_rumble: uint16, high_frequency_rumble: uint16, duration_ms: uint32): cint
```



### SDL_JoystickRumbleTriggers

```lua
global function SDL_JoystickRumbleTriggers(joystick: *SDL_Joystick, left_rumble: uint16, right_rumble: uint16, duration_ms: uint32): cint
```



### SDL_JoystickHasLED

```lua
global function SDL_JoystickHasLED(joystick: *SDL_Joystick): SDL_bool
```



### SDL_JoystickSetLED

```lua
global function SDL_JoystickSetLED(joystick: *SDL_Joystick, red: uint8, green: uint8, blue: uint8): cint
```



### SDL_JoystickClose

```lua
global function SDL_JoystickClose(joystick: *SDL_Joystick)
```



### SDL_JoystickCurrentPowerLevel

```lua
global function SDL_JoystickCurrentPowerLevel(joystick: *SDL_Joystick): SDL_JoystickPowerLevel
```



### SDL_Sensor

```lua
global SDL_Sensor: type = @record{}
```



### SDL_SensorType

```lua
global SDL_SensorType: type = @enum(cint){
  SDL_SENSOR_INVALID = -1,
  SDL_SENSOR_UNKNOWN = 0,
  SDL_SENSOR_ACCEL = 1,
  SDL_SENSOR_GYRO = 2
}
```



### SDL_LockSensors

```lua
global function SDL_LockSensors()
```



### SDL_UnlockSensors

```lua
global function SDL_UnlockSensors()
```



### SDL_NumSensors

```lua
global function SDL_NumSensors(): cint
```



### SDL_SensorGetDeviceName

```lua
global function SDL_SensorGetDeviceName(device_index: cint): cstring
```



### SDL_SensorGetDeviceType

```lua
global function SDL_SensorGetDeviceType(device_index: cint): SDL_SensorType
```



### SDL_SensorGetDeviceNonPortableType

```lua
global function SDL_SensorGetDeviceNonPortableType(device_index: cint): cint
```



### SDL_SensorGetDeviceInstanceID

```lua
global function SDL_SensorGetDeviceInstanceID(device_index: cint): cint
```



### SDL_SensorOpen

```lua
global function SDL_SensorOpen(device_index: cint): *SDL_Sensor
```



### SDL_SensorFromInstanceID

```lua
global function SDL_SensorFromInstanceID(instance_id: cint): *SDL_Sensor
```



### SDL_SensorGetName

```lua
global function SDL_SensorGetName(sensor: *SDL_Sensor): cstring
```



### SDL_SensorGetType

```lua
global function SDL_SensorGetType(sensor: *SDL_Sensor): SDL_SensorType
```



### SDL_SensorGetNonPortableType

```lua
global function SDL_SensorGetNonPortableType(sensor: *SDL_Sensor): cint
```



### SDL_SensorGetInstanceID

```lua
global function SDL_SensorGetInstanceID(sensor: *SDL_Sensor): cint
```



### SDL_SensorGetData

```lua
global function SDL_SensorGetData(sensor: *SDL_Sensor, data: *float32, num_values: cint): cint
```



### SDL_SensorClose

```lua
global function SDL_SensorClose(sensor: *SDL_Sensor)
```



### SDL_SensorUpdate

```lua
global function SDL_SensorUpdate()
```



### SDL_GameController

```lua
global SDL_GameController: type = @record{}
```



### SDL_GameControllerType

```lua
global SDL_GameControllerType: type = @enum(cint){
  SDL_CONTROLLER_TYPE_UNKNOWN = 0,
  SDL_CONTROLLER_TYPE_XBOX360 = 1,
  SDL_CONTROLLER_TYPE_XBOXONE = 2,
  SDL_CONTROLLER_TYPE_PS3 = 3,
  SDL_CONTROLLER_TYPE_PS4 = 4,
  SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 5,
  SDL_CONTROLLER_TYPE_VIRTUAL = 6,
  SDL_CONTROLLER_TYPE_PS5 = 7
}
```



### SDL_GameControllerBindType

```lua
global SDL_GameControllerBindType: type = @enum(cint){
  SDL_CONTROLLER_BINDTYPE_NONE = 0,
  SDL_CONTROLLER_BINDTYPE_BUTTON = 1,
  SDL_CONTROLLER_BINDTYPE_AXIS = 2,
  SDL_CONTROLLER_BINDTYPE_HAT = 3
}
```



### SDL_GameControllerButtonBind

```lua
global SDL_GameControllerButtonBind: type = @record{
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
```



### SDL_GameControllerAddMappingsFromRW

```lua
global function SDL_GameControllerAddMappingsFromRW(rw: *SDL_RWops, freerw: cint): cint
```



### SDL_GameControllerAddMapping

```lua
global function SDL_GameControllerAddMapping(mappingString: cstring): cint
```



### SDL_GameControllerNumMappings

```lua
global function SDL_GameControllerNumMappings(): cint
```



### SDL_GameControllerMappingForIndex

```lua
global function SDL_GameControllerMappingForIndex(mapping_index: cint): cstring
```



### SDL_GameControllerMappingForGUID

```lua
global function SDL_GameControllerMappingForGUID(guid: SDL_JoystickGUID): cstring
```



### SDL_GameControllerMapping

```lua
global function SDL_GameControllerMapping(gamecontroller: *SDL_GameController): cstring
```



### SDL_IsGameController

```lua
global function SDL_IsGameController(joystick_index: cint): SDL_bool
```



### SDL_GameControllerNameForIndex

```lua
global function SDL_GameControllerNameForIndex(joystick_index: cint): cstring
```



### SDL_GameControllerTypeForIndex

```lua
global function SDL_GameControllerTypeForIndex(joystick_index: cint): SDL_GameControllerType
```



### SDL_GameControllerMappingForDeviceIndex

```lua
global function SDL_GameControllerMappingForDeviceIndex(joystick_index: cint): cstring
```



### SDL_GameControllerOpen

```lua
global function SDL_GameControllerOpen(joystick_index: cint): *SDL_GameController
```



### SDL_GameControllerFromInstanceID

```lua
global function SDL_GameControllerFromInstanceID(joyid: cint): *SDL_GameController
```



### SDL_GameControllerFromPlayerIndex

```lua
global function SDL_GameControllerFromPlayerIndex(player_index: cint): *SDL_GameController
```



### SDL_GameControllerName

```lua
global function SDL_GameControllerName(gamecontroller: *SDL_GameController): cstring
```



### SDL_GameControllerGetType

```lua
global function SDL_GameControllerGetType(gamecontroller: *SDL_GameController): SDL_GameControllerType
```



### SDL_GameControllerGetPlayerIndex

```lua
global function SDL_GameControllerGetPlayerIndex(gamecontroller: *SDL_GameController): cint
```



### SDL_GameControllerSetPlayerIndex

```lua
global function SDL_GameControllerSetPlayerIndex(gamecontroller: *SDL_GameController, player_index: cint)
```



### SDL_GameControllerGetVendor

```lua
global function SDL_GameControllerGetVendor(gamecontroller: *SDL_GameController): uint16
```



### SDL_GameControllerGetProduct

```lua
global function SDL_GameControllerGetProduct(gamecontroller: *SDL_GameController): uint16
```



### SDL_GameControllerGetProductVersion

```lua
global function SDL_GameControllerGetProductVersion(gamecontroller: *SDL_GameController): uint16
```



### SDL_GameControllerGetSerial

```lua
global function SDL_GameControllerGetSerial(gamecontroller: *SDL_GameController): cstring
```



### SDL_GameControllerGetAttached

```lua
global function SDL_GameControllerGetAttached(gamecontroller: *SDL_GameController): SDL_bool
```



### SDL_GameControllerGetJoystick

```lua
global function SDL_GameControllerGetJoystick(gamecontroller: *SDL_GameController): *SDL_Joystick
```



### SDL_GameControllerEventState

```lua
global function SDL_GameControllerEventState(state: cint): cint
```



### SDL_GameControllerUpdate

```lua
global function SDL_GameControllerUpdate()
```



### SDL_GameControllerAxis

```lua
global SDL_GameControllerAxis: type = @enum(cint){
  SDL_CONTROLLER_AXIS_INVALID = -1,
  SDL_CONTROLLER_AXIS_LEFTX = 0,
  SDL_CONTROLLER_AXIS_LEFTY = 1,
  SDL_CONTROLLER_AXIS_RIGHTX = 2,
  SDL_CONTROLLER_AXIS_RIGHTY = 3,
  SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4,
  SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5,
  SDL_CONTROLLER_AXIS_MAX = 6
}
```



### SDL_GameControllerGetAxisFromString

```lua
global function SDL_GameControllerGetAxisFromString(pchString: cstring): SDL_GameControllerAxis
```



### SDL_GameControllerGetStringForAxis

```lua
global function SDL_GameControllerGetStringForAxis(axis: SDL_GameControllerAxis): cstring
```



### SDL_GameControllerGetBindForAxis

```lua
global function SDL_GameControllerGetBindForAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): SDL_GameControllerButtonBind
```



### SDL_GameControllerHasAxis

```lua
global function SDL_GameControllerHasAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): SDL_bool
```



### SDL_GameControllerGetAxis

```lua
global function SDL_GameControllerGetAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): int16
```



### SDL_GameControllerButton

```lua
global SDL_GameControllerButton: type = @enum(cint){
  SDL_CONTROLLER_BUTTON_INVALID = -1,
  SDL_CONTROLLER_BUTTON_A = 0,
  SDL_CONTROLLER_BUTTON_B = 1,
  SDL_CONTROLLER_BUTTON_X = 2,
  SDL_CONTROLLER_BUTTON_Y = 3,
  SDL_CONTROLLER_BUTTON_BACK = 4,
  SDL_CONTROLLER_BUTTON_GUIDE = 5,
  SDL_CONTROLLER_BUTTON_START = 6,
  SDL_CONTROLLER_BUTTON_LEFTSTICK = 7,
  SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8,
  SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9,
  SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10,
  SDL_CONTROLLER_BUTTON_DPAD_UP = 11,
  SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12,
  SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13,
  SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14,
  SDL_CONTROLLER_BUTTON_MISC1 = 15,
  SDL_CONTROLLER_BUTTON_PADDLE1 = 16,
  SDL_CONTROLLER_BUTTON_PADDLE2 = 17,
  SDL_CONTROLLER_BUTTON_PADDLE3 = 18,
  SDL_CONTROLLER_BUTTON_PADDLE4 = 19,
  SDL_CONTROLLER_BUTTON_TOUCHPAD = 20,
  SDL_CONTROLLER_BUTTON_MAX = 21
}
```



### SDL_GameControllerGetButtonFromString

```lua
global function SDL_GameControllerGetButtonFromString(pchString: cstring): SDL_GameControllerButton
```



### SDL_GameControllerGetStringForButton

```lua
global function SDL_GameControllerGetStringForButton(button: SDL_GameControllerButton): cstring
```



### SDL_GameControllerGetBindForButton

```lua
global function SDL_GameControllerGetBindForButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): SDL_GameControllerButtonBind
```



### SDL_GameControllerHasButton

```lua
global function SDL_GameControllerHasButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): SDL_bool
```



### SDL_GameControllerGetButton

```lua
global function SDL_GameControllerGetButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): uint8
```



### SDL_GameControllerGetNumTouchpads

```lua
global function SDL_GameControllerGetNumTouchpads(gamecontroller: *SDL_GameController): cint
```



### SDL_GameControllerGetNumTouchpadFingers

```lua
global function SDL_GameControllerGetNumTouchpadFingers(gamecontroller: *SDL_GameController, touchpad: cint): cint
```



### SDL_GameControllerGetTouchpadFinger

```lua
global function SDL_GameControllerGetTouchpadFinger(gamecontroller: *SDL_GameController, touchpad: cint, finger: cint, state: *uint8, x: *float32, y: *float32, pressure: *float32): cint
```



### SDL_GameControllerHasSensor

```lua
global function SDL_GameControllerHasSensor(gamecontroller: *SDL_GameController, type: SDL_SensorType): SDL_bool
```



### SDL_GameControllerSetSensorEnabled

```lua
global function SDL_GameControllerSetSensorEnabled(gamecontroller: *SDL_GameController, type: SDL_SensorType, enabled: SDL_bool): cint
```



### SDL_GameControllerIsSensorEnabled

```lua
global function SDL_GameControllerIsSensorEnabled(gamecontroller: *SDL_GameController, type: SDL_SensorType): SDL_bool
```



### SDL_GameControllerGetSensorData

```lua
global function SDL_GameControllerGetSensorData(gamecontroller: *SDL_GameController, type: SDL_SensorType, data: *float32, num_values: cint): cint
```



### SDL_GameControllerRumble

```lua
global function SDL_GameControllerRumble(gamecontroller: *SDL_GameController, low_frequency_rumble: uint16, high_frequency_rumble: uint16, duration_ms: uint32): cint
```



### SDL_GameControllerRumbleTriggers

```lua
global function SDL_GameControllerRumbleTriggers(gamecontroller: *SDL_GameController, left_rumble: uint16, right_rumble: uint16, duration_ms: uint32): cint
```



### SDL_GameControllerHasLED

```lua
global function SDL_GameControllerHasLED(gamecontroller: *SDL_GameController): SDL_bool
```



### SDL_GameControllerSetLED

```lua
global function SDL_GameControllerSetLED(gamecontroller: *SDL_GameController, red: uint8, green: uint8, blue: uint8): cint
```



### SDL_GameControllerClose

```lua
global function SDL_GameControllerClose(gamecontroller: *SDL_GameController)
```



### SDL_TouchDeviceType

```lua
global SDL_TouchDeviceType: type = @enum(cint){
  SDL_TOUCH_DEVICE_INVALID = -1,
  SDL_TOUCH_DEVICE_DIRECT = 0,
  SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1,
  SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = 2
}
```



### SDL_Finger

```lua
global SDL_Finger: type = @record{
  id: clong,
  x: float32,
  y: float32,
  pressure: float32
}
```



### SDL_GetNumTouchDevices

```lua
global function SDL_GetNumTouchDevices(): cint
```



### SDL_GetTouchDevice

```lua
global function SDL_GetTouchDevice(index: cint): clong
```



### SDL_GetTouchDeviceType

```lua
global function SDL_GetTouchDeviceType(touchID: clong): SDL_TouchDeviceType
```



### SDL_GetNumTouchFingers

```lua
global function SDL_GetNumTouchFingers(touchID: clong): cint
```



### SDL_GetTouchFinger

```lua
global function SDL_GetTouchFinger(touchID: clong, index: cint): *SDL_Finger
```



### SDL_RecordGesture

```lua
global function SDL_RecordGesture(touchId: clong): cint
```



### SDL_SaveAllDollarTemplates

```lua
global function SDL_SaveAllDollarTemplates(dst: *SDL_RWops): cint
```



### SDL_SaveDollarTemplate

```lua
global function SDL_SaveDollarTemplate(gestureId: clong, dst: *SDL_RWops): cint
```



### SDL_LoadDollarTemplates

```lua
global function SDL_LoadDollarTemplates(touchId: clong, src: *SDL_RWops): cint
```



### SDL_EventType

```lua
global SDL_EventType: type = @enum(cint){
  SDL_FIRSTEVENT = 0,
  SDL_QUIT = 256,
  SDL_APP_TERMINATING = 257,
  SDL_APP_LOWMEMORY = 258,
  SDL_APP_WILLENTERBACKGROUND = 259,
  SDL_APP_DIDENTERBACKGROUND = 260,
  SDL_APP_WILLENTERFOREGROUND = 261,
  SDL_APP_DIDENTERFOREGROUND = 262,
  SDL_LOCALECHANGED = 263,
  SDL_DISPLAYEVENT = 336,
  SDL_WINDOWEVENT = 512,
  SDL_SYSWMEVENT = 513,
  SDL_KEYDOWN = 768,
  SDL_KEYUP = 769,
  SDL_TEXTEDITING = 770,
  SDL_TEXTINPUT = 771,
  SDL_KEYMAPCHANGED = 772,
  SDL_MOUSEMOTION = 1024,
  SDL_MOUSEBUTTONDOWN = 1025,
  SDL_MOUSEBUTTONUP = 1026,
  SDL_MOUSEWHEEL = 1027,
  SDL_JOYAXISMOTION = 1536,
  SDL_JOYBALLMOTION = 1537,
  SDL_JOYHATMOTION = 1538,
  SDL_JOYBUTTONDOWN = 1539,
  SDL_JOYBUTTONUP = 1540,
  SDL_JOYDEVICEADDED = 1541,
  SDL_JOYDEVICEREMOVED = 1542,
  SDL_CONTROLLERAXISMOTION = 1616,
  SDL_CONTROLLERBUTTONDOWN = 1617,
  SDL_CONTROLLERBUTTONUP = 1618,
  SDL_CONTROLLERDEVICEADDED = 1619,
  SDL_CONTROLLERDEVICEREMOVED = 1620,
  SDL_CONTROLLERDEVICEREMAPPED = 1621,
  SDL_CONTROLLERTOUCHPADDOWN = 1622,
  SDL_CONTROLLERTOUCHPADMOTION = 1623,
  SDL_CONTROLLERTOUCHPADUP = 1624,
  SDL_CONTROLLERSENSORUPDATE = 1625,
  SDL_FINGERDOWN = 1792,
  SDL_FINGERUP = 1793,
  SDL_FINGERMOTION = 1794,
  SDL_DOLLARGESTURE = 2048,
  SDL_DOLLARRECORD = 2049,
  SDL_MULTIGESTURE = 2050,
  SDL_CLIPBOARDUPDATE = 2304,
  SDL_DROPFILE = 4096,
  SDL_DROPTEXT = 4097,
  SDL_DROPBEGIN = 4098,
  SDL_DROPCOMPLETE = 4099,
  SDL_AUDIODEVICEADDED = 4352,
  SDL_AUDIODEVICEREMOVED = 4353,
  SDL_SENSORUPDATE = 4608,
  SDL_RENDER_TARGETS_RESET = 8192,
  SDL_RENDER_DEVICE_RESET = 8193,
  SDL_USEREVENT = 32768,
  SDL_LASTEVENT = 65535
}
```



### SDL_CommonEvent

```lua
global SDL_CommonEvent: type = @record{
  type: uint32,
  timestamp: uint32
}
```



### SDL_DisplayEvent

```lua
global SDL_DisplayEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  display: uint32,
  event: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8,
  data1: int32
}
```



### SDL_WindowEvent

```lua
global SDL_WindowEvent: type = @record{
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
```



### SDL_KeyboardEvent

```lua
global SDL_KeyboardEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  state: uint8,
  Repeat: uint8,
  padding2: uint8,
  padding3: uint8,
  keysym: SDL_Keysym
}
```



### SDL_TextEditingEvent

```lua
global SDL_TextEditingEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  text: [32]cchar,
  start: int32,
  length: int32
}
```



### SDL_TextInputEvent

```lua
global SDL_TextInputEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  text: [32]cchar
}
```



### SDL_MouseMotionEvent

```lua
global SDL_MouseMotionEvent: type = @record{
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
```



### SDL_MouseButtonEvent

```lua
global SDL_MouseButtonEvent: type = @record{
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
```



### SDL_MouseWheelEvent

```lua
global SDL_MouseWheelEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  which: uint32,
  x: int32,
  y: int32,
  direction: uint32
}
```



### SDL_JoyAxisEvent

```lua
global SDL_JoyAxisEvent: type = @record{
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
```



### SDL_JoyBallEvent

```lua
global SDL_JoyBallEvent: type = @record{
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
```



### SDL_JoyHatEvent

```lua
global SDL_JoyHatEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  hat: uint8,
  value: uint8,
  padding1: uint8,
  padding2: uint8
}
```



### SDL_JoyButtonEvent

```lua
global SDL_JoyButtonEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  button: uint8,
  state: uint8,
  padding1: uint8,
  padding2: uint8
}
```



### SDL_JoyDeviceEvent

```lua
global SDL_JoyDeviceEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: int32
}
```



### SDL_ControllerAxisEvent

```lua
global SDL_ControllerAxisEvent: type = @record{
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
```



### SDL_ControllerButtonEvent

```lua
global SDL_ControllerButtonEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  button: uint8,
  state: uint8,
  padding1: uint8,
  padding2: uint8
}
```



### SDL_ControllerDeviceEvent

```lua
global SDL_ControllerDeviceEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: int32
}
```



### SDL_ControllerTouchpadEvent

```lua
global SDL_ControllerTouchpadEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  touchpad: int32,
  finger: int32,
  x: float32,
  y: float32,
  pressure: float32
}
```



### SDL_ControllerSensorEvent

```lua
global SDL_ControllerSensorEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  sensor: int32,
  data: [3]float32
}
```



### SDL_AudioDeviceEvent

```lua
global SDL_AudioDeviceEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: uint32,
  iscapture: uint8,
  padding1: uint8,
  padding2: uint8,
  padding3: uint8
}
```



### SDL_TouchFingerEvent

```lua
global SDL_TouchFingerEvent: type = @record{
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
```



### SDL_MultiGestureEvent

```lua
global SDL_MultiGestureEvent: type = @record{
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
```



### SDL_DollarGestureEvent

```lua
global SDL_DollarGestureEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  touchId: clong,
  gestureId: clong,
  numFingers: uint32,
  error: float32,
  x: float32,
  y: float32
}
```



### SDL_DropEvent

```lua
global SDL_DropEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  file: cstring,
  windowID: uint32
}
```



### SDL_SensorEvent

```lua
global SDL_SensorEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: int32,
  data: [6]float32
}
```



### SDL_QuitEvent

```lua
global SDL_QuitEvent: type = @record{
  type: uint32,
  timestamp: uint32
}
```



### SDL_OSEvent

```lua
global SDL_OSEvent: type = @record{
  type: uint32,
  timestamp: uint32
}
```



### SDL_UserEvent

```lua
global SDL_UserEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  code: int32,
  data1: pointer,
  data2: pointer
}
```



### SDL_SysWMmsg

```lua
global SDL_SysWMmsg: type = @record{}
```



### SDL_SysWMEvent

```lua
global SDL_SysWMEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  msg: *SDL_SysWMmsg
}
```



### SDL_Event

```lua
global SDL_Event: type = @union{
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
```



### SDL_PumpEvents

```lua
global function SDL_PumpEvents()
```



### SDL_eventaction

```lua
global SDL_eventaction: type = @enum(cint){
  SDL_ADDEVENT = 0,
  SDL_PEEKEVENT = 1,
  SDL_GETEVENT = 2
}
```



### SDL_PeepEvents

```lua
global function SDL_PeepEvents(events: *SDL_Event, numevents: cint, action: SDL_eventaction, minType: uint32, maxType: uint32): cint
```



### SDL_HasEvent

```lua
global function SDL_HasEvent(type: uint32): SDL_bool
```



### SDL_HasEvents

```lua
global function SDL_HasEvents(minType: uint32, maxType: uint32): SDL_bool
```



### SDL_FlushEvent

```lua
global function SDL_FlushEvent(type: uint32)
```



### SDL_FlushEvents

```lua
global function SDL_FlushEvents(minType: uint32, maxType: uint32)
```



### SDL_PollEvent

```lua
global function SDL_PollEvent(event: *SDL_Event): cint
```



### SDL_WaitEvent

```lua
global function SDL_WaitEvent(event: *SDL_Event): cint
```



### SDL_WaitEventTimeout

```lua
global function SDL_WaitEventTimeout(event: *SDL_Event, timeout: cint): cint
```



### SDL_PushEvent

```lua
global function SDL_PushEvent(event: *SDL_Event): cint
```



### SDL_EventFilter

```lua
global SDL_EventFilter: type = @function(pointer, *SDL_Event): cint
```



### SDL_SetEventFilter

```lua
global function SDL_SetEventFilter(filter: SDL_EventFilter, userdata: pointer)
```



### SDL_GetEventFilter

```lua
global function SDL_GetEventFilter(filter: *SDL_EventFilter, userdata: *pointer): SDL_bool
```



### SDL_AddEventWatch

```lua
global function SDL_AddEventWatch(filter: SDL_EventFilter, userdata: pointer)
```



### SDL_DelEventWatch

```lua
global function SDL_DelEventWatch(filter: SDL_EventFilter, userdata: pointer)
```



### SDL_FilterEvents

```lua
global function SDL_FilterEvents(filter: SDL_EventFilter, userdata: pointer)
```



### SDL_EventState

```lua
global function SDL_EventState(type: uint32, state: cint): uint8
```



### SDL_RegisterEvents

```lua
global function SDL_RegisterEvents(numevents: cint): uint32
```



### SDL_GetBasePath

```lua
global function SDL_GetBasePath(): cstring
```



### SDL_GetPrefPath

```lua
global function SDL_GetPrefPath(org: cstring, app: cstring): cstring
```



### SDL_Haptic

```lua
global SDL_Haptic: type = @record{}
```



### SDL_HapticDirection

```lua
global SDL_HapticDirection: type = @record{
  type: uint8,
  dir: [3]int32
}
```



### SDL_HapticConstant

```lua
global SDL_HapticConstant: type = @record{
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
```



### SDL_HapticPeriodic

```lua
global SDL_HapticPeriodic: type = @record{
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
```



### SDL_HapticCondition

```lua
global SDL_HapticCondition: type = @record{
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
```



### SDL_HapticRamp

```lua
global SDL_HapticRamp: type = @record{
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
```



### SDL_HapticLeftRight

```lua
global SDL_HapticLeftRight: type = @record{
  type: uint16,
  length: uint32,
  large_magnitude: uint16,
  small_magnitude: uint16
}
```



### SDL_HapticCustom

```lua
global SDL_HapticCustom: type = @record{
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
```



### SDL_HapticEffect

```lua
global SDL_HapticEffect: type = @union{
  type: uint16,
  constant: SDL_HapticConstant,
  periodic: SDL_HapticPeriodic,
  condition: SDL_HapticCondition,
  ramp: SDL_HapticRamp,
  leftright: SDL_HapticLeftRight,
  custom: SDL_HapticCustom
}
```



### SDL_NumHaptics

```lua
global function SDL_NumHaptics(): cint
```



### SDL_HapticName

```lua
global function SDL_HapticName(device_index: cint): cstring
```



### SDL_HapticOpen

```lua
global function SDL_HapticOpen(device_index: cint): *SDL_Haptic
```



### SDL_HapticOpened

```lua
global function SDL_HapticOpened(device_index: cint): cint
```



### SDL_HapticIndex

```lua
global function SDL_HapticIndex(haptic: *SDL_Haptic): cint
```



### SDL_MouseIsHaptic

```lua
global function SDL_MouseIsHaptic(): cint
```



### SDL_HapticOpenFromMouse

```lua
global function SDL_HapticOpenFromMouse(): *SDL_Haptic
```



### SDL_JoystickIsHaptic

```lua
global function SDL_JoystickIsHaptic(joystick: *SDL_Joystick): cint
```



### SDL_HapticOpenFromJoystick

```lua
global function SDL_HapticOpenFromJoystick(joystick: *SDL_Joystick): *SDL_Haptic
```



### SDL_HapticClose

```lua
global function SDL_HapticClose(haptic: *SDL_Haptic)
```



### SDL_HapticNumEffects

```lua
global function SDL_HapticNumEffects(haptic: *SDL_Haptic): cint
```



### SDL_HapticNumEffectsPlaying

```lua
global function SDL_HapticNumEffectsPlaying(haptic: *SDL_Haptic): cint
```



### SDL_HapticQuery

```lua
global function SDL_HapticQuery(haptic: *SDL_Haptic): cuint
```



### SDL_HapticNumAxes

```lua
global function SDL_HapticNumAxes(haptic: *SDL_Haptic): cint
```



### SDL_HapticEffectSupported

```lua
global function SDL_HapticEffectSupported(haptic: *SDL_Haptic, effect: *SDL_HapticEffect): cint
```



### SDL_HapticNewEffect

```lua
global function SDL_HapticNewEffect(haptic: *SDL_Haptic, effect: *SDL_HapticEffect): cint
```



### SDL_HapticUpdateEffect

```lua
global function SDL_HapticUpdateEffect(haptic: *SDL_Haptic, effect: cint, data: *SDL_HapticEffect): cint
```



### SDL_HapticRunEffect

```lua
global function SDL_HapticRunEffect(haptic: *SDL_Haptic, effect: cint, iterations: uint32): cint
```



### SDL_HapticStopEffect

```lua
global function SDL_HapticStopEffect(haptic: *SDL_Haptic, effect: cint): cint
```



### SDL_HapticDestroyEffect

```lua
global function SDL_HapticDestroyEffect(haptic: *SDL_Haptic, effect: cint)
```



### SDL_HapticGetEffectStatus

```lua
global function SDL_HapticGetEffectStatus(haptic: *SDL_Haptic, effect: cint): cint
```



### SDL_HapticSetGain

```lua
global function SDL_HapticSetGain(haptic: *SDL_Haptic, gain: cint): cint
```



### SDL_HapticSetAutocenter

```lua
global function SDL_HapticSetAutocenter(haptic: *SDL_Haptic, autocenter: cint): cint
```



### SDL_HapticPause

```lua
global function SDL_HapticPause(haptic: *SDL_Haptic): cint
```



### SDL_HapticUnpause

```lua
global function SDL_HapticUnpause(haptic: *SDL_Haptic): cint
```



### SDL_HapticStopAll

```lua
global function SDL_HapticStopAll(haptic: *SDL_Haptic): cint
```



### SDL_HapticRumbleSupported

```lua
global function SDL_HapticRumbleSupported(haptic: *SDL_Haptic): cint
```



### SDL_HapticRumbleInit

```lua
global function SDL_HapticRumbleInit(haptic: *SDL_Haptic): cint
```



### SDL_HapticRumblePlay

```lua
global function SDL_HapticRumblePlay(haptic: *SDL_Haptic, strength: float32, length: uint32): cint
```



### SDL_HapticRumbleStop

```lua
global function SDL_HapticRumbleStop(haptic: *SDL_Haptic): cint
```



### SDL_HintPriority

```lua
global SDL_HintPriority: type = @enum(cint){
  SDL_HINT_DEFAULT = 0,
  SDL_HINT_NORMAL = 1,
  SDL_HINT_OVERRIDE = 2
}
```



### SDL_SetHintWithPriority

```lua
global function SDL_SetHintWithPriority(name: cstring, value: cstring, priority: SDL_HintPriority): SDL_bool
```



### SDL_SetHint

```lua
global function SDL_SetHint(name: cstring, value: cstring): SDL_bool
```



### SDL_GetHint

```lua
global function SDL_GetHint(name: cstring): cstring
```



### SDL_GetHintBoolean

```lua
global function SDL_GetHintBoolean(name: cstring, default_value: SDL_bool): SDL_bool
```



### SDL_HintCallback

```lua
global SDL_HintCallback: type = @function(pointer, cstring, cstring, cstring)
```



### SDL_AddHintCallback

```lua
global function SDL_AddHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer)
```



### SDL_DelHintCallback

```lua
global function SDL_DelHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer)
```



### SDL_ClearHints

```lua
global function SDL_ClearHints()
```



### SDL_LoadObject

```lua
global function SDL_LoadObject(sofile: cstring): pointer
```



### SDL_LoadFunction

```lua
global function SDL_LoadFunction(handle: pointer, name: cstring): pointer
```



### SDL_UnloadObject

```lua
global function SDL_UnloadObject(handle: pointer)
```



### SDL_LogCategory

```lua
global SDL_LogCategory: type = @enum(cint){
  SDL_LOG_CATEGORY_APPLICATION = 0,
  SDL_LOG_CATEGORY_ERROR = 1,
  SDL_LOG_CATEGORY_ASSERT = 2,
  SDL_LOG_CATEGORY_SYSTEM = 3,
  SDL_LOG_CATEGORY_AUDIO = 4,
  SDL_LOG_CATEGORY_VIDEO = 5,
  SDL_LOG_CATEGORY_RENDER = 6,
  SDL_LOG_CATEGORY_INPUT = 7,
  SDL_LOG_CATEGORY_TEST = 8,
  SDL_LOG_CATEGORY_RESERVED1 = 9,
  SDL_LOG_CATEGORY_RESERVED2 = 10,
  SDL_LOG_CATEGORY_RESERVED3 = 11,
  SDL_LOG_CATEGORY_RESERVED4 = 12,
  SDL_LOG_CATEGORY_RESERVED5 = 13,
  SDL_LOG_CATEGORY_RESERVED6 = 14,
  SDL_LOG_CATEGORY_RESERVED7 = 15,
  SDL_LOG_CATEGORY_RESERVED8 = 16,
  SDL_LOG_CATEGORY_RESERVED9 = 17,
  SDL_LOG_CATEGORY_RESERVED10 = 18,
  SDL_LOG_CATEGORY_CUSTOM = 19
}
```



### SDL_LogPriority

```lua
global SDL_LogPriority: type = @enum(cint){
  SDL_LOG_PRIORITY_VERBOSE = 1,
  SDL_LOG_PRIORITY_DEBUG = 2,
  SDL_LOG_PRIORITY_INFO = 3,
  SDL_LOG_PRIORITY_WARN = 4,
  SDL_LOG_PRIORITY_ERROR = 5,
  SDL_LOG_PRIORITY_CRITICAL = 6,
  SDL_NUM_LOG_PRIORITIES = 7
}
```



### SDL_LogSetAllPriority

```lua
global function SDL_LogSetAllPriority(priority: SDL_LogPriority)
```



### SDL_LogSetPriority

```lua
global function SDL_LogSetPriority(category: cint, priority: SDL_LogPriority)
```



### SDL_LogGetPriority

```lua
global function SDL_LogGetPriority(category: cint): SDL_LogPriority
```



### SDL_LogResetPriorities

```lua
global function SDL_LogResetPriorities()
```



### SDL_Log

```lua
global function SDL_Log(fmt: cstring, ...: cvarargs)
```



### SDL_LogVerbose

```lua
global function SDL_LogVerbose(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogDebug

```lua
global function SDL_LogDebug(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogInfo

```lua
global function SDL_LogInfo(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogWarn

```lua
global function SDL_LogWarn(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogError

```lua
global function SDL_LogError(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogCritical

```lua
global function SDL_LogCritical(category: cint, fmt: cstring, ...: cvarargs)
```



### SDL_LogMessage

```lua
global function SDL_LogMessage(category: cint, priority: SDL_LogPriority, fmt: cstring, ...: cvarargs)
```



### SDL_LogMessageV

```lua
global function SDL_LogMessageV(category: cint, priority: SDL_LogPriority, fmt: cstring, ap: cvalist)
```



### SDL_LogOutputFunction

```lua
global SDL_LogOutputFunction: type = @function(pointer, cint, SDL_LogPriority, cstring)
```



### SDL_LogGetOutputFunction

```lua
global function SDL_LogGetOutputFunction(callback: *SDL_LogOutputFunction, userdata: *pointer)
```



### SDL_LogSetOutputFunction

```lua
global function SDL_LogSetOutputFunction(callback: SDL_LogOutputFunction, userdata: pointer)
```



### SDL_MessageBoxFlags

```lua
global SDL_MessageBoxFlags: type = @enum(cint){
  SDL_MESSAGEBOX_ERROR = 16,
  SDL_MESSAGEBOX_WARNING = 32,
  SDL_MESSAGEBOX_INFORMATION = 64,
  SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 128,
  SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 256
}
```



### SDL_MessageBoxButtonFlags

```lua
global SDL_MessageBoxButtonFlags: type = @enum(cint){
  SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1,
  SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2
}
```



### SDL_MessageBoxButtonData

```lua
global SDL_MessageBoxButtonData: type = @record{
  flags: uint32,
  buttonid: cint,
  text: cstring
}
```



### SDL_MessageBoxColor

```lua
global SDL_MessageBoxColor: type = @record{
  r: uint8,
  g: uint8,
  b: uint8
}
```



### SDL_MessageBoxColorType

```lua
global SDL_MessageBoxColorType: type = @enum(cint){
  SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
  SDL_MESSAGEBOX_COLOR_TEXT = 1,
  SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
  SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
  SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
  SDL_MESSAGEBOX_COLOR_MAX = 5
}
```



### SDL_MessageBoxColorScheme

```lua
global SDL_MessageBoxColorScheme: type = @record{
  colors: [5]SDL_MessageBoxColor
}
```



### SDL_MessageBoxData

```lua
global SDL_MessageBoxData: type = @record{
  flags: uint32,
  window: *SDL_Window,
  title: cstring,
  message: cstring,
  numbuttons: cint,
  buttons: *SDL_MessageBoxButtonData,
  colorScheme: *SDL_MessageBoxColorScheme
}
```



### SDL_ShowMessageBox

```lua
global function SDL_ShowMessageBox(messageboxdata: *SDL_MessageBoxData, buttonid: *cint): cint
```



### SDL_ShowSimpleMessageBox

```lua
global function SDL_ShowSimpleMessageBox(flags: uint32, title: cstring, message: cstring, window: *SDL_Window): cint
```



### SDL_MetalView

```lua
global SDL_MetalView: type = @pointer
```



### SDL_Metal_CreateView

```lua
global function SDL_Metal_CreateView(window: *SDL_Window): SDL_MetalView
```



### SDL_Metal_DestroyView

```lua
global function SDL_Metal_DestroyView(view: SDL_MetalView)
```



### SDL_Metal_GetLayer

```lua
global function SDL_Metal_GetLayer(view: SDL_MetalView): pointer
```



### SDL_Metal_GetDrawableSize

```lua
global function SDL_Metal_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint)
```



### SDL_PowerState

```lua
global SDL_PowerState: type = @enum(cint){
  SDL_POWERSTATE_UNKNOWN = 0,
  SDL_POWERSTATE_ON_BATTERY = 1,
  SDL_POWERSTATE_NO_BATTERY = 2,
  SDL_POWERSTATE_CHARGING = 3,
  SDL_POWERSTATE_CHARGED = 4
}
```



### SDL_GetPowerInfo

```lua
global function SDL_GetPowerInfo(secs: *cint, pct: *cint): SDL_PowerState
```



### SDL_RendererFlags

```lua
global SDL_RendererFlags: type = @enum(cint){
  SDL_RENDERER_SOFTWARE = 1,
  SDL_RENDERER_ACCELERATED = 2,
  SDL_RENDERER_PRESENTVSYNC = 4,
  SDL_RENDERER_TARGETTEXTURE = 8
}
```



### SDL_RendererInfo

```lua
global SDL_RendererInfo: type = @record{
  name: cstring,
  flags: uint32,
  num_texture_formats: uint32,
  texture_formats: [16]uint32,
  max_texture_width: cint,
  max_texture_height: cint
}
```



### SDL_ScaleMode

```lua
global SDL_ScaleMode: type = @enum(cint){
  SDL_ScaleModeNearest = 0,
  SDL_ScaleModeLinear = 1,
  SDL_ScaleModeBest = 2
}
```



### SDL_TextureAccess

```lua
global SDL_TextureAccess: type = @enum(cint){
  SDL_TEXTUREACCESS_STATIC = 0,
  SDL_TEXTUREACCESS_STREAMING = 1,
  SDL_TEXTUREACCESS_TARGET = 2
}
```



### SDL_TextureModulate

```lua
global SDL_TextureModulate: type = @enum(cint){
  SDL_TEXTUREMODULATE_NONE = 0,
  SDL_TEXTUREMODULATE_COLOR = 1,
  SDL_TEXTUREMODULATE_ALPHA = 2
}
```



### SDL_RendererFlip

```lua
global SDL_RendererFlip: type = @enum(cint){
  SDL_FLIP_NONE = 0,
  SDL_FLIP_HORIZONTAL = 1,
  SDL_FLIP_VERTICAL = 2
}
```



### SDL_Renderer

```lua
global SDL_Renderer: type = @record{}
```



### SDL_Texture

```lua
global SDL_Texture: type = @record{}
```



### SDL_GetNumRenderDrivers

```lua
global function SDL_GetNumRenderDrivers(): cint
```



### SDL_GetRenderDriverInfo

```lua
global function SDL_GetRenderDriverInfo(index: cint, info: *SDL_RendererInfo): cint
```



### SDL_CreateWindowAndRenderer

```lua
global function SDL_CreateWindowAndRenderer(width: cint, height: cint, window_flags: uint32, window: **SDL_Window, renderer: **SDL_Renderer): cint
```



### SDL_CreateRenderer

```lua
global function SDL_CreateRenderer(window: *SDL_Window, index: cint, flags: uint32): *SDL_Renderer
```



### SDL_CreateSoftwareRenderer

```lua
global function SDL_CreateSoftwareRenderer(surface: *SDL_Surface): *SDL_Renderer
```



### SDL_GetRenderer

```lua
global function SDL_GetRenderer(window: *SDL_Window): *SDL_Renderer
```



### SDL_GetRendererInfo

```lua
global function SDL_GetRendererInfo(renderer: *SDL_Renderer, info: *SDL_RendererInfo): cint
```



### SDL_GetRendererOutputSize

```lua
global function SDL_GetRendererOutputSize(renderer: *SDL_Renderer, w: *cint, h: *cint): cint
```



### SDL_CreateTexture

```lua
global function SDL_CreateTexture(renderer: *SDL_Renderer, format: uint32, access: cint, w: cint, h: cint): *SDL_Texture
```



### SDL_CreateTextureFromSurface

```lua
global function SDL_CreateTextureFromSurface(renderer: *SDL_Renderer, surface: *SDL_Surface): *SDL_Texture
```



### SDL_QueryTexture

```lua
global function SDL_QueryTexture(texture: *SDL_Texture, format: *uint32, access: *cint, w: *cint, h: *cint): cint
```



### SDL_SetTextureColorMod

```lua
global function SDL_SetTextureColorMod(texture: *SDL_Texture, r: uint8, g: uint8, b: uint8): cint
```



### SDL_GetTextureColorMod

```lua
global function SDL_GetTextureColorMod(texture: *SDL_Texture, r: *uint8, g: *uint8, b: *uint8): cint
```



### SDL_SetTextureAlphaMod

```lua
global function SDL_SetTextureAlphaMod(texture: *SDL_Texture, alpha: uint8): cint
```



### SDL_GetTextureAlphaMod

```lua
global function SDL_GetTextureAlphaMod(texture: *SDL_Texture, alpha: *uint8): cint
```



### SDL_SetTextureBlendMode

```lua
global function SDL_SetTextureBlendMode(texture: *SDL_Texture, blendMode: SDL_BlendMode): cint
```



### SDL_GetTextureBlendMode

```lua
global function SDL_GetTextureBlendMode(texture: *SDL_Texture, blendMode: *SDL_BlendMode): cint
```



### SDL_SetTextureScaleMode

```lua
global function SDL_SetTextureScaleMode(texture: *SDL_Texture, scaleMode: SDL_ScaleMode): cint
```



### SDL_GetTextureScaleMode

```lua
global function SDL_GetTextureScaleMode(texture: *SDL_Texture, scaleMode: *SDL_ScaleMode): cint
```



### SDL_UpdateTexture

```lua
global function SDL_UpdateTexture(texture: *SDL_Texture, rect: *SDL_Rect, pixels: pointer, pitch: cint): cint
```



### SDL_UpdateYUVTexture

```lua
global function SDL_UpdateYUVTexture(texture: *SDL_Texture, rect: *SDL_Rect, Yplane: *uint8, Ypitch: cint, Uplane: *uint8, Upitch: cint, Vplane: *uint8, Vpitch: cint): cint
```



### SDL_LockTexture

```lua
global function SDL_LockTexture(texture: *SDL_Texture, rect: *SDL_Rect, pixels: *pointer, pitch: *cint): cint
```



### SDL_LockTextureToSurface

```lua
global function SDL_LockTextureToSurface(texture: *SDL_Texture, rect: *SDL_Rect, surface: **SDL_Surface): cint
```



### SDL_UnlockTexture

```lua
global function SDL_UnlockTexture(texture: *SDL_Texture)
```



### SDL_RenderTargetSupported

```lua
global function SDL_RenderTargetSupported(renderer: *SDL_Renderer): SDL_bool
```



### SDL_SetRenderTarget

```lua
global function SDL_SetRenderTarget(renderer: *SDL_Renderer, texture: *SDL_Texture): cint
```



### SDL_GetRenderTarget

```lua
global function SDL_GetRenderTarget(renderer: *SDL_Renderer): *SDL_Texture
```



### SDL_RenderSetLogicalSize

```lua
global function SDL_RenderSetLogicalSize(renderer: *SDL_Renderer, w: cint, h: cint): cint
```



### SDL_RenderGetLogicalSize

```lua
global function SDL_RenderGetLogicalSize(renderer: *SDL_Renderer, w: *cint, h: *cint)
```



### SDL_RenderSetIntegerScale

```lua
global function SDL_RenderSetIntegerScale(renderer: *SDL_Renderer, enable: SDL_bool): cint
```



### SDL_RenderGetIntegerScale

```lua
global function SDL_RenderGetIntegerScale(renderer: *SDL_Renderer): SDL_bool
```



### SDL_RenderSetViewport

```lua
global function SDL_RenderSetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect): cint
```



### SDL_RenderGetViewport

```lua
global function SDL_RenderGetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect)
```



### SDL_RenderSetClipRect

```lua
global function SDL_RenderSetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint
```



### SDL_RenderGetClipRect

```lua
global function SDL_RenderGetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect)
```



### SDL_RenderIsClipEnabled

```lua
global function SDL_RenderIsClipEnabled(renderer: *SDL_Renderer): SDL_bool
```



### SDL_RenderSetScale

```lua
global function SDL_RenderSetScale(renderer: *SDL_Renderer, scaleX: float32, scaleY: float32): cint
```



### SDL_RenderGetScale

```lua
global function SDL_RenderGetScale(renderer: *SDL_Renderer, scaleX: *float32, scaleY: *float32)
```



### SDL_SetRenderDrawColor

```lua
global function SDL_SetRenderDrawColor(renderer: *SDL_Renderer, r: uint8, g: uint8, b: uint8, a: uint8): cint
```



### SDL_GetRenderDrawColor

```lua
global function SDL_GetRenderDrawColor(renderer: *SDL_Renderer, r: *uint8, g: *uint8, b: *uint8, a: *uint8): cint
```



### SDL_SetRenderDrawBlendMode

```lua
global function SDL_SetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: SDL_BlendMode): cint
```



### SDL_GetRenderDrawBlendMode

```lua
global function SDL_GetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: *SDL_BlendMode): cint
```



### SDL_RenderClear

```lua
global function SDL_RenderClear(renderer: *SDL_Renderer): cint
```



### SDL_RenderDrawPoint

```lua
global function SDL_RenderDrawPoint(renderer: *SDL_Renderer, x: cint, y: cint): cint
```



### SDL_RenderDrawPoints

```lua
global function SDL_RenderDrawPoints(renderer: *SDL_Renderer, points: *SDL_Point, count: cint): cint
```



### SDL_RenderDrawLine

```lua
global function SDL_RenderDrawLine(renderer: *SDL_Renderer, x1: cint, y1: cint, x2: cint, y2: cint): cint
```



### SDL_RenderDrawLines

```lua
global function SDL_RenderDrawLines(renderer: *SDL_Renderer, points: *SDL_Point, count: cint): cint
```



### SDL_RenderDrawRect

```lua
global function SDL_RenderDrawRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint
```



### SDL_RenderDrawRects

```lua
global function SDL_RenderDrawRects(renderer: *SDL_Renderer, rects: *SDL_Rect, count: cint): cint
```



### SDL_RenderFillRect

```lua
global function SDL_RenderFillRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint
```



### SDL_RenderFillRects

```lua
global function SDL_RenderFillRects(renderer: *SDL_Renderer, rects: *SDL_Rect, count: cint): cint
```



### SDL_RenderCopy

```lua
global function SDL_RenderCopy(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_Rect): cint
```



### SDL_RenderCopyEx

```lua
global function SDL_RenderCopyEx(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_Rect, angle: float64, center: *SDL_Point, flip: SDL_RendererFlip): cint
```



### SDL_RenderDrawPointF

```lua
global function SDL_RenderDrawPointF(renderer: *SDL_Renderer, x: float32, y: float32): cint
```



### SDL_RenderDrawPointsF

```lua
global function SDL_RenderDrawPointsF(renderer: *SDL_Renderer, points: *SDL_FPoint, count: cint): cint
```



### SDL_RenderDrawLineF

```lua
global function SDL_RenderDrawLineF(renderer: *SDL_Renderer, x1: float32, y1: float32, x2: float32, y2: float32): cint
```



### SDL_RenderDrawLinesF

```lua
global function SDL_RenderDrawLinesF(renderer: *SDL_Renderer, points: *SDL_FPoint, count: cint): cint
```



### SDL_RenderDrawRectF

```lua
global function SDL_RenderDrawRectF(renderer: *SDL_Renderer, rect: *SDL_FRect): cint
```



### SDL_RenderDrawRectsF

```lua
global function SDL_RenderDrawRectsF(renderer: *SDL_Renderer, rects: *SDL_FRect, count: cint): cint
```



### SDL_RenderFillRectF

```lua
global function SDL_RenderFillRectF(renderer: *SDL_Renderer, rect: *SDL_FRect): cint
```



### SDL_RenderFillRectsF

```lua
global function SDL_RenderFillRectsF(renderer: *SDL_Renderer, rects: *SDL_FRect, count: cint): cint
```



### SDL_RenderCopyF

```lua
global function SDL_RenderCopyF(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_FRect): cint
```



### SDL_RenderCopyExF

```lua
global function SDL_RenderCopyExF(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_FRect, angle: float64, center: *SDL_FPoint, flip: SDL_RendererFlip): cint
```



### SDL_RenderReadPixels

```lua
global function SDL_RenderReadPixels(renderer: *SDL_Renderer, rect: *SDL_Rect, format: uint32, pixels: pointer, pitch: cint): cint
```



### SDL_RenderPresent

```lua
global function SDL_RenderPresent(renderer: *SDL_Renderer)
```



### SDL_DestroyTexture

```lua
global function SDL_DestroyTexture(texture: *SDL_Texture)
```



### SDL_DestroyRenderer

```lua
global function SDL_DestroyRenderer(renderer: *SDL_Renderer)
```



### SDL_RenderFlush

```lua
global function SDL_RenderFlush(renderer: *SDL_Renderer): cint
```



### SDL_GL_BindTexture

```lua
global function SDL_GL_BindTexture(texture: *SDL_Texture, texw: *float32, texh: *float32): cint
```



### SDL_GL_UnbindTexture

```lua
global function SDL_GL_UnbindTexture(texture: *SDL_Texture): cint
```



### SDL_RenderGetMetalLayer

```lua
global function SDL_RenderGetMetalLayer(renderer: *SDL_Renderer): pointer
```



### SDL_RenderGetMetalCommandEncoder

```lua
global function SDL_RenderGetMetalCommandEncoder(renderer: *SDL_Renderer): pointer
```



### SDL_CreateShapedWindow

```lua
global function SDL_CreateShapedWindow(title: cstring, x: cuint, y: cuint, w: cuint, h: cuint, flags: uint32): *SDL_Window
```



### SDL_IsShapedWindow

```lua
global function SDL_IsShapedWindow(window: *SDL_Window): SDL_bool
```



### WindowShapeMode

```lua
global WindowShapeMode: type = @enum(cint){
  ShapeModeDefault = 0,
  ShapeModeBinarizeAlpha = 1,
  ShapeModeReverseBinarizeAlpha = 2,
  ShapeModeColorKey = 3
}
```



### SDL_WindowShapeParams

```lua
global SDL_WindowShapeParams: type = @union{
  binarizationCutoff: uint8,
  colorKey: SDL_Color
}
```



### SDL_WindowShapeMode

```lua
global SDL_WindowShapeMode: type = @record{
  mode: WindowShapeMode,
  parameters: SDL_WindowShapeParams
}
```



### SDL_SetWindowShape

```lua
global function SDL_SetWindowShape(window: *SDL_Window, shape: *SDL_Surface, shape_mode: *SDL_WindowShapeMode): cint
```



### SDL_GetShapedWindowMode

```lua
global function SDL_GetShapedWindowMode(window: *SDL_Window, shape_mode: *SDL_WindowShapeMode): cint
```



### SDL_LinuxSetThreadPriority

```lua
global function SDL_LinuxSetThreadPriority(threadID: int64, priority: cint): cint
```



### SDL_IsTablet

```lua
global function SDL_IsTablet(): SDL_bool
```



### SDL_OnApplicationWillTerminate

```lua
global function SDL_OnApplicationWillTerminate()
```



### SDL_OnApplicationDidReceiveMemoryWarning

```lua
global function SDL_OnApplicationDidReceiveMemoryWarning()
```



### SDL_OnApplicationWillResignActive

```lua
global function SDL_OnApplicationWillResignActive()
```



### SDL_OnApplicationDidEnterBackground

```lua
global function SDL_OnApplicationDidEnterBackground()
```



### SDL_OnApplicationWillEnterForeground

```lua
global function SDL_OnApplicationWillEnterForeground()
```



### SDL_OnApplicationDidBecomeActive

```lua
global function SDL_OnApplicationDidBecomeActive()
```



### SDL_GetTicks

```lua
global function SDL_GetTicks(): uint32
```



### SDL_GetPerformanceCounter

```lua
global function SDL_GetPerformanceCounter(): uint64
```



### SDL_GetPerformanceFrequency

```lua
global function SDL_GetPerformanceFrequency(): uint64
```



### SDL_Delay

```lua
global function SDL_Delay(ms: uint32)
```



### SDL_TimerCallback

```lua
global SDL_TimerCallback: type = @function(uint32, pointer): uint32
```



### SDL_AddTimer

```lua
global function SDL_AddTimer(interval: uint32, callback: SDL_TimerCallback, param: pointer): cint
```



### SDL_RemoveTimer

```lua
global function SDL_RemoveTimer(id: cint): SDL_bool
```



### SDL_version

```lua
global SDL_version: type = @record{
  major: uint8,
  minor: uint8,
  patch: uint8
}
```



### SDL_GetVersion

```lua
global function SDL_GetVersion(ver: *SDL_version)
```



### SDL_GetRevision

```lua
global function SDL_GetRevision(): cstring
```



### SDL_GetRevisionNumber

```lua
global function SDL_GetRevisionNumber(): cint
```



### SDL_Locale

```lua
global SDL_Locale: type = @record{
  language: cstring,
  country: cstring
}
```



### SDL_GetPreferredLocales

```lua
global function SDL_GetPreferredLocales(): *SDL_Locale
```



### SDL_OpenURL

```lua
global function SDL_OpenURL(url: cstring): cint
```



### SDL_Init

```lua
global function SDL_Init(flags: uint32): cint
```



### SDL_InitSubSystem

```lua
global function SDL_InitSubSystem(flags: uint32): cint
```



### SDL_QuitSubSystem

```lua
global function SDL_QuitSubSystem(flags: uint32)
```



### SDL_WasInit

```lua
global function SDL_WasInit(flags: uint32): uint32
```



### SDL_Quit

```lua
global function SDL_Quit()
```



### SDL_ICONV_ERROR

```lua
global SDL_ICONV_ERROR: csize
```



### SDL_ICONV_E2BIG

```lua
global SDL_ICONV_E2BIG: csize
```



### SDL_ICONV_EILSEQ

```lua
global SDL_ICONV_EILSEQ: csize
```



### SDL_ICONV_EINVAL

```lua
global SDL_ICONV_EINVAL: csize
```



### SDL_LIL_ENDIAN

```lua
global SDL_LIL_ENDIAN: cint
```



### SDL_BIG_ENDIAN

```lua
global SDL_BIG_ENDIAN: cint
```



### SDL_BYTEORDER

```lua
global SDL_BYTEORDER: cint
```



### SDL_MUTEX_TIMEDOUT

```lua
global SDL_MUTEX_TIMEDOUT: cint
```



### SDL_MUTEX_MAXWAIT

```lua
global SDL_MUTEX_MAXWAIT: uint32
```



### SDL_RWOPS_UNKNOWN

```lua
global SDL_RWOPS_UNKNOWN: uint32
```



### SDL_RWOPS_WINFILE

```lua
global SDL_RWOPS_WINFILE: uint32
```



### SDL_RWOPS_STDFILE

```lua
global SDL_RWOPS_STDFILE: uint32
```



### SDL_RWOPS_JNIFILE

```lua
global SDL_RWOPS_JNIFILE: uint32
```



### SDL_RWOPS_MEMORY

```lua
global SDL_RWOPS_MEMORY: uint32
```



### SDL_RWOPS_MEMORY_RO

```lua
global SDL_RWOPS_MEMORY_RO: uint32
```



### SDL_AUDIO_MASK_BITSIZE

```lua
global SDL_AUDIO_MASK_BITSIZE: uint16
```



### SDL_AUDIO_MASK_DATATYPE

```lua
global SDL_AUDIO_MASK_DATATYPE: uint16
```



### SDL_AUDIO_MASK_ENDIAN

```lua
global SDL_AUDIO_MASK_ENDIAN: uint16
```



### SDL_AUDIO_MASK_SIGNED

```lua
global SDL_AUDIO_MASK_SIGNED: uint16
```



### SDL_AUDIO_ALLOW_FREQUENCY_CHANGE

```lua
global SDL_AUDIO_ALLOW_FREQUENCY_CHANGE: uint16
```



### SDL_AUDIO_ALLOW_FORMAT_CHANGE

```lua
global SDL_AUDIO_ALLOW_FORMAT_CHANGE: uint16
```



### SDL_AUDIO_ALLOW_CHANNELS_CHANGE

```lua
global SDL_AUDIO_ALLOW_CHANNELS_CHANGE: uint16
```



### SDL_AUDIO_ALLOW_SAMPLES_CHANGE

```lua
global SDL_AUDIO_ALLOW_SAMPLES_CHANGE: uint16
```



### SDL_AUDIO_ALLOW_ANY_CHANGE

```lua
global SDL_AUDIO_ALLOW_ANY_CHANGE: uint16
```



### SDL_AUDIOCVT_MAX_FILTERS

```lua
global SDL_AUDIOCVT_MAX_FILTERS: cint
```



### SDL_MIX_MAXVOLUME

```lua
global SDL_MIX_MAXVOLUME: cint
```



### SDL_CACHELINE_SIZE

```lua
global SDL_CACHELINE_SIZE: cint
```



### SDL_ALPHA_OPAQUE

```lua
global SDL_ALPHA_OPAQUE: uint8
```



### SDL_ALPHA_TRANSPARENT

```lua
global SDL_ALPHA_TRANSPARENT: uint8
```



### SDL_SWSURFACE

```lua
global SDL_SWSURFACE: uint32
```



### SDL_PREALLOC

```lua
global SDL_PREALLOC: uint32
```



### SDL_RLEACCEL

```lua
global SDL_RLEACCEL: uint32
```



### SDL_DONTFREE

```lua
global SDL_DONTFREE: uint32
```



### SDL_SIMD_ALIGNED

```lua
global SDL_SIMD_ALIGNED: uint32
```



### SDL_WINDOWPOS_UNDEFINED_MASK

```lua
global SDL_WINDOWPOS_UNDEFINED_MASK: uint32
```



### SDL_WINDOWPOS_UNDEFINED

```lua
global SDL_WINDOWPOS_UNDEFINED: uint32
```



### SDL_WINDOWPOS_CENTERED_MASK

```lua
global SDL_WINDOWPOS_CENTERED_MASK: uint32
```



### SDL_WINDOWPOS_CENTERED

```lua
global SDL_WINDOWPOS_CENTERED: uint32
```



### SDL_BUTTON_LEFT

```lua
global SDL_BUTTON_LEFT: uint8
```



### SDL_BUTTON_MIDDLE

```lua
global SDL_BUTTON_MIDDLE: uint8
```



### SDL_BUTTON_RIGHT

```lua
global SDL_BUTTON_RIGHT: uint8
```



### SDL_BUTTON_X1

```lua
global SDL_BUTTON_X1: uint8
```



### SDL_BUTTON_X2

```lua
global SDL_BUTTON_X2: uint8
```



### SDL_BUTTON_LMASK

```lua
global SDL_BUTTON_LMASK: uint8
```



### SDL_BUTTON_MMASK

```lua
global SDL_BUTTON_MMASK: uint8
```



### SDL_BUTTON_RMASK

```lua
global SDL_BUTTON_RMASK: uint8
```



### SDL_BUTTON_X1MASK

```lua
global SDL_BUTTON_X1MASK: uint8
```



### SDL_BUTTON_X2MASK

```lua
global SDL_BUTTON_X2MASK: uint8
```



### SDL_JOYSTICK_AXIS_MAX

```lua
global SDL_JOYSTICK_AXIS_MAX: cint
```



### SDL_JOYSTICK_AXIS_MIN

```lua
global SDL_JOYSTICK_AXIS_MIN: cint
```



### SDL_HAT_CENTERED

```lua
global SDL_HAT_CENTERED: uint8
```



### SDL_HAT_UP

```lua
global SDL_HAT_UP: uint8
```



### SDL_HAT_RIGHT

```lua
global SDL_HAT_RIGHT: uint8
```



### SDL_HAT_DOWN

```lua
global SDL_HAT_DOWN: uint8
```



### SDL_HAT_LEFT

```lua
global SDL_HAT_LEFT: uint8
```



### SDL_HAT_RIGHTUP

```lua
global SDL_HAT_RIGHTUP: uint8
```



### SDL_HAT_RIGHTDOWN

```lua
global SDL_HAT_RIGHTDOWN: uint8
```



### SDL_HAT_LEFTUP

```lua
global SDL_HAT_LEFTUP: uint8
```



### SDL_HAT_LEFTDOWN

```lua
global SDL_HAT_LEFTDOWN: uint8
```



### SDL_STANDARD_GRAVITY

```lua
global SDL_STANDARD_GRAVITY: float32
```



### SDL_TOUCH_MOUSEID

```lua
global SDL_TOUCH_MOUSEID: uint32
```



### SDL_MOUSE_TOUCHID

```lua
global SDL_MOUSE_TOUCHID: int64
```



### SDL_RELEASED

```lua
global SDL_RELEASED: int8
```



### SDL_PRESSED

```lua
global SDL_PRESSED: int8
```



### SDL_TEXTEDITINGEVENT_TEXT_SIZE

```lua
global SDL_TEXTEDITINGEVENT_TEXT_SIZE: cint
```



### SDL_TEXTINPUTEVENT_TEXT_SIZE

```lua
global SDL_TEXTINPUTEVENT_TEXT_SIZE: cint
```



### SDL_QUERY

```lua
global SDL_QUERY: cint
```



### SDL_IGNORE

```lua
global SDL_IGNORE: cint
```



### SDL_DISABLE

```lua
global SDL_DISABLE: cint
```



### SDL_ENABLE

```lua
global SDL_ENABLE: cint
```



### SDL_HAPTIC_CONSTANT

```lua
global SDL_HAPTIC_CONSTANT: uint32
```



### SDL_HAPTIC_SINE

```lua
global SDL_HAPTIC_SINE: uint32
```



### SDL_HAPTIC_LEFTRIGHT

```lua
global SDL_HAPTIC_LEFTRIGHT: uint32
```



### SDL_HAPTIC_TRIANGLE

```lua
global SDL_HAPTIC_TRIANGLE: uint32
```



### SDL_HAPTIC_SAWTOOTHUP

```lua
global SDL_HAPTIC_SAWTOOTHUP: uint32
```



### SDL_HAPTIC_SAWTOOTHDOWN

```lua
global SDL_HAPTIC_SAWTOOTHDOWN: uint32
```



### SDL_HAPTIC_RAMP

```lua
global SDL_HAPTIC_RAMP: uint32
```



### SDL_HAPTIC_SPRING

```lua
global SDL_HAPTIC_SPRING: uint32
```



### SDL_HAPTIC_DAMPER

```lua
global SDL_HAPTIC_DAMPER: uint32
```



### SDL_HAPTIC_INERTIA

```lua
global SDL_HAPTIC_INERTIA: uint32
```



### SDL_HAPTIC_FRICTION

```lua
global SDL_HAPTIC_FRICTION: uint32
```



### SDL_HAPTIC_CUSTOM

```lua
global SDL_HAPTIC_CUSTOM: uint32
```



### SDL_HAPTIC_GAIN

```lua
global SDL_HAPTIC_GAIN: uint32
```



### SDL_HAPTIC_AUTOCENTER

```lua
global SDL_HAPTIC_AUTOCENTER: uint32
```



### SDL_HAPTIC_STATUS

```lua
global SDL_HAPTIC_STATUS: uint32
```



### SDL_HAPTIC_PAUSE

```lua
global SDL_HAPTIC_PAUSE: uint32
```



### SDL_HAPTIC_POLAR

```lua
global SDL_HAPTIC_POLAR: uint32
```



### SDL_HAPTIC_CARTESIAN

```lua
global SDL_HAPTIC_CARTESIAN: uint32
```



### SDL_HAPTIC_SPHERICAL

```lua
global SDL_HAPTIC_SPHERICAL: uint32
```



### SDL_HAPTIC_STEERING_AXIS

```lua
global SDL_HAPTIC_STEERING_AXIS: uint32
```



### SDL_HAPTIC_INFINITY

```lua
global SDL_HAPTIC_INFINITY: uint32
```



### SDL_HINT_FRAMEBUFFER_ACCELERATION

```lua
global SDL_HINT_FRAMEBUFFER_ACCELERATION: cstring
```



### SDL_HINT_RENDER_DRIVER

```lua
global SDL_HINT_RENDER_DRIVER: cstring
```



### SDL_HINT_RENDER_OPENGL_SHADERS

```lua
global SDL_HINT_RENDER_OPENGL_SHADERS: cstring
```



### SDL_HINT_RENDER_DIRECT3D_THREADSAFE

```lua
global SDL_HINT_RENDER_DIRECT3D_THREADSAFE: cstring
```



### SDL_HINT_RENDER_DIRECT3D11_DEBUG

```lua
global SDL_HINT_RENDER_DIRECT3D11_DEBUG: cstring
```



### SDL_HINT_RENDER_LOGICAL_SIZE_MODE

```lua
global SDL_HINT_RENDER_LOGICAL_SIZE_MODE: cstring
```



### SDL_HINT_RENDER_SCALE_QUALITY

```lua
global SDL_HINT_RENDER_SCALE_QUALITY: cstring
```



### SDL_HINT_RENDER_VSYNC

```lua
global SDL_HINT_RENDER_VSYNC: cstring
```



### SDL_HINT_VIDEO_ALLOW_SCREENSAVER

```lua
global SDL_HINT_VIDEO_ALLOW_SCREENSAVER: cstring
```



### SDL_HINT_VIDEO_EXTERNAL_CONTEXT

```lua
global SDL_HINT_VIDEO_EXTERNAL_CONTEXT: cstring
```



### SDL_HINT_VIDEO_X11_XVIDMODE

```lua
global SDL_HINT_VIDEO_X11_XVIDMODE: cstring
```



### SDL_HINT_VIDEO_X11_XINERAMA

```lua
global SDL_HINT_VIDEO_X11_XINERAMA: cstring
```



### SDL_HINT_VIDEO_X11_XRANDR

```lua
global SDL_HINT_VIDEO_X11_XRANDR: cstring
```



### SDL_HINT_VIDEO_X11_WINDOW_VISUALID

```lua
global SDL_HINT_VIDEO_X11_WINDOW_VISUALID: cstring
```



### SDL_HINT_VIDEO_X11_NET_WM_PING

```lua
global SDL_HINT_VIDEO_X11_NET_WM_PING: cstring
```



### SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR

```lua
global SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR: cstring
```



### SDL_HINT_VIDEO_X11_FORCE_EGL

```lua
global SDL_HINT_VIDEO_X11_FORCE_EGL: cstring
```



### SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN

```lua
global SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN: cstring
```



### SDL_HINT_WINDOWS_INTRESOURCE_ICON

```lua
global SDL_HINT_WINDOWS_INTRESOURCE_ICON: cstring
```



### SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL

```lua
global SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL: cstring
```



### SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP

```lua
global SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP: cstring
```



### SDL_HINT_GRAB_KEYBOARD

```lua
global SDL_HINT_GRAB_KEYBOARD: cstring
```



### SDL_HINT_MOUSE_DOUBLE_CLICK_TIME

```lua
global SDL_HINT_MOUSE_DOUBLE_CLICK_TIME: cstring
```



### SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS

```lua
global SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS: cstring
```



### SDL_HINT_MOUSE_NORMAL_SPEED_SCALE

```lua
global SDL_HINT_MOUSE_NORMAL_SPEED_SCALE: cstring
```



### SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE

```lua
global SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE: cstring
```



### SDL_HINT_MOUSE_RELATIVE_SCALING

```lua
global SDL_HINT_MOUSE_RELATIVE_SCALING: cstring
```



### SDL_HINT_MOUSE_RELATIVE_MODE_WARP

```lua
global SDL_HINT_MOUSE_RELATIVE_MODE_WARP: cstring
```



### SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH

```lua
global SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH: cstring
```



### SDL_HINT_TOUCH_MOUSE_EVENTS

```lua
global SDL_HINT_TOUCH_MOUSE_EVENTS: cstring
```



### SDL_HINT_MOUSE_TOUCH_EVENTS

```lua
global SDL_HINT_MOUSE_TOUCH_EVENTS: cstring
```



### SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS

```lua
global SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS: cstring
```



### SDL_HINT_IDLE_TIMER_DISABLED

```lua
global SDL_HINT_IDLE_TIMER_DISABLED: cstring
```



### SDL_HINT_ORIENTATIONS

```lua
global SDL_HINT_ORIENTATIONS: cstring
```



### SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS

```lua
global SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS: cstring
```



### SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION

```lua
global SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION: cstring
```



### SDL_HINT_IOS_HIDE_HOME_INDICATOR

```lua
global SDL_HINT_IOS_HIDE_HOME_INDICATOR: cstring
```



### SDL_HINT_ACCELEROMETER_AS_JOYSTICK

```lua
global SDL_HINT_ACCELEROMETER_AS_JOYSTICK: cstring
```



### SDL_HINT_TV_REMOTE_AS_JOYSTICK

```lua
global SDL_HINT_TV_REMOTE_AS_JOYSTICK: cstring
```



### SDL_HINT_XINPUT_ENABLED

```lua
global SDL_HINT_XINPUT_ENABLED: cstring
```



### SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING

```lua
global SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING: cstring
```



### SDL_HINT_GAMECONTROLLERTYPE

```lua
global SDL_HINT_GAMECONTROLLERTYPE: cstring
```



### SDL_HINT_GAMECONTROLLERCONFIG

```lua
global SDL_HINT_GAMECONTROLLERCONFIG: cstring
```



### SDL_HINT_GAMECONTROLLERCONFIG_FILE

```lua
global SDL_HINT_GAMECONTROLLERCONFIG_FILE: cstring
```



### SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES

```lua
global SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES: cstring
```



### SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT

```lua
global SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT: cstring
```



### SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS

```lua
global SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS: cstring
```



### SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS

```lua
global SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI

```lua
global SDL_HINT_JOYSTICK_HIDAPI: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS4

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS4: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS5

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS5: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_STEAM

```lua
global SDL_HINT_JOYSTICK_HIDAPI_STEAM: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_SWITCH

```lua
global SDL_HINT_JOYSTICK_HIDAPI_SWITCH: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_CORRELATE_XINPUT

```lua
global SDL_HINT_JOYSTICK_HIDAPI_CORRELATE_XINPUT: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE: cstring
```



### SDL_HINT_ENABLE_STEAM_CONTROLLERS

```lua
global SDL_HINT_ENABLE_STEAM_CONTROLLERS: cstring
```



### SDL_HINT_JOYSTICK_RAWINPUT

```lua
global SDL_HINT_JOYSTICK_RAWINPUT: cstring
```



### SDL_HINT_JOYSTICK_THREAD

```lua
global SDL_HINT_JOYSTICK_THREAD: cstring
```



### SDL_HINT_LINUX_JOYSTICK_DEADZONES

```lua
global SDL_HINT_LINUX_JOYSTICK_DEADZONES: cstring
```



### SDL_HINT_ALLOW_TOPMOST

```lua
global SDL_HINT_ALLOW_TOPMOST: cstring
```



### SDL_HINT_TIMER_RESOLUTION

```lua
global SDL_HINT_TIMER_RESOLUTION: cstring
```



### SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION

```lua
global SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION: cstring
```



### SDL_HINT_QTWAYLAND_WINDOW_FLAGS

```lua
global SDL_HINT_QTWAYLAND_WINDOW_FLAGS: cstring
```



### SDL_HINT_THREAD_STACK_SIZE

```lua
global SDL_HINT_THREAD_STACK_SIZE: cstring
```



### SDL_HINT_THREAD_PRIORITY_POLICY

```lua
global SDL_HINT_THREAD_PRIORITY_POLICY: cstring
```



### SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL

```lua
global SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL: cstring
```



### SDL_HINT_VIDEO_HIGHDPI_DISABLED

```lua
global SDL_HINT_VIDEO_HIGHDPI_DISABLED: cstring
```



### SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK

```lua
global SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK: cstring
```



### SDL_HINT_VIDEO_WIN_D3DCOMPILER

```lua
global SDL_HINT_VIDEO_WIN_D3DCOMPILER: cstring
```



### SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT

```lua
global SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT: cstring
```



### SDL_HINT_WINRT_PRIVACY_POLICY_URL

```lua
global SDL_HINT_WINRT_PRIVACY_POLICY_URL: cstring
```



### SDL_HINT_WINRT_PRIVACY_POLICY_LABEL

```lua
global SDL_HINT_WINRT_PRIVACY_POLICY_LABEL: cstring
```



### SDL_HINT_WINRT_HANDLE_BACK_BUTTON

```lua
global SDL_HINT_WINRT_HANDLE_BACK_BUTTON: cstring
```



### SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES

```lua
global SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES: cstring
```



### SDL_HINT_MAC_BACKGROUND_APP

```lua
global SDL_HINT_MAC_BACKGROUND_APP: cstring
```



### SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION

```lua
global SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION: cstring
```



### SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION

```lua
global SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION: cstring
```



### SDL_HINT_IME_INTERNAL_EDITING

```lua
global SDL_HINT_IME_INTERNAL_EDITING: cstring
```



### SDL_HINT_ANDROID_TRAP_BACK_BUTTON

```lua
global SDL_HINT_ANDROID_TRAP_BACK_BUTTON: cstring
```



### SDL_HINT_ANDROID_BLOCK_ON_PAUSE

```lua
global SDL_HINT_ANDROID_BLOCK_ON_PAUSE: cstring
```



### SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO

```lua
global SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO: cstring
```



### SDL_HINT_RETURN_KEY_HIDES_IME

```lua
global SDL_HINT_RETURN_KEY_HIDES_IME: cstring
```



### SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT

```lua
global SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT: cstring
```



### SDL_HINT_EMSCRIPTEN_ASYNCIFY

```lua
global SDL_HINT_EMSCRIPTEN_ASYNCIFY: cstring
```



### SDL_HINT_NO_SIGNAL_HANDLERS

```lua
global SDL_HINT_NO_SIGNAL_HANDLERS: cstring
```



### SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4

```lua
global SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4: cstring
```



### SDL_HINT_BMP_SAVE_LEGACY_FORMAT

```lua
global SDL_HINT_BMP_SAVE_LEGACY_FORMAT: cstring
```



### SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING

```lua
global SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING: cstring
```



### SDL_HINT_RPI_VIDEO_LAYER

```lua
global SDL_HINT_RPI_VIDEO_LAYER: cstring
```



### SDL_HINT_VIDEO_DOUBLE_BUFFER

```lua
global SDL_HINT_VIDEO_DOUBLE_BUFFER: cstring
```



### SDL_HINT_OPENGL_ES_DRIVER

```lua
global SDL_HINT_OPENGL_ES_DRIVER: cstring
```



### SDL_HINT_AUDIO_RESAMPLING_MODE

```lua
global SDL_HINT_AUDIO_RESAMPLING_MODE: cstring
```



### SDL_HINT_AUDIO_CATEGORY

```lua
global SDL_HINT_AUDIO_CATEGORY: cstring
```



### SDL_HINT_RENDER_BATCHING

```lua
global SDL_HINT_RENDER_BATCHING: cstring
```



### SDL_HINT_AUTO_UPDATE_JOYSTICKS

```lua
global SDL_HINT_AUTO_UPDATE_JOYSTICKS: cstring
```



### SDL_HINT_AUTO_UPDATE_SENSORS

```lua
global SDL_HINT_AUTO_UPDATE_SENSORS: cstring
```



### SDL_HINT_EVENT_LOGGING

```lua
global SDL_HINT_EVENT_LOGGING: cstring
```



### SDL_HINT_WAVE_RIFF_CHUNK_SIZE

```lua
global SDL_HINT_WAVE_RIFF_CHUNK_SIZE: cstring
```



### SDL_HINT_WAVE_TRUNCATION

```lua
global SDL_HINT_WAVE_TRUNCATION: cstring
```



### SDL_HINT_WAVE_FACT_CHUNK

```lua
global SDL_HINT_WAVE_FACT_CHUNK: cstring
```



### SDL_HINT_DISPLAY_USABLE_BOUNDS

```lua
global SDL_HINT_DISPLAY_USABLE_BOUNDS: cstring
```



### SDL_HINT_AUDIO_DEVICE_APP_NAME

```lua
global SDL_HINT_AUDIO_DEVICE_APP_NAME: cstring
```



### SDL_HINT_AUDIO_DEVICE_STREAM_NAME

```lua
global SDL_HINT_AUDIO_DEVICE_STREAM_NAME: cstring
```



### SDL_HINT_PREFERRED_LOCALES

```lua
global SDL_HINT_PREFERRED_LOCALES: cstring
```



### SDL_MAX_LOG_MESSAGE

```lua
global SDL_MAX_LOG_MESSAGE: cint
```



### SDL_NONSHAPEABLE_WINDOW

```lua
global SDL_NONSHAPEABLE_WINDOW: cint
```



### SDL_INVALID_SHAPE_ARGUMENT

```lua
global SDL_INVALID_SHAPE_ARGUMENT: cint
```



### SDL_WINDOW_LACKS_SHAPE

```lua
global SDL_WINDOW_LACKS_SHAPE: cint
```



### SDL_MAJOR_VERSION

```lua
global SDL_MAJOR_VERSION: cint
```



### SDL_MINOR_VERSION

```lua
global SDL_MINOR_VERSION: cint
```



### SDL_PATCHLEVEL

```lua
global SDL_PATCHLEVEL: cint
```



### SDL_COMPILEDVERSION

```lua
global SDL_COMPILEDVERSION: cint
```



### SDL_INIT_TIMER

```lua
global SDL_INIT_TIMER: uint32
```



### SDL_INIT_AUDIO

```lua
global SDL_INIT_AUDIO: uint32
```



### SDL_INIT_VIDEO

```lua
global SDL_INIT_VIDEO: uint32
```



### SDL_INIT_JOYSTICK

```lua
global SDL_INIT_JOYSTICK: uint32
```



### SDL_INIT_HAPTIC

```lua
global SDL_INIT_HAPTIC: uint32
```



### SDL_INIT_GAMECONTROLLER

```lua
global SDL_INIT_GAMECONTROLLER: uint32
```



### SDL_INIT_EVENTS

```lua
global SDL_INIT_EVENTS: uint32
```



### SDL_INIT_SENSOR

```lua
global SDL_INIT_SENSOR: uint32
```



### SDL_INIT_NOPARACHUTE

```lua
global SDL_INIT_NOPARACHUTE: uint32
```



### SDL_INIT_EVERYTHING

```lua
global SDL_INIT_EVERYTHING: uint32
```



### SDL_BlitSurface

```lua
global function SDL_BlitSurface(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```

Defined in C macros

### SDL_BlitScaled

```lua
global function SDL_BlitScaled(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
```



### SDL_TriggerBreakpoint

```lua
global function SDL_TriggerBreakpoint()
```



### SDL_CompilerBarrier

```lua
global function SDL_CompilerBarrier()
```



### SDL_MemoryBarrierRelease

```lua
global function SDL_MemoryBarrierRelease()
```



### SDL_MemoryBarrierAcquire

```lua
global function SDL_MemoryBarrierAcquire()
```



### SDL_AtomicIncRef

```lua
global function SDL_AtomicIncRef(a: *SDL_atomic_t): cint
```



### SDL_AtomicDecRef

```lua
global function SDL_AtomicDecRef(a: *SDL_atomic_t): cint
```



### SDL_OutOfMemory

```lua
global function SDL_OutOfMemory(): cint
```



### SDL_Unsupported

```lua
global function SDL_Unsupported(): cint
```



### SDL_InvalidParamError

```lua
global function SDL_InvalidParamError(param: cstring): cint
```



### SDL_SwapLE16

```lua
global function SDL_SwapLE16(x: int16): int16
```



### SDL_SwapLE32

```lua
global function SDL_SwapLE32(x: int32): int32
```



### SDL_SwapLE64

```lua
global function SDL_SwapLE64(x: int64): int64
```



### SDL_SwapFloatLE

```lua
global function SDL_SwapFloatLE(x: float32): float32
```



### SDL_SwapBE16

```lua
global function SDL_SwapBE16(x: int16): int16
```



### SDL_SwapBE32

```lua
global function SDL_SwapBE32(x: int32): int32
```



### SDL_SwapBE64

```lua
global function SDL_SwapBE64(x: int64): int64
```



### SDL_SwapFloatBE

```lua
global function SDL_SwapFloatBE(x: float32): float32
```



### SDL_LoadWAV

```lua
global function SDL_LoadWAV(file: cstring, spec: *SDL_AudioSpec, audio_buf: **uint8, audio_len: *uint32): *SDL_AudioSpec
```



### SDL_LoadBMP

```lua
global function SDL_LoadBMP(file: cstring): *SDL_Surface
```



### SDL_SaveBMP

```lua
global function SDL_SaveBMP(surface: *SDL_Surface, file: cstring): cint
```



### SDL_GameControllerAddMappingsFromFile

```lua
global function SDL_GameControllerAddMappingsFromFile(file: cstring): cint
```



### SDL_QuitRequested

```lua
global function SDL_QuitRequested(): cint
```



### SDL_GetEventState

```lua
global function SDL_GetEventState(type: uint32): uint8
```



### SDL_AUDIO_BITSIZE

```lua
global function SDL_AUDIO_BITSIZE(x: uint16): uint16
```



### SDL_AUDIO_ISFLOAT

```lua
global function SDL_AUDIO_ISFLOAT(x: uint16): uint16
```



### SDL_AUDIO_ISBIGENDIAN

```lua
global function SDL_AUDIO_ISBIGENDIAN(x: uint16): uint16
```



### SDL_AUDIO_ISSIGNED

```lua
global function SDL_AUDIO_ISSIGNED(x: uint16): uint16
```



### SDL_AUDIO_ISINT

```lua
global function SDL_AUDIO_ISINT(x: uint16): uint16
```



### SDL_AUDIO_ISLITTLEENDIAN

```lua
global function SDL_AUDIO_ISLITTLEENDIAN(x: uint16): uint16
```



### SDL_AUDIO_ISUNSIGNED

```lua
global function SDL_AUDIO_ISUNSIGNED(x: uint16): uint16
```



### SDL_PIXELFLAG

```lua
global function SDL_PIXELFLAG(x: cint): cint
```



### SDL_PIXELTYPE

```lua
global function SDL_PIXELTYPE(x: cint): cint
```



### SDL_PIXELORDER

```lua
global function SDL_PIXELORDER(x: cint): cint
```



### SDL_PIXELLAYOUT

```lua
global function SDL_PIXELLAYOUT(x: cint): cint
```



### SDL_BITSPERPIXEL

```lua
global function SDL_BITSPERPIXEL(x: cint): cint
```



### SDL_BYTESPERPIXEL

```lua
global function SDL_BYTESPERPIXEL(x: cint): cint
```



### SDL_ISPIXELFORMAT_INDEXED

```lua
global function SDL_ISPIXELFORMAT_INDEXED(format: SDL_PixelFormatEnum): SDL_bool
```



### SDL_ISPIXELFORMAT_PACKED

```lua
global function SDL_ISPIXELFORMAT_PACKED(format: SDL_PixelFormatEnum): SDL_bool
```



### SDL_ISPIXELFORMAT_ARRAY

```lua
global function SDL_ISPIXELFORMAT_ARRAY(format: SDL_PixelFormatEnum): SDL_bool
```



### SDL_ISPIXELFORMAT_ALPHA

```lua
global function SDL_ISPIXELFORMAT_ALPHA(format: SDL_PixelFormatEnum): SDL_bool
```



### SDL_ISPIXELFORMAT_FOURCC

```lua
global function SDL_ISPIXELFORMAT_FOURCC(format: SDL_PixelFormatEnum): SDL_bool
```



### SDL_WINDOWPOS_ISUNDEFINED

```lua
global function SDL_WINDOWPOS_ISUNDEFINED(x: uint32): SDL_bool
```



### SDL_WINDOWPOS_ISCENTERED

```lua
global function SDL_WINDOWPOS_ISCENTERED(x: uint32): SDL_bool
```



### SDL_MUSTLOCK

```lua
global function SDL_MUSTLOCK(s: *SDL_Surface): SDL_bool
```



### SDL_SCANCODE_TO_KEYCODE

```lua
global function SDL_SCANCODE_TO_KEYCODE(x: SDL_Scancode): SDL_KeyCode
```



### SDL_SHAPEMODEALPHA

```lua
global function SDL_SHAPEMODEALPHA(mode: WindowShapeMode): SDL_bool
```



### SDL_VERSION

```lua
global function SDL_VERSION(x: *SDL_version)
```



### SDL_VERSION_ATLEAST

```lua
global function SDL_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



---
