	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_blitzmax_code_archief__spel__gridwars_bass
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_wavloader_wavloader
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringToCString
	extrn	_bb_BASS_ChannelGetAttributes
	extrn	_bb_BASS_ChannelGetLevel
	extrn	_bb_BASS_ChannelGetPosition
	extrn	_bb_BASS_ChannelIsActive
	extrn	_bb_BASS_ChannelPause
	extrn	_bb_BASS_ChannelPlay
	extrn	_bb_BASS_ChannelSetAttributes
	extrn	_bb_BASS_ChannelSetPosition
	extrn	_bb_BASS_ChannelStop
	extrn	_bb_BASS_ErrorGetCode
	extrn	_bb_BASS_Free
	extrn	_bb_BASS_Init
	extrn	_bb_BASS_MusicLoad
	extrn	_bb_BASS_StreamCreateFile
	extrn	_bb_BASS_StreamGetLength
	extrn	_bb_BASS_WMA_StreamCreateFile
	extrn	_brl_audio_CueSound
	extrn	_brl_audio_LoadSound
	extrn	_brl_audio_ResumeChannel
	extrn	_brl_audio_SetChannelPan
	extrn	_brl_audio_SetChannelRate
	extrn	_brl_audio_SetChannelVolume
	extrn	_brl_audio_StopChannel
	extrn	_brl_blitz_ArrayBoundsError
	public	___bb_blitzmax_code_archief__spel__gridwars_sound
	public	_bb_AdjustVolume
	public	_bb_LoadSounds
	public	_bb_PlaySound2
	public	_bb_SetMusicVolume
	public	_bb_SetPanAndVolume
	public	_bb_StartMusic
	public	_bb_StopLoopingSounds
	public	_bb_StopMusic
	public	_bb_bonus_born_snd
	public	_bb_extra_bomb_snd
	public	_bb_extra_life_snd
	public	_bb_game_over_snd
	public	_bb_ge_born_snd
	public	_bb_ge_hit_snd
	public	_bb_ge_killed_snd
	public	_bb_get_ready_snd
	public	_bb_high_score_snd
	public	_bb_le_born_snd
	public	_bb_le_hit_snd
	public	_bb_le_killed_snd
	public	_bb_multiplier_increase_snd
	public	_bb_musicchannel
	public	_bb_musicvol
	public	_bb_nme1_born_snd
	public	_bb_nme2_born_snd
	public	_bb_nme3_born_snd
	public	_bb_nme4_born_snd
	public	_bb_nme5_born_snd
	public	_bb_nme5_explode_snd
	public	_bb_nme5_grow_snd
	public	_bb_nme5_killed_snd
	public	_bb_nme5_loop_snd
	public	_bb_nme5_shrink_snd
	public	_bb_nme6_born_snd
	public	_bb_nme6_tailexplode_snd
	public	_bb_nme6_tailhit_snd
	public	_bb_nme7_born_snd
	public	_bb_nme7_shield_snd
	public	_bb_nme8_born_snd
	public	_bb_nme_born_snd
	public	_bb_player_hit_snd
	public	_bb_pu_collect_snd
	public	_bb_quarkhit2sound
	public	_bb_quarkhitsound
	public	_bb_sfxvol
	public	_bb_shieldwarningsnd
	public	_bb_shot_born_snd
	public	_bb_shot_hit_wall_snd
	public	_bb_soundset
	public	_bb_sunloopchan
	public	_bb_super_bomb_snd
	section	"code" code
___bb_blitzmax_code_archief__spel__gridwars_sound:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_600],0
	je	_601
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_601:
	mov	dword [_600],1
	push	ebp
	push	_141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_wavloader_wavloader
	call	___bb_blitzmax_code_archief__spel__gridwars_bass
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	8
	push	_97
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_sunloopchan]
	dec	dword [eax+4]
	jnz	_101
	push	eax
	call	_bbGCFree
	add	esp,4
_101:
	mov	dword [_bb_sunloopchan],ebx
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LoadSounds:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],_bbEmptyString
	push	ebp
	push	_992
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbEmptyString
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_soundset]
	cmp	eax,1
	je	_607
	push	ebp
	push	_609
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_18
	call	dword [_bbOnDebugLeaveScope]
	jmp	_606
_607:
	push	ebp
	push	_611
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_17
	call	dword [_bbOnDebugLeaveScope]
_606:
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme_born_snd]
	dec	dword [eax+4]
	jnz	_616
	push	eax
	call	_bbGCFree
	add	esp,4
_616:
	mov	dword [_bb_nme_born_snd],ebx
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme1_born_snd]
	dec	dword [eax+4]
	jnz	_621
	push	eax
	call	_bbGCFree
	add	esp,4
_621:
	mov	dword [_bb_nme1_born_snd],ebx
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme2_born_snd]
	dec	dword [eax+4]
	jnz	_626
	push	eax
	call	_bbGCFree
	add	esp,4
_626:
	mov	dword [_bb_nme2_born_snd],ebx
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme3_born_snd]
	dec	dword [eax+4]
	jnz	_631
	push	eax
	call	_bbGCFree
	add	esp,4
_631:
	mov	dword [_bb_nme3_born_snd],ebx
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme4_born_snd]
	dec	dword [eax+4]
	jnz	_636
	push	eax
	call	_bbGCFree
	add	esp,4
_636:
	mov	dword [_bb_nme4_born_snd],ebx
	push	_637
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_born_snd]
	dec	dword [eax+4]
	jnz	_641
	push	eax
	call	_bbGCFree
	add	esp,4
_641:
	mov	dword [_bb_nme5_born_snd],ebx
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_loop_snd]
	dec	dword [eax+4]
	jnz	_646
	push	eax
	call	_bbGCFree
	add	esp,4
_646:
	mov	dword [_bb_nme5_loop_snd],ebx
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_shrink_snd]
	dec	dword [eax+4]
	jnz	_651
	push	eax
	call	_bbGCFree
	add	esp,4
_651:
	mov	dword [_bb_nme5_shrink_snd],ebx
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_grow_snd]
	dec	dword [eax+4]
	jnz	_656
	push	eax
	call	_bbGCFree
	add	esp,4
_656:
	mov	dword [_bb_nme5_grow_snd],ebx
	push	_657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_explode_snd]
	dec	dword [eax+4]
	jnz	_661
	push	eax
	call	_bbGCFree
	add	esp,4
_661:
	mov	dword [_bb_nme5_explode_snd],ebx
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme5_killed_snd]
	dec	dword [eax+4]
	jnz	_666
	push	eax
	call	_bbGCFree
	add	esp,4
_666:
	mov	dword [_bb_nme5_killed_snd],ebx
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme6_born_snd]
	dec	dword [eax+4]
	jnz	_671
	push	eax
	call	_bbGCFree
	add	esp,4
_671:
	mov	dword [_bb_nme6_born_snd],ebx
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme6_tailexplode_snd]
	dec	dword [eax+4]
	jnz	_676
	push	eax
	call	_bbGCFree
	add	esp,4
_676:
	mov	dword [_bb_nme6_tailexplode_snd],ebx
	push	_677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme6_tailhit_snd]
	dec	dword [eax+4]
	jnz	_681
	push	eax
	call	_bbGCFree
	add	esp,4
_681:
	mov	dword [_bb_nme6_tailhit_snd],ebx
	push	_682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme7_born_snd]
	dec	dword [eax+4]
	jnz	_686
	push	eax
	call	_bbGCFree
	add	esp,4
_686:
	mov	dword [_bb_nme7_born_snd],ebx
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme7_shield_snd]
	dec	dword [eax+4]
	jnz	_691
	push	eax
	call	_bbGCFree
	add	esp,4
_691:
	mov	dword [_bb_nme7_shield_snd],ebx
	push	_692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nme8_born_snd]
	dec	dword [eax+4]
	jnz	_696
	push	eax
	call	_bbGCFree
	add	esp,4
_696:
	mov	dword [_bb_nme8_born_snd],ebx
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_ge_born_snd]
	dec	dword [eax+4]
	jnz	_701
	push	eax
	call	_bbGCFree
	add	esp,4
_701:
	mov	dword [_bb_ge_born_snd],ebx
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_ge_hit_snd]
	dec	dword [eax+4]
	jnz	_706
	push	eax
	call	_bbGCFree
	add	esp,4
_706:
	mov	dword [_bb_ge_hit_snd],ebx
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_ge_killed_snd]
	dec	dword [eax+4]
	jnz	_711
	push	eax
	call	_bbGCFree
	add	esp,4
_711:
	mov	dword [_bb_ge_killed_snd],ebx
	push	_712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_le_born_snd]
	dec	dword [eax+4]
	jnz	_716
	push	eax
	call	_bbGCFree
	add	esp,4
_716:
	mov	dword [_bb_le_born_snd],ebx
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_le_hit_snd]
	dec	dword [eax+4]
	jnz	_721
	push	eax
	call	_bbGCFree
	add	esp,4
_721:
	mov	dword [_bb_le_hit_snd],ebx
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_le_killed_snd]
	dec	dword [eax+4]
	jnz	_726
	push	eax
	call	_bbGCFree
	add	esp,4
_726:
	mov	dword [_bb_le_killed_snd],ebx
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pu_collect_snd]
	dec	dword [eax+4]
	jnz	_731
	push	eax
	call	_bbGCFree
	add	esp,4
_731:
	mov	dword [_bb_pu_collect_snd],ebx
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_get_ready_snd]
	dec	dword [eax+4]
	jnz	_736
	push	eax
	call	_bbGCFree
	add	esp,4
_736:
	mov	dword [_bb_get_ready_snd],ebx
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_player_hit_snd]
	dec	dword [eax+4]
	jnz	_741
	push	eax
	call	_bbGCFree
	add	esp,4
_741:
	mov	dword [_bb_player_hit_snd],ebx
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_shot_born_snd]
	dec	dword [eax+4]
	jnz	_746
	push	eax
	call	_bbGCFree
	add	esp,4
_746:
	mov	dword [_bb_shot_born_snd],ebx
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_shot_hit_wall_snd]
	dec	dword [eax+4]
	jnz	_751
	push	eax
	call	_bbGCFree
	add	esp,4
_751:
	mov	dword [_bb_shot_hit_wall_snd],ebx
	push	_752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_game_over_snd]
	dec	dword [eax+4]
	jnz	_756
	push	eax
	call	_bbGCFree
	add	esp,4
_756:
	mov	dword [_bb_game_over_snd],ebx
	push	_757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_super_bomb_snd]
	dec	dword [eax+4]
	jnz	_761
	push	eax
	call	_bbGCFree
	add	esp,4
_761:
	mov	dword [_bb_super_bomb_snd],ebx
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_extra_life_snd]
	dec	dword [eax+4]
	jnz	_766
	push	eax
	call	_bbGCFree
	add	esp,4
_766:
	mov	dword [_bb_extra_life_snd],ebx
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_extra_bomb_snd]
	dec	dword [eax+4]
	jnz	_771
	push	eax
	call	_bbGCFree
	add	esp,4
_771:
	mov	dword [_bb_extra_bomb_snd],ebx
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_multiplier_increase_snd]
	dec	dword [eax+4]
	jnz	_776
	push	eax
	call	_bbGCFree
	add	esp,4
_776:
	mov	dword [_bb_multiplier_increase_snd],ebx
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_bonus_born_snd]
	dec	dword [eax+4]
	jnz	_781
	push	eax
	call	_bbGCFree
	add	esp,4
_781:
	mov	dword [_bb_bonus_born_snd],ebx
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_high_score_snd]
	dec	dword [eax+4]
	jnz	_786
	push	eax
	call	_bbGCFree
	add	esp,4
_786:
	mov	dword [_bb_high_score_snd],ebx
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_quarkhitsound]
	dec	dword [eax+4]
	jnz	_791
	push	eax
	call	_bbGCFree
	add	esp,4
_791:
	mov	dword [_bb_quarkhitsound],ebx
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_quarkhit2sound]
	dec	dword [eax+4]
	jnz	_796
	push	eax
	call	_bbGCFree
	add	esp,4
