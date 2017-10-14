	format	MS COFF
	extrn	_GetProcAddress@8
	extrn	_LoadLibraryA@4
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_win32_win32
	extrn	_bbIntToLong
	extrn	_bbMemFree
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringToCString
	extrn	_brl_blitz_NullFunctionError
	public	___bb_blitzmax_code_archief__spel__gridwars_bass
	public	_bb_BASS_ChannelGetAttributes
	public	_bb_BASS_ChannelGetLevel
	public	_bb_BASS_ChannelGetPosition
	public	_bb_BASS_ChannelIsActive
	public	_bb_BASS_ChannelPause
	public	_bb_BASS_ChannelPlay
	public	_bb_BASS_ChannelSetAttributes
	public	_bb_BASS_ChannelSetPosition
	public	_bb_BASS_ChannelStop
	public	_bb_BASS_ErrorGetCode
	public	_bb_BASS_Free
	public	_bb_BASS_Init
	public	_bb_BASS_MusicLoad
	public	_bb_BASS_StreamCreateFile
	public	_bb_BASS_StreamGetLength
	public	_bb_BASS_WMA_StreamCreateFile
	public	_bb_MakeLong
	section	"code" code
___bb_blitzmax_code_archief__spel__gridwars_bass:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	cmp	dword [_545],0
	je	_546
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_546:
	mov	dword [_545],1
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-8],0
	mov	dword [ebp-4],0
	mov	eax,ebp
	push	eax
	push	_127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_win32_win32
	call	___bb_glmax2d_glmax2d
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_10
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	call	_LoadLibraryA@4
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	dword [ebp-12],ebx
	push	_39
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_11
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	call	_LoadLibraryA@4
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	dword [ebp-16],ebx
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-4],0
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_12
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_Init]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_13
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_StreamCreateFile]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_14
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-16]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_WMA_StreamCreateFile]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_15
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_MusicLoad]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_16
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelPlay]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_17
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_Free]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ErrorGetCode]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_19
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_StreamGetLength]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_20
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelStop]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_21
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelPause]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_22
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelIsActive]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_23
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelGetLevel]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_24
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	push	eax
	lea	eax,dword [ebp-8]
	push	eax
	call	_bbIntToLong
	add	esp,8
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelGetPosition]
	mov	eax,dword [ebp-8]
	mov	dword [edx],eax
	lea	edx,dword [_bb_BASS_ChannelGetPosition]
	mov	eax,dword [ebp-4]
	mov	dword [edx+4],eax
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelSetPosition]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelGetAttributes]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	call	_bbStringToCString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebp-12]
	call	_GetProcAddress@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,ebx
	mov	dword [ebp-20],eax
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	edx,dword [_bb_BASS_ChannelSetAttributes]
	mov	eax,dword [ebp-20]
	mov	dword [edx],eax
	mov	ebx,0
_28:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MakeLong:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-8],eax
	push	ebp
	push	_548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	shl	eax,16
	mov	edx,dword [ebp-8]
	and	edx,65535
	or	eax,edx
	push	eax
	lea	eax,dword [ebp-16]
	push	eax
	call	_bbIntToLong
	add	esp,8
_32:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,dword [ebp-16]
	mov	dword [ebx],eax
	mov	eax,dword [ebp-12]
	mov	dword [ebx+4],eax
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_545:
	dd	0
_128:
	db	"bass",0
_129:
	db	"BASSTRUE",0
_130:
	db	"i",0
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_132:
	db	"BASSFALSE",0
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
_134:
	db	"BASS_OK",0
_135:
	db	"BASS_ERROR_MEM",0
_136:
	db	"BASS_ERROR_FILEOPEN",0
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_138:
	db	"BASS_ERROR_DRIVER",0
	align	4
_139:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	51
_140:
	db	"BASS_ERROR_BUFLOST",0
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	52
_142:
	db	"BASS_ERROR_HANDLE",0
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	53
_144:
	db	"BASS_ERROR_FORMAT",0
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	54
_146:
	db	"BASS_ERROR_POSITION",0
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	55
_148:
	db	"BASS_ERROR_INIT",0
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	56
_150:
	db	"BASS_ERROR_START",0
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	57
_152:
	db	"BASS_ERROR_INITCD",0
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,48
_154:
	db	"BASS_ERROR_CDINIT",0
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,49
_156:
	db	"BASS_ERROR_NOCD",0
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,50
_158:
	db	"BASS_ERROR_CDTRACK",0
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,51
_160:
	db	"BASS_ERROR_ALREADY",0
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,52
_162:
	db	"BASS_ERROR_CDVOL",0
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,53
_164:
	db	"BASS_ERROR_NOPAUSE",0
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,54
_166:
	db	"BASS_ERROR_NOTAUDIO",0
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,55
_168:
	db	"BASS_ERROR_NOCHAN",0
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,56
_170:
	db	"BASS_ERROR_ILLTYPE",0
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,57
_172:
	db	"BASS_ERROR_ILLPARAM",0
	align	4
_173:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,48
_174:
	db	"BASS_ERROR_NO3D",0
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,49
_176:
	db	"BASS_ERROR_NOEAX",0
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,50
_178:
	db	"BASS_ERROR_DEVICE",0
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,51
_180:
	db	"BASS_ERROR_NOPLAY",0
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,52
_182:
	db	"BASS_ERROR_FREQ",0
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,53
_184:
	db	"BASS_ERROR_NOTFILE",0
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,55
_186:
	db	"BASS_ERROR_NOHW",0
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,57
_188:
	db	"BASS_ERROR_EMPTY",0
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,49
_190:
	db	"BASS_ERROR_NONET",0
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,50
_192:
	db	"BASS_ERROR_CREATE",0
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,51
_194:
	db	"BASS_ERROR_NOFX",0
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,52
_196:
	db	"BASS_ERROR_PLAYING",0
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,53
_198:
	db	"BASS_ERROR_NOTAVAIL",0
	align	4
_199:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,55
_200:
	db	"BASS_ERROR_DECODE",0
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,56
_202:
	db	"BASS_ERROR_DX",0
	align	4
_203:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,57
_204:
	db	"BASS_ERROR_TIMEOUT",0
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,48
_206:
	db	"BASS_ERROR_FILEFORM",0
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,49
_208:
	db	"BASS_ERROR_SPEAKER",0
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,50
_210:
	db	"BASS_ERROR_UNKNOWN",0
	align	4
_211:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_212:
	db	"BASS_DEVICE_8BITS",0
_213:
	db	"BASS_DEVICE_MONO",0
_214:
	db	"BASS_DEVICE_3D",0
_215:
	db	"BASS_DEVICE_LEAVEVOL",0
_216:
	db	"BASS_DEVICE_NOTHREAD",0
	align	4
_217:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,56
_218:
	db	"BASS_DEVICE_LATENCY",0
	align	4
_219:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,54
_220:
	db	"BASS_DEVICE_VOL1000",0
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	53,49,50
_222:
	db	"BASS_DEVICE_FLOATDSP",0
	align	4
