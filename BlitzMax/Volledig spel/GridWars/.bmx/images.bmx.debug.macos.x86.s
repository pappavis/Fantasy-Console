	.reference	___bb_blitz_blitz
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_pngloader_pngloader
	.reference	_bbEmptyString
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_brl_max2d_AutoImageFlags
	.reference	_brl_max2d_AutoMidHandle
	.reference	_brl_max2d_LoadAnimImage
	.reference	_brl_max2d_LoadImage
	.globl	___bb_blitzmax_code_archief__spel__gridwars_images
	.globl	_bb_LoadImages
	.globl	_bb_bluecircle
	.globl	_bb_bluediamond
	.globl	_bb_capturedimg
	.globl	_bb_colourpick
	.globl	_bb_gfxset
	.globl	_bb_greensquare
	.globl	_bb_iconimage
	.globl	_bb_indigotriangle
	.globl	_bb_orangetriangle
	.globl	_bb_particleimg
	.globl	_bb_pinkpinwheel
	.globl	_bb_powerimage
	.globl	_bb_purplesquare1
	.globl	_bb_purplesquare2
	.globl	_bb_redcircle
	.globl	_bb_redclone
	.globl	_bb_snakehead
	.globl	_bb_snaketail
	.globl	_bb_whiteplayer
	.globl	_bb_whitestar
	.globl	_bb_yellowshot
	.text	
___bb_blitzmax_code_archief__spel__gridwars_images:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_78
	je	_79
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_79:
	movl	$1,_78
	movl	%ebp,4(%esp)
	movl	$_52,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_pngloader_pngloader
	call	___bb_glmax2d_glmax2d
	movl	$_30,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_32,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_33,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_34,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_35,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_36,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_37,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_38,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_39,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_40,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_41,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_42,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_43,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_44,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_45,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_46,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_47,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_48,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_49,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_50,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_51,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	jmp	_26
_26:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LoadImages:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$32,%esp
	movl	$_bbEmptyString,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_352,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_80,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,-4(%ebp)
	movl	$_82,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$6,(%esp)
	call	_brl_max2d_AutoImageFlags
	movl	$_83,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,(%esp)
	call	_brl_max2d_AutoMidHandle
	movl	$_84,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_88
	movl	%eax,(%esp)
	call	_bbGCFree
_88:
	movl	%ebx,_bb_iconimage
	movl	$_89,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_greensquare,%eax
	decl	4(%eax)
	jnz	_93
	movl	%eax,(%esp)
	call	_bbGCFree
_93:
	movl	%ebx,_bb_greensquare
	movl	$_94,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_purplesquare1,%eax
	decl	4(%eax)
	jnz	_98
	movl	%eax,(%esp)
	call	_bbGCFree
_98:
	movl	%ebx,_bb_purplesquare1
	movl	$_99,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_purplesquare2,%eax
	decl	4(%eax)
	jnz	_103
	movl	%eax,(%esp)
	call	_bbGCFree
_103:
	movl	%ebx,_bb_purplesquare2
	movl	$_104,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_bluediamond,%eax
	decl	4(%eax)
	jnz	_108
	movl	%eax,(%esp)
	call	_bbGCFree
_108:
	movl	%ebx,_bb_bluediamond
	movl	$_109,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_pinkpinwheel,%eax
	decl	4(%eax)
	jnz	_113
	movl	%eax,(%esp)
	call	_bbGCFree
_113:
	movl	%ebx,_bb_pinkpinwheel
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_indigotriangle,%eax
	decl	4(%eax)
	jnz	_118
	movl	%eax,(%esp)
	call	_bbGCFree
_118:
	movl	%ebx,_bb_indigotriangle
	movl	$_119,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_bluecircle,%eax
	decl	4(%eax)
	jnz	_123
	movl	%eax,(%esp)
	call	_bbGCFree
_123:
	movl	%ebx,_bb_bluecircle
	movl	$_124,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_redclone,%eax
	decl	4(%eax)
	jnz	_128
	movl	%eax,(%esp)
	call	_bbGCFree
_128:
	movl	%ebx,_bb_redclone
	movl	$_129,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_orangetriangle,%eax
	decl	4(%eax)
	jnz	_133
	movl	%eax,(%esp)
	call	_bbGCFree
_133:
	movl	%ebx,_bb_orangetriangle
	movl	$_134,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_redcircle,%eax
	decl	4(%eax)
	jnz	_138
	movl	%eax,(%esp)
	call	_bbGCFree
