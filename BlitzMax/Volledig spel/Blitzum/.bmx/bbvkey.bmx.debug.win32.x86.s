	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	public	___bb_blitzmax_code_archief__spel__blitzum_bbvkey
	public	_bb_ChannelPitch
	public	_bb_FreeBank
	public	_bb_Locate
	public	_bb_LoopSound
	public	_bb_MouseZSpeed
	public	_bb_PlayCDTrack
	public	_bb_SoundVolume
	public	_bb_VKEY
	public	_bb_VKeyDown
	public	_bb_VKeyHit
	section	"code" code
___bb_blitzmax_code_archief__spel__blitzum_bbvkey:
	push	ebp
	mov	ebp,esp
	sub	esp,100
	push	ebx
	cmp	dword [_95],0
	je	_96
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_96:
	mov	dword [_95],1
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],0
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	push	ebp
	push	_66
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_64]
	and	eax,1
	cmp	eax,0
	jne	_65
	push	238
	push	_62
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [eax+24],0
	mov	dword [eax+28],27
	mov	dword [eax+32],49
	mov	dword [eax+36],50
	mov	dword [eax+40],51
	mov	dword [eax+44],52
	mov	dword [eax+48],53
	mov	dword [eax+52],54
	mov	dword [eax+56],55
	mov	dword [eax+60],56
	mov	dword [eax+64],57
	mov	dword [eax+68],48
	mov	dword [eax+72],189
	mov	dword [eax+76],187
	mov	dword [eax+80],8
	mov	dword [eax+84],9
	mov	dword [eax+88],81
	mov	dword [eax+92],87
	mov	dword [eax+96],69
	mov	dword [eax+100],82
	mov	dword [eax+104],84
	mov	dword [eax+108],89
	mov	dword [eax+112],85
	mov	dword [eax+116],73
	mov	dword [eax+120],79
	mov	dword [eax+124],80
	mov	dword [eax+128],219
	mov	dword [eax+132],221
	mov	dword [eax+136],13
	mov	dword [eax+140],162
	mov	dword [eax+144],65
	mov	dword [eax+148],83
	mov	dword [eax+152],68
	mov	dword [eax+156],70
	mov	dword [eax+160],71
	mov	dword [eax+164],72
	mov	dword [eax+168],74
	mov	dword [eax+172],75
	mov	dword [eax+176],76
	mov	dword [eax+180],186
	mov	dword [eax+184],222
	mov	dword [eax+188],192
	mov	dword [eax+192],160
	mov	dword [eax+196],226
	mov	dword [eax+200],90
	mov	dword [eax+204],88
	mov	dword [eax+208],67
	mov	dword [eax+212],86
	mov	dword [eax+216],66
	mov	dword [eax+220],78
	mov	dword [eax+224],77
	mov	dword [eax+228],188
	mov	dword [eax+232],190
	mov	dword [eax+236],191
	mov	dword [eax+240],161
	mov	dword [eax+244],106
	mov	edx,dword [ebp-4]
	mov	dword [eax+248],edx
	mov	dword [eax+252],32
	mov	edx,dword [ebp-8]
	mov	dword [eax+256],edx
	mov	dword [eax+260],112
	mov	dword [eax+264],113
	mov	dword [eax+268],114
	mov	dword [eax+272],115
	mov	dword [eax+276],116
	mov	dword [eax+280],117
	mov	dword [eax+284],118
	mov	dword [eax+288],119
	mov	dword [eax+292],120
	mov	dword [eax+296],121
	mov	edx,dword [ebp-12]
	mov	dword [eax+300],edx
	mov	edx,dword [ebp-16]
	mov	dword [eax+304],edx
	mov	dword [eax+308],103
	mov	dword [eax+312],104
	mov	dword [eax+316],105
	mov	dword [eax+320],109
	mov	dword [eax+324],100
	mov	dword [eax+328],101
	mov	dword [eax+332],102
	mov	dword [eax+336],107
	mov	dword [eax+340],97
	mov	dword [eax+344],98
	mov	dword [eax+348],99
	mov	dword [eax+352],96
	mov	dword [eax+356],110
	mov	edx,dword [ebp-20]
	mov	dword [eax+360],edx
	mov	dword [eax+364],122
	mov	dword [eax+368],123
	mov	dword [eax+372],0
	mov	dword [eax+376],0
	mov	dword [eax+380],0
	mov	dword [eax+384],0
	mov	dword [eax+388],0
	mov	dword [eax+392],0
	mov	dword [eax+396],0
	mov	dword [eax+400],0
	mov	dword [eax+404],0
	mov	dword [eax+408],0
	mov	dword [eax+412],0
	mov	dword [eax+416],0
	mov	dword [eax+420],0
	mov	dword [eax+424],0
	mov	dword [eax+428],0
	mov	dword [eax+432],0
	mov	dword [eax+436],0
	mov	dword [eax+440],0
	mov	dword [eax+444],0
	mov	dword [eax+448],0
	mov	dword [eax+452],0
	mov	dword [eax+456],0
	mov	dword [eax+460],0
	mov	dword [eax+464],0
	mov	dword [eax+468],0
	mov	dword [eax+472],0
	mov	dword [eax+476],0
	mov	dword [eax+480],0
	mov	dword [eax+484],0
	mov	dword [eax+488],0
	mov	dword [eax+492],0
	mov	dword [eax+496],0
	mov	dword [eax+500],0
	mov	dword [eax+504],0
	mov	dword [eax+508],0
	mov	dword [eax+512],0
	mov	dword [eax+516],0
	mov	dword [eax+520],0
	mov	dword [eax+524],0
	mov	dword [eax+528],0
	mov	dword [eax+532],0
	mov	dword [eax+536],0
	mov	dword [eax+540],0
	mov	dword [eax+544],0
	mov	dword [eax+548],0
	mov	dword [eax+552],0
	mov	dword [eax+556],0
	mov	dword [eax+560],0
	mov	dword [eax+564],0
	mov	dword [eax+568],0
	mov	dword [eax+572],0
	mov	dword [eax+576],0
	mov	dword [eax+580],0
	mov	dword [eax+584],0
	mov	dword [eax+588],187
	mov	dword [eax+592],0
	mov	dword [eax+596],0
	mov	edx,dword [ebp-24]
	mov	dword [eax+600],edx
	mov	dword [eax+604],0
	mov	dword [eax+608],0
	mov	dword [eax+612],0
	mov	dword [eax+616],0
	mov	dword [eax+620],0
	mov	dword [eax+624],0
	mov	dword [eax+628],0
	mov	dword [eax+632],0
	mov	edx,dword [ebp-28]
	mov	dword [eax+636],edx
	mov	dword [eax+640],0
	mov	dword [eax+644],0
	mov	dword [eax+648],13
	mov	dword [eax+652],163
	mov	dword [eax+656],0
	mov	dword [eax+660],0
	mov	edx,dword [ebp-32]
	mov	dword [eax+664],edx
	mov	dword [eax+668],0
	mov	edx,dword [ebp-36]
	mov	dword [eax+672],edx
	mov	dword [eax+676],0
	mov	edx,dword [ebp-40]
	mov	dword [eax+680],edx
	mov	dword [eax+684],0
	mov	dword [eax+688],0
	mov	dword [eax+692],0
	mov	dword [eax+696],0
	mov	dword [eax+700],0
	mov	dword [eax+704],0
	mov	dword [eax+708],0
	mov	dword [eax+712],0
	mov	dword [eax+716],0
	mov	edx,dword [ebp-44]
	mov	dword [eax+720],edx
	mov	dword [eax+724],0
	mov	edx,dword [ebp-48]
	mov	dword [eax+728],edx
	mov	dword [eax+732],0
	mov	edx,dword [ebp-52]
	mov	dword [eax+736],edx
	mov	edx,dword [ebp-56]
	mov	dword [eax+740],edx
	mov	dword [eax+744],0
	mov	dword [eax+748],111
	mov	dword [eax+752],0
	mov	dword [eax+756],44
	mov	dword [eax+760],0
	mov	dword [eax+764],0
	mov	dword [eax+768],0
	mov	dword [eax+772],0
	mov	dword [eax+776],0
	mov	dword [eax+780],0
	mov	dword [eax+784],0
	mov	dword [eax+788],0
	mov	dword [eax+792],0
	mov	dword [eax+796],0
	mov	dword [eax+800],0
	mov	dword [eax+804],0
	mov	dword [eax+808],0
	mov	edx,dword [ebp-60]
	mov	dword [eax+812],edx
	mov	dword [eax+816],0
	mov	dword [eax+820],36
	mov	dword [eax+824],38
	mov	dword [eax+828],33
	mov	dword [eax+832],0
	mov	dword [eax+836],37
	mov	dword [eax+840],0
	mov	dword [eax+844],39
	mov	dword [eax+848],0
	mov	dword [eax+852],35
	mov	dword [eax+856],40
	mov	dword [eax+860],34
	mov	dword [eax+864],45
	mov	dword [eax+868],46
	mov	dword [eax+872],0
	mov	dword [eax+876],0
	mov	dword [eax+880],0
	mov	dword [eax+884],0
	mov	dword [eax+888],0
	mov	dword [eax+892],0
	mov	dword [eax+896],0
	mov	edx,dword [ebp-64]
	mov	dword [eax+900],edx
	mov	edx,dword [ebp-68]
	mov	dword [eax+904],edx
	mov	dword [eax+908],0
	mov	dword [eax+912],0
	mov	dword [eax+916],0
	mov	dword [eax+920],0
	mov	dword [eax+924],0
	mov	dword [eax+928],0
	mov	dword [eax+932],0
	mov	dword [eax+936],0
	mov	edx,dword [ebp-72]
	mov	dword [eax+940],edx
	mov	edx,dword [ebp-76]
	mov	dword [eax+944],edx
	mov	edx,dword [ebp-80]
	mov	dword [eax+948],edx
	mov	edx,dword [ebp-84]
	mov	dword [eax+952],edx
	mov	edx,dword [ebp-88]
	mov	dword [eax+956],edx
	mov	edx,dword [ebp-92]
	mov	dword [eax+960],edx
	mov	dword [eax+964],0
	mov	edx,dword [ebp-96]
	mov	dword [eax+968],edx
	mov	edx,dword [ebp-100]
	mov	dword [eax+972],edx
	inc	dword [eax+4]
	mov	dword [_bb_VKEY],eax
	or	dword [_64],1
