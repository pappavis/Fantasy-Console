	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_freeaudioaudio_freeaudioaudio
	extrn	__bb_glmax2d_glmax2d
	extrn	__bb_wavloader_wavloader
	extrn	bbArrayNew1D
	extrn	bbEmptyArray
	extrn	bbEmptyString
	extrn	bbGCFree
	extrn	bbNullObject
	extrn	bbOnDebugEnterScope
	extrn	bbOnDebugEnterStm
	extrn	bbOnDebugLeaveScope
	extrn	bbStringClass
	extrn	bbStringConcat
	extrn	brl_audio_CueSound
	extrn	brl_audio_LoadSound
	extrn	brl_audio_ResumeChannel
	extrn	brl_audio_SetChannelPan
	extrn	brl_audio_SetChannelRate
	extrn	brl_audio_SetChannelVolume
	extrn	brl_audio_StopChannel
	extrn	brl_blitz_ArrayBoundsError
	public	__bb_blitzmax_code_archief__spel__gridwars_sound
	public	bb_AdjustVolume
	public	bb_LoadSounds
	public	bb_PlaySound2
	public	bb_SetMusicVolume
	public	bb_SetPanAndVolume
	public	bb_StartMusic
	public	bb_StopLoopingSounds
	public	bb_StopMusic
	public	bb_bonus_born_snd
	public	bb_extra_bomb_snd
	public	bb_extra_life_snd
	public	bb_game_over_snd
	public	bb_ge_born_snd
	public	bb_ge_hit_snd
	public	bb_ge_killed_snd
	public	bb_get_ready_snd
	public	bb_high_score_snd
	public	bb_le_born_snd
	public	bb_le_hit_snd
	public	bb_le_killed_snd
	public	bb_multiplier_increase_snd
	public	bb_musicchannel
	public	bb_musicvol
	public	bb_nme1_born_snd
	public	bb_nme2_born_snd
	public	bb_nme3_born_snd
	public	bb_nme4_born_snd
	public	bb_nme5_born_snd
	public	bb_nme5_explode_snd
	public	bb_nme5_grow_snd
	public	bb_nme5_killed_snd
	public	bb_nme5_loop_snd
	public	bb_nme5_shrink_snd
	public	bb_nme6_born_snd
	public	bb_nme6_tailexplode_snd
	public	bb_nme6_tailhit_snd
	public	bb_nme7_born_snd
	public	bb_nme7_shield_snd
	public	bb_nme8_born_snd
	public	bb_nme_born_snd
	public	bb_player_hit_snd
	public	bb_pu_collect_snd
	public	bb_quarkhit2sound
	public	bb_quarkhitsound
	public	bb_sfxvol
	public	bb_shieldwarningsnd
	public	bb_shot_born_snd
	public	bb_shot_hit_wall_snd
	public	bb_soundset
	public	bb_sunloopchan
	public	bb_super_bomb_snd
	section	"code" executable
__bb_blitzmax_code_archief__spel__gridwars_sound:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_173],0
	je	_174
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_174:
	mov	dword [_173],1
	push	ebp
	push	_123
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	__bb_blitz_blitz
	call	__bb_freeaudioaudio_freeaudioaudio
	call	__bb_wavloader_wavloader
	call	__bb_glmax2d_glmax2d
	push	_73
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_75
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_76
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_77
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_78
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	8
	push	_79
	call	bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_sunloopchan]
	dec	dword [eax+4]
	jnz	_83
	push	eax
	call	bbGCFree
	add	esp,4
_83:
	mov	dword [bb_sunloopchan],ebx
	push	_84
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_85
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_86
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_87
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_88
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_89
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_90
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_91
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_92
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_93
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_94
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_95
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_96
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_97
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_98
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_99
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_100
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_101
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_102
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_103
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_104
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_105
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_106
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_107
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_108
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_109
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_110
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_111
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_112
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_113
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_114
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_115
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_116
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_117
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_118
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_119
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_120
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_121
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_122
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_47:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_LoadSounds:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],bbEmptyString
	push	ebp
	push	_565
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_175
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],bbEmptyString
	push	_177
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [bb_soundset]
	cmp	eax,1
	je	_180
	push	ebp
	push	_182
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_181
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_3
	call	dword [bbOnDebugLeaveScope]
	jmp	_179
_180:
	push	ebp
	push	_184
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_183
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_2
	call	dword [bbOnDebugLeaveScope]
_179:
	push	_185
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme_born_snd]
	dec	dword [eax+4]
	jnz	_189
	push	eax
	call	bbGCFree
	add	esp,4
_189:
	mov	dword [bb_nme_born_snd],ebx
	push	_190
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme1_born_snd]
	dec	dword [eax+4]
	jnz	_194
	push	eax
	call	bbGCFree
	add	esp,4
_194:
	mov	dword [bb_nme1_born_snd],ebx
	push	_195
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme2_born_snd]
	dec	dword [eax+4]
	jnz	_199
	push	eax
	call	bbGCFree
	add	esp,4
_199:
	mov	dword [bb_nme2_born_snd],ebx
	push	_200
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme3_born_snd]
	dec	dword [eax+4]
	jnz	_204
	push	eax
	call	bbGCFree
	add	esp,4
_204:
	mov	dword [bb_nme3_born_snd],ebx
	push	_205
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme4_born_snd]
	dec	dword [eax+4]
	jnz	_209
	push	eax
	call	bbGCFree
	add	esp,4
_209:
	mov	dword [bb_nme4_born_snd],ebx
	push	_210
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_born_snd]
	dec	dword [eax+4]
	jnz	_214
	push	eax
	call	bbGCFree
	add	esp,4
_214:
	mov	dword [bb_nme5_born_snd],ebx
	push	_215
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_loop_snd]
	dec	dword [eax+4]
	jnz	_219
	push	eax
	call	bbGCFree
	add	esp,4
_219:
	mov	dword [bb_nme5_loop_snd],ebx
	push	_220
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_shrink_snd]
	dec	dword [eax+4]
	jnz	_224
	push	eax
	call	bbGCFree
	add	esp,4
_224:
	mov	dword [bb_nme5_shrink_snd],ebx
	push	_225
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_grow_snd]
	dec	dword [eax+4]
	jnz	_229
	push	eax
	call	bbGCFree
	add	esp,4
