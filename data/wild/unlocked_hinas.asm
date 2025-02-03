MACRO hina_set
	for i, 1, _NARG + 1
		db HINA_\<i>_FORM
	endr
	db -1
ENDM

UnlockedHinaLetterSets:
; entries correspond to UNLOCKED_HINAS_* constants
	table_width 2
	dw .Set_A_J
	dw .Set_K_Q
	dw .Set_R_W
	dw .Set_X_Question
	assert_table_length NUM_UNLOCKED_HINA_SETS

.Set_A_J:
	hina_set A, B, C, D, E, F, G, H, I, J
.Set_K_Q:
	hina_set K, L, M, N, O, P, Q
.Set_R_W:
	hina_set R, S, T, U, V, W
.Set_X_Question:
	hina_set X, Y, Z, EXCLAMATION, QUESTION
