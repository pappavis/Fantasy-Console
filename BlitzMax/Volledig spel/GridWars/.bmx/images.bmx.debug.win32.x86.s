	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_pngloader_pngloader
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_brl_max2d_AutoImageFlags
	extrn	_brl_max2d_AutoMidHandle
	extrn	_brl_max2d_LoadAnimImage
	extrn	_brl_max2d_LoadImage
	public	___bb_blitzmax_code_archief__spel__gridwars_images
	public	_bb_LoadImages
	public	_bb_bluecircle
	public	_bb_bluediamond
	public	_bb_capturedimg
	public	_bb_colourpick
	public	_bb_gfxset
	public	_bb_greensquare
	public	_bb_iconimage
	public	_bb_indigotriangle
	public	_bb_orangetriangle
	public	_bb_particleimg
	public	_bb_pinkpinwheel
	public	_bb_powerimage
	public	_bb_purplesquare1
	public	_bb_purplesquare2
	public	_bb_redcircle
	public	_bb_redclone
	public	_bb_snakehead
	public	_bb_snaketail
	public	_bb_whiteplayer
	public	_bb_whitestar
	public	_bb_yellowshot
	section	"code" code
___bb_blitzmax_code_archief__spel__gridwars_images:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_78],0
	je	_79
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_79:
	mov	dword [_78],1
	push	ebp
	push	_52
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_pngloader_pngloader
	call	___bb_glmax2d_glmax2d
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_33
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_41
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_42
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_26:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LoadImages:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],_bbEmptyString
	push	ebp
	push	_352
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_1
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	call	_brl_max2d_AutoImageFlags
	add	esp,4
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_88
	push	eax
	call	_bbGCFree
	add	esp,4
_88:
	mov	dword [_bb_iconimage],ebx
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_greensquare]
	dec	dword [eax+4]
	jnz	_93
	push	eax
	call	_bbGCFree
	add	esp,4
_93:
	mov	dword [_bb_greensquare],ebx
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_purplesquare1]
	dec	dword [eax+4]
	jnz	_98
	push	eax
	call	_bbGCFree
	add	esp,4
_98:
	mov	dword [_bb_purplesquare1],ebx
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_purplesquare2]
	dec	dword [eax+4]
	jnz	_103
	push	eax
	call	_bbGCFree
	add	esp,4
_103:
	mov	dword [_bb_purplesquare2],ebx
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_bluediamond]
	dec	dword [eax+4]
	jnz	_108
	push	eax
	call	_bbGCFree
	add	esp,4
_108:
	mov	dword [_bb_bluediamond],ebx
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pinkpinwheel]
	dec	dword [eax+4]
	jnz	_113
	push	eax
	call	_bbGCFree
	add	esp,4
_113:
	mov	dword [_bb_pinkpinwheel],ebx
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_indigotriangle]
	dec	dword [eax+4]
	jnz	_118
	push	eax
	call	_bbGCFree
	add	esp,4
_118:
	mov	dword [_bb_indigotriangle],ebx
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_bluecircle]
	dec	dword [eax+4]
	jnz	_123
	push	eax
	call	_bbGCFree
	add	esp,4
_123:
	mov	dword [_bb_bluecircle],ebx
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_redclone]
	dec	dword [eax+4]
	jnz	_128
	push	eax
	call	_bbGCFree
	add	esp,4
_128:
	mov	dword [_bb_redclone],ebx
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_orangetriangle]
	dec	dword [eax+4]
	jnz	_133
	push	eax
	call	_bbGCFree
	add	esp,4
_133:
	mov	dword [_bb_orangetriangle],ebx
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_redcircle]
	dec	dword [eax+4]
	jnz	_138
	push	eax
	call	_bbGCFree
	add	esp,4
_138:
	mov	dword [_bb_redcircle],ebx
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_whiteplayer]
	dec	dword [eax+4]
	jnz	_143
	push	eax
	call	_bbGCFree
	add	esp,4
_143:
	mov	dword [_bb_whiteplayer],ebx
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_yellowshot]
	dec	dword [eax+4]
	jnz	_148
	push	eax
	call	_bbGCFree
	add	esp,4