_138:
	movl	%ebx,_bb_redcircle
	movl	$_139,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_whiteplayer,%eax
	decl	4(%eax)
	jnz	_143
	movl	%eax,(%esp)
	call	_bbGCFree
_143:
	movl	%ebx,_bb_whiteplayer
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_yellowshot,%eax
	decl	4(%eax)
	jnz	_148
	movl	%eax,(%esp)
	call	_bbGCFree
_148:
	movl	%ebx,_bb_yellowshot
	movl	$_149,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_whitestar,%eax
	decl	4(%eax)
	jnz	_153
	movl	%eax,(%esp)
	call	_bbGCFree
_153:
	movl	%ebx,_bb_whitestar
	movl	$_154,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_158
	movl	%eax,(%esp)
	call	_bbGCFree
_158:
	movl	%ebx,_bb_snaketail
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_snakehead,%eax
	decl	4(%eax)
	jnz	_163
	movl	%eax,(%esp)
	call	_bbGCFree
_163:
	movl	%ebx,_bb_snakehead
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_168
	movl	%eax,(%esp)
	call	_bbGCFree
_168:
	movl	%ebx,_bb_powerimage
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_particleimg,%eax
	decl	4(%eax)
	jnz	_173
	movl	%eax,(%esp)
	call	_bbGCFree
_173:
	movl	%ebx,_bb_particleimg
	movl	$_174,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_colourpick,%eax
	decl	4(%eax)
	jnz	_178
	movl	%eax,(%esp)
	call	_bbGCFree
_178:
	movl	%ebx,_bb_colourpick
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_gfxset,%eax
	cmp	$0,%eax
	je	_182
	cmp	$1,%eax
	je	_183
	cmp	$2,%eax
	je	_184
	cmp	$3,%eax
	je	_185
	cmp	$4,%eax
	je	_186
	jmp	_181
_182:
	movl	%ebp,4(%esp)
	movl	$_203,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_187,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_2,-4(%ebp)
	movl	$_188,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_3,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_192
	movl	%eax,(%esp)
	call	_bbGCFree
_192:
	movl	%ebx,_bb_iconimage
	movl	$_193,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$24,16(%esp)
	movl	$0,12(%esp)
	movl	$56,8(%esp)
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$56,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_197
	movl	%eax,(%esp)
	call	_bbGCFree
_197:
	movl	%ebx,_bb_snaketail
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$11,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_202
	movl	%eax,(%esp)
	call	_bbGCFree
_202:
	movl	%ebx,_bb_powerimage
	calll	*_bbOnDebugLeaveScope
	jmp	_181
_183:
	movl	%ebp,4(%esp)
	movl	$_220,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_204,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_6,-4(%ebp)
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$0,12(%esp)
	movl	$24,8(%esp)
	movl	$_3,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$24,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_209
	movl	%eax,(%esp)
	call	_bbGCFree
_209:
	movl	%ebx,_bb_iconimage
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$24,16(%esp)
	movl	$0,12(%esp)
	movl	$32,8(%esp)
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$32,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_214
	movl	%eax,(%esp)
	call	_bbGCFree
_214:
	movl	%ebx,_bb_snaketail
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$11,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_219
	movl	%eax,(%esp)
	call	_bbGCFree
_219:
	movl	%ebx,_bb_powerimage
	calll	*_bbOnDebugLeaveScope
	jmp	_181
_184:
	movl	%ebp,4(%esp)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_221,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,-4(%ebp)
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$0,12(%esp)
	movl	$32,8(%esp)
	movl	$_3,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$32,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_226
	movl	%eax,(%esp)
	call	_bbGCFree
_226:
	movl	%ebx,_bb_iconimage
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$24,16(%esp)
	movl	$0,12(%esp)
	movl	$32,8(%esp)
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$32,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_231
	movl	%eax,(%esp)
	call	_bbGCFree
_231:
	movl	%ebx,_bb_snaketail
	movl	$_232,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$11,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_236
	movl	%eax,(%esp)
	call	_bbGCFree
_236:
	movl	%ebx,_bb_powerimage
	calll	*_bbOnDebugLeaveScope
	jmp	_181
_185:
	movl	%ebp,4(%esp)
	movl	$_254,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_8,-4(%ebp)
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_3,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_243
	movl	%eax,(%esp)
	call	_bbGCFree
_243:
	movl	%ebx,_bb_iconimage
	movl	$_244,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$24,16(%esp)
	movl	$0,12(%esp)
	movl	$56,8(%esp)
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$56,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_248
	movl	%eax,(%esp)
	call	_bbGCFree
