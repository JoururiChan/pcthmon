TohogearPhone_Init:
	ld hl, wJumptableIndex
	inc [hl]
	xor a
	ld [wTohogearPhoneScrollPosition], a
	ld [wTohogearPhoneCursorPosition], a
	ld [wTohogearPhoneSelectedPerson], a

	ld a, CGB_TOHOGEAR_PALS
	call GetCGBLayout
	call SetDefaultBGPAndOBP

	call InitTohogearTilemap
	call ExitTohogearRadio_HandleMusic
	ld hl, TohogearText_WhomToCall
	jmp PrintText

TohogearPhone_Joypad:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b
	ld a, [hl]
	and A_BUTTON
	jr nz, .a
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	jmp TohogearPhone_GetDPad

.left
	ld a, [wTohogearFlags]
	bit TOHOGEAR_MAP_CARD_F, a
	jr z, .no_map
	lb bc, TOHOGEARCARD_MAP, TOHOGEARSTATE_MAPCHECKREGION
	jr .switch_page

.no_map
	lb bc, TOHOGEARCARD_CLOCK, TOHOGEARSTATE_CLOCKINIT
	jr .switch_page

.right
	ld a, [wTohogearFlags]
	bit TOHOGEAR_RADIO_CARD_F, a
	ret z
	lb bc, TOHOGEARCARD_RADIO, TOHOGEARSTATE_RADIOINIT
.switch_page
	jmp Tohogear_SwitchPage

.b
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.a
	call TohogearPhone_GetCellNumber
	ld a, c
	and a
	ret z
	ld [wTohogearPhoneSelectedPerson], a
	hlcoord 1, 4
	ld a, [wTohogearPhoneCursorPosition]
	ld bc, 20 * 2
	rst AddNTimes
	ld [hl], "▷"
	call TohogearPhoneContactSubmenu
	jr c, .quit_submenu
	ld hl, wJumptableIndex
	inc [hl]
	ret

.quit_submenu
	ld a, TOHOGEARSTATE_PHONEJOYPAD
	ld [wJumptableIndex], a
	ret

TohogearPhone_MakePhoneCall:
	call GetMapPhoneService
	and a
	jr nz, .no_service
	ld hl, wOptions1
	res NO_TEXT_SCROLL, [hl]
	xor a
	ldh [hInMenu], a
	ld de, SFX_CALL
	call PlaySFX
	ld hl, .dotdotdot
	call PrintText
	call WaitSFX
	ld de, SFX_CALL
	call PlaySFX
	ld hl, .dotdotdot
	call PrintText
	call WaitSFX
	ld a, [wTohogearPhoneSelectedPerson]
	ld b, a
	call MakePhoneCallFromTohogear
	ld c, 10
	call DelayFrames
	ld hl, wOptions1
	set NO_TEXT_SCROLL, [hl]
	ld a, $1
	ldh [hInMenu], a
	call TohogearPhone_UpdateCursor
	ld hl, wJumptableIndex
	inc [hl]
	ret

.no_service
	call Phone_NoSignal
	ld hl, .OutOfServiceArea
	call PrintText
	ld a, TOHOGEARSTATE_PHONEJOYPAD
	ld [wJumptableIndex], a
	ld hl, TohogearText_WhomToCall
	jmp PrintText

.dotdotdot
	;
	text_far _GearEllipseText
	text_end

.OutOfServiceArea:
	; You're out of the service area.
	text_far _GearOutOfServiceText
	text_end

TohogearPhone_FinishPhoneCall:
	ldh a, [hJoyPressed]
	and A_BUTTON | B_BUTTON
	ret z
	call HangUp
	ld a, TOHOGEARSTATE_PHONEJOYPAD
	ld [wJumptableIndex], a
	ld hl, TohogearText_WhomToCall
	jmp PrintText

TohogearPhone_GetDPad:
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .up
	ld a, [hl]
	and D_DOWN
	jr nz, .down
	ret

.up
	ld hl, wTohogearPhoneCursorPosition
	ld a, [hl]
	and a
	jr z, .scroll_page_up
	dec [hl]
	jr .done_joypad_same_page

.scroll_page_up
	ld hl, wTohogearPhoneScrollPosition
	ld a, [hl]
	and a
	ret z
	dec [hl]
	jr .done_joypad_update_page

.down
	ld hl, wTohogearPhoneCursorPosition
	ld a, [hl]
	cp $3
	jr nc, .scroll_page_down
	inc [hl]
	jr .done_joypad_same_page

.scroll_page_down
	ld hl, wTohogearPhoneScrollPosition
	ld a, [wNumSetBits]
	sub 4
	ret c
	cp [hl]
	ret z
	inc [hl]
	jr .done_joypad_update_page

.done_joypad_same_page
	xor a
	ldh [hBGMapMode], a
	call TohogearPhone_UpdateCursor
	jmp ApplyTilemapInVBlank

.done_joypad_update_page
	xor a
	ldh [hBGMapMode], a
	call TohogearPhone_UpdateDisplayList
	jmp ApplyTilemapInVBlank

TohogearPhone_UpdateDisplayList:
	hlcoord 1, 3
	ld b, 9
	ld a, " "
.row
	ld c, 18
.col
	ld [hli], a
	dec c
	jr nz, .col
	inc hl
	inc hl
	dec b
	jr nz, .row
	ld a, [wTohogearPhoneScrollPosition]
	ld e, a
	xor a
	ld [wTohogearPhoneLoadNameBuffer], a
.loop
	push de
	call TohogearPhone_GetCellNumberFromE
	ld d, c
	hlcoord 2, 4
	ld a, [wTohogearPhoneLoadNameBuffer]
	ld bc, 2 * SCREEN_WIDTH
	rst AddNTimes
	ld b, d
	ld d, h
	ld e, l
	call GetCallerClassAndName
	pop de
	inc e
	ld hl, wTohogearPhoneLoadNameBuffer
	inc [hl]
	ld a, [hl]
	cp 4 ; 4 entries fit on the screen
	jr c, .loop
	; fallthrough