_223:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,50,52
_224:
	db	"BASS_DEVICE_SPEAKERS",0
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,56
_226:
	db	"DSCAPS_CONTINUOUSRATE",0
_227:
	db	"DSCAPS_EMULDRIVER",0
_228:
	db	"DSCAPS_CERTIFIED",0
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	54,52
_230:
	db	"DSCAPS_SECONDARYMONO",0
_231:
	db	"DSCAPS_SECONDARYSTEREO",0
_232:
	db	"DSCAPS_SECONDARY8BIT",0
_233:
	db	"DSCAPS_SECONDARY16BIT",0
_234:
	db	"DSCCAPS_EMULDRIVER",0
_235:
	db	"DSCCAPS_CERTIFIED",0
_236:
	db	"WAVE_FORMAT_1M08",0
_237:
	db	"WAVE_FORMAT_1S08",0
_238:
	db	"WAVE_FORMAT_1M16",0
_239:
	db	"WAVE_FORMAT_1S16",0
_240:
	db	"WAVE_FORMAT_2M08",0
_241:
	db	"WAVE_FORMAT_2S08",0
_242:
	db	"WAVE_FORMAT_2M16",0
_243:
	db	"WAVE_FORMAT_2S16",0
_244:
	db	"WAVE_FORMAT_4M08",0
_245:
	db	"WAVE_FORMAT_4S08",0
_246:
	db	"WAVE_FORMAT_4M16",0
_247:
	db	"WAVE_FORMAT_4S16",0
_248:
	db	"BASS_MUSIC_RAMP",0
_249:
	db	"BASS_MUSIC_RAMPS",0
_250:
	db	"BASS_MUSIC_LOOP",0
_251:
	db	"BASS_MUSIC_FT2MOD",0
_252:
	db	"BASS_MUSIC_PT1MOD",0
_253:
	db	"BASS_MUSIC_MONO",0
_254:
	db	"BASS_MUSIC_3D",0
_255:
	db	"BASS_MUSIC_POSRESET",0
_256:
	db	"BASS_MUSIC_SURROUND",0
_257:
	db	"BASS_MUSIC_SURROUND2",0
_258:
	db	"BASS_MUSIC_STOPBACK",0
_259:
	db	"BASS_MUSIC_FX",0
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,54
_261:
	db	"BASS_MUSIC_CALCLEN",0
	align	4
_262:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,50
_263:
	db	"BASS_MUSIC_NONINTER",0
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	49,54,51,56,52
_265:
	db	"BASS_MUSIC_FLOAT",0
	align	4
_266:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,53,51,54
_267:
	db	"BASS_MUSIC_DECODE",0
	align	4
_268:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	50,48,57,55,49,53,50
_269:
	db	"BASS_MUSIC_NOSAMPLE",0
	align	4
_270:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	52,49,57,52,51,48,52
_271:
	db	"BASS_SAMPLE_8BITS",0
_272:
	db	"BASS_SAMPLE_FLOAT",0
_273:
	db	"BASS_SAMPLE_MONO",0
_274:
	db	"BASS_SAMPLE_LOOP",0
_275:
	db	"BASS_SAMPLE_3D",0
_276:
	db	"BASS_SAMPLE_SOFTWARE",0
_277:
	db	"BASS_SAMPLE_MUTEMAX",0
_278:
	db	"BASS_SAMPLE_VAM",0
_279:
	db	"BASS_SAMPLE_FX",0
_280:
	db	"BASS_SAMPLE_OVER_VOL",0
_281:
	db	"BASS_SAMPLE_OVER_POS",0
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	49,51,49,48,55,50
_283:
	db	"BASS_SAMPLE_OVER_DIST",0
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	49,57,54,54,48,56
_285:
	db	"BASS_MP3_SETPOS",0
_286:
	db	"BASS_STREAM_AUTOFREE",0
	align	4
_287:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	50,54,50,49,52,52
_288:
	db	"BASS_STREAM_RESTRATE",0
	align	4
_289:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	53,50,52,50,56,56
_290:
	db	"BASS_STREAM_BLOCK",0
	align	4
_291:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	49,48,52,56,53,55,54
_292:
	db	"BASS_STREAM_DECODE",0
_293:
	db	"BASS_STREAM_META",0
_294:
	db	"BASS_STREAM_FILEPROC",0
	align	4
_295:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	56,51,56,56,54,48,56
_296:
	db	"BASS_SPEAKER_FRONT",0
	align	4
_297:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	49,54,55,55,55,50,49,54
_298:
	db	"BASS_SPEAKER_REAR",0
	align	4
_299:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	51,51,53,53,52,52,51,50
_300:
	db	"BASS_SPEAKER_CENLFE",0
	align	4
_301:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	53,48,51,51,49,54,52,56
_302:
	db	"BASS_SPEAKER_REAR2",0
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	54,55,49,48,56,56,54,52
_304:
	db	"BASS_SPEAKER_LEFT",0
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	50,54,56,52,51,53,52,53,54
_306:
	db	"BASS_SPEAKER_RIGHT",0
	align	4
_307:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,51,54,56,55,48,57,49,50
_308:
	db	"BASS_SPEAKER_FRONTLEFT",0
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	50,56,53,50,49,50,54,55,50
_310:
	db	"BASS_SPEAKER_FRONTRIGHT",0
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,53,51,54,52,56,49,50,56
_312:
	db	"BASS_SPEAKER_REARLEFT",0
	align	4
_313:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,48,49,57,56,57,56,56,56
_314:
	db	"BASS_SPEAKER_REARRIGHT",0
	align	4
_315:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,55,48,52,50,53,51,52,52
_316:
	db	"BASS_SPEAKER_CENTER",0
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,49,56,55,54,55,49,48,52
_318:
	db	"BASS_SPEAKER_LFE",0
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,56,55,50,48,50,53,54,48
_320:
	db	"BASS_SPEAKER_REAR2LEFT",0
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,51,53,53,52,52,51,50,48
_322:
	db	"BASS_SPEAKER_REAR2RIGHT",0
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	54,48,51,57,55,57,55,55,54
_324:
	db	"BASS_TAG_ID3",0
_325:
	db	"BASS_TAG_ID3V2",0
_326:
	db	"BASS_TAG_OGG",0
_327:
	db	"BASS_TAG_HTTP",0
_328:
	db	"BASS_TAG_ICY",0
_329:
	db	"BASS_TAG_META",0
_330:
	db	"BASS_3DMODE_NORMAL",0
_331:
	db	"BASS_3DMODE_RELATIVE",0
_332:
	db	"BASS_3DMODE_OFF",0
_333:
	db	"EAX_ENVIRONMENT_GENERIC",0
_334:
	db	"EAX_ENVIRONMENT_PADDEDCELL",0
_335:
	db	"EAX_ENVIRONMENT_ROOM",0
_336:
	db	"EAX_ENVIRONMENT_BATHROOM",0
_337:
	db	"EAX_ENVIRONMENT_LIVINGROOM",0