_229:
	mov	dword [bb_nme5_grow_snd],ebx
	push	_230
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_explode_snd]
	dec	dword [eax+4]
	jnz	_234
	push	eax
	call	bbGCFree
	add	esp,4
_234:
	mov	dword [bb_nme5_explode_snd],ebx
	push	_235
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme5_killed_snd]
	dec	dword [eax+4]
	jnz	_239
	push	eax
	call	bbGCFree
	add	esp,4
_239:
	mov	dword [bb_nme5_killed_snd],ebx
	push	_240
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme6_born_snd]
	dec	dword [eax+4]
	jnz	_244
	push	eax
	call	bbGCFree
	add	esp,4
_244:
	mov	dword [bb_nme6_born_snd],ebx
	push	_245
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme6_tailexplode_snd]
	dec	dword [eax+4]
	jnz	_249
	push	eax
	call	bbGCFree
	add	esp,4
_249:
	mov	dword [bb_nme6_tailexplode_snd],ebx
	push	_250
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme6_tailhit_snd]
	dec	dword [eax+4]
	jnz	_254
	push	eax
	call	bbGCFree
	add	esp,4
_254:
	mov	dword [bb_nme6_tailhit_snd],ebx
	push	_255
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme7_born_snd]
	dec	dword [eax+4]
	jnz	_259
	push	eax
	call	bbGCFree
	add	esp,4
_259:
	mov	dword [bb_nme7_born_snd],ebx
	push	_260
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme7_shield_snd]
	dec	dword [eax+4]
	jnz	_264
	push	eax
	call	bbGCFree
	add	esp,4
_264:
	mov	dword [bb_nme7_shield_snd],ebx
	push	_265
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_nme8_born_snd]
	dec	dword [eax+4]
	jnz	_269
	push	eax
	call	bbGCFree
	add	esp,4
_269:
	mov	dword [bb_nme8_born_snd],ebx
	push	_270
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_ge_born_snd]
	dec	dword [eax+4]
	jnz	_274
	push	eax
	call	bbGCFree
	add	esp,4
_274:
	mov	dword [bb_ge_born_snd],ebx
	push	_275
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_ge_hit_snd]
	dec	dword [eax+4]
	jnz	_279
	push	eax
	call	bbGCFree
	add	esp,4
_279:
	mov	dword [bb_ge_hit_snd],ebx
	push	_280
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_ge_killed_snd]
	dec	dword [eax+4]
	jnz	_284
	push	eax
	call	bbGCFree
	add	esp,4
_284:
	mov	dword [bb_ge_killed_snd],ebx
	push	_285
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_le_born_snd]
	dec	dword [eax+4]
	jnz	_289
	push	eax
	call	bbGCFree
	add	esp,4
_289:
	mov	dword [bb_le_born_snd],ebx
	push	_290
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_le_hit_snd]
	dec	dword [eax+4]
	jnz	_294
	push	eax
	call	bbGCFree
	add	esp,4
_294:
	mov	dword [bb_le_hit_snd],ebx
	push	_295
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_le_killed_snd]
	dec	dword [eax+4]
	jnz	_299
	push	eax
	call	bbGCFree
	add	esp,4
_299:
	mov	dword [bb_le_killed_snd],ebx
	push	_300
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_pu_collect_snd]
	dec	dword [eax+4]
	jnz	_304
	push	eax
	call	bbGCFree
	add	esp,4
_304:
	mov	dword [bb_pu_collect_snd],ebx
	push	_305
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_get_ready_snd]
	dec	dword [eax+4]
	jnz	_309
	push	eax
	call	bbGCFree
	add	esp,4
_309:
	mov	dword [bb_get_ready_snd],ebx
	push	_310
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_player_hit_snd]
	dec	dword [eax+4]
	jnz	_314
	push	eax
	call	bbGCFree
	add	esp,4
_314:
	mov	dword [bb_player_hit_snd],ebx
	push	_315
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_shot_born_snd]
	dec	dword [eax+4]
	jnz	_319
	push	eax
	call	bbGCFree
	add	esp,4
_319:
	mov	dword [bb_shot_born_snd],ebx
	push	_320
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_shot_hit_wall_snd]
	dec	dword [eax+4]
	jnz	_324
	push	eax
	call	bbGCFree
	add	esp,4
_324:
	mov	dword [bb_shot_hit_wall_snd],ebx
	push	_325
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_game_over_snd]
	dec	dword [eax+4]
	jnz	_329
	push	eax
	call	bbGCFree
	add	esp,4
_329:
	mov	dword [bb_game_over_snd],ebx
	push	_330
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_super_bomb_snd]
	dec	dword [eax+4]
	jnz	_334
	push	eax
	call	bbGCFree
	add	esp,4
_334:
	mov	dword [bb_super_bomb_snd],ebx
	push	_335
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_extra_life_snd]
	dec	dword [eax+4]
	jnz	_339
	push	eax
	call	bbGCFree
	add	esp,4
_339:
	mov	dword [bb_extra_life_snd],ebx
	push	_340
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_extra_bomb_snd]
	dec	dword [eax+4]
	jnz	_344
	push	eax
	call	bbGCFree
	add	esp,4
_344:
	mov	dword [bb_extra_bomb_snd],ebx
	push	_345
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_multiplier_increase_snd]
	dec	dword [eax+4]
	jnz	_349
	push	eax
	call	bbGCFree
	add	esp,4
_349:
	mov	dword [bb_multiplier_increase_snd],ebx
	push	_350
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_bonus_born_snd]
	dec	dword [eax+4]
	jnz	_354
	push	eax
	call	bbGCFree
	add	esp,4
_354:
	mov	dword [bb_bonus_born_snd],ebx
	push	_355
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_high_score_snd]
	dec	dword [eax+4]
	jnz	_359
	push	eax
	call	bbGCFree
	add	esp,4
_359:
	mov	dword [bb_high_score_snd],ebx
	push	_360
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_quarkhitsound]
	dec	dword [eax+4]
	jnz	_364
	push	eax
	call	bbGCFree
	add	esp,4
_364:
	mov	dword [bb_quarkhitsound],ebx
	push	_365
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_quarkhit2sound]
	dec	dword [eax+4]
	jnz	_369
	push	eax
	call	bbGCFree
	add	esp,4
_369:
	mov	dword [bb_quarkhit2sound],ebx
	push	_370
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [bb_shieldwarningsnd]
	dec	dword [eax+4]
	jnz	_374
	push	eax
	call	bbGCFree
	add	esp,4
