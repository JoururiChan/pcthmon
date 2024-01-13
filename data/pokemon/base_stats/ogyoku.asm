	db 100,  95,  90,  50,  95,  90 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, ROCK ; type
	db 120 ; catch rate
	db 80 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for OGYOKU, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_MINERAL ; egg groups

	ev_yield 2 HP, 1 Spe

	; tm/hm learnset
	tmhm
	; end
