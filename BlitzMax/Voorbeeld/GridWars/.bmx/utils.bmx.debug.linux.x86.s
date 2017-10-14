	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_glmax2d_glmax2d
	extrn	__bb_pngloader_pngloader
	extrn	__bb_random_random
	extrn	bbATan2
	extrn	bbArrayNew1D
	extrn	bbConvertToInt
	extrn	bbConvertToString
	extrn	bbCos
	extrn	bbEmptyArray
	extrn	bbEmptyString
	extrn	bbFloatToInt
	extrn	bbGCFree
	extrn	bbIntAbs
	extrn	bbIntTypeTag
	extrn	bbNullObject
	extrn	bbOnDebugEnterScope
	extrn	bbOnDebugEnterStm
	extrn	bbOnDebugLeaveScope
	extrn	bbSin
	extrn	bbSqr
	extrn	bbStringClass
	extrn	bbStringConcat
	extrn	bbStringFromInt
	extrn	bbStringTypeTag
	extrn	brl_blitz_ArrayBoundsError
	extrn	brl_blitz_OutOfDataError
	extrn	brl_graphics_GraphicsHeight
	extrn	brl_graphics_GraphicsWidth
	extrn	brl_max2d_DrawLine
	extrn	brl_max2d_DrawRect
	extrn	brl_max2d_GrabPixmap
	extrn	brl_max2d_Plot
	extrn	brl_pngloader_SavePixmapPNG
	extrn	brl_random_Rnd
	public	__bb_blitzmax_code_archief__spel__gridwars_utils
	public	bb_CycleColours
	public	bb_DrawCircle
	public	bb_FitValueToRange
	public	bb_GetPlayTime
	public	bb_LineCollide2
	public	bb_PointInTri
	public	bb_PointToPointDist
	public	bb_Rect
	public	bb_RectsOverlap
	public	bb_SaveScreenshot
	public	bb_SetupKeyTable
	public	bb_TFormR
	public	bb_TurnToFace
	public	bb_bcol
	public	bb_bcoldelta
	public	bb_gcol
	public	bb_gcoldelta
	public	bb_keystring
	public	bb_rcol
	public	bb_rcoldelta
	section	"code" executable
__bb_blitzmax_code_archief__spel__gridwars_utils:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_237],0
	je	_238
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_238:
	mov	dword [_237],1
	push	ebp
	push	_225
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_223],_224
	call	__bb_blitz_blitz
	call	__bb_random_random
	call	__bb_pngloader_pngloader
	call	__bb_glmax2d_glmax2d
	push	_213
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_215
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_216
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_217
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_220]
	and	eax,1
	cmp	eax,0
	jne	_221
	push	300
	push	_218
	call	bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [bb_keystring],eax
	or	dword [_220],1
_221:
	push	_222
	call	dword [bbOnDebugEnterStm]
	add	esp,4
_14:
	mov	ebx,0
_131:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_CycleColours:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_278
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_239
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [bb_rcol]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [bb_rcoldelta]
	fdiv	dword [_621]
	fmul	dword [ebp-4]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	bbFloatToInt
	add	esp,8
	mov	dword [bb_rcol],eax
	push	_240
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_rcol],0
	jge	_241
	push	ebp
	push	_244
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_242
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_rcol],0
	push	_243
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fstp	dword [bb_rcoldelta]
	call	dword [bbOnDebugLeaveScope]
	jmp	_245
_241:
	push	ebp
	push	_251
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_246
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_rcol],255
	jle	_247
	push	ebp
	push	_250
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_248
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_rcol],255
	push	_249
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fchs
	fstp	dword [bb_rcoldelta]
	call	dword [bbOnDebugLeaveScope]
_247:
	call	dword [bbOnDebugLeaveScope]
_245:
	push	_252
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [bb_gcol]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [bb_gcoldelta]
	fdiv	dword [_622]
	fmul	dword [ebp-4]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	bbFloatToInt
	add	esp,8
	mov	dword [bb_gcol],eax
	push	_253
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_gcol],0
	jge	_254
	push	ebp
	push	_257
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_255
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_gcol],0
	push	_256
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fstp	dword [bb_gcoldelta]
	call	dword [bbOnDebugLeaveScope]
	jmp	_258
_254:
	push	ebp
	push	_264
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_259
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_gcol],255
	jle	_260
	push	ebp
	push	_263
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_261
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_gcol],255
	push	_262
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fchs
	fstp	dword [bb_gcoldelta]
	call	dword [bbOnDebugLeaveScope]
_260:
	call	dword [bbOnDebugLeaveScope]
_258:
	push	_265
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [bb_bcol]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [bb_bcoldelta]
	fdiv	dword [_623]
	fmul	dword [ebp-4]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	bbFloatToInt
	add	esp,8
	mov	dword [bb_bcol],eax
	push	_266
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_bcol],0
	jge	_267
	push	ebp
	push	_270
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_268
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_bcol],0
	push	_269
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fstp	dword [bb_bcoldelta]
	call	dword [bbOnDebugLeaveScope]
	jmp	_271
_267:
	push	ebp
	push	_277
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_272
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [bb_bcol],255
	jle	_273
	push	ebp
	push	_276
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_274
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [bb_bcol],255
	push	_275
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	brl_random_Rnd
	add	esp,16
	fchs
	fstp	dword [bb_bcoldelta]
	call	dword [bbOnDebugLeaveScope]
_273:
	call	dword [bbOnDebugLeaveScope]
_271:
	mov	ebx,0
_134:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_GetPlayTime:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],bbEmptyString
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	push	ebp
	push	_320
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_281
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_1
	push	_283
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,50
	mov	eax,dword [ebp-4]
	cdq
	idiv	ecx
	mov	dword [ebp-12],eax
	push	_285
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,60
	mov	eax,dword [ebp-12]
	cdq
	idiv	ecx
	mov	dword [ebp-16],eax
	push	_287
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,60
	mov	eax,dword [ebp-16]
	cdq
	idiv	ecx
	mov	dword [ebp-20],eax
	push	_289
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],0
	jle	_290
	push	ebp
	push	_299
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_291
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_2
	push	dword [ebp-20]
	call	bbStringFromInt
	add	esp,4
	push	eax
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	push	_292
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],1
	jle	_293
	push	ebp
	push	_295
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_294
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_3
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [bbOnDebugLeaveScope]
	jmp	_296
_293:
	push	ebp
	push	_298
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_297
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [bbOnDebugLeaveScope]
_296:
	call	dword [bbOnDebugLeaveScope]
_290:
	push	_300
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jle	_301
	push	ebp
	push	_310
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_302
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_5
	mov	ecx,60
	mov	eax,dword [ebp-16]
	cdq
	idiv	ecx
	push	edx
	call	bbStringFromInt
	add	esp,4
	push	eax
	call	bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	push	_303
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],1
	jle	_304
	push	ebp
	push	_306
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_305
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_3
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [bbOnDebugLeaveScope]
	jmp	_307
_304:
	push	ebp
	push	_309
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_308
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [bbOnDebugLeaveScope]
_307:
	call	dword [bbOnDebugLeaveScope]
_301:
	push	_311
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	jle	_312
	push	ebp
	push	_318
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_313
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_6
	mov	ecx,60
	mov	eax,dword [ebp-12]
	cdq
	idiv	ecx
	push	edx
	call	bbStringFromInt
	add	esp,4
	push	eax
	call	bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	push	_314
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],1
	jle	_315
	push	ebp
	push	_317
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_316
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_7
	push	dword [ebp-8]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [bbOnDebugLeaveScope]
_315:
	call	dword [bbOnDebugLeaveScope]
