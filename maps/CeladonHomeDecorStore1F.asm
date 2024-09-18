CeladonHomeDecorStore1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 12
	warp_event  4,  7, CELADON_CITY, 12
	warp_event  9,  0, CELADON_HOME_DECOR_STORE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, CeladonHomeDecorStore1FDirectoryText

	def_object_events
	object_event  4,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore1FReceptionistText, -1
	object_event  5,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonHomeDecorStore1FClerkScript, -1
	object_event  7,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CREIMU, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FCReimuDollScript, -1
	object_event  8,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CMARISA, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FCMarisaDollScript, -1
	object_event  9,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CSAKUYA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FCSakuyaDollScript, -1
	object_event  0,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore1FCooltrainerfText, -1

CeladonHomeDecorStore1FCReimuDollScript:
	jumpthistext

	text "It's a cute"
	line "CReimu doll!"
	done

CeladonHomeDecorStore1FCMarisaDollScript:
	jumpthistext

	text "It's a tough"
	line "CMarisa doll!"
	done

CeladonHomeDecorStore1FCSakuyaDollScript:
	jumpthistext

	text "It's a cool"
	line "CSakuya doll!"
	done

CeladonHomeDecorStore1FClerkScript:
	faceplayer
	opentext
	writetext CeladonHomeDecorStore1FClerkText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .CReimuDoll
	ifequalfwd $2, .CMarisaDoll
	ifequalfwd $3, .CSakuyaDoll
	endtext

.CReimuDoll:
	checkmoney $0, 16000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_CREIMU_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 16000
	setevent EVENT_DECO_CREIMU_DOLL
	writetext BoughtCReimuDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext CReimuDollSentText
	waitbutton
	sjump .Start

.CMarisaDoll:
	checkmoney $0, 16000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_CMARISA_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 16000
	setevent EVENT_DECO_CMARISA_DOLL
	writetext BoughtCMarisaDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext CMarisaDollSentText
	waitbutton
	sjump .Start

.CSakuyaDoll:
	checkmoney $0, 16000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_CSAKUYA_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 16000
	setevent EVENT_DECO_CSAKUYA_DOLL
	writetext BoughtCSakuyaDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext CSakuyaDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext CeladonHomeDecorStore1FNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext CeladonHomeDecorStore1FAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "CReimu  ¥16000@"
	db "CMarisa ¥16000@"
	db "CSakuya   ¥16000@"
	db "Cancel@"

CeladonHomeDecorStore1FReceptionistText:
	text "Hello! Welcome to"
	line "Celadon Dept."
	cont "Store Home Decor!"

	para "The directory is"
	line "on the wall."
	done

CeladonHomeDecorStore1FClerkText:
	text "Welcome! Would you"
	line "like a doll as a"
	cont "Celadon souvenir?"
	done

BoughtCReimuDollText:
	text "<PLAYER> bought"
	line "CReimu Doll."
	done

CReimuDollSentText:
	text "CReimu Doll"
	line "was sent home."
	done

BoughtCMarisaDollText:
	text "<PLAYER> bought"
	line "CMarisa Doll."
	done

CMarisaDollSentText:
	text "CMarisa Doll"
	line "was sent home."
	done

BoughtCSakuyaDollText:
	text "<PLAYER> bought"
	line "CSakuya Doll."
	done

CSakuyaDollSentText:
	text "CSakuya Doll"
	line "was sent home."
	done

CeladonHomeDecorStore1FNoMoneyText:
	text "You can't afford"
	line "that!"
	done

CeladonHomeDecorStore1FAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

CeladonHomeDecorStore1FCooltrainerfText:
	text "This new wing"
	line "feels more upscale"

	para "than the main"
	line "Dept.Store."
	done

CeladonHomeDecorStore1FDirectoryText:
	text "1F: Lobby"

	para "2F: Beds"

	para "3F: Carpets"

	para "4F: Jumbo Dolls"
	done