_338:
	db	"EAX_ENVIRONMENT_STONEROOM",0
_339:
	db	"EAX_ENVIRONMENT_AUDITORIUM",0
_340:
	db	"EAX_ENVIRONMENT_CONCERTHALL",0
_341:
	db	"EAX_ENVIRONMENT_CAVE",0
_342:
	db	"EAX_ENVIRONMENT_ARENA",0
_343:
	db	"EAX_ENVIRONMENT_HANGAR",0
_344:
	db	"EAX_ENVIRONMENT_CARPETEDHALLWAY",0
_345:
	db	"EAX_ENVIRONMENT_HALLWAY",0
_346:
	db	"EAX_ENVIRONMENT_STONECORRIDOR",0
_347:
	db	"EAX_ENVIRONMENT_ALLEY",0
_348:
	db	"EAX_ENVIRONMENT_FOREST",0
_349:
	db	"EAX_ENVIRONMENT_CITY",0
_350:
	db	"EAX_ENVIRONMENT_MOUNTAINS",0
_351:
	db	"EAX_ENVIRONMENT_QUARRY",0
_352:
	db	"EAX_ENVIRONMENT_PLAIN",0
_353:
	db	"EAX_ENVIRONMENT_PARKINGLOT",0
_354:
	db	"EAX_ENVIRONMENT_SEWERPIPE",0
_355:
	db	"EAX_ENVIRONMENT_UNDERWATER",0
_356:
	db	"EAX_ENVIRONMENT_DRUGGED",0
_357:
	db	"EAX_ENVIRONMENT_DIZZY",0
_358:
	db	"EAX_ENVIRONMENT_PSYCHOTIC",0
_359:
	db	"EAX_ENVIRONMENT_COUNT",0
	align	4
_360:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,54
_361:
	db	"EAX_PRESET_GENERIC",0
_362:
	db	"EAX_PRESET_PADDEDCELL",0
_363:
	db	"EAX_PRESET_ROOM",0
_364:
	db	"EAX_PRESET_BATHROOM",0
_365:
	db	"EAX_PRESET_LIVINGROOM",0
_366:
	db	"EAX_PRESET_STONEROOM",0
_367:
	db	"EAX_PRESET_AUDITORIUM",0
_368:
	db	"EAX_PRESET_CONCERTHALL",0
_369:
	db	"EAX_PRESET_CAVE",0
_370:
	db	"EAX_PRESET_ARENA",0
_371:
	db	"EAX_PRESET_HANGAR",0
_372:
	db	"EAX_PRESET_CARPETEDHALLWAY",0
_373:
	db	"EAX_PRESET_HALLWAY",0
_374:
	db	"EAX_PRESET_STONECORRIDOR",0
_375:
	db	"EAX_PRESET_ALLEY",0
_376:
	db	"EAX_PRESET_FOREST",0
_377:
	db	"EAX_PRESET_CITY",0
_378:
	db	"EAX_PRESET_MOUNTAINS",0
_379:
	db	"EAX_PRESET_QUARRY",0
_380:
	db	"EAX_PRESET_PLAIN",0
_381:
	db	"EAX_PRESET_PARKINGLOT",0
_382:
	db	"EAX_PRESET_SEWERPIPE",0
_383:
	db	"EAX_PRESET_UNDERWATER",0
_384:
	db	"EAX_PRESET_DRUGGED",0
_385:
	db	"EAX_PRESET_DIZZY",0
_386:
	db	"EAX_PRESET_PSYCHOTIC",0
_387:
	db	"BASS_SYNC_POS",0
_388:
	db	"BASS_SYNC_MUSICPOS",0
_389:
	db	"BASS_SYNC_MUSICINST",0
_390:
	db	"BASS_SYNC_END",0
_391:
	db	"BASS_SYNC_MUSICFX",0
_392:
	db	"BASS_SYNC_META",0
_393:
	db	"BASS_SYNC_SLIDE",0
_394:
	db	"BASS_SYNC_MESSAGE",0
_395:
	db	"BASS_SYNC_MIXTIME",0
	align	4
_396:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	49,48,55,51,55,52,49,56,50,52
_397:
	db	"BASS_SYNC_ONETIME",0
	align	4
_398:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,56
_399:
	db	"CDCHANNEL",0
_400:
	db	"RECORDCHAN",0
_401:
	db	"BASS_ACTIVE_STOPPED",0
_402:
	db	"BASS_ACTIVE_PLAYING",0
_403:
	db	"BASS_ACTIVE_STALLED",0
_404:
	db	"BASS_ACTIVE_PAUSED",0
_405:
	db	"BASS_SLIDE_FREQ",0
_406:
	db	"BASS_SLIDE_VOL",0
_407:
	db	"BASS_SLIDE_PAN",0
_408:
	db	"BASS_CDID_IDENTITY",0
_409:
	db	"BASS_CDID_UPC",0
_410:
	db	"BASS_CDID_CDDB",0
_411:
	db	"BASS_CDID_CDDB2",0
_412:
	db	"BASS_DATA_AVAILABLE",0
_413:
	db	"BASS_DATA_FFT512",0
_414:
	db	"BASS_DATA_FFT1024",0
	align	4
_415:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,55
_416:
	db	"BASS_DATA_FFT2048",0
	align	4
_417:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,54
_418:
	db	"BASS_DATA_FFT512S",0
	align	4
_419:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,50
_420:
	db	"BASS_DATA_FFT1024S",0
	align	4
_421:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,49
_422:
	db	"BASS_DATA_FFT2048S",0
	align	4
_423:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,48
_424:
	db	"BASS_DATA_FFT_NOWINDOW",0
_425:
	db	"BASS_INPUT_OFF",0
_426:
	db	"BASS_INPUT_ON",0
_427:
	db	"BASS_INPUT_LEVEL",0
_428:
	db	"BASS_INPUT_TYPE_MASK",0
	align	4
_429:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	45,49,54,55,55,55,50,49,54
_430:
	db	"BASS_INPUT_TYPE_UNDEF",0
_431:
	db	"BASS_INPUT_TYPE_DIGITAL",0
_432:
	db	"BASS_INPUT_TYPE_LINE",0
_433:
	db	"BASS_INPUT_TYPE_MIC",0
_434:
	db	"BASS_INPUT_TYPE_SYNTH",0
_435:
	db	"BASS_INPUT_TYPE_CD",0
	align	4
_436:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	56,51,56,56,54,48,56,48
_437:
	db	"BASS_INPUT_TYPE_PHONE",0
	align	4
_438:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,48,48,54,54,51,50,57,54
_439:
	db	"BASS_INPUT_TYPE_SPEAKER",0
	align	4
_440:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,49,55,52,52,48,53,49,50
_441:
	db	"BASS_INPUT_TYPE_WAVE",0
	align	4
_442:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,51,52,50,49,55,55,50,56
_443:
	db	"BASS_INPUT_TYPE_AUX",0
	align	4
_444:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,53,48,57,57,52,57,52,52
_445:
	db	"BASS_INPUT_TYPE_ANALOG",0
	align	4