_312:
	push	_319
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
_137:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_FitValueToRange:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	push	ebp
	push	_335
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_328
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [ebp-8]
	fstp	dword [ebp-24]
	push	_330
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fsub	dword [ebp-16]
	fstp	dword [ebp-28]
	push	_332
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fdiv	dword [ebp-24]
	fmul	dword [ebp-28]
	fadd	dword [ebp-16]
	fstp	dword [ebp-32]
	push	_334
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fstp	dword [ebp-36]
_144:
	call	dword [bbOnDebugLeaveScope]
	fld	dword [ebp-36]
	mov	esp,ebp
	pop	ebp
	ret
bb_DrawCircle:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_385
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_345
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	_349
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_350
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp-24],eax
	push	_351
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_352
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_353
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_354
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_355
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_356
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_357
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_358
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_359
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,1
	sub	eax,dword [ebp-12]
	mov	dword [ebp-16],eax
	push	_360
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	jmp	_8
_10:
	push	ebp
	push	_384
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_361
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jge	_362
	push	ebp
	push	_364
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_363
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	call	dword [bbOnDebugLeaveScope]
	jmp	_365
_362:
	push	ebp
	push	_368
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_366
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_367
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-24],1
	call	dword [bbOnDebugLeaveScope]
_365:
	push	_369
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jge	_370
	push	ebp
	push	_372
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_371
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	edx,dword [ebp-20]
	shl	edx,1
	add	eax,edx
	add	eax,1
	mov	dword [ebp-16],eax
	call	dword [bbOnDebugLeaveScope]
	jmp	_373
_370:
	push	ebp
	push	_375
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_374
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp-20]
	sub	eax,dword [ebp-24]
	shl	eax,1
	add	edx,eax
	add	edx,1
	mov	dword [ebp-16],edx
	call	dword [bbOnDebugLeaveScope]
_373:
	push	_376
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_377
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_378
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_379
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_380
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_381
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_382
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	push	_383
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebp-20]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,dword [ebp-24]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_Plot
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_8:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-20],eax
	jl	_10
_9:
	mov	ebx,0
_149:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_Rect:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	ebp
	push	_409
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_393
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],0
	je	_394
	push	ebp
	push	_396
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_395
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_DrawRect
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
	jmp	_397
_394:
	push	ebp
	push	_406
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_398
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-12]
	mov	dword [ebp-24],eax
	push	_400
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-16]
	mov	dword [ebp-28],eax
	push	_402
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_DrawLine
	add	esp,20
	push	_403
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_DrawLine
	add	esp,20
	push	_404
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_DrawLine
	add	esp,20
	push	_405
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	brl_max2d_DrawLine
	add	esp,20
	call	dword [bbOnDebugLeaveScope]
_397:
	mov	ebx,0
_156:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_RectsOverlap:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	push	ebp
	push	_438
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_413
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-28]
	cmp	dword [ebp-4],eax
	jle	_414
	push	ebp
	push	_416
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_415
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [bbOnDebugLeaveScope]
	jmp	_166
_414:
	push	ebp
	push	_437
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_418
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-12]
	cmp	eax,dword [ebp-20]
	jge	_419
	push	ebp
	push	_421
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_420
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_166
_419:
	push	ebp
	push	_436
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_423
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	add	eax,dword [ebp-32]
	cmp	dword [ebp-8],eax
	jle	_424
	push	ebp
	push	_426
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_425
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_166
_424:
	push	ebp
	push	_435
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_428
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-16]
	cmp	eax,dword [ebp-24]
	jge	_429
	push	ebp
	push	_431
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_430
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_166
_429:
	push	ebp
	push	_434
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_433
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
_166:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_TFormR:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	push	ebp
	push	_454
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_446
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fsub	dword [ebp-4]
	fstp	dword [ebp-24]
	push	_448
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fsub	dword [ebp-8]
	fstp	dword [ebp-28]
	push	_450
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,8
	fstp	qword [esp]
	call	bbCos
	add	esp,8
	fld	dword [ebp-24]
	fmulp	st1,st0
	fstp	qword [ebp-36]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,8
	fstp	qword [esp]
	call	bbSin
	add	esp,8
	fld	dword [ebp-28]
	fmulp	st1,st0
	fld	qword [ebp-36]
	fsubrp	st1,st0
	fstp	qword [ebp-36]
	fld	qword [ebp-36]
	fstp	dword [ebx]
	push	_451
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,8
	fstp	qword [esp]
	call	bbSin
	add	esp,8
	fld	dword [ebp-24]
	fmulp	st1,st0
	fstp	qword [ebp-44]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,8
	fstp	qword [esp]
	call	bbCos
	add	esp,8
	fld	dword [ebp-28]
	fmulp	st1,st0
	fld	qword [ebp-44]
	faddp	st1,st0
	fstp	qword [ebp-44]
	fld	qword [ebp-44]
	fstp	dword [ebx]
	push	_452
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-16]
	fld	dword [ebp-4]
	mov	eax,dword [ebp-16]
	fadd	dword [eax]
	fstp	dword [edx]
	push	_453
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-20]
	fld	dword [ebp-8]
	mov	eax,dword [ebp-20]
	fadd	dword [eax]
	fstp	dword [edx]
	mov	ebx,0
_173:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_PointInTri:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	fld	dword [ebp+32]
	fstp	dword [ebp-28]
	fld	dword [ebp+36]
	fstp	dword [ebp-32]
	mov	dword [ebp-36],0
	push	ebp
	push	_496
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_461
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],1
	push	_463
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	je	_464
	fld	dword [ebp-8]
	fld	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_464:
	cmp	eax,0
	jne	_468
	fld	dword [ebp-24]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	je	_466
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_466:
_468:
	cmp	eax,0
	je	_470
	push	ebp
	push	_478
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_471
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fsub	dword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_472
	push	ebp
	push	_477
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_473
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-20]
	fsub	dword [ebp-12]
	fld	dword [ebp-8]
	fsub	dword [ebp-16]
	fmulp	st1,st0
	fld	dword [ebp-24]
	fsub	dword [ebp-16]
	fdivp	st1,st0
	fadd	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_474
	push	ebp
	push	_476
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_475
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	dword [ebp-36],eax
	call	dword [bbOnDebugLeaveScope]
_474:
	call	dword [bbOnDebugLeaveScope]
_472:
	call	dword [bbOnDebugLeaveScope]
_470:
	push	_479
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	je	_480
	fld	dword [ebp-8]
	fld	dword [ebp-32]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_480:
	cmp	eax,0
	jne	_484
	fld	dword [ebp-32]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	je	_482
	fld	dword [ebp-8]
	fld	dword [ebp-32]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_482:
_484:
	cmp	eax,0
	je	_486
	push	ebp
	push	_494
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_487
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fsub	dword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_488
	push	ebp
	push	_493
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_489
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-28]
	fsub	dword [ebp-12]
	fld	dword [ebp-8]
	fsub	dword [ebp-16]
	fmulp	st1,st0
	fld	dword [ebp-32]
	fsub	dword [ebp-16]
	fdivp	st1,st0
	fadd	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_490
	push	ebp
	push	_492
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_491
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	dword [ebp-36],eax
	call	dword [bbOnDebugLeaveScope]
_490:
	call	dword [bbOnDebugLeaveScope]
_488:
	call	dword [bbOnDebugLeaveScope]
_486:
	push	_495
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
_183:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_PointToPointDist:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	push	ebp
	push	_508
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_503
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_505
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fsub	dword [ebp-16]
	fstp	dword [ebp-24]
	push	_507
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fmul	dword [ebp-20]
	fld	dword [ebp-24]
	fmul	dword [ebp-24]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	bbSqr
	add	esp,8
	fstp	dword [ebp-28]
_189:
	call	dword [bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
bb_LineCollide2:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	push	ebp
	push	_545
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_512
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_513
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_513:
	cmp	eax,0
	je	_515
	push	ebp
	push	_523
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_516
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	dword [ebp-24]
	push	dword [ebp-20]
	call	bb_PointToPointDist
	add	esp,16
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_517
	push	ebp
	push	_519
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_518
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_684]
	fstp	dword [ebp-44]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_198