_148:
	mov	dword [_bb_yellowshot],ebx
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_whitestar]
	dec	dword [eax+4]
	jnz	_153
	push	eax
	call	_bbGCFree
	add	esp,4
_153:
	mov	dword [_bb_whitestar],ebx
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_158
	push	eax
	call	_bbGCFree
	add	esp,4
_158:
	mov	dword [_bb_snaketail],ebx
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_snakehead]
	dec	dword [eax+4]
	jnz	_163
	push	eax
	call	_bbGCFree
	add	esp,4
_163:
	mov	dword [_bb_snakehead],ebx
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_168
	push	eax
	call	_bbGCFree
	add	esp,4
_168:
	mov	dword [_bb_powerimage],ebx
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_particleimg]
	dec	dword [eax+4]
	jnz	_173
	push	eax
	call	_bbGCFree
	add	esp,4
_173:
	mov	dword [_bb_particleimg],ebx
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_colourpick]
	dec	dword [eax+4]
	jnz	_178
	push	eax
	call	_bbGCFree
	add	esp,4
_178:
	mov	dword [_bb_colourpick],ebx
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_gfxset]
	cmp	eax,0
	je	_182
	cmp	eax,1
	je	_183
	cmp	eax,2
	je	_184
	cmp	eax,3
	je	_185
	cmp	eax,4
	je	_186
	jmp	_181
_182:
	push	ebp
	push	_203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_2
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	2
	push	0
	push	64
	push	64
	push	_3
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_192
	push	eax
	call	_bbGCFree
	add	esp,4
_192:
	mov	dword [_bb_iconimage],ebx
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	24
	push	0
	push	56
	push	56
	push	_4
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_197
	push	eax
	call	_bbGCFree
	add	esp,4
_197:
	mov	dword [_bb_snaketail],ebx
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	11
	push	0
	push	64
	push	64
	push	_5
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_202
	push	eax
	call	_bbGCFree
	add	esp,4
_202:
	mov	dword [_bb_powerimage],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_183:
	push	ebp
	push	_220
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_6
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	2
	push	0
	push	24
	push	24
	push	_3
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_209
	push	eax
	call	_bbGCFree
	add	esp,4
_209:
	mov	dword [_bb_iconimage],ebx
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	24
	push	0
	push	32
	push	32
	push	_4
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_214
	push	eax
	call	_bbGCFree
	add	esp,4
_214:
	mov	dword [_bb_snaketail],ebx
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	11
	push	0
	push	64
	push	64
	push	_5
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_219
	push	eax
	call	_bbGCFree
	add	esp,4
_219:
	mov	dword [_bb_powerimage],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_184:
	push	ebp
	push	_237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_7
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	2
	push	0
	push	32
	push	32
	push	_3
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_226
	push	eax
	call	_bbGCFree
	add	esp,4
_226:
	mov	dword [_bb_iconimage],ebx
	push	_227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	24
	push	0
	push	32
	push	32
	push	_4
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_231
	push	eax
	call	_bbGCFree
	add	esp,4
_231:
	mov	dword [_bb_snaketail],ebx
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	11
	push	0
	push	64
	push	64
	push	_5
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_236
	push	eax
	call	_bbGCFree
	add	esp,4
_236:
	mov	dword [_bb_powerimage],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_185:
	push	ebp
	push	_254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_8
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	2
	push	0
	push	64
	push	64
	push	_3
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_243
	push	eax
	call	_bbGCFree
	add	esp,4
_243:
	mov	dword [_bb_iconimage],ebx
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	24
	push	0
	push	56
	push	56
	push	_4
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_248
	push	eax
	call	_bbGCFree
	add	esp,4
_248:
	mov	dword [_bb_snaketail],ebx
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	11
	push	0
	push	64
	push	64
	push	_5
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_253
	push	eax
	call	_bbGCFree
	add	esp,4
_253:
	mov	dword [_bb_powerimage],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_186:
	push	ebp
	push	_271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_9
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	2
	push	0
	push	64
	push	64
	push	_3
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_iconimage]
	dec	dword [eax+4]
	jnz	_260
	push	eax
	call	_bbGCFree
	add	esp,4
