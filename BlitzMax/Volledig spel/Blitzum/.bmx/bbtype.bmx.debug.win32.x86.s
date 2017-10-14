	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbHandleFromObject
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_stream_ReadInt
	extrn	_brl_stream_ReadString
	public	___bb_blitzmax_code_archief__spel__blitzum_bbtype
	public	__bb_TBBType_Add
	public	__bb_TBBType_Delete
	public	__bb_TBBType_InsertAfter
	public	__bb_TBBType_InsertBefore
	public	__bb_TBBType_New
	public	__bb_TBBType_Remove
	public	_bb_DeleteEach
	public	_bb_DeleteFirst
	public	_bb_DeleteLast
	public	_bb_HandleFromObject
	public	_bb_HandleToObject
	public	_bb_ReadString
	public	_bb_TBBType
	section	"code" code
___bb_blitzmax_code_archief__spel__blitzum_bbtype:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_60],0
	je	_61
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_61:
	mov	dword [_60],1
	push	ebp
	push	_58
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	push	_bb_TBBType
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
_17:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_64
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBBType
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	ebx,0
_20:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_23:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_69
	push	eax
	call	_bbGCFree
	add	esp,4
_69:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_71
	push	eax
	call	_bbGCFree
	add	esp,4
_71:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_67:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_93
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_75
	call	_brl_blitz_NullObjectError
_75:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_80
	push	eax
	call	_bbGCFree
	add	esp,4
_80:
	mov	dword [esi+8],ebx
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_83
	call	_brl_blitz_NullObjectError
_83:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_88
	call	_brl_blitz_NullObjectError
_88:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_92
	push	eax
	call	_bbGCFree
	add	esp,4
_92:
	mov	dword [ebx+12],esi
	mov	ebx,0
_27:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_InsertBefore:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_99
	call	_brl_blitz_NullObjectError
_99:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_102
	call	_brl_blitz_NullObjectError
_102:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_105
	call	_brl_blitz_NullObjectError
_105:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_107
	call	_brl_blitz_NullObjectError
_107:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_109
	call	_brl_blitz_NullObjectError
_109:
	push	dword [ebx+12]
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+96]
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+12]
	dec	dword [eax+4]
	jnz	_113
	push	eax
	call	_bbGCFree
	add	esp,4
_113:
	mov	dword [edi+12],ebx
	mov	ebx,0
_31:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_InsertAfter:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_117
	call	_brl_blitz_NullObjectError
_117:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_119
	call	_brl_blitz_NullObjectError
_119:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_125
	call	_brl_blitz_NullObjectError
_125:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_127
	call	_brl_blitz_NullObjectError
_127:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_129
	call	_brl_blitz_NullObjectError
_129:
	push	dword [ebx+12]
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+12]
	dec	dword [eax+4]
	jnz	_133
	push	eax
	call	_bbGCFree
	add	esp,4
_133:
	mov	dword [edi+12],ebx
	mov	ebx,0
_35:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBBType_Remove:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_137
	call	_brl_blitz_NullObjectError
_137:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
_38:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DeleteLast:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_142
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_145
	call	_brl_blitz_NullObjectError
_145:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	_bb_TBBType
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
_142:
	mov	ebx,0
_41:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DeleteFirst:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_153
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_158
	call	_brl_blitz_NullObjectError
_158:
	push	_bb_TBBType
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
_153:
	mov	ebx,0
_44:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DeleteEach:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	je	_164
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_164:
	mov	ebx,0
_47:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ReadString:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	push	ebp
	push	_180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebp-8],eax
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_176
	mov	eax,dword [ebp-8]
	cmp	eax,1048576
	setl	al
	movzx	eax,al
_176:
	cmp	eax,0
	je	_178
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_stream_ReadString
	add	esp,8
	mov	ebx,eax
	jmp	_50
_178:
	mov	ebx,_bbEmptyString
_50:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_HandleToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_187
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
_53:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_HandleFromObject:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	push	ebp
	push	_194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bb_HandleToObject
	add	esp,4
	push	eax
	call	_bbHandleFromObject
	add	esp,4
	mov	dword [ebp-8],eax
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
_56:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_60:
	dd	0
_59:
	db	"bbtype",0
	align	4
_58:
	dd	1
	dd	_59
	dd	0
_3:
	db	"TBBType",0
_4:
	db	"_list",0
_5:
	db	":brl.linkedlist.TList",0
_6:
	db	"_link",0
_7:
	db	":brl.linkedlist.TLink",0
_8:
	db	"New",0
_9:
	db	"()i",0
_10:
	db	"Delete",0
_11:
	db	"Add",0
_12:
	db	"(:brl.linkedlist.TList)i",0
_13:
	db	"InsertBefore",0
_14:
	db	"(:TBBType)i",0
_15:
	db	"InsertAfter",0
