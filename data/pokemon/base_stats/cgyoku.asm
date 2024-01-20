	db  40,  40,  40,  40,  40,  40 ; 195 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 255 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for CGYOKU, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, BULK_UP, HIDDEN_POWER, HONE_TOOLS, LIGHT_SCREEN, PROTECT, SAFEGUARD, RETURN, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, LEECH_LIFE, WILL_O_WISP, WATER_PULSE, FLASH
	; end