_374:
	mov	dword [bb_shieldwarningsnd],ebx
	push	_375
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_4
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme_born_snd]
	dec	dword [eax+4]
	jnz	_379
	push	eax
	call	bbGCFree
	add	esp,4
_379:
	mov	dword [bb_nme_born_snd],ebx
	push	_380
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_5
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme1_born_snd]
	dec	dword [eax+4]
	jnz	_384
	push	eax
	call	bbGCFree
	add	esp,4
_384:
	mov	dword [bb_nme1_born_snd],ebx
	push	_385
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_6
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme2_born_snd]
	dec	dword [eax+4]
	jnz	_389
	push	eax
	call	bbGCFree
	add	esp,4
_389:
	mov	dword [bb_nme2_born_snd],ebx
	push	_390
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_7
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme3_born_snd]
	dec	dword [eax+4]
	jnz	_394
	push	eax
	call	bbGCFree
	add	esp,4
_394:
	mov	dword [bb_nme3_born_snd],ebx
	push	_395
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_8
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme4_born_snd]
	dec	dword [eax+4]
	jnz	_399
	push	eax
	call	bbGCFree
	add	esp,4
_399:
	mov	dword [bb_nme4_born_snd],ebx
	push	_400
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_9
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_born_snd]
	dec	dword [eax+4]
	jnz	_404
	push	eax
	call	bbGCFree
	add	esp,4
_404:
	mov	dword [bb_nme5_born_snd],ebx
	push	_405
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_10
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_loop_snd]
	dec	dword [eax+4]
	jnz	_409
	push	eax
	call	bbGCFree
	add	esp,4
_409:
	mov	dword [bb_nme5_loop_snd],ebx
	push	_410
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_11
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_shrink_snd]
	dec	dword [eax+4]
	jnz	_414
	push	eax
	call	bbGCFree
	add	esp,4
_414:
	mov	dword [bb_nme5_shrink_snd],ebx
	push	_415
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_12
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_grow_snd]
	dec	dword [eax+4]
	jnz	_419
	push	eax
	call	bbGCFree
	add	esp,4
_419:
	mov	dword [bb_nme5_grow_snd],ebx
	push	_420
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_13
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_explode_snd]
	dec	dword [eax+4]
	jnz	_424
	push	eax
	call	bbGCFree
	add	esp,4
_424:
	mov	dword [bb_nme5_explode_snd],ebx
	push	_425
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_14
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme5_killed_snd]
	dec	dword [eax+4]
	jnz	_429
	push	eax
	call	bbGCFree
	add	esp,4
_429:
	mov	dword [bb_nme5_killed_snd],ebx
	push	_430
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_15
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme6_born_snd]
	dec	dword [eax+4]
	jnz	_434
	push	eax
	call	bbGCFree
	add	esp,4
_434:
	mov	dword [bb_nme6_born_snd],ebx
	push	_435
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_16
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme6_tailexplode_snd]
	dec	dword [eax+4]
	jnz	_439
	push	eax
	call	bbGCFree
	add	esp,4
_439:
	mov	dword [bb_nme6_tailexplode_snd],ebx
	push	_440
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_17
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme6_tailhit_snd]
	dec	dword [eax+4]
	jnz	_444
	push	eax
	call	bbGCFree
	add	esp,4
_444:
	mov	dword [bb_nme6_tailhit_snd],ebx
	push	_445
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_18
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme7_born_snd]
	dec	dword [eax+4]
	jnz	_449
	push	eax
	call	bbGCFree
	add	esp,4
_449:
	mov	dword [bb_nme7_born_snd],ebx
	push	_450
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_19
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme7_shield_snd]
	dec	dword [eax+4]
	jnz	_454
	push	eax
	call	bbGCFree
	add	esp,4
_454:
	mov	dword [bb_nme7_shield_snd],ebx
	push	_455
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_20
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_nme8_born_snd]
	dec	dword [eax+4]
	jnz	_459
	push	eax
	call	bbGCFree
	add	esp,4
_459:
	mov	dword [bb_nme8_born_snd],ebx
	push	_460
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_21
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_ge_born_snd]
	dec	dword [eax+4]
	jnz	_464
	push	eax
	call	bbGCFree
	add	esp,4
_464:
	mov	dword [bb_ge_born_snd],ebx
	push	_465
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_22
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_ge_hit_snd]
	dec	dword [eax+4]
	jnz	_469
	push	eax
	call	bbGCFree
	add	esp,4
_469:
	mov	dword [bb_ge_hit_snd],ebx
	push	_470
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_23
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_ge_killed_snd]
	dec	dword [eax+4]
	jnz	_474
	push	eax
	call	bbGCFree
	add	esp,4
_474:
	mov	dword [bb_ge_killed_snd],ebx
	push	_475
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_24
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_le_born_snd]
	dec	dword [eax+4]
	jnz	_479
	push	eax
	call	bbGCFree
	add	esp,4
_479:
	mov	dword [bb_le_born_snd],ebx
	push	_480
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_25
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_le_hit_snd]
	dec	dword [eax+4]
	jnz	_484
	push	eax
	call	bbGCFree
	add	esp,4
_484:
	mov	dword [bb_le_hit_snd],ebx
	push	_485
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_26
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_le_killed_snd]
	dec	dword [eax+4]
	jnz	_489
	push	eax
	call	bbGCFree
	add	esp,4
_489:
	mov	dword [bb_le_killed_snd],ebx
	push	_490
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_27
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_pu_collect_snd]
	dec	dword [eax+4]
	jnz	_494
	push	eax
	call	bbGCFree
	add	esp,4
_494:
	mov	dword [bb_pu_collect_snd],ebx
	push	_495
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_28
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_get_ready_snd]
	dec	dword [eax+4]
	jnz	_499
	push	eax
	call	bbGCFree
	add	esp,4
_499:
	mov	dword [bb_get_ready_snd],ebx
	push	_500
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_29
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_player_hit_snd]
	dec	dword [eax+4]
	jnz	_504
	push	eax
	call	bbGCFree
	add	esp,4
_504:
	mov	dword [bb_player_hit_snd],ebx
	push	_505
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_30
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_shot_born_snd]
	dec	dword [eax+4]
	jnz	_509
	push	eax
	call	bbGCFree
	add	esp,4
_509:
	mov	dword [bb_shot_born_snd],ebx
	push	_510
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_31
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_shot_hit_wall_snd]
	dec	dword [eax+4]
	jnz	_514
	push	eax
	call	bbGCFree
	add	esp,4
