### Summary
* [SDL_GetPlatform](#sdl_getplatform)
* [FILE](#file)
* [SDL_bool](#sdl_bool)
* [SDL_malloc](#sdl_malloc)
* [SDL_calloc](#sdl_calloc)
* [SDL_realloc](#sdl_realloc)
* [SDL_free](#sdl_free)
* [SDL_malloc_func](#sdl_malloc_func)
* [SDL_calloc_func](#sdl_calloc_func)
* [SDL_realloc_func](#sdl_realloc_func)
* [SDL_free_func](#sdl_free_func)
* [SDL_GetOriginalMemoryFunctions](#sdl_getoriginalmemoryfunctions)
* [SDL_GetMemoryFunctions](#sdl_getmemoryfunctions)
* [SDL_SetMemoryFunctions](#sdl_setmemoryfunctions)
* [SDL_GetNumAllocations](#sdl_getnumallocations)
* [SDL_getenv](#sdl_getenv)
* [SDL_setenv](#sdl_setenv)
* [SDL_qsort](#sdl_qsort)
* [SDL_bsearch](#sdl_bsearch)
* [SDL_abs](#sdl_abs)
* [SDL_isalpha](#sdl_isalpha)
* [SDL_isalnum](#sdl_isalnum)
* [SDL_isblank](#sdl_isblank)
* [SDL_iscntrl](#sdl_iscntrl)
* [SDL_isdigit](#sdl_isdigit)
* [SDL_isxdigit](#sdl_isxdigit)
* [SDL_ispunct](#sdl_ispunct)
* [SDL_isspace](#sdl_isspace)
* [SDL_isupper](#sdl_isupper)
* [SDL_islower](#sdl_islower)
* [SDL_isprint](#sdl_isprint)
* [SDL_isgraph](#sdl_isgraph)
* [SDL_toupper](#sdl_toupper)
* [SDL_tolower](#sdl_tolower)
* [SDL_crc16](#sdl_crc16)
* [SDL_crc32](#sdl_crc32)
* [SDL_memset](#sdl_memset)
* [SDL_memset4](#sdl_memset4)
* [SDL_memcpy](#sdl_memcpy)
* [SDL_memmove](#sdl_memmove)
* [SDL_memcmp](#sdl_memcmp)
* [SDL_wcslen](#sdl_wcslen)
* [SDL_wcslcpy](#sdl_wcslcpy)
* [SDL_wcslcat](#sdl_wcslcat)
* [SDL_wcsdup](#sdl_wcsdup)
* [SDL_wcsstr](#sdl_wcsstr)
* [SDL_wcscmp](#sdl_wcscmp)
* [SDL_wcsncmp](#sdl_wcsncmp)
* [SDL_wcscasecmp](#sdl_wcscasecmp)
* [SDL_wcsncasecmp](#sdl_wcsncasecmp)
* [SDL_strlen](#sdl_strlen)
* [SDL_strlcpy](#sdl_strlcpy)
* [SDL_utf8strlcpy](#sdl_utf8strlcpy)
* [SDL_strlcat](#sdl_strlcat)
* [SDL_strdup](#sdl_strdup)
* [SDL_strrev](#sdl_strrev)
* [SDL_strupr](#sdl_strupr)
* [SDL_strlwr](#sdl_strlwr)
* [SDL_strchr](#sdl_strchr)
* [SDL_strrchr](#sdl_strrchr)
* [SDL_strstr](#sdl_strstr)
* [SDL_strcasestr](#sdl_strcasestr)
* [SDL_strtokr](#sdl_strtokr)
* [SDL_utf8strlen](#sdl_utf8strlen)
* [SDL_utf8strnlen](#sdl_utf8strnlen)
* [SDL_itoa](#sdl_itoa)
* [SDL_uitoa](#sdl_uitoa)
* [SDL_ltoa](#sdl_ltoa)
* [SDL_ultoa](#sdl_ultoa)
* [SDL_lltoa](#sdl_lltoa)
* [SDL_ulltoa](#sdl_ulltoa)
* [SDL_atoi](#sdl_atoi)
* [SDL_atof](#sdl_atof)
* [SDL_strtol](#sdl_strtol)
* [SDL_strtoul](#sdl_strtoul)
* [SDL_strtoll](#sdl_strtoll)
* [SDL_strtoull](#sdl_strtoull)
* [SDL_strtod](#sdl_strtod)
* [SDL_strcmp](#sdl_strcmp)
* [SDL_strncmp](#sdl_strncmp)
* [SDL_strcasecmp](#sdl_strcasecmp)
* [SDL_strncasecmp](#sdl_strncasecmp)
* [SDL_sscanf](#sdl_sscanf)
* [SDL_vsscanf](#sdl_vsscanf)
* [SDL_snprintf](#sdl_snprintf)
* [SDL_vsnprintf](#sdl_vsnprintf)
* [SDL_asprintf](#sdl_asprintf)
* [SDL_vasprintf](#sdl_vasprintf)
* [SDL_acos](#sdl_acos)
* [SDL_acosf](#sdl_acosf)
* [SDL_asin](#sdl_asin)
* [SDL_asinf](#sdl_asinf)
* [SDL_atan](#sdl_atan)
* [SDL_atanf](#sdl_atanf)
* [SDL_atan2](#sdl_atan2)
* [SDL_atan2f](#sdl_atan2f)
* [SDL_ceil](#sdl_ceil)
* [SDL_ceilf](#sdl_ceilf)
* [SDL_copysign](#sdl_copysign)
* [SDL_copysignf](#sdl_copysignf)
* [SDL_cos](#sdl_cos)
* [SDL_cosf](#sdl_cosf)
* [SDL_exp](#sdl_exp)
* [SDL_expf](#sdl_expf)
* [SDL_fabs](#sdl_fabs)
* [SDL_fabsf](#sdl_fabsf)
* [SDL_floor](#sdl_floor)
* [SDL_floorf](#sdl_floorf)
* [SDL_trunc](#sdl_trunc)
* [SDL_truncf](#sdl_truncf)
* [SDL_fmod](#sdl_fmod)
* [SDL_fmodf](#sdl_fmodf)
* [SDL_log](#sdl_log)
* [SDL_logf](#sdl_logf)
* [SDL_log10](#sdl_log10)
* [SDL_log10f](#sdl_log10f)
* [SDL_pow](#sdl_pow)
* [SDL_powf](#sdl_powf)
* [SDL_round](#sdl_round)
* [SDL_roundf](#sdl_roundf)
* [SDL_lround](#sdl_lround)
* [SDL_lroundf](#sdl_lroundf)
* [SDL_scalbn](#sdl_scalbn)
* [SDL_scalbnf](#sdl_scalbnf)
* [SDL_sin](#sdl_sin)
* [SDL_sinf](#sdl_sinf)
* [SDL_sqrt](#sdl_sqrt)
* [SDL_sqrtf](#sdl_sqrtf)
* [SDL_tan](#sdl_tan)
* [SDL_tanf](#sdl_tanf)
* [_SDL_iconv_t](#_sdl_iconv_t)
* [SDL_iconv_t](#sdl_iconv_t)
* [SDL_iconv_open](#sdl_iconv_open)
* [SDL_iconv_close](#sdl_iconv_close)
* [SDL_iconv](#sdl_iconv)
* [SDL_iconv_string](#sdl_iconv_string)
* [SDL_memcpy4](#sdl_memcpy4)
* [SDL_size_mul_overflow](#sdl_size_mul_overflow)
* [SDL_size_add_overflow](#sdl_size_add_overflow)
* [SDL_main_func](#sdl_main_func)
* [SDL_main](#sdl_main)
* [SDL_SetMainReady](#sdl_setmainready)
* [SDL_AssertState](#sdl_assertstate)
* [SDL_AssertData](#sdl_assertdata)
* [SDL_ReportAssertion](#sdl_reportassertion)
* [SDL_AssertionHandler](#sdl_assertionhandler)
* [SDL_SetAssertionHandler](#sdl_setassertionhandler)
* [SDL_GetDefaultAssertionHandler](#sdl_getdefaultassertionhandler)
* [SDL_GetAssertionHandler](#sdl_getassertionhandler)
* [SDL_GetAssertionReport](#sdl_getassertionreport)
* [SDL_ResetAssertionReport](#sdl_resetassertionreport)
* [SDL_AtomicTryLock](#sdl_atomictrylock)
* [SDL_AtomicLock](#sdl_atomiclock)
* [SDL_AtomicUnlock](#sdl_atomicunlock)
* [SDL_MemoryBarrierReleaseFunction](#sdl_memorybarrierreleasefunction)
* [SDL_MemoryBarrierAcquireFunction](#sdl_memorybarrieracquirefunction)
* [SDL_atomic_t](#sdl_atomic_t)
* [SDL_AtomicCAS](#sdl_atomiccas)
* [SDL_AtomicSet](#sdl_atomicset)
* [SDL_AtomicGet](#sdl_atomicget)
* [SDL_AtomicAdd](#sdl_atomicadd)
* [SDL_AtomicCASPtr](#sdl_atomiccasptr)
* [SDL_AtomicSetPtr](#sdl_atomicsetptr)
* [SDL_AtomicGetPtr](#sdl_atomicgetptr)
* [SDL_SetError](#sdl_seterror)
* [SDL_GetError](#sdl_geterror)
* [SDL_GetErrorMsg](#sdl_geterrormsg)
* [SDL_ClearError](#sdl_clearerror)
* [SDL_errorcode](#sdl_errorcode)
* [SDL_Error](#sdl_error)
* [SDL_SwapFloat](#sdl_swapfloat)
* [SDL_mutex](#sdl_mutex)
* [SDL_CreateMutex](#sdl_createmutex)
* [SDL_LockMutex](#sdl_lockmutex)
* [SDL_TryLockMutex](#sdl_trylockmutex)
* [SDL_UnlockMutex](#sdl_unlockmutex)
* [SDL_DestroyMutex](#sdl_destroymutex)
* [SDL_semaphore](#sdl_semaphore)
* [SDL_sem](#sdl_sem)
* [SDL_CreateSemaphore](#sdl_createsemaphore)
* [SDL_DestroySemaphore](#sdl_destroysemaphore)
* [SDL_SemWait](#sdl_semwait)
* [SDL_SemTryWait](#sdl_semtrywait)
* [SDL_SemWaitTimeout](#sdl_semwaittimeout)
* [SDL_SemPost](#sdl_sempost)
* [SDL_SemValue](#sdl_semvalue)
* [SDL_cond](#sdl_cond)
* [SDL_CreateCond](#sdl_createcond)
* [SDL_DestroyCond](#sdl_destroycond)
* [SDL_CondSignal](#sdl_condsignal)
* [SDL_CondBroadcast](#sdl_condbroadcast)
* [SDL_CondWait](#sdl_condwait)
* [SDL_CondWaitTimeout](#sdl_condwaittimeout)
* [SDL_Thread](#sdl_thread)
* [SDL_ThreadPriority](#sdl_threadpriority)
* [SDL_ThreadFunction](#sdl_threadfunction)
* [SDL_CreateThread](#sdl_createthread)
* [SDL_CreateThreadWithStackSize](#sdl_createthreadwithstacksize)
* [SDL_GetThreadName](#sdl_getthreadname)
* [SDL_ThreadID](#sdl_threadid)
* [SDL_GetThreadID](#sdl_getthreadid)
* [SDL_SetThreadPriority](#sdl_setthreadpriority)
* [SDL_WaitThread](#sdl_waitthread)
* [SDL_DetachThread](#sdl_detachthread)
* [SDL_TLSCreate](#sdl_tlscreate)
* [SDL_TLSGet](#sdl_tlsget)
* [SDL_TLSSet](#sdl_tlsset)
* [SDL_TLSCleanup](#sdl_tlscleanup)
* [SDL_RWops](#sdl_rwops)
* [SDL_RWFromFile](#sdl_rwfromfile)
* [SDL_RWFromFP](#sdl_rwfromfp)
* [SDL_RWFromMem](#sdl_rwfrommem)
* [SDL_RWFromConstMem](#sdl_rwfromconstmem)
* [SDL_AllocRW](#sdl_allocrw)
* [SDL_FreeRW](#sdl_freerw)
* [SDL_RWsize](#sdl_rwsize)
* [SDL_RWseek](#sdl_rwseek)
* [SDL_RWtell](#sdl_rwtell)
* [SDL_RWread](#sdl_rwread)
* [SDL_RWwrite](#sdl_rwwrite)
* [SDL_RWclose](#sdl_rwclose)
* [SDL_LoadFile_RW](#sdl_loadfile_rw)
* [SDL_LoadFile](#sdl_loadfile)
* [SDL_ReadU8](#sdl_readu8)
* [SDL_ReadLE16](#sdl_readle16)
* [SDL_ReadBE16](#sdl_readbe16)
* [SDL_ReadLE32](#sdl_readle32)
* [SDL_ReadBE32](#sdl_readbe32)
* [SDL_ReadLE64](#sdl_readle64)
* [SDL_ReadBE64](#sdl_readbe64)
* [SDL_WriteU8](#sdl_writeu8)
* [SDL_WriteLE16](#sdl_writele16)
* [SDL_WriteBE16](#sdl_writebe16)
* [SDL_WriteLE32](#sdl_writele32)
* [SDL_WriteBE32](#sdl_writebe32)
* [SDL_WriteLE64](#sdl_writele64)
* [SDL_WriteBE64](#sdl_writebe64)
* [SDL_AudioCallback](#sdl_audiocallback)
* [SDL_AudioSpec](#sdl_audiospec)
* [SDL_AudioCVT](#sdl_audiocvt)
* [SDL_AudioFilter](#sdl_audiofilter)
* [SDL_GetNumAudioDrivers](#sdl_getnumaudiodrivers)
* [SDL_GetAudioDriver](#sdl_getaudiodriver)
* [SDL_AudioInit](#sdl_audioinit)
* [SDL_AudioQuit](#sdl_audioquit)
* [SDL_GetCurrentAudioDriver](#sdl_getcurrentaudiodriver)
* [SDL_OpenAudio](#sdl_openaudio)
* [SDL_GetNumAudioDevices](#sdl_getnumaudiodevices)
* [SDL_GetAudioDeviceName](#sdl_getaudiodevicename)
* [SDL_GetAudioDeviceSpec](#sdl_getaudiodevicespec)
* [SDL_GetDefaultAudioInfo](#sdl_getdefaultaudioinfo)
* [SDL_OpenAudioDevice](#sdl_openaudiodevice)
* [SDL_AudioStatus](#sdl_audiostatus)
* [SDL_GetAudioStatus](#sdl_getaudiostatus)
* [SDL_GetAudioDeviceStatus](#sdl_getaudiodevicestatus)
* [SDL_PauseAudio](#sdl_pauseaudio)
* [SDL_PauseAudioDevice](#sdl_pauseaudiodevice)
* [SDL_LoadWAV_RW](#sdl_loadwav_rw)
* [SDL_FreeWAV](#sdl_freewav)
* [SDL_BuildAudioCVT](#sdl_buildaudiocvt)
* [SDL_ConvertAudio](#sdl_convertaudio)
* [SDL_AudioStream](#sdl_audiostream)
* [SDL_NewAudioStream](#sdl_newaudiostream)
* [SDL_AudioStreamPut](#sdl_audiostreamput)
* [SDL_AudioStreamGet](#sdl_audiostreamget)
* [SDL_AudioStreamAvailable](#sdl_audiostreamavailable)
* [SDL_AudioStreamFlush](#sdl_audiostreamflush)
* [SDL_AudioStreamClear](#sdl_audiostreamclear)
* [SDL_FreeAudioStream](#sdl_freeaudiostream)
* [SDL_MixAudio](#sdl_mixaudio)
* [SDL_MixAudioFormat](#sdl_mixaudioformat)
* [SDL_QueueAudio](#sdl_queueaudio)
* [SDL_DequeueAudio](#sdl_dequeueaudio)
* [SDL_GetQueuedAudioSize](#sdl_getqueuedaudiosize)
* [SDL_ClearQueuedAudio](#sdl_clearqueuedaudio)
* [SDL_LockAudio](#sdl_lockaudio)
* [SDL_LockAudioDevice](#sdl_lockaudiodevice)
* [SDL_UnlockAudio](#sdl_unlockaudio)
* [SDL_UnlockAudioDevice](#sdl_unlockaudiodevice)
* [SDL_CloseAudio](#sdl_closeaudio)
* [SDL_CloseAudioDevice](#sdl_closeaudiodevice)
* [SDL_SetClipboardText](#sdl_setclipboardtext)
* [SDL_GetClipboardText](#sdl_getclipboardtext)
* [SDL_HasClipboardText](#sdl_hasclipboardtext)
* [SDL_SetPrimarySelectionText](#sdl_setprimaryselectiontext)
* [SDL_GetPrimarySelectionText](#sdl_getprimaryselectiontext)
* [SDL_HasPrimarySelectionText](#sdl_hasprimaryselectiontext)
* [SDL_GetCPUCount](#sdl_getcpucount)
* [SDL_GetCPUCacheLineSize](#sdl_getcpucachelinesize)
* [SDL_HasRDTSC](#sdl_hasrdtsc)
* [SDL_HasAltiVec](#sdl_hasaltivec)
* [SDL_HasMMX](#sdl_hasmmx)
* [SDL_Has3DNow](#sdl_has3dnow)
* [SDL_HasSSE](#sdl_hassse)
* [SDL_HasSSE2](#sdl_hassse2)
* [SDL_HasSSE3](#sdl_hassse3)
* [SDL_HasSSE41](#sdl_hassse41)
* [SDL_HasSSE42](#sdl_hassse42)
* [SDL_HasAVX](#sdl_hasavx)
* [SDL_HasAVX2](#sdl_hasavx2)
* [SDL_HasAVX512F](#sdl_hasavx512f)
* [SDL_HasARMSIMD](#sdl_hasarmsimd)
* [SDL_HasNEON](#sdl_hasneon)
* [SDL_HasLSX](#sdl_haslsx)
* [SDL_HasLASX](#sdl_haslasx)
* [SDL_GetSystemRAM](#sdl_getsystemram)
* [SDL_SIMDGetAlignment](#sdl_simdgetalignment)
* [SDL_SIMDAlloc](#sdl_simdalloc)
* [SDL_SIMDRealloc](#sdl_simdrealloc)
* [SDL_SIMDFree](#sdl_simdfree)
* [SDL_PixelType](#sdl_pixeltype)
* [SDL_BitmapOrder](#sdl_bitmaporder)
* [SDL_PackedOrder](#sdl_packedorder)
* [SDL_ArrayOrder](#sdl_arrayorder)
* [SDL_PackedLayout](#sdl_packedlayout)
* [SDL_PixelFormatEnum](#sdl_pixelformatenum)
* [SDL_Color](#sdl_color)
* [SDL_Palette](#sdl_palette)
* [SDL_PixelFormat](#sdl_pixelformat)
* [SDL_GetPixelFormatName](#sdl_getpixelformatname)
* [SDL_PixelFormatEnumToMasks](#sdl_pixelformatenumtomasks)
* [SDL_MasksToPixelFormatEnum](#sdl_maskstopixelformatenum)
* [SDL_AllocFormat](#sdl_allocformat)
* [SDL_FreeFormat](#sdl_freeformat)
* [SDL_AllocPalette](#sdl_allocpalette)
* [SDL_SetPixelFormatPalette](#sdl_setpixelformatpalette)
* [SDL_SetPaletteColors](#sdl_setpalettecolors)
* [SDL_FreePalette](#sdl_freepalette)
* [SDL_MapRGB](#sdl_maprgb)
* [SDL_MapRGBA](#sdl_maprgba)
* [SDL_GetRGB](#sdl_getrgb)
* [SDL_GetRGBA](#sdl_getrgba)
* [SDL_CalculateGammaRamp](#sdl_calculategammaramp)
* [SDL_Point](#sdl_point)
* [SDL_FPoint](#sdl_fpoint)
* [SDL_Rect](#sdl_rect)
* [SDL_FRect](#sdl_frect)
* [SDL_PointInRect](#sdl_pointinrect)
* [SDL_RectEmpty](#sdl_rectempty)
* [SDL_RectEquals](#sdl_rectequals)
* [SDL_HasIntersection](#sdl_hasintersection)
* [SDL_IntersectRect](#sdl_intersectrect)
* [SDL_UnionRect](#sdl_unionrect)
* [SDL_EnclosePoints](#sdl_enclosepoints)
* [SDL_IntersectRectAndLine](#sdl_intersectrectandline)
* [SDL_PointInFRect](#sdl_pointinfrect)
* [SDL_FRectEmpty](#sdl_frectempty)
* [SDL_FRectEqualsEpsilon](#sdl_frectequalsepsilon)
* [SDL_FRectEquals](#sdl_frectequals)
* [SDL_HasIntersectionF](#sdl_hasintersectionf)
* [SDL_IntersectFRect](#sdl_intersectfrect)
* [SDL_UnionFRect](#sdl_unionfrect)
* [SDL_EncloseFPoints](#sdl_enclosefpoints)
* [SDL_IntersectFRectAndLine](#sdl_intersectfrectandline)
* [SDL_BlendMode](#sdl_blendmode)
* [SDL_BlendOperation](#sdl_blendoperation)
* [SDL_BlendFactor](#sdl_blendfactor)
* [SDL_ComposeCustomBlendMode](#sdl_composecustomblendmode)
* [SDL_BlitMap](#sdl_blitmap)
* [SDL_Surface](#sdl_surface)
* [SDL_blit](#sdl_blit)
* [SDL_YUV_CONVERSION_MODE](#sdl_yuv_conversion_mode)
* [SDL_CreateRGBSurface](#sdl_creatergbsurface)
* [SDL_CreateRGBSurfaceWithFormat](#sdl_creatergbsurfacewithformat)
* [SDL_CreateRGBSurfaceFrom](#sdl_creatergbsurfacefrom)
* [SDL_CreateRGBSurfaceWithFormatFrom](#sdl_creatergbsurfacewithformatfrom)
* [SDL_FreeSurface](#sdl_freesurface)
* [SDL_SetSurfacePalette](#sdl_setsurfacepalette)
* [SDL_LockSurface](#sdl_locksurface)
* [SDL_UnlockSurface](#sdl_unlocksurface)
* [SDL_LoadBMP_RW](#sdl_loadbmp_rw)
* [SDL_SaveBMP_RW](#sdl_savebmp_rw)
* [SDL_SetSurfaceRLE](#sdl_setsurfacerle)
* [SDL_HasSurfaceRLE](#sdl_hassurfacerle)
* [SDL_SetColorKey](#sdl_setcolorkey)
* [SDL_HasColorKey](#sdl_hascolorkey)
* [SDL_GetColorKey](#sdl_getcolorkey)
* [SDL_SetSurfaceColorMod](#sdl_setsurfacecolormod)
* [SDL_GetSurfaceColorMod](#sdl_getsurfacecolormod)
* [SDL_SetSurfaceAlphaMod](#sdl_setsurfacealphamod)
* [SDL_GetSurfaceAlphaMod](#sdl_getsurfacealphamod)
* [SDL_SetSurfaceBlendMode](#sdl_setsurfaceblendmode)
* [SDL_GetSurfaceBlendMode](#sdl_getsurfaceblendmode)
* [SDL_SetClipRect](#sdl_setcliprect)
* [SDL_GetClipRect](#sdl_getcliprect)
* [SDL_DuplicateSurface](#sdl_duplicatesurface)
* [SDL_ConvertSurface](#sdl_convertsurface)
* [SDL_ConvertSurfaceFormat](#sdl_convertsurfaceformat)
* [SDL_ConvertPixels](#sdl_convertpixels)
* [SDL_PremultiplyAlpha](#sdl_premultiplyalpha)
* [SDL_FillRect](#sdl_fillrect)
* [SDL_FillRects](#sdl_fillrects)
* [SDL_UpperBlit](#sdl_upperblit)
* [SDL_LowerBlit](#sdl_lowerblit)
* [SDL_SoftStretch](#sdl_softstretch)
* [SDL_SoftStretchLinear](#sdl_softstretchlinear)
* [SDL_UpperBlitScaled](#sdl_upperblitscaled)
* [SDL_LowerBlitScaled](#sdl_lowerblitscaled)
* [SDL_SetYUVConversionMode](#sdl_setyuvconversionmode)
* [SDL_GetYUVConversionMode](#sdl_getyuvconversionmode)
* [SDL_GetYUVConversionModeForResolution](#sdl_getyuvconversionmodeforresolution)
* [SDL_DisplayMode](#sdl_displaymode)
* [SDL_Window](#sdl_window)
* [SDL_WindowFlags](#sdl_windowflags)
* [SDL_WindowEventID](#sdl_windoweventid)
* [SDL_DisplayEventID](#sdl_displayeventid)
* [SDL_DisplayOrientation](#sdl_displayorientation)
* [SDL_FlashOperation](#sdl_flashoperation)
* [SDL_GLContext](#sdl_glcontext)
* [SDL_GLattr](#sdl_glattr)
* [SDL_GLprofile](#sdl_glprofile)
* [SDL_GLcontextFlag](#sdl_glcontextflag)
* [SDL_GLcontextReleaseFlag](#sdl_glcontextreleaseflag)
* [SDL_GLContextResetNotification](#sdl_glcontextresetnotification)
* [SDL_GetNumVideoDrivers](#sdl_getnumvideodrivers)
* [SDL_GetVideoDriver](#sdl_getvideodriver)
* [SDL_VideoInit](#sdl_videoinit)
* [SDL_VideoQuit](#sdl_videoquit)
* [SDL_GetCurrentVideoDriver](#sdl_getcurrentvideodriver)
* [SDL_GetNumVideoDisplays](#sdl_getnumvideodisplays)
* [SDL_GetDisplayName](#sdl_getdisplayname)
* [SDL_GetDisplayBounds](#sdl_getdisplaybounds)
* [SDL_GetDisplayUsableBounds](#sdl_getdisplayusablebounds)
* [SDL_GetDisplayDPI](#sdl_getdisplaydpi)
* [SDL_GetDisplayOrientation](#sdl_getdisplayorientation)
* [SDL_GetNumDisplayModes](#sdl_getnumdisplaymodes)
* [SDL_GetDisplayMode](#sdl_getdisplaymode)
* [SDL_GetDesktopDisplayMode](#sdl_getdesktopdisplaymode)
* [SDL_GetCurrentDisplayMode](#sdl_getcurrentdisplaymode)
* [SDL_GetClosestDisplayMode](#sdl_getclosestdisplaymode)
* [SDL_GetPointDisplayIndex](#sdl_getpointdisplayindex)
* [SDL_GetRectDisplayIndex](#sdl_getrectdisplayindex)
* [SDL_GetWindowDisplayIndex](#sdl_getwindowdisplayindex)
* [SDL_SetWindowDisplayMode](#sdl_setwindowdisplaymode)
* [SDL_GetWindowDisplayMode](#sdl_getwindowdisplaymode)
* [SDL_GetWindowICCProfile](#sdl_getwindowiccprofile)
* [SDL_GetWindowPixelFormat](#sdl_getwindowpixelformat)
* [SDL_CreateWindow](#sdl_createwindow)
* [SDL_CreateWindowFrom](#sdl_createwindowfrom)
* [SDL_GetWindowID](#sdl_getwindowid)
* [SDL_GetWindowFromID](#sdl_getwindowfromid)
* [SDL_GetWindowFlags](#sdl_getwindowflags)
* [SDL_SetWindowTitle](#sdl_setwindowtitle)
* [SDL_GetWindowTitle](#sdl_getwindowtitle)
* [SDL_SetWindowIcon](#sdl_setwindowicon)
* [SDL_SetWindowData](#sdl_setwindowdata)
* [SDL_GetWindowData](#sdl_getwindowdata)
* [SDL_SetWindowPosition](#sdl_setwindowposition)
* [SDL_GetWindowPosition](#sdl_getwindowposition)
* [SDL_SetWindowSize](#sdl_setwindowsize)
* [SDL_GetWindowSize](#sdl_getwindowsize)
* [SDL_GetWindowBordersSize](#sdl_getwindowborderssize)
* [SDL_GetWindowSizeInPixels](#sdl_getwindowsizeinpixels)
* [SDL_SetWindowMinimumSize](#sdl_setwindowminimumsize)
* [SDL_GetWindowMinimumSize](#sdl_getwindowminimumsize)
* [SDL_SetWindowMaximumSize](#sdl_setwindowmaximumsize)
* [SDL_GetWindowMaximumSize](#sdl_getwindowmaximumsize)
* [SDL_SetWindowBordered](#sdl_setwindowbordered)
* [SDL_SetWindowResizable](#sdl_setwindowresizable)
* [SDL_SetWindowAlwaysOnTop](#sdl_setwindowalwaysontop)
* [SDL_ShowWindow](#sdl_showwindow)
* [SDL_HideWindow](#sdl_hidewindow)
* [SDL_RaiseWindow](#sdl_raisewindow)
* [SDL_MaximizeWindow](#sdl_maximizewindow)
* [SDL_MinimizeWindow](#sdl_minimizewindow)
* [SDL_RestoreWindow](#sdl_restorewindow)
* [SDL_SetWindowFullscreen](#sdl_setwindowfullscreen)
* [SDL_GetWindowSurface](#sdl_getwindowsurface)
* [SDL_UpdateWindowSurface](#sdl_updatewindowsurface)
* [SDL_UpdateWindowSurfaceRects](#sdl_updatewindowsurfacerects)
* [SDL_SetWindowGrab](#sdl_setwindowgrab)
* [SDL_SetWindowKeyboardGrab](#sdl_setwindowkeyboardgrab)
* [SDL_SetWindowMouseGrab](#sdl_setwindowmousegrab)
* [SDL_GetWindowGrab](#sdl_getwindowgrab)
* [SDL_GetWindowKeyboardGrab](#sdl_getwindowkeyboardgrab)
* [SDL_GetWindowMouseGrab](#sdl_getwindowmousegrab)
* [SDL_GetGrabbedWindow](#sdl_getgrabbedwindow)
* [SDL_SetWindowMouseRect](#sdl_setwindowmouserect)
* [SDL_GetWindowMouseRect](#sdl_getwindowmouserect)
* [SDL_SetWindowBrightness](#sdl_setwindowbrightness)
* [SDL_GetWindowBrightness](#sdl_getwindowbrightness)
* [SDL_SetWindowOpacity](#sdl_setwindowopacity)
* [SDL_GetWindowOpacity](#sdl_getwindowopacity)
* [SDL_SetWindowModalFor](#sdl_setwindowmodalfor)
* [SDL_SetWindowInputFocus](#sdl_setwindowinputfocus)
* [SDL_SetWindowGammaRamp](#sdl_setwindowgammaramp)
* [SDL_GetWindowGammaRamp](#sdl_getwindowgammaramp)
* [SDL_HitTestResult](#sdl_hittestresult)
* [SDL_HitTest](#sdl_hittest)
* [SDL_SetWindowHitTest](#sdl_setwindowhittest)
* [SDL_FlashWindow](#sdl_flashwindow)
* [SDL_DestroyWindow](#sdl_destroywindow)
* [SDL_IsScreenSaverEnabled](#sdl_isscreensaverenabled)
* [SDL_EnableScreenSaver](#sdl_enablescreensaver)
* [SDL_DisableScreenSaver](#sdl_disablescreensaver)
* [SDL_GL_LoadLibrary](#sdl_gl_loadlibrary)
* [SDL_GL_GetProcAddress](#sdl_gl_getprocaddress)
* [SDL_GL_UnloadLibrary](#sdl_gl_unloadlibrary)
* [SDL_GL_ExtensionSupported](#sdl_gl_extensionsupported)
* [SDL_GL_ResetAttributes](#sdl_gl_resetattributes)
* [SDL_GL_SetAttribute](#sdl_gl_setattribute)
* [SDL_GL_GetAttribute](#sdl_gl_getattribute)
* [SDL_GL_CreateContext](#sdl_gl_createcontext)
* [SDL_GL_MakeCurrent](#sdl_gl_makecurrent)
* [SDL_GL_GetCurrentWindow](#sdl_gl_getcurrentwindow)
* [SDL_GL_GetCurrentContext](#sdl_gl_getcurrentcontext)
* [SDL_GL_GetDrawableSize](#sdl_gl_getdrawablesize)
* [SDL_GL_SetSwapInterval](#sdl_gl_setswapinterval)
* [SDL_GL_GetSwapInterval](#sdl_gl_getswapinterval)
* [SDL_GL_SwapWindow](#sdl_gl_swapwindow)
* [SDL_GL_DeleteContext](#sdl_gl_deletecontext)
* [SDL_Scancode](#sdl_scancode)
* [SDL_KeyCode](#sdl_keycode)
* [SDL_Keymod](#sdl_keymod)
* [SDL_Keysym](#sdl_keysym)
* [SDL_GetKeyboardFocus](#sdl_getkeyboardfocus)
* [SDL_GetKeyboardState](#sdl_getkeyboardstate)
* [SDL_ResetKeyboard](#sdl_resetkeyboard)
* [SDL_GetModState](#sdl_getmodstate)
* [SDL_SetModState](#sdl_setmodstate)
* [SDL_GetKeyFromScancode](#sdl_getkeyfromscancode)
* [SDL_GetScancodeFromKey](#sdl_getscancodefromkey)
* [SDL_GetScancodeName](#sdl_getscancodename)
* [SDL_GetScancodeFromName](#sdl_getscancodefromname)
* [SDL_GetKeyName](#sdl_getkeyname)
* [SDL_GetKeyFromName](#sdl_getkeyfromname)
* [SDL_StartTextInput](#sdl_starttextinput)
* [SDL_IsTextInputActive](#sdl_istextinputactive)
* [SDL_StopTextInput](#sdl_stoptextinput)
* [SDL_ClearComposition](#sdl_clearcomposition)
* [SDL_IsTextInputShown](#sdl_istextinputshown)
* [SDL_SetTextInputRect](#sdl_settextinputrect)
* [SDL_HasScreenKeyboardSupport](#sdl_hasscreenkeyboardsupport)
* [SDL_IsScreenKeyboardShown](#sdl_isscreenkeyboardshown)
* [SDL_Cursor](#sdl_cursor)
* [SDL_SystemCursor](#sdl_systemcursor)
* [SDL_MouseWheelDirection](#sdl_mousewheeldirection)
* [SDL_GetMouseFocus](#sdl_getmousefocus)
* [SDL_GetMouseState](#sdl_getmousestate)
* [SDL_GetGlobalMouseState](#sdl_getglobalmousestate)
* [SDL_GetRelativeMouseState](#sdl_getrelativemousestate)
* [SDL_WarpMouseInWindow](#sdl_warpmouseinwindow)
* [SDL_WarpMouseGlobal](#sdl_warpmouseglobal)
* [SDL_SetRelativeMouseMode](#sdl_setrelativemousemode)
* [SDL_CaptureMouse](#sdl_capturemouse)
* [SDL_GetRelativeMouseMode](#sdl_getrelativemousemode)
* [SDL_CreateCursor](#sdl_createcursor)
* [SDL_CreateColorCursor](#sdl_createcolorcursor)
* [SDL_CreateSystemCursor](#sdl_createsystemcursor)
* [SDL_SetCursor](#sdl_setcursor)
* [SDL_GetCursor](#sdl_getcursor)
* [SDL_GetDefaultCursor](#sdl_getdefaultcursor)
* [SDL_FreeCursor](#sdl_freecursor)
* [SDL_ShowCursor](#sdl_showcursor)
* [SDL_GUID](#sdl_guid)
* [SDL_GUIDToString](#sdl_guidtostring)
* [SDL_GUIDFromString](#sdl_guidfromstring)
* [SDL_Joystick](#sdl_joystick)
* [SDL_JoystickGUID](#sdl_joystickguid)
* [SDL_JoystickType](#sdl_joysticktype)
* [SDL_JoystickPowerLevel](#sdl_joystickpowerlevel)
* [SDL_LockJoysticks](#sdl_lockjoysticks)
* [SDL_UnlockJoysticks](#sdl_unlockjoysticks)
* [SDL_NumJoysticks](#sdl_numjoysticks)
* [SDL_JoystickNameForIndex](#sdl_joysticknameforindex)
* [SDL_JoystickPathForIndex](#sdl_joystickpathforindex)
* [SDL_JoystickGetDevicePlayerIndex](#sdl_joystickgetdeviceplayerindex)
* [SDL_JoystickGetDeviceGUID](#sdl_joystickgetdeviceguid)
* [SDL_JoystickGetDeviceVendor](#sdl_joystickgetdevicevendor)
* [SDL_JoystickGetDeviceProduct](#sdl_joystickgetdeviceproduct)
* [SDL_JoystickGetDeviceProductVersion](#sdl_joystickgetdeviceproductversion)
* [SDL_JoystickGetDeviceType](#sdl_joystickgetdevicetype)
* [SDL_JoystickGetDeviceInstanceID](#sdl_joystickgetdeviceinstanceid)
* [SDL_JoystickOpen](#sdl_joystickopen)
* [SDL_JoystickFromInstanceID](#sdl_joystickfrominstanceid)
* [SDL_JoystickFromPlayerIndex](#sdl_joystickfromplayerindex)
* [SDL_JoystickAttachVirtual](#sdl_joystickattachvirtual)
* [SDL_VirtualJoystickDesc](#sdl_virtualjoystickdesc)
* [SDL_JoystickAttachVirtualEx](#sdl_joystickattachvirtualex)
* [SDL_JoystickDetachVirtual](#sdl_joystickdetachvirtual)
* [SDL_JoystickIsVirtual](#sdl_joystickisvirtual)
* [SDL_JoystickSetVirtualAxis](#sdl_joysticksetvirtualaxis)
* [SDL_JoystickSetVirtualButton](#sdl_joysticksetvirtualbutton)
* [SDL_JoystickSetVirtualHat](#sdl_joysticksetvirtualhat)
* [SDL_JoystickName](#sdl_joystickname)
* [SDL_JoystickPath](#sdl_joystickpath)
* [SDL_JoystickGetPlayerIndex](#sdl_joystickgetplayerindex)
* [SDL_JoystickSetPlayerIndex](#sdl_joysticksetplayerindex)
* [SDL_JoystickGetGUID](#sdl_joystickgetguid)
* [SDL_JoystickGetVendor](#sdl_joystickgetvendor)
* [SDL_JoystickGetProduct](#sdl_joystickgetproduct)
* [SDL_JoystickGetProductVersion](#sdl_joystickgetproductversion)
* [SDL_JoystickGetFirmwareVersion](#sdl_joystickgetfirmwareversion)
* [SDL_JoystickGetSerial](#sdl_joystickgetserial)
* [SDL_JoystickGetType](#sdl_joystickgettype)
* [SDL_JoystickGetGUIDString](#sdl_joystickgetguidstring)
* [SDL_JoystickGetGUIDFromString](#sdl_joystickgetguidfromstring)
* [SDL_GetJoystickGUIDInfo](#sdl_getjoystickguidinfo)
* [SDL_JoystickGetAttached](#sdl_joystickgetattached)
* [SDL_JoystickInstanceID](#sdl_joystickinstanceid)
* [SDL_JoystickNumAxes](#sdl_joysticknumaxes)
* [SDL_JoystickNumBalls](#sdl_joysticknumballs)
* [SDL_JoystickNumHats](#sdl_joysticknumhats)
* [SDL_JoystickNumButtons](#sdl_joysticknumbuttons)
* [SDL_JoystickUpdate](#sdl_joystickupdate)
* [SDL_JoystickEventState](#sdl_joystickeventstate)
* [SDL_JoystickGetAxis](#sdl_joystickgetaxis)
* [SDL_JoystickGetAxisInitialState](#sdl_joystickgetaxisinitialstate)
* [SDL_JoystickGetHat](#sdl_joystickgethat)
* [SDL_JoystickGetBall](#sdl_joystickgetball)
* [SDL_JoystickGetButton](#sdl_joystickgetbutton)
* [SDL_JoystickRumble](#sdl_joystickrumble)
* [SDL_JoystickRumbleTriggers](#sdl_joystickrumbletriggers)
* [SDL_JoystickHasLED](#sdl_joystickhasled)
* [SDL_JoystickHasRumble](#sdl_joystickhasrumble)
* [SDL_JoystickHasRumbleTriggers](#sdl_joystickhasrumbletriggers)
* [SDL_JoystickSetLED](#sdl_joysticksetled)
* [SDL_JoystickSendEffect](#sdl_joysticksendeffect)
* [SDL_JoystickClose](#sdl_joystickclose)
* [SDL_JoystickCurrentPowerLevel](#sdl_joystickcurrentpowerlevel)
* [SDL_Sensor](#sdl_sensor)
* [SDL_SensorType](#sdl_sensortype)
* [SDL_LockSensors](#sdl_locksensors)
* [SDL_UnlockSensors](#sdl_unlocksensors)
* [SDL_NumSensors](#sdl_numsensors)
* [SDL_SensorGetDeviceName](#sdl_sensorgetdevicename)
* [SDL_SensorGetDeviceType](#sdl_sensorgetdevicetype)
* [SDL_SensorGetDeviceNonPortableType](#sdl_sensorgetdevicenonportabletype)
* [SDL_SensorGetDeviceInstanceID](#sdl_sensorgetdeviceinstanceid)
* [SDL_SensorOpen](#sdl_sensoropen)
* [SDL_SensorFromInstanceID](#sdl_sensorfrominstanceid)
* [SDL_SensorGetName](#sdl_sensorgetname)
* [SDL_SensorGetType](#sdl_sensorgettype)
* [SDL_SensorGetNonPortableType](#sdl_sensorgetnonportabletype)
* [SDL_SensorGetInstanceID](#sdl_sensorgetinstanceid)
* [SDL_SensorGetData](#sdl_sensorgetdata)
* [SDL_SensorGetDataWithTimestamp](#sdl_sensorgetdatawithtimestamp)
* [SDL_SensorClose](#sdl_sensorclose)
* [SDL_SensorUpdate](#sdl_sensorupdate)
* [SDL_GameController](#sdl_gamecontroller)
* [SDL_GameControllerType](#sdl_gamecontrollertype)
* [SDL_GameControllerBindType](#sdl_gamecontrollerbindtype)
* [SDL_GameControllerButtonBind](#sdl_gamecontrollerbuttonbind)
* [SDL_GameControllerAddMappingsFromRW](#sdl_gamecontrolleraddmappingsfromrw)
* [SDL_GameControllerAddMapping](#sdl_gamecontrolleraddmapping)
* [SDL_GameControllerNumMappings](#sdl_gamecontrollernummappings)
* [SDL_GameControllerMappingForIndex](#sdl_gamecontrollermappingforindex)
* [SDL_GameControllerMappingForGUID](#sdl_gamecontrollermappingforguid)
* [SDL_GameControllerMapping](#sdl_gamecontrollermapping)
* [SDL_IsGameController](#sdl_isgamecontroller)
* [SDL_GameControllerNameForIndex](#sdl_gamecontrollernameforindex)
* [SDL_GameControllerPathForIndex](#sdl_gamecontrollerpathforindex)
* [SDL_GameControllerTypeForIndex](#sdl_gamecontrollertypeforindex)
* [SDL_GameControllerMappingForDeviceIndex](#sdl_gamecontrollermappingfordeviceindex)
* [SDL_GameControllerOpen](#sdl_gamecontrolleropen)
* [SDL_GameControllerFromInstanceID](#sdl_gamecontrollerfrominstanceid)
* [SDL_GameControllerFromPlayerIndex](#sdl_gamecontrollerfromplayerindex)
* [SDL_GameControllerName](#sdl_gamecontrollername)
* [SDL_GameControllerPath](#sdl_gamecontrollerpath)
* [SDL_GameControllerGetType](#sdl_gamecontrollergettype)
* [SDL_GameControllerGetPlayerIndex](#sdl_gamecontrollergetplayerindex)
* [SDL_GameControllerSetPlayerIndex](#sdl_gamecontrollersetplayerindex)
* [SDL_GameControllerGetVendor](#sdl_gamecontrollergetvendor)
* [SDL_GameControllerGetProduct](#sdl_gamecontrollergetproduct)
* [SDL_GameControllerGetProductVersion](#sdl_gamecontrollergetproductversion)
* [SDL_GameControllerGetFirmwareVersion](#sdl_gamecontrollergetfirmwareversion)
* [SDL_GameControllerGetSerial](#sdl_gamecontrollergetserial)
* [SDL_GameControllerGetAttached](#sdl_gamecontrollergetattached)
* [SDL_GameControllerGetJoystick](#sdl_gamecontrollergetjoystick)
* [SDL_GameControllerEventState](#sdl_gamecontrollereventstate)
* [SDL_GameControllerUpdate](#sdl_gamecontrollerupdate)
* [SDL_GameControllerAxis](#sdl_gamecontrolleraxis)
* [SDL_GameControllerGetAxisFromString](#sdl_gamecontrollergetaxisfromstring)
* [SDL_GameControllerGetStringForAxis](#sdl_gamecontrollergetstringforaxis)
* [SDL_GameControllerGetBindForAxis](#sdl_gamecontrollergetbindforaxis)
* [SDL_GameControllerHasAxis](#sdl_gamecontrollerhasaxis)
* [SDL_GameControllerGetAxis](#sdl_gamecontrollergetaxis)
* [SDL_GameControllerButton](#sdl_gamecontrollerbutton)
* [SDL_GameControllerGetButtonFromString](#sdl_gamecontrollergetbuttonfromstring)
* [SDL_GameControllerGetStringForButton](#sdl_gamecontrollergetstringforbutton)
* [SDL_GameControllerGetBindForButton](#sdl_gamecontrollergetbindforbutton)
* [SDL_GameControllerHasButton](#sdl_gamecontrollerhasbutton)
* [SDL_GameControllerGetButton](#sdl_gamecontrollergetbutton)
* [SDL_GameControllerGetNumTouchpads](#sdl_gamecontrollergetnumtouchpads)
* [SDL_GameControllerGetNumTouchpadFingers](#sdl_gamecontrollergetnumtouchpadfingers)
* [SDL_GameControllerGetTouchpadFinger](#sdl_gamecontrollergettouchpadfinger)
* [SDL_GameControllerHasSensor](#sdl_gamecontrollerhassensor)
* [SDL_GameControllerSetSensorEnabled](#sdl_gamecontrollersetsensorenabled)
* [SDL_GameControllerIsSensorEnabled](#sdl_gamecontrollerissensorenabled)
* [SDL_GameControllerGetSensorDataRate](#sdl_gamecontrollergetsensordatarate)
* [SDL_GameControllerGetSensorData](#sdl_gamecontrollergetsensordata)
* [SDL_GameControllerGetSensorDataWithTimestamp](#sdl_gamecontrollergetsensordatawithtimestamp)
* [SDL_GameControllerRumble](#sdl_gamecontrollerrumble)
* [SDL_GameControllerRumbleTriggers](#sdl_gamecontrollerrumbletriggers)
* [SDL_GameControllerHasLED](#sdl_gamecontrollerhasled)
* [SDL_GameControllerHasRumble](#sdl_gamecontrollerhasrumble)
* [SDL_GameControllerHasRumbleTriggers](#sdl_gamecontrollerhasrumbletriggers)
* [SDL_GameControllerSetLED](#sdl_gamecontrollersetled)
* [SDL_GameControllerSendEffect](#sdl_gamecontrollersendeffect)
* [SDL_GameControllerClose](#sdl_gamecontrollerclose)
* [SDL_GameControllerGetAppleSFSymbolsNameForButton](#sdl_gamecontrollergetapplesfsymbolsnameforbutton)
* [SDL_GameControllerGetAppleSFSymbolsNameForAxis](#sdl_gamecontrollergetapplesfsymbolsnameforaxis)
* [SDL_TouchDeviceType](#sdl_touchdevicetype)
* [SDL_Finger](#sdl_finger)
* [SDL_GetNumTouchDevices](#sdl_getnumtouchdevices)
* [SDL_GetTouchDevice](#sdl_gettouchdevice)
* [SDL_GetTouchName](#sdl_gettouchname)
* [SDL_GetTouchDeviceType](#sdl_gettouchdevicetype)
* [SDL_GetNumTouchFingers](#sdl_getnumtouchfingers)
* [SDL_GetTouchFinger](#sdl_gettouchfinger)
* [SDL_RecordGesture](#sdl_recordgesture)
* [SDL_SaveAllDollarTemplates](#sdl_savealldollartemplates)
* [SDL_SaveDollarTemplate](#sdl_savedollartemplate)
* [SDL_LoadDollarTemplates](#sdl_loaddollartemplates)
* [SDL_EventType](#sdl_eventtype)
* [SDL_CommonEvent](#sdl_commonevent)
* [SDL_DisplayEvent](#sdl_displayevent)
* [SDL_WindowEvent](#sdl_windowevent)
* [SDL_KeyboardEvent](#sdl_keyboardevent)
* [SDL_TextEditingEvent](#sdl_texteditingevent)
* [SDL_TextEditingExtEvent](#sdl_texteditingextevent)
* [SDL_TextInputEvent](#sdl_textinputevent)
* [SDL_MouseMotionEvent](#sdl_mousemotionevent)
* [SDL_MouseButtonEvent](#sdl_mousebuttonevent)
* [SDL_MouseWheelEvent](#sdl_mousewheelevent)
* [SDL_JoyAxisEvent](#sdl_joyaxisevent)
* [SDL_JoyBallEvent](#sdl_joyballevent)
* [SDL_JoyHatEvent](#sdl_joyhatevent)
* [SDL_JoyButtonEvent](#sdl_joybuttonevent)
* [SDL_JoyDeviceEvent](#sdl_joydeviceevent)
* [SDL_JoyBatteryEvent](#sdl_joybatteryevent)
* [SDL_ControllerAxisEvent](#sdl_controlleraxisevent)
* [SDL_ControllerButtonEvent](#sdl_controllerbuttonevent)
* [SDL_ControllerDeviceEvent](#sdl_controllerdeviceevent)
* [SDL_ControllerTouchpadEvent](#sdl_controllertouchpadevent)
* [SDL_ControllerSensorEvent](#sdl_controllersensorevent)
* [SDL_AudioDeviceEvent](#sdl_audiodeviceevent)
* [SDL_TouchFingerEvent](#sdl_touchfingerevent)
* [SDL_MultiGestureEvent](#sdl_multigestureevent)
* [SDL_DollarGestureEvent](#sdl_dollargestureevent)
* [SDL_DropEvent](#sdl_dropevent)
* [SDL_SensorEvent](#sdl_sensorevent)
* [SDL_QuitEvent](#sdl_quitevent)
* [SDL_OSEvent](#sdl_osevent)
* [SDL_UserEvent](#sdl_userevent)
* [SDL_SysWMmsg](#sdl_syswmmsg)
* [SDL_SysWMEvent](#sdl_syswmevent)
* [SDL_Event](#sdl_event)
* [SDL_PumpEvents](#sdl_pumpevents)
* [SDL_eventaction](#sdl_eventaction)
* [SDL_PeepEvents](#sdl_peepevents)
* [SDL_HasEvent](#sdl_hasevent)
* [SDL_HasEvents](#sdl_hasevents)
* [SDL_FlushEvent](#sdl_flushevent)
* [SDL_FlushEvents](#sdl_flushevents)
* [SDL_PollEvent](#sdl_pollevent)
* [SDL_WaitEvent](#sdl_waitevent)
* [SDL_WaitEventTimeout](#sdl_waiteventtimeout)
* [SDL_PushEvent](#sdl_pushevent)
* [SDL_EventFilter](#sdl_eventfilter)
* [SDL_SetEventFilter](#sdl_seteventfilter)
* [SDL_GetEventFilter](#sdl_geteventfilter)
* [SDL_AddEventWatch](#sdl_addeventwatch)
* [SDL_DelEventWatch](#sdl_deleventwatch)
* [SDL_FilterEvents](#sdl_filterevents)
* [SDL_EventState](#sdl_eventstate)
* [SDL_RegisterEvents](#sdl_registerevents)
* [SDL_GetBasePath](#sdl_getbasepath)
* [SDL_GetPrefPath](#sdl_getprefpath)
* [SDL_Haptic](#sdl_haptic)
* [SDL_HapticDirection](#sdl_hapticdirection)
* [SDL_HapticConstant](#sdl_hapticconstant)
* [SDL_HapticPeriodic](#sdl_hapticperiodic)
* [SDL_HapticCondition](#sdl_hapticcondition)
* [SDL_HapticRamp](#sdl_hapticramp)
* [SDL_HapticLeftRight](#sdl_hapticleftright)
* [SDL_HapticCustom](#sdl_hapticcustom)
* [SDL_HapticEffect](#sdl_hapticeffect)
* [SDL_NumHaptics](#sdl_numhaptics)
* [SDL_HapticName](#sdl_hapticname)
* [SDL_HapticOpen](#sdl_hapticopen)
* [SDL_HapticOpened](#sdl_hapticopened)
* [SDL_HapticIndex](#sdl_hapticindex)
* [SDL_MouseIsHaptic](#sdl_mouseishaptic)
* [SDL_HapticOpenFromMouse](#sdl_hapticopenfrommouse)
* [SDL_JoystickIsHaptic](#sdl_joystickishaptic)
* [SDL_HapticOpenFromJoystick](#sdl_hapticopenfromjoystick)
* [SDL_HapticClose](#sdl_hapticclose)
* [SDL_HapticNumEffects](#sdl_hapticnumeffects)
* [SDL_HapticNumEffectsPlaying](#sdl_hapticnumeffectsplaying)
* [SDL_HapticQuery](#sdl_hapticquery)
* [SDL_HapticNumAxes](#sdl_hapticnumaxes)
* [SDL_HapticEffectSupported](#sdl_hapticeffectsupported)
* [SDL_HapticNewEffect](#sdl_hapticneweffect)
* [SDL_HapticUpdateEffect](#sdl_hapticupdateeffect)
* [SDL_HapticRunEffect](#sdl_hapticruneffect)
* [SDL_HapticStopEffect](#sdl_hapticstopeffect)
* [SDL_HapticDestroyEffect](#sdl_hapticdestroyeffect)
* [SDL_HapticGetEffectStatus](#sdl_hapticgeteffectstatus)
* [SDL_HapticSetGain](#sdl_hapticsetgain)
* [SDL_HapticSetAutocenter](#sdl_hapticsetautocenter)
* [SDL_HapticPause](#sdl_hapticpause)
* [SDL_HapticUnpause](#sdl_hapticunpause)
* [SDL_HapticStopAll](#sdl_hapticstopall)
* [SDL_HapticRumbleSupported](#sdl_hapticrumblesupported)
* [SDL_HapticRumbleInit](#sdl_hapticrumbleinit)
* [SDL_HapticRumblePlay](#sdl_hapticrumbleplay)
* [SDL_HapticRumbleStop](#sdl_hapticrumblestop)
* [SDL_hid_device_](#sdl_hid_device_)
* [SDL_hid_device](#sdl_hid_device)
* [SDL_hid_device_info](#sdl_hid_device_info)
* [SDL_hid_init](#sdl_hid_init)
* [SDL_hid_exit](#sdl_hid_exit)
* [SDL_hid_device_change_count](#sdl_hid_device_change_count)
* [SDL_hid_enumerate](#sdl_hid_enumerate)
* [SDL_hid_free_enumeration](#sdl_hid_free_enumeration)
* [SDL_hid_open](#sdl_hid_open)
* [SDL_hid_open_path](#sdl_hid_open_path)
* [SDL_hid_write](#sdl_hid_write)
* [SDL_hid_read_timeout](#sdl_hid_read_timeout)
* [SDL_hid_read](#sdl_hid_read)
* [SDL_hid_set_nonblocking](#sdl_hid_set_nonblocking)
* [SDL_hid_send_feature_report](#sdl_hid_send_feature_report)
* [SDL_hid_get_feature_report](#sdl_hid_get_feature_report)
* [SDL_hid_close](#sdl_hid_close)
* [SDL_hid_get_manufacturer_string](#sdl_hid_get_manufacturer_string)
* [SDL_hid_get_product_string](#sdl_hid_get_product_string)
* [SDL_hid_get_serial_number_string](#sdl_hid_get_serial_number_string)
* [SDL_hid_get_indexed_string](#sdl_hid_get_indexed_string)
* [SDL_hid_ble_scan](#sdl_hid_ble_scan)
* [SDL_HintPriority](#sdl_hintpriority)
* [SDL_SetHintWithPriority](#sdl_sethintwithpriority)
* [SDL_SetHint](#sdl_sethint)
* [SDL_ResetHint](#sdl_resethint)
* [SDL_ResetHints](#sdl_resethints)
* [SDL_GetHint](#sdl_gethint)
* [SDL_GetHintBoolean](#sdl_gethintboolean)
* [SDL_HintCallback](#sdl_hintcallback)
* [SDL_AddHintCallback](#sdl_addhintcallback)
* [SDL_DelHintCallback](#sdl_delhintcallback)
* [SDL_ClearHints](#sdl_clearhints)
* [SDL_LoadObject](#sdl_loadobject)
* [SDL_LoadFunction](#sdl_loadfunction)
* [SDL_UnloadObject](#sdl_unloadobject)
* [SDL_LogCategory](#sdl_logcategory)
* [SDL_LogPriority](#sdl_logpriority)
* [SDL_LogSetAllPriority](#sdl_logsetallpriority)
* [SDL_LogSetPriority](#sdl_logsetpriority)
* [SDL_LogGetPriority](#sdl_loggetpriority)
* [SDL_LogResetPriorities](#sdl_logresetpriorities)
* [SDL_Log](#sdl_log)
* [SDL_LogVerbose](#sdl_logverbose)
* [SDL_LogDebug](#sdl_logdebug)
* [SDL_LogInfo](#sdl_loginfo)
* [SDL_LogWarn](#sdl_logwarn)
* [SDL_LogError](#sdl_logerror)
* [SDL_LogCritical](#sdl_logcritical)
* [SDL_LogMessage](#sdl_logmessage)
* [SDL_LogMessageV](#sdl_logmessagev)
* [SDL_LogOutputFunction](#sdl_logoutputfunction)
* [SDL_LogGetOutputFunction](#sdl_loggetoutputfunction)
* [SDL_LogSetOutputFunction](#sdl_logsetoutputfunction)
* [SDL_MessageBoxFlags](#sdl_messageboxflags)
* [SDL_MessageBoxButtonFlags](#sdl_messageboxbuttonflags)
* [SDL_MessageBoxButtonData](#sdl_messageboxbuttondata)
* [SDL_MessageBoxColor](#sdl_messageboxcolor)
* [SDL_MessageBoxColorType](#sdl_messageboxcolortype)
* [SDL_MessageBoxColorScheme](#sdl_messageboxcolorscheme)
* [SDL_MessageBoxData](#sdl_messageboxdata)
* [SDL_ShowMessageBox](#sdl_showmessagebox)
* [SDL_ShowSimpleMessageBox](#sdl_showsimplemessagebox)
* [SDL_MetalView](#sdl_metalview)
* [SDL_Metal_CreateView](#sdl_metal_createview)
* [SDL_Metal_DestroyView](#sdl_metal_destroyview)
* [SDL_Metal_GetLayer](#sdl_metal_getlayer)
* [SDL_Metal_GetDrawableSize](#sdl_metal_getdrawablesize)
* [SDL_PowerState](#sdl_powerstate)
* [SDL_GetPowerInfo](#sdl_getpowerinfo)
* [SDL_RendererFlags](#sdl_rendererflags)
* [SDL_RendererInfo](#sdl_rendererinfo)
* [SDL_Vertex](#sdl_vertex)
* [SDL_ScaleMode](#sdl_scalemode)
* [SDL_TextureAccess](#sdl_textureaccess)
* [SDL_TextureModulate](#sdl_texturemodulate)
* [SDL_RendererFlip](#sdl_rendererflip)
* [SDL_Renderer](#sdl_renderer)
* [SDL_Texture](#sdl_texture)
* [SDL_GetNumRenderDrivers](#sdl_getnumrenderdrivers)
* [SDL_GetRenderDriverInfo](#sdl_getrenderdriverinfo)
* [SDL_CreateWindowAndRenderer](#sdl_createwindowandrenderer)
* [SDL_CreateRenderer](#sdl_createrenderer)
* [SDL_CreateSoftwareRenderer](#sdl_createsoftwarerenderer)
* [SDL_GetRenderer](#sdl_getrenderer)
* [SDL_RenderGetWindow](#sdl_rendergetwindow)
* [SDL_GetRendererInfo](#sdl_getrendererinfo)
* [SDL_GetRendererOutputSize](#sdl_getrendereroutputsize)
* [SDL_CreateTexture](#sdl_createtexture)
* [SDL_CreateTextureFromSurface](#sdl_createtexturefromsurface)
* [SDL_QueryTexture](#sdl_querytexture)
* [SDL_SetTextureColorMod](#sdl_settexturecolormod)
* [SDL_GetTextureColorMod](#sdl_gettexturecolormod)
* [SDL_SetTextureAlphaMod](#sdl_settexturealphamod)
* [SDL_GetTextureAlphaMod](#sdl_gettexturealphamod)
* [SDL_SetTextureBlendMode](#sdl_settextureblendmode)
* [SDL_GetTextureBlendMode](#sdl_gettextureblendmode)
* [SDL_SetTextureScaleMode](#sdl_settexturescalemode)
* [SDL_GetTextureScaleMode](#sdl_gettexturescalemode)
* [SDL_SetTextureUserData](#sdl_settextureuserdata)
* [SDL_GetTextureUserData](#sdl_gettextureuserdata)
* [SDL_UpdateTexture](#sdl_updatetexture)
* [SDL_UpdateYUVTexture](#sdl_updateyuvtexture)
* [SDL_UpdateNVTexture](#sdl_updatenvtexture)
* [SDL_LockTexture](#sdl_locktexture)
* [SDL_LockTextureToSurface](#sdl_locktexturetosurface)
* [SDL_UnlockTexture](#sdl_unlocktexture)
* [SDL_RenderTargetSupported](#sdl_rendertargetsupported)
* [SDL_SetRenderTarget](#sdl_setrendertarget)
* [SDL_GetRenderTarget](#sdl_getrendertarget)
* [SDL_RenderSetLogicalSize](#sdl_rendersetlogicalsize)
* [SDL_RenderGetLogicalSize](#sdl_rendergetlogicalsize)
* [SDL_RenderSetIntegerScale](#sdl_rendersetintegerscale)
* [SDL_RenderGetIntegerScale](#sdl_rendergetintegerscale)
* [SDL_RenderSetViewport](#sdl_rendersetviewport)
* [SDL_RenderGetViewport](#sdl_rendergetviewport)
* [SDL_RenderSetClipRect](#sdl_rendersetcliprect)
* [SDL_RenderGetClipRect](#sdl_rendergetcliprect)
* [SDL_RenderIsClipEnabled](#sdl_renderisclipenabled)
* [SDL_RenderSetScale](#sdl_rendersetscale)
* [SDL_RenderGetScale](#sdl_rendergetscale)
* [SDL_RenderWindowToLogical](#sdl_renderwindowtological)
* [SDL_RenderLogicalToWindow](#sdl_renderlogicaltowindow)
* [SDL_SetRenderDrawColor](#sdl_setrenderdrawcolor)
* [SDL_GetRenderDrawColor](#sdl_getrenderdrawcolor)
* [SDL_SetRenderDrawBlendMode](#sdl_setrenderdrawblendmode)
* [SDL_GetRenderDrawBlendMode](#sdl_getrenderdrawblendmode)
* [SDL_RenderClear](#sdl_renderclear)
* [SDL_RenderDrawPoint](#sdl_renderdrawpoint)
* [SDL_RenderDrawPoints](#sdl_renderdrawpoints)
* [SDL_RenderDrawLine](#sdl_renderdrawline)
* [SDL_RenderDrawLines](#sdl_renderdrawlines)
* [SDL_RenderDrawRect](#sdl_renderdrawrect)
* [SDL_RenderDrawRects](#sdl_renderdrawrects)
* [SDL_RenderFillRect](#sdl_renderfillrect)
* [SDL_RenderFillRects](#sdl_renderfillrects)
* [SDL_RenderCopy](#sdl_rendercopy)
* [SDL_RenderCopyEx](#sdl_rendercopyex)
* [SDL_RenderDrawPointF](#sdl_renderdrawpointf)
* [SDL_RenderDrawPointsF](#sdl_renderdrawpointsf)
* [SDL_RenderDrawLineF](#sdl_renderdrawlinef)
* [SDL_RenderDrawLinesF](#sdl_renderdrawlinesf)
* [SDL_RenderDrawRectF](#sdl_renderdrawrectf)
* [SDL_RenderDrawRectsF](#sdl_renderdrawrectsf)
* [SDL_RenderFillRectF](#sdl_renderfillrectf)
* [SDL_RenderFillRectsF](#sdl_renderfillrectsf)
* [SDL_RenderCopyF](#sdl_rendercopyf)
* [SDL_RenderCopyExF](#sdl_rendercopyexf)
* [SDL_RenderGeometry](#sdl_rendergeometry)
* [SDL_RenderGeometryRaw](#sdl_rendergeometryraw)
* [SDL_RenderReadPixels](#sdl_renderreadpixels)
* [SDL_RenderPresent](#sdl_renderpresent)
* [SDL_DestroyTexture](#sdl_destroytexture)
* [SDL_DestroyRenderer](#sdl_destroyrenderer)
* [SDL_RenderFlush](#sdl_renderflush)
* [SDL_GL_BindTexture](#sdl_gl_bindtexture)
* [SDL_GL_UnbindTexture](#sdl_gl_unbindtexture)
* [SDL_RenderGetMetalLayer](#sdl_rendergetmetallayer)
* [SDL_RenderGetMetalCommandEncoder](#sdl_rendergetmetalcommandencoder)
* [SDL_RenderSetVSync](#sdl_rendersetvsync)
* [SDL_CreateShapedWindow](#sdl_createshapedwindow)
* [SDL_IsShapedWindow](#sdl_isshapedwindow)
* [WindowShapeMode](#windowshapemode)
* [SDL_WindowShapeParams](#sdl_windowshapeparams)
* [SDL_WindowShapeMode](#sdl_windowshapemode)
* [SDL_SetWindowShape](#sdl_setwindowshape)
* [SDL_GetShapedWindowMode](#sdl_getshapedwindowmode)
* [SDL_LinuxSetThreadPriority](#sdl_linuxsetthreadpriority)
* [SDL_LinuxSetThreadPriorityAndPolicy](#sdl_linuxsetthreadpriorityandpolicy)
* [SDL_IsTablet](#sdl_istablet)
* [SDL_OnApplicationWillTerminate](#sdl_onapplicationwillterminate)
* [SDL_OnApplicationDidReceiveMemoryWarning](#sdl_onapplicationdidreceivememorywarning)
* [SDL_OnApplicationWillResignActive](#sdl_onapplicationwillresignactive)
* [SDL_OnApplicationDidEnterBackground](#sdl_onapplicationdidenterbackground)
* [SDL_OnApplicationWillEnterForeground](#sdl_onapplicationwillenterforeground)
* [SDL_OnApplicationDidBecomeActive](#sdl_onapplicationdidbecomeactive)
* [SDL_GetTicks](#sdl_getticks)
* [SDL_GetTicks64](#sdl_getticks64)
* [SDL_GetPerformanceCounter](#sdl_getperformancecounter)
* [SDL_GetPerformanceFrequency](#sdl_getperformancefrequency)
* [SDL_Delay](#sdl_delay)
* [SDL_TimerCallback](#sdl_timercallback)
* [SDL_AddTimer](#sdl_addtimer)
* [SDL_RemoveTimer](#sdl_removetimer)
* [SDL_version](#sdl_version)
* [SDL_GetVersion](#sdl_getversion)
* [SDL_GetRevision](#sdl_getrevision)
* [SDL_GetRevisionNumber](#sdl_getrevisionnumber)
* [SDL_Locale](#sdl_locale)
* [SDL_GetPreferredLocales](#sdl_getpreferredlocales)
* [SDL_OpenURL](#sdl_openurl)
* [SDL_Init](#sdl_init)
* [SDL_InitSubSystem](#sdl_initsubsystem)
* [SDL_QuitSubSystem](#sdl_quitsubsystem)
* [SDL_WasInit](#sdl_wasinit)
* [SDL_Quit](#sdl_quit)
* [SDL_ICONV_ERROR](#sdl_iconv_error)
* [SDL_ICONV_E2BIG](#sdl_iconv_e2big)
* [SDL_ICONV_EILSEQ](#sdl_iconv_eilseq)
* [SDL_ICONV_EINVAL](#sdl_iconv_einval)
* [SDL_LIL_ENDIAN](#sdl_lil_endian)
* [SDL_BIG_ENDIAN](#sdl_big_endian)
* [SDL_BYTEORDER](#sdl_byteorder)
* [SDL_MUTEX_TIMEDOUT](#sdl_mutex_timedout)
* [SDL_MUTEX_MAXWAIT](#sdl_mutex_maxwait)
* [SDL_RWOPS_UNKNOWN](#sdl_rwops_unknown)
* [SDL_RWOPS_WINFILE](#sdl_rwops_winfile)
* [SDL_RWOPS_STDFILE](#sdl_rwops_stdfile)
* [SDL_RWOPS_JNIFILE](#sdl_rwops_jnifile)
* [SDL_RWOPS_MEMORY](#sdl_rwops_memory)
* [SDL_RWOPS_MEMORY_RO](#sdl_rwops_memory_ro)
* [SDL_AUDIO_MASK_BITSIZE](#sdl_audio_mask_bitsize)
* [SDL_AUDIO_MASK_DATATYPE](#sdl_audio_mask_datatype)
* [SDL_AUDIO_MASK_ENDIAN](#sdl_audio_mask_endian)
* [SDL_AUDIO_MASK_SIGNED](#sdl_audio_mask_signed)
* [SDL_AUDIO_ALLOW_FREQUENCY_CHANGE](#sdl_audio_allow_frequency_change)
* [SDL_AUDIO_ALLOW_FORMAT_CHANGE](#sdl_audio_allow_format_change)
* [SDL_AUDIO_ALLOW_CHANNELS_CHANGE](#sdl_audio_allow_channels_change)
* [SDL_AUDIO_ALLOW_SAMPLES_CHANGE](#sdl_audio_allow_samples_change)
* [SDL_AUDIO_ALLOW_ANY_CHANGE](#sdl_audio_allow_any_change)
* [SDL_AUDIOCVT_MAX_FILTERS](#sdl_audiocvt_max_filters)
* [SDL_MIX_MAXVOLUME](#sdl_mix_maxvolume)
* [SDL_CACHELINE_SIZE](#sdl_cacheline_size)
* [SDL_ALPHA_OPAQUE](#sdl_alpha_opaque)
* [SDL_ALPHA_TRANSPARENT](#sdl_alpha_transparent)
* [SDL_SWSURFACE](#sdl_swsurface)
* [SDL_PREALLOC](#sdl_prealloc)
* [SDL_RLEACCEL](#sdl_rleaccel)
* [SDL_DONTFREE](#sdl_dontfree)
* [SDL_SIMD_ALIGNED](#sdl_simd_aligned)
* [SDL_WINDOWPOS_UNDEFINED_MASK](#sdl_windowpos_undefined_mask)
* [SDL_WINDOWPOS_UNDEFINED](#sdl_windowpos_undefined)
* [SDL_WINDOWPOS_CENTERED_MASK](#sdl_windowpos_centered_mask)
* [SDL_WINDOWPOS_CENTERED](#sdl_windowpos_centered)
* [SDL_BUTTON_LEFT](#sdl_button_left)
* [SDL_BUTTON_MIDDLE](#sdl_button_middle)
* [SDL_BUTTON_RIGHT](#sdl_button_right)
* [SDL_BUTTON_X1](#sdl_button_x1)
* [SDL_BUTTON_X2](#sdl_button_x2)
* [SDL_BUTTON_LMASK](#sdl_button_lmask)
* [SDL_BUTTON_MMASK](#sdl_button_mmask)
* [SDL_BUTTON_RMASK](#sdl_button_rmask)
* [SDL_BUTTON_X1MASK](#sdl_button_x1mask)
* [SDL_BUTTON_X2MASK](#sdl_button_x2mask)
* [SDL_JOYSTICK_AXIS_MAX](#sdl_joystick_axis_max)
* [SDL_JOYSTICK_AXIS_MIN](#sdl_joystick_axis_min)
* [SDL_HAT_CENTERED](#sdl_hat_centered)
* [SDL_HAT_UP](#sdl_hat_up)
* [SDL_HAT_RIGHT](#sdl_hat_right)
* [SDL_HAT_DOWN](#sdl_hat_down)
* [SDL_HAT_LEFT](#sdl_hat_left)
* [SDL_HAT_RIGHTUP](#sdl_hat_rightup)
* [SDL_HAT_RIGHTDOWN](#sdl_hat_rightdown)
* [SDL_HAT_LEFTUP](#sdl_hat_leftup)
* [SDL_HAT_LEFTDOWN](#sdl_hat_leftdown)
* [SDL_STANDARD_GRAVITY](#sdl_standard_gravity)
* [SDL_TOUCH_MOUSEID](#sdl_touch_mouseid)
* [SDL_MOUSE_TOUCHID](#sdl_mouse_touchid)
* [SDL_RELEASED](#sdl_released)
* [SDL_PRESSED](#sdl_pressed)
* [SDL_TEXTEDITINGEVENT_TEXT_SIZE](#sdl_texteditingevent_text_size)
* [SDL_TEXTINPUTEVENT_TEXT_SIZE](#sdl_textinputevent_text_size)
* [SDL_QUERY](#sdl_query)
* [SDL_IGNORE](#sdl_ignore)
* [SDL_DISABLE](#sdl_disable)
* [SDL_ENABLE](#sdl_enable)
* [SDL_HAPTIC_CONSTANT](#sdl_haptic_constant)
* [SDL_HAPTIC_SINE](#sdl_haptic_sine)
* [SDL_HAPTIC_LEFTRIGHT](#sdl_haptic_leftright)
* [SDL_HAPTIC_TRIANGLE](#sdl_haptic_triangle)
* [SDL_HAPTIC_SAWTOOTHUP](#sdl_haptic_sawtoothup)
* [SDL_HAPTIC_SAWTOOTHDOWN](#sdl_haptic_sawtoothdown)
* [SDL_HAPTIC_RAMP](#sdl_haptic_ramp)
* [SDL_HAPTIC_SPRING](#sdl_haptic_spring)
* [SDL_HAPTIC_DAMPER](#sdl_haptic_damper)
* [SDL_HAPTIC_INERTIA](#sdl_haptic_inertia)
* [SDL_HAPTIC_FRICTION](#sdl_haptic_friction)
* [SDL_HAPTIC_CUSTOM](#sdl_haptic_custom)
* [SDL_HAPTIC_GAIN](#sdl_haptic_gain)
* [SDL_HAPTIC_AUTOCENTER](#sdl_haptic_autocenter)
* [SDL_HAPTIC_STATUS](#sdl_haptic_status)
* [SDL_HAPTIC_PAUSE](#sdl_haptic_pause)
* [SDL_HAPTIC_POLAR](#sdl_haptic_polar)
* [SDL_HAPTIC_CARTESIAN](#sdl_haptic_cartesian)
* [SDL_HAPTIC_SPHERICAL](#sdl_haptic_spherical)
* [SDL_HAPTIC_STEERING_AXIS](#sdl_haptic_steering_axis)
* [SDL_HAPTIC_INFINITY](#sdl_haptic_infinity)
* [SDL_HINT_ACCELEROMETER_AS_JOYSTICK](#sdl_hint_accelerometer_as_joystick)
* [SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED](#sdl_hint_allow_alt_tab_while_grabbed)
* [SDL_HINT_ALLOW_TOPMOST](#sdl_hint_allow_topmost)
* [SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION](#sdl_hint_android_apk_expansion_main_file_version)
* [SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION](#sdl_hint_android_apk_expansion_patch_file_version)
* [SDL_HINT_ANDROID_BLOCK_ON_PAUSE](#sdl_hint_android_block_on_pause)
* [SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO](#sdl_hint_android_block_on_pause_pauseaudio)
* [SDL_HINT_ANDROID_TRAP_BACK_BUTTON](#sdl_hint_android_trap_back_button)
* [SDL_HINT_APP_NAME](#sdl_hint_app_name)
* [SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS](#sdl_hint_apple_tv_controller_ui_events)
* [SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION](#sdl_hint_apple_tv_remote_allow_rotation)
* [SDL_HINT_AUDIO_CATEGORY](#sdl_hint_audio_category)
* [SDL_HINT_AUDIO_DEVICE_APP_NAME](#sdl_hint_audio_device_app_name)
* [SDL_HINT_AUDIO_DEVICE_STREAM_NAME](#sdl_hint_audio_device_stream_name)
* [SDL_HINT_AUDIO_DEVICE_STREAM_ROLE](#sdl_hint_audio_device_stream_role)
* [SDL_HINT_AUDIO_RESAMPLING_MODE](#sdl_hint_audio_resampling_mode)
* [SDL_HINT_AUTO_UPDATE_JOYSTICKS](#sdl_hint_auto_update_joysticks)
* [SDL_HINT_AUTO_UPDATE_SENSORS](#sdl_hint_auto_update_sensors)
* [SDL_HINT_BMP_SAVE_LEGACY_FORMAT](#sdl_hint_bmp_save_legacy_format)
* [SDL_HINT_DISPLAY_USABLE_BOUNDS](#sdl_hint_display_usable_bounds)
* [SDL_HINT_EMSCRIPTEN_ASYNCIFY](#sdl_hint_emscripten_asyncify)
* [SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT](#sdl_hint_emscripten_keyboard_element)
* [SDL_HINT_ENABLE_STEAM_CONTROLLERS](#sdl_hint_enable_steam_controllers)
* [SDL_HINT_EVENT_LOGGING](#sdl_hint_event_logging)
* [SDL_HINT_FORCE_RAISEWINDOW](#sdl_hint_force_raisewindow)
* [SDL_HINT_FRAMEBUFFER_ACCELERATION](#sdl_hint_framebuffer_acceleration)
* [SDL_HINT_GAMECONTROLLERCONFIG](#sdl_hint_gamecontrollerconfig)
* [SDL_HINT_GAMECONTROLLERCONFIG_FILE](#sdl_hint_gamecontrollerconfig_file)
* [SDL_HINT_GAMECONTROLLERTYPE](#sdl_hint_gamecontrollertype)
* [SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES](#sdl_hint_gamecontroller_ignore_devices)
* [SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT](#sdl_hint_gamecontroller_ignore_devices_except)
* [SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS](#sdl_hint_gamecontroller_use_button_labels)
* [SDL_HINT_GRAB_KEYBOARD](#sdl_hint_grab_keyboard)
* [SDL_HINT_HIDAPI_IGNORE_DEVICES](#sdl_hint_hidapi_ignore_devices)
* [SDL_HINT_IDLE_TIMER_DISABLED](#sdl_hint_idle_timer_disabled)
* [SDL_HINT_IME_INTERNAL_EDITING](#sdl_hint_ime_internal_editing)
* [SDL_HINT_IME_SHOW_UI](#sdl_hint_ime_show_ui)
* [SDL_HINT_IME_SUPPORT_EXTENDED_TEXT](#sdl_hint_ime_support_extended_text)
* [SDL_HINT_IOS_HIDE_HOME_INDICATOR](#sdl_hint_ios_hide_home_indicator)
* [SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS](#sdl_hint_joystick_allow_background_events)
* [SDL_HINT_JOYSTICK_HIDAPI](#sdl_hint_joystick_hidapi)
* [SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE](#sdl_hint_joystick_hidapi_gamecube)
* [SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE](#sdl_hint_joystick_gamecube_rumble_brake)
* [SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS](#sdl_hint_joystick_hidapi_joy_cons)
* [SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS](#sdl_hint_joystick_hidapi_combine_joy_cons)
* [SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS](#sdl_hint_joystick_hidapi_vertical_joy_cons)
* [SDL_HINT_JOYSTICK_HIDAPI_LUNA](#sdl_hint_joystick_hidapi_luna)
* [SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC](#sdl_hint_joystick_hidapi_nintendo_classic)
* [SDL_HINT_JOYSTICK_HIDAPI_SHIELD](#sdl_hint_joystick_hidapi_shield)
* [SDL_HINT_JOYSTICK_HIDAPI_PS3](#sdl_hint_joystick_hidapi_ps3)
* [SDL_HINT_JOYSTICK_HIDAPI_PS4](#sdl_hint_joystick_hidapi_ps4)
* [SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE](#sdl_hint_joystick_hidapi_ps4_rumble)
* [SDL_HINT_JOYSTICK_HIDAPI_PS5](#sdl_hint_joystick_hidapi_ps5)
* [SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED](#sdl_hint_joystick_hidapi_ps5_player_led)
* [SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE](#sdl_hint_joystick_hidapi_ps5_rumble)
* [SDL_HINT_JOYSTICK_HIDAPI_STADIA](#sdl_hint_joystick_hidapi_stadia)
* [SDL_HINT_JOYSTICK_HIDAPI_STEAM](#sdl_hint_joystick_hidapi_steam)
* [SDL_HINT_JOYSTICK_HIDAPI_SWITCH](#sdl_hint_joystick_hidapi_switch)
* [SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED](#sdl_hint_joystick_hidapi_switch_home_led)
* [SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED](#sdl_hint_joystick_hidapi_joycon_home_led)
* [SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED](#sdl_hint_joystick_hidapi_switch_player_led)
* [SDL_HINT_JOYSTICK_HIDAPI_WII](#sdl_hint_joystick_hidapi_wii)
* [SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED](#sdl_hint_joystick_hidapi_wii_player_led)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX](#sdl_hint_joystick_hidapi_xbox)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX_360](#sdl_hint_joystick_hidapi_xbox_360)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED](#sdl_hint_joystick_hidapi_xbox_360_player_led)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS](#sdl_hint_joystick_hidapi_xbox_360_wireless)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE](#sdl_hint_joystick_hidapi_xbox_one)
* [SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED](#sdl_hint_joystick_hidapi_xbox_one_home_led)
* [SDL_HINT_JOYSTICK_RAWINPUT](#sdl_hint_joystick_rawinput)
* [SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT](#sdl_hint_joystick_rawinput_correlate_xinput)
* [SDL_HINT_JOYSTICK_ROG_CHAKRAM](#sdl_hint_joystick_rog_chakram)
* [SDL_HINT_JOYSTICK_THREAD](#sdl_hint_joystick_thread)
* [SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER](#sdl_hint_kmsdrm_require_drm_master)
* [SDL_HINT_JOYSTICK_DEVICE](#sdl_hint_joystick_device)
* [SDL_HINT_LINUX_DIGITAL_HATS](#sdl_hint_linux_digital_hats)
* [SDL_HINT_LINUX_HAT_DEADZONES](#sdl_hint_linux_hat_deadzones)
* [SDL_HINT_LINUX_JOYSTICK_CLASSIC](#sdl_hint_linux_joystick_classic)
* [SDL_HINT_LINUX_JOYSTICK_DEADZONES](#sdl_hint_linux_joystick_deadzones)
* [SDL_HINT_MAC_BACKGROUND_APP](#sdl_hint_mac_background_app)
* [SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK](#sdl_hint_mac_ctrl_click_emulate_right_click)
* [SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH](#sdl_hint_mac_opengl_async_dispatch)
* [SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS](#sdl_hint_mouse_double_click_radius)
* [SDL_HINT_MOUSE_DOUBLE_CLICK_TIME](#sdl_hint_mouse_double_click_time)
* [SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH](#sdl_hint_mouse_focus_clickthrough)
* [SDL_HINT_MOUSE_NORMAL_SPEED_SCALE](#sdl_hint_mouse_normal_speed_scale)
* [SDL_HINT_MOUSE_RELATIVE_MODE_CENTER](#sdl_hint_mouse_relative_mode_center)
* [SDL_HINT_MOUSE_RELATIVE_MODE_WARP](#sdl_hint_mouse_relative_mode_warp)
* [SDL_HINT_MOUSE_RELATIVE_SCALING](#sdl_hint_mouse_relative_scaling)
* [SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE](#sdl_hint_mouse_relative_speed_scale)
* [SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE](#sdl_hint_mouse_relative_system_scale)
* [SDL_HINT_MOUSE_RELATIVE_WARP_MOTION](#sdl_hint_mouse_relative_warp_motion)
* [SDL_HINT_MOUSE_TOUCH_EVENTS](#sdl_hint_mouse_touch_events)
* [SDL_HINT_MOUSE_AUTO_CAPTURE](#sdl_hint_mouse_auto_capture)
* [SDL_HINT_NO_SIGNAL_HANDLERS](#sdl_hint_no_signal_handlers)
* [SDL_HINT_OPENGL_ES_DRIVER](#sdl_hint_opengl_es_driver)
* [SDL_HINT_ORIENTATIONS](#sdl_hint_orientations)
* [SDL_HINT_POLL_SENTINEL](#sdl_hint_poll_sentinel)
* [SDL_HINT_PREFERRED_LOCALES](#sdl_hint_preferred_locales)
* [SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION](#sdl_hint_qtwayland_content_orientation)
* [SDL_HINT_QTWAYLAND_WINDOW_FLAGS](#sdl_hint_qtwayland_window_flags)
* [SDL_HINT_RENDER_BATCHING](#sdl_hint_render_batching)
* [SDL_HINT_RENDER_LINE_METHOD](#sdl_hint_render_line_method)
* [SDL_HINT_RENDER_DIRECT3D11_DEBUG](#sdl_hint_render_direct3d11_debug)
* [SDL_HINT_RENDER_DIRECT3D_THREADSAFE](#sdl_hint_render_direct3d_threadsafe)
* [SDL_HINT_RENDER_DRIVER](#sdl_hint_render_driver)
* [SDL_HINT_RENDER_LOGICAL_SIZE_MODE](#sdl_hint_render_logical_size_mode)
* [SDL_HINT_RENDER_OPENGL_SHADERS](#sdl_hint_render_opengl_shaders)
* [SDL_HINT_RENDER_SCALE_QUALITY](#sdl_hint_render_scale_quality)
* [SDL_HINT_RENDER_VSYNC](#sdl_hint_render_vsync)
* [SDL_HINT_PS2_DYNAMIC_VSYNC](#sdl_hint_ps2_dynamic_vsync)
* [SDL_HINT_RETURN_KEY_HIDES_IME](#sdl_hint_return_key_hides_ime)
* [SDL_HINT_RPI_VIDEO_LAYER](#sdl_hint_rpi_video_layer)
* [SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME](#sdl_hint_screensaver_inhibit_activity_name)
* [SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL](#sdl_hint_thread_force_realtime_time_critical)
* [SDL_HINT_THREAD_PRIORITY_POLICY](#sdl_hint_thread_priority_policy)
* [SDL_HINT_THREAD_STACK_SIZE](#sdl_hint_thread_stack_size)
* [SDL_HINT_TIMER_RESOLUTION](#sdl_hint_timer_resolution)
* [SDL_HINT_TOUCH_MOUSE_EVENTS](#sdl_hint_touch_mouse_events)
* [SDL_HINT_VITA_TOUCH_MOUSE_DEVICE](#sdl_hint_vita_touch_mouse_device)
* [SDL_HINT_TV_REMOTE_AS_JOYSTICK](#sdl_hint_tv_remote_as_joystick)
* [SDL_HINT_VIDEO_ALLOW_SCREENSAVER](#sdl_hint_video_allow_screensaver)
* [SDL_HINT_VIDEO_DOUBLE_BUFFER](#sdl_hint_video_double_buffer)
* [SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY](#sdl_hint_video_egl_allow_transparency)
* [SDL_HINT_VIDEO_EXTERNAL_CONTEXT](#sdl_hint_video_external_context)
* [SDL_HINT_VIDEO_HIGHDPI_DISABLED](#sdl_hint_video_highdpi_disabled)
* [SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES](#sdl_hint_video_mac_fullscreen_spaces)
* [SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS](#sdl_hint_video_minimize_on_focus_loss)
* [SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR](#sdl_hint_video_wayland_allow_libdecor)
* [SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR](#sdl_hint_video_wayland_prefer_libdecor)
* [SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION](#sdl_hint_video_wayland_mode_emulation)
* [SDL_HINT_VIDEO_WAYLAND_EMULATE_MOUSE_WARP](#sdl_hint_video_wayland_emulate_mouse_warp)
* [SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT](#sdl_hint_video_window_share_pixel_format)
* [SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL](#sdl_hint_video_foreign_window_opengl)
* [SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN](#sdl_hint_video_foreign_window_vulkan)
* [SDL_HINT_VIDEO_WIN_D3DCOMPILER](#sdl_hint_video_win_d3dcompiler)
* [SDL_HINT_VIDEO_X11_FORCE_EGL](#sdl_hint_video_x11_force_egl)
* [SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR](#sdl_hint_video_x11_net_wm_bypass_compositor)
* [SDL_HINT_VIDEO_X11_NET_WM_PING](#sdl_hint_video_x11_net_wm_ping)
* [SDL_HINT_VIDEO_X11_WINDOW_VISUALID](#sdl_hint_video_x11_window_visualid)
* [SDL_HINT_VIDEO_X11_XINERAMA](#sdl_hint_video_x11_xinerama)
* [SDL_HINT_VIDEO_X11_XRANDR](#sdl_hint_video_x11_xrandr)
* [SDL_HINT_VIDEO_X11_XVIDMODE](#sdl_hint_video_x11_xvidmode)
* [SDL_HINT_WAVE_FACT_CHUNK](#sdl_hint_wave_fact_chunk)
* [SDL_HINT_WAVE_RIFF_CHUNK_SIZE](#sdl_hint_wave_riff_chunk_size)
* [SDL_HINT_WAVE_TRUNCATION](#sdl_hint_wave_truncation)
* [SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING](#sdl_hint_windows_disable_thread_naming)
* [SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP](#sdl_hint_windows_enable_messageloop)
* [SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS](#sdl_hint_windows_force_mutex_critical_sections)
* [SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL](#sdl_hint_windows_force_semaphore_kernel)
* [SDL_HINT_WINDOWS_INTRESOURCE_ICON](#sdl_hint_windows_intresource_icon)
* [SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL](#sdl_hint_windows_intresource_icon_small)
* [SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4](#sdl_hint_windows_no_close_on_alt_f4)
* [SDL_HINT_WINDOWS_USE_D3D9EX](#sdl_hint_windows_use_d3d9ex)
* [SDL_HINT_WINDOWS_DPI_AWARENESS](#sdl_hint_windows_dpi_awareness)
* [SDL_HINT_WINDOWS_DPI_SCALING](#sdl_hint_windows_dpi_scaling)
* [SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN](#sdl_hint_window_frame_usable_while_cursor_hidden)
* [SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN](#sdl_hint_window_no_activation_when_shown)
* [SDL_HINT_WINRT_HANDLE_BACK_BUTTON](#sdl_hint_winrt_handle_back_button)
* [SDL_HINT_WINRT_PRIVACY_POLICY_LABEL](#sdl_hint_winrt_privacy_policy_label)
* [SDL_HINT_WINRT_PRIVACY_POLICY_URL](#sdl_hint_winrt_privacy_policy_url)
* [SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT](#sdl_hint_x11_force_override_redirect)
* [SDL_HINT_XINPUT_ENABLED](#sdl_hint_xinput_enabled)
* [SDL_HINT_DIRECTINPUT_ENABLED](#sdl_hint_directinput_enabled)
* [SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING](#sdl_hint_xinput_use_old_joystick_mapping)
* [SDL_HINT_AUDIO_INCLUDE_MONITORS](#sdl_hint_audio_include_monitors)
* [SDL_HINT_X11_WINDOW_TYPE](#sdl_hint_x11_window_type)
* [SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE](#sdl_hint_quit_on_last_window_close)
* [SDL_HINT_VIDEODRIVER](#sdl_hint_videodriver)
* [SDL_HINT_AUDIODRIVER](#sdl_hint_audiodriver)
* [SDL_HINT_KMSDRM_DEVICE_INDEX](#sdl_hint_kmsdrm_device_index)
* [SDL_HINT_TRACKPAD_IS_TOUCH_ONLY](#sdl_hint_trackpad_is_touch_only)
* [SDL_MAX_LOG_MESSAGE](#sdl_max_log_message)
* [SDL_NONSHAPEABLE_WINDOW](#sdl_nonshapeable_window)
* [SDL_INVALID_SHAPE_ARGUMENT](#sdl_invalid_shape_argument)
* [SDL_WINDOW_LACKS_SHAPE](#sdl_window_lacks_shape)
* [SDL_MAJOR_VERSION](#sdl_major_version)
* [SDL_MINOR_VERSION](#sdl_minor_version)
* [SDL_PATCHLEVEL](#sdl_patchlevel)
* [SDL_COMPILEDVERSION](#sdl_compiledversion)
* [SDL_INIT_TIMER](#sdl_init_timer)
* [SDL_INIT_AUDIO](#sdl_init_audio)
* [SDL_INIT_VIDEO](#sdl_init_video)
* [SDL_INIT_JOYSTICK](#sdl_init_joystick)
* [SDL_INIT_HAPTIC](#sdl_init_haptic)
* [SDL_INIT_GAMECONTROLLER](#sdl_init_gamecontroller)
* [SDL_INIT_EVENTS](#sdl_init_events)
* [SDL_INIT_SENSOR](#sdl_init_sensor)
* [SDL_INIT_NOPARACHUTE](#sdl_init_noparachute)
* [SDL_INIT_EVERYTHING](#sdl_init_everything)
* [SDL_BlitSurface](#sdl_blitsurface)
* [SDL_BlitScaled](#sdl_blitscaled)
* [SDL_TriggerBreakpoint](#sdl_triggerbreakpoint)
* [SDL_CompilerBarrier](#sdl_compilerbarrier)
* [SDL_MemoryBarrierRelease](#sdl_memorybarrierrelease)
* [SDL_MemoryBarrierAcquire](#sdl_memorybarrieracquire)
* [SDL_AtomicIncRef](#sdl_atomicincref)
* [SDL_AtomicDecRef](#sdl_atomicdecref)
* [SDL_OutOfMemory](#sdl_outofmemory)
* [SDL_Unsupported](#sdl_unsupported)
* [SDL_InvalidParamError](#sdl_invalidparamerror)
* [SDL_SwapLE16](#sdl_swaple16)
* [SDL_SwapLE32](#sdl_swaple32)
* [SDL_SwapLE64](#sdl_swaple64)
* [SDL_SwapFloatLE](#sdl_swapfloatle)
* [SDL_SwapBE16](#sdl_swapbe16)
* [SDL_SwapBE32](#sdl_swapbe32)
* [SDL_SwapBE64](#sdl_swapbe64)
* [SDL_SwapFloatBE](#sdl_swapfloatbe)
* [SDL_LoadWAV](#sdl_loadwav)
* [SDL_LoadBMP](#sdl_loadbmp)
* [SDL_SaveBMP](#sdl_savebmp)
* [SDL_GameControllerAddMappingsFromFile](#sdl_gamecontrolleraddmappingsfromfile)
* [SDL_QuitRequested](#sdl_quitrequested)
* [SDL_GetEventState](#sdl_geteventstate)
* [SDL_AUDIO_BITSIZE](#sdl_audio_bitsize)
* [SDL_AUDIO_ISFLOAT](#sdl_audio_isfloat)
* [SDL_AUDIO_ISBIGENDIAN](#sdl_audio_isbigendian)
* [SDL_AUDIO_ISSIGNED](#sdl_audio_issigned)
* [SDL_AUDIO_ISINT](#sdl_audio_isint)
* [SDL_AUDIO_ISLITTLEENDIAN](#sdl_audio_islittleendian)
* [SDL_AUDIO_ISUNSIGNED](#sdl_audio_isunsigned)
* [SDL_PIXELFLAG](#sdl_pixelflag)
* [SDL_PIXELTYPE](#sdl_pixeltype)
* [SDL_PIXELORDER](#sdl_pixelorder)
* [SDL_PIXELLAYOUT](#sdl_pixellayout)
* [SDL_BITSPERPIXEL](#sdl_bitsperpixel)
* [SDL_BYTESPERPIXEL](#sdl_bytesperpixel)
* [SDL_ISPIXELFORMAT_INDEXED](#sdl_ispixelformat_indexed)
* [SDL_ISPIXELFORMAT_PACKED](#sdl_ispixelformat_packed)
* [SDL_ISPIXELFORMAT_ARRAY](#sdl_ispixelformat_array)
* [SDL_ISPIXELFORMAT_ALPHA](#sdl_ispixelformat_alpha)
* [SDL_ISPIXELFORMAT_FOURCC](#sdl_ispixelformat_fourcc)
* [SDL_WINDOWPOS_ISUNDEFINED](#sdl_windowpos_isundefined)
* [SDL_WINDOWPOS_ISCENTERED](#sdl_windowpos_iscentered)
* [SDL_MUSTLOCK](#sdl_mustlock)
* [SDL_SCANCODE_TO_KEYCODE](#sdl_scancode_to_keycode)
* [SDL_SHAPEMODEALPHA](#sdl_shapemodealpha)
* [SDL_VERSION](#sdl_version)
* [SDL_VERSION_ATLEAST](#sdl_version_atleast)

### SDL_GetPlatform

```lua
global function SDL_GetPlatform(): cstring
```



### FILE

```lua
global FILE: type = @record{}
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
global function SDL_free(mem: pointer): void
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
global SDL_free_func: type = @function(pointer): void
```



### SDL_GetOriginalMemoryFunctions

```lua
global function SDL_GetOriginalMemoryFunctions(malloc_func: *SDL_malloc_func, calloc_func: *SDL_calloc_func, realloc_func: *SDL_realloc_func, free_func: *SDL_free_func): void
```



### SDL_GetMemoryFunctions

```lua
global function SDL_GetMemoryFunctions(malloc_func: *SDL_malloc_func, calloc_func: *SDL_calloc_func, realloc_func: *SDL_realloc_func, free_func: *SDL_free_func): void
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
global function SDL_qsort(base: pointer, nmemb: csize, size: csize, compare: function(pointer, pointer): cint): void
```



### SDL_bsearch

```lua
global function SDL_bsearch(key: pointer, base: pointer, nmemb: csize, size: csize, compare: function(pointer, pointer): cint): pointer
```



### SDL_abs

```lua
global function SDL_abs(x: cint): cint
```



### SDL_isalpha

```lua
global function SDL_isalpha(x: cint): cint
```



### SDL_isalnum

```lua
global function SDL_isalnum(x: cint): cint
```



### SDL_isblank

```lua
global function SDL_isblank(x: cint): cint
```



### SDL_iscntrl

```lua
global function SDL_iscntrl(x: cint): cint
```



### SDL_isdigit

```lua
global function SDL_isdigit(x: cint): cint
```



### SDL_isxdigit

```lua
global function SDL_isxdigit(x: cint): cint
```



### SDL_ispunct

```lua
global function SDL_ispunct(x: cint): cint
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



### SDL_isprint

```lua
global function SDL_isprint(x: cint): cint
```



### SDL_isgraph

```lua
global function SDL_isgraph(x: cint): cint
```



### SDL_toupper

```lua
global function SDL_toupper(x: cint): cint
```



### SDL_tolower

```lua
global function SDL_tolower(x: cint): cint
```



### SDL_crc16

```lua
global function SDL_crc16(crc: uint16, data: pointer, len: csize): uint16
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
global function SDL_memset4(dst: pointer, val: uint32, dwords: csize): void
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
global function SDL_wcslen(wstr: *cwchar_t): csize
```



### SDL_wcslcpy

```lua
global function SDL_wcslcpy(dst: *cwchar_t, src: *cwchar_t, maxlen: csize): csize
```



### SDL_wcslcat

```lua
global function SDL_wcslcat(dst: *cwchar_t, src: *cwchar_t, maxlen: csize): csize
```



### SDL_wcsdup

```lua
global function SDL_wcsdup(wstr: *cwchar_t): *cwchar_t
```



### SDL_wcsstr

```lua
global function SDL_wcsstr(haystack: *cwchar_t, needle: *cwchar_t): *cwchar_t
```



### SDL_wcscmp

```lua
global function SDL_wcscmp(str1: *cwchar_t, str2: *cwchar_t): cint
```



### SDL_wcsncmp

```lua
global function SDL_wcsncmp(str1: *cwchar_t, str2: *cwchar_t, maxlen: csize): cint
```



### SDL_wcscasecmp

```lua
global function SDL_wcscasecmp(str1: *cwchar_t, str2: *cwchar_t): cint
```



### SDL_wcsncasecmp

```lua
global function SDL_wcsncasecmp(str1: *cwchar_t, str2: *cwchar_t, len: csize): cint
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



### SDL_strcasestr

```lua
global function SDL_strcasestr(haystack: cstring, needle: cstring): cstring
```



### SDL_strtokr

```lua
global function SDL_strtokr(s1: cstring, s2: cstring, saveptr: *cstring): cstring
```



### SDL_utf8strlen

```lua
global function SDL_utf8strlen(str: cstring): csize
```



### SDL_utf8strnlen

```lua
global function SDL_utf8strnlen(str: cstring, bytes: csize): csize
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



### SDL_asprintf

```lua
global function SDL_asprintf(strp: *cstring, fmt: cstring, ...: cvarargs): cint
```



### SDL_vasprintf

```lua
global function SDL_vasprintf(strp: *cstring, fmt: cstring, ap: cvalist): cint
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
global function SDL_atan2(y: float64, x: float64): float64
```



### SDL_atan2f

```lua
global function SDL_atan2f(y: float32, x: float32): float32
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



### SDL_round

```lua
global function SDL_round(x: float64): float64
```



### SDL_roundf

```lua
global function SDL_roundf(x: float32): float32
```



### SDL_lround

```lua
global function SDL_lround(x: float64): clong
```



### SDL_lroundf

```lua
global function SDL_lroundf(x: float32): clong
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



### SDL_size_mul_overflow

```lua
global function SDL_size_mul_overflow(a: csize, b: csize, ret: *csize): cint
```



### SDL_size_add_overflow

```lua
global function SDL_size_add_overflow(a: csize, b: csize, ret: *csize): cint
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
global function SDL_SetMainReady(): void
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
global function SDL_SetAssertionHandler(handler: SDL_AssertionHandler, userdata: pointer): void
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
global function SDL_ResetAssertionReport(): void
```



### SDL_AtomicTryLock

```lua
global function SDL_AtomicTryLock(lock: *cint): SDL_bool
```



### SDL_AtomicLock

```lua
global function SDL_AtomicLock(lock: *cint): void
```



### SDL_AtomicUnlock

```lua
global function SDL_AtomicUnlock(lock: *cint): void
```



### SDL_MemoryBarrierReleaseFunction

```lua
global function SDL_MemoryBarrierReleaseFunction(): void
```



### SDL_MemoryBarrierAcquireFunction

```lua
global function SDL_MemoryBarrierAcquireFunction(): void
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
global function SDL_ClearError(): void
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
global function SDL_DestroyMutex(mutex: *SDL_mutex): void
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
global function SDL_DestroySemaphore(sem: *SDL_sem): void
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
global function SDL_DestroyCond(cond: *SDL_cond): void
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
global function SDL_WaitThread(thread: *SDL_Thread, status: *cint): void
```



### SDL_DetachThread

```lua
global function SDL_DetachThread(thread: *SDL_Thread): void
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
global function SDL_TLSSet(id: cuint, value: pointer, destructor: function(pointer): void): cint
```



### SDL_TLSCleanup

```lua
global function SDL_TLSCleanup(): void
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
global function SDL_FreeRW(area: *SDL_RWops): void
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
global SDL_AudioCallback: type = @function(pointer, *uint8, cint): void
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
global SDL_AudioFilter: type = @function(*SDL_AudioCVT, cushort): void
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
global function SDL_AudioQuit(): void
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



### SDL_GetAudioDeviceSpec

```lua
global function SDL_GetAudioDeviceSpec(index: cint, iscapture: cint, spec: *SDL_AudioSpec): cint
```



### SDL_GetDefaultAudioInfo

```lua
global function SDL_GetDefaultAudioInfo(name: *cstring, spec: *SDL_AudioSpec, iscapture: cint): cint
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
global function SDL_PauseAudio(pause_on: cint): void
```



### SDL_PauseAudioDevice

```lua
global function SDL_PauseAudioDevice(dev: cuint, pause_on: cint): void
```



### SDL_LoadWAV_RW

```lua
global function SDL_LoadWAV_RW(src: *SDL_RWops, freesrc: cint, spec: *SDL_AudioSpec, audio_buf: **uint8, audio_len: *uint32): *SDL_AudioSpec
```



### SDL_FreeWAV

```lua
global function SDL_FreeWAV(audio_buf: *uint8): void
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
global function SDL_AudioStreamClear(stream: *SDL_AudioStream): void
```



### SDL_FreeAudioStream

```lua
global function SDL_FreeAudioStream(stream: *SDL_AudioStream): void
```



### SDL_MixAudio

```lua
global function SDL_MixAudio(dst: *uint8, src: *uint8, len: uint32, volume: cint): void
```



### SDL_MixAudioFormat

```lua
global function SDL_MixAudioFormat(dst: *uint8, src: *uint8, format: cushort, len: uint32, volume: cint): void
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
global function SDL_ClearQueuedAudio(dev: cuint): void
```



### SDL_LockAudio

```lua
global function SDL_LockAudio(): void
```



### SDL_LockAudioDevice

```lua
global function SDL_LockAudioDevice(dev: cuint): void
```



### SDL_UnlockAudio

```lua
global function SDL_UnlockAudio(): void
```



### SDL_UnlockAudioDevice

```lua
global function SDL_UnlockAudioDevice(dev: cuint): void
```



### SDL_CloseAudio

```lua
global function SDL_CloseAudio(): void
```



### SDL_CloseAudioDevice

```lua
global function SDL_CloseAudioDevice(dev: cuint): void
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



### SDL_SetPrimarySelectionText

```lua
global function SDL_SetPrimarySelectionText(text: cstring): cint
```



### SDL_GetPrimarySelectionText

```lua
global function SDL_GetPrimarySelectionText(): cstring
```



### SDL_HasPrimarySelectionText

```lua
global function SDL_HasPrimarySelectionText(): SDL_bool
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



### SDL_HasLSX

```lua
global function SDL_HasLSX(): SDL_bool
```



### SDL_HasLASX

```lua
global function SDL_HasLASX(): SDL_bool
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
global function SDL_SIMDFree(ptr: pointer): void
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
global function SDL_FreeFormat(format: *SDL_PixelFormat): void
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
global function SDL_FreePalette(palette: *SDL_Palette): void
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
global function SDL_GetRGB(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8): void
```



### SDL_GetRGBA

```lua
global function SDL_GetRGBA(pixel: uint32, format: *SDL_PixelFormat, r: *uint8, g: *uint8, b: *uint8, a: *uint8): void
```



### SDL_CalculateGammaRamp

```lua
global function SDL_CalculateGammaRamp(gamma: float32, ramp: *uint16): void
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
global function SDL_UnionRect(A: *SDL_Rect, B: *SDL_Rect, result: *SDL_Rect): void
```



### SDL_EnclosePoints

```lua
global function SDL_EnclosePoints(points: *SDL_Point, count: cint, clip: *SDL_Rect, result: *SDL_Rect): SDL_bool
```



### SDL_IntersectRectAndLine

```lua
global function SDL_IntersectRectAndLine(rect: *SDL_Rect, X1: *cint, Y1: *cint, X2: *cint, Y2: *cint): SDL_bool
```



### SDL_PointInFRect

```lua
global function SDL_PointInFRect(p: *SDL_FPoint, r: *SDL_FRect): SDL_bool
```



### SDL_FRectEmpty

```lua
global function SDL_FRectEmpty(r: *SDL_FRect): SDL_bool
```



### SDL_FRectEqualsEpsilon

```lua
global function SDL_FRectEqualsEpsilon(a: *SDL_FRect, b: *SDL_FRect, epsilon: float32): SDL_bool
```



### SDL_FRectEquals

```lua
global function SDL_FRectEquals(a: *SDL_FRect, b: *SDL_FRect): SDL_bool
```



### SDL_HasIntersectionF

```lua
global function SDL_HasIntersectionF(A: *SDL_FRect, B: *SDL_FRect): SDL_bool
```



### SDL_IntersectFRect

```lua
global function SDL_IntersectFRect(A: *SDL_FRect, B: *SDL_FRect, result: *SDL_FRect): SDL_bool
```



### SDL_UnionFRect

```lua
global function SDL_UnionFRect(A: *SDL_FRect, B: *SDL_FRect, result: *SDL_FRect): void
```



### SDL_EncloseFPoints

```lua
global function SDL_EncloseFPoints(points: *SDL_FPoint, count: cint, clip: *SDL_FRect, result: *SDL_FRect): SDL_bool
```



### SDL_IntersectFRectAndLine

```lua
global function SDL_IntersectFRectAndLine(rect: *SDL_FRect, X1: *float32, Y1: *float32, X2: *float32, Y2: *float32): SDL_bool
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
global function SDL_FreeSurface(surface: *SDL_Surface): void
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
global function SDL_UnlockSurface(surface: *SDL_Surface): void
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
global function SDL_GetClipRect(surface: *SDL_Surface, rect: *SDL_Rect): void
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



### SDL_PremultiplyAlpha

```lua
global function SDL_PremultiplyAlpha(width: cint, height: cint, src_format: uint32, src: pointer, src_pitch: cint, dst_format: uint32, dst: pointer, dst_pitch: cint): cint
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



### SDL_SoftStretchLinear

```lua
global function SDL_SoftStretchLinear(src: *SDL_Surface, srcrect: *SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect): cint
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
global function SDL_SetYUVConversionMode(mode: SDL_YUV_CONVERSION_MODE): void
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
  SDL_WINDOW_MOUSE_GRABBED = 256,
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
  SDL_WINDOW_KEYBOARD_GRABBED = 1048576,
  SDL_WINDOW_VULKAN = 268435456,
  SDL_WINDOW_METAL = 536870912,
  SDL_WINDOW_INPUT_GRABBED = 256
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
  SDL_WINDOWEVENT_HIT_TEST = 16,
  SDL_WINDOWEVENT_ICCPROF_CHANGED = 17,
  SDL_WINDOWEVENT_DISPLAY_CHANGED = 18
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



### SDL_FlashOperation

```lua
global SDL_FlashOperation: type = @enum(cint){
  SDL_FLASH_CANCEL = 0,
  SDL_FLASH_BRIEFLY = 1,
  SDL_FLASH_UNTIL_FOCUSED = 2
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
  SDL_GL_CONTEXT_NO_ERROR = 26,
  SDL_GL_FLOATBUFFERS = 27
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
global function SDL_VideoQuit(): void
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



### SDL_GetPointDisplayIndex

```lua
global function SDL_GetPointDisplayIndex(point: *SDL_Point): cint
```



### SDL_GetRectDisplayIndex

```lua
global function SDL_GetRectDisplayIndex(rect: *SDL_Rect): cint
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



### SDL_GetWindowICCProfile

```lua
global function SDL_GetWindowICCProfile(window: *SDL_Window, size: *csize): pointer
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
global function SDL_SetWindowTitle(window: *SDL_Window, title: cstring): void
```



### SDL_GetWindowTitle

```lua
global function SDL_GetWindowTitle(window: *SDL_Window): cstring
```



### SDL_SetWindowIcon

```lua
global function SDL_SetWindowIcon(window: *SDL_Window, icon: *SDL_Surface): void
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
global function SDL_SetWindowPosition(window: *SDL_Window, x: cint, y: cint): void
```



### SDL_GetWindowPosition

```lua
global function SDL_GetWindowPosition(window: *SDL_Window, x: *cint, y: *cint): void
```



### SDL_SetWindowSize

```lua
global function SDL_SetWindowSize(window: *SDL_Window, w: cint, h: cint): void
```



### SDL_GetWindowSize

```lua
global function SDL_GetWindowSize(window: *SDL_Window, w: *cint, h: *cint): void
```



### SDL_GetWindowBordersSize

```lua
global function SDL_GetWindowBordersSize(window: *SDL_Window, top: *cint, left: *cint, bottom: *cint, right: *cint): cint
```



### SDL_GetWindowSizeInPixels

```lua
global function SDL_GetWindowSizeInPixels(window: *SDL_Window, w: *cint, h: *cint): void
```



### SDL_SetWindowMinimumSize

```lua
global function SDL_SetWindowMinimumSize(window: *SDL_Window, min_w: cint, min_h: cint): void
```



### SDL_GetWindowMinimumSize

```lua
global function SDL_GetWindowMinimumSize(window: *SDL_Window, w: *cint, h: *cint): void
```



### SDL_SetWindowMaximumSize

```lua
global function SDL_SetWindowMaximumSize(window: *SDL_Window, max_w: cint, max_h: cint): void
```



### SDL_GetWindowMaximumSize

```lua
global function SDL_GetWindowMaximumSize(window: *SDL_Window, w: *cint, h: *cint): void
```



### SDL_SetWindowBordered

```lua
global function SDL_SetWindowBordered(window: *SDL_Window, bordered: SDL_bool): void
```



### SDL_SetWindowResizable

```lua
global function SDL_SetWindowResizable(window: *SDL_Window, resizable: SDL_bool): void
```



### SDL_SetWindowAlwaysOnTop

```lua
global function SDL_SetWindowAlwaysOnTop(window: *SDL_Window, on_top: SDL_bool): void
```



### SDL_ShowWindow

```lua
global function SDL_ShowWindow(window: *SDL_Window): void
```



### SDL_HideWindow

```lua
global function SDL_HideWindow(window: *SDL_Window): void
```



### SDL_RaiseWindow

```lua
global function SDL_RaiseWindow(window: *SDL_Window): void
```



### SDL_MaximizeWindow

```lua
global function SDL_MaximizeWindow(window: *SDL_Window): void
```



### SDL_MinimizeWindow

```lua
global function SDL_MinimizeWindow(window: *SDL_Window): void
```



### SDL_RestoreWindow

```lua
global function SDL_RestoreWindow(window: *SDL_Window): void
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
global function SDL_SetWindowGrab(window: *SDL_Window, grabbed: SDL_bool): void
```



### SDL_SetWindowKeyboardGrab

```lua
global function SDL_SetWindowKeyboardGrab(window: *SDL_Window, grabbed: SDL_bool): void
```



### SDL_SetWindowMouseGrab

```lua
global function SDL_SetWindowMouseGrab(window: *SDL_Window, grabbed: SDL_bool): void
```



### SDL_GetWindowGrab

```lua
global function SDL_GetWindowGrab(window: *SDL_Window): SDL_bool
```



### SDL_GetWindowKeyboardGrab

```lua
global function SDL_GetWindowKeyboardGrab(window: *SDL_Window): SDL_bool
```



### SDL_GetWindowMouseGrab

```lua
global function SDL_GetWindowMouseGrab(window: *SDL_Window): SDL_bool
```



### SDL_GetGrabbedWindow

```lua
global function SDL_GetGrabbedWindow(): *SDL_Window
```



### SDL_SetWindowMouseRect

```lua
global function SDL_SetWindowMouseRect(window: *SDL_Window, rect: *SDL_Rect): cint
```



### SDL_GetWindowMouseRect

```lua
global function SDL_GetWindowMouseRect(window: *SDL_Window): *SDL_Rect
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



### SDL_FlashWindow

```lua
global function SDL_FlashWindow(window: *SDL_Window, operation: SDL_FlashOperation): cint
```



### SDL_DestroyWindow

```lua
global function SDL_DestroyWindow(window: *SDL_Window): void
```



### SDL_IsScreenSaverEnabled

```lua
global function SDL_IsScreenSaverEnabled(): SDL_bool
```



### SDL_EnableScreenSaver

```lua
global function SDL_EnableScreenSaver(): void
```



### SDL_DisableScreenSaver

```lua
global function SDL_DisableScreenSaver(): void
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
global function SDL_GL_UnloadLibrary(): void
```



### SDL_GL_ExtensionSupported

```lua
global function SDL_GL_ExtensionSupported(extension: cstring): SDL_bool
```



### SDL_GL_ResetAttributes

```lua
global function SDL_GL_ResetAttributes(): void
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
global function SDL_GL_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint): void
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
global function SDL_GL_SwapWindow(window: *SDL_Window): void
```



### SDL_GL_DeleteContext

```lua
global function SDL_GL_DeleteContext(context: SDL_GLContext): void
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
  SDL_SCANCODE_SOFTLEFT = 287,
  SDL_SCANCODE_SOFTRIGHT = 288,
  SDL_SCANCODE_CALL = 289,
  SDL_SCANCODE_ENDCALL = 290,
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
  SDLK_AUDIOFASTFORWARD = 1073742110,
  SDLK_SOFTLEFT = 1073742111,
  SDLK_SOFTRIGHT = 1073742112,
  SDLK_CALL = 1073742113,
  SDLK_ENDCALL = 1073742114
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
  KMOD_SCROLL = 32768,
  KMOD_CTRL = 192,
  KMOD_SHIFT = 3,
  KMOD_ALT = 768,
  KMOD_GUI = 3072,
  KMOD_RESERVED = 32768
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



### SDL_ResetKeyboard

```lua
global function SDL_ResetKeyboard(): void
```



### SDL_GetModState

```lua
global function SDL_GetModState(): SDL_Keymod
```



### SDL_SetModState

```lua
global function SDL_SetModState(modstate: SDL_Keymod): void
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
global function SDL_StartTextInput(): void
```



### SDL_IsTextInputActive

```lua
global function SDL_IsTextInputActive(): SDL_bool
```



### SDL_StopTextInput

```lua
global function SDL_StopTextInput(): void
```



### SDL_ClearComposition

```lua
global function SDL_ClearComposition(): void
```



### SDL_IsTextInputShown

```lua
global function SDL_IsTextInputShown(): SDL_bool
```



### SDL_SetTextInputRect

```lua
global function SDL_SetTextInputRect(rect: *SDL_Rect): void
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
global function SDL_WarpMouseInWindow(window: *SDL_Window, x: cint, y: cint): void
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
global function SDL_SetCursor(cursor: *SDL_Cursor): void
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
global function SDL_FreeCursor(cursor: *SDL_Cursor): void
```



### SDL_ShowCursor

```lua
global function SDL_ShowCursor(toggle: cint): cint
```



### SDL_GUID

```lua
global SDL_GUID: type = @record{
  data: [16]uint8
}
```



### SDL_GUIDToString

```lua
global function SDL_GUIDToString(guid: SDL_GUID, pszGUID: cstring, cbGUID: cint): void
```



### SDL_GUIDFromString

```lua
global function SDL_GUIDFromString(pchGUID: cstring): SDL_GUID
```



### SDL_Joystick

```lua
global SDL_Joystick: type = @record{}
```



### SDL_JoystickGUID

```lua
global SDL_JoystickGUID: type = @SDL_GUID
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
global function SDL_LockJoysticks(): void
```



### SDL_UnlockJoysticks

```lua
global function SDL_UnlockJoysticks(): void
```



### SDL_NumJoysticks

```lua
global function SDL_NumJoysticks(): cint
```



### SDL_JoystickNameForIndex

```lua
global function SDL_JoystickNameForIndex(device_index: cint): cstring
```



### SDL_JoystickPathForIndex

```lua
global function SDL_JoystickPathForIndex(device_index: cint): cstring
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



### SDL_VirtualJoystickDesc

```lua
global SDL_VirtualJoystickDesc: type = @record{
  version: uint16,
  type: uint16,
  naxes: uint16,
  nbuttons: uint16,
  nhats: uint16,
  vendor_id: uint16,
  product_id: uint16,
  padding: uint16,
  button_mask: uint32,
  axis_mask: uint32,
  name: cstring,
  userdata: pointer,
  Update: function(pointer): void,
  SetPlayerIndex: function(pointer, cint): void,
  Rumble: function(pointer, uint16, uint16): cint,
  RumbleTriggers: function(pointer, uint16, uint16): cint,
  SetLED: function(pointer, uint8, uint8, uint8): cint,
  SendEffect: function(pointer, pointer, cint): cint
}
```



### SDL_JoystickAttachVirtualEx

```lua
global function SDL_JoystickAttachVirtualEx(desc: *SDL_VirtualJoystickDesc): cint
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



### SDL_JoystickPath

```lua
global function SDL_JoystickPath(joystick: *SDL_Joystick): cstring
```



### SDL_JoystickGetPlayerIndex

```lua
global function SDL_JoystickGetPlayerIndex(joystick: *SDL_Joystick): cint
```



### SDL_JoystickSetPlayerIndex

```lua
global function SDL_JoystickSetPlayerIndex(joystick: *SDL_Joystick, player_index: cint): void
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



### SDL_JoystickGetFirmwareVersion

```lua
global function SDL_JoystickGetFirmwareVersion(joystick: *SDL_Joystick): uint16
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
global function SDL_JoystickGetGUIDString(guid: SDL_JoystickGUID, pszGUID: cstring, cbGUID: cint): void
```



### SDL_JoystickGetGUIDFromString

```lua
global function SDL_JoystickGetGUIDFromString(pchGUID: cstring): SDL_JoystickGUID
```



### SDL_GetJoystickGUIDInfo

```lua
global function SDL_GetJoystickGUIDInfo(guid: SDL_JoystickGUID, vendor: *uint16, product: *uint16, version: *uint16, crc16: *uint16): void
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
global function SDL_JoystickUpdate(): void
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



### SDL_JoystickHasRumble

```lua
global function SDL_JoystickHasRumble(joystick: *SDL_Joystick): SDL_bool
```



### SDL_JoystickHasRumbleTriggers

```lua
global function SDL_JoystickHasRumbleTriggers(joystick: *SDL_Joystick): SDL_bool
```



### SDL_JoystickSetLED

```lua
global function SDL_JoystickSetLED(joystick: *SDL_Joystick, red: uint8, green: uint8, blue: uint8): cint
```



### SDL_JoystickSendEffect

```lua
global function SDL_JoystickSendEffect(joystick: *SDL_Joystick, data: pointer, size: cint): cint
```



### SDL_JoystickClose

```lua
global function SDL_JoystickClose(joystick: *SDL_Joystick): void
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
  SDL_SENSOR_GYRO = 2,
  SDL_SENSOR_ACCEL_L = 3,
  SDL_SENSOR_GYRO_L = 4,
  SDL_SENSOR_ACCEL_R = 5,
  SDL_SENSOR_GYRO_R = 6
}
```



### SDL_LockSensors

```lua
global function SDL_LockSensors(): void
```



### SDL_UnlockSensors

```lua
global function SDL_UnlockSensors(): void
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



### SDL_SensorGetDataWithTimestamp

```lua
global function SDL_SensorGetDataWithTimestamp(sensor: *SDL_Sensor, timestamp: *uint64, data: *float32, num_values: cint): cint
```



### SDL_SensorClose

```lua
global function SDL_SensorClose(sensor: *SDL_Sensor): void
```



### SDL_SensorUpdate

```lua
global function SDL_SensorUpdate(): void
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
  SDL_CONTROLLER_TYPE_PS5 = 7,
  SDL_CONTROLLER_TYPE_AMAZON_LUNA = 8,
  SDL_CONTROLLER_TYPE_GOOGLE_STADIA = 9,
  SDL_CONTROLLER_TYPE_NVIDIA_SHIELD = 10,
  SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 11,
  SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 12,
  SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 13
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



### SDL_GameControllerPathForIndex

```lua
global function SDL_GameControllerPathForIndex(joystick_index: cint): cstring
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



### SDL_GameControllerPath

```lua
global function SDL_GameControllerPath(gamecontroller: *SDL_GameController): cstring
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
global function SDL_GameControllerSetPlayerIndex(gamecontroller: *SDL_GameController, player_index: cint): void
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



### SDL_GameControllerGetFirmwareVersion

```lua
global function SDL_GameControllerGetFirmwareVersion(gamecontroller: *SDL_GameController): uint16
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
global function SDL_GameControllerUpdate(): void
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
global function SDL_GameControllerGetAxisFromString(str: cstring): SDL_GameControllerAxis
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
global function SDL_GameControllerGetButtonFromString(str: cstring): SDL_GameControllerButton
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



### SDL_GameControllerGetSensorDataRate

```lua
global function SDL_GameControllerGetSensorDataRate(gamecontroller: *SDL_GameController, type: SDL_SensorType): float32
```



### SDL_GameControllerGetSensorData

```lua
global function SDL_GameControllerGetSensorData(gamecontroller: *SDL_GameController, type: SDL_SensorType, data: *float32, num_values: cint): cint
```



### SDL_GameControllerGetSensorDataWithTimestamp

```lua
global function SDL_GameControllerGetSensorDataWithTimestamp(gamecontroller: *SDL_GameController, type: SDL_SensorType, timestamp: *uint64, data: *float32, num_values: cint): cint
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



### SDL_GameControllerHasRumble

```lua
global function SDL_GameControllerHasRumble(gamecontroller: *SDL_GameController): SDL_bool
```



### SDL_GameControllerHasRumbleTriggers

```lua
global function SDL_GameControllerHasRumbleTriggers(gamecontroller: *SDL_GameController): SDL_bool
```



### SDL_GameControllerSetLED

```lua
global function SDL_GameControllerSetLED(gamecontroller: *SDL_GameController, red: uint8, green: uint8, blue: uint8): cint
```



### SDL_GameControllerSendEffect

```lua
global function SDL_GameControllerSendEffect(gamecontroller: *SDL_GameController, data: pointer, size: cint): cint
```



### SDL_GameControllerClose

```lua
global function SDL_GameControllerClose(gamecontroller: *SDL_GameController): void
```



### SDL_GameControllerGetAppleSFSymbolsNameForButton

```lua
global function SDL_GameControllerGetAppleSFSymbolsNameForButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton): cstring
```



### SDL_GameControllerGetAppleSFSymbolsNameForAxis

```lua
global function SDL_GameControllerGetAppleSFSymbolsNameForAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis): cstring
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



### SDL_GetTouchName

```lua
global function SDL_GetTouchName(index: cint): cstring
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
  SDL_TEXTEDITING_EXT = 773,
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
  SDL_JOYBATTERYUPDATED = 1543,
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
  SDL_POLLSENTINEL = 32512,
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



### SDL_TextEditingExtEvent

```lua
global SDL_TextEditingExtEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  windowID: uint32,
  text: cstring,
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
  direction: uint32,
  preciseX: float32,
  preciseY: float32,
  mouseX: int32,
  mouseY: int32
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



### SDL_JoyBatteryEvent

```lua
global SDL_JoyBatteryEvent: type = @record{
  type: uint32,
  timestamp: uint32,
  which: cint,
  level: SDL_JoystickPowerLevel
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
  data: [3]float32,
  timestamp_us: uint64
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
  data: [6]float32,
  timestamp_us: uint64
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
  editExt: SDL_TextEditingExtEvent,
  text: SDL_TextInputEvent,
  motion: SDL_MouseMotionEvent,
  button: SDL_MouseButtonEvent,
  wheel: SDL_MouseWheelEvent,
  jaxis: SDL_JoyAxisEvent,
  jball: SDL_JoyBallEvent,
  jhat: SDL_JoyHatEvent,
  jbutton: SDL_JoyButtonEvent,
  jdevice: SDL_JoyDeviceEvent,
  jbattery: SDL_JoyBatteryEvent,
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
global function SDL_PumpEvents(): void
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
global function SDL_FlushEvent(type: uint32): void
```



### SDL_FlushEvents

```lua
global function SDL_FlushEvents(minType: uint32, maxType: uint32): void
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
global function SDL_SetEventFilter(filter: SDL_EventFilter, userdata: pointer): void
```



### SDL_GetEventFilter

```lua
global function SDL_GetEventFilter(filter: *SDL_EventFilter, userdata: *pointer): SDL_bool
```



### SDL_AddEventWatch

```lua
global function SDL_AddEventWatch(filter: SDL_EventFilter, userdata: pointer): void
```



### SDL_DelEventWatch

```lua
global function SDL_DelEventWatch(filter: SDL_EventFilter, userdata: pointer): void
```



### SDL_FilterEvents

```lua
global function SDL_FilterEvents(filter: SDL_EventFilter, userdata: pointer): void
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
global function SDL_HapticClose(haptic: *SDL_Haptic): void
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
global function SDL_HapticDestroyEffect(haptic: *SDL_Haptic, effect: cint): void
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



### SDL_hid_device_

```lua
global SDL_hid_device_: type = @record{}
```



### SDL_hid_device

```lua
global SDL_hid_device: type = @SDL_hid_device_
```



### SDL_hid_device_info

```lua
global SDL_hid_device_info: type = @record{}
```



### SDL_hid_init

```lua
global function SDL_hid_init(): cint
```



### SDL_hid_exit

```lua
global function SDL_hid_exit(): cint
```



### SDL_hid_device_change_count

```lua
global function SDL_hid_device_change_count(): uint32
```



### SDL_hid_enumerate

```lua
global function SDL_hid_enumerate(vendor_id: cushort, product_id: cushort): *SDL_hid_device_info
```



### SDL_hid_free_enumeration

```lua
global function SDL_hid_free_enumeration(devs: *SDL_hid_device_info): void
```



### SDL_hid_open

```lua
global function SDL_hid_open(vendor_id: cushort, product_id: cushort, serial_number: *cwchar_t): *SDL_hid_device
```



### SDL_hid_open_path

```lua
global function SDL_hid_open_path(path: cstring, bExclusive: cint): *SDL_hid_device
```



### SDL_hid_write

```lua
global function SDL_hid_write(dev: *SDL_hid_device, data: *cuchar, length: csize): cint
```



### SDL_hid_read_timeout

```lua
global function SDL_hid_read_timeout(dev: *SDL_hid_device, data: *cuchar, length: csize, milliseconds: cint): cint
```



### SDL_hid_read

```lua
global function SDL_hid_read(dev: *SDL_hid_device, data: *cuchar, length: csize): cint
```



### SDL_hid_set_nonblocking

```lua
global function SDL_hid_set_nonblocking(dev: *SDL_hid_device, nonblock: cint): cint
```



### SDL_hid_send_feature_report

```lua
global function SDL_hid_send_feature_report(dev: *SDL_hid_device, data: *cuchar, length: csize): cint
```



### SDL_hid_get_feature_report

```lua
global function SDL_hid_get_feature_report(dev: *SDL_hid_device, data: *cuchar, length: csize): cint
```



### SDL_hid_close

```lua
global function SDL_hid_close(dev: *SDL_hid_device): void
```



### SDL_hid_get_manufacturer_string

```lua
global function SDL_hid_get_manufacturer_string(dev: *SDL_hid_device, string: *cwchar_t, maxlen: csize): cint
```



### SDL_hid_get_product_string

```lua
global function SDL_hid_get_product_string(dev: *SDL_hid_device, string: *cwchar_t, maxlen: csize): cint
```



### SDL_hid_get_serial_number_string

```lua
global function SDL_hid_get_serial_number_string(dev: *SDL_hid_device, string: *cwchar_t, maxlen: csize): cint
```



### SDL_hid_get_indexed_string

```lua
global function SDL_hid_get_indexed_string(dev: *SDL_hid_device, string_index: cint, string: *cwchar_t, maxlen: csize): cint
```



### SDL_hid_ble_scan

```lua
global function SDL_hid_ble_scan(active: SDL_bool): void
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



### SDL_ResetHint

```lua
global function SDL_ResetHint(name: cstring): SDL_bool
```



### SDL_ResetHints

```lua
global function SDL_ResetHints(): void
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
global SDL_HintCallback: type = @function(pointer, cstring, cstring, cstring): void
```



### SDL_AddHintCallback

```lua
global function SDL_AddHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer): void
```



### SDL_DelHintCallback

```lua
global function SDL_DelHintCallback(name: cstring, callback: SDL_HintCallback, userdata: pointer): void
```



### SDL_ClearHints

```lua
global function SDL_ClearHints(): void
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
global function SDL_UnloadObject(handle: pointer): void
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
global function SDL_LogSetAllPriority(priority: SDL_LogPriority): void
```



### SDL_LogSetPriority

```lua
global function SDL_LogSetPriority(category: cint, priority: SDL_LogPriority): void
```



### SDL_LogGetPriority

```lua
global function SDL_LogGetPriority(category: cint): SDL_LogPriority
```



### SDL_LogResetPriorities

```lua
global function SDL_LogResetPriorities(): void
```



### SDL_Log

```lua
global function SDL_Log(fmt: cstring, ...: cvarargs): void
```



### SDL_LogVerbose

```lua
global function SDL_LogVerbose(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogDebug

```lua
global function SDL_LogDebug(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogInfo

```lua
global function SDL_LogInfo(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogWarn

```lua
global function SDL_LogWarn(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogError

```lua
global function SDL_LogError(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogCritical

```lua
global function SDL_LogCritical(category: cint, fmt: cstring, ...: cvarargs): void
```



### SDL_LogMessage

```lua
global function SDL_LogMessage(category: cint, priority: SDL_LogPriority, fmt: cstring, ...: cvarargs): void
```



### SDL_LogMessageV

```lua
global function SDL_LogMessageV(category: cint, priority: SDL_LogPriority, fmt: cstring, ap: cvalist): void
```



### SDL_LogOutputFunction

```lua
global SDL_LogOutputFunction: type = @function(pointer, cint, SDL_LogPriority, cstring): void
```



### SDL_LogGetOutputFunction

```lua
global function SDL_LogGetOutputFunction(callback: *SDL_LogOutputFunction, userdata: *pointer): void
```



### SDL_LogSetOutputFunction

```lua
global function SDL_LogSetOutputFunction(callback: SDL_LogOutputFunction, userdata: pointer): void
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
global function SDL_Metal_DestroyView(view: SDL_MetalView): void
```



### SDL_Metal_GetLayer

```lua
global function SDL_Metal_GetLayer(view: SDL_MetalView): pointer
```



### SDL_Metal_GetDrawableSize

```lua
global function SDL_Metal_GetDrawableSize(window: *SDL_Window, w: *cint, h: *cint): void
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



### SDL_Vertex

```lua
global SDL_Vertex: type = @record{
  position: SDL_FPoint,
  color: SDL_Color,
  tex_coord: SDL_FPoint
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



### SDL_RenderGetWindow

```lua
global function SDL_RenderGetWindow(renderer: *SDL_Renderer): *SDL_Window
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



### SDL_SetTextureUserData

```lua
global function SDL_SetTextureUserData(texture: *SDL_Texture, userdata: pointer): cint
```



### SDL_GetTextureUserData

```lua
global function SDL_GetTextureUserData(texture: *SDL_Texture): pointer
```



### SDL_UpdateTexture

```lua
global function SDL_UpdateTexture(texture: *SDL_Texture, rect: *SDL_Rect, pixels: pointer, pitch: cint): cint
```



### SDL_UpdateYUVTexture

```lua
global function SDL_UpdateYUVTexture(texture: *SDL_Texture, rect: *SDL_Rect, Yplane: *uint8, Ypitch: cint, Uplane: *uint8, Upitch: cint, Vplane: *uint8, Vpitch: cint): cint
```



### SDL_UpdateNVTexture

```lua
global function SDL_UpdateNVTexture(texture: *SDL_Texture, rect: *SDL_Rect, Yplane: *uint8, Ypitch: cint, UVplane: *uint8, UVpitch: cint): cint
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
global function SDL_UnlockTexture(texture: *SDL_Texture): void
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
global function SDL_RenderGetLogicalSize(renderer: *SDL_Renderer, w: *cint, h: *cint): void
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
global function SDL_RenderGetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect): void
```



### SDL_RenderSetClipRect

```lua
global function SDL_RenderSetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect): cint
```



### SDL_RenderGetClipRect

```lua
global function SDL_RenderGetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect): void
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
global function SDL_RenderGetScale(renderer: *SDL_Renderer, scaleX: *float32, scaleY: *float32): void
```



### SDL_RenderWindowToLogical

```lua
global function SDL_RenderWindowToLogical(renderer: *SDL_Renderer, windowX: cint, windowY: cint, logicalX: *float32, logicalY: *float32): void
```



### SDL_RenderLogicalToWindow

```lua
global function SDL_RenderLogicalToWindow(renderer: *SDL_Renderer, logicalX: float32, logicalY: float32, windowX: *cint, windowY: *cint): void
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



### SDL_RenderGeometry

```lua
global function SDL_RenderGeometry(renderer: *SDL_Renderer, texture: *SDL_Texture, vertices: *SDL_Vertex, num_vertices: cint, indices: *cint, num_indices: cint): cint
```



### SDL_RenderGeometryRaw

```lua
global function SDL_RenderGeometryRaw(renderer: *SDL_Renderer, texture: *SDL_Texture, xy: *float32, xy_stride: cint, color: *SDL_Color, color_stride: cint, uv: *float32, uv_stride: cint, num_vertices: cint, indices: pointer, num_indices: cint, size_indices: cint): cint
```



### SDL_RenderReadPixels

```lua
global function SDL_RenderReadPixels(renderer: *SDL_Renderer, rect: *SDL_Rect, format: uint32, pixels: pointer, pitch: cint): cint
```



### SDL_RenderPresent

```lua
global function SDL_RenderPresent(renderer: *SDL_Renderer): void
```



### SDL_DestroyTexture

```lua
global function SDL_DestroyTexture(texture: *SDL_Texture): void
```



### SDL_DestroyRenderer

```lua
global function SDL_DestroyRenderer(renderer: *SDL_Renderer): void
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



### SDL_RenderSetVSync

```lua
global function SDL_RenderSetVSync(renderer: *SDL_Renderer, vsync: cint): cint
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



### SDL_LinuxSetThreadPriorityAndPolicy

```lua
global function SDL_LinuxSetThreadPriorityAndPolicy(threadID: int64, sdlPriority: cint, schedPolicy: cint): cint
```



### SDL_IsTablet

```lua
global function SDL_IsTablet(): SDL_bool
```



### SDL_OnApplicationWillTerminate

```lua
global function SDL_OnApplicationWillTerminate(): void
```



### SDL_OnApplicationDidReceiveMemoryWarning

```lua
global function SDL_OnApplicationDidReceiveMemoryWarning(): void
```



### SDL_OnApplicationWillResignActive

```lua
global function SDL_OnApplicationWillResignActive(): void
```



### SDL_OnApplicationDidEnterBackground

```lua
global function SDL_OnApplicationDidEnterBackground(): void
```



### SDL_OnApplicationWillEnterForeground

```lua
global function SDL_OnApplicationWillEnterForeground(): void
```



### SDL_OnApplicationDidBecomeActive

```lua
global function SDL_OnApplicationDidBecomeActive(): void
```



### SDL_GetTicks

```lua
global function SDL_GetTicks(): uint32
```



### SDL_GetTicks64

```lua
global function SDL_GetTicks64(): uint64
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
global function SDL_Delay(ms: uint32): void
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
global function SDL_GetVersion(ver: *SDL_version): void
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
global function SDL_QuitSubSystem(flags: uint32): void
```



### SDL_WasInit

```lua
global function SDL_WasInit(flags: uint32): uint32
```



### SDL_Quit

```lua
global function SDL_Quit(): void
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



### SDL_HINT_ACCELEROMETER_AS_JOYSTICK

```lua
global SDL_HINT_ACCELEROMETER_AS_JOYSTICK: cstring
```



### SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED

```lua
global SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED: cstring
```



### SDL_HINT_ALLOW_TOPMOST

```lua
global SDL_HINT_ALLOW_TOPMOST: cstring
```



### SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION

```lua
global SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION: cstring
```



### SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION

```lua
global SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION: cstring
```



### SDL_HINT_ANDROID_BLOCK_ON_PAUSE

```lua
global SDL_HINT_ANDROID_BLOCK_ON_PAUSE: cstring
```



### SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO

```lua
global SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO: cstring
```



### SDL_HINT_ANDROID_TRAP_BACK_BUTTON

```lua
global SDL_HINT_ANDROID_TRAP_BACK_BUTTON: cstring
```



### SDL_HINT_APP_NAME

```lua
global SDL_HINT_APP_NAME: cstring
```



### SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS

```lua
global SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS: cstring
```



### SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION

```lua
global SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION: cstring
```



### SDL_HINT_AUDIO_CATEGORY

```lua
global SDL_HINT_AUDIO_CATEGORY: cstring
```



### SDL_HINT_AUDIO_DEVICE_APP_NAME

```lua
global SDL_HINT_AUDIO_DEVICE_APP_NAME: cstring
```



### SDL_HINT_AUDIO_DEVICE_STREAM_NAME

```lua
global SDL_HINT_AUDIO_DEVICE_STREAM_NAME: cstring
```



### SDL_HINT_AUDIO_DEVICE_STREAM_ROLE

```lua
global SDL_HINT_AUDIO_DEVICE_STREAM_ROLE: cstring
```



### SDL_HINT_AUDIO_RESAMPLING_MODE

```lua
global SDL_HINT_AUDIO_RESAMPLING_MODE: cstring
```



### SDL_HINT_AUTO_UPDATE_JOYSTICKS

```lua
global SDL_HINT_AUTO_UPDATE_JOYSTICKS: cstring
```



### SDL_HINT_AUTO_UPDATE_SENSORS

```lua
global SDL_HINT_AUTO_UPDATE_SENSORS: cstring
```



### SDL_HINT_BMP_SAVE_LEGACY_FORMAT

```lua
global SDL_HINT_BMP_SAVE_LEGACY_FORMAT: cstring
```



### SDL_HINT_DISPLAY_USABLE_BOUNDS

```lua
global SDL_HINT_DISPLAY_USABLE_BOUNDS: cstring
```



### SDL_HINT_EMSCRIPTEN_ASYNCIFY

```lua
global SDL_HINT_EMSCRIPTEN_ASYNCIFY: cstring
```



### SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT

```lua
global SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT: cstring
```



### SDL_HINT_ENABLE_STEAM_CONTROLLERS

```lua
global SDL_HINT_ENABLE_STEAM_CONTROLLERS: cstring
```



### SDL_HINT_EVENT_LOGGING

```lua
global SDL_HINT_EVENT_LOGGING: cstring
```



### SDL_HINT_FORCE_RAISEWINDOW

```lua
global SDL_HINT_FORCE_RAISEWINDOW: cstring
```



### SDL_HINT_FRAMEBUFFER_ACCELERATION

```lua
global SDL_HINT_FRAMEBUFFER_ACCELERATION: cstring
```



### SDL_HINT_GAMECONTROLLERCONFIG

```lua
global SDL_HINT_GAMECONTROLLERCONFIG: cstring
```



### SDL_HINT_GAMECONTROLLERCONFIG_FILE

```lua
global SDL_HINT_GAMECONTROLLERCONFIG_FILE: cstring
```



### SDL_HINT_GAMECONTROLLERTYPE

```lua
global SDL_HINT_GAMECONTROLLERTYPE: cstring
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



### SDL_HINT_GRAB_KEYBOARD

```lua
global SDL_HINT_GRAB_KEYBOARD: cstring
```



### SDL_HINT_HIDAPI_IGNORE_DEVICES

```lua
global SDL_HINT_HIDAPI_IGNORE_DEVICES: cstring
```



### SDL_HINT_IDLE_TIMER_DISABLED

```lua
global SDL_HINT_IDLE_TIMER_DISABLED: cstring
```



### SDL_HINT_IME_INTERNAL_EDITING

```lua
global SDL_HINT_IME_INTERNAL_EDITING: cstring
```



### SDL_HINT_IME_SHOW_UI

```lua
global SDL_HINT_IME_SHOW_UI: cstring
```



### SDL_HINT_IME_SUPPORT_EXTENDED_TEXT

```lua
global SDL_HINT_IME_SUPPORT_EXTENDED_TEXT: cstring
```



### SDL_HINT_IOS_HIDE_HOME_INDICATOR

```lua
global SDL_HINT_IOS_HIDE_HOME_INDICATOR: cstring
```



### SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS

```lua
global SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI

```lua
global SDL_HINT_JOYSTICK_HIDAPI: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE: cstring
```



### SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE

```lua
global SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS

```lua
global SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS

```lua
global SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS

```lua
global SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_LUNA

```lua
global SDL_HINT_JOYSTICK_HIDAPI_LUNA: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC

```lua
global SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_SHIELD

```lua
global SDL_HINT_JOYSTICK_HIDAPI_SHIELD: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS3

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS3: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS4

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS4: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS5

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS5: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_STADIA

```lua
global SDL_HINT_JOYSTICK_HIDAPI_STADIA: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_STEAM

```lua
global SDL_HINT_JOYSTICK_HIDAPI_STEAM: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_SWITCH

```lua
global SDL_HINT_JOYSTICK_HIDAPI_SWITCH: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_WII

```lua
global SDL_HINT_JOYSTICK_HIDAPI_WII: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX_360

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX_360: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE: cstring
```



### SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED

```lua
global SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED: cstring
```



### SDL_HINT_JOYSTICK_RAWINPUT

```lua
global SDL_HINT_JOYSTICK_RAWINPUT: cstring
```



### SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT

```lua
global SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT: cstring
```



### SDL_HINT_JOYSTICK_ROG_CHAKRAM

```lua
global SDL_HINT_JOYSTICK_ROG_CHAKRAM: cstring
```



### SDL_HINT_JOYSTICK_THREAD

```lua
global SDL_HINT_JOYSTICK_THREAD: cstring
```



### SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER

```lua
global SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER: cstring
```



### SDL_HINT_JOYSTICK_DEVICE

```lua
global SDL_HINT_JOYSTICK_DEVICE: cstring
```



### SDL_HINT_LINUX_DIGITAL_HATS

```lua
global SDL_HINT_LINUX_DIGITAL_HATS: cstring
```



### SDL_HINT_LINUX_HAT_DEADZONES

```lua
global SDL_HINT_LINUX_HAT_DEADZONES: cstring
```



### SDL_HINT_LINUX_JOYSTICK_CLASSIC

```lua
global SDL_HINT_LINUX_JOYSTICK_CLASSIC: cstring
```



### SDL_HINT_LINUX_JOYSTICK_DEADZONES

```lua
global SDL_HINT_LINUX_JOYSTICK_DEADZONES: cstring
```



### SDL_HINT_MAC_BACKGROUND_APP

```lua
global SDL_HINT_MAC_BACKGROUND_APP: cstring
```



### SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK

```lua
global SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK: cstring
```



### SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH

```lua
global SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH: cstring
```



### SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS

```lua
global SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS: cstring
```



### SDL_HINT_MOUSE_DOUBLE_CLICK_TIME

```lua
global SDL_HINT_MOUSE_DOUBLE_CLICK_TIME: cstring
```



### SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH

```lua
global SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH: cstring
```



### SDL_HINT_MOUSE_NORMAL_SPEED_SCALE

```lua
global SDL_HINT_MOUSE_NORMAL_SPEED_SCALE: cstring
```



### SDL_HINT_MOUSE_RELATIVE_MODE_CENTER

```lua
global SDL_HINT_MOUSE_RELATIVE_MODE_CENTER: cstring
```



### SDL_HINT_MOUSE_RELATIVE_MODE_WARP

```lua
global SDL_HINT_MOUSE_RELATIVE_MODE_WARP: cstring
```



### SDL_HINT_MOUSE_RELATIVE_SCALING

```lua
global SDL_HINT_MOUSE_RELATIVE_SCALING: cstring
```



### SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE

```lua
global SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE: cstring
```



### SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE

```lua
global SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE: cstring
```



### SDL_HINT_MOUSE_RELATIVE_WARP_MOTION

```lua
global SDL_HINT_MOUSE_RELATIVE_WARP_MOTION: cstring
```



### SDL_HINT_MOUSE_TOUCH_EVENTS

```lua
global SDL_HINT_MOUSE_TOUCH_EVENTS: cstring
```



### SDL_HINT_MOUSE_AUTO_CAPTURE

```lua
global SDL_HINT_MOUSE_AUTO_CAPTURE: cstring
```



### SDL_HINT_NO_SIGNAL_HANDLERS

```lua
global SDL_HINT_NO_SIGNAL_HANDLERS: cstring
```



### SDL_HINT_OPENGL_ES_DRIVER

```lua
global SDL_HINT_OPENGL_ES_DRIVER: cstring
```



### SDL_HINT_ORIENTATIONS

```lua
global SDL_HINT_ORIENTATIONS: cstring
```



### SDL_HINT_POLL_SENTINEL

```lua
global SDL_HINT_POLL_SENTINEL: cstring
```



### SDL_HINT_PREFERRED_LOCALES

```lua
global SDL_HINT_PREFERRED_LOCALES: cstring
```



### SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION

```lua
global SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION: cstring
```



### SDL_HINT_QTWAYLAND_WINDOW_FLAGS

```lua
global SDL_HINT_QTWAYLAND_WINDOW_FLAGS: cstring
```



### SDL_HINT_RENDER_BATCHING

```lua
global SDL_HINT_RENDER_BATCHING: cstring
```



### SDL_HINT_RENDER_LINE_METHOD

```lua
global SDL_HINT_RENDER_LINE_METHOD: cstring
```



### SDL_HINT_RENDER_DIRECT3D11_DEBUG

```lua
global SDL_HINT_RENDER_DIRECT3D11_DEBUG: cstring
```



### SDL_HINT_RENDER_DIRECT3D_THREADSAFE

```lua
global SDL_HINT_RENDER_DIRECT3D_THREADSAFE: cstring
```



### SDL_HINT_RENDER_DRIVER

```lua
global SDL_HINT_RENDER_DRIVER: cstring
```



### SDL_HINT_RENDER_LOGICAL_SIZE_MODE

```lua
global SDL_HINT_RENDER_LOGICAL_SIZE_MODE: cstring
```



### SDL_HINT_RENDER_OPENGL_SHADERS

```lua
global SDL_HINT_RENDER_OPENGL_SHADERS: cstring
```



### SDL_HINT_RENDER_SCALE_QUALITY

```lua
global SDL_HINT_RENDER_SCALE_QUALITY: cstring
```



### SDL_HINT_RENDER_VSYNC

```lua
global SDL_HINT_RENDER_VSYNC: cstring
```



### SDL_HINT_PS2_DYNAMIC_VSYNC

```lua
global SDL_HINT_PS2_DYNAMIC_VSYNC: cstring
```



### SDL_HINT_RETURN_KEY_HIDES_IME

```lua
global SDL_HINT_RETURN_KEY_HIDES_IME: cstring
```



### SDL_HINT_RPI_VIDEO_LAYER

```lua
global SDL_HINT_RPI_VIDEO_LAYER: cstring
```



### SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME

```lua
global SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME: cstring
```



### SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL

```lua
global SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL: cstring
```



### SDL_HINT_THREAD_PRIORITY_POLICY

```lua
global SDL_HINT_THREAD_PRIORITY_POLICY: cstring
```



### SDL_HINT_THREAD_STACK_SIZE

```lua
global SDL_HINT_THREAD_STACK_SIZE: cstring
```



### SDL_HINT_TIMER_RESOLUTION

```lua
global SDL_HINT_TIMER_RESOLUTION: cstring
```



### SDL_HINT_TOUCH_MOUSE_EVENTS

```lua
global SDL_HINT_TOUCH_MOUSE_EVENTS: cstring
```



### SDL_HINT_VITA_TOUCH_MOUSE_DEVICE

```lua
global SDL_HINT_VITA_TOUCH_MOUSE_DEVICE: cstring
```



### SDL_HINT_TV_REMOTE_AS_JOYSTICK

```lua
global SDL_HINT_TV_REMOTE_AS_JOYSTICK: cstring
```



### SDL_HINT_VIDEO_ALLOW_SCREENSAVER

```lua
global SDL_HINT_VIDEO_ALLOW_SCREENSAVER: cstring
```



### SDL_HINT_VIDEO_DOUBLE_BUFFER

```lua
global SDL_HINT_VIDEO_DOUBLE_BUFFER: cstring
```



### SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY

```lua
global SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY: cstring
```



### SDL_HINT_VIDEO_EXTERNAL_CONTEXT

```lua
global SDL_HINT_VIDEO_EXTERNAL_CONTEXT: cstring
```



### SDL_HINT_VIDEO_HIGHDPI_DISABLED

```lua
global SDL_HINT_VIDEO_HIGHDPI_DISABLED: cstring
```



### SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES

```lua
global SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES: cstring
```



### SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS

```lua
global SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS: cstring
```



### SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR

```lua
global SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR: cstring
```



### SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR

```lua
global SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR: cstring
```



### SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION

```lua
global SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION: cstring
```



### SDL_HINT_VIDEO_WAYLAND_EMULATE_MOUSE_WARP

```lua
global SDL_HINT_VIDEO_WAYLAND_EMULATE_MOUSE_WARP: cstring
```



### SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT

```lua
global SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT: cstring
```



### SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL

```lua
global SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL: cstring
```



### SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN

```lua
global SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN: cstring
```



### SDL_HINT_VIDEO_WIN_D3DCOMPILER

```lua
global SDL_HINT_VIDEO_WIN_D3DCOMPILER: cstring
```



### SDL_HINT_VIDEO_X11_FORCE_EGL

```lua
global SDL_HINT_VIDEO_X11_FORCE_EGL: cstring
```



### SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR

```lua
global SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR: cstring
```



### SDL_HINT_VIDEO_X11_NET_WM_PING

```lua
global SDL_HINT_VIDEO_X11_NET_WM_PING: cstring
```



### SDL_HINT_VIDEO_X11_WINDOW_VISUALID

```lua
global SDL_HINT_VIDEO_X11_WINDOW_VISUALID: cstring
```



### SDL_HINT_VIDEO_X11_XINERAMA

```lua
global SDL_HINT_VIDEO_X11_XINERAMA: cstring
```



### SDL_HINT_VIDEO_X11_XRANDR

```lua
global SDL_HINT_VIDEO_X11_XRANDR: cstring
```



### SDL_HINT_VIDEO_X11_XVIDMODE

```lua
global SDL_HINT_VIDEO_X11_XVIDMODE: cstring
```



### SDL_HINT_WAVE_FACT_CHUNK

```lua
global SDL_HINT_WAVE_FACT_CHUNK: cstring
```



### SDL_HINT_WAVE_RIFF_CHUNK_SIZE

```lua
global SDL_HINT_WAVE_RIFF_CHUNK_SIZE: cstring
```



### SDL_HINT_WAVE_TRUNCATION

```lua
global SDL_HINT_WAVE_TRUNCATION: cstring
```



### SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING

```lua
global SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING: cstring
```



### SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP

```lua
global SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP: cstring
```



### SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS

```lua
global SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS: cstring
```



### SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL

```lua
global SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL: cstring
```



### SDL_HINT_WINDOWS_INTRESOURCE_ICON

```lua
global SDL_HINT_WINDOWS_INTRESOURCE_ICON: cstring
```



### SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL

```lua
global SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL: cstring
```



### SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4

```lua
global SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4: cstring
```



### SDL_HINT_WINDOWS_USE_D3D9EX

```lua
global SDL_HINT_WINDOWS_USE_D3D9EX: cstring
```



### SDL_HINT_WINDOWS_DPI_AWARENESS

```lua
global SDL_HINT_WINDOWS_DPI_AWARENESS: cstring
```



### SDL_HINT_WINDOWS_DPI_SCALING

```lua
global SDL_HINT_WINDOWS_DPI_SCALING: cstring
```



### SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN

```lua
global SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN: cstring
```



### SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN

```lua
global SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN: cstring
```



### SDL_HINT_WINRT_HANDLE_BACK_BUTTON

```lua
global SDL_HINT_WINRT_HANDLE_BACK_BUTTON: cstring
```



### SDL_HINT_WINRT_PRIVACY_POLICY_LABEL

```lua
global SDL_HINT_WINRT_PRIVACY_POLICY_LABEL: cstring
```



### SDL_HINT_WINRT_PRIVACY_POLICY_URL

```lua
global SDL_HINT_WINRT_PRIVACY_POLICY_URL: cstring
```



### SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT

```lua
global SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT: cstring
```



### SDL_HINT_XINPUT_ENABLED

```lua
global SDL_HINT_XINPUT_ENABLED: cstring
```



### SDL_HINT_DIRECTINPUT_ENABLED

```lua
global SDL_HINT_DIRECTINPUT_ENABLED: cstring
```



### SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING

```lua
global SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING: cstring
```



### SDL_HINT_AUDIO_INCLUDE_MONITORS

```lua
global SDL_HINT_AUDIO_INCLUDE_MONITORS: cstring
```



### SDL_HINT_X11_WINDOW_TYPE

```lua
global SDL_HINT_X11_WINDOW_TYPE: cstring
```



### SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE

```lua
global SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE: cstring
```



### SDL_HINT_VIDEODRIVER

```lua
global SDL_HINT_VIDEODRIVER: cstring
```



### SDL_HINT_AUDIODRIVER

```lua
global SDL_HINT_AUDIODRIVER: cstring
```



### SDL_HINT_KMSDRM_DEVICE_INDEX

```lua
global SDL_HINT_KMSDRM_DEVICE_INDEX: cstring
```



### SDL_HINT_TRACKPAD_IS_TOUCH_ONLY

```lua
global SDL_HINT_TRACKPAD_IS_TOUCH_ONLY: cstring
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