_260:
	mov	dword [_bb_iconimage],ebx
	push	_261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	24
	push	0
	push	56
	push	56
	push	_4
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snaketail]
	dec	dword [eax+4]
	jnz	_265
	push	eax
	call	_bbGCFree
	add	esp,4
_265:
	mov	dword [_bb_snaketail],ebx
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	11
	push	0
	push	64
	push	64
	push	_5
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_powerimage]
	dec	dword [eax+4]
	jnz	_270
	push	eax
	call	_bbGCFree
	add	esp,4
_270:
	mov	dword [_bb_powerimage],ebx
	call	dword [_bbOnDebugLeaveScope]
_181:
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_10
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_greensquare]
	dec	dword [eax+4]
	jnz	_276
	push	eax
	call	_bbGCFree
	add	esp,4
_276:
	mov	dword [_bb_greensquare],ebx
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_11
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_purplesquare1]
	dec	dword [eax+4]
	jnz	_281
	push	eax
	call	_bbGCFree
	add	esp,4
_281:
	mov	dword [_bb_purplesquare1],ebx
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_12
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_purplesquare2]
	dec	dword [eax+4]
	jnz	_286
	push	eax
	call	_bbGCFree
	add	esp,4
_286:
	mov	dword [_bb_purplesquare2],ebx
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_13
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_bluediamond]
	dec	dword [eax+4]
	jnz	_291
	push	eax
	call	_bbGCFree
	add	esp,4
_291:
	mov	dword [_bb_bluediamond],ebx
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_14
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_pinkpinwheel]
	dec	dword [eax+4]
	jnz	_296
	push	eax
	call	_bbGCFree
	add	esp,4
_296:
	mov	dword [_bb_pinkpinwheel],ebx
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_15
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_indigotriangle]
	dec	dword [eax+4]
	jnz	_301
	push	eax
	call	_bbGCFree
	add	esp,4
_301:
	mov	dword [_bb_indigotriangle],ebx
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_16
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_bluecircle]
	dec	dword [eax+4]
	jnz	_306
	push	eax
	call	_bbGCFree
	add	esp,4
_306:
	mov	dword [_bb_bluecircle],ebx
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_17
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_redclone]
	dec	dword [eax+4]
	jnz	_311
	push	eax
	call	_bbGCFree
	add	esp,4
_311:
	mov	dword [_bb_redclone],ebx
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_18
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_orangetriangle]
	dec	dword [eax+4]
	jnz	_316
	push	eax
	call	_bbGCFree
	add	esp,4
_316:
	mov	dword [_bb_orangetriangle],ebx
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_19
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_redcircle]
	dec	dword [eax+4]
	jnz	_321
	push	eax
	call	_bbGCFree
	add	esp,4
_321:
	mov	dword [_bb_redcircle],ebx
	push	_322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_20
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_whiteplayer]
	dec	dword [eax+4]
	jnz	_326
	push	eax
	call	_bbGCFree
	add	esp,4
_326:
	mov	dword [_bb_whiteplayer],ebx
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_21
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_yellowshot]
	dec	dword [eax+4]
	jnz	_331
	push	eax
	call	_bbGCFree
	add	esp,4
_331:
	mov	dword [_bb_yellowshot],ebx
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_22
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_whitestar]
	dec	dword [eax+4]
	jnz	_336
	push	eax
	call	_bbGCFree
	add	esp,4
_336:
	mov	dword [_bb_whitestar],ebx
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_23
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_snakehead]
	dec	dword [eax+4]
	jnz	_341
	push	eax
	call	_bbGCFree
	add	esp,4
_341:
	mov	dword [_bb_snakehead],ebx
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_24
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_particleimg]
	dec	dword [eax+4]
	jnz	_346
	push	eax
	call	_bbGCFree
	add	esp,4
_346:
	mov	dword [_bb_particleimg],ebx
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	3
	push	0
	push	9
	push	122
	push	_25
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_colourpick]
	dec	dword [eax+4]
	jnz	_351
	push	eax
	call	_bbGCFree
	add	esp,4
_351:
	mov	dword [_bb_colourpick],ebx
	mov	ebx,0