_446:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,54,55,55,55,50,49,54,48
_447:
	db	"BASS_NET_TIMEOUT",0
_448:
	db	"BASS_NET_BUFFER",0
_449:
	db	"BASS_FILEPOS_DECODE",0
_450:
	db	"BASS_FILEPOS_DOWNLOAD",0
_451:
	db	"BASS_FILEPOS_END",0
_452:
	db	"BASS_FILE_CLOSE",0
_453:
	db	"BASS_FILE_READ",0
_454:
	db	"BASS_FILE_QUERY",0
_455:
	db	"BASS_FILE_LEN",0
_456:
	db	"BASS_OBJECT_DS",0
_457:
	db	"BASS_OBJECT_DS3DL",0
_458:
	db	"BASS_VAM_HARDWARE",0
_459:
	db	"BASS_VAM_SOFTWARE",0
_460:
	db	"BASS_VAM_TERM_TIME",0
_461:
	db	"BASS_VAM_TERM_DIST",0
_462:
	db	"BASS_VAM_TERM_PRIO",0
_463:
	db	"BASS_3DALG_DEFAULT",0
_464:
	db	"BASS_3DALG_OFF",0
_465:
	db	"BASS_3DALG_FULL",0
_466:
	db	"BASS_3DALG_LIGHT",0
_467:
	db	"BASS_FX_CHORUS",0
_468:
	db	"BASS_FX_COMPRESSOR",0
_469:
	db	"BASS_FX_DISTORTION",0
_470:
	db	"BASS_FX_ECHO",0
_471:
	db	"BASS_FX_FLANGER",0
_472:
	db	"BASS_FX_GARGLE",0
_473:
	db	"BASS_FX_I3DL2REVERB",0
_474:
	db	"BASS_FX_PARAMEQ",0
_475:
	db	"BASS_FX_REVERB",0
_476:
	db	"BASS_FX_PHASE_NEG_180",0
_477:
	db	"BASS_FX_PHASE_NEG_90",0
_478:
	db	"BASS_FX_PHASE_ZERO",0
_479:
	db	"BASS_FX_PHASE_90",0
_480:
	db	"BASS_FX_PHASE_180",0
_481:
	db	"BASS_CD_RWFLAG_READCDR",0
_482:
	db	"BASS_CD_RWFLAG_READCDRW",0
_483:
	db	"BASS_CD_RWFLAG_READCDRW2",0
_484:
	db	"BASS_CD_RWFLAG_READDVD",0
_485:
	db	"BASS_CD_RWFLAG_READDVDR",0
_486:
	db	"BASS_CD_RWFLAG_READDVDRAM",0
_487:
	db	"BASS_CD_RWFLAG_READM2F1",0
_488:
	db	"BASS_CD_RWFLAG_READM2F2",0
_489:
	db	"BASS_CD_RWFLAG_READMULTI",0
_490:
	db	"BASS_CD_RWFLAG_READCDDA",0
_491:
	db	"BASS_CD_RWFLAG_READCDDASIA",0
_492:
	db	"BASS_CD_RWFLAG_READUPC",0
_493:
	db	"BASS_CD_FREEOLD",0
_494:
	db	"BASS_SYNC_CD_ERROR",0
	align	4
_495:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,48
_496:
	db	"BASS_CD_DOOR_CLOSE",0
_497:
	db	"BASS_CD_DOOR_OPEN",0
_498:
	db	"BASS_CD_DOOR_LOCK",0
_499:
	db	"BASS_CD_DOOR_UNLOCK",0
_500:
	db	"BASS_ERROR_WMA_LICENSE",0
_501:
	db	"BASS_ERROR_WMA_WM9",0
	align	4
_502:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,49
_503:
	db	"BASS_ERROR_WMA_DENIED",0
	align	4
_504:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,50
_505:
	db	"BASS_ERROR_WMA_CODEC",0
	align	4
_506:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,51
_507:
	db	"BASS_WMA_ENCODE_TAGS",0
_508:
	db	"BASS_WMA_ENCODE_SCRIPT",0
_509:
	db	"BASS_WMA_ENCODE_RATES_VBR",0
_510:
	db	"BASS_WMA_ENCODE_HEAD",0
_511:
	db	"BASS_WMA_ENCODE_DATA",0
_512:
	db	"BASS_WMA_ENCODE_DONE",0
_513:
	db	"BASS_CTYPE_STREAM_WMA",0
	align	4
_514:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	54,54,51,48,52
_515:
	db	"dll",0
_516:
	db	"dll2",0
_517:
	db	"addr",0
_518:
	db	"addl",0
_519:
	db	"l",0
_520:
	db	"BASS_Init",0
_521:
	db	"(i,i,i,i,i)i",0
	align	4
_bb_BASS_Init:
	dd	_brl_blitz_NullFunctionError
_522:
	db	"BASS_StreamCreateFile",0
_523:
	db	"(i,*b,i,i,i)i",0
	align	4
_bb_BASS_StreamCreateFile:
	dd	_brl_blitz_NullFunctionError
_524:
	db	"BASS_WMA_StreamCreateFile",0
	align	4
_bb_BASS_WMA_StreamCreateFile:
	dd	_brl_blitz_NullFunctionError
_525:
	db	"BASS_MusicLoad",0
_526:
	db	"(i,*b,i,i,i,i)i",0
	align	4
_bb_BASS_MusicLoad:
	dd	_brl_blitz_NullFunctionError
_527:
	db	"BASS_ChannelPlay",0
_528:
	db	"(i,i)i",0
	align	4
_bb_BASS_ChannelPlay:
	dd	_brl_blitz_NullFunctionError
_529:
	db	"BASS_Free",0
_530:
	db	"()i",0
	align	4
_bb_BASS_Free:
	dd	_brl_blitz_NullFunctionError
_531:
	db	"BASS_ErrorGetCode",0
	align	4
_bb_BASS_ErrorGetCode:
	dd	_brl_blitz_NullFunctionError
_532:
	db	"BASS_StreamGetLength",0
_533:
	db	"(i)i",0
	align	4
_bb_BASS_StreamGetLength:
	dd	_brl_blitz_NullFunctionError
_534:
	db	"BASS_ChannelStop",0
	align	4
_bb_BASS_ChannelStop:
	dd	_brl_blitz_NullFunctionError
_535:
	db	"BASS_ChannelPause",0
	align	4
_bb_BASS_ChannelPause:
	dd	_brl_blitz_NullFunctionError
_536:
	db	"BASS_ChannelIsActive",0
	align	4
_bb_BASS_ChannelIsActive:
	dd	_brl_blitz_NullFunctionError
_537:
	db	"BASS_ChannelGetLevel",0
	align	4
_bb_BASS_ChannelGetLevel:
	dd	_brl_blitz_NullFunctionError
_538:
	db	"BASS_ChannelGetPosition",0
	align	4
_bb_BASS_ChannelGetPosition:
	dd	_brl_blitz_NullFunctionError
_539:
	db	"BASS_ChannelSetPosition",0
