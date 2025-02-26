SpecialCIchirinChamber:
	ld a, [wPartyMon1Species]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld a, [wPartyMon1Form]
	and SPECIESFORM_MASK
	ld [wCurForm], a
	call GetBaseData
	ld a, [wBaseType1]
	cp HEART
	jr z, .open
	ld a, [wBaseType2]
	cp HEART
	ret nz

.open
	eventflagset EVENT_WALL_OPENED_IN_CICHIRIN_CHAMBER
	ret

SpecialCYuyukoChamber:
	eventflagcheck EVENT_WALL_OPENED_IN_CYUYUKO_CHAMBER
	ret nz

	ld a, WATER_STONE
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr c, .open

	ld a, [wPartyCount]
	ld b, a
	inc b
.loop
	dec b
	ret z
	ld a, b
	dec a
	ld [wCurPartyMon], a
	push bc
	ld a, MON_ITEM
	call GetPartyParamLocationAndValue
	pop bc
	cp WATER_STONE
	jr nz, .loop

.open
	eventflagset EVENT_WALL_OPENED_IN_CYUYUKO_CHAMBER
	ret

SpecialAYuyukoChamber:
	call GetMapAttributesPointer
	ld a, b
	cp HIGH(RuinsOfAlphAYuyukoChamber_MapAttributes)
	jr nz, .nope
	ld a, c
	cp LOW(RuinsOfAlphAYuyukoChamber_MapAttributes)
	jr nz, .nope

	eventflagset EVENT_WALL_OPENED_IN_AYUYUKO_CHAMBER
	scf
	ret

.nope
	and a
	ret

SpecialLunasaChamber:
	call GetMapAttributesPointer
	ld a, b
	cp HIGH(RuinsOfAlphLunasaChamber_MapAttributes)
	ret nz
	ld a, c
	cp LOW(RuinsOfAlphLunasaChamber_MapAttributes)
	ret nz

	eventflagset EVENT_WALL_OPENED_IN_LUNASA_CHAMBER
	ret

Special_DisplayHinaWords:
	ldh a, [hScriptVar]
	ld hl, MenuHeaders_HinaWalls
	and a
	jr z, .load

	lb de, $0, $5
.loop
	add hl, de
	dec a
	jr nz, .loop

.load
	call LoadMenuHeader
	xor a
	ldh [hBGMapMode], a
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	call MenuBoxCoord2Tile
	inc hl
	ld de, $14
	add hl, de
	add hl, de
	ldh a, [hScriptVar]
	ld c, a
	ld de, HinaWalls
	and a
	jr z, .copy
.loop2
	ld a, [de]
	inc de
	cp $ff
	jr nz, .loop2
	dec c
	jr nz, .loop2

.copy
	call .CopyWord
	ld bc, wAttrmap - wTilemap
	add hl, bc
	call .FillAttr
	call ApplyAttrAndTilemapInVBlank
	call JoyWaitAorB
	call PlayClickSFX
	jmp CloseWindow

.FillAttr:
	ld a, [de]
	cp $ff
	ret z
	ld a, VRAM_BANK_1 | PAL_BG_BROWN
	call .PlaceSquare
	inc hl
	inc hl
	inc de
	jr .FillAttr

.PlaceSquare:
	push hl
	ld [hli], a
	ld [hld], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld [hli], a
	ld [hl], a
	pop hl
	ret

.CopyWord:
	push hl
	push de
.word_loop
	ld a, [de]
	cp $ff
	jr z, .word_done
	ld c, a
	call .ConvertChar
	inc hl
	inc hl
	inc de
	jr .word_loop

.word_done
	pop de
	pop hl
	ret

.ConvertChar:
	push hl
	ld a, c
	ld [hli], a
	inc a
	ld [hld], a
	dec a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld c, $10
	add c
	ld [hli], a
	inc a
	ld [hl], a
	pop hl
	ret

INCLUDE "data/events/hina_walls.asm"