_248:
	movl	%ebx,_bb_snaketail
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$11,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_253
	movl	%eax,(%esp)
	call	_bbGCFree
_253:
	movl	%ebx,_bb_powerimage
	calll	*_bbOnDebugLeaveScope
	jmp	_181
_186:
	movl	%ebp,4(%esp)
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_255,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_9,-4(%ebp)
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_3,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_iconimage,%eax
	decl	4(%eax)
	jnz	_260
	movl	%eax,(%esp)
	call	_bbGCFree
_260:
	movl	%ebx,_bb_iconimage
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$24,16(%esp)
	movl	$0,12(%esp)
	movl	$56,8(%esp)
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$56,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snaketail,%eax
	decl	4(%eax)
	jnz	_265
	movl	%eax,(%esp)
	call	_bbGCFree
_265:
	movl	%ebx,_bb_snaketail
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$11,16(%esp)
	movl	$0,12(%esp)
	movl	$64,8(%esp)
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$64,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_powerimage,%eax
	decl	4(%eax)
	jnz	_270
	movl	%eax,(%esp)
	call	_bbGCFree
_270:
	movl	%ebx,_bb_powerimage
	calll	*_bbOnDebugLeaveScope
	jmp	_181
_181:
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_10,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_greensquare,%eax
	decl	4(%eax)
	jnz	_276
	movl	%eax,(%esp)
	call	_bbGCFree
_276:
	movl	%ebx,_bb_greensquare
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_purplesquare1,%eax
	decl	4(%eax)
	jnz	_281
	movl	%eax,(%esp)
	call	_bbGCFree
_281:
	movl	%ebx,_bb_purplesquare1
	movl	$_282,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_12,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_purplesquare2,%eax
	decl	4(%eax)
	jnz	_286
	movl	%eax,(%esp)
	call	_bbGCFree
_286:
	movl	%ebx,_bb_purplesquare2
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_13,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_bluediamond,%eax
	decl	4(%eax)
	jnz	_291
	movl	%eax,(%esp)
	call	_bbGCFree
_291:
	movl	%ebx,_bb_bluediamond
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_14,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_pinkpinwheel,%eax
	decl	4(%eax)
	jnz	_296
	movl	%eax,(%esp)
	call	_bbGCFree
_296:
	movl	%ebx,_bb_pinkpinwheel
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_15,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_indigotriangle,%eax
	decl	4(%eax)
	jnz	_301
	movl	%eax,(%esp)
	call	_bbGCFree
_301:
	movl	%ebx,_bb_indigotriangle
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_16,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_bluecircle,%eax
	decl	4(%eax)
	jnz	_306
	movl	%eax,(%esp)
	call	_bbGCFree
_306:
	movl	%ebx,_bb_bluecircle
	movl	$_307,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_17,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_redclone,%eax
	decl	4(%eax)
	jnz	_311
	movl	%eax,(%esp)
	call	_bbGCFree
_311:
	movl	%ebx,_bb_redclone
	movl	$_312,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_18,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_orangetriangle,%eax
	decl	4(%eax)
	jnz	_316
	movl	%eax,(%esp)
	call	_bbGCFree
_316:
	movl	%ebx,_bb_orangetriangle
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_19,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_redcircle,%eax
	decl	4(%eax)
	jnz	_321
	movl	%eax,(%esp)
	call	_bbGCFree
_321:
	movl	%ebx,_bb_redcircle
	movl	$_322,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_20,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_whiteplayer,%eax
	decl	4(%eax)
	jnz	_326
	movl	%eax,(%esp)
	call	_bbGCFree
_326:
	movl	%ebx,_bb_whiteplayer
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_21,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_yellowshot,%eax
	decl	4(%eax)
	jnz	_331
	movl	%eax,(%esp)
	call	_bbGCFree
_331:
	movl	%ebx,_bb_yellowshot
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_22,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_whitestar,%eax
	decl	4(%eax)
	jnz	_336
	movl	%eax,(%esp)
	call	_bbGCFree
_336:
	movl	%ebx,_bb_whitestar
	movl	$_337,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_23,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_snakehead,%eax
	decl	4(%eax)
	jnz	_341
	movl	%eax,(%esp)
	call	_bbGCFree
_341:
	movl	%ebx,_bb_snakehead
	movl	$_342,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_24,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$-1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_particleimg,%eax
	decl	4(%eax)
	jnz	_346
	movl	%eax,(%esp)
	call	_bbGCFree
