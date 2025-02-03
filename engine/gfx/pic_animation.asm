; Pic animation arrangement.

MACRO pokeanim
	for i, 1, _NARG + 1
		db (TohoAnim_\<i>_SetupCommand - TohoAnim_SetupCommands) / 2
	endr
	db (TohoAnim_Finish_SetupCommand - TohoAnim_SetupCommands) / 2
ENDM

TohoAnims:
	dw .Slow
	dw .Normal
	dw .Menu
	dw .Trade
	dw .Evolve
	dw .Hatch
	dw .Menu ; unused
	dw .Egg1
	dw .Egg2

.Slow:   pokeanim StereoCry, Setup2, Play
.Normal: pokeanim StereoCry, Setup, Play
.Menu:   pokeanim CryNoWait, Setup, Play, SetWait, Wait, Extra, Play
.Trade:  pokeanim Extra, Play2, Extra, Play, SetWait, Wait, Cry, Setup, Play
.Evolve: pokeanim Extra, Play, SetWait, Wait, CryNoWait, Setup, Play
.Hatch:  pokeanim Extra, Play, CryNoWait, Setup, Play, SetWait, Wait, Extra, Play
.Egg1:   pokeanim Setup, Play
.Egg2:   pokeanim Extra, Play

AnimateFrontpic:
	call AnimateMon_CheckIfTohomon
	ret c
	call LoadMonAnimation
.loop
	call SetUpTohoAnim
	push af
	farcall HDMATransferTileMapToWRAMBank3
	pop af
	jr nc, .loop
	ret

LoadMonAnimation:
	push hl
	ld c, e
	ld b, 0
	ld hl, TohoAnims
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	pop hl

	ldh a, [rSVBK]
	push af
	ld a, $2
	ldh [rSVBK], a

	push bc
	push de
	push hl
	ld hl, wTohoAnimSceneIndex
	ld bc, wTohoAnimStructEnd - wTohoAnimSceneIndex
	xor a
	rst ByteFill
	pop hl
	pop de
	pop bc

; bc contains anim pointer
	ld a, c
	ld [wTohoAnimPointer], a
	ld a, b
	ld [wTohoAnimPointer + 1], a
; hl contains TileMap coords
	ld a, l
	ld [wTohoAnimCoord], a
	ld a, h
	ld [wTohoAnimCoord + 1], a
; d = start tile
	ld a, d
	ld [wTohoAnimGraphicStartTile], a

	ld a, $1
	ld hl, wCurPartySpecies
	call GetFarWRAMByte
	ld [wTohoAnimSpecies], a

	ld a, $1
	ld hl, wCurForm
	call GetFarWRAMByte
	ld [wTohoAnimVariant], a

	call TohoAnim_GetFrontpicDims
	ld a, c
	ld [wTohoAnimFrontpicHeight], a

	pop af
	ldh [rSVBK], a
	ret

SetUpTohoAnim:
	ldh a, [rSVBK]
	push af
	ld a, $2
	ldh [rSVBK], a
	ld a, [wTohoAnimSceneIndex]
	ld c, a
	ld b, 0
	ld hl, wTohoAnimPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, [hl]
	ld hl, TohoAnim_SetupCommands
	call JumpTable
	ld a, [wTohoAnimSceneIndex]
	ld c, a
	pop af
	ldh [rSVBK], a
	ld a, c
	and $80
	ret z
	scf
	ret

MACRO add_setup_command
\1_SetupCommand:
	dw \1
ENDM

TohoAnim_SetupCommands:
	add_setup_command TohoAnim_Finish
	add_setup_command TohoAnim_BasePic
	add_setup_command TohoAnim_SetWait
	add_setup_command TohoAnim_Wait
	add_setup_command TohoAnim_Setup
	add_setup_command TohoAnim_Setup2
	add_setup_command TohoAnim_Extra
	add_setup_command TohoAnim_Play
	add_setup_command TohoAnim_Play2
	add_setup_command TohoAnim_Cry
	add_setup_command TohoAnim_CryNoWait
	add_setup_command TohoAnim_StereoCry