_796:
	mov	dword [_bb_quarkhit2sound],ebx
	push	_797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_shieldwarningsnd]
	dec	dword [eax+4]
	jnz	_801
	push	eax
	call	_bbGCFree
	add	esp,4
_801:
	mov	dword [_bb_shieldwarningsnd],ebx
	push	_802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_19
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme_born_snd]
	dec	dword [eax+4]
	jnz	_806
	push	eax
	call	_bbGCFree
	add	esp,4
_806:
	mov	dword [_bb_nme_born_snd],ebx
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_20
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme1_born_snd]
	dec	dword [eax+4]
	jnz	_811
	push	eax
	call	_bbGCFree
	add	esp,4
_811:
	mov	dword [_bb_nme1_born_snd],ebx
	push	_812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_21
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme2_born_snd]
	dec	dword [eax+4]
	jnz	_816
	push	eax
	call	_bbGCFree
	add	esp,4
_816:
	mov	dword [_bb_nme2_born_snd],ebx
	push	_817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_22
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme3_born_snd]
	dec	dword [eax+4]
	jnz	_821
	push	eax
	call	_bbGCFree
	add	esp,4
_821:
	mov	dword [_bb_nme3_born_snd],ebx
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_23
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme4_born_snd]
	dec	dword [eax+4]
	jnz	_826
	push	eax
	call	_bbGCFree
	add	esp,4
_826:
	mov	dword [_bb_nme4_born_snd],ebx
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_24
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_born_snd]
	dec	dword [eax+4]
	jnz	_831
	push	eax
	call	_bbGCFree
	add	esp,4
_831:
	mov	dword [_bb_nme5_born_snd],ebx
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_25
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_loop_snd]
	dec	dword [eax+4]
	jnz	_836
	push	eax
	call	_bbGCFree
	add	esp,4
_836:
	mov	dword [_bb_nme5_loop_snd],ebx
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_26
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_shrink_snd]
	dec	dword [eax+4]
	jnz	_841
	push	eax
	call	_bbGCFree
	add	esp,4
_841:
	mov	dword [_bb_nme5_shrink_snd],ebx
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_27
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_grow_snd]
	dec	dword [eax+4]
	jnz	_846
	push	eax
	call	_bbGCFree
	add	esp,4
_846:
	mov	dword [_bb_nme5_grow_snd],ebx
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_28
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_explode_snd]
	dec	dword [eax+4]
	jnz	_851
	push	eax
	call	_bbGCFree
	add	esp,4
_851:
	mov	dword [_bb_nme5_explode_snd],ebx
	push	_852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_29
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme5_killed_snd]
	dec	dword [eax+4]
	jnz	_856
	push	eax
	call	_bbGCFree
	add	esp,4
_856:
	mov	dword [_bb_nme5_killed_snd],ebx
	push	_857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_30
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme6_born_snd]
	dec	dword [eax+4]
	jnz	_861
	push	eax
	call	_bbGCFree
	add	esp,4
_861:
	mov	dword [_bb_nme6_born_snd],ebx
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_31
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme6_tailexplode_snd]
	dec	dword [eax+4]
	jnz	_866
	push	eax
	call	_bbGCFree
	add	esp,4
_866:
	mov	dword [_bb_nme6_tailexplode_snd],ebx
	push	_867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_32
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme6_tailhit_snd]
	dec	dword [eax+4]
	jnz	_871
	push	eax
	call	_bbGCFree
	add	esp,4
_871:
	mov	dword [_bb_nme6_tailhit_snd],ebx
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_33
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme7_born_snd]
	dec	dword [eax+4]
	jnz	_876
	push	eax
	call	_bbGCFree
	add	esp,4
_876:
	mov	dword [_bb_nme7_born_snd],ebx
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_34
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme7_shield_snd]
	dec	dword [eax+4]
	jnz	_881
	push	eax
	call	_bbGCFree
	add	esp,4
_881:
	mov	dword [_bb_nme7_shield_snd],ebx
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_35
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nme8_born_snd]
	dec	dword [eax+4]
	jnz	_886
	push	eax
	call	_bbGCFree
	add	esp,4
_886:
	mov	dword [_bb_nme8_born_snd],ebx
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_36
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_ge_born_snd]
	dec	dword [eax+4]
	jnz	_891
	push	eax
	call	_bbGCFree
	add	esp,4
_891:
	mov	dword [_bb_ge_born_snd],ebx
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_37
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_ge_hit_snd]
	dec	dword [eax+4]
	jnz	_896
	push	eax
	call	_bbGCFree
	add	esp,4
_896:
	mov	dword [_bb_ge_hit_snd],ebx
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_38
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_ge_killed_snd]
	dec	dword [eax+4]
	jnz	_901
	push	eax
	call	_bbGCFree
	add	esp,4
_901:
	mov	dword [_bb_ge_killed_snd],ebx
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_39
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_le_born_snd]
	dec	dword [eax+4]
	jnz	_906
	push	eax
	call	_bbGCFree
	add	esp,4
_906:
	mov	dword [_bb_le_born_snd],ebx
	push	_907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_40
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_le_hit_snd]
	dec	dword [eax+4]
	jnz	_911
	push	eax
	call	_bbGCFree
	add	esp,4
_911:
	mov	dword [_bb_le_hit_snd],ebx
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_41
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_le_killed_snd]
	dec	dword [eax+4]
	jnz	_916
	push	eax
	call	_bbGCFree
	add	esp,4
_916:
	mov	dword [_bb_le_killed_snd],ebx
	push	_917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_42
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_pu_collect_snd]
	dec	dword [eax+4]
	jnz	_921
	push	eax
	call	_bbGCFree
	add	esp,4
_921:
	mov	dword [_bb_pu_collect_snd],ebx
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_43
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_get_ready_snd]
	dec	dword [eax+4]
	jnz	_926
	push	eax
	call	_bbGCFree
	add	esp,4
_926:
	mov	dword [_bb_get_ready_snd],ebx
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_44
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_player_hit_snd]
	dec	dword [eax+4]
	jnz	_931
	push	eax
	call	_bbGCFree
	add	esp,4
_931:
	mov	dword [_bb_player_hit_snd],ebx
	push	_932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_45
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_shot_born_snd]
	dec	dword [eax+4]
	jnz	_936
	push	eax
	call	_bbGCFree
	add	esp,4
_936:
	mov	dword [_bb_shot_born_snd],ebx
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_46
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_shot_hit_wall_snd]
	dec	dword [eax+4]
	jnz	_941
	push	eax
	call	_bbGCFree
	add	esp,4
_941:
	mov	dword [_bb_shot_hit_wall_snd],ebx
	push	_942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_47
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_game_over_snd]
	dec	dword [eax+4]
	jnz	_946
	push	eax
	call	_bbGCFree
	add	esp,4
_946:
	mov	dword [_bb_game_over_snd],ebx
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_48
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_super_bomb_snd]
	dec	dword [eax+4]
	jnz	_951
	push	eax
	call	_bbGCFree
	add	esp,4
_951:
	mov	dword [_bb_super_bomb_snd],ebx
	push	_952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_49
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_extra_life_snd]
	dec	dword [eax+4]
	jnz	_956
	push	eax
	call	_bbGCFree
	add	esp,4
_956:
	mov	dword [_bb_extra_life_snd],ebx
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_50
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_extra_bomb_snd]
	dec	dword [eax+4]
	jnz	_961
	push	eax
	call	_bbGCFree
	add	esp,4
_961:
	mov	dword [_bb_extra_bomb_snd],ebx
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_51
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_multiplier_increase_snd]
	dec	dword [eax+4]
	jnz	_966
	push	eax
	call	_bbGCFree
	add	esp,4
_966:
	mov	dword [_bb_multiplier_increase_snd],ebx
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_52
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_bonus_born_snd]
	dec	dword [eax+4]
	jnz	_971
	push	eax
	call	_bbGCFree
	add	esp,4
_971:
	mov	dword [_bb_bonus_born_snd],ebx
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_42
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_high_score_snd]
	dec	dword [eax+4]
	jnz	_976
	push	eax
	call	_bbGCFree
	add	esp,4
_976:
	mov	dword [_bb_high_score_snd],ebx
	push	_977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_53
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_quarkhitsound]
	dec	dword [eax+4]
	jnz	_981
	push	eax
	call	_bbGCFree
	add	esp,4
_981:
	mov	dword [_bb_quarkhitsound],ebx
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_54
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_quarkhit2sound]
	dec	dword [eax+4]
	jnz	_986
	push	eax
	call	_bbGCFree
	add	esp,4
_986:
	mov	dword [_bb_quarkhit2sound],ebx
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_55
	push	dword [ebp-4]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_shieldwarningsnd]
	dec	dword [eax+4]
	jnz	_991
	push	eax
	call	_bbGCFree
	add	esp,4
_991:
	mov	dword [_bb_shieldwarningsnd],ebx
	mov	ebx,0
_67:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PlaySound2:
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
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_1012
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	push	_998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_sfxvol]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_999
	mov	eax,dword [ebp-4]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_999:
	cmp	eax,0
	je	_1001
	push	ebp
	push	_1010
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [ebp-4]
	call	_brl_audio_CueSound
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1003
	call	dword [_bbOnDebugEnterStm]
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
	jne	_1004
	push	ebp
	push	_1006
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-20]
	call	_brl_audio_SetChannelRate
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1004:
	push	_1007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-20]
	call	_brl_audio_SetChannelPan
	add	esp,8
	push	_1008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_sfxvol]
	fmul	dword [ebp-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	call	_brl_audio_SetChannelVolume
	add	esp,8
	push	_1009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_audio_ResumeChannel
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1001:
	push	_1011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
_73:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SetPanAndVolume:
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
	push	_1028
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_1021
	push	ebp
	push	_1027
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_sfxvol]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1023
	push	ebp
	push	_1026
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_audio_SetChannelPan
	add	esp,8
	push	_1025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_sfxvol]
	fmul	dword [ebp-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_audio_SetChannelVolume
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1023:
	call	dword [_bbOnDebugLeaveScope]
_1021:
	mov	ebx,0
_78:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AdjustVolume:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_1043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_1032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	jmp	_1033
_58:
	push	ebp
	push	_1042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_1036
	call	_brl_blitz_ArrayBoundsError
_1036:
	mov	eax,dword [_bb_sunloopchan]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_1037
	push	ebp
	push	_1041
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_1040
	call	_brl_blitz_ArrayBoundsError
_1040:
	push	dword [_bb_sfxvol]
	mov	eax,dword [_bb_sunloopchan]
	push	dword [eax+ebx*4+24]
	call	_brl_audio_SetChannelVolume
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1037:
	call	dword [_bbOnDebugLeaveScope]
_56:
	add	dword [ebp-4],1
_1033:
	cmp	dword [ebp-4],7
	jle	_58
_57:
	mov	ebx,0
_80:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_StopLoopingSounds:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	push	ebp
	push	_1067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	jmp	_1049
_61:
	push	ebp
	push	_1066
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_1052
	call	_brl_blitz_ArrayBoundsError
_1052:
	mov	eax,dword [_bb_sunloopchan]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_1053
	push	ebp
	push	_1065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_1056
	call	_brl_blitz_ArrayBoundsError
_1056:
	mov	eax,dword [_bb_sunloopchan]
	push	dword [eax+ebx*4+24]
	call	_brl_audio_StopChannel
	add	esp,4
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_sunloopchan]
	cmp	ebx,dword [eax+20]
	jb	_1059
	call	_brl_blitz_ArrayBoundsError
_1059:
	mov	esi,dword [_bb_sunloopchan]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1064
	push	eax
	call	_bbGCFree
	add	esp,4
_1064:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1053:
	call	dword [_bbOnDebugLeaveScope]
_59:
	add	dword [ebp-4],1
_1049:
	cmp	dword [ebp-4],7
	jle	_61
_60:
	mov	ebx,0
_82:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_StartMusic:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
	push	ebp
	push	_1100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_musicchannel],0
	je	_1070
	push	ebp
	push	_1072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_85
_1070:
	push	_1073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_16
	push	_1075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	je	_1078
	cmp	eax,1
	je	_1079
	cmp	eax,2
	je	_1080
	jmp	_1077