_16:
	db	"Remove",0
	align	4
_2:
	dd	2
	dd	_3
	dd	3
	dd	_4
	dd	_5
	dd	8
	dd	3
	dd	_6
	dd	_7
	dd	12
	dd	6
	dd	_8
	dd	_9
	dd	16
	dd	6
	dd	_10
	dd	_9
	dd	20
	dd	6
	dd	_11
	dd	_12
	dd	48
	dd	6
	dd	_13
	dd	_14
	dd	52
	dd	6
	dd	_15
	dd	_14
	dd	56
	dd	6
	dd	_16
	dd	_9
	dd	60
	dd	0
	align	4
_bb_TBBType:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_2
	dd	16
	dd	__bb_TBBType_New
	dd	__bb_TBBType_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBBType_Add
	dd	__bb_TBBType_InsertBefore
	dd	__bb_TBBType_InsertAfter
	dd	__bb_TBBType_Remove
_65:
	db	"Self",0
_66:
	db	":TBBType",0
	align	4
_64:
	dd	1
	dd	_8
	dd	2
	dd	_65
	dd	_66
	dd	-4
	dd	0
_94:
	db	"t",0
	align	4
_93:
	dd	1
	dd	_11
	dd	2
	dd	_65
	dd	_66
	dd	-4
	dd	2
	dd	_94
	dd	_5
	dd	-8
	dd	0
_73:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, Blitzum/bbtype.bmx",0
	align	4
_72:
	dd	_73
	dd	9
	dd	3
	align	4
_81:
	dd	_73
	dd	10
	dd	3
	align	4
_114:
	dd	1
	dd	_13
	dd	2
	dd	_65
	dd	_66
	dd	-4
	dd	2
	dd	_94
	dd	_66
	dd	-8
	dd	0
	align	4
_95:
	dd	_73
	dd	14
	dd	3
	align	4
_100:
	dd	_73
	dd	15
	dd	3
	align	4
_134:
	dd	1
	dd	_15
	dd	2
	dd	_65
	dd	_66
	dd	-4
	dd	2
	dd	_94
	dd	_66
	dd	-8
	dd	0
	align	4
_115:
	dd	_73
	dd	19
	dd	3
	align	4
_120:
	dd	_73
	dd	20
	dd	3
	align	4
_140:
	dd	1
	dd	_16
	dd	2
	dd	_65
	dd	_66
	dd	-4
	dd	0
	align	4
_135:
	dd	_73
	dd	24
	dd	3
_151:
	db	"DeleteLast",0
	align	4
_150:
	dd	1
	dd	_151
	dd	2
	dd	_94
	dd	_66
	dd	-4
	dd	0
	align	4
_141:
	dd	_73
	dd	30
	dd	2
	align	4
_143:
	dd	_73
	dd	30
	dd	7
_162:
	db	"DeleteFirst",0
	align	4
_161:
	dd	1
	dd	_162
	dd	2
	dd	_94
	dd	_66
	dd	-4
	dd	0
	align	4
_152:
	dd	_73
	dd	34
	dd	2
	align	4
_154:
	dd	_73
	dd	34
	dd	7
_171:
	db	"DeleteEach",0
	align	4
_170:
	dd	1
	dd	_171
	dd	2
	dd	_94
	dd	_66
	dd	-4
	dd	0
	align	4
_163:
	dd	_73
	dd	38
	dd	2
	align	4
_165:
	dd	_73
	dd	38
	dd	7
_181:
	db	"ReadString",0
_182:
	db	"in",0
_183:
	db	":brl.stream.TStream",0
_184:
	db	"length",0
_185:
	db	"i",0
	align	4
_180:
	dd	1
	dd	_181
	dd	2
	dd	_182
	dd	_183
	dd	-4
	dd	2
	dd	_184
	dd	_185
	dd	-8
	dd	0
	align	4
_172:
	dd	_73
	dd	42
	dd	2
	align	4
_174:
	dd	_73
	dd	43
	dd	2
	align	4
_175:
	dd	_73
	dd	44
	dd	2
	align	4
_179:
	dd	_73
	dd	44
	dd	35
_188:
	db	"HandleToObject",0
_189:
	db	"obj",0
_190:
	db	":Object",0
	align	4
_187:
	dd	1
	dd	_188
	dd	2
	dd	_189
	dd	_190
	dd	-4
	dd	0
	align	4
_186:
	dd	_73
	dd	48
	dd	2
_195:
	db	"HandleFromObject",0
_196:
	db	"h",0
	align	4
_194:
	dd	1
	dd	_195
	dd	2
	dd	_189
	dd	_190
	dd	-4
	dd	2
	dd	_196
	dd	_185
	dd	-8
	dd	0
	align	4
_191:
	dd	_73
	dd	52
	dd	2
	align	4
_193:
	dd	_73
	dd	53
	dd	2
