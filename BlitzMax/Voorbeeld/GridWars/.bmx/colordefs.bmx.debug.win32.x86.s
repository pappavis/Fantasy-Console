	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	public	___bb_blitzmax_code_archief__spel__gridwars_colordefs
	public	_bb_COL_BOMB_B
	public	_bb_COL_BOMB_G
	public	_bb_COL_BOMB_R
	public	_bb_COL_BUTTER_B
	public	_bb_COL_BUTTER_G
	public	_bb_COL_BUTTER_R
	public	_bb_COL_CLONE_B
	public	_bb_COL_CLONE_G
	public	_bb_COL_CLONE_R
	public	_bb_COL_CUBE_B
	public	_bb_COL_CUBE_G
	public	_bb_COL_CUBE_R
	public	_bb_COL_DIAMOND_B
	public	_bb_COL_DIAMOND_G
	public	_bb_COL_DIAMOND_R
	public	_bb_COL_PIN_B
	public	_bb_COL_PIN_G
	public	_bb_COL_PIN_R
	public	_bb_COL_PLAYER_B
	public	_bb_COL_PLAYER_G
	public	_bb_COL_PLAYER_R
	public	_bb_COL_POWERUP_B
	public	_bb_COL_POWERUP_G
	public	_bb_COL_POWERUP_R
	public	_bb_COL_SCORE_B
	public	_bb_COL_SCORE_G
	public	_bb_COL_SCORE_R
	public	_bb_COL_SEEKER_B
	public	_bb_COL_SEEKER_G
	public	_bb_COL_SEEKER_R
	public	_bb_COL_SHOT1_B
	public	_bb_COL_SHOT1_G
	public	_bb_COL_SHOT1_R
	public	_bb_COL_SHOT2_B
	public	_bb_COL_SHOT2_G
	public	_bb_COL_SHOT2_R
	public	_bb_COL_SHOT_B
	public	_bb_COL_SHOT_G
	public	_bb_COL_SHOT_R
	public	_bb_COL_SNAKE_B
	public	_bb_COL_SNAKE_G
	public	_bb_COL_SNAKE_R
	public	_bb_COL_SQUARE_B
	public	_bb_COL_SQUARE_G
	public	_bb_COL_SQUARE_R
	public	_bb_COL_SUN_B
	public	_bb_COL_SUN_G
	public	_bb_COL_SUN_R
	public	_bb_COL_TAIL_B
	public	_bb_COL_TAIL_G
	public	_bb_COL_TAIL_R
	public	_bb_COL_TRAIL_B
	public	_bb_COL_TRAIL_G
	public	_bb_COL_TRAIL_R
	public	_bb_COL_TRIANGLE_B
	public	_bb_COL_TRIANGLE_G
	public	_bb_COL_TRIANGLE_R
	section	"code" code
___bb_blitzmax_code_archief__spel__gridwars_colordefs:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_122],0
	je	_123
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_123:
	mov	dword [_122],1
	push	ebp
	push	_62
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	push	_4
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_6
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_7
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_8
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_9
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_10
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_11
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_12
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_13
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_14
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_15
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_16
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_17
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_19
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_20
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_21
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_22
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_23
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_24
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_28
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_29
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
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
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_53
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_2:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_122:
	dd	0
_63:
	db	"colordefs",0
_64:
	db	"COL_SQUARE_R",0
_65:
	db	"i",0
	align	4
_bb_COL_SQUARE_R:
	dd	32
_66:
	db	"COL_SQUARE_G",0
	align	4
_bb_COL_SQUARE_G:
	dd	255
_67:
	db	"COL_SQUARE_B",0
	align	4
_bb_COL_SQUARE_B:
	dd	32
_68:
	db	"COL_PIN_R",0
	align	4
_bb_COL_PIN_R:
	dd	200
_69:
	db	"COL_PIN_G",0
	align	4
_bb_COL_PIN_G:
	dd	64
_70:
	db	"COL_PIN_B",0
	align	4
