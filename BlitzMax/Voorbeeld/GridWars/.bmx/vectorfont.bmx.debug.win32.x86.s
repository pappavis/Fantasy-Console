	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_retro_retro
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbConvertToFloat
	extrn	_bbConvertToInt
	extrn	_bbEmptyArray
	extrn	_bbGCFree
	extrn	_bbIntTypeTag
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringAsc
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_OutOfDataError
	extrn	_brl_max2d_DrawLine
	extrn	_brl_retro_Mid
	public	___bb_blitzmax_code_archief__spel__gridwars_vectorfont
	public	__bb_bbdigit_Delete
	public	__bb_bbdigit_New
	public	_bb_DrawDigit
	public	_bb_DrawString
	public	_bb_SetUpVectorFont
	public	_bb_bbdigit
	public	_bb_letterlen
	public	_bb_letters
	section	"code" code
___bb_blitzmax_code_archief__spel__gridwars_vectorfont:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_75],0
	je	_76
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_76:
	mov	dword [_75],1
	push	ebp
	push	_69
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_67],_68
	call	___bb_blitz_blitz
	call	___bb_retro_retro
	call	___bb_glmax2d_glmax2d
	push	_bb_bbdigit
	call	_bbObjectRegisterType
	add	esp,4
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_59]
	and	eax,1
	cmp	eax,0
	jne	_60
	push	128
	push	_57
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_letterlen],eax
	or	dword [_59],1
_60:
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_59]
	and	eax,2
	cmp	eax,0
	jne	_64
	push	8
	push	128
	push	2
	push	_62
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_letters],eax
	or	dword [_59],2
_64:
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_SetUpVectorFont
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_21:
	mov	ebx,0
_33:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_bbdigit_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_78
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_bbdigit
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	push	ebp
	push	_77
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
_36:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_bbdigit_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_39:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_81:
	mov	esp,ebp
	pop	ebp
	ret
_bb_SetUpVectorFont:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	eax,ebp
	push	eax
	push	_170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_67],_22
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	jmp	_88
_5:
	mov	eax,ebp
	push	eax
	push	_93
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_letterlen]
	cmp	ebx,dword [eax+20]
	jb	_91
	call	_brl_blitz_ArrayBoundsError
_91:
	mov	eax,dword [_bb_letterlen]
	shl	ebx,2
	add	eax,ebx
	mov	dword [eax+24],-1
	call	dword [_bbOnDebugLeaveScope]
_3:
	add	dword [ebp-8],1
_88:
	cmp	dword [ebp-8],127
	jle	_5
_4:
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],32
	jmp	_95
_8:
	mov	eax,ebp
	push	eax
	push	_169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_67]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_99
	call	_brl_blitz_OutOfDataError
_99:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	_bbConvertToInt
	add	esp,8
	mov	dword [ebp-4],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_100
	add	esi,4
_100:
	mov	dword [_67],esi
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_letterlen]
	cmp	ebx,dword [eax+20]
	jb	_103
	call	_brl_blitz_ArrayBoundsError
_103:
	mov	eax,dword [_bb_letterlen]
	shl	ebx,2
	add	eax,ebx
	mov	edx,dword [ebp-4]
	sub	edx,1
	mov	dword [eax+24],edx
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_letterlen]
	cmp	ebx,dword [eax+20]
	jb	_107
	call	_brl_blitz_ArrayBoundsError
_107:
	mov	eax,dword [_bb_letterlen]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-16],eax
	jmp	_108
_11:
	mov	eax,ebp
	push	eax
	push	_168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_letters]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_112
	call	_brl_blitz_ArrayBoundsError
_112:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_114
	call	_brl_blitz_ArrayBoundsError
_114:
	mov	eax,dword [_bb_letters]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	push	_bb_bbdigit
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_119
	push	eax
	call	_bbGCFree
	add	esp,4
_119:
	mov	dword [ebx+28],esi
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_67]
	mov	eax,dword [ebp-8]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_124
	call	_brl_blitz_ArrayBoundsError
_124:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_126
	call	_brl_blitz_ArrayBoundsError
_126:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_128
	call	_brl_blitz_NullObjectError
_128:
	mov	esi,ebx
	mov	ebx,dword [edi]
	cmp	ebx,0
	jne	_130
	call	_brl_blitz_OutOfDataError