_514:
	mov	dword [bb_shot_hit_wall_snd],ebx
	push	_515
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_32
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_game_over_snd]
	dec	dword [eax+4]
	jnz	_519
	push	eax
	call	bbGCFree
	add	esp,4
_519:
	mov	dword [bb_game_over_snd],ebx
	push	_520
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_33
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_super_bomb_snd]
	dec	dword [eax+4]
	jnz	_524
	push	eax
	call	bbGCFree
	add	esp,4
_524:
	mov	dword [bb_super_bomb_snd],ebx
	push	_525
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_34
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_extra_life_snd]
	dec	dword [eax+4]
	jnz	_529
	push	eax
	call	bbGCFree
	add	esp,4
_529:
	mov	dword [bb_extra_life_snd],ebx
	push	_530
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_35
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_extra_bomb_snd]
	dec	dword [eax+4]
	jnz	_534
	push	eax
	call	bbGCFree
	add	esp,4
_534:
	mov	dword [bb_extra_bomb_snd],ebx
	push	_535
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_36
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_multiplier_increase_snd]
	dec	dword [eax+4]
	jnz	_539
	push	eax
	call	bbGCFree
	add	esp,4
_539:
	mov	dword [bb_multiplier_increase_snd],ebx
	push	_540
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_37
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_bonus_born_snd]
	dec	dword [eax+4]
	jnz	_544
	push	eax
	call	bbGCFree
	add	esp,4
_544:
	mov	dword [bb_bonus_born_snd],ebx
	push	_545
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_27
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_high_score_snd]
	dec	dword [eax+4]
	jnz	_549
	push	eax
	call	bbGCFree
	add	esp,4
_549:
	mov	dword [bb_high_score_snd],ebx
	push	_550
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_38
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_quarkhitsound]
	dec	dword [eax+4]
	jnz	_554
	push	eax
	call	bbGCFree
	add	esp,4
_554:
	mov	dword [bb_quarkhitsound],ebx
	push	_555
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_39
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_quarkhit2sound]
	dec	dword [eax+4]
	jnz	_559
	push	eax
	call	bbGCFree
	add	esp,4
_559:
	mov	dword [bb_quarkhit2sound],ebx
	push	_560
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_40
	push	dword [ebp-4]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [bb_shieldwarningsnd]
	dec	dword [eax+4]
	jnz	_564
	push	eax
	call	bbGCFree
	add	esp,4
_564:
	mov	dword [bb_shieldwarningsnd],ebx
	mov	ebx,0
_49:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_PlaySound2:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],bbNullObject
	push	ebp
	push	_585
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_569
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],bbNullObject
	push	_571
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [bb_sfxvol]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_572
	mov	eax,dword [ebp-4]
	cmp	eax,bbNullObject
	setne	al
	movzx	eax,al