_540:
	db	"(i,l)i",0
	align	4
_bb_BASS_ChannelSetPosition:
	dd	_brl_blitz_NullFunctionError
_541:
	db	"BASS_ChannelGetAttributes",0
_542:
	db	"(i,*i,*i,*i)i",0
	align	4
_bb_BASS_ChannelGetAttributes:
	dd	_brl_blitz_NullFunctionError
_543:
	db	"BASS_ChannelSetAttributes",0
_544:
	db	"(i,i,i,i)i",0
	align	4
_bb_BASS_ChannelSetAttributes:
	dd	_brl_blitz_NullFunctionError
	align	4
_127:
	dd	1
	dd	_128
	dd	1
	dd	_129
	dd	_130
	dd	_131
	dd	1
	dd	_132
	dd	_130
	dd	_133
	dd	1
	dd	_134
	dd	_130
	dd	_133
	dd	1
	dd	_135
	dd	_130
	dd	_131
	dd	1
	dd	_136
	dd	_130
	dd	_137
	dd	1
	dd	_138
	dd	_130
	dd	_139
	dd	1
	dd	_140
	dd	_130
	dd	_141
	dd	1
	dd	_142
	dd	_130
	dd	_143
	dd	1
	dd	_144
	dd	_130
	dd	_145
	dd	1
	dd	_146
	dd	_130
	dd	_147
	dd	1
	dd	_148
	dd	_130
	dd	_149
	dd	1
	dd	_150
	dd	_130
	dd	_151
	dd	1
	dd	_152
	dd	_130
	dd	_153
	dd	1
	dd	_154
	dd	_130
	dd	_155
	dd	1
	dd	_156
	dd	_130
	dd	_157
	dd	1
	dd	_158
	dd	_130
	dd	_159
	dd	1
	dd	_160
	dd	_130
	dd	_161
	dd	1
	dd	_162
	dd	_130
	dd	_163
	dd	1
	dd	_164
	dd	_130
	dd	_165
	dd	1
	dd	_166
	dd	_130
	dd	_167
	dd	1
	dd	_168
	dd	_130
	dd	_169
	dd	1
	dd	_170
	dd	_130
	dd	_171
	dd	1
	dd	_172
	dd	_130
	dd	_173
	dd	1
	dd	_174
	dd	_130
	dd	_175
	dd	1
	dd	_176
	dd	_130
	dd	_177
	dd	1
	dd	_178
	dd	_130
	dd	_179
	dd	1
	dd	_180
	dd	_130
	dd	_181
	dd	1
	dd	_182
	dd	_130
	dd	_183
	dd	1
	dd	_184
	dd	_130
	dd	_185
	dd	1
	dd	_186
	dd	_130
	dd	_187
	dd	1
	dd	_188
	dd	_130
	dd	_189
	dd	1
	dd	_190
	dd	_130
	dd	_191
	dd	1
	dd	_192
	dd	_130
	dd	_193
	dd	1
	dd	_194
	dd	_130
	dd	_195
	dd	1
	dd	_196
	dd	_130
	dd	_197
	dd	1
	dd	_198
	dd	_130
	dd	_199
	dd	1
	dd	_200
	dd	_130
	dd	_201
	dd	1
	dd	_202
	dd	_130
	dd	_203
	dd	1
	dd	_204
	dd	_130
	dd	_205
	dd	1
	dd	_206
	dd	_130
	dd	_207
	dd	1
	dd	_208
	dd	_130
	dd	_209
	dd	1
	dd	_210
	dd	_130
	dd	_211
	dd	1
	dd	_212
	dd	_130
	dd	_131
	dd	1
	dd	_213
	dd	_130
	dd	_137
	dd	1
	dd	_214
	dd	_130
	dd	_141
	dd	1
	dd	_215
	dd	_130
	dd	_191
	dd	1
	dd	_216
	dd	_130
	dd	_217
	dd	1
	dd	_218
	dd	_130
	dd	_219
	dd	1
	dd	_220
	dd	_130
	dd	_221
	dd	1
	dd	_222
	dd	_130
	dd	_223
	dd	1
	dd	_224
	dd	_130
	dd	_225
	dd	1
	dd	_226
	dd	_130
	dd	_165
	dd	1
	dd	_227
	dd	_130
	dd	_191
	dd	1
	dd	_228
	dd	_130
	dd	_229
	dd	1
	dd	_230
	dd	_130
	dd	_219
	dd	1
	dd	_231
	dd	_130
	dd	_221
	dd	1
	dd	_232
	dd	_130
	dd	_223
	dd	1
	dd	_233
	dd	_130
	dd	_225
	dd	1
	dd	_234
	dd	_130
	dd	_191
	dd	1
	dd	_235
	dd	_130
	dd	_229
	dd	1
	dd	_236
	dd	_130
	dd	_131
	dd	1
	dd	_237
	dd	_130
	dd	_137
	dd	1
	dd	_238
	dd	_130
	dd	_141
	dd	1
	dd	_239
	dd	_130
	dd	_149
	dd	1
	dd	_240
	dd	_130
	dd	_165
	dd	1
	dd	_241
	dd	_130
	dd	_191
	dd	1
	dd	_242
	dd	_130
	dd	_229
	dd	1
	dd	_243
	dd	_130
	dd	_217
	dd	1
	dd	_244
	dd	_130
	dd	_219
	dd	1
	dd	_245
	dd	_130
	dd	_221
	dd	1
	dd	_246
	dd	_130
	dd	_223
	dd	1
	dd	_247
	dd	_130
	dd	_225
	dd	1
	dd	_248
	dd	_130
	dd	_131
	dd	1
	dd	_249
	dd	_130
	dd	_137
	dd	1
	dd	_250
	dd	_130
	dd	_141
	dd	1
	dd	_251
	dd	_130
	dd	_165
	dd	1
	dd	_252
	dd	_130
	dd	_191
	dd	1
	dd	_253
	dd	_130
	dd	_229
	dd	1
	dd	_254
	dd	_130
	dd	_217
	dd	1
	dd	_255
	dd	_130
	dd	_219
	dd	1
	dd	_256
	dd	_130
	dd	_221
	dd	1
	dd	_257
	dd	_130
	dd	_223
	dd	1
	dd	_258
	dd	_130
	dd	_225
	dd	1
	dd	_259
	dd	_130
	dd	_260
	dd	1
	dd	_261
	dd	_130
	dd	_262
	dd	1
	dd	_263
	dd	_130
	dd	_264
	dd	1
	dd	_265
	dd	_130
	dd	_266
	dd	1
	dd	_267
	dd	_130
	dd	_268
	dd	1
	dd	_269
	dd	_130
	dd	_270
	dd	1
	dd	_271
	dd	_130
	dd	_131
	dd	1
	dd	_272
	dd	_130
	dd	_219
	dd	1
	dd	_273
	dd	_130
	dd	_137
	dd	1
	dd	_274
	dd	_130
	dd	_141
	dd	1
	dd	_275
	dd	_130
	dd	_149
	dd	1
	dd	_276
	dd	_130
	dd	_165
	dd	1
	dd	_277
	dd	_130
	dd	_191
	dd	1
	dd	_278
	dd	_130
	dd	_229
	dd	1
	dd	_279
	dd	_130
	dd	_217
	dd	1
	dd	_280
	dd	_130
	dd	_266
	dd	1
	dd	_281
	dd	_130
	dd	_282
	dd	1
	dd	_283
	dd	_130
	dd	_284
	dd	1
	dd	_285
	dd	_130
	dd	_282
	dd	1
	dd	_286
	dd	_130
	dd	_287
	dd	1
	dd	_288
	dd	_130
	dd	_289
	dd	1
	dd	_290
	dd	_130
	dd	_291
	dd	1
	dd	_292
	dd	_130
	dd	_268
	dd	1
	dd	_293
	dd	_130
	dd	_270
	dd	1
	dd	_294
	dd	_130
	dd	_295
	dd	1
	dd	_296
	dd	_130
	dd	_297
	dd	1
	dd	_298
	dd	_130
	dd	_299
	dd	1
	dd	_300
	dd	_130
	dd	_301
	dd	1
	dd	_302
	dd	_130
	dd	_303
	dd	1
	dd	_304
	dd	_130
	dd	_305
	dd	1
	dd	_306
	dd	_130
	dd	_307
	dd	1
	dd	_308
	dd	_130
	dd	_309
	dd	1
	dd	_310
	dd	_130
	dd	_311
	dd	1
	dd	_312
	dd	_130
	dd	_313
	dd	1
	dd	_314
	dd	_130
	dd	_315
	dd	1
	dd	_316
	dd	_130
	dd	_317
	dd	1
	dd	_318
	dd	_130
	dd	_319
	dd	1
	dd	_320
	dd	_130
	dd	_321
	dd	1
	dd	_322
	dd	_130
	dd	_323
	dd	1
	dd	_324
	dd	_130
	dd	_133
	dd	1
	dd	_325
	dd	_130
	dd	_131
	dd	1
	dd	_326
	dd	_130
	dd	_137
	dd	1
	dd	_327
	dd	_130
	dd	_139
	dd	1
	dd	_328
	dd	_130
	dd	_141
	dd	1
	dd	_329
	dd	_130
	dd	_143
	dd	1
	dd	_330
	dd	_130
	dd	_133
	dd	1
	dd	_331
	dd	_130
	dd	_131
	dd	1
	dd	_332
	dd	_130
	dd	_137
	dd	1
	dd	_333
	dd	_130
	dd	_133
	dd	1
	dd	_334
	dd	_130
	dd	_131
	dd	1
	dd	_335
	dd	_130
	dd	_137
	dd	1
	dd	_336
	dd	_130
	dd	_139
	dd	1
	dd	_337
	dd	_130
	dd	_141
	dd	1
	dd	_338
	dd	_130
	dd	_143
	dd	1
	dd	_339
	dd	_130
	dd	_145
	dd	1
	dd	_340
	dd	_130
	dd	_147
	dd	1
	dd	_341
	dd	_130
	dd	_149
	dd	1
	dd	_342
	dd	_130
	dd	_151
	dd	1
	dd	_343
	dd	_130
	dd	_153
	dd	1
	dd	_344
	dd	_130
	dd	_155
	dd	1
	dd	_345
	dd	_130
	dd	_157
	dd	1
	dd	_346
	dd	_130
	dd	_159
	dd	1
	dd	_347
	dd	_130
	dd	_161
	dd	1
	dd	_348
	dd	_130
	dd	_163
	dd	1
	dd	_349
	dd	_130
	dd	_165
	dd	1
	dd	_350
	dd	_130
	dd	_167
	dd	1
	dd	_351
	dd	_130
	dd	_169
	dd	1
	dd	_352
	dd	_130
	dd	_171
	dd	1
	dd	_353
	dd	_130
	dd	_173
	dd	1
	dd	_354
	dd	_130
	dd	_175
	dd	1
	dd	_355
	dd	_130
	dd	_177
	dd	1
	dd	_356
	dd	_130
	dd	_179
	dd	1
	dd	_357
	dd	_130
	dd	_181
	dd	1
	dd	_358
	dd	_130
	dd	_183
	dd	1
	dd	_359
	dd	_130
	dd	_360
	dd	1
	dd	_361
	dd	_130
	dd	_131
	dd	1
	dd	_362
	dd	_130
	dd	_137
	dd	1
	dd	_363
	dd	_130
	dd	_139
	dd	1
	dd	_364
	dd	_130
	dd	_141
	dd	1
	dd	_365
	dd	_130
	dd	_143
	dd	1
	dd	_366
	dd	_130
	dd	_145
	dd	1
	dd	_367
	dd	_130
	dd	_147
	dd	1
	dd	_368
	dd	_130
	dd	_149
	dd	1
	dd	_369
	dd	_130
	dd	_151
	dd	1
	dd	_370
	dd	_130
	dd	_153
	dd	1
	dd	_371
	dd	_130
	dd	_155
	dd	1
	dd	_372
	dd	_130
	dd	_157
	dd	1
	dd	_373
	dd	_130
	dd	_159
	dd	1
	dd	_374
	dd	_130
	dd	_161
	dd	1
	dd	_375
	dd	_130
	dd	_163
	dd	1
	dd	_376
	dd	_130
	dd	_165
	dd	1
	dd	_377
	dd	_130
	dd	_167
	dd	1
	dd	_378
	dd	_130
	dd	_169
	dd	1
	dd	_379
	dd	_130
	dd	_171
	dd	1
	dd	_380
	dd	_130
	dd	_173
	dd	1
	dd	_381
	dd	_130
	dd	_175
	dd	1
	dd	_382
	dd	_130
	dd	_177
	dd	1
	dd	_383
	dd	_130
	dd	_179
	dd	1
	dd	_384
	dd	_130
	dd	_181
	dd	1
	dd	_385
	dd	_130
	dd	_183
	dd	1
	dd	_386
	dd	_130
	dd	_360
	dd	1
	dd	_387
	dd	_130
	dd	_133
	dd	1
	dd	_388
	dd	_130
	dd	_133
	dd	1
	dd	_389
	dd	_130
	dd	_131
	dd	1
	dd	_390
	dd	_130
	dd	_137
	dd	1
	dd	_391
	dd	_130
	dd	_139
	dd	1
	dd	_392
	dd	_130
	dd	_141
	dd	1
	dd	_393
	dd	_130
	dd	_143
	dd	1
	dd	_394
	dd	_130
	dd	_307
	dd	1
	dd	_395
	dd	_130
	dd	_396
	dd	1
	dd	_397
	dd	_130
	dd	_398
	dd	1
	dd	_399
	dd	_130
	dd	_133
	dd	1
	dd	_400
	dd	_130
	dd	_131
	dd	1
	dd	_401
	dd	_130
	dd	_133
	dd	1
	dd	_402
	dd	_130
	dd	_131
	dd	1
	dd	_403
	dd	_130
	dd	_137
	dd	1
	dd	_404
	dd	_130
	dd	_139
	dd	1
	dd	_405
	dd	_130
	dd	_131
	dd	1
	dd	_406
	dd	_130
	dd	_137
	dd	1
	dd	_407
	dd	_130
	dd	_141
	dd	1
	dd	_408
	dd	_130
	dd	_133
	dd	1
	dd	_409
	dd	_130
	dd	_131
	dd	1
	dd	_410
	dd	_130
	dd	_137
	dd	1
	dd	_411
	dd	_130
	dd	_139
	dd	1
	dd	_412
	dd	_130
	dd	_133
	dd	1
	dd	_413
	dd	_130
	dd	_398
	dd	1
	dd	_414
	dd	_130
	dd	_415
	dd	1
	dd	_416
	dd	_130
	dd	_417
	dd	1
	dd	_418
	dd	_130
	dd	_419
	dd	1
	dd	_420
	dd	_130
	dd	_421
	dd	1
	dd	_422
	dd	_130
	dd	_423
	dd	1
	dd	_424
	dd	_130
	dd	_191
	dd	1
	dd	_425
	dd	_130
	dd	_266
	dd	1
	dd	_426
	dd	_130
	dd	_282
	dd	1
	dd	_427
	dd	_130
	dd	_287
	dd	1
	dd	_428
	dd	_130
	dd	_429
	dd	1
	dd	_430
	dd	_130
	dd	_133
	dd	1
	dd	_431
	dd	_130
	dd	_297
	dd	1
	dd	_432
	dd	_130
	dd	_299
	dd	1
	dd	_433
	dd	_130
	dd	_301
	dd	1
	dd	_434
	dd	_130
	dd	_303
	dd	1
	dd	_435
	dd	_130
	dd	_436
	dd	1
	dd	_437
	dd	_130
	dd	_438
	dd	1
	dd	_439
	dd	_130
	dd	_440
	dd	1
	dd	_441
	dd	_130
	dd	_442
	dd	1
	dd	_443
	dd	_130
	dd	_444
	dd	1
	dd	_445
	dd	_130
	dd	_446
	dd	1
	dd	_447
	dd	_130
	dd	_133
	dd	1
	dd	_448
	dd	_130
	dd	_131
	dd	1
	dd	_449
	dd	_130
	dd	_133
	dd	1
	dd	_450
	dd	_130
	dd	_131
	dd	1
	dd	_451
	dd	_130
	dd	_137
	dd	1
	dd	_452
	dd	_130
	dd	_133
	dd	1
	dd	_453
	dd	_130
	dd	_131
	dd	1
	dd	_454
	dd	_130
	dd	_137
	dd	1
	dd	_455
	dd	_130
	dd	_139
	dd	1
	dd	_456
	dd	_130
	dd	_131
	dd	1
	dd	_457
	dd	_130
	dd	_137
	dd	1
	dd	_458
	dd	_130
	dd	_131
	dd	1
	dd	_459
	dd	_130
	dd	_137
	dd	1
	dd	_460
	dd	_130
	dd	_141
	dd	1
	dd	_461
	dd	_130
	dd	_149
	dd	1
	dd	_462
	dd	_130
	dd	_165
	dd	1
	dd	_463
	dd	_130
	dd	_133
	dd	1
	dd	_464
	dd	_130
	dd	_131
	dd	1
	dd	_465
	dd	_130
	dd	_137
	dd	1
	dd	_466
	dd	_130
	dd	_139
	dd	1
	dd	_467
	dd	_130
	dd	_133
	dd	1
	dd	_468
	dd	_130
	dd	_131
	dd	1
	dd	_469
	dd	_130
	dd	_137
	dd	1
	dd	_470
	dd	_130
	dd	_139
	dd	1
	dd	_471
	dd	_130
	dd	_141
	dd	1
	dd	_472
	dd	_130
	dd	_143
	dd	1
	dd	_473
	dd	_130
	dd	_145
	dd	1
	dd	_474
	dd	_130
	dd	_147
	dd	1
	dd	_475
	dd	_130
	dd	_149
	dd	1
	dd	_476
	dd	_130
	dd	_133
	dd	1
	dd	_477
	dd	_130
	dd	_131
	dd	1
	dd	_478
	dd	_130
	dd	_137
	dd	1
	dd	_479
	dd	_130
	dd	_139
	dd	1
	dd	_480
	dd	_130
	dd	_141
	dd	1
	dd	_481
	dd	_130
	dd	_131
	dd	1
	dd	_482
	dd	_130
	dd	_137
	dd	1
	dd	_483
	dd	_130
	dd	_141
	dd	1
	dd	_484
	dd	_130
	dd	_149
	dd	1
	dd	_485
	dd	_130
	dd	_165
	dd	1
	dd	_486
	dd	_130
	dd	_191
	dd	1
	dd	_487
	dd	_130
	dd	_291
	dd	1
	dd	_488
	dd	_130
	dd	_268
	dd	1
	dd	_489
	dd	_130
	dd	_270
	dd	1
	dd	_490
	dd	_130
	dd	_297
	dd	1
	dd	_491
	dd	_130
	dd	_299
	dd	1
	dd	_492
	dd	_130
	dd	_396
	dd	1
	dd	_493
	dd	_130
	dd	_266
	dd	1
	dd	_494
	dd	_130
	dd	_495
	dd	1
	dd	_496
	dd	_130
	dd	_133
	dd	1
	dd	_497
	dd	_130
	dd	_131
	dd	1
	dd	_498
	dd	_130
	dd	_137
	dd	1
	dd	_499
	dd	_130
	dd	_139
	dd	1
	dd	_500
	dd	_130
	dd	_495
	dd	1
	dd	_501
	dd	_130
	dd	_502
	dd	1
	dd	_503
	dd	_130
	dd	_504
	dd	1
	dd	_505
	dd	_130
	dd	_506
	dd	1
	dd	_507
	dd	_130
	dd	_266
	dd	1
	dd	_508
	dd	_130
	dd	_282
	dd	1
	dd	_509
	dd	_130
	dd	_266
	dd	1
	dd	_510
	dd	_130
	dd	_133
	dd	1
	dd	_511
	dd	_130
	dd	_131
	dd	1
	dd	_512
	dd	_130
	dd	_137
	dd	1
	dd	_513
	dd	_130
	dd	_514
	dd	2
	dd	_515
	dd	_130
	dd	-12
	dd	2
	dd	_516
	dd	_130
	dd	-16
	dd	2
	dd	_517
	dd	_130
	dd	-20
	dd	2
	dd	_518
	dd	_519
	dd	-8
	dd	4
	dd	_520
	dd	_521
	dd	_bb_BASS_Init
	dd	4
	dd	_522
	dd	_523
	dd	_bb_BASS_StreamCreateFile
	dd	4
	dd	_524
	dd	_523
	dd	_bb_BASS_WMA_StreamCreateFile
	dd	4
	dd	_525
	dd	_526
	dd	_bb_BASS_MusicLoad
	dd	4
	dd	_527
	dd	_528
	dd	_bb_BASS_ChannelPlay
	dd	4
	dd	_529
	dd	_530
	dd	_bb_BASS_Free
	dd	4
	dd	_531
	dd	_530
	dd	_bb_BASS_ErrorGetCode
	dd	4
	dd	_532
	dd	_533
	dd	_bb_BASS_StreamGetLength
	dd	4
	dd	_534
	dd	_533
	dd	_bb_BASS_ChannelStop
	dd	4
	dd	_535
	dd	_533
	dd	_bb_BASS_ChannelPause
	dd	4
	dd	_536
	dd	_533
	dd	_bb_BASS_ChannelIsActive
	dd	4
	dd	_537
	dd	_533
	dd	_bb_BASS_ChannelGetLevel
	dd	4
	dd	_538
	dd	_533
	dd	_bb_BASS_ChannelGetPosition
	dd	4
	dd	_539
	dd	_540
	dd	_bb_BASS_ChannelSetPosition
	dd	4
	dd	_541
	dd	_542
	dd	_bb_BASS_ChannelGetAttributes
	dd	4
	dd	_543
	dd	_544
	dd	_bb_BASS_ChannelSetAttributes
	dd	0