_1078:
	push	ebp
	push	_1082
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_62
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1077
_1079:
	push	ebp
	push	_1084
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_63
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1077
_1080:
	push	ebp
	push	_1086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_64
	call	dword [_bbOnDebugLeaveScope]
_1077:
	push	_1087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_BASS_Free]
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	44100
	push	1
	call	dword [_bb_BASS_Init]
	mov	dword [ebp-12],eax
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	je	_1091
	push	ebp
	push	_1099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,4
	cmp	eax,0
	jne	_1093
	mov	eax,2
_1093:
	cmp	eax,0
	jne	_1095
	mov	eax,8192
_1095:
	push	0
	push	eax
	push	0
	push	0
	push	dword [ebp-8]
	call	_bbStringToCString
	add	esp,4
	push	eax
	push	0
	call	dword [_bb_BASS_MusicLoad]
	mov	dword [_bb_musicchannel],eax
	push	_1097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	fld	dword [_1145]
	fmul	dword [_bb_musicvol]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	-1
	push	dword [_bb_musicchannel]
	call	dword [_bb_BASS_ChannelSetAttributes]
	push	_1098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_musicchannel]
	call	dword [_bb_BASS_ChannelPlay]
	call	dword [_bbOnDebugLeaveScope]
_1091:
	mov	ebx,0
_85:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_StopMusic:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_1110
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_musicchannel],0
	je	_1105
	push	ebp
	push	_1109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_musicchannel]
	call	dword [_bb_BASS_ChannelStop]
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_BASS_Free]
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_musicchannel],0
	call	dword [_bbOnDebugLeaveScope]
_1105:
	mov	ebx,0
_87:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SetMusicVolume:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_1116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_musicchannel],0
	je	_1113
	push	ebp
	push	_1115
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	fld	dword [_1159]
	fmul	dword [_bb_musicvol]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	-1
	push	dword [_bb_musicchannel]
	call	dword [_bb_BASS_ChannelSetAttributes]
	call	dword [_bbOnDebugLeaveScope]
_1113:
	mov	ebx,0
_89:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_600:
	dd	0
_142:
	db	"sound",0
_143:
	db	"BASSTRUE",0
_144:
	db	"i",0
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_146:
	db	"BASSFALSE",0
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
_148:
	db	"BASS_OK",0
_149:
	db	"BASS_ERROR_MEM",0
_150:
	db	"BASS_ERROR_FILEOPEN",0
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_152:
	db	"BASS_ERROR_DRIVER",0
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	51
_154:
	db	"BASS_ERROR_BUFLOST",0
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	52
_156:
	db	"BASS_ERROR_HANDLE",0
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	53
_158:
	db	"BASS_ERROR_FORMAT",0
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	54
_160:
	db	"BASS_ERROR_POSITION",0
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	55
_162:
	db	"BASS_ERROR_INIT",0
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	56
_164:
	db	"BASS_ERROR_START",0
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	57
_166:
	db	"BASS_ERROR_INITCD",0
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,48
_168:
	db	"BASS_ERROR_CDINIT",0
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,49
_170:
	db	"BASS_ERROR_NOCD",0
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,50
_172:
	db	"BASS_ERROR_CDTRACK",0
	align	4
_173:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,51
_174:
	db	"BASS_ERROR_ALREADY",0
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,52
_176:
	db	"BASS_ERROR_CDVOL",0
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,53
_178:
	db	"BASS_ERROR_NOPAUSE",0
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,54
_180:
	db	"BASS_ERROR_NOTAUDIO",0
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,55
_182:
	db	"BASS_ERROR_NOCHAN",0
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,56
_184:
	db	"BASS_ERROR_ILLTYPE",0
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,57
_186:
	db	"BASS_ERROR_ILLPARAM",0
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,48
_188:
	db	"BASS_ERROR_NO3D",0
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,49
_190:
	db	"BASS_ERROR_NOEAX",0
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,50
_192:
	db	"BASS_ERROR_DEVICE",0
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,51
_194:
	db	"BASS_ERROR_NOPLAY",0
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,52
_196:
	db	"BASS_ERROR_FREQ",0
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,53
_198:
	db	"BASS_ERROR_NOTFILE",0
	align	4
_199:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,55
_200:
	db	"BASS_ERROR_NOHW",0
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,57
_202:
	db	"BASS_ERROR_EMPTY",0
	align	4
_203:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,49
_204:
	db	"BASS_ERROR_NONET",0
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,50
_206:
	db	"BASS_ERROR_CREATE",0
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,51
_208:
	db	"BASS_ERROR_NOFX",0
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,52
_210:
	db	"BASS_ERROR_PLAYING",0
	align	4
_211:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,53
_212:
	db	"BASS_ERROR_NOTAVAIL",0
	align	4
_213:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,55
_214:
	db	"BASS_ERROR_DECODE",0
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,56
_216:
	db	"BASS_ERROR_DX",0
	align	4
_217:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	51,57
_218:
	db	"BASS_ERROR_TIMEOUT",0
	align	4
_219:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,48
_220:
	db	"BASS_ERROR_FILEFORM",0
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,49
_222:
	db	"BASS_ERROR_SPEAKER",0
	align	4
_223:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	52,50
_224:
	db	"BASS_ERROR_UNKNOWN",0
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_226:
	db	"BASS_DEVICE_8BITS",0
_227:
	db	"BASS_DEVICE_MONO",0
_228:
	db	"BASS_DEVICE_3D",0
_229:
	db	"BASS_DEVICE_LEAVEVOL",0
_230:
	db	"BASS_DEVICE_NOTHREAD",0
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,56
_232:
	db	"BASS_DEVICE_LATENCY",0
	align	4
_233:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,54
_234:
	db	"BASS_DEVICE_VOL1000",0
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	53,49,50
_236:
	db	"BASS_DEVICE_FLOATDSP",0
	align	4
_237:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,50,52
_238:
	db	"BASS_DEVICE_SPEAKERS",0
	align	4
_239:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,56
_240:
	db	"DSCAPS_CONTINUOUSRATE",0
_241:
	db	"DSCAPS_EMULDRIVER",0
_242:
	db	"DSCAPS_CERTIFIED",0
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	54,52
_244:
	db	"DSCAPS_SECONDARYMONO",0
_245:
	db	"DSCAPS_SECONDARYSTEREO",0
_246:
	db	"DSCAPS_SECONDARY8BIT",0
_247:
	db	"DSCAPS_SECONDARY16BIT",0
_248:
	db	"DSCCAPS_EMULDRIVER",0
_249:
	db	"DSCCAPS_CERTIFIED",0
_250:
	db	"WAVE_FORMAT_1M08",0
_251:
	db	"WAVE_FORMAT_1S08",0
_252:
	db	"WAVE_FORMAT_1M16",0
_253:
	db	"WAVE_FORMAT_1S16",0
_254:
	db	"WAVE_FORMAT_2M08",0
_255:
	db	"WAVE_FORMAT_2S08",0
_256:
	db	"WAVE_FORMAT_2M16",0
_257:
	db	"WAVE_FORMAT_2S16",0
_258:
	db	"WAVE_FORMAT_4M08",0
_259:
	db	"WAVE_FORMAT_4S08",0
_260:
	db	"WAVE_FORMAT_4M16",0
_261:
	db	"WAVE_FORMAT_4S16",0
_262:
	db	"BASS_MUSIC_RAMP",0
_263:
	db	"BASS_MUSIC_RAMPS",0
_264:
	db	"BASS_MUSIC_LOOP",0
_265:
	db	"BASS_MUSIC_FT2MOD",0
_266:
	db	"BASS_MUSIC_PT1MOD",0
_267:
	db	"BASS_MUSIC_MONO",0
_268:
	db	"BASS_MUSIC_3D",0
_269:
	db	"BASS_MUSIC_POSRESET",0
_270:
	db	"BASS_MUSIC_SURROUND",0
_271:
	db	"BASS_MUSIC_SURROUND2",0
_272:
	db	"BASS_MUSIC_STOPBACK",0
_273:
	db	"BASS_MUSIC_FX",0
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,54
_275:
	db	"BASS_MUSIC_CALCLEN",0
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,50
_277:
	db	"BASS_MUSIC_NONINTER",0
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	49,54,51,56,52
_279:
	db	"BASS_MUSIC_FLOAT",0
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,53,51,54
_281:
	db	"BASS_MUSIC_DECODE",0
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	50,48,57,55,49,53,50
_283:
	db	"BASS_MUSIC_NOSAMPLE",0
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	52,49,57,52,51,48,52
_285:
	db	"BASS_SAMPLE_8BITS",0
_286:
	db	"BASS_SAMPLE_FLOAT",0
_287:
	db	"BASS_SAMPLE_MONO",0
_288:
	db	"BASS_SAMPLE_LOOP",0
_289:
	db	"BASS_SAMPLE_3D",0
_290:
	db	"BASS_SAMPLE_SOFTWARE",0
_291:
	db	"BASS_SAMPLE_MUTEMAX",0
_292:
	db	"BASS_SAMPLE_VAM",0
_293:
	db	"BASS_SAMPLE_FX",0
_294:
	db	"BASS_SAMPLE_OVER_VOL",0
_295:
	db	"BASS_SAMPLE_OVER_POS",0
	align	4
_296:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	49,51,49,48,55,50
_297:
	db	"BASS_SAMPLE_OVER_DIST",0
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	49,57,54,54,48,56
_299:
	db	"BASS_MP3_SETPOS",0
_300:
	db	"BASS_STREAM_AUTOFREE",0
	align	4
_301:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	50,54,50,49,52,52
_302:
	db	"BASS_STREAM_RESTRATE",0
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	53,50,52,50,56,56
_304:
	db	"BASS_STREAM_BLOCK",0
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	49,48,52,56,53,55,54
_306:
	db	"BASS_STREAM_DECODE",0
_307:
	db	"BASS_STREAM_META",0
_308:
	db	"BASS_STREAM_FILEPROC",0
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	56,51,56,56,54,48,56
_310:
	db	"BASS_SPEAKER_FRONT",0
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	49,54,55,55,55,50,49,54
_312:
	db	"BASS_SPEAKER_REAR",0
	align	4
_313:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	51,51,53,53,52,52,51,50
_314:
	db	"BASS_SPEAKER_CENLFE",0
	align	4
_315:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	53,48,51,51,49,54,52,56
_316:
	db	"BASS_SPEAKER_REAR2",0
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	54,55,49,48,56,56,54,52
_318:
	db	"BASS_SPEAKER_LEFT",0
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	50,54,56,52,51,53,52,53,54
_320:
	db	"BASS_SPEAKER_RIGHT",0
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,51,54,56,55,48,57,49,50
_322:
	db	"BASS_SPEAKER_FRONTLEFT",0
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	50,56,53,50,49,50,54,55,50
_324:
	db	"BASS_SPEAKER_FRONTRIGHT",0
	align	4
_325:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,53,51,54,52,56,49,50,56
_326:
	db	"BASS_SPEAKER_REARLEFT",0
	align	4
_327:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,48,49,57,56,57,56,56,56
_328:
	db	"BASS_SPEAKER_REARRIGHT",0
	align	4
_329:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,55,48,52,50,53,51,52,52
_330:
	db	"BASS_SPEAKER_CENTER",0
	align	4
_331:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,49,56,55,54,55,49,48,52
_332:
	db	"BASS_SPEAKER_LFE",0
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	53,56,55,50,48,50,53,54,48
_334:
	db	"BASS_SPEAKER_REAR2LEFT",0
	align	4
_335:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	51,51,53,53,52,52,51,50,48
_336:
	db	"BASS_SPEAKER_REAR2RIGHT",0
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	54,48,51,57,55,57,55,55,54
_338:
	db	"BASS_TAG_ID3",0
_339:
	db	"BASS_TAG_ID3V2",0
_340:
	db	"BASS_TAG_OGG",0
_341:
	db	"BASS_TAG_HTTP",0
_342:
	db	"BASS_TAG_ICY",0
_343:
	db	"BASS_TAG_META",0
_344:
	db	"BASS_3DMODE_NORMAL",0
_345:
	db	"BASS_3DMODE_RELATIVE",0
_346:
	db	"BASS_3DMODE_OFF",0
_347:
	db	"EAX_ENVIRONMENT_GENERIC",0