_bb_COL_PIN_B:
	dd	255
_71:
	db	"COL_DIAMOND_R",0
	align	4
_bb_COL_DIAMOND_R:
	dd	32
_72:
	db	"COL_DIAMOND_G",0
	align	4
_bb_COL_DIAMOND_G:
	dd	255
_73:
	db	"COL_DIAMOND_B",0
	align	4
_bb_COL_DIAMOND_B:
	dd	255
_74:
	db	"COL_CUBE_R",0
	align	4
_bb_COL_CUBE_R:
	dd	255
_75:
	db	"COL_CUBE_G",0
	align	4
_bb_COL_CUBE_G:
	dd	32
_76:
	db	"COL_CUBE_B",0
	align	4
_bb_COL_CUBE_B:
	dd	255
_77:
	db	"COL_SEEKER_R",0
	align	4
_bb_COL_SEEKER_R:
	dd	32
_78:
	db	"COL_SEEKER_G",0
	align	4
_bb_COL_SEEKER_G:
	dd	64
_79:
	db	"COL_SEEKER_B",0
	align	4
_bb_COL_SEEKER_B:
	dd	255
_80:
	db	"COL_BUTTER_R",0
	align	4
_bb_COL_BUTTER_R:
	dd	128
_81:
	db	"COL_BUTTER_G",0
	align	4
_bb_COL_BUTTER_G:
	dd	32
_82:
	db	"COL_BUTTER_B",0
	align	4
_bb_COL_BUTTER_B:
	dd	255
_83:
	db	"COL_SUN_R",0
	align	4
_bb_COL_SUN_R:
	dd	255
_84:
	db	"COL_SUN_G",0
	align	4
_bb_COL_SUN_G:
	dd	32
_85:
	db	"COL_SUN_B",0
	align	4
_bb_COL_SUN_B:
	dd	32
_86:
	db	"COL_CLONE_R",0
	align	4
_bb_COL_CLONE_R:
	dd	255
_87:
	db	"COL_CLONE_G",0
	align	4
_bb_COL_CLONE_G:
	dd	32
_88:
	db	"COL_CLONE_B",0
	align	4
_bb_COL_CLONE_B:
	dd	32
_89:
	db	"COL_SNAKE_R",0
	align	4
_bb_COL_SNAKE_R:
	dd	190
_90:
	db	"COL_SNAKE_G",0
	align	4
_bb_COL_SNAKE_G:
	dd	32
_91:
	db	"COL_SNAKE_B",0
	align	4
_bb_COL_SNAKE_B:
	dd	255
_92:
	db	"COL_TAIL_R",0
	align	4
_bb_COL_TAIL_R:
	dd	255
_93:
	db	"COL_TAIL_G",0
	align	4
_bb_COL_TAIL_G:
	dd	180
_94:
	db	"COL_TAIL_B",0
	align	4
_bb_COL_TAIL_B:
	dd	96
_95:
	db	"COL_TRIANGLE_R",0
	align	4
_bb_COL_TRIANGLE_R:
	dd	255
_96:
	db	"COL_TRIANGLE_G",0
	align	4
_bb_COL_TRIANGLE_G:
	dd	128
_97:
	db	"COL_TRIANGLE_B",0
	align	4
_bb_COL_TRIANGLE_B:
	dd	32
_98:
	db	"COL_PLAYER_R",0
	align	4
_bb_COL_PLAYER_R:
	dd	255
_99:
	db	"COL_PLAYER_G",0
	align	4
_bb_COL_PLAYER_G:
	dd	255
_100:
	db	"COL_PLAYER_B",0
	align	4
_bb_COL_PLAYER_B:
	dd	200
_101:
	db	"COL_SHOT_R",0
	align	4
_bb_COL_SHOT_R:
	dd	200
_102:
	db	"COL_SHOT_G",0
	align	4
_bb_COL_SHOT_G:
	dd	200
_103:
	db	"COL_SHOT_B",0
	align	4
