	db  60,  88, 110,  65,  87, 110 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, ICE ; type
	db 120 ; catch rate
	db 80 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for MGYOKU, SHED_SKIN, SHED_SKIN, SHED_SKIN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm
	; end
