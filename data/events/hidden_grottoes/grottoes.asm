HiddenGrottoData:
	table_width 11, HiddenGrottoData

	; db warp number, rare item, level
	; dp common mon 1
	; dp common mon 2
	; dp uncommon mon
	; dp rare mon

; HIDDENGROTTO_ROUTE_32
	db 5, EVERSTONE, 5
	dp CMIMA
	dp CREISEN
	dp CKIKURI, KIKURI_JOHTO_FORM
	dp CSHINKI

; HIDDENGROTTO_ILEX_FOREST
	db 4, LEAF_STONE, 9
	dp EKANA
	dp EKOTOHIME
	dp YUMEMI
	dp PINECO

; HIDDENGROTTO_ROUTE_35
	db 4, SUN_STONE, 15
	dp SNUBBULL
	dp ELLEN
	dp YANMA
	dp LYRICA

; HIDDENGROTTO_ROUTE_36
	db 7, FIRE_STONE, 16
	dp STANTLER
	dp EORANGE
	dp EMEIRA
	dp HOUNDOUR

; HIDDENGROTTO_CHERRYGROVE_BAY
	db 1, SHINY_STONE, LEVEL_FROM_BADGES + 0
	dp CIRNO
	dp SKIPLOOM
	dp SUNFLORA
	dp CORSOLA

; HIDDENGROTTO_VIOLET_OUTSKIRTS
	db 1, DUSK_STONE, LEVEL_FROM_BADGES - 0
	dp CMIMA
	dp MUGETSU
	dp NOCTOWL
	dp MISDREAVUS

; HIDDENGROTTO_ROUTE_32_COAST
	db 3, WATER_STONE, LEVEL_FROM_BADGES + 3
	dp AIPOM
	dp EMUGETSU
	dp CELIS
	dp KIKURI, KIKURI_JOHTO_FORM

; HIDDENGROTTO_STORMY_BEACH
	db 3, WATER_STONE, LEVEL_FROM_BADGES + 3
	dp EYUKI
	dp SHINKI
	dp KOTOHIME
	dp ERIKAKO

; HIDDENGROTTO_ROUTE_35_COAST
	db 3, THUNDERSTONE, LEVEL_FROM_BADGES + 3
	dp MILTANK
	dp CLILYBLACK
	dp ALICE
	dp DDAICHAN

; HIDDENGROTTO_RUINS_OF_ALPH
	db 13, MOON_STONE, 25
	dp SARIEL
	dp NATU
	dp QUAGSIRE
	dp SMEARGLE

; HIDDENGROTTO_ROUTE_47
	db 7, SHINY_STONE, LEVEL_FROM_BADGES + 0
	dp CMAI
	dp CMEILING
	dp YUKA
	dp LARVITAR

; HIDDENGROTTO_YELLOW_FOREST
	db 3, THUNDERSTONE, LEVEL_FROM_BADGES + 0
	dp LEDYBA
	dp SPINARAK
	dp ECHIYURI
	dp EKIKURI

; HIDDENGROTTO_RUGGED_ROAD_NORTH
	db 2, FIRE_STONE, LEVEL_FROM_BADGES + 1
	dp SARA
	dp EORANGE
	dp SKARMORY
	dp DUNSPARCE

; HIDDENGROTTO_SNOWTOP_MOUNTAIN_INSIDE
	db 3, ICE_STONE, LEVEL_FROM_BADGES + 4
	dp SWINUB
	dp CCHEN
	dp DELIBIRD
	dp SNEASEL

; HIDDENGROTTO_ROUTE_42
	db 6, DUSK_STONE, 25
	dp CORANGE
	dp MARILL
	dp YUKA
	dp SARA

; HIDDENGROTTO_LAKE_OF_RAGE
	db 3, WATER_STONE, 26
	dp CMIMA
	dp GIRAFARIG
	dp CMAI
	dp FLAAFFY

; HIDDENGROTTO_BELLCHIME_TRAIL
	db 4, SUN_STONE, 20
	dp SENTRET
	dp HOOTHOOT
	dp MAGBY
	dp TLYRICA

; HIDDENGROTTO_ROUTE_44
	db 2, LEAF_STONE, 34
	dp REMILIA
	dp KOAKUMA
	dp GLIGAR
	dp CRUMIA

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
	dp CKOTOHIME
	dp DUNSPARCE

; HIDDENGROTTO_SINJOH_RUINS
	db 3, ICE_STONE, LEVEL_FROM_BADGES + 5
	dp EMEIRA
	dp CCHEN,
	dp EORANGE
	dp SNEASEL

; HIDDENGROTTO_SILVER_CAVE
	db 3, FIRE_STONE, 70
	dp LUIZE
	dp SNEASEL
	dp STEELIX
	dp PUPITAR

	assert_table_length NUM_HIDDEN_GROTTOES