_130:
	mov	ebx,dword [ebx]
	add	edi,4
	push	ebx
	push	edi
	call	_bbConvertToFloat
	add	esp,8
	fstp	dword [esi+8]
	add	edi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_131
	add	edi,4
_131:
	mov	dword [_67],edi
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_67]
	mov	eax,dword [ebp-8]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_136
	call	_brl_blitz_ArrayBoundsError
_136:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_138
	call	_brl_blitz_ArrayBoundsError
_138:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	mov	esi,ebx
	mov	ebx,dword [edi]
	cmp	ebx,0
	jne	_142
	call	_brl_blitz_OutOfDataError
_142:
	mov	ebx,dword [ebx]
	add	edi,4
	push	ebx
	push	edi
	call	_bbConvertToFloat
	add	esp,8
	fstp	dword [esi+12]
	add	edi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_143
	add	edi,4
_143:
	mov	dword [_67],edi
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_67]
	mov	eax,dword [ebp-8]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_148
	call	_brl_blitz_ArrayBoundsError
_148:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_150
	call	_brl_blitz_ArrayBoundsError
_150:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	mov	esi,ebx
	mov	ebx,dword [edi]
	cmp	ebx,0
	jne	_154
	call	_brl_blitz_OutOfDataError
_154:
	mov	ebx,dword [ebx]
	add	edi,4
	push	ebx
	push	edi
	call	_bbConvertToFloat
	add	esp,8
	fstp	dword [esi+16]
	add	edi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_155
	add	edi,4
_155:
	mov	dword [_67],edi
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_67]
	mov	eax,dword [ebp-8]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_160
	call	_brl_blitz_ArrayBoundsError
_160:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_162
	call	_brl_blitz_ArrayBoundsError
_162:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	mov	esi,ebx
	mov	ebx,dword [edi]
	cmp	ebx,0
	jne	_166
	call	_brl_blitz_OutOfDataError
_166:
	mov	ebx,dword [ebx]
	add	edi,4
	push	ebx
	push	edi
	call	_bbConvertToFloat
	add	esp,8
	fstp	dword [esi+20]
	add	edi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_167
	add	edi,4
_167:
	mov	dword [_67],edi
	call	dword [_bbOnDebugLeaveScope]
_9:
	add	dword [ebp-12],1
_108:
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-12],eax
	jle	_11
_10:
	call	dword [_bbOnDebugLeaveScope]
_6:
	add	dword [ebp-8],1
_95:
	cmp	dword [ebp-8],127
	jle	_8
_7:
	mov	ebx,0
_41:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawDigit:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_letterlen]
	cmp	ebx,dword [eax+20]
	jb	_180
	call	_brl_blitz_ArrayBoundsError
_180:
	mov	eax,dword [_bb_letterlen]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-32],eax
	jmp	_181
_14:
	mov	eax,ebp
	push	eax
	push	_208
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_185
	call	_brl_blitz_ArrayBoundsError
_185:
	mov	esi,dword [ebp-20]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_187
	call	_brl_blitz_ArrayBoundsError
_187:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_189
	call	_brl_blitz_NullObjectError
_189:
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_191
	call	_brl_blitz_ArrayBoundsError
_191:
	mov	esi,dword [ebp-20]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_193
	call	_brl_blitz_ArrayBoundsError
_193:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_197
	call	_brl_blitz_ArrayBoundsError
_197:
	mov	esi,dword [ebp-20]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_199
	call	_brl_blitz_ArrayBoundsError
_199:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_203
	call	_brl_blitz_ArrayBoundsError
_203:
	mov	ebx,dword [ebp-20]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_205
	call	_brl_blitz_ArrayBoundsError
_205:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	push	1
	fld	dword [ebx+20]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [edi+16]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	fld	dword [eax+12]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-28]
	fld	dword [eax+8]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_12:
	add	dword [ebp-20],1
_181:
	mov	eax,dword [ebp-32]
	cmp	dword [ebp-20],eax
	jle	_14
_13:
	mov	ebx,0
_47:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawString:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	eax,ebp
	push	eax
	push	_257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+8]
	mov	dword [ebp-28],eax
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	eax,dword [ebp-28]
	sub	eax,1
	mov	dword [ebp-48],eax
	jmp	_222
