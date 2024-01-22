BattleCommand_knockoff:
	ld a, [wAttackMissed]
	and a
	ret nz

	call CheckSubstituteOpp
	ret nz

	; Collector prevents item loss
	call CheckCollector
	ret nz

	call OpponentCanLoseItem
	ret z

	call GetOpponentItem
	xor a
	ld [hl], a
	call GetCurItemName
	ld hl, KnockedOffItemText
	call StdBattleTextbox
	ld a, MON_ITEM
	call OpponentPartyAttr
	ret z
	xor a
	ld [hl], a
	ret