_346:
	movl	%ebx,_bb_particleimg
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,20(%esp)
	movl	$3,16(%esp)
	movl	$0,12(%esp)
	movl	$9,8(%esp)
	movl	$122,4(%esp)
	movl	$_25,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_colourpick,%eax
	decl	4(%eax)
	jnz	_351
	movl	%eax,(%esp)
	call	_bbGCFree
_351:
	movl	%ebx,_bb_colourpick
	mov	$0,%ebx
	jmp	_28
_28:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_78:
	.long	0
_53:
	.asciz	"images"
_54:
	.asciz	"gfxset"
_55:
	.asciz	"i"
	.align	4
_bb_gfxset:
	.long	0
_56:
	.asciz	"iconimage"
_57:
	.asciz	":TImage"
	.align	4
_bb_iconimage:
	.long	_bbNullObject
_58:
	.asciz	"greensquare"
_59:
	.asciz	":Timage"
	.align	4
_bb_greensquare:
	.long	_bbNullObject
_60:
	.asciz	"purplesquare1"
	.align	4
_bb_purplesquare1:
	.long	_bbNullObject
_61:
	.asciz	"purplesquare2"
	.align	4
_bb_purplesquare2:
	.long	_bbNullObject
_62:
	.asciz	"bluediamond"
	.align	4
_bb_bluediamond:
	.long	_bbNullObject
_63:
	.asciz	"pinkpinwheel"
	.align	4
_bb_pinkpinwheel:
	.long	_bbNullObject
_64:
	.asciz	"indigotriangle"
	.align	4
_bb_indigotriangle:
	.long	_bbNullObject
_65:
	.asciz	"bluecircle"
	.align	4
_bb_bluecircle:
	.long	_bbNullObject
_66:
	.asciz	"redclone"
	.align	4
_bb_redclone:
	.long	_bbNullObject
_67:
	.asciz	"orangetriangle"
	.align	4
_bb_orangetriangle:
	.long	_bbNullObject
_68:
	.asciz	"redcircle"
	.align	4
_bb_redcircle:
	.long	_bbNullObject
_69:
	.asciz	"whiteplayer"
	.align	4
_bb_whiteplayer:
	.long	_bbNullObject
_70:
	.asciz	"yellowshot"
	.align	4
_bb_yellowshot:
	.long	_bbNullObject
_71:
	.asciz	"whitestar"
	.align	4
_bb_whitestar:
	.long	_bbNullObject
_72:
	.asciz	"snaketail"
	.align	4
_bb_snaketail:
	.long	_bbNullObject
_73:
	.asciz	"snakehead"
	.align	4
_bb_snakehead:
	.long	_bbNullObject
_74:
	.asciz	"powerimage"
	.align	4
_bb_powerimage:
	.long	_bbNullObject
_75:
	.asciz	"capturedimg"
	.align	4
_bb_capturedimg:
	.long	_bbNullObject
_76:
	.asciz	"particleimg"
	.align	4
_bb_particleimg:
	.long	_bbNullObject
_77:
	.asciz	"colourpick"
	.align	4
_bb_colourpick:
	.long	_bbNullObject
	.align	4
_52:
	.long	1
	.long	_53
	.long	4
	.long	_54
	.long	_55
	.long	_bb_gfxset
	.long	4
	.long	_56
	.long	_57
	.long	_bb_iconimage
	.long	4
	.long	_58
	.long	_59
	.long	_bb_greensquare
	.long	4
	.long	_60
	.long	_59
	.long	_bb_purplesquare1
	.long	4
	.long	_61
	.long	_59
	.long	_bb_purplesquare2
	.long	4
	.long	_62
	.long	_59
	.long	_bb_bluediamond
	.long	4
	.long	_63
	.long	_59
	.long	_bb_pinkpinwheel
	.long	4
	.long	_64
	.long	_59
	.long	_bb_indigotriangle
	.long	4
	.long	_65
	.long	_59
	.long	_bb_bluecircle
	.long	4
	.long	_66
	.long	_59
	.long	_bb_redclone
	.long	4
	.long	_67
	.long	_59
	.long	_bb_orangetriangle
	.long	4
	.long	_68
	.long	_59
	.long	_bb_redcircle
	.long	4
	.long	_69
	.long	_59
	.long	_bb_whiteplayer
	.long	4
	.long	_70
	.long	_59
	.long	_bb_yellowshot
	.long	4
	.long	_71
	.long	_59
	.long	_bb_whitestar
	.long	4
	.long	_72
	.long	_57
	.long	_bb_snaketail
	.long	4
	.long	_73
	.long	_57
	.long	_bb_snakehead
	.long	4
	.long	_74
	.long	_57
	.long	_bb_powerimage
	.long	4
	.long	_75
	.long	_57
	.long	_bb_capturedimg
	.long	4
	.long	_76
	.long	_59
	.long	_bb_particleimg
	.long	4
	.long	_77
	.long	_59
	.long	_bb_colourpick
	.long	0