_bb_COL_SHOT_B:
	dd	128
_104:
	db	"COL_SHOT1_R",0
	align	4
_bb_COL_SHOT1_R:
	dd	200
_105:
	db	"COL_SHOT1_G",0
	align	4
_bb_COL_SHOT1_G:
	dd	32
_106:
	db	"COL_SHOT1_B",0
	align	4
_bb_COL_SHOT1_B:
	dd	32
_107:
	db	"COL_SHOT2_R",0
	align	4
_bb_COL_SHOT2_R:
	dd	32
_108:
	db	"COL_SHOT2_G",0
	align	4
_bb_COL_SHOT2_G:
	dd	200
_109:
	db	"COL_SHOT2_B",0
	align	4
_bb_COL_SHOT2_B:
	dd	32
_110:
	db	"COL_BOMB_R",0
	align	4
_bb_COL_BOMB_R:
	dd	255
_111:
	db	"COL_BOMB_G",0
	align	4
_bb_COL_BOMB_G:
	dd	255
_112:
	db	"COL_BOMB_B",0
	align	4
_bb_COL_BOMB_B:
	dd	255
_113:
	db	"COL_SCORE_R",0
	align	4
_bb_COL_SCORE_R:
	dd	32
_114:
	db	"COL_SCORE_G",0
	align	4
_bb_COL_SCORE_G:
	dd	255
_115:
	db	"COL_SCORE_B",0
	align	4
_bb_COL_SCORE_B:
	dd	32
_116:
	db	"COL_POWERUP_R",0
	align	4
_bb_COL_POWERUP_R:
	dd	255
_117:
	db	"COL_POWERUP_G",0
	align	4
_bb_COL_POWERUP_G:
	dd	255
_118:
	db	"COL_POWERUP_B",0
	align	4
_bb_COL_POWERUP_B:
	dd	32
_119:
	db	"COL_TRAIL_R",0
	align	4
_bb_COL_TRAIL_R:
	dd	240
_120:
	db	"COL_TRAIL_G",0
	align	4
_bb_COL_TRAIL_G:
	dd	240
_121:
	db	"COL_TRAIL_B",0
	align	4
_bb_COL_TRAIL_B:
	dd	100
	align	4