_348:
	db	"EAX_ENVIRONMENT_PADDEDCELL",0
_349:
	db	"EAX_ENVIRONMENT_ROOM",0
_350:
	db	"EAX_ENVIRONMENT_BATHROOM",0
_351:
	db	"EAX_ENVIRONMENT_LIVINGROOM",0
_352:
	db	"EAX_ENVIRONMENT_STONEROOM",0
_353:
	db	"EAX_ENVIRONMENT_AUDITORIUM",0
_354:
	db	"EAX_ENVIRONMENT_CONCERTHALL",0
_355:
	db	"EAX_ENVIRONMENT_CAVE",0
_356:
	db	"EAX_ENVIRONMENT_ARENA",0
_357:
	db	"EAX_ENVIRONMENT_HANGAR",0
_358:
	db	"EAX_ENVIRONMENT_CARPETEDHALLWAY",0
_359:
	db	"EAX_ENVIRONMENT_HALLWAY",0
_360:
	db	"EAX_ENVIRONMENT_STONECORRIDOR",0
_361:
	db	"EAX_ENVIRONMENT_ALLEY",0
_362:
	db	"EAX_ENVIRONMENT_FOREST",0
_363:
	db	"EAX_ENVIRONMENT_CITY",0
_364:
	db	"EAX_ENVIRONMENT_MOUNTAINS",0
_365:
	db	"EAX_ENVIRONMENT_QUARRY",0
_366:
	db	"EAX_ENVIRONMENT_PLAIN",0
_367:
	db	"EAX_ENVIRONMENT_PARKINGLOT",0
_368:
	db	"EAX_ENVIRONMENT_SEWERPIPE",0
_369:
	db	"EAX_ENVIRONMENT_UNDERWATER",0
_370:
	db	"EAX_ENVIRONMENT_DRUGGED",0
_371:
	db	"EAX_ENVIRONMENT_DIZZY",0
_372:
	db	"EAX_ENVIRONMENT_PSYCHOTIC",0
_373:
	db	"EAX_ENVIRONMENT_COUNT",0
	align	4
_374:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	50,54
_375:
	db	"EAX_PRESET_GENERIC",0
_376:
	db	"EAX_PRESET_PADDEDCELL",0
_377:
	db	"EAX_PRESET_ROOM",0
_378:
	db	"EAX_PRESET_BATHROOM",0
_379:
	db	"EAX_PRESET_LIVINGROOM",0
_380:
	db	"EAX_PRESET_STONEROOM",0
_381:
	db	"EAX_PRESET_AUDITORIUM",0
_382:
	db	"EAX_PRESET_CONCERTHALL",0
_383:
	db	"EAX_PRESET_CAVE",0
_384:
	db	"EAX_PRESET_ARENA",0
_385:
	db	"EAX_PRESET_HANGAR",0
_386:
	db	"EAX_PRESET_CARPETEDHALLWAY",0
_387:
	db	"EAX_PRESET_HALLWAY",0
_388:
	db	"EAX_PRESET_STONECORRIDOR",0
_389:
	db	"EAX_PRESET_ALLEY",0
_390:
	db	"EAX_PRESET_FOREST",0
_391:
	db	"EAX_PRESET_CITY",0
_392:
	db	"EAX_PRESET_MOUNTAINS",0
_393:
	db	"EAX_PRESET_QUARRY",0
_394:
	db	"EAX_PRESET_PLAIN",0
_395:
	db	"EAX_PRESET_PARKINGLOT",0
_396:
	db	"EAX_PRESET_SEWERPIPE",0
_397:
	db	"EAX_PRESET_UNDERWATER",0
_398:
	db	"EAX_PRESET_DRUGGED",0
_399:
	db	"EAX_PRESET_DIZZY",0
_400:
	db	"EAX_PRESET_PSYCHOTIC",0
_401:
	db	"BASS_SYNC_POS",0
_402:
	db	"BASS_SYNC_MUSICPOS",0
_403:
	db	"BASS_SYNC_MUSICINST",0
_404:
	db	"BASS_SYNC_END",0
_405:
	db	"BASS_SYNC_MUSICFX",0
_406:
	db	"BASS_SYNC_META",0
_407:
	db	"BASS_SYNC_SLIDE",0
_408:
	db	"BASS_SYNC_MESSAGE",0
_409:
	db	"BASS_SYNC_MIXTIME",0
	align	4
_410:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	49,48,55,51,55,52,49,56,50,52
_411:
	db	"BASS_SYNC_ONETIME",0
	align	4
_412:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,56
_413:
	db	"CDCHANNEL",0
_414:
	db	"RECORDCHAN",0
_415:
	db	"BASS_ACTIVE_STOPPED",0
_416:
	db	"BASS_ACTIVE_PLAYING",0
_417:
	db	"BASS_ACTIVE_STALLED",0
_418:
	db	"BASS_ACTIVE_PAUSED",0
_419:
	db	"BASS_SLIDE_FREQ",0
_420:
	db	"BASS_SLIDE_VOL",0
_421:
	db	"BASS_SLIDE_PAN",0
_422:
	db	"BASS_CDID_IDENTITY",0
_423:
	db	"BASS_CDID_UPC",0
_424:
	db	"BASS_CDID_CDDB",0
_425:
	db	"BASS_CDID_CDDB2",0
_426:
	db	"BASS_DATA_AVAILABLE",0
_427:
	db	"BASS_DATA_FFT512",0
_428:
	db	"BASS_DATA_FFT1024",0
	align	4
_429:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,55
_430:
	db	"BASS_DATA_FFT2048",0
	align	4
_431:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,52,54
_432:
	db	"BASS_DATA_FFT512S",0
	align	4
_433:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,50
_434:
	db	"BASS_DATA_FFT1024S",0
	align	4
_435:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,49
_436:
	db	"BASS_DATA_FFT2048S",0
	align	4
_437:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,50,49,52,55,52,56,51,54,51,48
_438:
	db	"BASS_DATA_FFT_NOWINDOW",0
_439:
	db	"BASS_INPUT_OFF",0
_440:
	db	"BASS_INPUT_ON",0
_441:
	db	"BASS_INPUT_LEVEL",0
_442:
	db	"BASS_INPUT_TYPE_MASK",0
	align	4
_443:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	45,49,54,55,55,55,50,49,54
_444:
	db	"BASS_INPUT_TYPE_UNDEF",0
_445:
	db	"BASS_INPUT_TYPE_DIGITAL",0
_446:
	db	"BASS_INPUT_TYPE_LINE",0
_447:
	db	"BASS_INPUT_TYPE_MIC",0
_448:
	db	"BASS_INPUT_TYPE_SYNTH",0
_449:
	db	"BASS_INPUT_TYPE_CD",0
	align	4
_450:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	56,51,56,56,54,48,56,48
_451:
	db	"BASS_INPUT_TYPE_PHONE",0
	align	4
_452:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,48,48,54,54,51,50,57,54
_453:
	db	"BASS_INPUT_TYPE_SPEAKER",0
	align	4
_454:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,49,55,52,52,48,53,49,50
_455:
	db	"BASS_INPUT_TYPE_WAVE",0
	align	4
_456:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,51,52,50,49,55,55,50,56
_457:
	db	"BASS_INPUT_TYPE_AUX",0
	align	4
_458:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,53,48,57,57,52,57,52,52
_459:
	db	"BASS_INPUT_TYPE_ANALOG",0
	align	4
_460:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	49,54,55,55,55,50,49,54,48
_461:
	db	"BASS_NET_TIMEOUT",0
_462:
	db	"BASS_NET_BUFFER",0
_463:
	db	"BASS_FILEPOS_DECODE",0
_464:
	db	"BASS_FILEPOS_DOWNLOAD",0
_465:
	db	"BASS_FILEPOS_END",0
_466:
	db	"BASS_FILE_CLOSE",0
_467:
	db	"BASS_FILE_READ",0
_468:
	db	"BASS_FILE_QUERY",0
_469:
	db	"BASS_FILE_LEN",0
_470:
	db	"BASS_OBJECT_DS",0
_471:
	db	"BASS_OBJECT_DS3DL",0
_472:
	db	"BASS_VAM_HARDWARE",0
_473:
	db	"BASS_VAM_SOFTWARE",0
_474:
	db	"BASS_VAM_TERM_TIME",0
_475:
	db	"BASS_VAM_TERM_DIST",0
_476:
	db	"BASS_VAM_TERM_PRIO",0
_477:
	db	"BASS_3DALG_DEFAULT",0
_478:
	db	"BASS_3DALG_OFF",0
_479:
	db	"BASS_3DALG_FULL",0
_480:
	db	"BASS_3DALG_LIGHT",0
_481:
	db	"BASS_FX_CHORUS",0
_482:
	db	"BASS_FX_COMPRESSOR",0
_483:
	db	"BASS_FX_DISTORTION",0
_484:
	db	"BASS_FX_ECHO",0
_485:
	db	"BASS_FX_FLANGER",0
_486:
	db	"BASS_FX_GARGLE",0
_487:
	db	"BASS_FX_I3DL2REVERB",0
_488:
	db	"BASS_FX_PARAMEQ",0
_489:
	db	"BASS_FX_REVERB",0
_490:
	db	"BASS_FX_PHASE_NEG_180",0
_491:
	db	"BASS_FX_PHASE_NEG_90",0
_492:
	db	"BASS_FX_PHASE_ZERO",0
_493:
	db	"BASS_FX_PHASE_90",0
_494:
	db	"BASS_FX_PHASE_180",0
_495:
	db	"BASS_CD_RWFLAG_READCDR",0
_496:
	db	"BASS_CD_RWFLAG_READCDRW",0
_497:
	db	"BASS_CD_RWFLAG_READCDRW2",0
_498:
	db	"BASS_CD_RWFLAG_READDVD",0
_499:
	db	"BASS_CD_RWFLAG_READDVDR",0
_500:
	db	"BASS_CD_RWFLAG_READDVDRAM",0
_501:
	db	"BASS_CD_RWFLAG_READM2F1",0
_502:
	db	"BASS_CD_RWFLAG_READM2F2",0
_503:
	db	"BASS_CD_RWFLAG_READMULTI",0
_504:
	db	"BASS_CD_RWFLAG_READCDDA",0
_505:
	db	"BASS_CD_RWFLAG_READCDDASIA",0
_506:
	db	"BASS_CD_RWFLAG_READUPC",0
_507:
	db	"BASS_CD_FREEOLD",0
_508:
	db	"BASS_SYNC_CD_ERROR",0
	align	4
_509:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,48
_510:
	db	"BASS_CD_DOOR_CLOSE",0
_511:
	db	"BASS_CD_DOOR_OPEN",0
_512:
	db	"BASS_CD_DOOR_LOCK",0
_513:
	db	"BASS_CD_DOOR_UNLOCK",0
_514:
	db	"BASS_ERROR_WMA_LICENSE",0
_515:
	db	"BASS_ERROR_WMA_WM9",0
	align	4
_516:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,49
_517:
	db	"BASS_ERROR_WMA_DENIED",0
	align	4
_518:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,50
_519:
	db	"BASS_ERROR_WMA_CODEC",0
	align	4
_520:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,51
_521:
	db	"BASS_WMA_ENCODE_TAGS",0
_522:
	db	"BASS_WMA_ENCODE_SCRIPT",0
_523:
	db	"BASS_WMA_ENCODE_RATES_VBR",0
_524:
	db	"BASS_WMA_ENCODE_HEAD",0
_525:
	db	"BASS_WMA_ENCODE_DATA",0
_526:
	db	"BASS_WMA_ENCODE_DONE",0
_527:
	db	"BASS_CTYPE_STREAM_WMA",0
	align	4
_528:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	54,54,51,48,52
_529:
	db	"BASS_Init",0
_530:
	db	"(i,i,i,i,i)i",0
_531:
	db	"BASS_StreamCreateFile",0
_532:
	db	"(i,*b,i,i,i)i",0
_533:
	db	"BASS_WMA_StreamCreateFile",0
_534:
	db	"BASS_MusicLoad",0
_535:
	db	"(i,*b,i,i,i,i)i",0
_536:
	db	"BASS_ChannelPlay",0
