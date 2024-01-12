	db  51,  30,  38,  45,  58,  58 ; 205 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, DARK ; type
	db 120 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CMAGAN, SHED_SKIN, SHED_SKIN, SHED_SKIN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm
	; end