_28:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_78:
	dd	0
_53:
	db	"images",0
_54:
	db	"gfxset",0
_55:
	db	"i",0
	align	4
_bb_gfxset:
	dd	0
_56:
	db	"iconimage",0
_57:
	db	":brl.max2d.TImage",0
	align	4
_bb_iconimage:
	dd	_bbNullObject
_58:
	db	"greensquare",0
_59:
	db	":brl.max2d.Timage",0
	align	4
_bb_greensquare:
	dd	_bbNullObject
_60:
	db	"purplesquare1",0
	align	4
_bb_purplesquare1:
	dd	_bbNullObject
_61:
	db	"purplesquare2",0
	align	4
_bb_purplesquare2:
	dd	_bbNullObject
_62:
	db	"bluediamond",0
	align	4
_bb_bluediamond:
	dd	_bbNullObject
_63:
	db	"pinkpinwheel",0
	align	4
_bb_pinkpinwheel:
	dd	_bbNullObject
_64:
	db	"indigotriangle",0
	align	4
_bb_indigotriangle:
	dd	_bbNullObject
_65:
	db	"bluecircle",0
	align	4
_bb_bluecircle:
	dd	_bbNullObject
_66:
	db	"redclone",0
	align	4
_bb_redclone:
	dd	_bbNullObject
_67:
	db	"orangetriangle",0
	align	4
_bb_orangetriangle:
	dd	_bbNullObject
_68:
	db	"redcircle",0
	align	4
_bb_redcircle:
	dd	_bbNullObject
_69:
	db	"whiteplayer",0
	align	4
_bb_whiteplayer:
	dd	_bbNullObject
_70:
	db	"yellowshot",0
	align	4
_bb_yellowshot:
	dd	_bbNullObject
_71:
	db	"whitestar",0
	align	4
_bb_whitestar:
	dd	_bbNullObject
_72:
	db	"snaketail",0
	align	4
_bb_snaketail:
	dd	_bbNullObject
_73:
	db	"snakehead",0
	align	4
_bb_snakehead:
	dd	_bbNullObject
_74:
	db	"powerimage",0
	align	4
_bb_powerimage:
	dd	_bbNullObject
_75:
	db	"capturedimg",0
	align	4
_bb_capturedimg:
	dd	_bbNullObject
_76:
	db	"particleimg",0
	align	4
_bb_particleimg:
	dd	_bbNullObject
_77:
	db	"colourpick",0
	align	4
_bb_colourpick:
	dd	_bbNullObject
	align	4
_52:
	dd	1
	dd	_53
	dd	4
	dd	_54
	dd	_55
	dd	_bb_gfxset
	dd	4
	dd	_56
	dd	_57
	dd	_bb_iconimage
	dd	4
	dd	_58
	dd	_59
	dd	_bb_greensquare
	dd	4
	dd	_60
	dd	_59
	dd	_bb_purplesquare1
	dd	4
	dd	_61
	dd	_59
	dd	_bb_purplesquare2
	dd	4
	dd	_62
	dd	_59
	dd	_bb_bluediamond
	dd	4
	dd	_63
	dd	_59
	dd	_bb_pinkpinwheel
	dd	4
	dd	_64
	dd	_59
	dd	_bb_indigotriangle
	dd	4
	dd	_65
	dd	_59
	dd	_bb_bluecircle
	dd	4
	dd	_66
	dd	_59
	dd	_bb_redclone
	dd	4
	dd	_67
	dd	_59
	dd	_bb_orangetriangle
	dd	4
	dd	_68
	dd	_59
	dd	_bb_redcircle
	dd	4
	dd	_69
	dd	_59
	dd	_bb_whiteplayer
	dd	4
	dd	_70
	dd	_59
	dd	_bb_yellowshot
	dd	4
	dd	_71
	dd	_59
	dd	_bb_whitestar
	dd	4
	dd	_72
	dd	_57
	dd	_bb_snaketail
	dd	4
	dd	_73
	dd	_57
	dd	_bb_snakehead
	dd	4
	dd	_74
	dd	_57
	dd	_bb_powerimage
	dd	4
	dd	_75
	dd	_57
	dd	_bb_capturedimg
	dd	4
	dd	_76
	dd	_59
	dd	_bb_particleimg
	dd	4
	dd	_77
	dd	_59
	dd	_bb_colourpick
	dd	0