TohoAnim_SetWait:
	ld a, 18
	ld [wTohoAnimWaitCounter], a
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	;fall-through
TohoAnim_Wait:
	ld hl, wTohoAnimWaitCounter
	dec [hl]
	ret nz
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Setup:
	lb bc, 0, FALSE
	call TohoAnim_InitAnim
	call TohoAnim_SetVBank1
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Setup2:
	lb bc, 4, FALSE
	call TohoAnim_InitAnim
	call TohoAnim_SetVBank1
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Extra:
	lb bc, 0, TRUE
	call TohoAnim_InitAnim
	call TohoAnim_SetVBank1
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Play:
	call TohoAnim_DoAnimScript
	ld a, [wTohoAnimJumptableIndex]
	bit 7, a
	ret z
	call TohoAnim_PlaceGraphic
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Play2:
	call TohoAnim_DoAnimScript
	ld a, [wTohoAnimJumptableIndex]
	bit 7, a
	ret z
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_BasePic:
	call TohoAnim_DeinitFrames
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_Finish:
	call TohoAnim_DeinitFrames
	ld hl, wTohoAnimSceneIndex
	set 7, [hl]
	ret

TohoAnim_Cry:
	ld a, [wTohoAnimSpecies]
	ld c, a
	ld a, [wTohoAnimVariant]
	ld b, a
	call _PlayCry
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_CryNoWait:
	ld a, [wTohoAnimSpecies]
	ld c, a
	ld a, [wTohoAnimVariant]
	ld b, a
	call PlayCry2
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_StereoCry:
	ld a, $f
	ld [wCryTracks], a
	ld a, [wTohoAnimSpecies]
	ld c, a
	ld a, [wTohoAnimVariant]
	ld b, a
	call PlayStereoCry2
	ld hl, wTohoAnimSceneIndex
	inc [hl]
	ret

TohoAnim_DeinitFrames:
	ldh a, [rSVBK]
	push af
	ld a, $2
	ldh [rSVBK], a
	call TohoAnim_PlaceGraphic
	farcall HDMATransferTileMapToWRAMBank3
	call TohoAnim_SetVBank0
	farcall HDMATransferAttrMapToWRAMBank3
	pop af
	ldh [rSVBK], a
	ret

AnimateMon_CheckIfTohomon:
	ld a, [wCurPartySpecies]
	call IsATohomon
	jr c, .fail
	and a
	ret

.fail
	scf
	ret

TohoAnim_InitAnim:
	ldh a, [rSVBK]
	push af
	ld a, $2
	ldh [rSVBK], a
	push bc
	ld hl, wTohoAnimIdleFlag
	ld bc, wTohoAnimStructEnd - wTohoAnimIdleFlag
	xor a
	rst ByteFill
	pop bc
	ld a, b
	ld [wTohoAnimSpeed], a
	ld a, c
	ld [wTohoAnimIdleFlag], a
	call GetMonAnimPointer
	call GetMonFramesPointer
	call GetMonBitmaskPointer
	pop af
	ldh [rSVBK], a
	ret

TohoAnim_DoAnimScript:
	xor a
	ldh [hBGMapMode], a

.loop:
	ld a, [wTohoAnimJumptableIndex]
	and $7f
	call StackJumpTable

.Jumptable:
	dw .RunAnim
	dw .WaitAnim

.RunAnim:
	call TohoAnim_GetPointer
	ld a, [wTohoAnimCommand]
	inc a ; $ff endanim
	jr z, TohoAnim_End
	inc a ; $fe setrepeat
	jr z, .SetRepeat
	inc a ; $fd dorepeat
	jr z, .DoRepeat
	call TohoAnim_GetFrame
	ld a, [wTohoAnimParameter]
	call TohoAnim_GetDuration
	ld [wTohoAnimWaitCounter], a
	call TohoAnim_StartWaitAnim
.WaitAnim:
	ld hl, wTohoAnimWaitCounter
	dec [hl]
	ret nz
	jr TohoAnim_StopWaitAnim

.SetRepeat:
	ld a, [wTohoAnimParameter]
	ld [wTohoAnimRepeatTimer], a
	jr .loop