_517:
	push	ebp
	push	_522
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_521
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_685]
	fstp	dword [ebp-44]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_198
_515:
	push	_524
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	fstp	dword [ebp-32]
	push	_526
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	fstp	dword [ebp-36]
	push	_528
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fsub	dword [ebp-4]
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	fmulp	st1,st0
	fld	dword [ebp-24]
	fsub	dword [ebp-8]
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	fmulp	st1,st0
	faddp	st1,st0
	fld	dword [ebp-32]
	fmul	dword [ebp-32]
	fld	dword [ebp-36]
	fmul	dword [ebp-36]
	faddp	st1,st0
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_530
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_531
	push	ebp
	push	_533
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_532
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-40]
	call	dword [bbOnDebugLeaveScope]
_531:
	push	_534
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_535
	push	ebp
	push	_537
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_536
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-40]
	call	dword [bbOnDebugLeaveScope]
_535:
	push	_538
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_686]
	fsub	dword [ebp-40]
	fmul	dword [ebp-8]
	fld	dword [ebp-40]
	fmul	dword [ebp-16]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_687]
	fsub	dword [ebp-40]
	fmul	dword [ebp-4]
	fld	dword [ebp-40]
	fmul	dword [ebp-12]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-24]
	push	dword [ebp-20]
	call	bb_PointToPointDist
	add	esp,16
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_539
	push	ebp
	push	_541
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_540
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_688]
	fstp	dword [ebp-44]
	call	dword [bbOnDebugLeaveScope]
	jmp	_198
_539:
	push	ebp
	push	_544
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_543
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_689]
	fstp	dword [ebp-44]
	call	dword [bbOnDebugLeaveScope]
_198:
	call	dword [bbOnDebugLeaveScope]
	fld	dword [ebp-44]
	mov	esp,ebp
	pop	ebp
	ret
bb_TurnToFace:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	mov	dword [ebp-36],0
	push	ebp
	push	_575
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_553
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	mov	dword [ebp-36],0
	push	_557
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fsub	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-24]
	fsub	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	bbATan2
	add	esp,16
	fstp	dword [ebp-28]
	push	_558
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	bbATan2
	add	esp,16
	fstp	dword [ebp-32]
	push	_559
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fsub	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	bbFloatToInt
	add	esp,8
	mov	dword [ebp-36],eax
	push	_560
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-36],180
	jl	_561
	push	ebp
	push	_563
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_562
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,360
	sub	eax,dword [ebp-36]
	neg	eax
	mov	dword [ebp-36],eax
	call	dword [bbOnDebugLeaveScope]
	jmp	_564
_561:
	push	ebp
	push	_569
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_565
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-36],-180
	jg	_566
	push	ebp
	push	_568
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_567
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-36],360
	call	dword [bbOnDebugLeaveScope]
_566:
	call	dword [bbOnDebugLeaveScope]
_564:
	push	_570
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	call	bbIntAbs
	add	esp,4
	cmp	eax,6
	jge	_571
	push	ebp
	push	_573
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_572
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	call	dword [bbOnDebugLeaveScope]
_571:
	push	_574
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
_206:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SaveScreenshot:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],bbNullObject
	push	ebp
	push	_585
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_582
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	call	brl_graphics_GraphicsHeight
	push	eax
	call	brl_graphics_GraphicsWidth
	push	eax
	push	0
	push	0
	call	brl_max2d_GrabPixmap
	add	esp,16
	mov	dword [ebp-8],eax
	push	_584
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	5
	push	dword [ebp-4]
	push	dword [ebp-8]
	call	brl_pngloader_SavePixmapPNG
	add	esp,12
	mov	ebx,0
_209:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SetupKeyTable:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	dword [ebp-4],bbEmptyString
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_613
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_589
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],bbEmptyString
	mov	dword [ebp-8],0
	push	_592
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_223],_15
	push	_593
	call	dword [bbOnDebugEnterStm]
	add	esp,4
_13:
	mov	eax,ebp
	push	eax
	push	_612
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_594
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_223]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_597
	call	brl_blitz_OutOfDataError
_597:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	bbConvertToString
	add	esp,8
	mov	dword [ebp-4],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_598
	add	esi,4
_598:
	mov	dword [_223],esi
	push	_599
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_223]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_602
	call	brl_blitz_OutOfDataError
_602:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	bbConvertToInt
	add	esp,8
	mov	dword [ebp-8],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_603
	add	esi,4
_603:
	mov	dword [_223],esi
	push	_604
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [bb_keystring]
	cmp	ebx,dword [eax+20]
	jb	_606
	call	brl_blitz_ArrayBoundsError
_606:
	mov	esi,dword [bb_keystring]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_611
	push	eax
	call	bbGCFree
	add	esp,4
_611:
	mov	dword [esi+24],ebx
	call	dword [bbOnDebugLeaveScope]
_11:
	cmp	dword [ebp-8],299
	jne	_13
_12:
	mov	ebx,0
_211:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_237:
	dd	0
_226:
	db	"utils",0
_227:
	db	"rcol",0
_228:
	db	"i",0
	align	4
bb_rcol:
	dd	250
_229:
	db	"rcoldelta",0
_230:
	db	"f",0
	align	4
bb_rcoldelta:
	dd	0xc0400000
_231:
	db	"gcol",0
	align	4
bb_gcol:
	dd	20
_232:
	db	"gcoldelta",0
	align	4
bb_gcoldelta:
	dd	0x40a00000
_233:
	db	"bcol",0
	align	4
bb_bcol:
	dd	30
_234:
	db	"bcoldelta",0
	align	4
bb_bcoldelta:
	dd	0x40e00000
_235:
	db	"keystring",0
_236:
	db	"[]$",0
	align	4
bb_keystring:
	dd	bbEmptyArray
	align	4
_225:
	dd	1
	dd	_226
	dd	4
	dd	_227
	dd	_228
	dd	bb_rcol
	dd	4
	dd	_229
	dd	_230
	dd	bb_rcoldelta
	dd	4
	dd	_231
	dd	_228
	dd	bb_gcol
	dd	4
	dd	_232
	dd	_230
	dd	bb_gcoldelta
	dd	4
	dd	_233
	dd	_228
	dd	bb_bcol
	dd	4
	dd	_234
	dd	_230
	dd	bb_bcoldelta
	dd	4
	dd	_235
	dd	_236
	dd	bb_keystring
	dd	0
	align	4
_16:
	dd	bbStringClass
	dd	2147483647
	dd	19
	dw	77,111,117,115,101,32,98,117,116,116,111,110,32,40,76,101
	dw	102,116,41
	align	4
_17:
	dd	bbStringClass
	dd	2147483647
	dd	20
	dw	77,111,117,115,101,32,98,117,116,116,111,110,32,40,82,105
	dw	103,104,116,41
	align	4
_18:
	dd	bbStringClass
	dd	2147483647
	dd	21
	dw	77,111,117,115,101,32,98,117,116,116,111,110,32,40,77,105
	dw	100,100,108,101,41
	align	4
_19:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	66,97,99,107,115,112,97,99,101
	align	4
_20:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	84,97,98
	align	4
_21:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	82,101,116,117,114,110
	align	4
_22:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	67,108,101,97,114
	align	4
_23:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	69,110,116,101,114
	align	4
_24:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	83,104,105,102,116
	align	4
_25:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	67,111,110,116,114,111,108
	align	4
_26:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	65,108,116
	align	4
_27:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	80,97,117,115,101
	align	4
_28:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	67,97,112,115,32,76,111,99,107
	align	4
_29:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	69,115,99,97,112,101
	align	4
_30:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	83,112,97,99,101
	align	4
_31:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	80,97,103,101,32,85,112
	align	4
_32:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	80,97,103,101,32,68,111,119,110
	align	4
_33:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	69,110,100
	align	4
_34:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	72,111,109,101
	align	4
_35:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	67,117,114,115,111,114,32,40,76,101,102,116,41
	align	4