_65:
	mov	ebx,0
_2:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_VKeyDown:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_VKEY]
	cmp	ebx,dword [eax+20]
	jb	_99
	call	_brl_blitz_ArrayBoundsError
_99:
	mov	eax,dword [_bb_VKEY]
	push	dword [eax+ebx*4+24]
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	ebx,eax
_5:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_VKeyHit:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_VKEY]
	cmp	ebx,dword [eax+20]
	jb	_105
	call	_brl_blitz_ArrayBoundsError
_105:
	mov	eax,dword [_bb_VKEY]
	push	dword [eax+ebx*4+24]
	call	_brl_polledinput_KeyHit
	add	esp,4
	mov	ebx,eax
_8:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Locate:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_12:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MouseZSpeed:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_14:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_FreeBank:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_17:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LoopSound:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_20:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ChannelPitch:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_24:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PlayCDTrack:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_28:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SoundVolume:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	push	ebp
	push	_135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_32:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_95:
	dd	0
_67:
	db	"bbvkey",0
_68:
	db	"KEY_ALT",0
_62:
	db	"i",0
_69:
	db	"KEY_CAPSLOCK",0
_70:
	db	"KEY_NUMLOCK",0
_71:
	db	"KEY_SCROLL",0
_72:
	db	"KEY_NUMSLASH",0