_537:
	db	"(i,i)i",0
_538:
	db	"BASS_Free",0
_539:
	db	"()i",0
_540:
	db	"BASS_ErrorGetCode",0
_541:
	db	"BASS_StreamGetLength",0
_542:
	db	"(i)i",0
_543:
	db	"BASS_ChannelStop",0
_544:
	db	"BASS_ChannelPause",0
_545:
	db	"BASS_ChannelIsActive",0
_546:
	db	"BASS_ChannelGetLevel",0
_547:
	db	"BASS_ChannelGetPosition",0
_548:
	db	"BASS_ChannelSetPosition",0
_549:
	db	"(i,l)i",0
_550:
	db	"BASS_ChannelGetAttributes",0
_551:
	db	"(i,*i,*i,*i)i",0
_552:
	db	"BASS_ChannelSetAttributes",0
_553:
	db	"(i,i,i,i)i",0
_554:
	db	"sfxvol",0
_555:
	db	"f",0
	align	4
_bb_sfxvol:
	dd	0x3f000000
_556:
	db	"musicvol",0
	align	4
_bb_musicvol:
	dd	0x3f000000
_557:
	db	"musicchannel",0
	align	4
_bb_musicchannel:
	dd	0
_558:
	db	"sunloopchan",0
_559:
	db	"[]:brl.audio.TChannel",0
	align	4
_bb_sunloopchan:
	dd	_bbEmptyArray
_560:
	db	"soundset",0
	align	4
_bb_soundset:
	dd	0
_561:
	db	"nme_born_snd",0
_562:
	db	":brl.audio.TSound",0
	align	4
_bb_nme_born_snd:
	dd	_bbNullObject
_563:
	db	"nme1_born_snd",0
	align	4
_bb_nme1_born_snd:
	dd	_bbNullObject
_564:
	db	"nme2_born_snd",0
	align	4
_bb_nme2_born_snd:
	dd	_bbNullObject
_565:
	db	"nme3_born_snd",0
	align	4
_bb_nme3_born_snd:
	dd	_bbNullObject
_566:
	db	"nme4_born_snd",0
	align	4
_bb_nme4_born_snd:
	dd	_bbNullObject
_567:
	db	"nme5_born_snd",0
	align	4
_bb_nme5_born_snd:
	dd	_bbNullObject
_568:
	db	"nme5_loop_snd",0
	align	4
_bb_nme5_loop_snd:
	dd	_bbNullObject
_569:
	db	"nme5_shrink_snd",0
	align	4
_bb_nme5_shrink_snd:
	dd	_bbNullObject
_570:
	db	"nme5_grow_snd",0
	align	4
_bb_nme5_grow_snd:
	dd	_bbNullObject
_571:
	db	"nme5_explode_snd",0
	align	4
_bb_nme5_explode_snd:
	dd	_bbNullObject
_572:
	db	"nme5_killed_snd",0
	align	4
_bb_nme5_killed_snd:
	dd	_bbNullObject
_573:
	db	"nme6_born_snd",0
	align	4
_bb_nme6_born_snd:
	dd	_bbNullObject
_574:
	db	"nme6_tailexplode_snd",0
	align	4
_bb_nme6_tailexplode_snd:
	dd	_bbNullObject
_575:
	db	"nme6_tailhit_snd",0
	align	4
_bb_nme6_tailhit_snd:
	dd	_bbNullObject
_576:
	db	"nme7_born_snd",0
	align	4
_bb_nme7_born_snd:
	dd	_bbNullObject
_577:
	db	"nme7_shield_snd",0
	align	4
_bb_nme7_shield_snd:
	dd	_bbNullObject
_578:
	db	"nme8_born_snd",0
	align	4
_bb_nme8_born_snd:
	dd	_bbNullObject
_579:
	db	"ge_born_snd",0
	align	4
_bb_ge_born_snd:
	dd	_bbNullObject
_580:
	db	"ge_hit_snd",0
	align	4
_bb_ge_hit_snd:
	dd	_bbNullObject
_581:
	db	"ge_killed_snd",0
	align	4
_bb_ge_killed_snd:
	dd	_bbNullObject
_582:
	db	"le_born_snd",0
	align	4
_bb_le_born_snd:
	dd	_bbNullObject
_583:
	db	"le_hit_snd",0
	align	4
_bb_le_hit_snd:
	dd	_bbNullObject
_584:
	db	"le_killed_snd",0
	align	4
_bb_le_killed_snd:
	dd	_bbNullObject
_585:
	db	"pu_collect_snd",0
	align	4
_bb_pu_collect_snd:
	dd	_bbNullObject
_586:
	db	"get_ready_snd",0
	align	4
_bb_get_ready_snd:
	dd	_bbNullObject
_587:
	db	"player_hit_snd",0
	align	4
_bb_player_hit_snd:
	dd	_bbNullObject
_588:
	db	"shot_born_snd",0
	align	4
_bb_shot_born_snd:
	dd	_bbNullObject
_589:
	db	"shot_hit_wall_snd",0
	align	4
_bb_shot_hit_wall_snd:
	dd	_bbNullObject
_590:
	db	"game_over_snd",0
	align	4
_bb_game_over_snd:
	dd	_bbNullObject
_591:
	db	"super_bomb_snd",0
	align	4
_bb_super_bomb_snd:
	dd	_bbNullObject
_592:
	db	"extra_life_snd",0
	align	4
_bb_extra_life_snd:
	dd	_bbNullObject
_593:
	db	"extra_bomb_snd",0
	align	4
_bb_extra_bomb_snd:
	dd	_bbNullObject
_594:
	db	"multiplier_increase_snd",0
	align	4
_bb_multiplier_increase_snd:
	dd	_bbNullObject
_595:
	db	"bonus_born_snd",0
	align	4
_bb_bonus_born_snd:
	dd	_bbNullObject
_596:
	db	"high_score_snd",0
	align	4
_bb_high_score_snd:
	dd	_bbNullObject
_597:
	db	"quarkhitsound",0
	align	4
_bb_quarkhitsound:
	dd	_bbNullObject
_598:
	db	"quarkhit2sound",0
	align	4
_bb_quarkhit2sound:
	dd	_bbNullObject
_599:
	db	"shieldwarningsnd",0
	align	4
_bb_shieldwarningsnd:
	dd	_bbNullObject
	align	4