.DoRepeat:
	ld a, [wTohoAnimRepeatTimer]
	and a
	ret z
	dec a
	ld [wTohoAnimRepeatTimer], a
	ret z
	ld a, [wTohoAnimParameter]
	ld [wTohoAnimFrame], a
	jr .loop

TohoAnim_End:
	ld hl, wTohoAnimJumptableIndex
	set 7, [hl]
	ret

TohoAnim_GetDuration:
; a * (1 + [wTohoAnimSpeed] / 16)
	ld c, a
	ld b, $0
	ld hl, 0
	ld a, [wTohoAnimSpeed]
	rst AddNTimes
	ld a, h
	swap a
	and $f0
	ld h, a
	ld a, l
	swap a
	and $f
	or h
	add c
	ret

TohoAnim_StartWaitAnim:
	ld hl, wTohoAnimJumptableIndex
	inc [hl]
	ret

TohoAnim_StopWaitAnim:
	ld hl, wTohoAnimJumptableIndex
	dec [hl]
	ret

TohoAnim_GetPointer:
	ld a, [wTohoAnimFrame]
	ld e, a
	ld d, $0
	ld hl, wTohoAnimPointerAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	add hl, de
	ld a, [wTohoAnimPointerBank]
	call GetFarWord
	ld a, l
	ld [wTohoAnimCommand], a
	ld a, h
	ld [wTohoAnimParameter], a
	ld hl, wTohoAnimFrame
	inc [hl]
	ret

TohoAnim_GetBitmaskIndex:
	ld a, [wTohoAnimCommand]
	dec a
	ld c, a
	ld b, $0
	ld hl, wTohoAnimFramesAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	add hl, bc
	ld a, [wTohoAnimFramesBank]
	call GetFarWord
	ld a, [wTohoAnimFramesBank]
	call GetFarByte
	ld [wTohoAnimCurBitmask], a
	inc hl
	ret

TohoAnim_CopyBitmaskToBuffer:
	call .GetSize
	push bc
	ld hl, wTohoAnimBitmaskAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTohoAnimCurBitmask]
	rst AddNTimes
	pop bc
	ld de, wTohoAnimBitmaskBuffer
	ld a, [wTohoAnimBitmaskBank]
	jmp FarCopyBytes

.GetSize:
	push hl
	ld a, [wTohoAnimFrontpicHeight]
	sub 5 ; to get a number 0, 1, or 2
	ld c, a
	ld b, 0
	ld hl, .Sizes
	add hl, bc
	ld c, [hl]
	ld b, 0
	pop hl
	ret

.Sizes: db 4, 5, 7

TohoAnim_GetFrame:
	call TohoAnim_PlaceGraphic
	ld a, [wTohoAnimCommand]
	and a
	ret z

	call TohoAnim_GetBitmaskIndex
	push hl
	call TohoAnim_CopyBitmaskToBuffer
	pop hl

	xor a
	ld [wTohoAnimBitmaskCurBit], a
	ld [wTohoAnimBitmaskCurRow], a
	ld [wTohoAnimBitmaskCurCol], a
.loop
	push hl
	call .IsCurBitSet
	pop hl
	ld a, b
	and a
	jr z, .next

	ld a, [wTohoAnimFramesBank]
	call GetFarByte
	inc hl
	push hl
	call .ApplyFrame
	pop hl

.next
	push hl
	call .NextBit
	pop hl
	jr nc, .loop
	ret

.IsCurBitSet:
; which byte
	ld a, [wTohoAnimBitmaskCurBit]
	and $f8
	rrca
	rrca
	rrca
	ld e, a
	ld d, 0
	ld hl, wTohoAnimBitmaskBuffer
	add hl, de
	ld b, [hl]
; which bit
	ld a, [wTohoAnimBitmaskCurBit]
	and $7
	jr z, .skip

	ld c, a
	ld a, b
.loop2
	rrca
	dec c
	jr nz, .loop2
	ld b, a

.skip
	xor a
	bit 0, b
	jr z, .finish
	ld a, 1

.finish
	ld b, a
	ld hl, wTohoAnimBitmaskCurBit
	inc [hl]
	ret