_17:
	mov	eax,ebp
	push	eax
	push	_256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-20]
	add	eax,1
	push	eax
	push	dword [ebp-4]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	dword [ebp-24],eax
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	ebx,dword [ebp-24]
	mov	eax,dword [_bb_letterlen]
	cmp	ebx,dword [eax+20]
	jb	_227
	call	_brl_blitz_ArrayBoundsError
_227:
	mov	eax,dword [_bb_letterlen]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-44],eax
	jmp	_228
_20:
	mov	eax,ebp
	push	eax
	push	_255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_232
	call	_brl_blitz_ArrayBoundsError
_232:
	mov	esi,dword [ebp-32]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_234
	call	_brl_blitz_ArrayBoundsError
_234:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	mov	ebx,dword [ebp-24]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_238
	call	_brl_blitz_ArrayBoundsError
_238:
	mov	esi,dword [ebp-32]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_240
	call	_brl_blitz_ArrayBoundsError
_240:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_242
	call	_brl_blitz_NullObjectError
_242:
	mov	ebx,dword [ebp-24]
	mov	eax,dword [_bb_letters]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+20]
	jb	_244
	call	_brl_blitz_ArrayBoundsError
_244:
	mov	esi,dword [ebp-32]
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+24]
	jb	_246
	call	_brl_blitz_ArrayBoundsError
_246:
	mov	eax,dword [_bb_letters]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	mov	eax,dword [ebp-24]
	mov	edx,dword [_bb_letters]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_letters]
	cmp	esi,dword [eax+20]
	jb	_250
	call	_brl_blitz_ArrayBoundsError
_250:
	mov	ebx,dword [ebp-32]
	mov	eax,dword [_bb_letters]
	cmp	ebx,dword [eax+24]
	jb	_252
	call	_brl_blitz_ArrayBoundsError
_252:
	mov	edx,dword [_bb_letters]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	push	1
	fld	dword [ebx+20]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [edi+16]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	fld	dword [ebp-16]
	fmul	dword [_315]
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-36]
	fld	dword [eax+12]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-40]
	fld	dword [eax+8]
	fmul	dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	fld	dword [ebp-16]
	fmul	dword [_316]
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_18:
	add	dword [ebp-32],1
_228:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-32],eax
	jle	_20
_19:
	call	dword [_bbOnDebugLeaveScope]
_15:
	add	dword [ebp-20],1
_222:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-20],eax
	jle	_17
_16:
	mov	ebx,0
_53:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_75:
	dd	0
_70:
	db	"vectorfont",0
_71:
	db	"letterlen",0
_72:
	db	"[]i",0
	align	4
_bb_letterlen:
	dd	_bbEmptyArray
_73:
	db	"letters",0
_74:
	db	"[,]:bbdigit",0
	align	4
_bb_letters:
	dd	_bbEmptyArray
	align	4
_69:
	dd	1
	dd	_70
	dd	4
	dd	_71
	dd	_72
	dd	_bb_letterlen
	dd	4
	dd	_73
	dd	_74
	dd	_bb_letters
	dd	0
	align	4
_68:
_22:
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	7
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	6
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	5
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	0
	align	4
_67:
	dd	0
_24:
	db	"bbdigit",0
_25:
	db	"x1",0
_26:
	db	"f",0
_27:
	db	"y1",0
_28:
	db	"x2",0
_29:
	db	"y2",0
_30:
	db	"New",0
_31:
	db	"()i",0
_32:
	db	"Delete",0
	align	4
_23:
	dd	2
	dd	_24
	dd	3
	dd	_25
	dd	_26
	dd	8
	dd	3
	dd	_27
	dd	_26
	dd	12
	dd	3
	dd	_28
	dd	_26
	dd	16
	dd	3
	dd	_29
	dd	_26
	dd	20
	dd	6
	dd	_30
	dd	_31
	dd	16
	dd	6
	dd	_32
	dd	_31
	dd	20
	dd	0
	align	4
_bb_bbdigit:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_23
	dd	24
	dd	__bb_bbdigit_New
	dd	__bb_bbdigit_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_56:
	db	"C:/Documents and Settings/Michiel/My Documents/Programmering/BlitzMax/Voorbeeld/Blitzmax Code archief, Spel, GridWars/vectorfont.bmx",0
	align	4
_55:
	dd	_56
	dd	9
	dd	1
	align	4
_59:
	dd	0
_57:
	db	"i",0
	align	4