_141:
	dd	1
	dd	_142
	dd	1
	dd	_143
	dd	_144
	dd	_145
	dd	1
	dd	_146
	dd	_144
	dd	_147
	dd	1
	dd	_148
	dd	_144
	dd	_147
	dd	1
	dd	_149
	dd	_144
	dd	_145
	dd	1
	dd	_150
	dd	_144
	dd	_151
	dd	1
	dd	_152
	dd	_144
	dd	_153
	dd	1
	dd	_154
	dd	_144
	dd	_155
	dd	1
	dd	_156
	dd	_144
	dd	_157
	dd	1
	dd	_158
	dd	_144
	dd	_159
	dd	1
	dd	_160
	dd	_144
	dd	_161
	dd	1
	dd	_162
	dd	_144
	dd	_163
	dd	1
	dd	_164
	dd	_144
	dd	_165
	dd	1
	dd	_166
	dd	_144
	dd	_167
	dd	1
	dd	_168
	dd	_144
	dd	_169
	dd	1
	dd	_170
	dd	_144
	dd	_171
	dd	1
	dd	_172
	dd	_144
	dd	_173
	dd	1
	dd	_174
	dd	_144
	dd	_175
	dd	1
	dd	_176
	dd	_144
	dd	_177
	dd	1
	dd	_178
	dd	_144
	dd	_179
	dd	1
	dd	_180
	dd	_144
	dd	_181
	dd	1
	dd	_182
	dd	_144
	dd	_183
	dd	1
	dd	_184
	dd	_144
	dd	_185
	dd	1
	dd	_186
	dd	_144
	dd	_187
	dd	1
	dd	_188
	dd	_144
	dd	_189
	dd	1
	dd	_190
	dd	_144
	dd	_191
	dd	1
	dd	_192
	dd	_144
	dd	_193
	dd	1
	dd	_194
	dd	_144
	dd	_195
	dd	1
	dd	_196
	dd	_144
	dd	_197
	dd	1
	dd	_198
	dd	_144
	dd	_199
	dd	1
	dd	_200
	dd	_144
	dd	_201
	dd	1
	dd	_202
	dd	_144
	dd	_203
	dd	1
	dd	_204
	dd	_144
	dd	_205
	dd	1
	dd	_206
	dd	_144
	dd	_207
	dd	1
	dd	_208
	dd	_144
	dd	_209
	dd	1
	dd	_210
	dd	_144
	dd	_211
	dd	1
	dd	_212
	dd	_144
	dd	_213
	dd	1
	dd	_214
	dd	_144
	dd	_215
	dd	1
	dd	_216
	dd	_144
	dd	_217
	dd	1
	dd	_218
	dd	_144
	dd	_219
	dd	1
	dd	_220
	dd	_144
	dd	_221
	dd	1
	dd	_222
	dd	_144
	dd	_223
	dd	1
	dd	_224
	dd	_144
	dd	_225
	dd	1
	dd	_226
	dd	_144
	dd	_145
	dd	1
	dd	_227
	dd	_144
	dd	_151
	dd	1
	dd	_228
	dd	_144
	dd	_155
	dd	1
	dd	_229
	dd	_144
	dd	_205
	dd	1
	dd	_230
	dd	_144
	dd	_231
	dd	1
	dd	_232
	dd	_144
	dd	_233
	dd	1
	dd	_234
	dd	_144
	dd	_235
	dd	1
	dd	_236
	dd	_144
	dd	_237
	dd	1
	dd	_238
	dd	_144
	dd	_239
	dd	1
	dd	_240
	dd	_144
	dd	_179
	dd	1
	dd	_241
	dd	_144
	dd	_205
	dd	1
	dd	_242
	dd	_144
	dd	_243
	dd	1
	dd	_244
	dd	_144
	dd	_233
	dd	1
	dd	_245
	dd	_144
	dd	_235
	dd	1
	dd	_246
	dd	_144
	dd	_237
	dd	1
	dd	_247
	dd	_144
	dd	_239
	dd	1
	dd	_248
	dd	_144
	dd	_205
	dd	1
	dd	_249
	dd	_144
	dd	_243
	dd	1
	dd	_250
	dd	_144
	dd	_145
	dd	1
	dd	_251
	dd	_144
	dd	_151
	dd	1
	dd	_252
	dd	_144
	dd	_155
	dd	1
	dd	_253
	dd	_144
	dd	_163
	dd	1
	dd	_254
	dd	_144
	dd	_179
	dd	1
	dd	_255
	dd	_144
	dd	_205
	dd	1
	dd	_256
	dd	_144
	dd	_243
	dd	1
	dd	_257
	dd	_144
	dd	_231
	dd	1
	dd	_258
	dd	_144
	dd	_233
	dd	1
	dd	_259
	dd	_144
	dd	_235
	dd	1
	dd	_260
	dd	_144
	dd	_237
	dd	1
	dd	_261
	dd	_144
	dd	_239
	dd	1
	dd	_262
	dd	_144
	dd	_145
	dd	1
	dd	_263
	dd	_144
	dd	_151
	dd	1
	dd	_264
	dd	_144
	dd	_155
	dd	1
	dd	_265
	dd	_144
	dd	_179
	dd	1
	dd	_266
	dd	_144
	dd	_205
	dd	1
	dd	_267
	dd	_144
	dd	_243
	dd	1
	dd	_268
	dd	_144
	dd	_231
	dd	1
	dd	_269
	dd	_144
	dd	_233
	dd	1
	dd	_270
	dd	_144
	dd	_235
	dd	1
	dd	_271
	dd	_144
	dd	_237
	dd	1
	dd	_272
	dd	_144
	dd	_239
	dd	1
	dd	_273
	dd	_144
	dd	_274
	dd	1
	dd	_275
	dd	_144
	dd	_276
	dd	1
	dd	_277
	dd	_144
	dd	_278
	dd	1
	dd	_279
	dd	_144
	dd	_280
	dd	1
	dd	_281
	dd	_144
	dd	_282
	dd	1
	dd	_283
	dd	_144
	dd	_284
	dd	1
	dd	_285
	dd	_144
	dd	_145
	dd	1
	dd	_286
	dd	_144
	dd	_233
	dd	1
	dd	_287
	dd	_144
	dd	_151
	dd	1
	dd	_288
	dd	_144
	dd	_155
	dd	1
	dd	_289
	dd	_144
	dd	_163
	dd	1
	dd	_290
	dd	_144
	dd	_179
	dd	1
	dd	_291
	dd	_144
	dd	_205
	dd	1
	dd	_292
	dd	_144
	dd	_243
	dd	1
	dd	_293
	dd	_144
	dd	_231
	dd	1
	dd	_294
	dd	_144
	dd	_280
	dd	1
	dd	_295
	dd	_144
	dd	_296
	dd	1
	dd	_297
	dd	_144
	dd	_298
	dd	1
	dd	_299
	dd	_144
	dd	_296
	dd	1
	dd	_300
	dd	_144
	dd	_301
	dd	1
	dd	_302
	dd	_144
	dd	_303
	dd	1
	dd	_304
	dd	_144
	dd	_305
	dd	1
	dd	_306
	dd	_144
	dd	_282
	dd	1
	dd	_307
	dd	_144
	dd	_284
	dd	1
	dd	_308
	dd	_144
	dd	_309
	dd	1
	dd	_310
	dd	_144
	dd	_311
	dd	1
	dd	_312
	dd	_144
	dd	_313
	dd	1
	dd	_314
	dd	_144
	dd	_315
	dd	1
	dd	_316
	dd	_144
	dd	_317
	dd	1
	dd	_318
	dd	_144
	dd	_319
	dd	1
	dd	_320
	dd	_144
	dd	_321
	dd	1
	dd	_322
	dd	_144
	dd	_323
	dd	1
	dd	_324
	dd	_144
	dd	_325
	dd	1
	dd	_326
	dd	_144
	dd	_327
	dd	1
	dd	_328
	dd	_144
	dd	_329
	dd	1
	dd	_330
	dd	_144
	dd	_331
	dd	1
	dd	_332
	dd	_144
	dd	_333
	dd	1
	dd	_334
	dd	_144
	dd	_335
	dd	1
	dd	_336
	dd	_144
	dd	_337
	dd	1
	dd	_338
	dd	_144
	dd	_147
	dd	1
	dd	_339
	dd	_144
	dd	_145
	dd	1
	dd	_340
	dd	_144
	dd	_151
	dd	1
	dd	_341
	dd	_144
	dd	_153
	dd	1
	dd	_342
	dd	_144
	dd	_155
	dd	1
	dd	_343
	dd	_144
	dd	_157
	dd	1
	dd	_344
	dd	_144
	dd	_147
	dd	1
	dd	_345
	dd	_144
	dd	_145
	dd	1
	dd	_346
	dd	_144
	dd	_151
	dd	1
	dd	_347
	dd	_144
	dd	_147
	dd	1
	dd	_348
	dd	_144
	dd	_145
	dd	1
	dd	_349
	dd	_144
	dd	_151
	dd	1
	dd	_350
	dd	_144
	dd	_153
	dd	1
	dd	_351
	dd	_144
	dd	_155
	dd	1
	dd	_352
	dd	_144
	dd	_157
	dd	1
	dd	_353
	dd	_144
	dd	_159
	dd	1
	dd	_354
	dd	_144
	dd	_161
	dd	1
	dd	_355
	dd	_144
	dd	_163
	dd	1
	dd	_356
	dd	_144
	dd	_165
	dd	1
	dd	_357
	dd	_144
	dd	_167
	dd	1
	dd	_358
	dd	_144
	dd	_169
	dd	1
	dd	_359
	dd	_144
	dd	_171
	dd	1
	dd	_360
	dd	_144
	dd	_173
	dd	1
	dd	_361
	dd	_144
	dd	_175
	dd	1
	dd	_362
	dd	_144
	dd	_177
	dd	1
	dd	_363
	dd	_144
	dd	_179
	dd	1
	dd	_364
	dd	_144
	dd	_181
	dd	1
	dd	_365
	dd	_144
	dd	_183
	dd	1
	dd	_366
	dd	_144
	dd	_185
	dd	1
	dd	_367
	dd	_144
	dd	_187
	dd	1
	dd	_368
	dd	_144
	dd	_189
	dd	1
	dd	_369
	dd	_144
	dd	_191
	dd	1
	dd	_370
	dd	_144
	dd	_193
	dd	1
	dd	_371
	dd	_144
	dd	_195
	dd	1
	dd	_372
	dd	_144
	dd	_197
	dd	1
	dd	_373
	dd	_144
	dd	_374
	dd	1
	dd	_375
	dd	_144
	dd	_145
	dd	1
	dd	_376
	dd	_144
	dd	_151
	dd	1
	dd	_377
	dd	_144
	dd	_153
	dd	1
	dd	_378
	dd	_144
	dd	_155
	dd	1
	dd	_379
	dd	_144
	dd	_157
	dd	1
	dd	_380
	dd	_144
	dd	_159
	dd	1
	dd	_381
	dd	_144
	dd	_161
	dd	1
	dd	_382
	dd	_144
	dd	_163
	dd	1
	dd	_383
	dd	_144
	dd	_165
	dd	1
	dd	_384
	dd	_144
	dd	_167
	dd	1
	dd	_385
	dd	_144
	dd	_169
	dd	1
	dd	_386
	dd	_144
	dd	_171
	dd	1
	dd	_387
	dd	_144
	dd	_173
	dd	1
	dd	_388
	dd	_144
	dd	_175
	dd	1
	dd	_389
	dd	_144
	dd	_177
	dd	1
	dd	_390
	dd	_144
	dd	_179
	dd	1
	dd	_391
	dd	_144
	dd	_181
	dd	1
	dd	_392
	dd	_144
	dd	_183
	dd	1
	dd	_393
	dd	_144
	dd	_185
	dd	1
	dd	_394
	dd	_144
	dd	_187
	dd	1
	dd	_395
	dd	_144
	dd	_189
	dd	1
	dd	_396
	dd	_144
	dd	_191
	dd	1
	dd	_397
	dd	_144
	dd	_193
	dd	1
	dd	_398
	dd	_144
	dd	_195
	dd	1
	dd	_399
	dd	_144
	dd	_197
	dd	1
	dd	_400
	dd	_144
	dd	_374
	dd	1
	dd	_401
	dd	_144
	dd	_147
	dd	1
	dd	_402
	dd	_144
	dd	_147
	dd	1
	dd	_403
	dd	_144
	dd	_145
	dd	1
	dd	_404
	dd	_144
	dd	_151
	dd	1
	dd	_405
	dd	_144
	dd	_153
	dd	1
	dd	_406
	dd	_144
	dd	_155
	dd	1
	dd	_407
	dd	_144
	dd	_157
	dd	1
	dd	_408
	dd	_144
	dd	_321
	dd	1
	dd	_409
	dd	_144
	dd	_410
	dd	1
	dd	_411
	dd	_144
	dd	_412
	dd	1
	dd	_413
	dd	_144
	dd	_147
	dd	1
	dd	_414
	dd	_144
	dd	_145
	dd	1
	dd	_415
	dd	_144
	dd	_147
	dd	1
	dd	_416
	dd	_144
	dd	_145
	dd	1
	dd	_417
	dd	_144
	dd	_151
	dd	1
	dd	_418
	dd	_144
	dd	_153
	dd	1
	dd	_419
	dd	_144
	dd	_145
	dd	1
	dd	_420
	dd	_144
	dd	_151
	dd	1
	dd	_421
	dd	_144
	dd	_155
	dd	1
	dd	_422
	dd	_144
	dd	_147
	dd	1
	dd	_423
	dd	_144
	dd	_145
	dd	1
	dd	_424
	dd	_144
	dd	_151
	dd	1
	dd	_425
	dd	_144
	dd	_153
	dd	1
	dd	_426
	dd	_144
	dd	_147
	dd	1
	dd	_427
	dd	_144
	dd	_412
	dd	1
	dd	_428
	dd	_144
	dd	_429
	dd	1
	dd	_430
	dd	_144
	dd	_431
	dd	1
	dd	_432
	dd	_144
	dd	_433
	dd	1
	dd	_434
	dd	_144
	dd	_435
	dd	1
	dd	_436
	dd	_144
	dd	_437
	dd	1
	dd	_438
	dd	_144
	dd	_205
	dd	1
	dd	_439
	dd	_144
	dd	_280
	dd	1
	dd	_440
	dd	_144
	dd	_296
	dd	1
	dd	_441
	dd	_144
	dd	_301
	dd	1
	dd	_442
	dd	_144
	dd	_443
	dd	1
	dd	_444
	dd	_144
	dd	_147
	dd	1
	dd	_445
	dd	_144
	dd	_311
	dd	1
	dd	_446
	dd	_144
	dd	_313
	dd	1
	dd	_447
	dd	_144
	dd	_315
	dd	1
	dd	_448
	dd	_144
	dd	_317
	dd	1
	dd	_449
	dd	_144
	dd	_450
	dd	1
	dd	_451
	dd	_144
	dd	_452
	dd	1
	dd	_453
	dd	_144
	dd	_454
	dd	1
	dd	_455
	dd	_144
	dd	_456
	dd	1
	dd	_457
	dd	_144
	dd	_458
	dd	1
	dd	_459
	dd	_144
	dd	_460
	dd	1
	dd	_461
	dd	_144
	dd	_147
	dd	1
	dd	_462
	dd	_144
	dd	_145
	dd	1
	dd	_463
	dd	_144
	dd	_147
	dd	1
	dd	_464
	dd	_144
	dd	_145
	dd	1
	dd	_465
	dd	_144
	dd	_151
	dd	1
	dd	_466
	dd	_144
	dd	_147
	dd	1
	dd	_467
	dd	_144
	dd	_145
	dd	1
	dd	_468
	dd	_144
	dd	_151
	dd	1
	dd	_469
	dd	_144
	dd	_153
	dd	1
	dd	_470
	dd	_144
	dd	_145
	dd	1
	dd	_471
	dd	_144
	dd	_151
	dd	1
	dd	_472
	dd	_144
	dd	_145
	dd	1
	dd	_473
	dd	_144
	dd	_151
	dd	1
	dd	_474
	dd	_144
	dd	_155
	dd	1
	dd	_475
	dd	_144
	dd	_163
	dd	1
	dd	_476
	dd	_144
	dd	_179
	dd	1
	dd	_477
	dd	_144
	dd	_147
	dd	1
	dd	_478
	dd	_144
	dd	_145
	dd	1
	dd	_479
	dd	_144
	dd	_151
	dd	1
	dd	_480
	dd	_144
	dd	_153
	dd	1
	dd	_481
	dd	_144
	dd	_147
	dd	1
	dd	_482
	dd	_144
	dd	_145
	dd	1
	dd	_483
	dd	_144
	dd	_151
	dd	1
	dd	_484
	dd	_144
	dd	_153
	dd	1
	dd	_485
	dd	_144
	dd	_155
	dd	1
	dd	_486
	dd	_144
	dd	_157
	dd	1
	dd	_487
	dd	_144
	dd	_159
	dd	1
	dd	_488
	dd	_144
	dd	_161
	dd	1
	dd	_489
	dd	_144
	dd	_163
	dd	1
	dd	_490
	dd	_144
	dd	_147
	dd	1
	dd	_491
	dd	_144
	dd	_145
	dd	1
	dd	_492
	dd	_144
	dd	_151
	dd	1
	dd	_493
	dd	_144
	dd	_153
	dd	1
	dd	_494
	dd	_144
	dd	_155
	dd	1
	dd	_495
	dd	_144
	dd	_145
	dd	1
	dd	_496
	dd	_144
	dd	_151
	dd	1
	dd	_497
	dd	_144
	dd	_155
	dd	1
	dd	_498
	dd	_144
	dd	_163
	dd	1
	dd	_499
	dd	_144
	dd	_179
	dd	1
	dd	_500
	dd	_144
	dd	_205
	dd	1
	dd	_501
	dd	_144
	dd	_305
	dd	1
	dd	_502
	dd	_144
	dd	_282
	dd	1
	dd	_503
	dd	_144
	dd	_284
	dd	1
	dd	_504
	dd	_144
	dd	_311
	dd	1
	dd	_505
	dd	_144
	dd	_313
	dd	1
	dd	_506
	dd	_144
	dd	_410
	dd	1
	dd	_507
	dd	_144
	dd	_280
	dd	1
	dd	_508
	dd	_144
	dd	_509
	dd	1
	dd	_510
	dd	_144
	dd	_147
	dd	1
	dd	_511
	dd	_144
	dd	_145
	dd	1
	dd	_512
	dd	_144
	dd	_151
	dd	1
	dd	_513
	dd	_144
	dd	_153
	dd	1
	dd	_514
	dd	_144
	dd	_509
	dd	1
	dd	_515
	dd	_144
	dd	_516
	dd	1
	dd	_517
	dd	_144
	dd	_518
	dd	1
	dd	_519
	dd	_144
	dd	_520
	dd	1
	dd	_521
	dd	_144
	dd	_280
	dd	1
	dd	_522
	dd	_144
	dd	_296
	dd	1
	dd	_523
	dd	_144
	dd	_280
	dd	1
	dd	_524
	dd	_144
	dd	_147
	dd	1
	dd	_525
	dd	_144
	dd	_145
	dd	1
	dd	_526
	dd	_144
	dd	_151
	dd	1
	dd	_527
	dd	_144
	dd	_528
	dd	4
	dd	_529
	dd	_530
	dd	_bb_BASS_Init
	dd	4
	dd	_531
	dd	_532
	dd	_bb_BASS_StreamCreateFile
	dd	4
	dd	_533
	dd	_532
	dd	_bb_BASS_WMA_StreamCreateFile
	dd	4
	dd	_534
	dd	_535
	dd	_bb_BASS_MusicLoad
	dd	4
	dd	_536
	dd	_537
	dd	_bb_BASS_ChannelPlay
	dd	4
	dd	_538
	dd	_539
	dd	_bb_BASS_Free
	dd	4
	dd	_540
	dd	_539
	dd	_bb_BASS_ErrorGetCode
	dd	4
	dd	_541
	dd	_542
	dd	_bb_BASS_StreamGetLength
	dd	4
	dd	_543
	dd	_542
	dd	_bb_BASS_ChannelStop
	dd	4
	dd	_544
	dd	_542
	dd	_bb_BASS_ChannelPause
	dd	4
	dd	_545
	dd	_542
	dd	_bb_BASS_ChannelIsActive
	dd	4
	dd	_546
	dd	_542
	dd	_bb_BASS_ChannelGetLevel
	dd	4
	dd	_547
	dd	_542
	dd	_bb_BASS_ChannelGetPosition
	dd	4
	dd	_548
	dd	_549
	dd	_bb_BASS_ChannelSetPosition
	dd	4
	dd	_550
	dd	_551
	dd	_bb_BASS_ChannelGetAttributes
	dd	4
	dd	_552
	dd	_553
	dd	_bb_BASS_ChannelSetAttributes
	dd	4
	dd	_554
	dd	_555
	dd	_bb_sfxvol
	dd	4
	dd	_556
	dd	_555
	dd	_bb_musicvol
	dd	4
	dd	_557
	dd	_144
	dd	_bb_musicchannel
	dd	4
	dd	_558
	dd	_559
	dd	_bb_sunloopchan
	dd	4
	dd	_560
	dd	_144
	dd	_bb_soundset
	dd	4
	dd	_561
	dd	_562
	dd	_bb_nme_born_snd
	dd	4
	dd	_563
	dd	_562
	dd	_bb_nme1_born_snd
	dd	4
	dd	_564
	dd	_562
	dd	_bb_nme2_born_snd
	dd	4
	dd	_565
	dd	_562
	dd	_bb_nme3_born_snd
	dd	4
	dd	_566
	dd	_562
	dd	_bb_nme4_born_snd
	dd	4
	dd	_567
	dd	_562
	dd	_bb_nme5_born_snd
	dd	4
	dd	_568
	dd	_562
	dd	_bb_nme5_loop_snd
	dd	4
	dd	_569
	dd	_562
	dd	_bb_nme5_shrink_snd
	dd	4
	dd	_570
	dd	_562
	dd	_bb_nme5_grow_snd
	dd	4
	dd	_571
	dd	_562
	dd	_bb_nme5_explode_snd
	dd	4
	dd	_572
	dd	_562
	dd	_bb_nme5_killed_snd
	dd	4
	dd	_573
	dd	_562
	dd	_bb_nme6_born_snd
	dd	4
	dd	_574
	dd	_562
	dd	_bb_nme6_tailexplode_snd
	dd	4
	dd	_575
	dd	_562
	dd	_bb_nme6_tailhit_snd
	dd	4
	dd	_576
	dd	_562
	dd	_bb_nme7_born_snd
	dd	4
	dd	_577
	dd	_562
	dd	_bb_nme7_shield_snd
	dd	4
	dd	_578
	dd	_562
	dd	_bb_nme8_born_snd
	dd	4
	dd	_579
	dd	_562
	dd	_bb_ge_born_snd
	dd	4
	dd	_580
	dd	_562
	dd	_bb_ge_hit_snd
	dd	4
	dd	_581
	dd	_562
	dd	_bb_ge_killed_snd
	dd	4
	dd	_582
	dd	_562
	dd	_bb_le_born_snd
	dd	4
	dd	_583
	dd	_562
	dd	_bb_le_hit_snd
	dd	4
	dd	_584
	dd	_562
	dd	_bb_le_killed_snd
	dd	4
	dd	_585
	dd	_562
	dd	_bb_pu_collect_snd
	dd	4
	dd	_586
	dd	_562
	dd	_bb_get_ready_snd
	dd	4
	dd	_587
	dd	_562
	dd	_bb_player_hit_snd
	dd	4
	dd	_588
	dd	_562
	dd	_bb_shot_born_snd
	dd	4
	dd	_589
	dd	_562
	dd	_bb_shot_hit_wall_snd
	dd	4
	dd	_590
	dd	_562
	dd	_bb_game_over_snd
	dd	4
	dd	_591
	dd	_562
	dd	_bb_super_bomb_snd
	dd	4
	dd	_592
	dd	_562
	dd	_bb_extra_life_snd
	dd	4
	dd	_593
	dd	_562
	dd	_bb_extra_bomb_snd
	dd	4
	dd	_594
	dd	_562
	dd	_bb_multiplier_increase_snd
	dd	4
	dd	_595
	dd	_562
	dd	_bb_bonus_born_snd
	dd	4
	dd	_596
	dd	_562
	dd	_bb_high_score_snd
	dd	4
	dd	_597
	dd	_562
	dd	_bb_quarkhitsound
	dd	4
	dd	_598
	dd	_562
	dd	_bb_quarkhit2sound
	dd	4
	dd	_599
	dd	_562
	dd	_bb_shieldwarningsnd
	dd	0
