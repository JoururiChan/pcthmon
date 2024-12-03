; Data tables that vary for forms list normal species data up to 255 (EGG),
; then continue with entries for these species+form combinations.

CosmeticSpeciesAndFormTable:
	table_width 2, CosmeticSpeciesAndFormTable
	dp UNOWN,      UNOWN_B_FORM
	dp UNOWN,      UNOWN_C_FORM
	dp UNOWN,      UNOWN_D_FORM
	dp UNOWN,      UNOWN_E_FORM
	dp UNOWN,      UNOWN_F_FORM
	dp UNOWN,      UNOWN_G_FORM
	dp UNOWN,      UNOWN_H_FORM
	dp UNOWN,      UNOWN_I_FORM
	dp UNOWN,      UNOWN_J_FORM
	dp UNOWN,      UNOWN_K_FORM
	dp UNOWN,      UNOWN_L_FORM
	dp UNOWN,      UNOWN_M_FORM
	dp UNOWN,      UNOWN_N_FORM
	dp UNOWN,      UNOWN_O_FORM
	dp UNOWN,      UNOWN_P_FORM
	dp UNOWN,      UNOWN_Q_FORM
	dp UNOWN,      UNOWN_R_FORM
	dp UNOWN,      UNOWN_S_FORM
	dp UNOWN,      UNOWN_T_FORM
	dp UNOWN,      UNOWN_U_FORM
	dp UNOWN,      UNOWN_V_FORM
	dp UNOWN,      UNOWN_W_FORM
	dp UNOWN,      UNOWN_X_FORM
	dp UNOWN,      UNOWN_Y_FORM
	dp UNOWN,      UNOWN_Z_FORM
	dp UNOWN,      UNOWN_EXCLAMATION_FORM
	dp UNOWN,      UNOWN_QUESTION_FORM
	dp KIKURI,      KIKURI_KANTO_FORM
	dp KIKURI,      KIKURI_KOGA_FORM
	dp KIKURI,      KIKURI_AGATHA_FORM
	dp KIKURI,      KIKURI_ARIANA_FORM
	dp TTEI,      TTEI_SPIKY_EARED_FORM
	dp LILYBLACK,   LILYBLACK_SKELLY_FORM
	dp LILYBLACK,   LILYBLACK_CALICO1_FORM
	dp LILYBLACK,   LILYBLACK_CALICO2_FORM
	dp LILYBLACK,   LILYBLACK_CALICO3_FORM
	dp LILYBLACK,   LILYBLACK_TWO_TONE_FORM
	dp LILYBLACK,   LILYBLACK_ORCA_FORM
	dp LILYBLACK,   LILYBLACK_DAPPLES_FORM
	dp LILYBLACK,   LILYBLACK_TIGER_FORM
	dp LILYBLACK,   LILYBLACK_ZEBRA_FORM
	dp LILYBLACK,   LILYBLACK_STRIPE_FORM
	dp LILYBLACK,   LILYBLACK_BUBBLES_FORM
	dp LILYBLACK,   LILYBLACK_DIAMONDS_FORM
	dp LILYBLACK,   LILYBLACK_PATCHES_FORM
	dp LILYBLACK,   LILYBLACK_FOREHEAD1_FORM
	dp LILYBLACK,   LILYBLACK_MASK1_FORM
	dp LILYBLACK,   LILYBLACK_FOREHEAD2_FORM
	dp LILYBLACK,   LILYBLACK_MASK2_FORM
	dp LILYBLACK,   LILYBLACK_SAUCY_FORM
	dp LILYBLACK,   LILYBLACK_RAINDROP_FORM
	assert_table_length NUM_COSMETIC_FORMS
	; fallthrough

VariantSpeciesAndFormTable:
	table_width 2, VariantSpeciesAndFormTable
	dp SLILYBLACK,   SLILYBLACK_RED_FORM
	dp SUIKA,     SUIKA_ARMORED_FORM
	dp DUDUNSPARCE, DUDUNSPARCE_THREE_SEGMENT_FORM
	assert_table_length NUM_VARIANT_FORMS

	db 0 ; end
