	db  60,  88, 110,  65,  87, 110 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, ICE ; type
	db 120 ; catch rate
	db 80 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for MGYOKU, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield 2 SDf, 1 Def

	; tm/hm learnset
	tmhm
	; end
