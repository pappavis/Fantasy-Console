	.reference	___bb_blitz_blitz
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_pngloader_pngloader
	.reference	___bb_random_random
	.reference	_bbATan2
	.reference	_bbArrayNew1D
	.reference	_bbConvertToInt
	.reference	_bbConvertToString
	.reference	_bbCos
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbFloatToInt
	.reference	_bbGCFree
	.reference	_bbIntAbs
	.reference	_bbIntTypeTag
	.reference	_bbNullObject
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbSin
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromInt
	.reference	_bbStringTypeTag
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_OutOfDataError
	.reference	_brl_graphics_GraphicsHeight
	.reference	_brl_graphics_GraphicsWidth
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawRect
	.reference	_brl_max2d_GrabPixmap
	.reference	_brl_max2d_Plot
	.reference	_brl_pngloader_SavePixmapPNG
	.reference	_brl_random_Rnd
	.globl	___bb_blitzmax_code_archief__spel__gridwars_utils
	.globl	_bb_CycleColours
	.globl	_bb_DrawCircle
	.globl	_bb_FitValueToRange
	.globl	_bb_GetPlayTime
	.globl	_bb_LineCollide2
	.globl	_bb_PointInTri
	.globl	_bb_PointToPointDist
	.globl	_bb_Rect
	.globl	_bb_RectsOverlap
	.globl	_bb_SaveScreenshot
	.globl	_bb_SetupKeyTable
	.globl	_bb_TFormR
	.globl	_bb_TurnToFace
	.globl	_bb_bcol
	.globl	_bb_bcoldelta
	.globl	_bb_gcol
	.globl	_bb_gcoldelta
	.globl	_bb_keystring
	.globl	_bb_rcol
	.globl	_bb_rcoldelta
	.text	
___bb_blitzmax_code_archief__spel__gridwars_utils:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_237
	je	_238
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_238:
	movl	$1,_237
	movl	%ebp,4(%esp)
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_224,_223
	call	___bb_blitz_blitz
	call	___bb_random_random
	call	___bb_pngloader_pngloader
	call	___bb_glmax2d_glmax2d
	movl	$_213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_220,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_221
	movl	$300,4(%esp)
	movl	$_218,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_keystring
	orl	$1,_220
_221:
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
_14:
	mov	$0,%ebx
	jmp	_131
_131:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_CycleColours:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	sub	$28,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_278,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_rcol,%eax
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	flds	_bb_rcoldelta
	fdivs	_621
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,_bb_rcol
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,_bb_rcol
	jge	_241
	movl	%ebp,4(%esp)
	movl	$_244,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_242,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,_bb_rcol
	movl	$_243,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fstps	_bb_rcoldelta
	calll	*_bbOnDebugLeaveScope
	jmp	_245
_241:
	movl	%ebp,4(%esp)
	movl	$_251,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,_bb_rcol
	jle	_247
	movl	%ebp,4(%esp)
	movl	$_250,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_248,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,_bb_rcol
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fchs
	fstps	_bb_rcoldelta
	calll	*_bbOnDebugLeaveScope
_247:
	calll	*_bbOnDebugLeaveScope
_245:
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_gcol,%eax
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	flds	_bb_gcoldelta
	fdivs	_622
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,_bb_gcol
	movl	$_253,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,_bb_gcol
	jge	_254
	movl	%ebp,4(%esp)
	movl	$_257,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_255,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,_bb_gcol
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fstps	_bb_gcoldelta
	calll	*_bbOnDebugLeaveScope
	jmp	_258
_254:
	movl	%ebp,4(%esp)
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,_bb_gcol
	jle	_260
	movl	%ebp,4(%esp)
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,_bb_gcol
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fchs
	fstps	_bb_gcoldelta
	calll	*_bbOnDebugLeaveScope
_260:
	calll	*_bbOnDebugLeaveScope
_258:
	movl	$_265,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_bcol,%eax
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	flds	_bb_bcoldelta
	fdivs	_623
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,_bb_bcol
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,_bb_bcol
	jge	_267
	movl	%ebp,4(%esp)
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,_bb_bcol
	movl	$_269,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fstps	_bb_bcoldelta
	calll	*_bbOnDebugLeaveScope
	jmp	_271
_267:
	movl	%ebp,4(%esp)
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,_bb_bcol
	jle	_273
	movl	%ebp,4(%esp)
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_274,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,_bb_bcol
	movl	$_275,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	_brl_random_Rnd
	fchs
	fstps	_bb_bcoldelta
	calll	*_bbOnDebugLeaveScope
_273:
	calll	*_bbOnDebugLeaveScope
_271:
	mov	$0,%ebx
	jmp	_134