_62:
	dd	1
	dd	_63
	dd	4
	dd	_64
	dd	_65
	dd	_bb_COL_SQUARE_R
	dd	4
	dd	_66
	dd	_65
	dd	_bb_COL_SQUARE_G
	dd	4
	dd	_67
	dd	_65
	dd	_bb_COL_SQUARE_B
	dd	4
	dd	_68
	dd	_65
	dd	_bb_COL_PIN_R
	dd	4
	dd	_69
	dd	_65
	dd	_bb_COL_PIN_G
	dd	4
	dd	_70
	dd	_65
	dd	_bb_COL_PIN_B
	dd	4
	dd	_71
	dd	_65
	dd	_bb_COL_DIAMOND_R
	dd	4
	dd	_72
	dd	_65
	dd	_bb_COL_DIAMOND_G
	dd	4
	dd	_73
	dd	_65
	dd	_bb_COL_DIAMOND_B
	dd	4
	dd	_74
	dd	_65
	dd	_bb_COL_CUBE_R
	dd	4
	dd	_75
	dd	_65
	dd	_bb_COL_CUBE_G
	dd	4
	dd	_76
	dd	_65
	dd	_bb_COL_CUBE_B
	dd	4
	dd	_77
	dd	_65
	dd	_bb_COL_SEEKER_R
	dd	4
	dd	_78
	dd	_65
	dd	_bb_COL_SEEKER_G
	dd	4
	dd	_79
	dd	_65
	dd	_bb_COL_SEEKER_B
	dd	4
	dd	_80
	dd	_65
	dd	_bb_COL_BUTTER_R
	dd	4
	dd	_81
	dd	_65
	dd	_bb_COL_BUTTER_G
	dd	4
	dd	_82
	dd	_65
	dd	_bb_COL_BUTTER_B
	dd	4
	dd	_83
	dd	_65
	dd	_bb_COL_SUN_R
	dd	4
	dd	_84
	dd	_65
	dd	_bb_COL_SUN_G
	dd	4
	dd	_85
	dd	_65
	dd	_bb_COL_SUN_B
	dd	4
	dd	_86
	dd	_65
	dd	_bb_COL_CLONE_R
	dd	4
	dd	_87
	dd	_65
	dd	_bb_COL_CLONE_G
	dd	4
	dd	_88
	dd	_65
	dd	_bb_COL_CLONE_B
	dd	4
	dd	_89
	dd	_65
	dd	_bb_COL_SNAKE_R
	dd	4
	dd	_90
	dd	_65
	dd	_bb_COL_SNAKE_G
	dd	4
	dd	_91
	dd	_65
	dd	_bb_COL_SNAKE_B
	dd	4
	dd	_92
	dd	_65
	dd	_bb_COL_TAIL_R
	dd	4
	dd	_93
	dd	_65
	dd	_bb_COL_TAIL_G
	dd	4
	dd	_94
	dd	_65
	dd	_bb_COL_TAIL_B
	dd	4
	dd	_95
	dd	_65
	dd	_bb_COL_TRIANGLE_R
	dd	4
	dd	_96
	dd	_65
	dd	_bb_COL_TRIANGLE_G
	dd	4
	dd	_97
	dd	_65
	dd	_bb_COL_TRIANGLE_B
	dd	4
	dd	_98
	dd	_65
	dd	_bb_COL_PLAYER_R
	dd	4
	dd	_99
	dd	_65
	dd	_bb_COL_PLAYER_G
	dd	4
	dd	_100
	dd	_65
	dd	_bb_COL_PLAYER_B
	dd	4
	dd	_101
	dd	_65
	dd	_bb_COL_SHOT_R
	dd	4
	dd	_102
	dd	_65
	dd	_bb_COL_SHOT_G
	dd	4
	dd	_103
	dd	_65
	dd	_bb_COL_SHOT_B
	dd	4
	dd	_104
	dd	_65
	dd	_bb_COL_SHOT1_R
	dd	4
	dd	_105
	dd	_65
	dd	_bb_COL_SHOT1_G
	dd	4
	dd	_106
	dd	_65
	dd	_bb_COL_SHOT1_B
	dd	4
	dd	_107
	dd	_65
	dd	_bb_COL_SHOT2_R
	dd	4
	dd	_108
	dd	_65
	dd	_bb_COL_SHOT2_G
	dd	4
	dd	_109
	dd	_65
	dd	_bb_COL_SHOT2_B
	dd	4
	dd	_110
	dd	_65
	dd	_bb_COL_BOMB_R
	dd	4
	dd	_111
	dd	_65
	dd	_bb_COL_BOMB_G
	dd	4
	dd	_112
	dd	_65
	dd	_bb_COL_BOMB_B
	dd	4
	dd	_113
	dd	_65
	dd	_bb_COL_SCORE_R
	dd	4
	dd	_114
	dd	_65
	dd	_bb_COL_SCORE_G
	dd	4
	dd	_115
	dd	_65
	dd	_bb_COL_SCORE_B
	dd	4
	dd	_116
	dd	_65
	dd	_bb_COL_POWERUP_R
	dd	4
	dd	_117
	dd	_65
	dd	_bb_COL_POWERUP_G
	dd	4
	dd	_118
	dd	_65
	dd	_bb_COL_POWERUP_B
	dd	4
	dd	_119
	dd	_65
	dd	_bb_COL_TRAIL_R
	dd	4
	dd	_120
	dd	_65
	dd	_bb_COL_TRAIL_G
	dd	4
	dd	_121
	dd	_65
	dd	_bb_COL_TRAIL_B
	dd	0
_5:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/colordefs.bmx",0
	align	4
_4:
	dd	_5
	dd	2
	dd	1
	align	4