_31:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/images.bmx",0
	align	4
_30:
	dd	_31
	dd	5
	dd	1
	align	4
_32:
	dd	_31
	dd	8
	dd	1
	align	4
_33:
	dd	_31
	dd	9
	dd	1
	align	4
_34:
	dd	_31
	dd	10
	dd	1
	align	4
_35:
	dd	_31
	dd	11
	dd	1
	align	4
_36:
	dd	_31
	dd	12
	dd	1
	align	4
_37:
	dd	_31
	dd	13
	dd	1
	align	4
_38:
	dd	_31
	dd	14
	dd	1
	align	4
_39:
	dd	_31
	dd	15
	dd	1
	align	4
_40:
	dd	_31
	dd	16
	dd	1
	align	4
_41:
	dd	_31
	dd	17
	dd	1
	align	4
_42:
	dd	_31
	dd	18
	dd	1
	align	4
_43:
	dd	_31
	dd	19
	dd	1
	align	4
_44:
	dd	_31
	dd	20
	dd	1
	align	4
_45:
	dd	_31
	dd	21
	dd	1
	align	4
_46:
	dd	_31
	dd	22
	dd	1
	align	4
_47:
	dd	_31
	dd	23
	dd	1
	align	4
_48:
	dd	_31
	dd	24
	dd	1
	align	4
_49:
	dd	_31
	dd	25
	dd	1
	align	4
_50:
	dd	_31
	dd	26
	dd	1
	align	4
_51:
	dd	_31
	dd	27
	dd	1
_353:
	db	"LoadImages",0
_354:
	db	"path",0
_355:
	db	"$",0
	align	4
_352:
	dd	1
	dd	_353
	dd	2
	dd	_354
	dd	_355
	dd	-4
	dd	0
	align	4
_80:
	dd	_31
	dd	31
	dd	2
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_82:
	dd	_31
	dd	33
	dd	2
	align	4
_83:
	dd	_31
	dd	34
	dd	2
	align	4
_84:
	dd	_31
	dd	35
	dd	2
	align	4
_89:
	dd	_31
	dd	36
	dd	2
	align	4
_94:
	dd	_31
	dd	37
	dd	2
	align	4
_99:
	dd	_31
	dd	38
	dd	2
	align	4
_104:
	dd	_31
	dd	39
	dd	2
	align	4
_109:
	dd	_31
	dd	40
	dd	2
	align	4
_114:
	dd	_31
	dd	41
	dd	2
	align	4
_119:
	dd	_31
	dd	42
	dd	2
	align	4
_124:
	dd	_31
	dd	43
	dd	2
	align	4
_129:
	dd	_31
	dd	44
	dd	2
	align	4
_134:
	dd	_31
	dd	45
	dd	2
	align	4
_139:
	dd	_31
	dd	46
	dd	2
	align	4
_144:
	dd	_31
	dd	47
	dd	2
	align	4
_149:
	dd	_31
	dd	48
	dd	2
	align	4
_154:
	dd	_31
	dd	49
	dd	2
	align	4
_159:
	dd	_31
	dd	50
	dd	2
	align	4
_164:
	dd	_31
	dd	51
	dd	2
	align	4
_169:
	dd	_31
	dd	52
	dd	2
	align	4
_174:
	dd	_31
	dd	53
	dd	2
	align	4
_179:
	dd	_31
	dd	55
	dd	2
	align	4
_203:
	dd	3
	dd	0
	dd	0
	align	4
_187:
	dd	_31
	dd	57
	dd	4
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	103,102,120,47,115,111,108,105,100,47
	align	4
_188:
	dd	_31
	dd	58
	dd	4
	align	4
_3:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	105,99,111,110,115,46,112,110,103
	align	4
_193:
	dd	_31
	dd	59
	dd	4
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,110,97,107,101,116,97,105,108,46,112,110,103
	align	4
_198:
	dd	_31
	dd	60
	dd	4
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	112,111,119,101,114,117,112,115,46,112,110,103
	align	4
