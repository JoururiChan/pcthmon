HiddenGrottoData:
	table_width 11, HiddenGrottoData

	; db warp number, rare item, level
	; dp common mon 1
	; dp common mon 2
	; dp uncommon mon
	; dp rare mon

; HIDDENGROTTO_ROUTE_32
	db 5, EVERSTONE, 5
	dp MAREEP
	dp WOOPER
	dp EKANS, ARBOK_JOHTO_FORM
	dp GASTLY

; HIDDENGROTTO_ILEX_FOREST
	db 4, LEAF_STONE, 9
	dp PARAS
	dp ODDISH
	dp PSYDUCK
	dp PINECO

; HIDDENGROTTO_ROUTE_35
	db 4, SUN_STONE, 15
	dp SNUBBULL
	dp JIGGLYPUFF
	dp YANMA
	dp DITTO

; HIDDENGROTTO_ROUTE_36
	db 7, FIRE_STONE, 16
	dp STANTLER
	dp GROWLITHE
	dp VULPIX
	dp HOUNDOUR

; HIDDENGROTTO_CHERRYGROVE_BAY
	db 1, SHINY_STONE, LEVEL_FROM_BADGES + 0
	dp EXEGGCUTE
	dp SKIPLOOM
	dp SUNFLORA
	dp CORSOLA

; HIDDENGROTTO_VIOLET_OUTSKIRTS
	db 1, DUSK_STONE, LEVEL_FROM_BADGES - 0
	dp RATTATA, ALOLAN_FORM
	dp BELLSPROUT
	dp NOCTOWL
	dp MISDREAVUS

; HIDDENGROTTO_ROUTE_32_COAST
	db 3, WATER_STONE, LEVEL_FROM_BADGES + 3
	dp AIPOM
	dp WEEPINBELL
	dp RATICATE
	dp ARBOK, ARBOK_JOHTO_FORM

; HIDDENGROTTO_STORMY_BEACH
	db 3, WATER_STONE, LEVEL_FROM_BADGES + 3
	dp GRIMER, ALOLAN_FORM
	dp HAUNTER
	dp GOLBAT
	dp VENOMOTH

; HIDDENGROTTO_ROUTE_35_COAST
	db 3, THUNDERSTONE, LEVEL_FROM_BADGES + 3
	dp MILTANK
	dp TAUROS
	dp MAGNEMITE
	dp VOLTORB

; HIDDENGROTTO_RUINS_OF_ALPH
	db 13, MOON_STONE, 25
	dp SANDSHREW
	dp NATU
	dp QUAGSIRE
	dp SMEARGLE

; HIDDENGROTTO_ROUTE_47
	db 7, SHINY_STONE, LEVEL_FROM_BADGES + 0
	dp FARFETCH_D, GALARIAN_FORM
	dp CUBONE
	dp MACHOP
	dp LARVITAR

; HIDDENGROTTO_YELLOW_FOREST
	db 3, THUNDERSTONE, LEVEL_FROM_BADGES + 0
	dp LEDYBA
	dp SPINARAK
	dp MEOWTH
	dp PIKACHU

; HIDDENGROTTO_RUGGED_ROAD_NORTH
	db 2, FIRE_STONE, LEVEL_FROM_BADGES + 1
	dp GRAVELER
	dp GROWLITHE, HISUIAN_FORM
	dp SKARMORY
	dp DUNSPARCE

; HIDDENGROTTO_SNOWTOP_MOUNTAIN_INSIDE
	db 3, ICE_STONE, LEVEL_FROM_BADGES + 4
	dp SWINUB
	dp MR__MIME, GALARIAN_FORM
	dp DELIBIRD
	dp SNEASEL

; HIDDENGROTTO_ROUTE_42
	db 6, DUSK_STONE, 25
	dp MANKEY
	dp MARILL
	dp MACHOP
	dp GRAVELER

; HIDDENGROTTO_LAKE_OF_RAGE
	db 3, WATER_STONE, 26
	dp CMIMA
	dp GIRAFARIG
	dp FARFETCH_D
	dp FLAAFFY

; HIDDENGROTTO_BELLCHIME_TRAIL
	db 4, SUN_STONE, 20
	dp SENTRET
	dp HOOTHOOT
	dp MAGBY
	dp EEVEE

; HIDDENGROTTO_ROUTE_44
	db 2, LEAF_STONE, 34
	dp TANGELA
	dp LICKITUNG
	dp GLIGAR
	dp ONIX

; HIDDENGROTTO_ROUTE_45
	db 2, MOON_STONE, 36
	dp DONPHAN
	dp URSARING
	dp GLIGAR
	dp SKARMORY

; HIDDENGROTTO_ROUTE_46
	db 4, LEAF_STONE, 24
	dp PHANPY
	dp TEDDIURSA
	dp ZUBAT
	dp DUNSPARCE

; HIDDENGROTTO_SINJOH_RUINS
	db 3, ICE_STONE, LEVEL_FROM_BADGES + 5
	dp VULPIX, ALOLAN_FORM
	dp MR__MIME, GALARIAN_FORM
	dp GROWLITHE, HISUIAN_FORM
	dp SNEASEL, HISUIAN_FORM

; HIDDENGROTTO_SILVER_CAVE
	db 3, FIRE_STONE, 70
	dp RAPIDASH
	dp SNEASEL
	dp STEELIX
	dp PUPITAR

	assert_table_length NUM_HIDDEN_GROTTOES