_92:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/sound.bmx",0
	align	4
_91:
	dd	_92
	dd	10
	dd	1
	align	4
_93:
	dd	_92
	dd	11
	dd	1
	align	4
_94:
	dd	_92
	dd	15
	dd	1
	align	4
_95:
	dd	_92
	dd	21
	dd	1
	align	4
_96:
	dd	_92
	dd	22
	dd	1
_97:
	db	":brl.audio.TChannel",0
	align	4
_102:
	dd	_92
	dd	25
	dd	1
	align	4
_103:
	dd	_92
	dd	27
	dd	1
	align	4
_104:
	dd	_92
	dd	28
	dd	1
	align	4
_105:
	dd	_92
	dd	29
	dd	1
	align	4
_106:
	dd	_92
	dd	30
	dd	1
	align	4
_107:
	dd	_92
	dd	31
	dd	1
	align	4
_108:
	dd	_92
	dd	33
	dd	1
	align	4
_109:
	dd	_92
	dd	34
	dd	1
	align	4
_110:
	dd	_92
	dd	35
	dd	1
	align	4
_111:
	dd	_92
	dd	36
	dd	1
	align	4
_112:
	dd	_92
	dd	37
	dd	1
	align	4
_113:
	dd	_92
	dd	38
	dd	1
	align	4
_114:
	dd	_92
	dd	40
	dd	1
	align	4
_115:
	dd	_92
	dd	41
	dd	1
	align	4
_116:
	dd	_92
	dd	42
	dd	1
	align	4
_117:
	dd	_92
	dd	44
	dd	1
	align	4
_118:
	dd	_92
	dd	45
	dd	1
	align	4
_119:
	dd	_92
	dd	47
	dd	1
	align	4
_120:
	dd	_92
	dd	49
	dd	1
	align	4
_121:
	dd	_92
	dd	50
	dd	1
	align	4
_122:
	dd	_92
	dd	51
	dd	1
	align	4
_123:
	dd	_92
	dd	53
	dd	1
	align	4
_124:
	dd	_92
	dd	54
	dd	1
	align	4
_125:
	dd	_92
	dd	55
	dd	1
	align	4
_126:
	dd	_92
	dd	57
	dd	1
	align	4
_127:
	dd	_92
	dd	59
	dd	1
	align	4
_128:
	dd	_92
	dd	61
	dd	1
	align	4
_129:
	dd	_92
	dd	63
	dd	1
	align	4
_130:
	dd	_92
	dd	64
	dd	1
	align	4
_131:
	dd	_92
	dd	66
	dd	1
	align	4
_132:
	dd	_92
	dd	68
	dd	1
	align	4
_133:
	dd	_92
	dd	70
	dd	1
	align	4
_134:
	dd	_92
	dd	72
	dd	1
	align	4
_135:
	dd	_92
	dd	74
	dd	1
	align	4
_136:
	dd	_92
	dd	75
	dd	1
	align	4
_137:
	dd	_92
	dd	76
	dd	1
	align	4
_138:
	dd	_92
	dd	78
	dd	1
	align	4
_139:
	dd	_92
	dd	79
	dd	1
	align	4
_140:
	dd	_92
	dd	81
	dd	1
_993:
	db	"LoadSounds",0
_994:
	db	"folder",0
_995:
	db	"$",0
	align	4
_992:
	dd	1
	dd	_993
	dd	2
	dd	_994
	dd	_995
	dd	-4
	dd	0
	align	4
_602:
	dd	_92
	dd	85
	dd	2
	align	4
_604:
	dd	_92
	dd	87
	dd	2
	align	4
_609:
	dd	3
	dd	0
	dd	0
	align	4
_608:
	dd	_92
	dd	91
	dd	4
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,111,117,110,100,115,47
	align	4
_611:
	dd	3
	dd	0
	dd	0
	align	4
_610:
	dd	_92
	dd	89
	dd	4
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,111,117,110,100,115,47,117,115,101,114,47
	align	4
_612:
	dd	_92
	dd	94
	dd	2
	align	4
_617:
	dd	_92
	dd	95
	dd	2
	align	4
_622:
	dd	_92
	dd	96
	dd	2
	align	4
_627:
	dd	_92
	dd	97
	dd	2
	align	4
_632:
	dd	_92
	dd	98
	dd	2
	align	4
_637:
	dd	_92
	dd	100
	dd	2
	align	4
_642:
	dd	_92
	dd	101
	dd	2
	align	4
_647:
	dd	_92
	dd	102
	dd	2
	align	4
_652:
	dd	_92
	dd	103
	dd	2
	align	4
_657:
	dd	_92
	dd	104
	dd	2
	align	4
_662:
	dd	_92
	dd	105
	dd	2
	align	4
_667:
	dd	_92
	dd	107
	dd	2
	align	4
_672:
	dd	_92
	dd	108
	dd	2
	align	4
_677:
	dd	_92
	dd	109
	dd	2
	align	4
_682:
	dd	_92
	dd	111
	dd	2
	align	4
_687:
	dd	_92
	dd	112
	dd	2
	align	4
_692:
	dd	_92
	dd	114
	dd	2
	align	4
_697:
	dd	_92
	dd	116
	dd	2
	align	4
_702:
	dd	_92
	dd	117
	dd	2
	align	4
_707:
	dd	_92
	dd	118
	dd	2
	align	4