_36:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	67,117,114,115,111,114,32,40,85,112,41
	align	4
_37:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	67,117,114,115,111,114,32,40,82,105,103,104,116,41
	align	4
_38:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	67,117,114,115,111,114,32,40,68,111,119,110,41
	align	4
_39:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	83,101,108,101,99,116
	align	4
_40:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	80,114,105,110,116
	align	4
_41:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	69,120,101,99,117,116,101
	align	4
_42:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	83,99,114,101,101,110
	align	4
_43:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	73,110,115,101,114,116
	align	4
_44:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	68,101,108,101,116,101
	align	4
_45:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	72,101,108,112
	align	4
_46:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_47:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_48:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	50
	align	4
_49:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	51
	align	4
_50:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	52
	align	4
_51:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	53
	align	4
_52:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	54
	align	4
_53:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	55
	align	4
_54:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	56
	align	4
_55:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	57
	align	4
_56:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	65
	align	4
_57:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	66
	align	4
_58:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	67
	align	4
_59:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	68
	align	4
_60:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	69
	align	4
_61:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	70
	align	4
_62:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	71
	align	4
_63:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	72
	align	4
_64:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	73
	align	4
_65:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	74
	align	4
_66:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	75
	align	4
_67:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	76
	align	4
_68:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	77
	align	4
_69:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	78
	align	4
_70:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	79
	align	4
_71:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	80
	align	4
_72:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	81
	align	4
_73:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	82
	align	4
_74:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	83
	align	4
_75:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	84
	align	4
_76:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	85
	align	4
_77:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	86
	align	4
_78:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	87
	align	4
_79:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	88
	align	4
_80:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	89
	align	4
_81:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	90
	align	4
_82:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	83,121,115,32,107,101,121,32,40,76,101,102,116,41
	align	4
_83:
	dd	bbStringClass
	dd	2147483647
	dd	15
	dw	83,121,115,32,107,101,121,32,40,82,105,103,104,116,41
	align	4
_84:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,48
	align	4
_85:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,49
	align	4
_86:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,50
	align	4
_87:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,51
	align	4
_88:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,52
	align	4
_89:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,53
	align	4
_90:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,54
	align	4
_91:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,55
	align	4
_92:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,56
	align	4
_93:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,57
	align	4
_94:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,42
	align	4
_95:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,43
	align	4
_96:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,47
	align	4
_97:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,45
	align	4
_98:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,112,97,100,32,46
	align	4
_99:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,49
	align	4
_100:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,50
	align	4
_101:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,51
	align	4
_102:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,52
	align	4
_103:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,53
	align	4
_104:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,54
	align	4
_105:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,55
	align	4
_106:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,56
	align	4
_107:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	70,57
	align	4
_108:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	70,49,48
	align	4
_109:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	70,49,49
	align	4
_110:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	70,49,50
	align	4
_111:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	78,117,109,32,76,111,99,107
	align	4
_112:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	83,99,114,111,108,108,32,76,111,99,107
	align	4
_113:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	83,104,105,102,116,32,40,76,101,102,116,41
	align	4
_114:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	83,104,105,102,116,32,40,82,105,103,104,116,41
	align	4
_115:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	67,111,110,116,114,111,108,32,40,76,101,102,116,41
	align	4
_116:
	dd	bbStringClass
	dd	2147483647
	dd	15
	dw	67,111,110,116,114,111,108,32,40,82,105,103,104,116,41
	align	4
_117:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	65,108,116,32,107,101,121,32,40,76,101,102,116,41
	align	4
_118:
	dd	bbStringClass
	dd	2147483647
	dd	15
	dw	65,108,116,32,107,101,121,32,40,82,105,103,104,116,41
	align	4
_119:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	84,105,108,100,101
	align	4
_120:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	77,105,110,117,115
	align	4
_121:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	69,113,117,97,108,115
	align	4
_122:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	66,114,97,99,107,101,116,32,40,79,112,101,110,41
	align	4
_123:
	dd	bbStringClass
	dd	2147483647
	dd	15
	dw	66,114,97,99,107,101,116,32,40,67,108,111,115,101,41
	align	4
_124:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	66,97,99,107,115,108,97,115,104
	align	4
_125:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	83,101,109,105,45,99,111,108,111,110
	align	4
_126:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	81,117,111,116,101
	align	4
_127:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	67,111,109,109,97
	align	4
_128:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	80,101,114,105,111,100
	align	4
_129:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	83,108,97,115,104
	align	4
_130:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	72,105,116,32,65,32,75,101,121
	align	4