_572:
	cmp	eax,0
	je	_574
	push	ebp
	push	_583
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_575
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	bbNullObject
	push	dword [ebp-4]
	call	brl_audio_CueSound
	add	esp,8
	mov	dword [ebp-20],eax
	push	_576
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_577
	push	ebp
	push	_579
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_578
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-20]
	call	brl_audio_SetChannelRate
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_577:
	push	_580
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-20]
	call	brl_audio_SetChannelPan
	add	esp,8
	push	_581
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [bb_sfxvol]
	fmul	dword [ebp-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	call	brl_audio_SetChannelVolume
	add	esp,8
	push	_582
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	brl_audio_ResumeChannel
	add	esp,4
	call	dword [bbOnDebugLeaveScope]
_574:
	push	_584
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
_55:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SetPanAndVolume:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_600
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_592
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],bbNullObject
	je	_593
	push	ebp
	push	_599
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_594
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [bb_sfxvol]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_595
	push	ebp
	push	_598
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_596
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	brl_audio_SetChannelPan
	add	esp,8
	push	_597
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	fld	dword [bb_sfxvol]
	fmul	dword [ebp-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	brl_audio_SetChannelVolume
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_595:
	call	dword [bbOnDebugLeaveScope]
_593:
	mov	ebx,0
_60:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_AdjustVolume:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_615
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_602
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_604
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	jmp	_605
_43:
	push	ebp
	push	_614
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_606
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_608
	call	brl_blitz_ArrayBoundsError
_608:
	mov	eax,dword [bb_sunloopchan]
	cmp	dword [eax+ebx*4+24],bbNullObject
	je	_609
	push	ebp
	push	_613
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_610
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_612
	call	brl_blitz_ArrayBoundsError
_612:
	push	dword [bb_sfxvol]
	mov	eax,dword [bb_sunloopchan]
	push	dword [eax+ebx*4+24]
	call	brl_audio_SetChannelVolume
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_609:
	call	dword [bbOnDebugLeaveScope]
_41:
	add	dword [ebp-4],1
_605:
	cmp	dword [ebp-4],7
	jle	_43
_42:
	mov	ebx,0
_62:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_StopLoopingSounds:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	push	ebp
	push	_639
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_618
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_620
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	jmp	_621
_46:
	push	ebp
	push	_638
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_622
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_624
	call	brl_blitz_ArrayBoundsError
_624:
	mov	eax,dword [bb_sunloopchan]
	cmp	dword [eax+ebx*4+24],bbNullObject
	je	_625
	push	ebp
	push	_637
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_626
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_628
	call	brl_blitz_ArrayBoundsError
_628:
	mov	eax,dword [bb_sunloopchan]
	push	dword [eax+ebx*4+24]
	call	brl_audio_StopChannel
	add	esp,4
	push	_629
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_631
	call	brl_blitz_ArrayBoundsError
_631:
	mov	esi,dword [bb_sunloopchan]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_636
	push	eax
	call	bbGCFree
	add	esp,4
_636:
	mov	dword [esi+24],ebx
	call	dword [bbOnDebugLeaveScope]
_625:
	call	dword [bbOnDebugLeaveScope]
_44:
	add	dword [ebp-4],1
_621:
	cmp	dword [ebp-4],7
	jle	_46
_45:
	mov	ebx,0
_64:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_StartMusic:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_641
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
_67:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_StopMusic:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_644
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
_69:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SetMusicVolume:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_646
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
_71:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_173:
	dd	0
_124:
	db	"sound",0
_125:
	db	"sfxvol",0
_126:
	db	"f",0
	align	4
bb_sfxvol:
	dd	0x3f000000
_127:
	db	"musicvol",0
	align	4
bb_musicvol:
	dd	0x3f000000
_128:
	db	"musicchannel",0
_129:
	db	":brl.audio.TChannel",0
	align	4
bb_musicchannel:
	dd	bbNullObject
_130:
	db	"sunloopchan",0
_131:
	db	"[]:brl.audio.TChannel",0
	align	4
bb_sunloopchan:
	dd	bbEmptyArray
_132:
	db	"soundset",0
_133:
	db	"i",0
	align	4
bb_soundset:
	dd	0
_134:
	db	"nme_born_snd",0
_135:
	db	":brl.audio.TSound",0
	align	4
bb_nme_born_snd:
	dd	bbNullObject
_136:
	db	"nme1_born_snd",0
	align	4
bb_nme1_born_snd:
	dd	bbNullObject
_137:
	db	"nme2_born_snd",0
	align	4
bb_nme2_born_snd:
	dd	bbNullObject
_138:
	db	"nme3_born_snd",0
	align	4
bb_nme3_born_snd:
	dd	bbNullObject
_139:
	db	"nme4_born_snd",0
	align	4
bb_nme4_born_snd:
	dd	bbNullObject
_140:
	db	"nme5_born_snd",0
	align	4
bb_nme5_born_snd:
	dd	bbNullObject
_141:
	db	"nme5_loop_snd",0
	align	4
bb_nme5_loop_snd:
	dd	bbNullObject
_142:
	db	"nme5_shrink_snd",0
	align	4
bb_nme5_shrink_snd:
	dd	bbNullObject
_143:
	db	"nme5_grow_snd",0
	align	4
bb_nme5_grow_snd:
	dd	bbNullObject
_144:
	db	"nme5_explode_snd",0
	align	4
bb_nme5_explode_snd:
	dd	bbNullObject
_145:
	db	"nme5_killed_snd",0
	align	4
bb_nme5_killed_snd:
	dd	bbNullObject
_146:
	db	"nme6_born_snd",0
	align	4
bb_nme6_born_snd:
	dd	bbNullObject
_147:
	db	"nme6_tailexplode_snd",0
	align	4
bb_nme6_tailexplode_snd:
	dd	bbNullObject
_148:
	db	"nme6_tailhit_snd",0
	align	4
bb_nme6_tailhit_snd:
	dd	bbNullObject
_149:
	db	"nme7_born_snd",0
	align	4
bb_nme7_born_snd:
	dd	bbNullObject
_150:
	db	"nme7_shield_snd",0
	align	4
bb_nme7_shield_snd:
	dd	bbNullObject
_151:
	db	"nme8_born_snd",0
	align	4
bb_nme8_born_snd:
	dd	bbNullObject
_152:
	db	"ge_born_snd",0
	align	4
bb_ge_born_snd:
	dd	bbNullObject
_153:
	db	"ge_hit_snd",0
	align	4
bb_ge_hit_snd:
	dd	bbNullObject
_154:
	db	"ge_killed_snd",0
	align	4
bb_ge_killed_snd:
	dd	bbNullObject
_155:
	db	"le_born_snd",0
	align	4
bb_le_born_snd:
	dd	bbNullObject
_156:
	db	"le_hit_snd",0
	align	4
bb_le_hit_snd:
	dd	bbNullObject
_157:
	db	"le_killed_snd",0
	align	4
bb_le_killed_snd:
	dd	bbNullObject
_158:
	db	"pu_collect_snd",0
	align	4
bb_pu_collect_snd:
	dd	bbNullObject
_159:
	db	"get_ready_snd",0
	align	4
bb_get_ready_snd:
	dd	bbNullObject
_160:
	db	"player_hit_snd",0
	align	4
bb_player_hit_snd:
	dd	bbNullObject
_161:
	db	"shot_born_snd",0
	align	4
bb_shot_born_snd:
	dd	bbNullObject
_162:
	db	"shot_hit_wall_snd",0
	align	4
bb_shot_hit_wall_snd:
	dd	bbNullObject
_163:
	db	"game_over_snd",0
	align	4
bb_game_over_snd:
	dd	bbNullObject
_164:
	db	"super_bomb_snd",0
	align	4
bb_super_bomb_snd:
	dd	bbNullObject
_165:
	db	"extra_life_snd",0
	align	4
bb_extra_life_snd:
	dd	bbNullObject
_166:
	db	"extra_bomb_snd",0
	align	4
bb_extra_bomb_snd:
	dd	bbNullObject
_167:
	db	"multiplier_increase_snd",0
	align	4
bb_multiplier_increase_snd:
	dd	bbNullObject
_168:
	db	"bonus_born_snd",0
	align	4
bb_bonus_born_snd:
	dd	bbNullObject
_169:
	db	"high_score_snd",0
	align	4
bb_high_score_snd:
	dd	bbNullObject
_170:
	db	"quarkhitsound",0
	align	4
bb_quarkhitsound:
	dd	bbNullObject
_171:
	db	"quarkhit2sound",0
	align	4
bb_quarkhit2sound:
	dd	bbNullObject
_172:
	db	"shieldwarningsnd",0
	align	4
bb_shieldwarningsnd:
	dd	bbNullObject
	align	4
_123:
	dd	1
	dd	_124
	dd	4
	dd	_125
	dd	_126
	dd	bb_sfxvol
	dd	4
	dd	_127
	dd	_126
	dd	bb_musicvol
	dd	4
	dd	_128
	dd	_129
	dd	bb_musicchannel
	dd	4
	dd	_130
	dd	_131
	dd	bb_sunloopchan
	dd	4
	dd	_132
	dd	_133
	dd	bb_soundset
	dd	4
	dd	_134
	dd	_135
	dd	bb_nme_born_snd
	dd	4
	dd	_136
	dd	_135
	dd	bb_nme1_born_snd
	dd	4
	dd	_137
	dd	_135
	dd	bb_nme2_born_snd
	dd	4
	dd	_138
	dd	_135
	dd	bb_nme3_born_snd
	dd	4
	dd	_139
	dd	_135
	dd	bb_nme4_born_snd
	dd	4
	dd	_140
	dd	_135
	dd	bb_nme5_born_snd
	dd	4
	dd	_141
	dd	_135
	dd	bb_nme5_loop_snd
	dd	4
	dd	_142
	dd	_135
	dd	bb_nme5_shrink_snd
	dd	4
	dd	_143
	dd	_135
	dd	bb_nme5_grow_snd
	dd	4
	dd	_144
	dd	_135
	dd	bb_nme5_explode_snd
	dd	4
	dd	_145
	dd	_135
	dd	bb_nme5_killed_snd
	dd	4
	dd	_146
	dd	_135
	dd	bb_nme6_born_snd
	dd	4
	dd	_147
	dd	_135
	dd	bb_nme6_tailexplode_snd
	dd	4
	dd	_148
	dd	_135
	dd	bb_nme6_tailhit_snd
	dd	4
	dd	_149
	dd	_135
	dd	bb_nme7_born_snd
	dd	4
	dd	_150
	dd	_135
	dd	bb_nme7_shield_snd
	dd	4
	dd	_151
	dd	_135
	dd	bb_nme8_born_snd
	dd	4
	dd	_152
	dd	_135
	dd	bb_ge_born_snd
	dd	4
	dd	_153
	dd	_135
	dd	bb_ge_hit_snd
	dd	4
	dd	_154
	dd	_135
	dd	bb_ge_killed_snd
	dd	4
	dd	_155
	dd	_135
	dd	bb_le_born_snd
	dd	4
	dd	_156
	dd	_135
	dd	bb_le_hit_snd
	dd	4
	dd	_157
	dd	_135
	dd	bb_le_killed_snd
	dd	4
	dd	_158
	dd	_135
	dd	bb_pu_collect_snd
	dd	4
	dd	_159
	dd	_135
	dd	bb_get_ready_snd
	dd	4
	dd	_160
	dd	_135
	dd	bb_player_hit_snd
	dd	4
	dd	_161
	dd	_135
	dd	bb_shot_born_snd
	dd	4
	dd	_162
	dd	_135
	dd	bb_shot_hit_wall_snd
	dd	4
	dd	_163
	dd	_135
	dd	bb_game_over_snd
	dd	4
	dd	_164
	dd	_135
	dd	bb_super_bomb_snd
	dd	4
	dd	_165
	dd	_135
	dd	bb_extra_life_snd
	dd	4
	dd	_166
	dd	_135
	dd	bb_extra_bomb_snd
	dd	4
	dd	_167
	dd	_135
	dd	bb_multiplier_increase_snd
	dd	4
	dd	_168
	dd	_135
	dd	bb_bonus_born_snd
	dd	4
	dd	_169
	dd	_135
	dd	bb_high_score_snd
	dd	4
	dd	_170
	dd	_135
	dd	bb_quarkhitsound
	dd	4
	dd	_171
	dd	_135
	dd	bb_quarkhit2sound
	dd	4
	dd	_172
	dd	_135
	dd	bb_shieldwarningsnd
	dd	0
_74:
	db	"/media/Acropolis/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/sound.bmx",0
	align	4
_73:
	dd	_74
	dd	10
	dd	1
	align	4
_75:
	dd	_74
	dd	11
	dd	1
	align	4
_76:
	dd	_74
	dd	17
	dd	1
	align	4
_77:
	dd	_74
	dd	21
	dd	1
	align	4
_78:
	dd	_74
	dd	22
	dd	1
_79:
	db	":brl.audio.TChannel",0
	align	4
_84:
	dd	_74
	dd	25
	dd	1
	align	4
_85:
	dd	_74
	dd	27
	dd	1
	align	4
_86:
	dd	_74
	dd	28
	dd	1
	align	4
_87:
	dd	_74
	dd	29
	dd	1
	align	4
_88:
	dd	_74
	dd	30
	dd	1
	align	4
_89:
	dd	_74
	dd	31
	dd	1
	align	4
_90:
	dd	_74
	dd	33
	dd	1
	align	4
_91:
	dd	_74
	dd	34
	dd	1
	align	4
_92:
	dd	_74
	dd	35
	dd	1
	align	4
_93:
	dd	_74
	dd	36
	dd	1
	align	4
_94:
	dd	_74
	dd	37
	dd	1
	align	4
_95:
	dd	_74
	dd	38
	dd	1
	align	4
_96:
	dd	_74
	dd	40
	dd	1
	align	4
_97:
	dd	_74
	dd	41
	dd	1
	align	4
_98:
	dd	_74
	dd	42
	dd	1
	align	4
_99:
	dd	_74
	dd	44
	dd	1
	align	4
_100:
	dd	_74
	dd	45
	dd	1
	align	4
_101:
	dd	_74
	dd	47
	dd	1
	align	4
_102:
	dd	_74
	dd	49
	dd	1
	align	4
_103:
	dd	_74
	dd	50
	dd	1
	align	4
_104:
	dd	_74
	dd	51
	dd	1
	align	4
_105:
	dd	_74
	dd	53
	dd	1
	align	4
_106:
	dd	_74
	dd	54
	dd	1
	align	4
_107:
	dd	_74
	dd	55
	dd	1
	align	4
_108:
	dd	_74
	dd	57
	dd	1
	align	4
_109:
	dd	_74
	dd	59
	dd	1
	align	4
_110:
	dd	_74
	dd	61
	dd	1
	align	4
_111:
	dd	_74
	dd	63
	dd	1
	align	4
_112:
	dd	_74
	dd	64
	dd	1
	align	4
_113:
	dd	_74
	dd	66
	dd	1
	align	4
_114:
	dd	_74
	dd	68
	dd	1
	align	4
_115:
	dd	_74
	dd	70
	dd	1
	align	4
_116:
	dd	_74
	dd	72
	dd	1
	align	4
_117:
	dd	_74
	dd	74
	dd	1
	align	4
_118:
	dd	_74
	dd	75
	dd	1
	align	4
_119:
	dd	_74
	dd	76
	dd	1
	align	4
_120:
	dd	_74
	dd	78
	dd	1
	align	4
_121:
	dd	_74
	dd	79
	dd	1
	align	4
_122:
	dd	_74
	dd	81
	dd	1
_566:
	db	"LoadSounds",0
_567:
	db	"folder",0
_568:
	db	"$",0
	align	4
_565:
	dd	1
	dd	_566
	dd	2
	dd	_567
	dd	_568
	dd	-4
	dd	0
	align	4
_175:
	dd	_74
	dd	85
	dd	2
	align	4
_177:
	dd	_74
	dd	87
	dd	2
	align	4
_182:
	dd	3
	dd	0
	dd	0
	align	4
_181:
	dd	_74
	dd	91
	dd	4
	align	4
_3:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	115,111,117,110,100,115,47
	align	4
_184:
	dd	3
	dd	0
	dd	0
	align	4
_183:
	dd	_74
	dd	89
	dd	4
	align	4
_2:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	115,111,117,110,100,115,47,117,115,101,114,47
	align	4
_185:
	dd	_74
	dd	94
	dd	2
	align	4
_190:
	dd	_74
	dd	95
	dd	2
	align	4
_195:
	dd	_74
	dd	96
	dd	2
	align	4
_200:
	dd	_74
	dd	97
	dd	2
	align	4
_205:
	dd	_74
	dd	98
	dd	2
	align	4
_210:
	dd	_74
	dd	100
	dd	2
	align	4
_215:
	dd	_74
	dd	101
	dd	2
	align	4
_220:
	dd	_74
	dd	102
	dd	2
	align	4
_225:
	dd	_74
	dd	103
	dd	2
	align	4
_230:
	dd	_74
	dd	104
	dd	2
	align	4
_235:
	dd	_74
	dd	105
	dd	2
	align	4
_240:
	dd	_74
	dd	107
	dd	2
	align	4
_245:
	dd	_74
	dd	108
	dd	2
	align	4
_250:
	dd	_74
	dd	109
	dd	2
	align	4
_255:
	dd	_74
	dd	111
	dd	2
	align	4
_260:
	dd	_74
	dd	112
	dd	2
	align	4
_265:
	dd	_74
	dd	114
	dd	2
	align	4
_270:
	dd	_74
	dd	116
	dd	2
	align	4
_275:
	dd	_74
	dd	117
	dd	2
	align	4
_280:
	dd	_74
	dd	118
	dd	2
	align	4
_285:
	dd	_74
	dd	120
	dd	2
	align	4
_290:
	dd	_74
	dd	121
	dd	2
	align	4
_295:
	dd	_74
	dd	122
	dd	2
	align	4
_300:
	dd	_74
	dd	124
	dd	2
	align	4
_305:
	dd	_74
	dd	126
	dd	2
	align	4
_310:
	dd	_74
	dd	128
	dd	2
	align	4
_315:
	dd	_74
	dd	130
	dd	2
	align	4
_320:
	dd	_74
	dd	131
	dd	2
	align	4
_325:
	dd	_74
	dd	133
	dd	2
	align	4
_330:
	dd	_74
	dd	135
	dd	2
	align	4
_335:
	dd	_74
	dd	137
	dd	2
	align	4
_340:
	dd	_74
	dd	139
	dd	2
	align	4
_345:
	dd	_74
	dd	141
	dd	2
	align	4
_350:
	dd	_74
	dd	142
	dd	2
	align	4
_355:
	dd	_74
	dd	143
	dd	2
	align	4
_360:
	dd	_74
	dd	145
	dd	2
	align	4
_365:
	dd	_74
	dd	146
	dd	2
	align	4
_370:
	dd	_74
	dd	147
	dd	2
	align	4
_375:
	dd	_74
	dd	150
	dd	2
	align	4
_4:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,51,46,119,97,118
	align	4
_380:
	dd	_74
	dd	151
	dd	2
	align	4
_5:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	112,111,112,50,46,119,97,118
	align	4
_385:
	dd	_74
	dd	152
	dd	2
	align	4
_6:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	112,111,112,51,46,119,97,118
	align	4
_390:
	dd	_74
	dd	153
	dd	2
	align	4
_7:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	115,110,97,107,101,49,46,119,97,118
	align	4
_395:
	dd	_74
	dd	154
	dd	2
	align	4
_8:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	103,114,117,110,116,98,111,114,110,46,119,97,118
	align	4
_400:
	dd	_74
	dd	156
	dd	2
	align	4
_9:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	115,117,110,49,46,119,97,118
	align	4
_405:
	dd	_74
	dd	157
	dd	2
	align	4
_10:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	98,111,110,100,108,111,111,112,46,119,97,118
	align	4
_410:
	dd	_74
	dd	158
	dd	2
	align	4
_11:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	115,117,110,104,105,116,49,46,119,97,118
	align	4
_415:
	dd	_74
	dd	159
	dd	2
	align	4
_12:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	115,105,122,122,108,101,49,46,119,97,118
	align	4
_420:
	dd	_74
	dd	160
	dd	2
	align	4
_13:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	115,117,110,101,120,112,46,119,97,118
	align	4
_425:
	dd	_74
	dd	161
	dd	2
	align	4
_14:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	69,120,112,108,111,49,46,119,97,118
	align	4
_430:
	dd	_74
	dd	163
	dd	2
	align	4
_15:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	119,101,101,46,119,97,118
	align	4
_435:
	dd	_74
	dd	164
	dd	2
	align	4
_16:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	115,110,97,107,101,104,105,116,46,119,97,118
	align	4
_440:
	dd	_74
	dd	165
	dd	2
	align	4
_17:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	116,97,105,108,104,105,116,46,119,97,118
	align	4
_445:
	dd	_74
	dd	167
	dd	2
	align	4
_18:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	119,97,114,110,49,46,119,97,118
	align	4
_450:
	dd	_74
	dd	168
	dd	2
	align	4
_19:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	115,104,105,101,108,100,49,46,119,97,118
	align	4
_455:
	dd	_74
	dd	170
	dd	2
	align	4
_20:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	98,117,116,116,101,114,102,108,121,46,119,97,118
	align	4
_460:
	dd	_74
	dd	172
	dd	2
	align	4
_21:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	99,97,116,46,119,97,118
	align	4
_465:
	dd	_74
	dd	173
	dd	2
	align	4
_22:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	103,101,110,104,105,116,49,46,119,97,118
	align	4
_470:
	dd	_74
	dd	174
	dd	2
	align	4
_23:
	dd	bbStringClass
	dd	2147483647
	dd	14
	dw	103,101,110,107,105,108,108,101,100,49,46,119,97,118
	align	4
_475:
	dd	_74
	dd	176
	dd	2
	align	4
_24:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,49,46,119,97,118
	align	4
_480:
	dd	_74
	dd	177
	dd	2
	align	4
_25:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	101,99,104,111,49,46,119,97,118
	align	4
_485:
	dd	_74
	dd	178
	dd	2
	align	4
_26:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	101,108,97,115,116,105,99,46,119,97,118
	align	4
_490:
	dd	_74
	dd	180
	dd	2
	align	4
_27:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	98,111,110,117,115,49,46,119,97,118
	align	4
_495:
	dd	_74
	dd	182
	dd	2
	align	4
_28:
	dd	bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,97,114,116,117,112,46,119,97,118
	align	4
_500:
	dd	_74
	dd	184
	dd	2
	align	4
_29:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	100,105,101,49,46,119,97,118
	align	4
_505:
	dd	_74
	dd	186
	dd	2
	align	4
_30:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	115,104,111,116,98,111,114,110,46,119,97,118
	align	4
_510:
	dd	_74
	dd	187
	dd	2
	align	4
_31:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	115,104,111,116,119,97,108,108,46,119,97,118
	align	4
_515:
	dd	_74
	dd	189
	dd	2
	align	4
_32:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	103,97,109,101,111,118,101,114,46,119,97,118
	align	4
_520:
	dd	_74
	dd	191
	dd	2
	align	4
_33:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	101,120,112,108,111,49,46,119,97,118
	align	4
_525:
	dd	_74
	dd	193
	dd	2
	align	4
_34:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	98,114,97,105,110,98,111,114,110,46,119,97,118
	align	4
_530:
	dd	_74
	dd	195
	dd	2
	align	4
_35:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,50,46,119,97,118
	align	4
_535:
	dd	_74
	dd	197
	dd	2
	align	4
_36:
	dd	bbStringClass
	dd	2147483647
	dd	10
	dw	98,111,110,117,115,50,46,119,97,118
	align	4
_540:
	dd	_74
	dd	198
	dd	2
	align	4
_37:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	98,111,110,117,115,98,111,114,110,46,119,97,118
	align	4
_545:
	dd	_74
	dd	199
	dd	2
	align	4
_550:
	dd	_74
	dd	201
	dd	2
	align	4
_38:
	dd	bbStringClass
	dd	2147483647
	dd	12
	dw	113,117,97,114,107,104,105,116,46,119,97,118
	align	4
_555:
	dd	_74
	dd	202
	dd	2
	align	4
_39:
	dd	bbStringClass
	dd	2147483647
	dd	13
	dw	113,117,97,114,107,104,105,116,50,46,119,97,118
	align	4
_560:
	dd	_74
	dd	204
	dd	2
	align	4
_40:
	dd	bbStringClass
	dd	2147483647
	dd	17
	dw	115,104,105,101,108,100,119,97,114,110,105,110,103,46,119,97
	dw	118
_586:
	db	"PlaySound2",0
_587:
	db	"snd",0
_588:
	db	"freq",0
_589:
	db	"pan",0
_590:
	db	"vol",0
_591:
	db	"ch",0
	align	4
_585:
	dd	1
	dd	_586
	dd	2
	dd	_587
	dd	_135
	dd	-4
	dd	2
	dd	_588
	dd	_126
	dd	-8
	dd	2
	dd	_589
	dd	_126
	dd	-12
	dd	2
	dd	_590
	dd	_126
	dd	-16
	dd	2
	dd	_591
	dd	_129
	dd	-20
	dd	0
	align	4
_569:
	dd	_74
	dd	211
	dd	2
	align	4
_571:
	dd	_74
	dd	213
	dd	2
	align	4
_583:
	dd	3
	dd	0
	dd	0
	align	4
_575:
	dd	_74
	dd	214
	dd	3
	align	4
_576:
	dd	_74
	dd	215
	dd	3
	align	4
_579:
	dd	3
	dd	0
	dd	0
	align	4
_578:
	dd	_74
	dd	216
	dd	4
	align	4
_580:
	dd	_74
	dd	218
	dd	3
	align	4
_581:
	dd	_74
	dd	219
	dd	3
	align	4
_582:
	dd	_74
	dd	220
	dd	3
	align	4
_584:
	dd	_74
	dd	222
	dd	2
_601:
	db	"SetPanAndVolume",0
	align	4
_600:
	dd	1
	dd	_601
	dd	2
	dd	_591
	dd	_129
	dd	-4
	dd	2
	dd	_589
	dd	_126
	dd	-8
	dd	2
	dd	_590
	dd	_126
	dd	-12
	dd	0
	align	4
_592:
	dd	_74
	dd	229
	dd	2
	align	4
_599:
	dd	3
	dd	0
	dd	0
	align	4
_594:
	dd	_74
	dd	230
	dd	3
	align	4
_598:
	dd	3
	dd	0
	dd	0
	align	4
_596:
	dd	_74
	dd	231
	dd	4
	align	4
_597:
	dd	_74
	dd	232
	dd	4
_616:
	db	"AdjustVolume",0
_617:
	db	"t",0
	align	4
_615:
	dd	1
	dd	_616
	dd	2
	dd	_617
	dd	_133
	dd	-4
	dd	0
	align	4
_602:
	dd	_74
	dd	241
	dd	2
	align	4
_604:
	dd	_74
	dd	243
	dd	2
	align	4
_614:
	dd	3
	dd	0
	dd	0
	align	4
_606:
	dd	_74
	dd	244
	dd	3
	align	4
_613:
	dd	3
	dd	0
	dd	0
	align	4
_610:
	dd	_74
	dd	245
	dd	4
_640:
	db	"StopLoopingSounds",0
	align	4
_639:
	dd	1
	dd	_640
	dd	2
	dd	_617
	dd	_133
	dd	-4
	dd	0
	align	4
_618:
	dd	_74
	dd	253
	dd	2
	align	4
_620:
	dd	_74
	dd	255
	dd	2
	align	4
_638:
	dd	3
	dd	0
	dd	0
	align	4
_622:
	dd	_74
	dd	256
	dd	3
	align	4
_637:
	dd	3
	dd	0
	dd	0
	align	4
_626:
	dd	_74
	dd	257
	dd	4
	align	4
_629:
	dd	_74
	dd	258
	dd	4
_642:
	db	"StartMusic",0
_643:
	db	"song",0
	align	4
_641:
	dd	1
	dd	_642
	dd	2
	dd	_643
	dd	_133
	dd	-4
	dd	0
_645:
	db	"StopMusic",0
	align	4
_644:
	dd	1
	dd	_645
	dd	0
_647:
	db	"SetMusicVolume",0
	align	4
_646:
	dd	1
	dd	_647
	dd	0
