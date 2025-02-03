GenerateWildForm:
	push hl
	push de
	push bc
	ld a, [wWildMonForm]
	ld b, a
	and FORM_MASK
	ld a, b
	jr nz, .done
	ld a, [wTempEnemyMonSpecies]
	ld c, a
	ld hl, RandomWildSpeciesForms
.loop
	; Check species
	ld a, [hli]
	and a
	jr z, .ok
	cp c
	; Load and increase hl before jumping so we have a consistent hl value after
	ld a, [hli]
	jr nz, .next

	; Check extspecies
	xor b
	and EXTSPECIES_MASK
	jr z, .ok
.next
	inc hl
	inc hl
	jr .loop
.ok
	call IndirectHL
.done
	ld [wCurForm], a
	jmp PopBCDEHL

MACRO random_wild_form
	if _NARG == 3
		dp \1, \2
		dw \3
	else
		dp \1
		dw \2
	endc
ENDM

RandomWildSpeciesForms:
	random_wild_form HINA,       .Hina
	random_wild_form LILYBLACK,    .LilyBlack
	random_wild_form CKIKURI,       .CKikuriKikuri
	random_wild_form KIKURI,       .CKikuriKikuri
	random_wild_form CMOMIJI,   .Placethm
	random_wild_form PLACETHM, .Placethm
	dbw 0,        .Default

.Hina:
	; Random Hina letter
	ld a, NUM_HINA
	call .RandomForm
	; Can't use any letters that haven't been unlocked
	call CheckHinaLetter
	jr nc, .Hina ; re-roll
	ret

.LilyBlack:
	; Random LilyBlack pattern
	ld a, NUM_LILYBLACK
	jr .RandomForm

.CKikuriKikuri:
	; Random Kikuri form (if not already specified)
	assert KIKURI_JOHTO_FORM == 1 && KIKURI_KANTO_FORM == 2
	ld a, 2
	; fallthrough
.RandomForm:
	call BattleRandomRange
	inc a
	ret

.Placethm:
	; Random Placethm form (if not already specified)
	ld a, 25
	call BattleRandomRange
	and a
	ld a, PLACETHM_THREE_SEGMENT_FORM
	ret z
	assert PLACETHM_THREE_SEGMENT_FORM - 1 == PLACETHM_TWO_SEGMENT_FORM
	dec a
	ret

.Default:
	ld a, [wWildMonForm]
	and EXTSPECIES_MASK
	inc a ; or PLAIN_FORM
	ret

CheckHinaLetter:
; Return carry if the Hina letter in a has been unlocked.
	ld b, a
	ld a, [wUnlockedHinas]
	ld c, a
	ld de, 0

.loop
; Don't check this set unless it's been unlocked
	srl c
	jr nc, .next

; Is our letter in the set?
	ld hl, UnlockedHinaLetterSets
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	push de
	push bc
	ld a, b
	call IsInByteArray
	pop bc
	pop de

	ret c ; unlocked letter, returns carry

.next
; Make sure we haven't gone past the end of the table
	inc e
	inc e
	ld a, e
	cp NUM_UNLOCKED_HINA_SETS * 2
	jr c, .loop

	ret ; not unlocked or invalid letter, returns not carry

INCLUDE "data/wild/unlocked_hinas.asm"