_224:
_15:
	dd	bbStringTypeTag
	dd	_16
	dd	bbIntTypeTag
	dd	1
	dd	bbStringTypeTag
	dd	_17
	dd	bbIntTypeTag
	dd	2
	dd	bbStringTypeTag
	dd	_18
	dd	bbIntTypeTag
	dd	4
	dd	bbStringTypeTag
	dd	_19
	dd	bbIntTypeTag
	dd	8
	dd	bbStringTypeTag
	dd	_20
	dd	bbIntTypeTag
	dd	9
	dd	bbStringTypeTag
	dd	_21
	dd	bbIntTypeTag
	dd	13
	dd	bbStringTypeTag
	dd	_22
	dd	bbIntTypeTag
	dd	12
	dd	bbStringTypeTag
	dd	_23
	dd	bbIntTypeTag
	dd	13
	dd	bbStringTypeTag
	dd	_24
	dd	bbIntTypeTag
	dd	16
	dd	bbStringTypeTag
	dd	_25
	dd	bbIntTypeTag
	dd	17
	dd	bbStringTypeTag
	dd	_26
	dd	bbIntTypeTag
	dd	18
	dd	bbStringTypeTag
	dd	_27
	dd	bbIntTypeTag
	dd	19
	dd	bbStringTypeTag
	dd	_28
	dd	bbIntTypeTag
	dd	20
	dd	bbStringTypeTag
	dd	_29
	dd	bbIntTypeTag
	dd	27
	dd	bbStringTypeTag
	dd	_30
	dd	bbIntTypeTag
	dd	32
	dd	bbStringTypeTag
	dd	_31
	dd	bbIntTypeTag
	dd	33
	dd	bbStringTypeTag
	dd	_32
	dd	bbIntTypeTag
	dd	34
	dd	bbStringTypeTag
	dd	_33
	dd	bbIntTypeTag
	dd	35
	dd	bbStringTypeTag
	dd	_34
	dd	bbIntTypeTag
	dd	36
	dd	bbStringTypeTag
	dd	_35
	dd	bbIntTypeTag
	dd	37
	dd	bbStringTypeTag
	dd	_36
	dd	bbIntTypeTag
	dd	38
	dd	bbStringTypeTag
	dd	_37
	dd	bbIntTypeTag
	dd	39
	dd	bbStringTypeTag
	dd	_38
	dd	bbIntTypeTag
	dd	40
	dd	bbStringTypeTag
	dd	_39
	dd	bbIntTypeTag
	dd	41
	dd	bbStringTypeTag
	dd	_40
	dd	bbIntTypeTag
	dd	42
	dd	bbStringTypeTag
	dd	_41
	dd	bbIntTypeTag
	dd	43
	dd	bbStringTypeTag
	dd	_42
	dd	bbIntTypeTag
	dd	44
	dd	bbStringTypeTag
	dd	_43
	dd	bbIntTypeTag
	dd	45
	dd	bbStringTypeTag
	dd	_44
	dd	bbIntTypeTag
	dd	46
	dd	bbStringTypeTag
	dd	_45
	dd	bbIntTypeTag
	dd	47
	dd	bbStringTypeTag
	dd	_46
	dd	bbIntTypeTag
	dd	48
	dd	bbStringTypeTag
	dd	_47
	dd	bbIntTypeTag
	dd	49
	dd	bbStringTypeTag
	dd	_48
	dd	bbIntTypeTag
	dd	50
	dd	bbStringTypeTag
	dd	_49
	dd	bbIntTypeTag
	dd	51
	dd	bbStringTypeTag
	dd	_50
	dd	bbIntTypeTag
	dd	52
	dd	bbStringTypeTag
	dd	_51
	dd	bbIntTypeTag
	dd	53
	dd	bbStringTypeTag
	dd	_52
	dd	bbIntTypeTag
	dd	54
	dd	bbStringTypeTag
	dd	_53
	dd	bbIntTypeTag
	dd	55
	dd	bbStringTypeTag
	dd	_54
	dd	bbIntTypeTag
	dd	56
	dd	bbStringTypeTag
	dd	_55
	dd	bbIntTypeTag
	dd	57
	dd	bbStringTypeTag
	dd	_56
	dd	bbIntTypeTag
	dd	65
	dd	bbStringTypeTag
	dd	_57
	dd	bbIntTypeTag
	dd	66
	dd	bbStringTypeTag
	dd	_58
	dd	bbIntTypeTag
	dd	67
	dd	bbStringTypeTag
	dd	_59
	dd	bbIntTypeTag
	dd	68
	dd	bbStringTypeTag
	dd	_60
	dd	bbIntTypeTag
	dd	69
	dd	bbStringTypeTag
	dd	_61
	dd	bbIntTypeTag
	dd	70
	dd	bbStringTypeTag
	dd	_62
	dd	bbIntTypeTag
	dd	71
	dd	bbStringTypeTag
	dd	_63
	dd	bbIntTypeTag
	dd	72
	dd	bbStringTypeTag
	dd	_64
	dd	bbIntTypeTag
	dd	73
	dd	bbStringTypeTag
	dd	_65
	dd	bbIntTypeTag
	dd	74
	dd	bbStringTypeTag
	dd	_66
	dd	bbIntTypeTag
	dd	75
	dd	bbStringTypeTag
	dd	_67
	dd	bbIntTypeTag
	dd	76
	dd	bbStringTypeTag
	dd	_68
	dd	bbIntTypeTag
	dd	77
	dd	bbStringTypeTag
	dd	_69
	dd	bbIntTypeTag
	dd	78
	dd	bbStringTypeTag
	dd	_70
	dd	bbIntTypeTag
	dd	79
	dd	bbStringTypeTag
	dd	_71
	dd	bbIntTypeTag
	dd	80
	dd	bbStringTypeTag
	dd	_72
	dd	bbIntTypeTag
	dd	81
	dd	bbStringTypeTag
	dd	_73
	dd	bbIntTypeTag
	dd	82
	dd	bbStringTypeTag
	dd	_74
	dd	bbIntTypeTag
	dd	83
	dd	bbStringTypeTag
	dd	_75
	dd	bbIntTypeTag
	dd	84
	dd	bbStringTypeTag
	dd	_76
	dd	bbIntTypeTag
	dd	85
	dd	bbStringTypeTag
	dd	_77
	dd	bbIntTypeTag
	dd	86
	dd	bbStringTypeTag
	dd	_78
	dd	bbIntTypeTag
	dd	87
	dd	bbStringTypeTag
	dd	_79
	dd	bbIntTypeTag
	dd	88
	dd	bbStringTypeTag
	dd	_80
	dd	bbIntTypeTag
	dd	89
	dd	bbStringTypeTag
	dd	_81
	dd	bbIntTypeTag
	dd	90
	dd	bbStringTypeTag
	dd	_82
	dd	bbIntTypeTag
	dd	91
	dd	bbStringTypeTag
	dd	_83
	dd	bbIntTypeTag
	dd	92
	dd	bbStringTypeTag
	dd	_84
	dd	bbIntTypeTag
	dd	96
	dd	bbStringTypeTag
	dd	_85
	dd	bbIntTypeTag
	dd	97
	dd	bbStringTypeTag
	dd	_86
	dd	bbIntTypeTag
	dd	98
	dd	bbStringTypeTag
	dd	_87
	dd	bbIntTypeTag
	dd	99
	dd	bbStringTypeTag
	dd	_88
	dd	bbIntTypeTag
	dd	100
	dd	bbStringTypeTag
	dd	_89
	dd	bbIntTypeTag
	dd	101
	dd	bbStringTypeTag
	dd	_90
	dd	bbIntTypeTag
	dd	102
	dd	bbStringTypeTag
	dd	_91
	dd	bbIntTypeTag
	dd	103
	dd	bbStringTypeTag
	dd	_92
	dd	bbIntTypeTag
	dd	104
	dd	bbStringTypeTag
	dd	_93
	dd	bbIntTypeTag
	dd	105
	dd	bbStringTypeTag
	dd	_94
	dd	bbIntTypeTag
	dd	106
	dd	bbStringTypeTag
	dd	_95
	dd	bbIntTypeTag
	dd	107
	dd	bbStringTypeTag
	dd	_96
	dd	bbIntTypeTag
	dd	108
	dd	bbStringTypeTag
	dd	_97
	dd	bbIntTypeTag
	dd	109
	dd	bbStringTypeTag
	dd	_98
	dd	bbIntTypeTag
	dd	110
	dd	bbStringTypeTag
	dd	_96
	dd	bbIntTypeTag
	dd	111
	dd	bbStringTypeTag
	dd	_99
	dd	bbIntTypeTag
	dd	112
	dd	bbStringTypeTag
	dd	_100
	dd	bbIntTypeTag
	dd	113
	dd	bbStringTypeTag
	dd	_101
	dd	bbIntTypeTag
	dd	114
	dd	bbStringTypeTag
	dd	_102
	dd	bbIntTypeTag
	dd	115
	dd	bbStringTypeTag
	dd	_103
	dd	bbIntTypeTag
	dd	116
	dd	bbStringTypeTag
	dd	_104
	dd	bbIntTypeTag
	dd	117
	dd	bbStringTypeTag
	dd	_105
	dd	bbIntTypeTag
	dd	118
	dd	bbStringTypeTag
	dd	_106
	dd	bbIntTypeTag
	dd	119
	dd	bbStringTypeTag
	dd	_107
	dd	bbIntTypeTag
	dd	120
	dd	bbStringTypeTag
	dd	_108
	dd	bbIntTypeTag
	dd	121
	dd	bbStringTypeTag
	dd	_109
	dd	bbIntTypeTag
	dd	122
	dd	bbStringTypeTag
	dd	_110
	dd	bbIntTypeTag
	dd	123
	dd	bbStringTypeTag
	dd	_111
	dd	bbIntTypeTag
	dd	144
	dd	bbStringTypeTag
	dd	_112
	dd	bbIntTypeTag
	dd	145
	dd	bbStringTypeTag
	dd	_113
	dd	bbIntTypeTag
	dd	160
	dd	bbStringTypeTag
	dd	_114
	dd	bbIntTypeTag
	dd	161
	dd	bbStringTypeTag
	dd	_115
	dd	bbIntTypeTag
	dd	162
	dd	bbStringTypeTag
	dd	_116
	dd	bbIntTypeTag
	dd	163
	dd	bbStringTypeTag
	dd	_117
	dd	bbIntTypeTag
	dd	164
	dd	bbStringTypeTag
	dd	_118
	dd	bbIntTypeTag
	dd	165
	dd	bbStringTypeTag
	dd	_119
	dd	bbIntTypeTag
	dd	192
	dd	bbStringTypeTag
	dd	_120
	dd	bbIntTypeTag
	dd	107
	dd	bbStringTypeTag
	dd	_121
	dd	bbIntTypeTag
	dd	109
	dd	bbStringTypeTag
	dd	_122
	dd	bbIntTypeTag
	dd	219
	dd	bbStringTypeTag
	dd	_123
	dd	bbIntTypeTag
	dd	221
	dd	bbStringTypeTag
	dd	_124
	dd	bbIntTypeTag
	dd	226
	dd	bbStringTypeTag
	dd	_125
	dd	bbIntTypeTag
	dd	186
	dd	bbStringTypeTag
	dd	_126
	dd	bbIntTypeTag
	dd	222
	dd	bbStringTypeTag
	dd	_127
	dd	bbIntTypeTag
	dd	188
	dd	bbStringTypeTag
	dd	_128
	dd	bbIntTypeTag
	dd	190
	dd	bbStringTypeTag
	dd	_129
	dd	bbIntTypeTag
	dd	191
	dd	bbStringTypeTag
	dd	_130
	dd	bbIntTypeTag
	dd	299
	dd	0
	align	4
