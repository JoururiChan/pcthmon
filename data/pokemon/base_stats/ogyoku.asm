	db 100,  95,  90,  50,  95,  90 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, ROCK ; type
	db 120 ; catch rate
	db 80 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for OGYOKU, SHIELD_DUST, SHIELD_DUST, RUN_AWAY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm
	; end
