	db  40,  40,  40,  40,  40,  40 ; 195 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 255 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CGYOKU, SHIELD_DUST, SHIELD_DUST, RUN_AWAY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm
	; end