_712:
	dd	_92
	dd	120
	dd	2
	align	4
_717:
	dd	_92
	dd	121
	dd	2
	align	4
_722:
	dd	_92
	dd	122
	dd	2
	align	4
_727:
	dd	_92
	dd	124
	dd	2
	align	4
_732:
	dd	_92
	dd	126
	dd	2
	align	4
_737:
	dd	_92
	dd	128
	dd	2
	align	4
_742:
	dd	_92
	dd	130
	dd	2
	align	4
_747:
	dd	_92
	dd	131
	dd	2
	align	4
_752:
	dd	_92
	dd	133
	dd	2
	align	4
_757:
	dd	_92
	dd	135
	dd	2
	align	4
_762:
	dd	_92
	dd	137
	dd	2
	align	4
_767:
	dd	_92
	dd	139
	dd	2
	align	4
_772:
	dd	_92
	dd	141
	dd	2
	align	4
_777:
	dd	_92
	dd	142
	dd	2
	align	4
_782:
	dd	_92
	dd	143
	dd	2
	align	4
_787:
	dd	_92
	dd	145
	dd	2
	align	4
_792:
	dd	_92
	dd	146
	dd	2
	align	4
_797:
	dd	_92
	dd	147
	dd	2
	align	4
_802:
	dd	_92
	dd	150
	dd	2
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,51,46,119,97,118
	align	4
_807:
	dd	_92
	dd	151
	dd	2
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	112,111,112,50,46,119,97,118
	align	4
_812:
	dd	_92
	dd	152
	dd	2
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	112,111,112,51,46,119,97,118
	align	4
_817:
	dd	_92
	dd	153
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	115,110,97,107,101,49,46,119,97,118
	align	4
_822:
	dd	_92
	dd	154
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	103,114,117,110,116,98,111,114,110,46,119,97,118
	align	4
_827:
	dd	_92
	dd	156
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,117,110,49,46,119,97,118
	align	4
_832:
	dd	_92
	dd	157
	dd	2
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,111,110,100,108,111,111,112,46,119,97,118
	align	4
_837:
	dd	_92
	dd	158
	dd	2
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,117,110,104,105,116,49,46,119,97,118
	align	4
_842:
	dd	_92
	dd	159
	dd	2
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,105,122,122,108,101,49,46,119,97,118
	align	4
_847:
	dd	_92
	dd	160
	dd	2
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	115,117,110,101,120,112,46,119,97,118
	align	4
_852:
	dd	_92
	dd	161
	dd	2
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	69,120,112,108,111,49,46,119,97,118
	align	4
_857:
	dd	_92
	dd	163
	dd	2
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,101,101,46,119,97,118
	align	4
_862:
	dd	_92
	dd	164
	dd	2
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,110,97,107,101,104,105,116,46,119,97,118
	align	4
_867:
	dd	_92
	dd	165
	dd	2
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,97,105,108,104,105,116,46,119,97,118
	align	4
_872:
	dd	_92
	dd	167
	dd	2
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	119,97,114,110,49,46,119,97,118
	align	4
_877:
	dd	_92
	dd	168
	dd	2
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,104,105,101,108,100,49,46,119,97,118
	align	4
_882:
	dd	_92
	dd	170
	dd	2
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	98,117,116,116,101,114,102,108,121,46,119,97,118
	align	4
_887:
	dd	_92
	dd	172
	dd	2
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	99,97,116,46,119,97,118
	align	4
_892:
	dd	_92
	dd	173
	dd	2
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	103,101,110,104,105,116,49,46,119,97,118
	align	4
_897:
	dd	_92
	dd	174
	dd	2
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	103,101,110,107,105,108,108,101,100,49,46,119,97,118
	align	4
_902:
	dd	_92
	dd	176
	dd	2
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,49,46,119,97,118
	align	4
_907:
	dd	_92
	dd	177
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,99,104,111,49,46,119,97,118
	align	4
_912:
	dd	_92
	dd	178
	dd	2
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	101,108,97,115,116,105,99,46,119,97,118
	align	4
_917:
	dd	_92
	dd	180
	dd	2
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,111,110,117,115,49,46,119,97,118
	align	4
_922:
	dd	_92
	dd	182
	dd	2
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,97,114,116,117,112,46,119,97,118
	align	4
_927:
	dd	_92
	dd	184
	dd	2
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,105,101,49,46,119,97,118
	align	4
_932:
	dd	_92
	dd	186
	dd	2
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,104,111,116,98,111,114,110,46,119,97,118
	align	4
_937:
	dd	_92
	dd	187
	dd	2
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,104,111,116,119,97,108,108,46,119,97,118
	align	4
_942:
	dd	_92
	dd	189
	dd	2
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,97,109,101,111,118,101,114,46,119,97,118
	align	4
_947:
	dd	_92
	dd	191
	dd	2
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	101,120,112,108,111,49,46,119,97,118
	align	4
_952:
	dd	_92
	dd	193
	dd	2
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	98,114,97,105,110,98,111,114,110,46,119,97,118
	align	4
_957:
	dd	_92
	dd	195
	dd	2
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	98,117,122,122,50,46,119,97,118
	align	4
_962:
	dd	_92
	dd	197
	dd	2
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,111,110,117,115,50,46,119,97,118
	align	4
_967:
	dd	_92
	dd	198
	dd	2
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	98,111,110,117,115,98,111,114,110,46,119,97,118
	align	4
_972:
	dd	_92
	dd	199
	dd	2
	align	4
_977:
	dd	_92
	dd	201
	dd	2
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	113,117,97,114,107,104,105,116,46,119,97,118
	align	4
_982:
	dd	_92
	dd	202
	dd	2
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	113,117,97,114,107,104,105,116,50,46,119,97,118
	align	4
_987:
	dd	_92
	dd	204
	dd	2
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	115,104,105,101,108,100,119,97,114,110,105,110,103,46,119,97
	dw	118
_1013:
	db	"PlaySound2",0
_1014:
	db	"snd",0
_1015:
	db	"freq",0
_1016:
	db	"pan",0
_1017:
	db	"vol",0
_1018:
	db	"ch",0
_1019:
	db	":brl.audio.TChannel",0
	align	4
_1012:
	dd	1
	dd	_1013
	dd	2
	dd	_1014
	dd	_562
	dd	-4
	dd	2
	dd	_1015
	dd	_555
	dd	-8
	dd	2
	dd	_1016
	dd	_555
	dd	-12
	dd	2
	dd	_1017
	dd	_555
	dd	-16
	dd	2
	dd	_1018
	dd	_1019
	dd	-20
	dd	0
	align	4
_996:
	dd	_92
	dd	211
	dd	2
	align	4
_998:
	dd	_92
	dd	213
	dd	2
	align	4
_1010:
	dd	3
	dd	0
	dd	0
	align	4
_1002:
	dd	_92
	dd	214
	dd	3
	align	4
_1003:
	dd	_92
	dd	215
	dd	3
	align	4
_1006:
	dd	3
	dd	0
	dd	0
	align	4
_1005:
	dd	_92
	dd	216
	dd	4
	align	4
_1007:
	dd	_92
	dd	218
	dd	3
	align	4
_1008:
	dd	_92
	dd	219
	dd	3
	align	4
_1009:
	dd	_92
	dd	220
	dd	3
	align	4
_1011:
	dd	_92
	dd	222
	dd	2
_1029:
	db	"SetPanAndVolume",0
	align	4
_1028:
	dd	1
	dd	_1029
	dd	2
	dd	_1018
	dd	_1019
	dd	-4
	dd	2
	dd	_1016
	dd	_555
	dd	-8
	dd	2
	dd	_1017
	dd	_555
	dd	-12
	dd	0
	align	4
_1020:
	dd	_92
	dd	229
	dd	2
	align	4
_1027:
	dd	3
	dd	0
	dd	0
	align	4
_1022:
	dd	_92
	dd	230
	dd	3
	align	4
_1026:
	dd	3
	dd	0
	dd	0
	align	4
_1024:
	dd	_92
	dd	231
	dd	4
	align	4
_1025:
	dd	_92
	dd	232
	dd	4
_1044:
	db	"AdjustVolume",0
_1045:
	db	"t",0
	align	4
_1043:
	dd	1
	dd	_1044
	dd	2
	dd	_1045
	dd	_144
	dd	-4
	dd	0
	align	4
_1030:
	dd	_92
	dd	241
	dd	2
	align	4
_1032:
	dd	_92
	dd	243
	dd	2
	align	4
_1042:
	dd	3
	dd	0
	dd	0
	align	4
_1034:
	dd	_92
	dd	244
	dd	3
	align	4
_1041:
	dd	3
	dd	0
	dd	0
	align	4
_1038:
	dd	_92
	dd	245
	dd	4
_1068:
	db	"StopLoopingSounds",0
	align	4
_1067:
	dd	1
	dd	_1068
	dd	2
	dd	_1045
	dd	_144
	dd	-4
	dd	0
	align	4
_1046:
	dd	_92
	dd	253
	dd	2
	align	4
_1048:
	dd	_92
	dd	255
	dd	2
	align	4
_1066:
	dd	3
	dd	0
	dd	0
	align	4
_1050:
	dd	_92
	dd	256
	dd	3
	align	4
_1065:
	dd	3
	dd	0
	dd	0
	align	4
_1054:
	dd	_92
	dd	257
	dd	4
	align	4
_1057:
	dd	_92
	dd	258
	dd	4
_1101:
	db	"StartMusic",0
_1102:
	db	"song",0
_1103:
	db	"dev",0
	align	4
_1100:
	dd	1
	dd	_1101
	dd	2
	dd	_1102
	dd	_144
	dd	-4
	dd	2
	dd	_555
	dd	_995
	dd	-8
	dd	2
	dd	_1103
	dd	_144
	dd	-12
	dd	0
	align	4
_1069:
	dd	_92
	dd	289
	dd	2
	align	4
_1072:
	dd	3
	dd	0
	dd	0
	align	4
_1071:
	dd	_92
	dd	289
	dd	28
	align	4
_1073:
	dd	_92
	dd	291
	dd	2
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_1075:
	dd	_92
	dd	293
	dd	2
	align	4
_1082:
	dd	3
	dd	0
	dd	0
	align	4
_1081:
	dd	_92
	dd	295
	dd	4
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,117,115,105,99,47,84,104,101,109,101,48,46,105,116
	align	4
_1084:
	dd	3
	dd	0
	dd	0
	align	4
_1083:
	dd	_92
	dd	297
	dd	4
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,117,115,105,99,47,84,104,101,109,101,49,46,105,116
	align	4
_1086:
	dd	3
	dd	0
	dd	0
	align	4
_1085:
	dd	_92
	dd	299
	dd	4
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,117,115,105,99,47,84,104,101,109,101,50,46,105,116
	align	4
_1087:
	dd	_92
	dd	302
	dd	2
	align	4
_1088:
	dd	_92
	dd	303
	dd	2
	align	4
_1090:
	dd	_92
	dd	304
	dd	2
	align	4
_1099:
	dd	3
	dd	0
	dd	0
	align	4
_1092:
	dd	_92
	dd	305
	dd	3
	align	4
_1097:
	dd	_92
	dd	306
	dd	3
	align	4
_1145:
	dd	0x42c80000
	align	4
_1098:
	dd	_92
	dd	307
	dd	3
_1111:
	db	"StopMusic",0
	align	4
_1110:
	dd	1
	dd	_1111
	dd	0
	align	4
_1104:
	dd	_92
	dd	330
	dd	2
	align	4
_1109:
	dd	3
	dd	0
	dd	0
	align	4
_1106:
	dd	_92
	dd	331
	dd	3
	align	4
_1107:
	dd	_92
	dd	332
	dd	3
	align	4
_1108:
	dd	_92
	dd	333
	dd	3
_1117:
	db	"SetMusicVolume",0
	align	4
_1116:
	dd	1
	dd	_1117
	dd	0
	align	4
_1112:
	dd	_92
	dd	353
	dd	2
	align	4
_1115:
	dd	3
	dd	0
	dd	0
	align	4
_1114:
	dd	_92
	dd	354
	dd	3
	align	4
_1159:
	dd	0x42c80000