_223:
	dd	0
_214:
	db	"/media/Acropolis/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/utils.bmx",0
	align	4
_213:
	dd	_214
	dd	8
	dd	1
	align	4
_215:
	dd	_214
	dd	9
	dd	1
	align	4
_216:
	dd	_214
	dd	10
	dd	1
	align	4
_217:
	dd	_214
	dd	13
	dd	1
	align	4
_220:
	dd	0
_218:
	db	"$",0
	align	4
_222:
	dd	_214
	dd	300
	dd	1
_279:
	db	"CycleColours",0
_280:
	db	"slow",0
	align	4
_278:
	dd	1
	dd	_279
	dd	2
	dd	_280
	dd	_230
	dd	-4
	dd	0
	align	4
_239:
	dd	_214
	dd	17
	dd	2
	align	4
_621:
	dd	0x41200000
	align	4
_240:
	dd	_214
	dd	18
	dd	2
	align	4
_244:
	dd	3
	dd	0
	dd	0
	align	4
_242:
	dd	_214
	dd	19
	dd	3
	align	4
_243:
	dd	_214
	dd	20
	dd	3
	align	4
_251:
	dd	3
	dd	0
	dd	0
	align	4
_246:
	dd	_214
	dd	21
	dd	2
	align	4
_250:
	dd	3
	dd	0
	dd	0
	align	4
_248:
	dd	_214
	dd	22
	dd	3
	align	4
_249:
	dd	_214
	dd	23
	dd	3
	align	4
_252:
	dd	_214
	dd	25
	dd	2
	align	4
_622:
	dd	0x41200000
	align	4
_253:
	dd	_214
	dd	26
	dd	2
	align	4
_257:
	dd	3
	dd	0
	dd	0
	align	4
_255:
	dd	_214
	dd	27
	dd	3
	align	4
_256:
	dd	_214
	dd	28
	dd	3
	align	4
_264:
	dd	3
	dd	0
	dd	0
	align	4
_259:
	dd	_214
	dd	29
	dd	2
	align	4
_263:
	dd	3
	dd	0
	dd	0
	align	4
_261:
	dd	_214
	dd	30
	dd	3
	align	4
_262:
	dd	_214
	dd	31
	dd	3
	align	4
_265:
	dd	_214
	dd	33
	dd	2
	align	4
_623:
	dd	0x41200000
	align	4
_266:
	dd	_214
	dd	34
	dd	2
	align	4
_270:
	dd	3
	dd	0
	dd	0
	align	4
_268:
	dd	_214
	dd	35
	dd	3
	align	4
_269:
	dd	_214
	dd	36
	dd	3
	align	4
_277:
	dd	3
	dd	0
	dd	0
	align	4
_272:
	dd	_214
	dd	37
	dd	2
	align	4
_276:
	dd	3
	dd	0
	dd	0
	align	4
_274:
	dd	_214
	dd	38
	dd	3
	align	4
_275:
	dd	_214
	dd	39
	dd	3
_321:
	db	"GetPlayTime",0
_322:
	db	"cnt",0
_323:
	db	"s",0
_324:
	db	"$",0
_325:
	db	"secs",0
_326:
	db	"minutes",0
_327:
	db	"hours",0
	align	4
_320:
	dd	1
	dd	_321
	dd	2
	dd	_322
	dd	_228
	dd	-4
	dd	2
	dd	_323
	dd	_324
	dd	-8
	dd	2
	dd	_325
	dd	_228
	dd	-12
	dd	2
	dd	_326
	dd	_228
	dd	-16
	dd	2
	dd	_327
	dd	_228
	dd	-20
	dd	0
	align	4
_281:
	dd	_214
	dd	48
	dd	2
	align	4
_1:
	dd	bbStringClass
	dd	2147483647
	dd	0
	align	4
_283:
	dd	_214
	dd	49
	dd	2
	align	4
_285:
	dd	_214
	dd	50
	dd	2
	align	4
_287:
	dd	_214
	dd	51
	dd	2
	align	4
_289:
	dd	_214
	dd	52
	dd	2
	align	4
_299:
	dd	3
	dd	0
	dd	0
	align	4
_291:
	dd	_214
	dd	53
	dd	3
	align	4
_2:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	32,104,114
	align	4
_292:
	dd	_214
	dd	54
	dd	3
	align	4
_295:
	dd	3
	dd	0
	dd	0
	align	4
_294:
	dd	_214
	dd	55
	dd	4
	align	4
_3:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	115,44,32
	align	4
_298:
	dd	3
	dd	0
	dd	0
	align	4
_297:
	dd	_214
	dd	57
	dd	4
	align	4
_4:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_300:
	dd	_214
	dd	60
	dd	2
	align	4
_310:
	dd	3
	dd	0
	dd	0
	align	4
_302:
	dd	_214
	dd	61
	dd	3
	align	4
_5:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	32,109,110
	align	4
_303:
	dd	_214
	dd	62
	dd	3
	align	4
_306:
	dd	3
	dd	0
	dd	0
	align	4
_305:
	dd	_214
	dd	63
	dd	4
	align	4
_309:
	dd	3
	dd	0
	dd	0
	align	4
_308:
	dd	_214
	dd	65
	dd	4
	align	4
_311:
	dd	_214
	dd	68
	dd	2
	align	4
_318:
	dd	3
	dd	0
	dd	0
	align	4
_313:
	dd	_214
	dd	69
	dd	3
	align	4
_6:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	32,115,101,99
	align	4
_314:
	dd	_214
	dd	70
	dd	3
	align	4
_317:
	dd	3
	dd	0
	dd	0
	align	4
_316:
	dd	_214
	dd	70
	dd	20
	align	4
_7:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	115
	align	4
_319:
	dd	_214
	dd	72
	dd	2
_336:
	db	"FitValueToRange",0
_337:
	db	"InValue",0
_338:
	db	"RangeIn_Start",0
_339:
	db	"RangeIn_End",0
_340:
	db	"RangeOut_Start",0
_341:
	db	"RangeOut_End",0
_342:
	db	"OldRange",0
_343:
	db	"NewRange",0
_344:
	db	"OutValue",0
	align	4
_335:
	dd	1
	dd	_336
	dd	2
	dd	_337
	dd	_230
	dd	-4
	dd	2
	dd	_338
	dd	_230
	dd	-8
	dd	2
	dd	_339
	dd	_230
	dd	-12
	dd	2
	dd	_340
	dd	_230
	dd	-16
	dd	2
	dd	_341
	dd	_230
	dd	-20
	dd	2
	dd	_342
	dd	_230
	dd	-24
	dd	2
	dd	_343
	dd	_230
	dd	-28
	dd	2
	dd	_344
	dd	_230
	dd	-32
	dd	0
	align	4
_328:
	dd	_214
	dd	78
	dd	2
	align	4
_330:
	dd	_214
	dd	79
	dd	2
	align	4
_332:
	dd	_214
	dd	81
	dd	2
	align	4
_334:
	dd	_214
	dd	83
	dd	2
_386:
	db	"DrawCircle",0
_387:
	db	"xCenter",0
_388:
	db	"yCenter",0
_389:
	db	"radius",0
_390:
	db	"p",0
_391:
	db	"x",0
_392:
	db	"y",0
	align	4