_35:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/bass.bmx",0
	align	4
_34:
	dd	_35
	dd	310
	dd	1
	align	4
_10:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	98,97,115,115,46,100,108,108
	align	4
_39:
	dd	_35
	dd	311
	dd	1
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	98,97,115,115,119,109,97,46,100,108,108
	align	4
_43:
	dd	_35
	dd	312
	dd	1
	align	4
_45:
	dd	_35
	dd	313
	dd	1
	align	4
_47:
	dd	_35
	dd	315
	dd	1
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	66,65,83,83,95,73,110,105,116
	align	4
_50:
	dd	_35
	dd	316
	dd	1
	align	4
_51:
	dd	_35
	dd	317
	dd	1
	align	4
_52:
	dd	_35
	dd	332
	dd	1
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	66,65,83,83,95,83,116,114,101,97,109,67,114,101,97,116
	dw	101,70,105,108,101
	align	4
_55:
	dd	_35
	dd	333
	dd	1
	align	4
_56:
	dd	_35
	dd	334
	dd	1
	align	4
_57:
	dd	_35
	dd	336
	dd	1
	align	4
_14:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	66,65,83,83,95,87,77,65,95,83,116,114,101,97,109,67
	dw	114,101,97,116,101,70,105,108,101
	align	4
_60:
	dd	_35
	dd	337
	dd	1
	align	4