_31:
	.asciz	"/Users/michiele/Dropbox (Persoonlijk)/michiele/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/images.bmx"
	.align	4
_30:
	.long	_31
	.long	5
	.long	1
	.align	4
_32:
	.long	_31
	.long	8
	.long	1
	.align	4
_33:
	.long	_31
	.long	9
	.long	1
	.align	4
_34:
	.long	_31
	.long	10
	.long	1
	.align	4
_35:
	.long	_31
	.long	11
	.long	1
	.align	4
_36:
	.long	_31
	.long	12
	.long	1
	.align	4
_37:
	.long	_31
	.long	13
	.long	1
	.align	4
_38:
	.long	_31
	.long	14
	.long	1
	.align	4
_39:
	.long	_31
	.long	15
	.long	1
	.align	4
_40:
	.long	_31
	.long	16
	.long	1
	.align	4
_41:
	.long	_31
	.long	17
	.long	1
	.align	4
_42:
	.long	_31
	.long	18
	.long	1
	.align	4
_43:
	.long	_31
	.long	19
	.long	1
	.align	4
_44:
	.long	_31
	.long	20
	.long	1
	.align	4
_45:
	.long	_31
	.long	21
	.long	1
	.align	4
_46:
	.long	_31
	.long	22
	.long	1
	.align	4
_47:
	.long	_31
	.long	23
	.long	1
	.align	4
_48:
	.long	_31
	.long	24
	.long	1
	.align	4
_49:
	.long	_31
	.long	25
	.long	1
	.align	4
_50:
	.long	_31
	.long	26
	.long	1
	.align	4
_51:
	.long	_31
	.long	27
	.long	1
_353:
	.asciz	"LoadImages"
_354:
	.asciz	"path"
_355:
	.asciz	"$"
	.align	4
_352:
	.long	1
	.long	_353
	.long	2
	.long	_354
	.long	_355
	.long	-4
	.long	0
	.align	4
_80:
	.long	_31
	.long	31
	.long	2
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_82:
	.long	_31
	.long	33
	.long	2
	.align	4
_83:
	.long	_31
	.long	34
	.long	2
	.align	4
_84:
	.long	_31
	.long	35
	.long	2
	.align	4
_89:
	.long	_31
	.long	36
	.long	2
	.align	4
_94:
	.long	_31
	.long	37
	.long	2
	.align	4
_99:
	.long	_31
	.long	38
	.long	2
	.align	4
_104:
	.long	_31
	.long	39
	.long	2
	.align	4
_109:
	.long	_31
	.long	40
	.long	2
	.align	4
_114:
	.long	_31
	.long	41
	.long	2
	.align	4
_119:
	.long	_31
	.long	42
	.long	2
	.align	4
_124:
	.long	_31
	.long	43
	.long	2
	.align	4
_129:
	.long	_31
	.long	44
	.long	2
	.align	4
_134:
	.long	_31
	.long	45
	.long	2
	.align	4
_139:
	.long	_31
	.long	46
	.long	2
	.align	4
_144:
	.long	_31
	.long	47
	.long	2
	.align	4
_149:
	.long	_31
	.long	48
	.long	2
	.align	4
_154:
	.long	_31
	.long	49
	.long	2
	.align	4
_159:
	.long	_31
	.long	50
	.long	2
	.align	4
_164:
	.long	_31
	.long	51
	.long	2
	.align	4
_169:
	.long	_31
	.long	52
	.long	2
	.align	4
_174:
	.long	_31
	.long	53
	.long	2
	.align	4
_179:
	.long	_31
	.long	55
	.long	2
	.align	4
_203:
	.long	3
	.long	0
	.long	0
	.align	4
_187:
	.long	_31
	.long	57
	.long	4
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	103,102,120,47,115,111,108,105,100,47
	.align	4
_188:
	.long	_31
	.long	58
	.long	4
	.align	4
_3:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	105,99,111,110,115,46,112,110,103
	.align	4
