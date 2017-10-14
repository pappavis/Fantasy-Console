	.reference	___bb_blitz_blitz
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_wavloader_wavloader
	.reference	_bbArrayNew1D
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_brl_audio_CueSound
	.reference	_brl_audio_LoadSound
	.reference	_brl_audio_ResumeChannel
	.reference	_brl_audio_SetChannelPan
	.reference	_brl_audio_SetChannelRate
	.reference	_brl_audio_SetChannelVolume
	.reference	_brl_audio_StopChannel
	.reference	_brl_blitz_ArrayBoundsError
	.globl	___bb_blitzmax_code_archief__spel__gridwars_sound
	.globl	_bb_AdjustVolume
	.globl	_bb_LoadSounds
	.globl	_bb_PlaySound2
	.globl	_bb_SetMusicVolume
	.globl	_bb_SetPanAndVolume
	.globl	_bb_StartMusic
	.globl	_bb_StopLoopingSounds
	.globl	_bb_StopMusic
	.globl	_bb_bonus_born_snd
	.globl	_bb_extra_bomb_snd
	.globl	_bb_extra_life_snd
	.globl	_bb_game_over_snd
	.globl	_bb_ge_born_snd
	.globl	_bb_ge_hit_snd
	.globl	_bb_ge_killed_snd
	.globl	_bb_get_ready_snd
	.globl	_bb_high_score_snd
	.globl	_bb_le_born_snd
	.globl	_bb_le_hit_snd
	.globl	_bb_le_killed_snd
	.globl	_bb_multiplier_increase_snd
	.globl	_bb_musicvol
	.globl	_bb_nme1_born_snd
	.globl	_bb_nme2_born_snd
	.globl	_bb_nme3_born_snd
	.globl	_bb_nme4_born_snd
	.globl	_bb_nme5_born_snd
	.globl	_bb_nme5_explode_snd
	.globl	_bb_nme5_grow_snd
	.globl	_bb_nme5_killed_snd
	.globl	_bb_nme5_loop_snd
	.globl	_bb_nme5_shrink_snd
	.globl	_bb_nme6_born_snd
	.globl	_bb_nme6_tailexplode_snd
	.globl	_bb_nme6_tailhit_snd
	.globl	_bb_nme7_born_snd
	.globl	_bb_nme7_shield_snd
	.globl	_bb_nme8_born_snd
	.globl	_bb_nme_born_snd
	.globl	_bb_player_hit_snd
	.globl	_bb_pu_collect_snd
	.globl	_bb_quarkhit2sound
	.globl	_bb_quarkhitsound
	.globl	_bb_sfxvol
	.globl	_bb_shieldwarningsnd
	.globl	_bb_shot_born_snd
	.globl	_bb_shot_hit_wall_snd
	.globl	_bb_soundset
	.globl	_bb_sunloopchan
	.globl	_bb_super_bomb_snd
	.text	
___bb_blitzmax_code_archief__spel__gridwars_sound:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_170
	je	_171
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_171:
	movl	$1,_170
	movl	%ebp,4(%esp)
	movl	$_122,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_wavloader_wavloader
	call	___bb_glmax2d_glmax2d
	movl	$_73,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_75,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_76,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_77,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$8,4(%esp)
	movl	$_78,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_sunloopchan,%eax
	decl	4(%eax)
	jnz	_82
	movl	%eax,(%esp)
	call	_bbGCFree
_82:
	movl	%ebx,_bb_sunloopchan
	movl	$_83,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_84,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_85,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_86,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_87,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_88,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_89,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_90,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_91,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_92,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_93,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_94,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_95,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_96,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_97,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_98,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_99,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_100,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_101,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_103,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_104,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_105,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_106,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_107,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_108,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_109,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_110,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_111,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_112,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_113,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_115,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_116,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_117,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_118,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_119,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_120,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_121,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	jmp	_47