_385:
	dd	1
	dd	_386
	dd	2
	dd	_387
	dd	_228
	dd	-4
	dd	2
	dd	_388
	dd	_228
	dd	-8
	dd	2
	dd	_389
	dd	_228
	dd	-12
	dd	2
	dd	_390
	dd	_228
	dd	-16
	dd	2
	dd	_391
	dd	_228
	dd	-20
	dd	2
	dd	_392
	dd	_228
	dd	-24
	dd	0
	align	4
_345:
	dd	_214
	dd	90
	dd	2
	align	4
_349:
	dd	_214
	dd	92
	dd	2
	align	4
_350:
	dd	_214
	dd	93
	dd	2
	align	4
_351:
	dd	_214
	dd	94
	dd	2
	align	4
_352:
	dd	_214
	dd	95
	dd	2
	align	4
_353:
	dd	_214
	dd	96
	dd	2
	align	4
_354:
	dd	_214
	dd	97
	dd	2
	align	4
_355:
	dd	_214
	dd	98
	dd	2
	align	4
_356:
	dd	_214
	dd	99
	dd	2
	align	4
_357:
	dd	_214
	dd	100
	dd	2
	align	4
_358:
	dd	_214
	dd	101
	dd	2
	align	4
_359:
	dd	_214
	dd	102
	dd	2
	align	4
_360:
	dd	_214
	dd	103
	dd	2
	align	4
_384:
	dd	3
	dd	0
	dd	0
	align	4
_361:
	dd	_214
	dd	104
	dd	3
	align	4
_364:
	dd	3
	dd	0
	dd	0
	align	4
_363:
	dd	_214
	dd	105
	dd	4
	align	4
_368:
	dd	3
	dd	0
	dd	0
	align	4
_366:
	dd	_214
	dd	107
	dd	4
	align	4
_367:
	dd	_214
	dd	108
	dd	4
	align	4
_369:
	dd	_214
	dd	110
	dd	3
	align	4
_372:
	dd	3
	dd	0
	dd	0
	align	4
_371:
	dd	_214
	dd	111
	dd	4
	align	4
_375:
	dd	3
	dd	0
	dd	0
	align	4
_374:
	dd	_214
	dd	113
	dd	4
	align	4
_376:
	dd	_214
	dd	115
	dd	3
	align	4
_377:
	dd	_214
	dd	116
	dd	3
	align	4
_378:
	dd	_214
	dd	117
	dd	3
	align	4
_379:
	dd	_214
	dd	118
	dd	3
	align	4
_380:
	dd	_214
	dd	119
	dd	3
	align	4
_381:
	dd	_214
	dd	120
	dd	3
	align	4
_382:
	dd	_214
	dd	121
	dd	3
	align	4
_383:
	dd	_214
	dd	122
	dd	3
_410:
	db	"Rect",0
_411:
	db	"w",0
_412:
	db	"h",0
	align	4
_409:
	dd	1
	dd	_410
	dd	2
	dd	_391
	dd	_228
	dd	-4
	dd	2
	dd	_392
	dd	_228
	dd	-8
	dd	2
	dd	_411
	dd	_228
	dd	-12
	dd	2
	dd	_412
	dd	_228
	dd	-16
	dd	2
	dd	_230
	dd	_228
	dd	-20
	dd	0
	align	4
_393:
	dd	_214
	dd	129
	dd	2
	align	4
_396:
	dd	3
	dd	0
	dd	0
	align	4
_395:
	dd	_214
	dd	131
	dd	3
_407:
	db	"x1",0
_408:
	db	"y1",0
	align	4
_406:
	dd	3
	dd	0
	dd	2
	dd	_407
	dd	_228
	dd	-24
	dd	2
	dd	_408
	dd	_228
	dd	-28
	dd	0
	align	4
_398:
	dd	_214
	dd	134
	dd	3
	align	4
_400:
	dd	_214
	dd	135
	dd	3
	align	4
_402:
	dd	_214
	dd	136
	dd	3
	align	4
_403:
	dd	_214
	dd	137
	dd	3
	align	4
_404:
	dd	_214
	dd	138
	dd	3
	align	4
_405:
	dd	_214
	dd	139
	dd	3
_439:
	db	"RectsOverlap",0
_440:
	db	"w1",0
_441:
	db	"h1",0
_442:
	db	"x2",0
_443:
	db	"y2",0
_444:
	db	"w2",0
_445:
	db	"h2",0
	align	4
_438:
	dd	1
	dd	_439
	dd	2
	dd	_407
	dd	_228
	dd	-4
	dd	2
	dd	_408
	dd	_228
	dd	-8
	dd	2
	dd	_440
	dd	_228
	dd	-12
	dd	2
	dd	_441
	dd	_228
	dd	-16
	dd	2
	dd	_442
	dd	_228
	dd	-20
	dd	2
	dd	_443
	dd	_228
	dd	-24
	dd	2
	dd	_444
	dd	_228
	dd	-28
	dd	2
	dd	_445
	dd	_228
	dd	-32
	dd	0
	align	4
_413:
	dd	_214
	dd	149
	dd	2
	align	4
_416:
	dd	3
	dd	0
	dd	0
	align	4
_415:
	dd	_214
	dd	151
	dd	3
	align	4
_437:
	dd	3
	dd	0
	dd	0
	align	4
_418:
	dd	_214
	dd	153
	dd	3
	align	4
_421:
	dd	3
	dd	0
	dd	0
	align	4
_420:
	dd	_214
	dd	155
	dd	4
	align	4
_436:
	dd	3
	dd	0
	dd	0
	align	4
_423:
	dd	_214
	dd	158
	dd	4
	align	4
_426:
	dd	3
	dd	0
	dd	0
	align	4
_425:
	dd	_214
	dd	160
	dd	5
	align	4
_435:
	dd	3
	dd	0
	dd	0
	align	4
_428:
	dd	_214
	dd	162
	dd	5
	align	4
_431:
	dd	3
	dd	0
	dd	0
	align	4
_430:
	dd	_214
	dd	164
	dd	6
	align	4
_434:
	dd	3
	dd	0
	dd	0
	align	4
_433:
	dd	_214
	dd	167
	dd	6
_455:
	db	"TFormR",0
_456:
	db	"xc",0
_457:
	db	"yc",0
_458:
	db	"angle",0
_459:
	db	"xr",0
_460:
	db	"yr",0
	align	4
_454:
	dd	1
	dd	_455
	dd	2
	dd	_456
	dd	_230
	dd	-4
	dd	2
	dd	_457
	dd	_230
	dd	-8
	dd	2
	dd	_458
	dd	_228
	dd	-12
	dd	5
	dd	_459
	dd	_230
	dd	-16
	dd	5
	dd	_460
	dd	_230
	dd	-20
	dd	2
	dd	_391
	dd	_230
	dd	-24
	dd	2
	dd	_392
	dd	_230
	dd	-28
	dd	0
	align	4
_446:
	dd	_214
	dd	181
	dd	2
	align	4
_448:
	dd	_214
	dd	182
	dd	2
	align	4
_450:
	dd	_214
	dd	183
	dd	2
	align	4
_451:
	dd	_214
	dd	184
	dd	2
	align	4
_452:
	dd	_214
	dd	185
	dd	2
	align	4
_453:
	dd	_214
	dd	186
	dd	2
_497:
	db	"PointInTri",0
_498:
	db	"xo",0
_499:
	db	"yo",0
_500:
	db	"x3",0
_501:
	db	"y3",0
_502:
	db	"c",0
	align	4
_496:
	dd	1
	dd	_497
	dd	2
	dd	_498
	dd	_230
	dd	-4
	dd	2
	dd	_499
	dd	_230
	dd	-8
	dd	2
	dd	_407
	dd	_230
	dd	-12
	dd	2
	dd	_408
	dd	_230
	dd	-16
	dd	2
	dd	_442
	dd	_230
	dd	-20
	dd	2
	dd	_443
	dd	_230
	dd	-24
	dd	2
	dd	_500
	dd	_230
	dd	-28
	dd	2
	dd	_501
	dd	_230
	dd	-32
	dd	2
	dd	_502
	dd	_228
	dd	-36
	dd	0
	align	4