.ApplyFrame:
	push af
	call .GetCoord
	pop af
	push hl
	call .GetTilemap
	ld hl, wTohoAnimGraphicStartTile
	add [hl]
	pop hl
	ld [hl], a
	ret

.GetCoord:
	call .GetStartCoord
	ld a, [wTohoAnimBitmaskCurRow]
	ld bc, SCREEN_WIDTH
	rst AddNTimes
	ld a, [wBoxAlignment]
	and a
	ld a, [wTohoAnimBitmaskCurCol]
	ld e, a
	jr nz, .subtract
	; hl += [wTohoAnimBitmaskCurCol]
	ld d, 0
	add hl, de
	ret

.subtract
	; hl -= [wTohoAnimBitmaskCurCol]
	ld a, l
	sub e
	ld l, a
	ret nc
	dec h
	ret

.GetTilemap:
	push af
	ld a, [wTohoAnimFrontpicHeight]
	cp 5
	jr z, .check_add_24
	cp 6
	jr z, .check_add_13
	pop af
	ret

.check_add_24
	pop af
	cp 5 * 5
	jr nc, .add_24
	push hl
	push de
	ld hl, ._5by5
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret

.add_24
	add 24
	ret

.check_add_13
	pop af
	cp 6 * 6
	jr nc, .add_13
	push hl
	push de
	ld hl, ._6by6
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret

.add_13
	add 13
	ret

MACRO poke_anim_box
	for y, 7, 7 * (\1 + 1), 7
		for x, 7 - \1, 7
			db x + y
		endr
	endr
ENDM

._5by5:
	poke_anim_box 5
	; db  9, 10, 11, 12, 13
	; db 16, 17, 18, 19, 20
	; db 23, 24, 25, 26, 27
	; db 30, 31, 32, 33, 34
	; db 37, 38, 39, 40, 41

._6by6:
	poke_anim_box 6
	; db  8,  9, 10, 11, 12, 13
	; db 15, 16, 17, 18, 19, 20
	; db 22, 23, 24, 25, 26, 27
	; db 29, 30, 31, 32, 33, 34
	; db 36, 37, 38, 39, 40, 41
	; db 43, 44, 45, 46, 47, 48

.GetStartCoord:
	ld hl, wTohoAnimCoord
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wTohoAnimFrontpicHeight]
	ld de, 0
	ld bc, 6
	cp 7
	jr z, .okay
	ld de, SCREEN_WIDTH + 1
	ld bc, SCREEN_WIDTH + 5
	cp 6
	jr z, .okay
	ld de, 2 * SCREEN_WIDTH + 1
	ld bc, 2 * SCREEN_WIDTH + 5
.okay

	ld a, [wBoxAlignment]
	and a
	jr nz, .add_bc
	add hl, de
	ret

.add_bc
	add hl, bc
	ret

.NextBit:
	ld hl, wTohoAnimBitmaskCurRow
	inc [hl]
	ld c, [hl]
	ld a, [wTohoAnimFrontpicHeight]
	cp c
	jr nz, .no_carry
	xor a
	ld [wTohoAnimBitmaskCurRow], a
	ld hl, wTohoAnimBitmaskCurCol
	inc [hl]
	ld c, [hl]
	ld a, [wTohoAnimFrontpicHeight]
	cp c
	jr nz, .no_carry
	scf
	ret

.no_carry
	xor a
	ret

TohoAnim_PlaceGraphic:
	call .ClearBox
	ld a, [wBoxAlignment]
	and a
	jr nz, .flipped
	ld de, 1
	ld bc, 0
	jr .okay

.flipped
	ld de, -1
	ld bc, 6

.okay
	ld hl, wTohoAnimCoord
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	lb bc, 7, 7
	ld a, [wTohoAnimGraphicStartTile]
.loop
	push bc
	push hl
	push de
	ld de, SCREEN_WIDTH
.loop2
	ld [hl], a
	inc a
	add hl, de
	dec b
	jr nz, .loop2
	pop de
	pop hl
	add hl, de
	pop bc
	dec c
	jr nz, .loop
	ret

.ClearBox:
	ld hl, wTohoAnimCoord
	ld a, [hli]
	ld h, [hl]
	ld l, a
	lb bc, 7, 7
	jmp ClearBox