_61:
	dd	_35
	dd	338
	dd	1
	align	4
_62:
	dd	_35
	dd	340
	dd	1
	align	4
_15:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	66,65,83,83,95,77,117,115,105,99,76,111,97,100
	align	4
_65:
	dd	_35
	dd	341
	dd	1
	align	4
_66:
	dd	_35
	dd	342
	dd	1
	align	4
_67:
	dd	_35
	dd	344
	dd	1
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	66,65,83,83,95,67,104,97,110,110,101,108,80,108,97,121
	align	4
_70:
	dd	_35
	dd	345
	dd	1
	align	4
_71:
	dd	_35
	dd	346
	dd	1
	align	4
_72:
	dd	_35
	dd	348
	dd	1
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	66,65,83,83,95,70,114,101,101
	align	4
_75:
	dd	_35
	dd	349
	dd	1
	align	4
_76:
	dd	_35
	dd	350
	dd	1
	align	4
_77:
	dd	_35
	dd	352
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	66,65,83,83,95,69,114,114,111,114,71,101,116,67,111,100
	dw	101
	align	4
_80:
	dd	_35
	dd	353
	dd	1
	align	4
_81:
	dd	_35
	dd	354
	dd	1
	align	4
_82:
	dd	_35
	dd	356
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	66,65,83,83,95,83,116,114,101,97,109,71,101,116,76,101
	dw	110,103,116,104
	align	4