_6:
	dd	_5
	dd	3
	dd	1
	align	4
_7:
	dd	_5
	dd	4
	dd	1
	align	4
_8:
	dd	_5
	dd	6
	dd	1
	align	4
_9:
	dd	_5
	dd	7
	dd	1
	align	4
_10:
	dd	_5
	dd	8
	dd	1
	align	4
_11:
	dd	_5
	dd	10
	dd	1
	align	4
_12:
	dd	_5
	dd	11
	dd	1
	align	4
_13:
	dd	_5
	dd	12
	dd	1
	align	4
_14:
	dd	_5
	dd	14
	dd	1
	align	4
_15:
	dd	_5
	dd	15
	dd	1
	align	4
_16:
	dd	_5
	dd	16
	dd	1
	align	4
_17:
	dd	_5
	dd	18
	dd	1
	align	4
_18:
	dd	_5
	dd	19
	dd	1
	align	4
_19:
	dd	_5
	dd	20
	dd	1
	align	4
_20:
	dd	_5
	dd	22
	dd	1
	align	4
_21:
	dd	_5
	dd	23
	dd	1
	align	4
_22:
	dd	_5
	dd	24
	dd	1
	align	4
_23:
	dd	_5
	dd	26
	dd	1
	align	4
_24:
	dd	_5
	dd	27
	dd	1
	align	4
_25:
	dd	_5
	dd	28
	dd	1
	align	4
_26:
	dd	_5
	dd	30
	dd	1
	align	4
_27:
	dd	_5
	dd	31
	dd	1
	align	4
_28:
	dd	_5
	dd	32
	dd	1
	align	4
_29:
	dd	_5
	dd	34
	dd	1
	align	4
_30:
	dd	_5
	dd	35
	dd	1
	align	4
_31:
	dd	_5
	dd	36
	dd	1
	align	4
_32:
	dd	_5
	dd	38
	dd	1
	align	4
_33:
	dd	_5
	dd	39
	dd	1
	align	4
_34:
	dd	_5
	dd	40
	dd	1
	align	4
_35:
	dd	_5
	dd	42
	dd	1
	align	4
_36:
	dd	_5
	dd	43
	dd	1
	align	4
_37:
	dd	_5
	dd	44
	dd	1
	align	4
_38:
	dd	_5
	dd	46
	dd	1
	align	4
_39:
	dd	_5
	dd	47
	dd	1
	align	4
_40:
	dd	_5
	dd	48
	dd	1
	align	4
_41:
	dd	_5
	dd	50
	dd	1
	align	4
_42:
	dd	_5
	dd	51
	dd	1
	align	4
_43:
	dd	_5
	dd	52
	dd	1
	align	4
_44:
	dd	_5
	dd	54
	dd	1
	align	4
_45:
	dd	_5
	dd	55
	dd	1
	align	4
_46:
	dd	_5
	dd	56
	dd	1
	align	4
_47:
	dd	_5
	dd	58
	dd	1
	align	4
_48:
	dd	_5
	dd	59
	dd	1
	align	4
_49:
	dd	_5
	dd	60
	dd	1
	align	4
_50:
	dd	_5
	dd	62
	dd	1
	align	4
_51:
	dd	_5
	dd	63
	dd	1
	align	4
_52:
	dd	_5
	dd	64
	dd	1
	align	4
_53:
	dd	_5
	dd	66
	dd	1
	align	4
_54:
	dd	_5
	dd	67
	dd	1
	align	4
_55:
	dd	_5
	dd	68
	dd	1
	align	4
_56:
	dd	_5
	dd	70
	dd	1
	align	4
_57:
	dd	_5
	dd	71
	dd	1
	align	4
_58:
	dd	_5
	dd	72
	dd	1
	align	4
_59:
	dd	_5
	dd	74
	dd	1
	align	4
_60:
	dd	_5
	dd	75
	dd	1
	align	4
_61:
	dd	_5
	dd	76
	dd	1