_220:
	dd	3
	dd	0
	dd	0
	align	4
_204:
	dd	_31
	dd	62
	dd	4
	align	4
_6:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	103,102,120,47,108,111,119,47
	align	4
_205:
	dd	_31
	dd	63
	dd	4
	align	4
_210:
	dd	_31
	dd	64
	dd	4
	align	4
_215:
	dd	_31
	dd	65
	dd	4
	align	4
_237:
	dd	3
	dd	0
	dd	0
	align	4
_221:
	dd	_31
	dd	67
	dd	4
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	103,102,120,47,109,101,100,47
	align	4
_222:
	dd	_31
	dd	68
	dd	4
	align	4
_227:
	dd	_31
	dd	69
	dd	4
	align	4
_232:
	dd	_31
	dd	70
	dd	4
	align	4
_254:
	dd	3
	dd	0
	dd	0
	align	4
_238:
	dd	_31
	dd	72
	dd	4
	align	4
_8:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	103,102,120,47,104,105,103,104,47
	align	4
_239:
	dd	_31
	dd	73
	dd	4
	align	4
_244:
	dd	_31
	dd	74
	dd	4
	align	4
_249:
	dd	_31
	dd	75
	dd	4
	align	4
_271:
	dd	3
	dd	0
	dd	0
	align	4
_255:
	dd	_31
	dd	77
	dd	4
	align	4
_9:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	103,102,120,47,117,115,101,114,47
	align	4
_256:
	dd	_31
	dd	78
	dd	4
	align	4
_261:
	dd	_31
	dd	79
	dd	4
	align	4
_266:
	dd	_31
	dd	80
	dd	4
	align	4
_272:
	dd	_31
	dd	83
	dd	2
	align	4
_10:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	103,114,101,101,110,115,113,117,97,114,101,46,112,110,103
	align	4
_277:
	dd	_31
	dd	84
	dd	2
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	112,117,114,112,108,101,115,113,117,97,114,101,49,46,112,110
	dw	103
	align	4
_282:
	dd	_31
	dd	85
	dd	2
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	112,117,114,112,108,101,115,113,117,97,114,101,50,46,112,110
	dw	103
	align	4
_287:
	dd	_31
	dd	86
	dd	2
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	98,108,117,101,100,105,97,109,111,110,100,46,112,110,103
	align	4
_292:
	dd	_31
	dd	87
	dd	2
	align	4
_14:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	112,105,110,107,112,105,110,119,104,101,101,108,46,112,110,103
	align	4
_297:
	dd	_31
	dd	88
	dd	2
	align	4
_15:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	105,110,100,105,103,111,116,114,105,97,110,103,108,101,46,112
	dw	110,103
	align	4
_302:
	dd	_31
	dd	89
	dd	2
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	98,108,117,101,99,105,114,99,108,101,46,112,110,103
	align	4
_307:
	dd	_31
	dd	90
	dd	2
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	114,101,100,99,108,111,110,101,46,112,110,103
	align	4
_312:
	dd	_31
	dd	91
	dd	2
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	111,114,97,110,103,101,116,114,105,97,110,103,108,101,46,112
	dw	110,103
	align	4
_317:
	dd	_31
	dd	92
	dd	2
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	114,101,100,99,105,114,99,108,101,46,112,110,103
	align	4
_322:
	dd	_31
	dd	93
	dd	2
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	119,104,105,116,101,112,108,97,121,101,114,46,112,110,103
	align	4
_327:
	dd	_31
	dd	94
	dd	2
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	121,101,108,108,111,119,115,104,111,116,46,112,110,103
	align	4
_332:
	dd	_31
	dd	95
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	119,104,105,116,101,115,116,97,114,46,112,110,103
	align	4
_337:
	dd	_31
	dd	96
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,110,97,107,101,104,101,97,100,46,112,110,103
	align	4
_342:
	dd	_31
	dd	97
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	112,97,114,116,105,99,108,101,46,112,110,103
	align	4
_347:
	dd	_31
	dd	99
	dd	2
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	103,102,120,47,99,111,108,111,117,114,112,105,99,107,46,112
	dw	110,103