_85:
	dd	_35
	dd	357
	dd	1
	align	4
_86:
	dd	_35
	dd	358
	dd	1
	align	4
_87:
	dd	_35
	dd	360
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	66,65,83,83,95,67,104,97,110,110,101,108,83,116,111,112
	align	4
_90:
	dd	_35
	dd	361
	dd	1
	align	4
_91:
	dd	_35
	dd	362
	dd	1
	align	4
_92:
	dd	_35
	dd	364
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	66,65,83,83,95,67,104,97,110,110,101,108,80,97,117,115
	dw	101
	align	4
_95:
	dd	_35
	dd	365
	dd	1
	align	4
_96:
	dd	_35
	dd	366
	dd	1
	align	4
_97:
	dd	_35
	dd	368
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	66,65,83,83,95,67,104,97,110,110,101,108,73,115,65,99
	dw	116,105,118,101
	align	4
_100:
	dd	_35
	dd	369
	dd	1
	align	4
_101:
	dd	_35
	dd	370
	dd	1
	align	4
_102:
	dd	_35
	dd	372
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	66,65,83,83,95,67,104,97,110,110,101,108,71,101,116,76
	dw	101,118,101,108
	align	4
_105:
	dd	_35
	dd	373
	dd	1
	align	4
_106:
	dd	_35
	dd	374
	dd	1
	align	4
_107:
	dd	_35
	dd	376
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	66,65,83,83,95,67,104,97,110,110,101,108,71,101,116,80
	dw	111,115,105,116,105,111,110
	align	4
_110:
	dd	_35
	dd	377
	dd	1
	align	4
_111:
	dd	_35
	dd	378
	dd	1
	align	4
_112:
	dd	_35
	dd	380
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	66,65,83,83,95,67,104,97,110,110,101,108,83,101,116,80
	dw	111,115,105,116,105,111,110
	align	4
_115:
	dd	_35
	dd	381
	dd	1
	align	4
_116:
	dd	_35
	dd	382
	dd	1
	align	4
_117:
	dd	_35
	dd	384
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	66,65,83,83,95,67,104,97,110,110,101,108,71,101,116,65
	dw	116,116,114,105,98,117,116,101,115
	align	4
_120:
	dd	_35
	dd	385
	dd	1
	align	4
_121:
	dd	_35
	dd	386
	dd	1
	align	4
_122:
	dd	_35
	dd	388
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	66,65,83,83,95,67,104,97,110,110,101,108,83,101,116,65
	dw	116,116,114,105,98,117,116,101,115
	align	4
_125:
	dd	_35
	dd	389
	dd	1
	align	4
_126:
	dd	_35
	dd	390
	dd	1
_549:
	db	"MakeLong",0
_550:
	db	"HiWord",0
_551:
	db	"LoWord",0
	align	4
_548:
	dd	1
	dd	_549
	dd	2
	dd	_550
	dd	_130
	dd	-4
	dd	2
	dd	_551
	dd	_130
	dd	-8
	dd	0
	align	4
_547:
	dd	_35
	dd	396
	dd	2