_47:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LoadSounds:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	$_bbEmptyString,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_562,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_172,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-4(%ebp)
	movl	$_174,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_soundset,%eax
	cmp	$1,%eax
	je	_177
	movl	%ebp,4(%esp)
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_178,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_3,-4(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_176
_177:
	movl	%ebp,4(%esp)
	movl	$_181,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_2,-4(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_176
_176:
	movl	$_182,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme_born_snd,%eax
	decl	4(%eax)
	jnz	_186
	movl	%eax,(%esp)
	call	_bbGCFree
_186:
	movl	%ebx,_bb_nme_born_snd
	movl	$_187,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme1_born_snd,%eax
	decl	4(%eax)
	jnz	_191
	movl	%eax,(%esp)
	call	_bbGCFree
_191:
	movl	%ebx,_bb_nme1_born_snd
	movl	$_192,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme2_born_snd,%eax
	decl	4(%eax)
	jnz	_196
	movl	%eax,(%esp)
	call	_bbGCFree
_196:
	movl	%ebx,_bb_nme2_born_snd
	movl	$_197,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme3_born_snd,%eax
	decl	4(%eax)
	jnz	_201
	movl	%eax,(%esp)
	call	_bbGCFree
_201:
	movl	%ebx,_bb_nme3_born_snd
	movl	$_202,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme4_born_snd,%eax
	decl	4(%eax)
	jnz	_206
	movl	%eax,(%esp)
	call	_bbGCFree
_206:
	movl	%ebx,_bb_nme4_born_snd
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_born_snd,%eax
	decl	4(%eax)
	jnz	_211
	movl	%eax,(%esp)
	call	_bbGCFree
_211:
	movl	%ebx,_bb_nme5_born_snd
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_loop_snd,%eax
	decl	4(%eax)
	jnz	_216
	movl	%eax,(%esp)
	call	_bbGCFree
_216:
	movl	%ebx,_bb_nme5_loop_snd
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_shrink_snd,%eax
	decl	4(%eax)
	jnz	_221
	movl	%eax,(%esp)
	call	_bbGCFree
_221:
	movl	%ebx,_bb_nme5_shrink_snd
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_grow_snd,%eax
	decl	4(%eax)
	jnz	_226
	movl	%eax,(%esp)
	call	_bbGCFree
_226:
	movl	%ebx,_bb_nme5_grow_snd
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_explode_snd,%eax
	decl	4(%eax)
	jnz	_231
	movl	%eax,(%esp)
	call	_bbGCFree
_231:
	movl	%ebx,_bb_nme5_explode_snd
	movl	$_232,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme5_killed_snd,%eax
	decl	4(%eax)
	jnz	_236
	movl	%eax,(%esp)
	call	_bbGCFree
_236:
	movl	%ebx,_bb_nme5_killed_snd
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme6_born_snd,%eax
	decl	4(%eax)
	jnz	_241
	movl	%eax,(%esp)
	call	_bbGCFree
_241:
	movl	%ebx,_bb_nme6_born_snd
	movl	$_242,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme6_tailexplode_snd,%eax
	decl	4(%eax)
	jnz	_246
	movl	%eax,(%esp)
	call	_bbGCFree
_246:
	movl	%ebx,_bb_nme6_tailexplode_snd
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme6_tailhit_snd,%eax
	decl	4(%eax)
	jnz	_251
	movl	%eax,(%esp)
	call	_bbGCFree
_251:
	movl	%ebx,_bb_nme6_tailhit_snd
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme7_born_snd,%eax
	decl	4(%eax)
	jnz	_256
	movl	%eax,(%esp)
	call	_bbGCFree
_256:
	movl	%ebx,_bb_nme7_born_snd
	movl	$_257,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme7_shield_snd,%eax
	decl	4(%eax)
	jnz	_261
	movl	%eax,(%esp)
	call	_bbGCFree
_261:
	movl	%ebx,_bb_nme7_shield_snd
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_nme8_born_snd,%eax
	decl	4(%eax)
	jnz	_266
	movl	%eax,(%esp)
	call	_bbGCFree
_266:
	movl	%ebx,_bb_nme8_born_snd
	movl	$_267,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_ge_born_snd,%eax
	decl	4(%eax)
	jnz	_271
	movl	%eax,(%esp)
	call	_bbGCFree
_271:
	movl	%ebx,_bb_ge_born_snd
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_ge_hit_snd,%eax
	decl	4(%eax)
	jnz	_276
	movl	%eax,(%esp)
	call	_bbGCFree
_276:
	movl	%ebx,_bb_ge_hit_snd
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_ge_killed_snd,%eax
	decl	4(%eax)
	jnz	_281
	movl	%eax,(%esp)
	call	_bbGCFree
_281:
	movl	%ebx,_bb_ge_killed_snd
	movl	$_282,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_le_born_snd,%eax
	decl	4(%eax)
	jnz	_286
	movl	%eax,(%esp)
	call	_bbGCFree
_286:
	movl	%ebx,_bb_le_born_snd
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_le_hit_snd,%eax
	decl	4(%eax)
	jnz	_291
	movl	%eax,(%esp)
	call	_bbGCFree
_291:
	movl	%ebx,_bb_le_hit_snd
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_le_killed_snd,%eax
	decl	4(%eax)
	jnz	_296
	movl	%eax,(%esp)
	call	_bbGCFree
_296:
	movl	%ebx,_bb_le_killed_snd
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_pu_collect_snd,%eax
	decl	4(%eax)
	jnz	_301
	movl	%eax,(%esp)
	call	_bbGCFree
_301:
	movl	%ebx,_bb_pu_collect_snd
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_get_ready_snd,%eax
	decl	4(%eax)
	jnz	_306
	movl	%eax,(%esp)
	call	_bbGCFree
_306:
	movl	%ebx,_bb_get_ready_snd
	movl	$_307,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_player_hit_snd,%eax
	decl	4(%eax)
	jnz	_311
	movl	%eax,(%esp)
	call	_bbGCFree
_311:
	movl	%ebx,_bb_player_hit_snd
	movl	$_312,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_shot_born_snd,%eax
	decl	4(%eax)
	jnz	_316
	movl	%eax,(%esp)
	call	_bbGCFree
_316:
	movl	%ebx,_bb_shot_born_snd
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_shot_hit_wall_snd,%eax
	decl	4(%eax)
	jnz	_321
	movl	%eax,(%esp)
	call	_bbGCFree
_321:
	movl	%ebx,_bb_shot_hit_wall_snd
	movl	$_322,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_game_over_snd,%eax
	decl	4(%eax)
	jnz	_326
	movl	%eax,(%esp)
	call	_bbGCFree
_326:
	movl	%ebx,_bb_game_over_snd
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_super_bomb_snd,%eax
	decl	4(%eax)
	jnz	_331
	movl	%eax,(%esp)
	call	_bbGCFree
_331:
	movl	%ebx,_bb_super_bomb_snd
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_extra_life_snd,%eax
	decl	4(%eax)
	jnz	_336
	movl	%eax,(%esp)
	call	_bbGCFree
_336:
	movl	%ebx,_bb_extra_life_snd
	movl	$_337,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_extra_bomb_snd,%eax
	decl	4(%eax)
	jnz	_341
	movl	%eax,(%esp)
	call	_bbGCFree
_341:
	movl	%ebx,_bb_extra_bomb_snd
	movl	$_342,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_multiplier_increase_snd,%eax
	decl	4(%eax)
	jnz	_346
	movl	%eax,(%esp)
	call	_bbGCFree
_346:
	movl	%ebx,_bb_multiplier_increase_snd
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_bonus_born_snd,%eax
	decl	4(%eax)
	jnz	_351
	movl	%eax,(%esp)
	call	_bbGCFree
_351:
	movl	%ebx,_bb_bonus_born_snd
	movl	$_352,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_high_score_snd,%eax
	decl	4(%eax)
	jnz	_356
	movl	%eax,(%esp)
	call	_bbGCFree
_356:
	movl	%ebx,_bb_high_score_snd
	movl	$_357,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_quarkhitsound,%eax
	decl	4(%eax)
	jnz	_361
	movl	%eax,(%esp)
	call	_bbGCFree
_361:
	movl	%ebx,_bb_quarkhitsound
	movl	$_362,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_quarkhit2sound,%eax
	decl	4(%eax)
	jnz	_366
	movl	%eax,(%esp)
	call	_bbGCFree
_366:
	movl	%ebx,_bb_quarkhit2sound
	movl	$_367,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_shieldwarningsnd,%eax
	decl	4(%eax)
	jnz	_371
	movl	%eax,(%esp)
	call	_bbGCFree
_371:
	movl	%ebx,_bb_shieldwarningsnd
	movl	$_372,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme_born_snd,%eax
	decl	4(%eax)
	jnz	_376
	movl	%eax,(%esp)
	call	_bbGCFree
_376:
	movl	%ebx,_bb_nme_born_snd
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_5,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme1_born_snd,%eax
	decl	4(%eax)
	jnz	_381
	movl	%eax,(%esp)
	call	_bbGCFree
_381:
	movl	%ebx,_bb_nme1_born_snd
	movl	$_382,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_6,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme2_born_snd,%eax
	decl	4(%eax)
	jnz	_386
	movl	%eax,(%esp)
	call	_bbGCFree
_386:
	movl	%ebx,_bb_nme2_born_snd
	movl	$_387,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme3_born_snd,%eax
	decl	4(%eax)
	jnz	_391
	movl	%eax,(%esp)
	call	_bbGCFree
_391:
	movl	%ebx,_bb_nme3_born_snd
	movl	$_392,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_8,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme4_born_snd,%eax
	decl	4(%eax)
	jnz	_396
	movl	%eax,(%esp)
	call	_bbGCFree
_396:
	movl	%ebx,_bb_nme4_born_snd
	movl	$_397,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_9,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_born_snd,%eax
	decl	4(%eax)
	jnz	_401
	movl	%eax,(%esp)
	call	_bbGCFree
_401:
	movl	%ebx,_bb_nme5_born_snd
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_10,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_loop_snd,%eax
	decl	4(%eax)
	jnz	_406
	movl	%eax,(%esp)
	call	_bbGCFree
_406:
	movl	%ebx,_bb_nme5_loop_snd
	movl	$_407,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_shrink_snd,%eax
	decl	4(%eax)
	jnz	_411
	movl	%eax,(%esp)
	call	_bbGCFree
_411:
	movl	%ebx,_bb_nme5_shrink_snd
	movl	$_412,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_12,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_grow_snd,%eax
	decl	4(%eax)
	jnz	_416
	movl	%eax,(%esp)
	call	_bbGCFree
_416:
	movl	%ebx,_bb_nme5_grow_snd
	movl	$_417,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_13,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_explode_snd,%eax
	decl	4(%eax)
	jnz	_421
	movl	%eax,(%esp)
	call	_bbGCFree
_421:
	movl	%ebx,_bb_nme5_explode_snd
	movl	$_422,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_14,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme5_killed_snd,%eax
	decl	4(%eax)
	jnz	_426
	movl	%eax,(%esp)
	call	_bbGCFree
_426:
	movl	%ebx,_bb_nme5_killed_snd
	movl	$_427,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_15,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme6_born_snd,%eax
	decl	4(%eax)
	jnz	_431
	movl	%eax,(%esp)
	call	_bbGCFree
_431:
	movl	%ebx,_bb_nme6_born_snd
	movl	$_432,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_16,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme6_tailexplode_snd,%eax
	decl	4(%eax)
	jnz	_436
	movl	%eax,(%esp)
	call	_bbGCFree
_436:
	movl	%ebx,_bb_nme6_tailexplode_snd
	movl	$_437,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_17,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme6_tailhit_snd,%eax
	decl	4(%eax)
	jnz	_441
	movl	%eax,(%esp)
	call	_bbGCFree
_441:
	movl	%ebx,_bb_nme6_tailhit_snd
	movl	$_442,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_18,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme7_born_snd,%eax
	decl	4(%eax)
	jnz	_446
	movl	%eax,(%esp)
	call	_bbGCFree
_446:
	movl	%ebx,_bb_nme7_born_snd
	movl	$_447,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_19,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme7_shield_snd,%eax
	decl	4(%eax)
	jnz	_451
	movl	%eax,(%esp)
	call	_bbGCFree
_451:
	movl	%ebx,_bb_nme7_shield_snd
	movl	$_452,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_20,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_nme8_born_snd,%eax
	decl	4(%eax)
	jnz	_456
	movl	%eax,(%esp)
	call	_bbGCFree
_456:
	movl	%ebx,_bb_nme8_born_snd
	movl	$_457,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_21,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_ge_born_snd,%eax
	decl	4(%eax)
	jnz	_461
	movl	%eax,(%esp)
	call	_bbGCFree
_461:
	movl	%ebx,_bb_ge_born_snd
	movl	$_462,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_22,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_ge_hit_snd,%eax
	decl	4(%eax)
	jnz	_466
	movl	%eax,(%esp)
	call	_bbGCFree
_466:
	movl	%ebx,_bb_ge_hit_snd
	movl	$_467,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_23,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_ge_killed_snd,%eax
	decl	4(%eax)
	jnz	_471
	movl	%eax,(%esp)
	call	_bbGCFree
_471:
	movl	%ebx,_bb_ge_killed_snd
	movl	$_472,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_24,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_le_born_snd,%eax
	decl	4(%eax)
	jnz	_476
	movl	%eax,(%esp)
	call	_bbGCFree
_476:
	movl	%ebx,_bb_le_born_snd
	movl	$_477,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_25,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_le_hit_snd,%eax
	decl	4(%eax)
	jnz	_481
	movl	%eax,(%esp)
	call	_bbGCFree
_481:
	movl	%ebx,_bb_le_hit_snd
	movl	$_482,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_26,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_le_killed_snd,%eax
	decl	4(%eax)
	jnz	_486
	movl	%eax,(%esp)
	call	_bbGCFree
_486:
	movl	%ebx,_bb_le_killed_snd
	movl	$_487,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_27,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_pu_collect_snd,%eax
	decl	4(%eax)
	jnz	_491
	movl	%eax,(%esp)
	call	_bbGCFree
_491:
	movl	%ebx,_bb_pu_collect_snd
	movl	$_492,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_28,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_get_ready_snd,%eax
	decl	4(%eax)
	jnz	_496
	movl	%eax,(%esp)
	call	_bbGCFree
_496:
	movl	%ebx,_bb_get_ready_snd
	movl	$_497,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_29,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_player_hit_snd,%eax
	decl	4(%eax)
	jnz	_501
	movl	%eax,(%esp)
	call	_bbGCFree
_501:
	movl	%ebx,_bb_player_hit_snd
	movl	$_502,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_30,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_shot_born_snd,%eax
	decl	4(%eax)
	jnz	_506
	movl	%eax,(%esp)
	call	_bbGCFree
_506:
	movl	%ebx,_bb_shot_born_snd
	movl	$_507,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_31,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_shot_hit_wall_snd,%eax
	decl	4(%eax)
	jnz	_511
	movl	%eax,(%esp)
	call	_bbGCFree
_511:
	movl	%ebx,_bb_shot_hit_wall_snd
	movl	$_512,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_32,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game_over_snd,%eax
	decl	4(%eax)
	jnz	_516
	movl	%eax,(%esp)
	call	_bbGCFree
_516:
	movl	%ebx,_bb_game_over_snd
	movl	$_517,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_33,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_super_bomb_snd,%eax
	decl	4(%eax)
	jnz	_521
	movl	%eax,(%esp)
	call	_bbGCFree
_521:
	movl	%ebx,_bb_super_bomb_snd
	movl	$_522,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_34,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_extra_life_snd,%eax
	decl	4(%eax)
	jnz	_526
	movl	%eax,(%esp)
	call	_bbGCFree
_526:
	movl	%ebx,_bb_extra_life_snd
	movl	$_527,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_35,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_extra_bomb_snd,%eax
	decl	4(%eax)
	jnz	_531
	movl	%eax,(%esp)
	call	_bbGCFree
_531:
	movl	%ebx,_bb_extra_bomb_snd
	movl	$_532,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_36,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_multiplier_increase_snd,%eax
	decl	4(%eax)
	jnz	_536
	movl	%eax,(%esp)
	call	_bbGCFree
_536:
	movl	%ebx,_bb_multiplier_increase_snd
	movl	$_537,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_37,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_bonus_born_snd,%eax
	decl	4(%eax)
	jnz	_541
	movl	%eax,(%esp)
	call	_bbGCFree
_541:
	movl	%ebx,_bb_bonus_born_snd
	movl	$_542,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_27,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_high_score_snd,%eax
	decl	4(%eax)
	jnz	_546
	movl	%eax,(%esp)
	call	_bbGCFree
_546:
	movl	%ebx,_bb_high_score_snd
	movl	$_547,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_38,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_quarkhitsound,%eax
	decl	4(%eax)
	jnz	_551
	movl	%eax,(%esp)
	call	_bbGCFree
_551:
	movl	%ebx,_bb_quarkhitsound
	movl	$_552,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_39,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_quarkhit2sound,%eax
	decl	4(%eax)
	jnz	_556
	movl	%eax,(%esp)
	call	_bbGCFree
_556:
	movl	%ebx,_bb_quarkhit2sound
	movl	$_557,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_40,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$0,4(%esp)
	movl	%eax,(%esp)
	call	_brl_audio_LoadSound
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_shieldwarningsnd,%eax
	decl	4(%eax)
	jnz	_561
	movl	%eax,(%esp)
	call	_bbGCFree
_561:
	movl	%ebx,_bb_shieldwarningsnd
	mov	$0,%ebx
	jmp	_49
_49:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PlaySound2:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_582,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_566,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-20(%ebp)
	movl	$_568,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_bb_sfxvol
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_569
	movl	-4(%ebp),%eax
	cmp	$_bbNullObject,%eax
	setne	%al
	movzbl	%al,%eax
_569:
	cmp	$0,%eax
	je	_571
	movl	%ebp,4(%esp)
	movl	$_580,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_572,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_CueSound
	movl	%eax,-20(%ebp)
	movl	$_573,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_574
	movl	%ebp,4(%esp)
	movl	$_576,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_575,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fstps	4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelRate
	calll	*_bbOnDebugLeaveScope
_574:
	movl	$_577,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstps	4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelPan
	movl	$_578,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_bb_sfxvol
	fmuls	-16(%ebp)
	fstps	4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelVolume
	movl	$_579,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_ResumeChannel
	calll	*_bbOnDebugLeaveScope
_571:
	movl	$_581,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_55
_55:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SetPanAndVolume:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_598,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_590,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$_bbNullObject,-4(%ebp)
	je	_591
	movl	%ebp,4(%esp)
	movl	$_597,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_592,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_bb_sfxvol
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_593
	movl	%ebp,4(%esp)
	movl	$_596,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_594,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelPan
	movl	$_595,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_bb_sfxvol
	fmuls	-12(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelVolume
	calll	*_bbOnDebugLeaveScope
_593:
	calll	*_bbOnDebugLeaveScope
_591:
	mov	$0,%ebx
	jmp	_60
_60:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_AdjustVolume:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	$0,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_613,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_600,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-4(%ebp)
	movl	$_602,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-4(%ebp)
	jmp	_603
_43:
	movl	%ebp,4(%esp)
	movl	$_612,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_604,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	_bb_sunloopchan,%eax
	cmpl	20(%eax),%ebx
	jb	_606
	call	_brl_blitz_ArrayBoundsError
_606:
	movl	_bb_sunloopchan,%eax
	cmpl	$_bbNullObject,24(%eax,%ebx,4)
	je	_607
	movl	%ebp,4(%esp)
	movl	$_611,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_608,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	_bb_sunloopchan,%eax
	cmpl	20(%eax),%ebx
	jb	_610
	call	_brl_blitz_ArrayBoundsError
_610:
	flds	_bb_sfxvol
	fstps	4(%esp)
	movl	_bb_sunloopchan,%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_audio_SetChannelVolume
	calll	*_bbOnDebugLeaveScope
_607:
	calll	*_bbOnDebugLeaveScope
_41:
	addl	$1,-4(%ebp)
_603:
	cmpl	$7,-4(%ebp)
	jle	_43
_42:
	mov	$0,%ebx
	jmp	_62
_62:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_StopLoopingSounds:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	$0,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_637,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_616,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-4(%ebp)
	movl	$_618,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-4(%ebp)
	jmp	_619
_46:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_636,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_620,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	_bb_sunloopchan,%eax
	cmpl	20(%eax),%ebx
	jb	_622
	call	_brl_blitz_ArrayBoundsError
_622:
	movl	_bb_sunloopchan,%eax
	cmpl	$_bbNullObject,24(%eax,%ebx,4)
	je	_623
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_635,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_624,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	_bb_sunloopchan,%eax
	cmpl	20(%eax),%ebx
	jb	_626
	call	_brl_blitz_ArrayBoundsError
_626:
	movl	_bb_sunloopchan,%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_audio_StopChannel
	movl	$_627,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	_bb_sunloopchan,%eax
	cmpl	20(%eax),%ebx
	jb	_629
	call	_brl_blitz_ArrayBoundsError
_629:
	movl	_bb_sunloopchan,%eax
	shl	$2,%ebx
	add	%ebx,%eax
	mov	%eax,%ebx
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_634
	movl	%eax,(%esp)
	call	_bbGCFree
_634:
	movl	%esi,24(%ebx)
	calll	*_bbOnDebugLeaveScope
_623:
	calll	*_bbOnDebugLeaveScope
_44:
	addl	$1,-4(%ebp)
_619:
	cmpl	$7,-4(%ebp)
	jle	_46
_45:
	mov	$0,%ebx
	jmp	_64
_64:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_StartMusic:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_639,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_67
_67:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_StopMusic:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	%ebp,4(%esp)
	movl	$_642,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_69
_69:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SetMusicVolume:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	%ebp,4(%esp)
	movl	$_644,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_71
_71:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_170:
	.long	0
_123:
	.asciz	"sound"
_124:
	.asciz	"sfxvol"
_125:
	.asciz	"f"
	.align	4
_bb_sfxvol:
	.long	0x3f000000
_126:
	.asciz	"musicvol"
	.align	4
_bb_musicvol:
	.long	0x3f000000
_127:
	.asciz	"sunloopchan"
_128:
	.asciz	"[]:TChannel"
	.align	4
_bb_sunloopchan:
	.long	_bbEmptyArray
_129:
	.asciz	"soundset"
_130:
	.asciz	"i"
	.align	4
_bb_soundset:
	.long	0
_131:
	.asciz	"nme_born_snd"
_132:
	.asciz	":TSound"
	.align	4
_bb_nme_born_snd:
	.long	_bbNullObject
_133:
	.asciz	"nme1_born_snd"
	.align	4
_bb_nme1_born_snd:
	.long	_bbNullObject
_134:
	.asciz	"nme2_born_snd"
	.align	4
_bb_nme2_born_snd:
	.long	_bbNullObject
_135:
	.asciz	"nme3_born_snd"
	.align	4
_bb_nme3_born_snd:
	.long	_bbNullObject
_136:
	.asciz	"nme4_born_snd"
	.align	4
_bb_nme4_born_snd:
	.long	_bbNullObject
_137:
	.asciz	"nme5_born_snd"
	.align	4
_bb_nme5_born_snd:
	.long	_bbNullObject
_138:
	.asciz	"nme5_loop_snd"
	.align	4
_bb_nme5_loop_snd:
	.long	_bbNullObject
_139:
	.asciz	"nme5_shrink_snd"
	.align	4
_bb_nme5_shrink_snd:
	.long	_bbNullObject
_140:
	.asciz	"nme5_grow_snd"
	.align	4
_bb_nme5_grow_snd:
	.long	_bbNullObject
_141:
	.asciz	"nme5_explode_snd"
	.align	4
_bb_nme5_explode_snd:
	.long	_bbNullObject
_142:
	.asciz	"nme5_killed_snd"
	.align	4
_bb_nme5_killed_snd:
	.long	_bbNullObject
_143:
	.asciz	"nme6_born_snd"
	.align	4
_bb_nme6_born_snd:
	.long	_bbNullObject
_144:
	.asciz	"nme6_tailexplode_snd"
	.align	4
_bb_nme6_tailexplode_snd:
	.long	_bbNullObject
_145:
	.asciz	"nme6_tailhit_snd"
	.align	4
_bb_nme6_tailhit_snd:
	.long	_bbNullObject
_146:
	.asciz	"nme7_born_snd"
	.align	4
_bb_nme7_born_snd:
	.long	_bbNullObject
_147:
	.asciz	"nme7_shield_snd"
	.align	4
_bb_nme7_shield_snd:
	.long	_bbNullObject
_148:
	.asciz	"nme8_born_snd"
	.align	4
_bb_nme8_born_snd:
	.long	_bbNullObject
_149:
	.asciz	"ge_born_snd"
	.align	4
_bb_ge_born_snd:
	.long	_bbNullObject
_150:
	.asciz	"ge_hit_snd"
	.align	4
_bb_ge_hit_snd:
	.long	_bbNullObject
_151:
	.asciz	"ge_killed_snd"
	.align	4
_bb_ge_killed_snd:
	.long	_bbNullObject
_152:
	.asciz	"le_born_snd"
	.align	4
_bb_le_born_snd:
	.long	_bbNullObject
_153:
	.asciz	"le_hit_snd"
	.align	4
_bb_le_hit_snd:
	.long	_bbNullObject
_154:
	.asciz	"le_killed_snd"
	.align	4
_bb_le_killed_snd:
	.long	_bbNullObject
_155:
	.asciz	"pu_collect_snd"
	.align	4
_bb_pu_collect_snd:
	.long	_bbNullObject
_156:
	.asciz	"get_ready_snd"
	.align	4
_bb_get_ready_snd:
	.long	_bbNullObject
_157:
	.asciz	"player_hit_snd"
	.align	4
_bb_player_hit_snd:
	.long	_bbNullObject
_158:
	.asciz	"shot_born_snd"
	.align	4
_bb_shot_born_snd:
	.long	_bbNullObject
_159:
	.asciz	"shot_hit_wall_snd"
	.align	4
_bb_shot_hit_wall_snd:
	.long	_bbNullObject
_160:
	.asciz	"game_over_snd"
	.align	4
_bb_game_over_snd:
	.long	_bbNullObject
_161:
	.asciz	"super_bomb_snd"
	.align	4
_bb_super_bomb_snd:
	.long	_bbNullObject
_162:
	.asciz	"extra_life_snd"
	.align	4
_bb_extra_life_snd:
	.long	_bbNullObject
_163:
	.asciz	"extra_bomb_snd"
	.align	4
_bb_extra_bomb_snd:
	.long	_bbNullObject
_164:
	.asciz	"multiplier_increase_snd"
	.align	4
_bb_multiplier_increase_snd:
	.long	_bbNullObject
_165:
	.asciz	"bonus_born_snd"
	.align	4
_bb_bonus_born_snd:
	.long	_bbNullObject
_166:
	.asciz	"high_score_snd"
	.align	4
_bb_high_score_snd:
	.long	_bbNullObject
_167:
	.asciz	"quarkhitsound"
	.align	4
_bb_quarkhitsound:
	.long	_bbNullObject
_168:
	.asciz	"quarkhit2sound"
	.align	4
_bb_quarkhit2sound:
	.long	_bbNullObject
_169:
	.asciz	"shieldwarningsnd"
	.align	4
_bb_shieldwarningsnd:
	.long	_bbNullObject
	.align	4
_122:
	.long	1
	.long	_123
	.long	4
	.long	_124
	.long	_125
	.long	_bb_sfxvol
	.long	4
	.long	_126
	.long	_125
	.long	_bb_musicvol
	.long	4
	.long	_127
	.long	_128
	.long	_bb_sunloopchan
	.long	4
	.long	_129
	.long	_130
	.long	_bb_soundset
	.long	4
	.long	_131
	.long	_132
	.long	_bb_nme_born_snd
	.long	4
	.long	_133
	.long	_132
	.long	_bb_nme1_born_snd
	.long	4
	.long	_134
	.long	_132
	.long	_bb_nme2_born_snd
	.long	4
	.long	_135
	.long	_132
	.long	_bb_nme3_born_snd
	.long	4
	.long	_136
	.long	_132
	.long	_bb_nme4_born_snd
	.long	4
	.long	_137
	.long	_132
	.long	_bb_nme5_born_snd
	.long	4
	.long	_138
	.long	_132
	.long	_bb_nme5_loop_snd
	.long	4
	.long	_139
	.long	_132
	.long	_bb_nme5_shrink_snd
	.long	4
	.long	_140
	.long	_132
	.long	_bb_nme5_grow_snd
	.long	4
	.long	_141
	.long	_132
	.long	_bb_nme5_explode_snd
	.long	4
	.long	_142
	.long	_132
	.long	_bb_nme5_killed_snd
	.long	4
	.long	_143
	.long	_132
	.long	_bb_nme6_born_snd
	.long	4
	.long	_144
	.long	_132
	.long	_bb_nme6_tailexplode_snd
	.long	4
	.long	_145
	.long	_132
	.long	_bb_nme6_tailhit_snd
	.long	4
	.long	_146
	.long	_132
	.long	_bb_nme7_born_snd
	.long	4
	.long	_147
	.long	_132
	.long	_bb_nme7_shield_snd
	.long	4
	.long	_148
	.long	_132
	.long	_bb_nme8_born_snd
	.long	4
	.long	_149
	.long	_132
	.long	_bb_ge_born_snd
	.long	4
	.long	_150
	.long	_132
	.long	_bb_ge_hit_snd
	.long	4
	.long	_151
	.long	_132
	.long	_bb_ge_killed_snd
	.long	4
	.long	_152
	.long	_132
	.long	_bb_le_born_snd
	.long	4
	.long	_153
	.long	_132
	.long	_bb_le_hit_snd
	.long	4
	.long	_154
	.long	_132
	.long	_bb_le_killed_snd
	.long	4
	.long	_155
	.long	_132
	.long	_bb_pu_collect_snd
	.long	4
	.long	_156
	.long	_132
	.long	_bb_get_ready_snd
	.long	4
	.long	_157
	.long	_132
	.long	_bb_player_hit_snd
	.long	4
	.long	_158
	.long	_132
	.long	_bb_shot_born_snd
	.long	4
	.long	_159
	.long	_132
	.long	_bb_shot_hit_wall_snd
	.long	4
	.long	_160
	.long	_132
	.long	_bb_game_over_snd
	.long	4
	.long	_161
	.long	_132
	.long	_bb_super_bomb_snd
	.long	4
	.long	_162
	.long	_132
	.long	_bb_extra_life_snd
	.long	4
	.long	_163
	.long	_132
	.long	_bb_extra_bomb_snd
	.long	4
	.long	_164
	.long	_132
	.long	_bb_multiplier_increase_snd
	.long	4
	.long	_165
	.long	_132
	.long	_bb_bonus_born_snd
	.long	4
	.long	_166
	.long	_132
	.long	_bb_high_score_snd
	.long	4
	.long	_167
	.long	_132
	.long	_bb_quarkhitsound
	.long	4
	.long	_168
	.long	_132
	.long	_bb_quarkhit2sound
	.long	4
	.long	_169
	.long	_132
	.long	_bb_shieldwarningsnd
	.long	0
_74:
	.asciz	"/Users/michiele/Dropbox (Persoonlijk)/michiele/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/sound.bmx"
	.align	4
_73:
	.long	_74
	.long	10
	.long	1
	.align	4
_75:
	.long	_74
	.long	11
	.long	1
	.align	4
_76:
	.long	_74
	.long	21
	.long	1
	.align	4
_77:
	.long	_74
	.long	22
	.long	1
_78:
	.asciz	":TChannel"
	.align	4
_83:
	.long	_74
	.long	25
	.long	1
	.align	4
_84:
	.long	_74
	.long	27
	.long	1
	.align	4
_85:
	.long	_74
	.long	28
	.long	1
	.align	4
_86:
	.long	_74
	.long	29
	.long	1
	.align	4
_87:
	.long	_74
	.long	30
	.long	1
	.align	4
_88:
	.long	_74
	.long	31
	.long	1
	.align	4
_89:
	.long	_74
	.long	33
	.long	1
	.align	4
_90:
	.long	_74
	.long	34
	.long	1
	.align	4
_91:
	.long	_74
	.long	35
	.long	1
	.align	4
_92:
	.long	_74
	.long	36
	.long	1
	.align	4
_93:
	.long	_74
	.long	37
	.long	1
	.align	4
_94:
	.long	_74
	.long	38
	.long	1
	.align	4
_95:
	.long	_74
	.long	40
	.long	1
	.align	4
_96:
	.long	_74
	.long	41
	.long	1
	.align	4
_97:
	.long	_74
	.long	42
	.long	1
	.align	4
_98:
	.long	_74
	.long	44
	.long	1
	.align	4
_99:
	.long	_74
	.long	45
	.long	1
	.align	4
_100:
	.long	_74
	.long	47
	.long	1
	.align	4
_101:
	.long	_74
	.long	49
	.long	1
	.align	4
_102:
	.long	_74
	.long	50
	.long	1
	.align	4
_103:
	.long	_74
	.long	51
	.long	1
	.align	4
_104:
	.long	_74
	.long	53
	.long	1
	.align	4
_105:
	.long	_74
	.long	54
	.long	1
	.align	4
_106:
	.long	_74
	.long	55
	.long	1
	.align	4
_107:
	.long	_74
	.long	57
	.long	1
	.align	4
_108:
	.long	_74
	.long	59
	.long	1
	.align	4
_109:
	.long	_74
	.long	61
	.long	1
	.align	4
_110:
	.long	_74
	.long	63
	.long	1
	.align	4
_111:
	.long	_74
	.long	64
	.long	1
	.align	4
_112:
	.long	_74
	.long	66
	.long	1
	.align	4
_113:
	.long	_74
	.long	68
	.long	1
	.align	4
_114:
	.long	_74
	.long	70
	.long	1
	.align	4
_115:
	.long	_74
	.long	72
	.long	1
	.align	4
_116:
	.long	_74
	.long	74
	.long	1
	.align	4
_117:
	.long	_74
	.long	75
	.long	1
	.align	4
_118:
	.long	_74
	.long	76
	.long	1
	.align	4
_119:
	.long	_74
	.long	78
	.long	1
	.align	4
_120:
	.long	_74
	.long	79
	.long	1
	.align	4
_121:
	.long	_74
	.long	81
	.long	1
_563:
	.asciz	"LoadSounds"
_564:
	.asciz	"folder"
_565:
	.asciz	"$"
	.align	4
_562:
	.long	1
	.long	_563
	.long	2
	.long	_564
	.long	_565
	.long	-4
	.long	0
	.align	4
_172:
	.long	_74
	.long	85
	.long	2
	.align	4
_174:
	.long	_74
	.long	87
	.long	2
	.align	4
_179:
	.long	3
	.long	0
	.long	0
	.align	4
_178:
	.long	_74
	.long	91
	.long	4
	.align	4
_3:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	115,111,117,110,100,115,47
	.align	4
_181:
	.long	3
	.long	0
	.long	0
	.align	4
_180:
	.long	_74
	.long	89
	.long	4
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	115,111,117,110,100,115,47,117,115,101,114,47
	.align	4
_182:
	.long	_74
	.long	94
	.long	2
	.align	4
_187:
	.long	_74
	.long	95
	.long	2
	.align	4
_192:
	.long	_74
	.long	96
	.long	2
	.align	4
_197:
	.long	_74
	.long	97
	.long	2
	.align	4
_202:
	.long	_74
	.long	98
	.long	2
	.align	4
_207:
	.long	_74
	.long	100
	.long	2
	.align	4
_212:
	.long	_74
	.long	101
	.long	2
	.align	4
_217:
	.long	_74
	.long	102
	.long	2
	.align	4
_222:
	.long	_74
	.long	103
	.long	2
	.align	4
_227:
	.long	_74
	.long	104
	.long	2
	.align	4
_232:
	.long	_74
	.long	105
	.long	2
	.align	4
_237:
	.long	_74
	.long	107
	.long	2
	.align	4
_242:
	.long	_74
	.long	108
	.long	2
	.align	4
_247:
	.long	_74
	.long	109
	.long	2
	.align	4
_252:
	.long	_74
	.long	111
	.long	2
	.align	4
_257:
	.long	_74
	.long	112
	.long	2
	.align	4
_262:
	.long	_74
	.long	114
	.long	2
	.align	4
_267:
	.long	_74
	.long	116
	.long	2
	.align	4
_272:
	.long	_74
	.long	117
	.long	2
	.align	4
_277:
	.long	_74
	.long	118
	.long	2
	.align	4
_282:
	.long	_74
	.long	120
	.long	2
	.align	4
_287:
	.long	_74
	.long	121
	.long	2
	.align	4
_292:
	.long	_74
	.long	122
	.long	2
	.align	4
_297:
	.long	_74
	.long	124
	.long	2
	.align	4
_302:
	.long	_74
	.long	126
	.long	2
	.align	4
_307:
	.long	_74
	.long	128
	.long	2
	.align	4
_312:
	.long	_74
	.long	130
	.long	2
	.align	4
_317:
	.long	_74
	.long	131
	.long	2
	.align	4
_322:
	.long	_74
	.long	133
	.long	2
	.align	4
_327:
	.long	_74
	.long	135
	.long	2
	.align	4
_332:
	.long	_74
	.long	137
	.long	2
	.align	4
_337:
	.long	_74
	.long	139
	.long	2
	.align	4
_342:
	.long	_74
	.long	141
	.long	2
	.align	4
_347:
	.long	_74
	.long	142
	.long	2
	.align	4
_352:
	.long	_74
	.long	143
	.long	2
	.align	4
_357:
	.long	_74
	.long	145
	.long	2
	.align	4
_362:
	.long	_74
	.long	146
	.long	2
	.align	4
_367:
	.long	_74
	.long	147
	.long	2
	.align	4
_372:
	.long	_74
	.long	150
	.long	2
	.align	4
_4:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	98,117,122,122,51,46,119,97,118
	.align	4
_377:
	.long	_74
	.long	151
	.long	2
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	112,111,112,50,46,119,97,118
	.align	4
_382:
	.long	_74
	.long	152
	.long	2
	.align	4
_6:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	112,111,112,51,46,119,97,118
	.align	4
_387:
	.long	_74
	.long	153
	.long	2
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	115,110,97,107,101,49,46,119,97,118
	.align	4
_392:
	.long	_74
	.long	154
	.long	2
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	103,114,117,110,116,98,111,114,110,46,119,97,118
	.align	4
_397:
	.long	_74
	.long	156
	.long	2
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	115,117,110,49,46,119,97,118
	.align	4
_402:
	.long	_74
	.long	157
	.long	2
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	98,111,110,100,108,111,111,112,46,119,97,118
	.align	4
_407:
	.long	_74
	.long	158
	.long	2
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	115,117,110,104,105,116,49,46,119,97,118
	.align	4
_412:
	.long	_74
	.long	159
	.long	2
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	115,105,122,122,108,101,49,46,119,97,118
	.align	4
_417:
	.long	_74
	.long	160
	.long	2
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	115,117,110,101,120,112,46,119,97,118
	.align	4
_422:
	.long	_74
	.long	161
	.long	2
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	69,120,112,108,111,49,46,119,97,118
	.align	4
_427:
	.long	_74
	.long	163
	.long	2
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	119,101,101,46,119,97,118
	.align	4
_432:
	.long	_74
	.long	164
	.long	2
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	115,110,97,107,101,104,105,116,46,119,97,118
	.align	4
_437:
	.long	_74
	.long	165
	.long	2
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	116,97,105,108,104,105,116,46,119,97,118
	.align	4
_442:
	.long	_74
	.long	167
	.long	2
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	119,97,114,110,49,46,119,97,118
	.align	4
_447:
	.long	_74
	.long	168
	.long	2
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	115,104,105,101,108,100,49,46,119,97,118
	.align	4
_452:
	.long	_74
	.long	170
	.long	2
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	98,117,116,116,101,114,102,108,121,46,119,97,118
	.align	4
_457:
	.long	_74
	.long	172
	.long	2
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	99,97,116,46,119,97,118
	.align	4
_462:
	.long	_74
	.long	173
	.long	2
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	103,101,110,104,105,116,49,46,119,97,118
	.align	4
_467:
	.long	_74
	.long	174
	.long	2
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	103,101,110,107,105,108,108,101,100,49,46,119,97,118
	.align	4
_472:
	.long	_74
	.long	176
	.long	2
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	98,117,122,122,49,46,119,97,118
	.align	4
_477:
	.long	_74
	.long	177
	.long	2
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	101,99,104,111,49,46,119,97,118
	.align	4
_482:
	.long	_74
	.long	178
	.long	2
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	101,108,97,115,116,105,99,46,119,97,118
	.align	4
_487:
	.long	_74
	.long	180
	.long	2
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	98,111,110,117,115,49,46,119,97,118
	.align	4
_492:
	.long	_74
	.long	182
	.long	2
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	115,116,97,114,116,117,112,46,119,97,118
	.align	4
_497:
	.long	_74
	.long	184
	.long	2
	.align	4
_29:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	100,105,101,49,46,119,97,118
	.align	4
_502:
	.long	_74
	.long	186
	.long	2
	.align	4
_30:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	115,104,111,116,98,111,114,110,46,119,97,118
	.align	4
_507:
	.long	_74
	.long	187
	.long	2
	.align	4
_31:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	115,104,111,116,119,97,108,108,46,119,97,118
	.align	4
_512:
	.long	_74
	.long	189
	.long	2
	.align	4
_32:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	103,97,109,101,111,118,101,114,46,119,97,118
	.align	4
_517:
	.long	_74
	.long	191
	.long	2
	.align	4
_33:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	101,120,112,108,111,49,46,119,97,118
	.align	4
_522:
	.long	_74
	.long	193
	.long	2
	.align	4
_34:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	98,114,97,105,110,98,111,114,110,46,119,97,118
	.align	4
_527:
	.long	_74
	.long	195
	.long	2
	.align	4
_35:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	98,117,122,122,50,46,119,97,118
	.align	4
_532:
	.long	_74
	.long	197
	.long	2
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	98,111,110,117,115,50,46,119,97,118
	.align	4
_537:
	.long	_74
	.long	198
	.long	2
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	98,111,110,117,115,98,111,114,110,46,119,97,118
	.align	4
_542:
	.long	_74
	.long	199
	.long	2
	.align	4
_547:
	.long	_74
	.long	201
	.long	2
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	113,117,97,114,107,104,105,116,46,119,97,118
	.align	4
_552:
	.long	_74
	.long	202
	.long	2
	.align	4
_39:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	113,117,97,114,107,104,105,116,50,46,119,97,118
	.align	4
_557:
	.long	_74
	.long	204
	.long	2
	.align	4
_40:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	115,104,105,101,108,100,119,97,114,110,105,110,103,46,119,97
	.short	118
_583:
	.asciz	"PlaySound2"
_584:
	.asciz	"snd"
_585:
	.asciz	"freq"
_586:
	.asciz	"pan"
_587:
	.asciz	"vol"
_588:
	.asciz	"ch"
_589:
	.asciz	":TChannel"
	.align	4
_582:
	.long	1
	.long	_583
	.long	2
	.long	_584
	.long	_132
	.long	-4
	.long	2
	.long	_585
	.long	_125
	.long	-8
	.long	2
	.long	_586
	.long	_125
	.long	-12
	.long	2
	.long	_587
	.long	_125
	.long	-16
	.long	2
	.long	_588
	.long	_589
	.long	-20
	.long	0
	.align	4
_566:
	.long	_74
	.long	211
	.long	2
	.align	4
_568:
	.long	_74
	.long	213
	.long	2
	.align	4
_580:
	.long	3
	.long	0
	.long	0
	.align	4
_572:
	.long	_74
	.long	214
	.long	3
	.align	4
_573:
	.long	_74
	.long	215
	.long	3
	.align	4
_576:
	.long	3
	.long	0
	.long	0
	.align	4
_575:
	.long	_74
	.long	216
	.long	4
	.align	4
_577:
	.long	_74
	.long	218
	.long	3
	.align	4
_578:
	.long	_74
	.long	219
	.long	3
	.align	4
_579:
	.long	_74
	.long	220
	.long	3
	.align	4
_581:
	.long	_74
	.long	222
	.long	2
_599:
	.asciz	"SetPanAndVolume"
	.align	4
_598:
	.long	1
	.long	_599
	.long	2
	.long	_588
	.long	_589
	.long	-4
	.long	2
	.long	_586
	.long	_125
	.long	-8
	.long	2
	.long	_587
	.long	_125
	.long	-12
	.long	0
	.align	4
_590:
	.long	_74
	.long	229
	.long	2
	.align	4
_597:
	.long	3
	.long	0
	.long	0
	.align	4
_592:
	.long	_74
	.long	230
	.long	3
	.align	4
_596:
	.long	3
	.long	0
	.long	0
	.align	4
_594:
	.long	_74
	.long	231
	.long	4
	.align	4
_595:
	.long	_74
	.long	232
	.long	4
_614:
	.asciz	"AdjustVolume"
_615:
	.asciz	"t"
	.align	4
_613:
	.long	1
	.long	_614
	.long	2
	.long	_615
	.long	_130
	.long	-4
	.long	0
	.align	4
_600:
	.long	_74
	.long	241
	.long	2
	.align	4
_602:
	.long	_74
	.long	243
	.long	2
	.align	4
_612:
	.long	3
	.long	0
	.long	0
	.align	4
_604:
	.long	_74
	.long	244
	.long	3
	.align	4
_611:
	.long	3
	.long	0
	.long	0
	.align	4
_608:
	.long	_74
	.long	245
	.long	4
_638:
	.asciz	"StopLoopingSounds"
	.align	4
_637:
	.long	1
	.long	_638
	.long	2
	.long	_615
	.long	_130
	.long	-4
	.long	0
	.align	4
_616:
	.long	_74
	.long	253
	.long	2
	.align	4
_618:
	.long	_74
	.long	255
	.long	2
	.align	4
_636:
	.long	3
	.long	0
	.long	0
	.align	4
_620:
	.long	_74
	.long	256
	.long	3
	.align	4
_635:
	.long	3
	.long	0
	.long	0
	.align	4
_624:
	.long	_74
	.long	257
	.long	4
	.align	4
_627:
	.long	_74
	.long	258
	.long	4
_640:
	.asciz	"StartMusic"
_641:
	.asciz	"song"
	.align	4
_639:
	.long	1
	.long	_640
	.long	2
	.long	_641
	.long	_130
	.long	-4
	.long	0
_643:
	.asciz	"StopMusic"
	.align	4
_642:
	.long	1
	.long	_643
	.long	0
_645:
	.asciz	"SetMusicVolume"
	.align	4
_644:
	.long	1
	.long	_645
	.long	0