TohoAnim_SetVBank1:
	ldh a, [rSVBK]
	push af
	ld a, $2
	ldh [rSVBK], a
	xor a
	ldh [hBGMapMode], a
	call .SetFlag
	farcall HDMATransferAttrMapToWRAMBank3
	pop af
	ldh [rSVBK], a
	ret

.SetFlag:
	call TohoAnim_GetAttrMapCoord
	lb bc, 7, 7
	ld de, SCREEN_WIDTH
.row
	push bc
	push hl
.col
	ld a, [hl]
	or 8
	ld [hl], a
	add hl, de
	dec c
	jr nz, .col
	pop hl
	inc hl
	pop bc
	dec b
	jr nz, .row
	ret

TohoAnim_SetVBank0:
	call TohoAnim_GetAttrMapCoord
	lb bc, 7, 7
	ld de, SCREEN_WIDTH
.row
	push bc
	push hl
.col
	ld a, [hl]
	and $f7
	ld [hl], a
	add hl, de
	dec c
	jr nz, .col
	pop hl
	inc hl
	pop bc
	dec b
	jr nz, .row
	ret

TohoAnim_GetAttrMapCoord:
	ld hl, wTohoAnimCoord
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wAttrmap - wTilemap
	add hl, de
	ret

TohoAnim_GetFrontpicDims:
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a

	; This is no longer needed for the pic size, but do it just
	; in case subsequent code expects base data available
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData ; [wCurForm] is already set

	call GetPicSize
	ld c, a
	pop af
	ldh [rSVBK], a
	ret

GetMonAnimDataIndex:
	; c = species
	ld a, [wTohoAnimSpecies]
	ld c, a
	; b = form
	ld a, [wTohoAnimVariant]
	ld b, a
	; bc = index
	jmp GetCosmeticSpeciesAndFormIndex

GetMonAnimPointer:
	call GetMonAnimDataIndex
	ld a, [wTohoAnimIdleFlag]
	and a
	ld hl, AnimationPointers
	ld a, BANK(AnimationPointers)
	jr z, .extras
	ld hl, AnimationExtraPointers
	ld a, BANK(AnimationExtraPointers)
.extras
	add hl, bc
	add hl, bc
	ld [wTohoAnimPointerBank], a
	call GetFarWord
	ld a, l
	ld [wTohoAnimPointerAddr], a
	ld a, h
	ld [wTohoAnimPointerAddr + 1], a
	ret

GetMonFramesPointer:
	call GetMonAnimDataIndex
	ld hl, FramesPointers
	add hl, bc
	add hl, bc
	ld a, BANK(FramesPointers)
	call GetFarWord
	ld a, l
	ld [wTohoAnimFramesAddr], a
	ld a, h
	ld [wTohoAnimFramesAddr + 1], a
	ld a, [wTohoAnimVariant]
	and EXTSPECIES_MASK
	jr nz, .johto_frames
	ld a, [wTohoAnimSpecies]
	cp CYOUMU
	; a = carry ? BANK(KantoFrames) : BANK(JohtoFrames)
	assert BANK(KantoFrames) + 1 == BANK(JohtoFrames)
.johto_frames
	sbc a
	add BANK(JohtoFrames)
	ld [wTohoAnimFramesBank], a
	ret

GetMonBitmaskPointer:
	call GetMonAnimDataIndex
	ld hl, BitmasksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(BitmasksPointers)
	ld [wTohoAnimBitmaskBank], a
	call GetFarWord
	ld a, l
	ld [wTohoAnimBitmaskAddr], a
	ld a, h
	ld [wTohoAnimBitmaskAddr + 1], a
	ret

HOF_AnimateFrontpic:
	call AnimateMon_CheckIfTohomon
	jr c, .fail
	ld h, d
	ld l, e
	push bc
	push hl
	ld de, vTiles2
	predef FrontpicPredef
	pop hl
	pop bc
	ld d, 0
	ld e, c
	call AnimateFrontpic
	xor a
	ld [wBoxAlignment], a
	ret

.fail
	xor a
	ld [wBoxAlignment], a
	inc a
	ld [wCurPartySpecies], a
	ret
