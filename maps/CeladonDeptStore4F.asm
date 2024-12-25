CeladonDeptStore4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_5F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_3F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonDeptStore4FDirectoryText

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_CELADON_4F, -1
	object_event  7,  6, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore4FSuperNerdText, -1
	object_event  8,  2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore4FYoungsterText, -1
	object_event 15,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PosterClerkScript, -1

PosterClerkScript:
	faceplayer
	opentext
	writetext PosterClerkText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .AyaPoster
	ifequalfwd $2, .CMeiraPoster
	ifequalfwd $3, .EKikuriPoster
	endtext

.AyaPoster:
	checkmoney $0, 3200
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_3
	iftruefwd .AlreadyBought
	takemoney $0, 3200
	setevent EVENT_DECO_POSTER_3
	writetext BoughtAyaPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext AyaPosterSentText
	waitbutton
	sjump .Start

.CMeiraPoster:
	checkmoney $0, 4800
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_2
	iftruefwd .AlreadyBought
	takemoney $0, 4800
	setevent EVENT_DECO_POSTER_2
	writetext BoughtCMeiraPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext CMeiraPosterSentText
	waitbutton
	sjump .Start

.EKikuriPoster:
	checkmoney $0, 6400
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_1
	iftruefwd .AlreadyBought
	takemoney $0, 6400
	setevent EVENT_DECO_POSTER_1
	writetext BoughtEKikuriPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext EKikuriPosterSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext PosterClerkNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext PosterClerkAlreadyBoughtText
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
	db "Aya      ¥3200@"
	db "CMeira    ¥4800@"
	db "EKikuri     ¥6400@"
	db "Cancel@"

PosterClerkText:
	text "Welcome! Would you"
	line "like a poster?"
	done

PosterClerkNoMoneyText:
	text "You don't have"
	line "enough money."
	done

PosterClerkAlreadyBoughtText:
	text "You bought that"
	line "already."
	done

BoughtAyaPosterText:
	text "<PLAYER> bought"
	line "Aya Poster."
	done

AyaPosterSentText:
	text "Aya Poster"
	line "was sent home."
	done

BoughtCMeiraPosterText:
	text "<PLAYER> bought"
	line "CMeira Poster."
	done

CMeiraPosterSentText:
	text "CMeira Poster"
	line "was sent home."
	done

BoughtEKikuriPosterText:
	text "<PLAYER> bought"
	line "EKikuri Poster."
	done

EKikuriPosterSentText:
	text "EKikuri Poster"
	line "was sent home."
	done

CeladonDeptStore4FSuperNerdText:
	text "I'm here to buy"
	line "Lovely Mail for"
	cont "my girlfriend."
	done

CeladonDeptStore4FYoungsterText:
	text "This is the only"
	line "place where you"

	para "can buy posters."
	line "I collect them!"
	done

CeladonDeptStore4FDirectoryText:
	text "Express Yourself"
	line "With Gifts!"

	para "4F: Wiseman Gifts"
	done