_134:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_GetPlayTime:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbEmptyString,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,-8(%ebp)
	movl	$_283,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$50,%ecx
	movl	-4(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%eax,-12(%ebp)
	movl	$_285,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$60,%ecx
	movl	-12(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%eax,-16(%ebp)
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$60,%ecx
	movl	-16(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%eax,-20(%ebp)
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-20(%ebp)
	jle	_290
	movl	%ebp,4(%esp)
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_291,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_2,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$1,-20(%ebp)
	jle	_293
	movl	%ebp,4(%esp)
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_294,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_3,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_296
_293:
	movl	%ebp,4(%esp)
	movl	$_298,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_4,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
_296:
	calll	*_bbOnDebugLeaveScope
_290:
	movl	$_300,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jle	_301
	movl	%ebp,4(%esp)
	movl	$_310,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_5,4(%esp)
	mov	$60,%ecx
	movl	-16(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%edx,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$1,-16(%ebp)
	jle	_304
	movl	%ebp,4(%esp)
	movl	$_306,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_3,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_307
_304:
	movl	%ebp,4(%esp)
	movl	$_309,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_308,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_4,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
_307:
	calll	*_bbOnDebugLeaveScope
_301:
	movl	$_311,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-12(%ebp)
	jle	_312
	movl	%ebp,4(%esp)
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_313,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_6,4(%esp)
	mov	$60,%ecx
	movl	-12(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%edx,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	movl	$_314,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$1,-12(%ebp)
	jle	_315
	movl	%ebp,4(%esp)
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
_315:
	calll	*_bbOnDebugLeaveScope
_312:
	movl	$_319,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	jmp	_137
_137:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_FitValueToRange:
	push	%ebp
	mov	%esp,%ebp
	sub	$56,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	fldz
	fstps	-24(%ebp)
	fldz
	fstps	-28(%ebp)
	fldz
	fstps	-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_335,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_328,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fsubs	-8(%ebp)
	fstps	-24(%ebp)
	movl	$_330,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-20(%ebp)
	fsubs	-16(%ebp)
	fstps	-28(%ebp)
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fsubs	-8(%ebp)
	fdivs	-24(%ebp)
	fmuls	-28(%ebp)
	fadds	-16(%ebp)
	fstps	-32(%ebp)
	movl	$_334,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-32(%ebp)
	fstps	-36(%ebp)
	jmp	_144
_144:
	calll	*_bbOnDebugLeaveScope
	flds	-36(%ebp)
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_DrawCircle:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	%ebp,4(%esp)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_345,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$_349,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-20(%ebp)
	movl	$_350,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$_351,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_352,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_353,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_354,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_355,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_356,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_357,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_358,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_359,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$1,%eax
	subl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_8
_10:
	movl	%ebp,4(%esp)
	movl	$_384,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_361,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jge	_362
	movl	%ebp,4(%esp)
	movl	$_364,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_363,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$1,-20(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_365
_362:
	movl	%ebp,4(%esp)
	movl	$_368,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_366,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$1,-20(%ebp)
	movl	$_367,(%esp)
	calll	*_bbOnDebugEnterStm
	subl	$1,-24(%ebp)
	calll	*_bbOnDebugLeaveScope
_365:
	movl	$_369,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jge	_370
	movl	%ebp,4(%esp)
	movl	$_372,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_371,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	shl	$1,%edx
	add	%edx,%eax
	add	$1,%eax
	movl	%eax,-16(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_373
_370:
	movl	%ebp,4(%esp)
	movl	$_375,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_374,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	-24(%ebp),%eax
	shl	$1,%eax
	add	%eax,%edx
	add	$1,%edx
	movl	%edx,-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_373:
	movl	$_376,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_378,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_379,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_380,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_381,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_382,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	addl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	movl	$_383,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstps	(%esp)
	call	_brl_max2d_Plot
	calll	*_bbOnDebugLeaveScope
_8:
	movl	-24(%ebp),%eax
	cmpl	%eax,-20(%ebp)
	jl	_10
_9:
	mov	$0,%ebx
	jmp	_149
_149:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_Rect:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	%ebp,4(%esp)
	movl	$_409,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_393,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-20(%ebp)
	je	_394
	movl	%ebp,4(%esp)
	movl	$_396,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_395,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	calll	*_bbOnDebugLeaveScope
	jmp	_397
_394:
	movl	%ebp,4(%esp)
	movl	$_406,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_398,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	addl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$_400,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	12(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_403,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	12(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	8(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_404,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	12(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	8(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_405,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	12(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	fildl	-32(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	calll	*_bbOnDebugLeaveScope
_397:
	mov	$0,%ebx
	jmp	_156
_156:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_RectsOverlap:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	36(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_438,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_413,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	addl	-28(%ebp),%eax
	cmpl	%eax,-4(%ebp)
	jle	_414
	movl	%ebp,4(%esp)
	movl	$_416,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_415,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	calll	*_bbOnDebugLeaveScope
	jmp	_166
_414:
	movl	%ebp,4(%esp)
	movl	$_437,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_418,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	addl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jge	_419
	movl	%ebp,4(%esp)
	movl	$_421,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_420,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_166
_419:
	movl	%ebp,4(%esp)
	movl	$_436,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_423,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	addl	-32(%ebp),%eax
	cmpl	%eax,-8(%ebp)
	jle	_424
	movl	%ebp,4(%esp)
	movl	$_426,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_425,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_166
_424:
	movl	%ebp,4(%esp)
	movl	$_435,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_428,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	addl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	_429
	movl	%ebp,4(%esp)
	movl	$_431,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_430,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_166
_429:
	movl	%ebp,4(%esp)
	movl	$_434,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_433,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$1,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_166
_166:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_TFormR:
	push	%ebp
	mov	%esp,%ebp
	sub	$48,%esp
	push	%ebx
	sub	$20,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	fldz
	fstps	-24(%ebp)
	fldz
	fstps	-28(%ebp)
	movl	%ebp,4(%esp)
	movl	$_454,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_446,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	flds	(%eax)
	fsubs	-4(%ebp)
	fstps	-24(%ebp)
	movl	$_448,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	flds	(%eax)
	fsubs	-8(%ebp)
	fstps	-28(%ebp)
	movl	$_450,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fstpl	(%esp)
	call	_bbCos
	flds	-24(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-44(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fstpl	(%esp)
	call	_bbSin
	flds	-28(%ebp)
	fmulp	%st(0),%st(1)
	fldl	-44(%ebp)
	fsubp	%st(0),%st(1)
	fstpl	-44(%ebp)
	fldl	-44(%ebp)
	fstps	(%ebx)
	movl	$_451,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fstpl	(%esp)
	call	_bbSin
	flds	-24(%ebp)
	fmulp	%st(0),%st(1)
	fstpl	-36(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fstpl	(%esp)
	call	_bbCos
	flds	-28(%ebp)
	fmulp	%st(0),%st(1)
	fldl	-36(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-36(%ebp)
	fldl	-36(%ebp)
	fstps	(%ebx)
	movl	$_452,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%edx
	flds	-4(%ebp)
	movl	-16(%ebp),%eax
	fadds	(%eax)
	fstps	(%edx)
	movl	$_453,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%edx
	flds	-8(%ebp)
	movl	-20(%ebp),%eax
	fadds	(%eax)
	fstps	(%edx)
	mov	$0,%ebx
	jmp	_173
_173:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PointInTri:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	sub	$16,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	flds	28(%ebp)
	fstps	-24(%ebp)
	flds	32(%ebp)
	fstps	-28(%ebp)
	flds	36(%ebp)
	fstps	-32(%ebp)
	movl	$0,-36(%ebp)
	movl	%ebp,4(%esp)
	movl	$_496,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_461,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,-36(%ebp)
	movl	$_463,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-16(%ebp)
	flds	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_464
	flds	-8(%ebp)
	flds	-24(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_464:
	cmp	$0,%eax
	jne	_468
	flds	-24(%ebp)
	flds	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_466
	flds	-8(%ebp)
	flds	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_466:
_468:
	cmp	$0,%eax
	je	_470
	movl	%ebp,4(%esp)
	movl	$_478,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_471,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-24(%ebp)
	fsubs	-16(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_472
	movl	%ebp,4(%esp)
	movl	$_477,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_473,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	flds	-20(%ebp)
	fsubs	-12(%ebp)
	flds	-8(%ebp)
	fsubs	-16(%ebp)
	fmulp	%st(0),%st(1)
	flds	-24(%ebp)
	fsubs	-16(%ebp)
	fdivrp	%st(0),%st(1)
	fadds	-12(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_474
	movl	%ebp,4(%esp)
	movl	$_476,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_475,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%eax
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	movl	%eax,-36(%ebp)
	calll	*_bbOnDebugLeaveScope
_474:
	calll	*_bbOnDebugLeaveScope
_472:
	calll	*_bbOnDebugLeaveScope
_470:
	movl	$_479,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-16(%ebp)
	flds	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_480
	flds	-8(%ebp)
	flds	-32(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_480:
	cmp	$0,%eax
	jne	_484
	flds	-32(%ebp)
	flds	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_482
	flds	-8(%ebp)
	flds	-32(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_482:
_484:
	cmp	$0,%eax
	je	_486
	movl	%ebp,4(%esp)
	movl	$_494,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_487,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-24(%ebp)
	fsubs	-16(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_488
	movl	%ebp,4(%esp)
	movl	$_493,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_489,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	flds	-28(%ebp)
	fsubs	-12(%ebp)
	flds	-8(%ebp)
	fsubs	-16(%ebp)
	fmulp	%st(0),%st(1)
	flds	-32(%ebp)
	fsubs	-16(%ebp)
	fdivrp	%st(0),%st(1)
	fadds	-12(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_490
	movl	%ebp,4(%esp)
	movl	$_492,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_491,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%eax
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	movl	%eax,-36(%ebp)
	calll	*_bbOnDebugLeaveScope
_490:
	calll	*_bbOnDebugLeaveScope
_488:
	calll	*_bbOnDebugLeaveScope
_486:
	movl	$_495,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	jmp	_183
_183:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PointToPointDist:
	push	%ebp
	mov	%esp,%ebp
	sub	$40,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	fldz
	fstps	-20(%ebp)
	fldz
	fstps	-24(%ebp)
	movl	%ebp,4(%esp)
	movl	$_508,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_503,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fsubs	-12(%ebp)
	fstps	-20(%ebp)
	movl	$_505,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fsubs	-16(%ebp)
	fstps	-24(%ebp)
	movl	$_507,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-20(%ebp)
	fmuls	-20(%ebp)
	flds	-24(%ebp)
	fmuls	-24(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fstps	-28(%ebp)
	jmp	_189
_189:
	calll	*_bbOnDebugLeaveScope
	flds	-28(%ebp)
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LineCollide2:
	push	%ebp
	mov	%esp,%ebp
	sub	$72,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	flds	28(%ebp)
	fstps	-24(%ebp)
	movl	32(%ebp),%eax
	movl	%eax,-28(%ebp)
	fldz
	fstps	-32(%ebp)
	fldz
	fstps	-36(%ebp)
	fldz
	fstps	-40(%ebp)
	movl	%ebp,4(%esp)
	movl	$_545,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_512,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	flds	-12(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_513
	flds	-8(%ebp)
	flds	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_513:
	cmp	$0,%eax
	je	_515
	movl	%ebp,4(%esp)
	movl	$_523,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_516,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fstps	12(%esp)
	flds	-4(%ebp)
	fstps	8(%esp)
	flds	-24(%ebp)
	fstps	4(%esp)
	flds	-20(%ebp)
	fstps	(%esp)
	call	_bb_PointToPointDist
	movl	-28(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_517
	movl	%ebp,4(%esp)
	movl	$_519,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_518,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_684
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_198
_517:
	movl	%ebp,4(%esp)
	movl	$_522,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_521,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_685
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_198
_515:
	movl	$_524,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fsubs	-4(%ebp)
	fstps	-32(%ebp)
	movl	$_526,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-16(%ebp)
	fsubs	-8(%ebp)
	fstps	-36(%ebp)
	movl	$_528,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-20(%ebp)
	fsubs	-4(%ebp)
	flds	-12(%ebp)
	fsubs	-4(%ebp)
	fmulp	%st(0),%st(1)
	flds	-24(%ebp)
	fsubs	-8(%ebp)
	flds	-16(%ebp)
	fsubs	-8(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	flds	-32(%ebp)
	fmuls	-32(%ebp)
	flds	-36(%ebp)
	fmuls	-36(%ebp)
	faddp	%st(0),%st(1)
	fdivrp	%st(0),%st(1)
	fstps	-40(%ebp)
	movl	$_530,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-40(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_531
	movl	%ebp,4(%esp)
	movl	$_533,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_532,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	-40(%ebp)
	calll	*_bbOnDebugLeaveScope
_531:
	movl	$_534,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-40(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_535
	movl	%ebp,4(%esp)
	movl	$_537,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_536,(%esp)
	calll	*_bbOnDebugEnterStm
	fld1
	fstps	-40(%ebp)
	calll	*_bbOnDebugLeaveScope
_535:
	movl	$_538,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_686
	fsubs	-40(%ebp)
	fmuls	-8(%ebp)
	flds	-40(%ebp)
	fmuls	-16(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%esp)
	flds	_687
	fsubs	-40(%ebp)
	fmuls	-4(%ebp)
	flds	-40(%ebp)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%esp)
	flds	-24(%ebp)
	fstps	4(%esp)
	flds	-20(%ebp)
	fstps	(%esp)
	call	_bb_PointToPointDist
	movl	-28(%ebp),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_539
	movl	%ebp,4(%esp)
	movl	$_541,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_540,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_688
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_198
_539:
	movl	%ebp,4(%esp)
	movl	$_544,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_543,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_689
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_198
_198:
	calll	*_bbOnDebugLeaveScope
	flds	-44(%ebp)
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_TurnToFace:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	sub	$16,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	flds	28(%ebp)
	fstps	-24(%ebp)
	fldz
	fstps	-28(%ebp)
	fldz
	fstps	-32(%ebp)
	movl	$0,-36(%ebp)
	movl	%ebp,4(%esp)
	movl	$_575,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_553,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	-28(%ebp)
	fldz
	fstps	-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$_557,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-20(%ebp)
	fsubs	-4(%ebp)
	fstpl	8(%esp)
	flds	-24(%ebp)
	fsubs	-8(%ebp)
	fstpl	(%esp)
	call	_bbATan2
	fstps	-28(%ebp)
	movl	$_558,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstpl	8(%esp)
	flds	-16(%ebp)
	fstpl	(%esp)
	call	_bbATan2
	fstps	-32(%ebp)
	movl	$_559,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-28(%ebp)
	fsubs	-32(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,-36(%ebp)
	movl	$_560,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$180,-36(%ebp)
	jl	_561
	movl	%ebp,4(%esp)
	movl	$_563,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_562,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$360,%eax
	subl	-36(%ebp),%eax
	neg	%eax
	movl	%eax,-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_564
_561:
	movl	%ebp,4(%esp)
	movl	$_569,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_565,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$-180,-36(%ebp)
	jg	_566
	movl	%ebp,4(%esp)
	movl	$_568,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_567,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$360,-36(%ebp)
	calll	*_bbOnDebugLeaveScope
_566:
	calll	*_bbOnDebugLeaveScope
_564:
	movl	$_570,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbIntAbs
	cmp	$6,%eax
	jge	_571
	movl	%ebp,4(%esp)
	movl	$_573,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_572,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-36(%ebp)
	calll	*_bbOnDebugLeaveScope
_571:
	movl	$_574,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	jmp	_206
_206:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SaveScreenshot:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_585,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_582,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_GraphicsHeight
	movl	%eax,12(%esp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_GrabPixmap
	movl	%eax,-8(%ebp)
	movl	$_584,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$5,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_pngloader_SavePixmapPNG
	mov	$0,%ebx
	jmp	_209
_209:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SetupKeyTable:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	movl	$_bbEmptyString,-4(%ebp)
	movl	$0,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_613,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_589,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$_592,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_15,_223
	movl	$_593,(%esp)
	calll	*_bbOnDebugEnterStm
_13:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_612,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_594,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_223,%esi
	movl	(%esi),%ebx
	cmp	$0,%ebx
	jne	_597
	call	_brl_blitz_OutOfDataError
_597:
	movl	(%ebx),%ebx
	add	$4,%esi
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	_bbConvertToString
	movl	%eax,-4(%ebp)
	add	$4,%esi
	movzbl	(%ebx),%eax
	cmp	$100,%eax
	jne	_598
	add	$4,%esi
_598:
	movl	%esi,_223
	movl	$_599,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_223,%esi
	movl	(%esi),%ebx
	cmp	$0,%ebx
	jne	_602
	call	_brl_blitz_OutOfDataError
_602:
	movl	(%ebx),%ebx
	add	$4,%esi
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	_bbConvertToInt
	movl	%eax,-8(%ebp)
	add	$4,%esi
	movzbl	(%ebx),%eax
	cmp	$100,%eax
	jne	_603
	add	$4,%esi
_603:
	movl	%esi,_223
	movl	$_604,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	movl	_bb_keystring,%eax
	cmpl	20(%eax),%ebx
	jb	_606
	call	_brl_blitz_ArrayBoundsError
_606:
	movl	_bb_keystring,%eax
	shl	$2,%ebx
	add	%ebx,%eax
	mov	%eax,%ebx
	movl	-4(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_611
	movl	%eax,(%esp)
	call	_bbGCFree
_611:
	movl	%esi,24(%ebx)
	calll	*_bbOnDebugLeaveScope
_11:
	cmpl	$299,-8(%ebp)
	jne	_13
_12:
	mov	$0,%ebx
	jmp	_211
_211:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_237:
	.long	0
_226:
	.asciz	"utils"
_227:
	.asciz	"rcol"
_228:
	.asciz	"i"
	.align	4
_bb_rcol:
	.long	250
_229:
	.asciz	"rcoldelta"
_230:
	.asciz	"f"
	.align	4
_bb_rcoldelta:
	.long	0xc0400000
_231:
	.asciz	"gcol"
	.align	4
_bb_gcol:
	.long	20
_232:
	.asciz	"gcoldelta"
	.align	4
_bb_gcoldelta:
	.long	0x40a00000
_233:
	.asciz	"bcol"
	.align	4
_bb_bcol:
	.long	30
_234:
	.asciz	"bcoldelta"
	.align	4
_bb_bcoldelta:
	.long	0x40e00000
_235:
	.asciz	"keystring"
_236:
	.asciz	"[]$"
	.align	4
_bb_keystring:
	.long	_bbEmptyArray
	.align	4
_225:
	.long	1
	.long	_226
	.long	4
	.long	_227
	.long	_228
	.long	_bb_rcol
	.long	4
	.long	_229
	.long	_230
	.long	_bb_rcoldelta
	.long	4
	.long	_231
	.long	_228
	.long	_bb_gcol
	.long	4
	.long	_232
	.long	_230
	.long	_bb_gcoldelta
	.long	4
	.long	_233
	.long	_228
	.long	_bb_bcol
	.long	4
	.long	_234
	.long	_230
	.long	_bb_bcoldelta
	.long	4
	.long	_235
	.long	_236
	.long	_bb_keystring
	.long	0
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	77,111,117,115,101,32,98,117,116,116,111,110,32,40,76,101
	.short	102,116,41
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	77,111,117,115,101,32,98,117,116,116,111,110,32,40,82,105
	.short	103,104,116,41
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	21
	.short	77,111,117,115,101,32,98,117,116,116,111,110,32,40,77,105
	.short	100,100,108,101,41
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	66,97,99,107,115,112,97,99,101
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	84,97,98
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	82,101,116,117,114,110
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	67,108,101,97,114
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	69,110,116,101,114
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,104,105,102,116
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	67,111,110,116,114,111,108
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	65,108,116
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	80,97,117,115,101
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	67,97,112,115,32,76,111,99,107
	.align	4
_29:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	69,115,99,97,112,101
	.align	4
_30:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,112,97,99,101
	.align	4
_31:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	80,97,103,101,32,85,112
	.align	4
_32:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	80,97,103,101,32,68,111,119,110
	.align	4
_33:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	69,110,100
	.align	4
_34:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	72,111,109,101
	.align	4
_35:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	67,117,114,115,111,114,32,40,76,101,102,116,41
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	67,117,114,115,111,114,32,40,85,112,41
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	67,117,114,115,111,114,32,40,82,105,103,104,116,41
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	67,117,114,115,111,114,32,40,68,111,119,110,41
	.align	4
_39:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	83,101,108,101,99,116
	.align	4
_40:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	80,114,105,110,116
	.align	4
_41:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	69,120,101,99,117,116,101
	.align	4
_42:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	83,99,114,101,101,110
	.align	4
_43:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	73,110,115,101,114,116
	.align	4
_44:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	68,101,108,101,116,101
	.align	4
_45:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	72,101,108,112
	.align	4
_46:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	48
	.align	4
_47:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	49
	.align	4
_48:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	50
	.align	4
_49:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	51
	.align	4
_50:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	52
	.align	4
_51:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	53
	.align	4
_52:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	54
	.align	4
_53:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	55
	.align	4
_54:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	56
	.align	4
_55:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	57
	.align	4
_56:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	65
	.align	4
_57:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	66
	.align	4
_58:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	67
	.align	4
_59:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	68
	.align	4
_60:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	69
	.align	4
_61:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	70
	.align	4
_62:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	71
	.align	4
_63:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	72
	.align	4
_64:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	73
	.align	4
_65:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	74
	.align	4
_66:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	75
	.align	4
_67:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	76
	.align	4
_68:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	77
	.align	4
_69:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	78
	.align	4
_70:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	79
	.align	4
_71:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	80
	.align	4
_72:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	81
	.align	4
_73:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	82
	.align	4
_74:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	83
	.align	4
_75:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	84
	.align	4
_76:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	85
	.align	4
_77:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	86
	.align	4
_78:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	87
	.align	4
_79:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	88
	.align	4
_80:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	89
	.align	4
_81:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	90
	.align	4
_82:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	83,121,115,32,107,101,121,32,40,76,101,102,116,41
	.align	4
_83:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	83,121,115,32,107,101,121,32,40,82,105,103,104,116,41
	.align	4
_84:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,48
	.align	4
_85:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,49
	.align	4
_86:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,50
	.align	4
_87:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,51
	.align	4
_88:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,52
	.align	4
_89:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,53
	.align	4
_90:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,54
	.align	4
_91:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,55
	.align	4
_92:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,56
	.align	4
_93:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,57
	.align	4
_94:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,42
	.align	4
_95:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,43
	.align	4
_96:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,47
	.align	4
_97:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,45
	.align	4
_98:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,112,97,100,32,46
	.align	4
_99:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,49
	.align	4
_100:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,50
	.align	4
_101:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,51
	.align	4
_102:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,52
	.align	4
_103:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,53
	.align	4
_104:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,54
	.align	4
_105:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,55
	.align	4
_106:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,56
	.align	4
_107:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	70,57
	.align	4
_108:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	70,49,48
	.align	4
_109:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	70,49,49
	.align	4
_110:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	70,49,50
	.align	4
_111:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	78,117,109,32,76,111,99,107
	.align	4
_112:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	83,99,114,111,108,108,32,76,111,99,107
	.align	4
_113:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	83,104,105,102,116,32,40,76,101,102,116,41
	.align	4
_114:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	83,104,105,102,116,32,40,82,105,103,104,116,41
	.align	4
_115:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	67,111,110,116,114,111,108,32,40,76,101,102,116,41
	.align	4
_116:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	67,111,110,116,114,111,108,32,40,82,105,103,104,116,41
	.align	4
_117:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	65,108,116,32,107,101,121,32,40,76,101,102,116,41
	.align	4
_118:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	65,108,116,32,107,101,121,32,40,82,105,103,104,116,41
	.align	4
_119:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	84,105,108,100,101
	.align	4
_120:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	77,105,110,117,115
	.align	4
_121:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	69,113,117,97,108,115
	.align	4
_122:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	66,114,97,99,107,101,116,32,40,79,112,101,110,41
	.align	4
_123:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	66,114,97,99,107,101,116,32,40,67,108,111,115,101,41
	.align	4
_124:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	66,97,99,107,115,108,97,115,104
	.align	4
_125:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	83,101,109,105,45,99,111,108,111,110
	.align	4
_126:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	81,117,111,116,101
	.align	4
_127:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	67,111,109,109,97
	.align	4
_128:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	80,101,114,105,111,100
	.align	4
_129:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,108,97,115,104
	.align	4
_130:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	72,105,116,32,65,32,75,101,121
	.align	4
_224:
_15:
	.long	_bbStringTypeTag
	.long	_16
	.long	_bbIntTypeTag
	.long	1
	.long	_bbStringTypeTag
	.long	_17
	.long	_bbIntTypeTag
	.long	2
	.long	_bbStringTypeTag
	.long	_18
	.long	_bbIntTypeTag
	.long	4
	.long	_bbStringTypeTag
	.long	_19
	.long	_bbIntTypeTag
	.long	8
	.long	_bbStringTypeTag
	.long	_20
	.long	_bbIntTypeTag
	.long	9
	.long	_bbStringTypeTag
	.long	_21
	.long	_bbIntTypeTag
	.long	13
	.long	_bbStringTypeTag
	.long	_22
	.long	_bbIntTypeTag
	.long	12
	.long	_bbStringTypeTag
	.long	_23
	.long	_bbIntTypeTag
	.long	13
	.long	_bbStringTypeTag
	.long	_24
	.long	_bbIntTypeTag
	.long	16
	.long	_bbStringTypeTag
	.long	_25
	.long	_bbIntTypeTag
	.long	17
	.long	_bbStringTypeTag
	.long	_26
	.long	_bbIntTypeTag
	.long	18
	.long	_bbStringTypeTag
	.long	_27
	.long	_bbIntTypeTag
	.long	19
	.long	_bbStringTypeTag
	.long	_28
	.long	_bbIntTypeTag
	.long	20
	.long	_bbStringTypeTag
	.long	_29
	.long	_bbIntTypeTag
	.long	27
	.long	_bbStringTypeTag
	.long	_30
	.long	_bbIntTypeTag
	.long	32
	.long	_bbStringTypeTag
	.long	_31
	.long	_bbIntTypeTag
	.long	33
	.long	_bbStringTypeTag
	.long	_32
	.long	_bbIntTypeTag
	.long	34
	.long	_bbStringTypeTag
	.long	_33
	.long	_bbIntTypeTag
	.long	35
	.long	_bbStringTypeTag
	.long	_34
	.long	_bbIntTypeTag
	.long	36
	.long	_bbStringTypeTag
	.long	_35
	.long	_bbIntTypeTag
	.long	37
	.long	_bbStringTypeTag
	.long	_36
	.long	_bbIntTypeTag
	.long	38
	.long	_bbStringTypeTag
	.long	_37
	.long	_bbIntTypeTag
	.long	39
	.long	_bbStringTypeTag
	.long	_38
	.long	_bbIntTypeTag
	.long	40
	.long	_bbStringTypeTag
	.long	_39
	.long	_bbIntTypeTag
	.long	41
	.long	_bbStringTypeTag
	.long	_40
	.long	_bbIntTypeTag
	.long	42
	.long	_bbStringTypeTag
	.long	_41
	.long	_bbIntTypeTag
	.long	43
	.long	_bbStringTypeTag
	.long	_42
	.long	_bbIntTypeTag
	.long	44
	.long	_bbStringTypeTag
	.long	_43
	.long	_bbIntTypeTag
	.long	45
	.long	_bbStringTypeTag
	.long	_44
	.long	_bbIntTypeTag
	.long	46
	.long	_bbStringTypeTag
	.long	_45
	.long	_bbIntTypeTag
	.long	47
	.long	_bbStringTypeTag
	.long	_46
	.long	_bbIntTypeTag
	.long	48
	.long	_bbStringTypeTag
	.long	_47
	.long	_bbIntTypeTag
	.long	49
	.long	_bbStringTypeTag
	.long	_48
	.long	_bbIntTypeTag
	.long	50
	.long	_bbStringTypeTag
	.long	_49
	.long	_bbIntTypeTag
	.long	51
	.long	_bbStringTypeTag
	.long	_50
	.long	_bbIntTypeTag
	.long	52
	.long	_bbStringTypeTag
	.long	_51
	.long	_bbIntTypeTag
	.long	53
	.long	_bbStringTypeTag
	.long	_52
	.long	_bbIntTypeTag
	.long	54
	.long	_bbStringTypeTag
	.long	_53
	.long	_bbIntTypeTag
	.long	55
	.long	_bbStringTypeTag
	.long	_54
	.long	_bbIntTypeTag
	.long	56
	.long	_bbStringTypeTag
	.long	_55
	.long	_bbIntTypeTag
	.long	57
	.long	_bbStringTypeTag
	.long	_56
	.long	_bbIntTypeTag
	.long	65
	.long	_bbStringTypeTag
	.long	_57
	.long	_bbIntTypeTag
	.long	66
	.long	_bbStringTypeTag
	.long	_58
	.long	_bbIntTypeTag
	.long	67
	.long	_bbStringTypeTag
	.long	_59
	.long	_bbIntTypeTag
	.long	68
	.long	_bbStringTypeTag
	.long	_60
	.long	_bbIntTypeTag
	.long	69
	.long	_bbStringTypeTag
	.long	_61
	.long	_bbIntTypeTag
	.long	70
	.long	_bbStringTypeTag
	.long	_62
	.long	_bbIntTypeTag
	.long	71
	.long	_bbStringTypeTag
	.long	_63
	.long	_bbIntTypeTag
	.long	72
	.long	_bbStringTypeTag
	.long	_64
	.long	_bbIntTypeTag
	.long	73
	.long	_bbStringTypeTag
	.long	_65
	.long	_bbIntTypeTag
	.long	74
	.long	_bbStringTypeTag
	.long	_66
	.long	_bbIntTypeTag
	.long	75
	.long	_bbStringTypeTag
	.long	_67
	.long	_bbIntTypeTag
	.long	76
	.long	_bbStringTypeTag
	.long	_68
	.long	_bbIntTypeTag
	.long	77
	.long	_bbStringTypeTag
	.long	_69
	.long	_bbIntTypeTag
	.long	78
	.long	_bbStringTypeTag
	.long	_70
	.long	_bbIntTypeTag
	.long	79
	.long	_bbStringTypeTag
	.long	_71
	.long	_bbIntTypeTag
	.long	80
	.long	_bbStringTypeTag
	.long	_72
	.long	_bbIntTypeTag
	.long	81
	.long	_bbStringTypeTag
	.long	_73
	.long	_bbIntTypeTag
	.long	82
	.long	_bbStringTypeTag
	.long	_74
	.long	_bbIntTypeTag
	.long	83
	.long	_bbStringTypeTag
	.long	_75
	.long	_bbIntTypeTag
	.long	84
	.long	_bbStringTypeTag
	.long	_76
	.long	_bbIntTypeTag
	.long	85
	.long	_bbStringTypeTag
	.long	_77
	.long	_bbIntTypeTag
	.long	86
	.long	_bbStringTypeTag
	.long	_78
	.long	_bbIntTypeTag
	.long	87
	.long	_bbStringTypeTag
	.long	_79
	.long	_bbIntTypeTag
	.long	88
	.long	_bbStringTypeTag
	.long	_80
	.long	_bbIntTypeTag
	.long	89
	.long	_bbStringTypeTag
	.long	_81
	.long	_bbIntTypeTag
	.long	90
	.long	_bbStringTypeTag
	.long	_82
	.long	_bbIntTypeTag
	.long	91
	.long	_bbStringTypeTag
	.long	_83
	.long	_bbIntTypeTag
	.long	92
	.long	_bbStringTypeTag
	.long	_84
	.long	_bbIntTypeTag
	.long	96
	.long	_bbStringTypeTag
	.long	_85
	.long	_bbIntTypeTag
	.long	97
	.long	_bbStringTypeTag
	.long	_86
	.long	_bbIntTypeTag
	.long	98
	.long	_bbStringTypeTag
	.long	_87
	.long	_bbIntTypeTag
	.long	99
	.long	_bbStringTypeTag
	.long	_88
	.long	_bbIntTypeTag
	.long	100
	.long	_bbStringTypeTag
	.long	_89
	.long	_bbIntTypeTag
	.long	101
	.long	_bbStringTypeTag
	.long	_90
	.long	_bbIntTypeTag
	.long	102
	.long	_bbStringTypeTag
	.long	_91
	.long	_bbIntTypeTag
	.long	103
	.long	_bbStringTypeTag
	.long	_92
	.long	_bbIntTypeTag
	.long	104
	.long	_bbStringTypeTag
	.long	_93
	.long	_bbIntTypeTag
	.long	105
	.long	_bbStringTypeTag
	.long	_94
	.long	_bbIntTypeTag
	.long	106
	.long	_bbStringTypeTag
	.long	_95
	.long	_bbIntTypeTag
	.long	107
	.long	_bbStringTypeTag
	.long	_96
	.long	_bbIntTypeTag
	.long	108
	.long	_bbStringTypeTag
	.long	_97
	.long	_bbIntTypeTag
	.long	109
	.long	_bbStringTypeTag
	.long	_98
	.long	_bbIntTypeTag
	.long	110
	.long	_bbStringTypeTag
	.long	_96
	.long	_bbIntTypeTag
	.long	111
	.long	_bbStringTypeTag
	.long	_99
	.long	_bbIntTypeTag
	.long	112
	.long	_bbStringTypeTag
	.long	_100
	.long	_bbIntTypeTag
	.long	113
	.long	_bbStringTypeTag
	.long	_101
	.long	_bbIntTypeTag
	.long	114
	.long	_bbStringTypeTag
	.long	_102
	.long	_bbIntTypeTag
	.long	115
	.long	_bbStringTypeTag
	.long	_103
	.long	_bbIntTypeTag
	.long	116
	.long	_bbStringTypeTag
	.long	_104
	.long	_bbIntTypeTag
	.long	117
	.long	_bbStringTypeTag
	.long	_105
	.long	_bbIntTypeTag
	.long	118
	.long	_bbStringTypeTag
	.long	_106
	.long	_bbIntTypeTag
	.long	119
	.long	_bbStringTypeTag
	.long	_107
	.long	_bbIntTypeTag
	.long	120
	.long	_bbStringTypeTag
	.long	_108
	.long	_bbIntTypeTag
	.long	121
	.long	_bbStringTypeTag
	.long	_109
	.long	_bbIntTypeTag
	.long	122
	.long	_bbStringTypeTag
	.long	_110
	.long	_bbIntTypeTag
	.long	123
	.long	_bbStringTypeTag
	.long	_111
	.long	_bbIntTypeTag
	.long	144
	.long	_bbStringTypeTag
	.long	_112
	.long	_bbIntTypeTag
	.long	145
	.long	_bbStringTypeTag
	.long	_113
	.long	_bbIntTypeTag
	.long	160
	.long	_bbStringTypeTag
	.long	_114
	.long	_bbIntTypeTag
	.long	161
	.long	_bbStringTypeTag
	.long	_115
	.long	_bbIntTypeTag
	.long	162
	.long	_bbStringTypeTag
	.long	_116
	.long	_bbIntTypeTag
	.long	163
	.long	_bbStringTypeTag
	.long	_117
	.long	_bbIntTypeTag
	.long	164
	.long	_bbStringTypeTag
	.long	_118
	.long	_bbIntTypeTag
	.long	165
	.long	_bbStringTypeTag
	.long	_119
	.long	_bbIntTypeTag
	.long	192
	.long	_bbStringTypeTag
	.long	_120
	.long	_bbIntTypeTag
	.long	107
	.long	_bbStringTypeTag
	.long	_121
	.long	_bbIntTypeTag
	.long	109
	.long	_bbStringTypeTag
	.long	_122
	.long	_bbIntTypeTag
	.long	219
	.long	_bbStringTypeTag
	.long	_123
	.long	_bbIntTypeTag
	.long	221
	.long	_bbStringTypeTag
	.long	_124
	.long	_bbIntTypeTag
	.long	226
	.long	_bbStringTypeTag
	.long	_125
	.long	_bbIntTypeTag
	.long	186
	.long	_bbStringTypeTag
	.long	_126
	.long	_bbIntTypeTag
	.long	222
	.long	_bbStringTypeTag
	.long	_127
	.long	_bbIntTypeTag
	.long	188
	.long	_bbStringTypeTag
	.long	_128
	.long	_bbIntTypeTag
	.long	190
	.long	_bbStringTypeTag
	.long	_129
	.long	_bbIntTypeTag
	.long	191
	.long	_bbStringTypeTag
	.long	_130
	.long	_bbIntTypeTag
	.long	299
	.long	0
	.align	4
_223:
	.long	0
_214:
	.asciz	"/Users/michiele/Dropbox (Persoonlijk)/michiele/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/utils.bmx"
	.align	4
_213:
	.long	_214
	.long	8
	.long	1
	.align	4
_215:
	.long	_214
	.long	9
	.long	1
	.align	4
_216:
	.long	_214
	.long	10
	.long	1
	.align	4
_217:
	.long	_214
	.long	13
	.long	1
	.align	4
_220:
	.long	0
_218:
	.asciz	"$"
	.align	4
_222:
	.long	_214
	.long	300
	.long	1
_279:
	.asciz	"CycleColours"
_280:
	.asciz	"slow"
	.align	4
_278:
	.long	1
	.long	_279
	.long	2
	.long	_280
	.long	_230
	.long	-4
	.long	0
	.align	4
_239:
	.long	_214
	.long	17
	.long	2
	.align	4
_621:
	.long	0x41200000
	.align	4
_240:
	.long	_214
	.long	18
	.long	2
	.align	4
_244:
	.long	3
	.long	0
	.long	0
	.align	4
_242:
	.long	_214
	.long	19
	.long	3
	.align	4
_243:
	.long	_214
	.long	20
	.long	3
	.align	4
_251:
	.long	3
	.long	0
	.long	0
	.align	4
_246:
	.long	_214
	.long	21
	.long	2
	.align	4
_250:
	.long	3
	.long	0
	.long	0
	.align	4
_248:
	.long	_214
	.long	22
	.long	3
	.align	4
_249:
	.long	_214
	.long	23
	.long	3
	.align	4
_252:
	.long	_214
	.long	25
	.long	2
	.align	4
_622:
	.long	0x41200000
	.align	4
_253:
	.long	_214
	.long	26
	.long	2
	.align	4
_257:
	.long	3
	.long	0
	.long	0
	.align	4
_255:
	.long	_214
	.long	27
	.long	3
	.align	4
_256:
	.long	_214
	.long	28
	.long	3
	.align	4
_264:
	.long	3
	.long	0
	.long	0
	.align	4
_259:
	.long	_214
	.long	29
	.long	2
	.align	4
_263:
	.long	3
	.long	0
	.long	0
	.align	4
_261:
	.long	_214
	.long	30
	.long	3
	.align	4
_262:
	.long	_214
	.long	31
	.long	3
	.align	4
_265:
	.long	_214
	.long	33
	.long	2
	.align	4
_623:
	.long	0x41200000
	.align	4
_266:
	.long	_214
	.long	34
	.long	2
	.align	4
_270:
	.long	3
	.long	0
	.long	0
	.align	4
_268:
	.long	_214
	.long	35
	.long	3
	.align	4
_269:
	.long	_214
	.long	36
	.long	3
	.align	4
_277:
	.long	3
	.long	0
	.long	0
	.align	4
_272:
	.long	_214
	.long	37
	.long	2
	.align	4
_276:
	.long	3
	.long	0
	.long	0
	.align	4
_274:
	.long	_214
	.long	38
	.long	3
	.align	4
_275:
	.long	_214
	.long	39
	.long	3
_321:
	.asciz	"GetPlayTime"
_322:
	.asciz	"cnt"
_323:
	.asciz	"s"
_324:
	.asciz	"$"
_325:
	.asciz	"secs"
_326:
	.asciz	"minutes"
_327:
	.asciz	"hours"
	.align	4
_320:
	.long	1
	.long	_321
	.long	2
	.long	_322
	.long	_228
	.long	-4
	.long	2
	.long	_323
	.long	_324
	.long	-8
	.long	2
	.long	_325
	.long	_228
	.long	-12
	.long	2
	.long	_326
	.long	_228
	.long	-16
	.long	2
	.long	_327
	.long	_228
	.long	-20
	.long	0
	.align	4
_281:
	.long	_214
	.long	48
	.long	2
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_283:
	.long	_214
	.long	49
	.long	2
	.align	4
_285:
	.long	_214
	.long	50
	.long	2
	.align	4
_287:
	.long	_214
	.long	51
	.long	2
	.align	4
_289:
	.long	_214
	.long	52
	.long	2
	.align	4
_299:
	.long	3
	.long	0
	.long	0
	.align	4
_291:
	.long	_214
	.long	53
	.long	3
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	32,104,114
	.align	4
_292:
	.long	_214
	.long	54
	.long	3
	.align	4
_295:
	.long	3
	.long	0
	.long	0
	.align	4
_294:
	.long	_214
	.long	55
	.long	4
	.align	4
_3:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	115,44,32
	.align	4
_298:
	.long	3
	.long	0
	.long	0
	.align	4
_297:
	.long	_214
	.long	57
	.long	4
	.align	4
_4:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	44,32
	.align	4
_300:
	.long	_214
	.long	60
	.long	2
	.align	4
_310:
	.long	3
	.long	0
	.long	0
	.align	4
_302:
	.long	_214
	.long	61
	.long	3
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	32,109,110
	.align	4
_303:
	.long	_214
	.long	62
	.long	3
	.align	4
_306:
	.long	3
	.long	0
	.long	0
	.align	4
_305:
	.long	_214
	.long	63
	.long	4
	.align	4
_309:
	.long	3
	.long	0
	.long	0
	.align	4
_308:
	.long	_214
	.long	65
	.long	4
	.align	4
_311:
	.long	_214
	.long	68
	.long	2
	.align	4
_318:
	.long	3
	.long	0
	.long	0
	.align	4
_313:
	.long	_214
	.long	69
	.long	3
	.align	4
_6:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	32,115,101,99
	.align	4
_314:
	.long	_214
	.long	70
	.long	3
	.align	4
_317:
	.long	3
	.long	0
	.long	0
	.align	4
_316:
	.long	_214
	.long	70
	.long	20
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	115
	.align	4
_319:
	.long	_214
	.long	72
	.long	2
_336:
	.asciz	"FitValueToRange"
_337:
	.asciz	"InValue"
_338:
	.asciz	"RangeIn_Start"
_339:
	.asciz	"RangeIn_End"
_340:
	.asciz	"RangeOut_Start"
_341:
	.asciz	"RangeOut_End"
_342:
	.asciz	"OldRange"
_343:
	.asciz	"NewRange"
_344:
	.asciz	"OutValue"
	.align	4
_335:
	.long	1
	.long	_336
	.long	2
	.long	_337
	.long	_230
	.long	-4
	.long	2
	.long	_338
	.long	_230
	.long	-8
	.long	2
	.long	_339
	.long	_230
	.long	-12
	.long	2
	.long	_340
	.long	_230
	.long	-16
	.long	2
	.long	_341
	.long	_230
	.long	-20
	.long	2
	.long	_342
	.long	_230
	.long	-24
	.long	2
	.long	_343
	.long	_230
	.long	-28
	.long	2
	.long	_344
	.long	_230
	.long	-32
	.long	0
	.align	4
_328:
	.long	_214
	.long	78
	.long	2
	.align	4
_330:
	.long	_214
	.long	79
	.long	2
	.align	4
_332:
	.long	_214
	.long	81
	.long	2
	.align	4
_334:
	.long	_214
	.long	83
	.long	2
_386:
	.asciz	"DrawCircle"
_387:
	.asciz	"xCenter"
_388:
	.asciz	"yCenter"
_389:
	.asciz	"radius"
_390:
	.asciz	"p"
_391:
	.asciz	"x"
_392:
	.asciz	"y"
	.align	4
_385:
	.long	1
	.long	_386
	.long	2
	.long	_387
	.long	_228
	.long	-4
	.long	2
	.long	_388
	.long	_228
	.long	-8
	.long	2
	.long	_389
	.long	_228
	.long	-12
	.long	2
	.long	_390
	.long	_228
	.long	-16
	.long	2
	.long	_391
	.long	_228
	.long	-20
	.long	2
	.long	_392
	.long	_228
	.long	-24
	.long	0
	.align	4
_345:
	.long	_214
	.long	90
	.long	2
	.align	4
_349:
	.long	_214
	.long	92
	.long	2
	.align	4
_350:
	.long	_214
	.long	93
	.long	2
	.align	4
_351:
	.long	_214
	.long	94
	.long	2
	.align	4
_352:
	.long	_214
	.long	95
	.long	2
	.align	4
_353:
	.long	_214
	.long	96
	.long	2
	.align	4
_354:
	.long	_214
	.long	97
	.long	2
	.align	4
_355:
	.long	_214
	.long	98
	.long	2
	.align	4
_356:
	.long	_214
	.long	99
	.long	2
	.align	4
_357:
	.long	_214
	.long	100
	.long	2
	.align	4
_358:
	.long	_214
	.long	101
	.long	2
	.align	4
_359:
	.long	_214
	.long	102
	.long	2
	.align	4
_360:
	.long	_214
	.long	103
	.long	2
	.align	4
_384:
	.long	3
	.long	0
	.long	0
	.align	4
_361:
	.long	_214
	.long	104
	.long	3
	.align	4
_364:
	.long	3
	.long	0
	.long	0
	.align	4
_363:
	.long	_214
	.long	105
	.long	4
	.align	4
_368:
	.long	3
	.long	0
	.long	0
	.align	4
_366:
	.long	_214
	.long	107
	.long	4
	.align	4
_367:
	.long	_214
	.long	108
	.long	4
	.align	4
_369:
	.long	_214
	.long	110
	.long	3
	.align	4
_372:
	.long	3
	.long	0
	.long	0
	.align	4
_371:
	.long	_214
	.long	111
	.long	4
	.align	4
_375:
	.long	3
	.long	0
	.long	0
	.align	4
_374:
	.long	_214
	.long	113
	.long	4
	.align	4
_376:
	.long	_214
	.long	115
	.long	3
	.align	4
_377:
	.long	_214
	.long	116
	.long	3
	.align	4
_378:
	.long	_214
	.long	117
	.long	3
	.align	4
_379:
	.long	_214
	.long	118
	.long	3
	.align	4
_380:
	.long	_214
	.long	119
	.long	3
	.align	4
_381:
	.long	_214
	.long	120
	.long	3
	.align	4
_382:
	.long	_214
	.long	121
	.long	3
	.align	4
_383:
	.long	_214
	.long	122
	.long	3
_410:
	.asciz	"Rect"
_411:
	.asciz	"w"
_412:
	.asciz	"h"
	.align	4
_409:
	.long	1
	.long	_410
	.long	2
	.long	_391
	.long	_228
	.long	-4
	.long	2
	.long	_392
	.long	_228
	.long	-8
	.long	2
	.long	_411
	.long	_228
	.long	-12
	.long	2
	.long	_412
	.long	_228
	.long	-16
	.long	2
	.long	_230
	.long	_228
	.long	-20
	.long	0
	.align	4
_393:
	.long	_214
	.long	129
	.long	2
	.align	4
_396:
	.long	3
	.long	0
	.long	0
	.align	4
_395:
	.long	_214
	.long	131
	.long	3
_407:
	.asciz	"x1"
_408:
	.asciz	"y1"
	.align	4
_406:
	.long	3
	.long	0
	.long	2
	.long	_407
	.long	_228
	.long	-24
	.long	2
	.long	_408
	.long	_228
	.long	-28
	.long	0
	.align	4
_398:
	.long	_214
	.long	134
	.long	3
	.align	4
_400:
	.long	_214
	.long	135
	.long	3
	.align	4
_402:
	.long	_214
	.long	136
	.long	3
	.align	4
_403:
	.long	_214
	.long	137
	.long	3
	.align	4
_404:
	.long	_214
	.long	138
	.long	3
	.align	4
_405:
	.long	_214
	.long	139
	.long	3
_439:
	.asciz	"RectsOverlap"
_440:
	.asciz	"w1"
_441:
	.asciz	"h1"
_442:
	.asciz	"x2"
_443:
	.asciz	"y2"
_444:
	.asciz	"w2"
_445:
	.asciz	"h2"
	.align	4
_438:
	.long	1
	.long	_439
	.long	2
	.long	_407
	.long	_228
	.long	-4
	.long	2
	.long	_408
	.long	_228
	.long	-8
	.long	2
	.long	_440
	.long	_228
	.long	-12
	.long	2
	.long	_441
	.long	_228
	.long	-16
	.long	2
	.long	_442
	.long	_228
	.long	-20
	.long	2
	.long	_443
	.long	_228
	.long	-24
	.long	2
	.long	_444
	.long	_228
	.long	-28
	.long	2
	.long	_445
	.long	_228
	.long	-32
	.long	0
	.align	4
_413:
	.long	_214
	.long	149
	.long	2
	.align	4
_416:
	.long	3
	.long	0
	.long	0
	.align	4
_415:
	.long	_214
	.long	151
	.long	3
	.align	4
_437:
	.long	3
	.long	0
	.long	0
	.align	4
_418:
	.long	_214
	.long	153
	.long	3
	.align	4
_421:
	.long	3
	.long	0
	.long	0
	.align	4
_420:
	.long	_214
	.long	155
	.long	4
	.align	4
_436:
	.long	3
	.long	0
	.long	0
	.align	4
_423:
	.long	_214
	.long	158
	.long	4
	.align	4
_426:
	.long	3
	.long	0
	.long	0
	.align	4
_425:
	.long	_214
	.long	160
	.long	5
	.align	4
_435:
	.long	3
	.long	0
	.long	0
	.align	4
_428:
	.long	_214
	.long	162
	.long	5
	.align	4
_431:
	.long	3
	.long	0
	.long	0
	.align	4
_430:
	.long	_214
	.long	164
	.long	6
	.align	4
_434:
	.long	3
	.long	0
	.long	0
	.align	4
_433:
	.long	_214
	.long	167
	.long	6
_455:
	.asciz	"TFormR"
_456:
	.asciz	"xc"
_457:
	.asciz	"yc"
_458:
	.asciz	"angle"
_459:
	.asciz	"xr"
_460:
	.asciz	"yr"
	.align	4
_454:
	.long	1
	.long	_455
	.long	2
	.long	_456
	.long	_230
	.long	-4
	.long	2
	.long	_457
	.long	_230
	.long	-8
	.long	2
	.long	_458
	.long	_228
	.long	-12
	.long	5
	.long	_459
	.long	_230
	.long	-16
	.long	5
	.long	_460
	.long	_230
	.long	-20
	.long	2
	.long	_391
	.long	_230
	.long	-24
	.long	2
	.long	_392
	.long	_230
	.long	-28
	.long	0
	.align	4
_446:
	.long	_214
	.long	181
	.long	2
	.align	4
_448:
	.long	_214
	.long	182
	.long	2
	.align	4
_450:
	.long	_214
	.long	183
	.long	2
	.align	4
_451:
	.long	_214
	.long	184
	.long	2
	.align	4
_452:
	.long	_214
	.long	185
	.long	2
	.align	4
_453:
	.long	_214
	.long	186
	.long	2
_497:
	.asciz	"PointInTri"
_498:
	.asciz	"xo"
_499:
	.asciz	"yo"
_500:
	.asciz	"x3"
_501:
	.asciz	"y3"
_502:
	.asciz	"c"
	.align	4
_496:
	.long	1
	.long	_497
	.long	2
	.long	_498
	.long	_230
	.long	-4
	.long	2
	.long	_499
	.long	_230
	.long	-8
	.long	2
	.long	_407
	.long	_230
	.long	-12
	.long	2
	.long	_408
	.long	_230
	.long	-16
	.long	2
	.long	_442
	.long	_230
	.long	-20
	.long	2
	.long	_443
	.long	_230
	.long	-24
	.long	2
	.long	_500
	.long	_230
	.long	-28
	.long	2
	.long	_501
	.long	_230
	.long	-32
	.long	2
	.long	_502
	.long	_228
	.long	-36
	.long	0
	.align	4
_461:
	.long	_214
	.long	194
	.long	2
	.align	4
_463:
	.long	_214
	.long	195
	.long	2
	.align	4
_478:
	.long	3
	.long	0
	.long	0
	.align	4
_471:
	.long	_214
	.long	196
	.long	3
	.align	4
_477:
	.long	3
	.long	0
	.long	0
	.align	4
_473:
	.long	_214
	.long	197
	.long	4
	.align	4
_476:
	.long	3
	.long	0
	.long	0
	.align	4
_475:
	.long	_214
	.long	198
	.long	5
	.align	4
_479:
	.long	_214
	.long	202
	.long	2
	.align	4
_494:
	.long	3
	.long	0
	.long	0
	.align	4
_487:
	.long	_214
	.long	203
	.long	3
	.align	4
_493:
	.long	3
	.long	0
	.long	0
	.align	4
_489:
	.long	_214
	.long	204
	.long	4
	.align	4
_492:
	.long	3
	.long	0
	.long	0
	.align	4
_491:
	.long	_214
	.long	205
	.long	5
	.align	4
_495:
	.long	_214
	.long	209
	.long	2
_509:
	.asciz	"PointToPointDist"
_510:
	.asciz	"dx"
_511:
	.asciz	"dy"
	.align	4
_508:
	.long	1
	.long	_509
	.long	2
	.long	_407
	.long	_230
	.long	-4
	.long	2
	.long	_408
	.long	_230
	.long	-8
	.long	2
	.long	_442
	.long	_230
	.long	-12
	.long	2
	.long	_443
	.long	_230
	.long	-16
	.long	2
	.long	_510
	.long	_230
	.long	-20
	.long	2
	.long	_511
	.long	_230
	.long	-24
	.long	0
	.align	4
_503:
	.long	_214
	.long	232
	.long	2
	.align	4
_505:
	.long	_214
	.long	233
	.long	2
	.align	4
_507:
	.long	_214
	.long	235
	.long	2
_546:
	.asciz	"LineCollide2"
_547:
	.asciz	"px"
_548:
	.asciz	"py"
_549:
	.asciz	"r"
_550:
	.asciz	"sx"
_551:
	.asciz	"sy"
_552:
	.asciz	"q"
	.align	4
_545:
	.long	1
	.long	_546
	.long	2
	.long	_407
	.long	_230
	.long	-4
	.long	2
	.long	_408
	.long	_230
	.long	-8
	.long	2
	.long	_442
	.long	_230
	.long	-12
	.long	2
	.long	_443
	.long	_230
	.long	-16
	.long	2
	.long	_547
	.long	_230
	.long	-20
	.long	2
	.long	_548
	.long	_230
	.long	-24
	.long	2
	.long	_549
	.long	_228
	.long	-28
	.long	2
	.long	_550
	.long	_230
	.long	-32
	.long	2
	.long	_551
	.long	_230
	.long	-36
	.long	2
	.long	_552
	.long	_230
	.long	-40
	.long	0
	.align	4
_512:
	.long	_214
	.long	242
	.long	2
	.align	4
_523:
	.long	3
	.long	0
	.long	0
	.align	4
_516:
	.long	_214
	.long	243
	.long	3
	.align	4
_519:
	.long	3
	.long	0
	.long	0
	.align	4
_518:
	.long	_214
	.long	243
	.long	46
	.align	4
_684:
	.long	0x3f800000
	.align	4
_522:
	.long	3
	.long	0
	.long	0
	.align	4
_521:
	.long	_214
	.long	243
	.long	63
	.align	4
_685:
	.long	0x0
	.align	4
_524:
	.long	_214
	.long	246
	.long	2
	.align	4
_526:
	.long	_214
	.long	247
	.long	2
	.align	4
_528:
	.long	_214
	.long	249
	.long	2
	.align	4
_530:
	.long	_214
	.long	251
	.long	2
	.align	4
_533:
	.long	3
	.long	0
	.long	0
	.align	4
_532:
	.long	_214
	.long	251
	.long	18
	.align	4
_534:
	.long	_214
	.long	252
	.long	2
	.align	4
_537:
	.long	3
	.long	0
	.long	0
	.align	4
_536:
	.long	_214
	.long	252
	.long	18
	.align	4
_538:
	.long	_214
	.long	254
	.long	2
	.align	4
_686:
	.long	0x3f800000
	.align	4
_687:
	.long	0x3f800000
	.align	4
_541:
	.long	3
	.long	0
	.long	0
	.align	4
_540:
	.long	_214
	.long	254
	.long	69
	.align	4
_688:
	.long	0x3f800000
	.align	4
_544:
	.long	3
	.long	0
	.long	0
	.align	4
_543:
	.long	_214
	.long	254
	.long	86
	.align	4
_689:
	.long	0x0
_576:
	.asciz	"TurnToFace"
_577:
	.asciz	"plx"
_578:
	.asciz	"ply"
_579:
	.asciz	"angle1"
_580:
	.asciz	"angle2"
_581:
	.asciz	"ret"
	.align	4
_575:
	.long	1
	.long	_576
	.long	2
	.long	_391
	.long	_230
	.long	-4
	.long	2
	.long	_392
	.long	_230
	.long	-8
	.long	2
	.long	_510
	.long	_230
	.long	-12
	.long	2
	.long	_511
	.long	_230
	.long	-16
	.long	2
	.long	_577
	.long	_230
	.long	-20
	.long	2
	.long	_578
	.long	_230
	.long	-24
	.long	2
	.long	_579
	.long	_230
	.long	-28
	.long	2
	.long	_580
	.long	_230
	.long	-32
	.long	2
	.long	_581
	.long	_228
	.long	-36
	.long	0
	.align	4
_553:
	.long	_214
	.long	261
	.long	2
	.align	4
_557:
	.long	_214
	.long	263
	.long	2
	.align	4
_558:
	.long	_214
	.long	264
	.long	2
	.align	4
_559:
	.long	_214
	.long	266
	.long	2
	.align	4
_560:
	.long	_214
	.long	267
	.long	2
	.align	4
_563:
	.long	3
	.long	0
	.long	0
	.align	4
_562:
	.long	_214
	.long	268
	.long	3
	.align	4
_569:
	.long	3
	.long	0
	.long	0
	.align	4
_565:
	.long	_214
	.long	270
	.long	3
	.align	4
_568:
	.long	3
	.long	0
	.long	0
	.align	4
_567:
	.long	_214
	.long	271
	.long	4
	.align	4
_570:
	.long	_214
	.long	275
	.long	2
	.align	4
_573:
	.long	3
	.long	0
	.long	0
	.align	4
_572:
	.long	_214
	.long	275
	.long	23
	.align	4
_574:
	.long	_214
	.long	277
	.long	5
_586:
	.asciz	"SaveScreenshot"
_587:
	.asciz	"img"
_588:
	.asciz	":TPixmap"
	.align	4
_585:
	.long	1
	.long	_586
	.long	2
	.long	_230
	.long	_324
	.long	-4
	.long	2
	.long	_587
	.long	_588
	.long	-8
	.long	0
	.align	4
_582:
	.long	_214
	.long	284
	.long	2
	.align	4
_584:
	.long	_214
	.long	285
	.long	2
_614:
	.asciz	"SetupKeyTable"
_615:
	.asciz	"tempkey"
_616:
	.asciz	"put_index"
	.align	4
_613:
	.long	1
	.long	_614
	.long	2
	.long	_615
	.long	_324
	.long	-4
	.long	2
	.long	_616
	.long	_228
	.long	-8
	.long	0
	.align	4
_589:
	.long	_214
	.long	291
	.long	2
	.align	4
_592:
	.long	_214
	.long	292
	.long	2
	.align	4
_593:
	.long	_214
	.long	297
	.long	2
	.align	4
_612:
	.long	3
	.long	0
	.long	0
	.align	4
_594:
	.long	_214
	.long	294
	.long	3
	.align	4
_599:
	.long	_214
	.long	295
	.long	3
	.align	4
_604:
	.long	_214
	.long	296
	.long	3