_61:
	dd	_56
	dd	10
	dd	1
_62:
	db	":bbdigit",0
	align	4
_65:
	dd	_56
	dd	11
	dd	1
	align	4
_66:
	dd	_56
	dd	107
	dd	1
_79:
	db	"Self",0
_80:
	db	":bbdigit",0
	align	4
_78:
	dd	1
	dd	_30
	dd	2
	dd	_79
	dd	_80
	dd	-4
	dd	0
	align	4
_77:
	dd	3
	dd	0
	dd	0
_171:
	db	"SetUpVectorFont",0
_172:
	db	"np",0
_173:
	db	"i",0
_174:
	db	"t",0
_175:
	db	"s",0
	align	4
_170:
	dd	1
	dd	_171
	dd	2
	dd	_172
	dd	_173
	dd	-4
	dd	2
	dd	_174
	dd	_173
	dd	-8
	dd	2
	dd	_175
	dd	_173
	dd	-12
	dd	0
	align	4
_82:
	dd	_56
	dd	50
	dd	2
	align	4
_83:
	dd	_56
	dd	52
	dd	2
	align	4
_87:
	dd	_56
	dd	54
	dd	2
	align	4
_93:
	dd	3
	dd	0
	dd	0
	align	4
_89:
	dd	_56
	dd	55
	dd	3
	align	4
_94:
	dd	_56
	dd	58
	dd	2
	align	4
_169:
	dd	3
	dd	0
	dd	0
	align	4
_96:
	dd	_56
	dd	59
	dd	3
	align	4
_101:
	dd	_56
	dd	60
	dd	3
	align	4
_105:
	dd	_56
	dd	61
	dd	3
	align	4
_168:
	dd	3
	dd	0
	dd	0
	align	4
_110:
	dd	_56
	dd	62
	dd	4
	align	4
_120:
	dd	_56
	dd	63
	dd	4
	align	4
_132:
	dd	_56
	dd	64
	dd	4
	align	4
_144:
	dd	_56
	dd	65
	dd	4
	align	4
_156:
	dd	_56
	dd	66
	dd	4
_210:
	db	"DrawDigit",0
_211:
	db	"d",0
_212:
	db	"xd",0
_213:
	db	"yd",0
_214:
	db	"sc",0
	align	4
_209:
	dd	1
	dd	_210
	dd	2
	dd	_211
	dd	_173
	dd	-4
	dd	2
	dd	_212
	dd	_173
	dd	-8
	dd	2
	dd	_213
	dd	_173
	dd	-12
	dd	2
	dd	_214
	dd	_26
	dd	-16
	dd	2
	dd	_174
	dd	_173
	dd	-20
	dd	0
	align	4
_176:
	dd	_56
	dd	73
	dd	2
	align	4
_178:
	dd	_56
	dd	76
	dd	4
	align	4
_208:
	dd	3
	dd	0
	dd	0
	align	4
_183:
	dd	_56
	dd	77
	dd	5
_258:
	db	"DrawString",0
_259:
	db	"st",0
_260:
	db	"$",0
_261:
	db	"ln",0
	align	4
_257:
	dd	1
	dd	_258
	dd	2
	dd	_259
	dd	_260
	dd	-4
	dd	2
	dd	_212
	dd	_173
	dd	-8
	dd	2
	dd	_213
	dd	_173
	dd	-12
	dd	2
	dd	_214
	dd	_26
	dd	-16
	dd	2
	dd	_175
	dd	_173
	dd	-20
	dd	2
	dd	_211
	dd	_173
	dd	-24
	dd	2
	dd	_261
	dd	_173
	dd	-28
	dd	2
	dd	_174
	dd	_173
	dd	-32
	dd	0
	align	4
_215:
	dd	_56
	dd	85
	dd	2
	align	4
_220:
	dd	_56
	dd	87
	dd	2
	align	4
_221:
	dd	_56
	dd	88
	dd	2
	align	4
_256:
	dd	3
	dd	0
	dd	0
	align	4
_224:
	dd	_56
	dd	89
	dd	3
	align	4
_225:
	dd	_56
	dd	92
	dd	5
	align	4
_255:
	dd	3
	dd	0
	dd	0
	align	4
_230:
	dd	_56
	dd	93
	dd	6
	align	4
_315:
	dd	0x40a00000
	align	4
_316:
	dd	0x40a00000