_193:
	.long	_31
	.long	59
	.long	4
	.align	4
_4:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	115,110,97,107,101,116,97,105,108,46,112,110,103
	.align	4
_198:
	.long	_31
	.long	60
	.long	4
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	112,111,119,101,114,117,112,115,46,112,110,103
	.align	4
_220:
	.long	3
	.long	0
	.long	0
	.align	4
_204:
	.long	_31
	.long	62
	.long	4
	.align	4
_6:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	103,102,120,47,108,111,119,47
	.align	4
_205:
	.long	_31
	.long	63
	.long	4
	.align	4
_210:
	.long	_31
	.long	64
	.long	4
	.align	4
_215:
	.long	_31
	.long	65
	.long	4
	.align	4
_237:
	.long	3
	.long	0
	.long	0
	.align	4
_221:
	.long	_31
	.long	67
	.long	4
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	103,102,120,47,109,101,100,47
	.align	4
_222:
	.long	_31
	.long	68
	.long	4
	.align	4
_227:
	.long	_31
	.long	69
	.long	4
	.align	4
_232:
	.long	_31
	.long	70
	.long	4
	.align	4
_254:
	.long	3
	.long	0
	.long	0
	.align	4
_238:
	.long	_31
	.long	72
	.long	4
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	103,102,120,47,104,105,103,104,47
	.align	4
_239:
	.long	_31
	.long	73
	.long	4
	.align	4
_244:
	.long	_31
	.long	74
	.long	4
	.align	4
_249:
	.long	_31
	.long	75
	.long	4
	.align	4
_271:
	.long	3
	.long	0
	.long	0
	.align	4
_255:
	.long	_31
	.long	77
	.long	4
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	103,102,120,47,117,115,101,114,47
	.align	4
_256:
	.long	_31
	.long	78
	.long	4
	.align	4
_261:
	.long	_31
	.long	79
	.long	4
	.align	4
_266:
	.long	_31
	.long	80
	.long	4
	.align	4
_272:
	.long	_31
	.long	83
	.long	2
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	103,114,101,101,110,115,113,117,97,114,101,46,112,110,103
	.align	4
_277:
	.long	_31
	.long	84
	.long	2
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	112,117,114,112,108,101,115,113,117,97,114,101,49,46,112,110
	.short	103
	.align	4
_282:
	.long	_31
	.long	85
	.long	2
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	112,117,114,112,108,101,115,113,117,97,114,101,50,46,112,110
	.short	103
	.align	4
_287:
	.long	_31
	.long	86
	.long	2
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	98,108,117,101,100,105,97,109,111,110,100,46,112,110,103
	.align	4
_292:
	.long	_31
	.long	87
	.long	2
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	112,105,110,107,112,105,110,119,104,101,101,108,46,112,110,103
	.align	4
_297:
	.long	_31
	.long	88
	.long	2
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	105,110,100,105,103,111,116,114,105,97,110,103,108,101,46,112
	.short	110,103
	.align	4
_302:
	.long	_31
	.long	89
	.long	2
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	98,108,117,101,99,105,114,99,108,101,46,112,110,103
	.align	4
_307:
	.long	_31
	.long	90
	.long	2
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	114,101,100,99,108,111,110,101,46,112,110,103
	.align	4
_312:
	.long	_31
	.long	91
	.long	2
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	111,114,97,110,103,101,116,114,105,97,110,103,108,101,46,112
	.short	110,103
	.align	4
_317:
	.long	_31
	.long	92
	.long	2
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	114,101,100,99,105,114,99,108,101,46,112,110,103
	.align	4
_322:
	.long	_31
	.long	93
	.long	2
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	119,104,105,116,101,112,108,97,121,101,114,46,112,110,103
	.align	4
_327:
	.long	_31
	.long	94
	.long	2
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	121,101,108,108,111,119,115,104,111,116,46,112,110,103
	.align	4
_332:
	.long	_31
	.long	95
	.long	2
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	119,104,105,116,101,115,116,97,114,46,112,110,103
	.align	4
_337:
	.long	_31
	.long	96
	.long	2
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	115,110,97,107,101,104,101,97,100,46,112,110,103
	.align	4
_342:
	.long	_31
	.long	97
	.long	2
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	112,97,114,116,105,99,108,101,46,112,110,103
	.align	4
_347:
	.long	_31
	.long	99
	.long	2
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	103,102,120,47,99,111,108,111,117,114,112,105,99,107,46,112
	.short	110,103
