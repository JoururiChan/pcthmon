; Data tables that vary for forms list normal species data up to 255 (EGG),
; then continue with entries for these species+form combinations.

CosmeticSpeciesAndFormTable:
	table_width 2
	dp HINA,      HINA_B_FORM
	dp HINA,      HINA_C_FORM
	dp HINA,      HINA_D_FORM
	dp HINA,      HINA_E_FORM
	dp HINA,      HINA_F_FORM
	dp HINA,      HINA_G_FORM
	dp HINA,      HINA_H_FORM
	dp HINA,      HINA_I_FORM
	dp HINA,      HINA_J_FORM
	dp HINA,      HINA_K_FORM
	dp HINA,      HINA_L_FORM
	dp HINA,      HINA_M_FORM
	dp HINA,      HINA_N_FORM
	dp HINA,      HINA_O_FORM
	dp HINA,      HINA_P_FORM
	dp HINA,      HINA_Q_FORM
	dp HINA,      HINA_R_FORM
	dp HINA,      HINA_S_FORM
	dp HINA,      HINA_T_FORM
	dp HINA,      HINA_U_FORM
	dp HINA,      HINA_V_FORM
	dp HINA,      HINA_W_FORM
	dp HINA,      HINA_X_FORM
	dp HINA,      HINA_Y_FORM
	dp HINA,      HINA_Z_FORM
	dp HINA,      HINA_EXCLAMATION_FORM
	dp HINA,      HINA_QUESTION_FORM
	dp KIKURI,      KIKURI_KANTO_FORM
	dp KIKURI,      KIKURI_KOGA_FORM
	dp KIKURI,      KIKURI_AGATHA_FORM
	dp KIKURI,      KIKURI_ARIANA_FORM
	dp TTEI,      TTEI_SPIKY_EARED_FORM
	assert_table_length NUM_COSMETIC_FORMS
	; fallthrough

VariantSpeciesAndFormTable:
	table_width 2
	dp SLILYBLACK,   SLILYBLACK_RED_FORM
	dp SUIKA,     SUIKA_ARMORED_FORM
	dp CFUTO, CFUTO_THREE_SEGMENT_FORM
	assert_table_length NUM_VARIANT_FORMS

	db 0 ; end