_73:
	db	"KEY_MEDIA_PREV_TRACK",0
_74:
	db	"KEY_MEDIA_NEXT_TRACK",0
_75:
	db	"KEY_VOLUME_MUTE",0
_76:
	db	"KEY_MEDIA_PLAY_PAUSE",0
_77:
	db	"KEY_MEDIA_STOP",0
_78:
	db	"KEY_VOLUME_DOWN",0
_79:
	db	"KEY_VOLUME_UP",0
_80:
	db	"KEY_BROWSER_HOME",0
_81:
	db	"KEY_DECIMAL",0
_82:
	db	"KEY_PAUSE",0
_83:
	db	"KEY_LWIN",0
_84:
	db	"KEY_RWIN",0
_85:
	db	"KEY_BROWSER_SEARCH",0
_86:
	db	"KEY_BROWSER_FAVORITES",0
_87:
	db	"KEY_BROWSER_REFRESH",0
_88:
	db	"KEY_BROWSER_STOP",0
_89:
	db	"KEY_BROWSER_FORWARD",0
_90:
	db	"KEY_BROWSER_BACK",0
_91:
	db	"KEY_LAUNCH_MAIL",0
_92:
	db	"KEY_LAUNCH_MEDIA_SELECT",0
_93:
	db	"VKEY",0
_94:
	db	"[]i",0
	align	4
_bb_VKEY:
	dd	_bbEmptyArray
	align	4