TohogearPhone_UpdateCursor:
	ld a, " "
	hlcoord 1, 4
	ld [hl], a
	hlcoord 1, 6
	ld [hl], a
	hlcoord 1, 8
	ld [hl], a
	hlcoord 1, 10
	ld [hl], a
	hlcoord 1, 4
	ld a, [wTohogearPhoneCursorPosition]
	ld bc, 2 * SCREEN_WIDTH
	rst AddNTimes
	ld [hl], "▶"
	ret

TohogearPhone_DeletePhoneNumber:
	call TohogearPhone_GetCellNumber
	call DelCellNum
; Check if scroll position should be decremented as a result
	ld hl, wNumSetBits
	dec [hl]
	ld a, [wTohogearPhoneScrollPosition]
	and a
	ret z
	add 3 ; assume cursor position is at the bottom for this calculation
	cp [hl]
	ret c
	sub 4
	ld [wTohogearPhoneScrollPosition], a
	ret

TohogearPhone_GetCellNumber:
; Returns nth contact from wPhoneList in c, c=0 for invalid contact
; Input: wTohogearPhoneCursorPosition + wTohogearPhoneCursorPosition
	ld a, [wTohogearPhoneScrollPosition]
	ld e, a
	ld a, [wTohogearPhoneCursorPosition]
	add e
	ld e, a
	;fallthrough
TohogearPhone_GetCellNumberFromE:
; Returns e-th contact from wPhoneList in c, c=0 for invalid contact
; Input: e
	inc e
	call TohogearPhone_CountSetBits
	cp e ; result is returned in a
	ld c, 0
	ret c
.loop
	inc c
	call CheckCellNum
	jr z, .loop
	dec e
	jr nz, .loop
	ret

TohogearPhone_CountSetBits:
; Returns result in wNumSetBits
	ld hl, wPhoneList
	ld b, wPhoneListEnd - wPhoneList
	jmp CountSetBits

TohogearPhoneContactSubmenu:
	call TohogearPhone_GetCellNumber
	call CheckCanDeletePhoneNumber
	ld a, c
	and a
	jr z, .cant_delete
	ld hl, .CallDeleteCancelJumptable
	ld de, .CallDeleteCancelStrings
	jr .got_menu_data

.cant_delete
	ld hl, .CallCancelJumptable
	ld de, .CallCancelStrings
.got_menu_data
	xor a
	ldh [hBGMapMode], a
	push hl
	push de
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	inc de
	push hl
	bccoord -1, -2, 0
	add hl, bc
	ld a, [de]
	inc de
	add a
	ld b, a
	ld c, 8
	push de
	call Textbox
	pop de
	pop hl
	inc hl
	rst PlaceString
	pop de
	xor a
	ld [wTohogearPhoneSubmenuCursor], a
	call .UpdateCursor
	call ApplyTilemapInVBlank
.loop
	push de
	call JoyTextDelay
	pop de
	ld hl, hJoyPressed
	ld a, [hl]
	and D_UP
	jr nz, .d_up
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
	ld a, [hl]
	and A_BUTTON | B_BUTTON
	jr nz, .a_b
	call DelayFrame
	jr .loop

.d_up
	ld hl, wTohogearPhoneSubmenuCursor
	ld a, [hl]
	and a
	jr z, .loop
	dec [hl]
	call .UpdateCursor
	jr .loop

.d_down
	ld hl, 2
	add hl, de
	ld a, [wTohogearPhoneSubmenuCursor]
	inc a
	cp [hl]
	jr nc, .loop
	ld [wTohogearPhoneSubmenuCursor], a
	call .UpdateCursor
	jr .loop

.a_b
	xor a
	ldh [hBGMapMode], a
	call TohogearPhone_UpdateDisplayList
	ld a, $1
	ldh [hBGMapMode], a
	pop hl
	ldh a, [hJoyPressed]
	and B_BUTTON
	jr nz, .Cancel
	ld a, [wTohogearPhoneSubmenuCursor]
	jmp JumpTable

.Cancel:
	ld hl, TohogearText_WhomToCall
	call PrintText
	scf
	ret

.Delete:
	ld hl, TohogearText_DeleteStoredNumber
	call MenuTextbox
	call YesNoBox
	call ExitMenu
	jr c, .CancelDelete
	call TohogearPhone_DeletePhoneNumber
	xor a
	ldh [hBGMapMode], a
	call TohogearPhone_UpdateDisplayList
	ld hl, TohogearText_WhomToCall
	call PrintText
	call ApplyTilemapInVBlank
.CancelDelete:
	scf
	ret

.Call:
	and a
	ret

.UpdateCursor:
	push de
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	ld a, [de]
	ld c, a
	push hl
	ld a, " "
	ld de, SCREEN_WIDTH * 2
.clear_column
	ld [hl], a
	add hl, de
	dec c
	jr nz, .clear_column
	pop hl
	ld a, [wTohogearPhoneSubmenuCursor]
	ld bc, SCREEN_WIDTH  * 2
	rst AddNTimes
	ld [hl], "▶"
	pop de
	ret

.CallDeleteCancelStrings:
	dwcoord 10, 6
	db 3
	text "Call"
	next "Delete"
	next "Cancel"
	done

.CallDeleteCancelJumptable:
	dw .Call
	dw .Delete
	dw .Cancel

.CallCancelStrings:
	dwcoord 10, 8
	db 2
	text "Call"
	next "Cancel"
	done

.CallCancelJumptable:
	dw .Call
	dw .Cancel
