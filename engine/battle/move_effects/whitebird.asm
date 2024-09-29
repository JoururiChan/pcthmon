BattleCommand_whitebird:
; Remove the flying type until endturn
	; Do nothing if HP is full (error message is handled later)
	farcall CheckFullHP
	ret z

	call CheckIfUserIsFlyingType
	ret nz

	lb bc, FLYING, UNKNOWN_T

	ldh a, [hBattleTurn]
	and a
	ld hl, wBattleMonType1
	jr z, .got_types
	ld hl, wEnemyMonType1
.got_types
	; Check if both types are flying
	ld a, [hli]
	cp b
	jr nz, .not_double_flying
	ld a, [hld]
	cp b
	jr z, .normalize
.not_double_flying
	; White Bird shouldn't mess with non-Flying types.
	ld a, [hl]
	cp b
	ret nz ; don't set the whitebird status if types don't change

	; We've found the flying type.
	ld [hl], c
	jr .types_ok
.normalize
	; Pure Flying types become Illusion
	ld a, ILLUSION
	ld [hli], a
	ld [hl], a
.types_ok
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_WHITE_BIRD, [hl]
	ret