_66:
	dd	1
	dd	_67
	dd	2
	dd	_68
	dd	_62
	dd	-4
	dd	2
	dd	_69
	dd	_62
	dd	-8
	dd	2
	dd	_70
	dd	_62
	dd	-12
	dd	2
	dd	_71
	dd	_62
	dd	-16
	dd	2
	dd	_72
	dd	_62
	dd	-20
	dd	2
	dd	_73
	dd	_62
	dd	-24
	dd	2
	dd	_74
	dd	_62
	dd	-28
	dd	2
	dd	_75
	dd	_62
	dd	-32
	dd	2
	dd	_76
	dd	_62
	dd	-36
	dd	2
	dd	_77
	dd	_62
	dd	-40
	dd	2
	dd	_78
	dd	_62
	dd	-44
	dd	2
	dd	_79
	dd	_62
	dd	-48
	dd	2
	dd	_80
	dd	_62
	dd	-52
	dd	2
	dd	_81
	dd	_62
	dd	-56
	dd	2
	dd	_82
	dd	_62
	dd	-60
	dd	2
	dd	_83
	dd	_62
	dd	-64
	dd	2
	dd	_84
	dd	_62
	dd	-68
	dd	2
	dd	_85
	dd	_62
	dd	-72
	dd	2
	dd	_86
	dd	_62
	dd	-76
	dd	2
	dd	_87
	dd	_62
	dd	-80
	dd	2
	dd	_88
	dd	_62
	dd	-84
	dd	2
	dd	_89
	dd	_62
	dd	-88
	dd	2
	dd	_90
	dd	_62
	dd	-92
	dd	2
	dd	_91
	dd	_62
	dd	-96
	dd	2
	dd	_92
	dd	_62
	dd	-100
	dd	4
	dd	_93
	dd	_94
	dd	_bb_VKEY
	dd	0
_35:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, Blitzum/bbvkey.bmx",0
	align	4
_34:
	dd	_35
	dd	3
	dd	1
	align	4
_64:
	dd	0
_101:
	db	"VKeyDown",0
_102:
	db	"key",0
	align	4
_100:
	dd	1
	dd	_101
	dd	2
	dd	_102
	dd	_62
	dd	-4
	dd	0
	align	4
_97:
	dd	_35
	dd	26
	dd	24
_107:
	db	"VKeyHit",0
	align	4
_106:
	dd	1
	dd	_107
	dd	2
	dd	_102
	dd	_62
	dd	-4
	dd	0
	align	4
_103:
	dd	_35
	dd	27
	dd	23
_110:
	db	"Locate",0
_111:
	db	"x",0
_112:
	db	"y",0
	align	4
_109:
	dd	1
	dd	_110
	dd	2
	dd	_111
	dd	_62
	dd	-4
	dd	2
	dd	_112
	dd	_62
	dd	-8
	dd	0
	align	4
_108:
	dd	_35
	dd	31
	dd	24
_115:
	db	"MouseZSpeed",0
	align	4
_114:
	dd	1
	dd	_115
	dd	0
	align	4
_113:
	dd	_35
	dd	32
	dd	24
_118:
	db	"FreeBank",0
_119:
	db	"bank",0
	align	4
_117:
	dd	1
	dd	_118
	dd	2
	dd	_119
	dd	_62
	dd	-4
	dd	0
	align	4
_116:
	dd	_35
	dd	33
	dd	25
_122:
	db	"LoopSound",0
_123:
	db	"sound",0
	align	4
_121:
	dd	1
	dd	_122
	dd	2
	dd	_123
	dd	_62
	dd	-4
	dd	0
	align	4
_120:
	dd	_35
	dd	34
	dd	27
_126:
	db	"ChannelPitch",0
_127:
	db	"channel",0
_128:
	db	"hz",0
	align	4
_125:
	dd	1
	dd	_126
	dd	2
	dd	_127
	dd	_62
	dd	-4
	dd	2
	dd	_128
	dd	_62
	dd	-8
	dd	0
	align	4
_124:
	dd	_35
	dd	35
	dd	35
_131:
	db	"PlayCDTrack",0
_132:
	db	"track",0
_133:
	db	"mode",0
	align	4
_130:
	dd	1
	dd	_131
	dd	2
	dd	_132
	dd	_62
	dd	-4
	dd	2
	dd	_133
	dd	_62
	dd	-8
	dd	0
	align	4
_129:
	dd	_35
	dd	36
	dd	38
_136:
	db	"SoundVolume",0
_137:
	db	"volume",0
_138:
	db	"f",0
	align	4
_135:
	dd	1
	dd	_136
	dd	2
	dd	_123
	dd	_62
	dd	-4
	dd	2
	dd	_137
	dd	_138
	dd	-8
	dd	0
	align	4
_134:
	dd	_35
	dd	37
	dd	39
