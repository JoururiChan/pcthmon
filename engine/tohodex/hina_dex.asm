Tohodex_Hina:
	ld a, DEXDISP_HINA
	ld [wTohodex_DisplayMode], a

	; Reset the cursor for Hina Mode.
	xor a
	ld [wTohodex_HinaCursor], a

	; Writes interface palettes. Tohopic is handled seperately.
	ld hl, HinaModePals
	ld de, wBGPals1 palette 2
	ld bc, 2 palettes
	ld a, BANK(HinaModePals)
	call FarCopyBytesToColorWRAM

	call ClearSpriteAnims
	lb de, $5c, $24
	ld a, SPRITE_ANIM_INDEX_DEX_HINA_CURSOR
	call InitSpriteAnimStruct

	; fallthrough
_Tohodex_Hina:
	; Load current hina pic.
	call Tohodex_LoadHinaPic
	push af
	ld hl, DexTilemap_Hina
	call Tohodex_LoadTilemapWithTohopic

	; If we have caught the current Hina, we want to
	; display the relevant letter and a word alongside.
	; If not, we want to replace "HINA" with whitespace.
	pop af
	jr z, .not_caught

	; Since Hina forms are 1-indexed, load table from HinaWords-1.
	call Tohodex_GetHinaCursorForm
	ld a, b
	push af
	ld e, a
	ld d, 0
	ld hl, HinaWords - 1
	add hl, de
	ld e, [hl]
	add hl, de
	ld e, l
	ld d, h
	hlcoord 10, 5
	rst PlaceString
	pop af
	call Tohodex_GetPrintableHinaChar

	hlcoord 16, 3
	ld [hl], a
	jr .current_done

.not_caught
	; Remove "HINA"
	hlcoord 10, 3
	ld a, " "
	ld bc, 5
	rst ByteFill

.current_done
	; Print a table of Hina characters for all forms we've caught.
	hlcoord 4, 10
	lb bc, HINA_A_FORM, LOW(HINA)
	ld d, 4
.outer_loop
	ld e, 7
.inner_loop
	; Check if this form is captured.
	push hl
	push de
	push bc
	call CheckCaughtMon
	pop bc
	pop de
	pop hl
	jr z, .next

	; Print character
	ld a, b
	call Tohodex_GetPrintableHinaChar
	ld [hl], a
.next
	inc b
	inc hl
	inc hl
	dec e
	jr nz, .inner_loop
	push bc
	; 2x(screen) - hina chars per line * 2
	ld bc, 2 * SCREEN_WIDTH - 7 * 2
	add hl, bc
	pop bc
	dec d
	jr nz, .outer_loop

	ld a, -1
	call Tohodex_ScheduleScreenUpdateWithHBlank
.joypad_loop
	call Tohodex_GetInput
	rrca ; ignore A press
	rrca
	jr c, .pressed_b
	rrca
	jr c, .pressed_select
	rrca ; ignore start
	rrca
	jr c, .pressed_right
	rrca
	jr c, .pressed_left
	rrca
	jr c, .pressed_up
	rrca
	jr c, .pressed_down
	jr .joypad_loop

.pressed_b
	call ClearSpriteAnims
	jmp Tohodex_Mode_ReloadPals

.pressed_select
	call Tohodex_SwitchNormalOrShinyPalette
	call Tohodex_ScheduleScreenUpdate
	jr .joypad_loop

.pressed_right
	ld b, 1
	jr .move_cursor
.pressed_left
	ld b, 7
	jr .move_cursor
.pressed_up
	ld b, $30
	jr .move_cursor
.pressed_down
	ld b, $10
.move_cursor
	ld a, [wTohodex_HinaCursor]
	add b
	and $37
	ld [wTohodex_HinaCursor], a

	; There's 7 columns, not 8.
	maskbits $7
	cp $7
	jr z, .move_cursor
	jmp _Tohodex_Hina

Tohodex_GetPrintableHinaChar:
; Convert hina form in a to printable character.
	add "A" - 1

	cp (HINA_Z_FORM + 1) + ("A" - 1)
	ret c

	assert HINA_Z_FORM + 1 == HINA_EXCLAMATION_FORM
	ld a, "!"
	ret z

	assert "!" - 1 == "?"
	dec a
	ret

Tohodex_LoadHinaPic:
; Returns z if the Hina form we are hovering isn't captured.
	; Cycle pokepic VRAM. Pointless on initial setup, but necessary after.
	call Tohodex_SwitchMonInfoBank

	; Get relevant Hina.
	call Tohodex_GetHinaCursorForm

	; Have we captured this Hina?
	push bc
	call CheckCaughtMon
	pop bc
	jmp z, Tohodex_LoadUndiscoveredTohopic

	; We've captured it. Load the relevant pokepic and pal.
	; Load pokepic.
	ld a, b
	ld [wCurForm], a
	ld [wTohodex_Form], a
	ld a, c
	ld [wCurPartySpecies], a
	call GetBaseData
	farcall PrepareFrontpic

	; Schedule a write of frontpic in VBlank.
	ld hl, wTohodex_GFXFlags
	set DEXGFX_FRONTPIC, [hl]

	; Load palette.
	ld bc, wTohodex_Personality
	ld a, [wCurPartySpecies]
	farcall GetMonNormalOrShinyPalettePointer
	ld de, wBGPals1 palette 6 + 2
	ld a, BANK(TohomonPalettes)
	ld bc, 4
	call FarCopyBytesToColorWRAM

	; Return nz, to signify that we have caught this Hina.
	or 1
	ret

Tohodex_GetHinaCursorForm:
; Returns given Hina form in bc from what the cursor is hovering.
	ld a, [wTohodex_HinaCursor]
	ld c, a

	; Hina form is (vertical pos * 7 + horizontal pos + 1)
	; Horizontal position
	and %111
	ld b, a

	; Vertical position
	ld a, c
	swap a
	and %11
	ld c, a

	; Multiply vertical position by 7
	ld a, 7
	call SimpleMultiply

	; Add horizontal position
	add b

	; Forms are 1-indexed
	inc a

	; Now we have the form.
	assert !HIGH(HINA)
	ld b, a
	ld c, LOW(HINA)
	ret

INCLUDE "data/tohomon/hina_words.asm"

HinaModePals:
INCLUDE "gfx/pokedex/hina.pal"