_461:
	dd	_214
	dd	194
	dd	2
	align	4
_463:
	dd	_214
	dd	195
	dd	2
	align	4
_478:
	dd	3
	dd	0
	dd	0
	align	4
_471:
	dd	_214
	dd	196
	dd	3
	align	4
_477:
	dd	3
	dd	0
	dd	0
	align	4
_473:
	dd	_214
	dd	197
	dd	4
	align	4
_476:
	dd	3
	dd	0
	dd	0
	align	4
_475:
	dd	_214
	dd	198
	dd	5
	align	4
_479:
	dd	_214
	dd	202
	dd	2
	align	4
_494:
	dd	3
	dd	0
	dd	0
	align	4
_487:
	dd	_214
	dd	203
	dd	3
	align	4
_493:
	dd	3
	dd	0
	dd	0
	align	4
_489:
	dd	_214
	dd	204
	dd	4
	align	4
_492:
	dd	3
	dd	0
	dd	0
	align	4
_491:
	dd	_214
	dd	205
	dd	5
	align	4
_495:
	dd	_214
	dd	209
	dd	2
_509:
	db	"PointToPointDist",0
_510:
	db	"dx",0
_511:
	db	"dy",0
	align	4
_508:
	dd	1
	dd	_509
	dd	2
	dd	_407
	dd	_230
	dd	-4
	dd	2
	dd	_408
	dd	_230
	dd	-8
	dd	2
	dd	_442
	dd	_230
	dd	-12
	dd	2
	dd	_443
	dd	_230
	dd	-16
	dd	2
	dd	_510
	dd	_230
	dd	-20
	dd	2
	dd	_511
	dd	_230
	dd	-24
	dd	0
	align	4
_503:
	dd	_214
	dd	232
	dd	2
	align	4
_505:
	dd	_214
	dd	233
	dd	2
	align	4
_507:
	dd	_214
	dd	235
	dd	2
_546:
	db	"LineCollide2",0
_547:
	db	"px",0
_548:
	db	"py",0
_549:
	db	"r",0
_550:
	db	"sx",0
_551:
	db	"sy",0
_552:
	db	"q",0
	align	4
_545:
	dd	1
	dd	_546
	dd	2
	dd	_407
	dd	_230
	dd	-4
	dd	2
	dd	_408
	dd	_230
	dd	-8
	dd	2
	dd	_442
	dd	_230
	dd	-12
	dd	2
	dd	_443
	dd	_230
	dd	-16
	dd	2
	dd	_547
	dd	_230
	dd	-20
	dd	2
	dd	_548
	dd	_230
	dd	-24
	dd	2
	dd	_549
	dd	_228
	dd	-28
	dd	2
	dd	_550
	dd	_230
	dd	-32
	dd	2
	dd	_551
	dd	_230
	dd	-36
	dd	2
	dd	_552
	dd	_230
	dd	-40
	dd	0
	align	4
_512:
	dd	_214
	dd	242
	dd	2
	align	4
_523:
	dd	3
	dd	0
	dd	0
	align	4
_516:
	dd	_214
	dd	243
	dd	3
	align	4
_519:
	dd	3
	dd	0
	dd	0
	align	4
_518:
	dd	_214
	dd	243
	dd	46
	align	4
_684:
	dd	0x3f800000
	align	4
_522:
	dd	3
	dd	0
	dd	0
	align	4
_521:
	dd	_214
	dd	243
	dd	63
	align	4
_685:
	dd	0x0
	align	4
_524:
	dd	_214
	dd	246
	dd	2
	align	4
_526:
	dd	_214
	dd	247
	dd	2
	align	4
_528:
	dd	_214
	dd	249
	dd	2
	align	4
_530:
	dd	_214
	dd	251
	dd	2
	align	4
_533:
	dd	3
	dd	0
	dd	0
	align	4
_532:
	dd	_214
	dd	251
	dd	18
	align	4
_534:
	dd	_214
	dd	252
	dd	2
	align	4
_537:
	dd	3
	dd	0
	dd	0
	align	4
_536:
	dd	_214
	dd	252
	dd	18
	align	4
_538:
	dd	_214
	dd	254
	dd	2
	align	4
_686:
	dd	0x3f800000
	align	4
_687:
	dd	0x3f800000
	align	4
_541:
	dd	3
	dd	0
	dd	0
	align	4
_540:
	dd	_214
	dd	254
	dd	69
	align	4
_688:
	dd	0x3f800000
	align	4
_544:
	dd	3
	dd	0
	dd	0
	align	4
_543:
	dd	_214
	dd	254
	dd	86
	align	4
_689:
	dd	0x0
_576:
	db	"TurnToFace",0
_577:
	db	"plx",0
_578:
	db	"ply",0
_579:
	db	"angle1",0
_580:
	db	"angle2",0
_581:
	db	"ret",0
	align	4
_575:
	dd	1
	dd	_576
	dd	2
	dd	_391
	dd	_230
	dd	-4
	dd	2
	dd	_392
	dd	_230
	dd	-8
	dd	2
	dd	_510
	dd	_230
	dd	-12
	dd	2
	dd	_511
	dd	_230
	dd	-16
	dd	2
	dd	_577
	dd	_230
	dd	-20
	dd	2
	dd	_578
	dd	_230
	dd	-24
	dd	2
	dd	_579
	dd	_230
	dd	-28
	dd	2
	dd	_580
	dd	_230
	dd	-32
	dd	2
	dd	_581
	dd	_228
	dd	-36
	dd	0
	align	4
_553:
	dd	_214
	dd	261
	dd	2
	align	4
_557:
	dd	_214
	dd	263
	dd	2
	align	4
_558:
	dd	_214
	dd	264
	dd	2
	align	4
_559:
	dd	_214
	dd	266
	dd	2
	align	4
_560:
	dd	_214
	dd	267
	dd	2
	align	4
_563:
	dd	3
	dd	0
	dd	0
	align	4
_562:
	dd	_214
	dd	268
	dd	3
	align	4
_569:
	dd	3
	dd	0
	dd	0
	align	4
_565:
	dd	_214
	dd	270
	dd	3
	align	4
_568:
	dd	3
	dd	0
	dd	0
	align	4
_567:
	dd	_214
	dd	271
	dd	4
	align	4
_570:
	dd	_214
	dd	275
	dd	2
	align	4
_573:
	dd	3
	dd	0
	dd	0
	align	4
_572:
	dd	_214
	dd	275
	dd	23
	align	4
_574:
	dd	_214
	dd	277
	dd	5
_586:
	db	"SaveScreenshot",0
_587:
	db	"img",0
_588:
	db	":brl.pixmap.TPixmap",0
	align	4
_585:
	dd	1
	dd	_586
	dd	2
	dd	_230
	dd	_324
	dd	-4
	dd	2
	dd	_587
	dd	_588
	dd	-8
	dd	0
	align	4
_582:
	dd	_214
	dd	284
	dd	2
	align	4
_584:
	dd	_214
	dd	285
	dd	2
_614:
	db	"SetupKeyTable",0
_615:
	db	"tempkey",0
_616:
	db	"put_index",0
	align	4
_613:
	dd	1
	dd	_614
	dd	2
	dd	_615
	dd	_324
	dd	-4
	dd	2
	dd	_616
	dd	_228
	dd	-8
	dd	0
	align	4
_589:
	dd	_214
	dd	291
	dd	2
	align	4
_592:
	dd	_214
	dd	292
	dd	2
	align	4
_593:
	dd	_214
	dd	297
	dd	2
	align	4
_612:
	dd	3
	dd	0
	dd	0
	align	4
_594:
	dd	_214
	dd	294
	dd	3
	align	4
_599:
	dd	_214
	dd	295
	dd	3
	align	4
_604:
	dd	_214
	dd	296
	dd	3
