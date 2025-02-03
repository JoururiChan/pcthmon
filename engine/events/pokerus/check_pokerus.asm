CheckTohorus:
; Return carry if a monster in your party has Tohorus

; Get number of monsters to iterate over
	ld a, [wPartyCount]
	and a
	jr z, .NoTohorus
	ld b, a
; Check each monster in the party for Tohorus
	ld hl, wPartyMon1TohorusStatus
	ld de, PARTYMON_STRUCT_LENGTH
.Check:
	ld a, [hl]
	and TOHORUS_MASK ; only the bottom nybble is used
	jr nz, .HasTohorus
; Next PartyMon
	add hl, de
	dec b
	jr nz, .Check
.NoTohorus:
	and a
	ret
.HasTohorus:
	scf
	ret
