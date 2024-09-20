
CeladonHomeDecorStore4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  0, CELADON_HOME_DECOR_STORE_3F, 2

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, CeladonHomeDecorStore4FDirectoryText
	bg_event  2,  5, BGEVENT_READ, BigCRumiaDollScript
	bg_event  3,  5, BGEVENT_READ, BigCRumiaDollScript
	bg_event  2,  6, BGEVENT_READ, BigCRumiaDollScript
	bg_event  3,  6, BGEVENT_READ, BigCRumiaDollScript

	def_object_events
	object_event  9,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BigDollClerkText, -1
	object_event  1,  3, SPRITE_BIG_CRAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCRanDollScript, -1
	object_event  2,  3, SPRITE_BIG_CRAN, SPRITEMOVEDATA_STANDING_DOWN_FLIP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCRanDollScript, -1
	object_event  1,  4, SPRITE_BIG_CRAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCRanDollScript, -1
	object_event  2,  4, SPRITE_BIG_CRAN, SPRITEMOVEDATA_STANDING_UP_FLIP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCRanDollScript, -1
	object_event  4,  4, SPRITE_BIG_CLYRICA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCLyricaDollScript, -1
	object_event  5,  4, SPRITE_BIG_CLYRICA, SPRITEMOVEDATA_STANDING_DOWN_FLIP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCLyricaDollScript, -1
	object_event  4,  5, SPRITE_BIG_CLYRICA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCLyricaDollScript, -1
	object_event  5,  5, SPRITE_BIG_CLYRICA, SPRITEMOVEDATA_STANDING_UP_FLIP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigCLyricaDollScript, -1

BigDollClerkNoMoneyScript:
	jumpopenedtext BigDollClerkNoMoneyText

BigCLyricaDollScript:
	checkevent EVENT_DECO_BIG_CLYRICA_DOLL
	iftrue_jumptext BigCLyricaDollText
	opentext
	writetext BigDollClerkSellCLyricaText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney $0, 300000
	ifequal $2, BigDollClerkNoMoneyScript
	takemoney $0, 300000
	setevent EVENT_DECO_BIG_CLYRICA_DOLL
	writetext BoughtBigCLyricaDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigCLyricaDollSentText

BigCRanDollScript:
	checkevent EVENT_DECO_BIG_CRAN_DOLL
	iftrue_jumptext BigCRanDollText
	opentext
	writetext BigDollClerkSellCRanText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney $0, 200000
	ifequal $2, BigDollClerkNoMoneyScript
	takemoney $0, 200000
	setevent EVENT_DECO_BIG_CRAN_DOLL
	writetext BoughtBigCRanDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigCRanDollSentText

BigCRumiaDollScript:
	checkevent EVENT_DECO_BIG_CRUMIA_DOLL
	iftrue_jumptext BigCRumiaDollText
	opentext
	writetext BigDollClerkSellCRumiaText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney $0, 250000
	ifequal $2, BigDollClerkNoMoneyScript
	takemoney $0, 250000
	setevent EVENT_DECO_BIG_CRUMIA_DOLL
	writetext BoughtBigCRumiaDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigCRumiaDollSentText

BigDollClerkText:
	text "Aren't our jumbo"
	line "dolls impressive?"

	para "They're so big,"
	line "we can barely fit"
	cont "them in the room."
	done

BigDollClerkNoSaleText:
	text "Clerk: Well, if"
	line "you say so."
	done

BigDollClerkNoMoneyText:
	text "Clerk: You can't"
	line "afford it!"
	done

BigDollClerkSellCLyricaText:
	text "Clerk: You like"
	line "the CLyrica doll?"

	para "It'll cost you"
	line "¥300,000."
	done

BigDollClerkSellCRanText:
	text "Clerk: You like"
	line "the CRan doll?"

	para "It'll cost you"
	line "¥200,000."
	done

BigDollClerkSellCRumiaText:
	text "Clerk: You like"
	line "the CRumia doll?"

	para "It'll cost you"
	line "¥250,000."
	done

BoughtBigCLyricaDollText:
	text "<PLAYER> bought"
	line "Big CLyrica Doll."
	done

BigCLyricaDollSentText:
	text "Big CLyrica Doll"
	line "was sent home."
	done

BoughtBigCRanDollText:
	text "<PLAYER> bought"
	line "Big CRan Doll."
	done

BigCRanDollSentText:
	text "Big CRan Doll"
	line "was sent home."
	done

BoughtBigCRumiaDollText:
	text "<PLAYER> bought"
	line "Big CRumia Doll."
	done

BigCRumiaDollSentText:
	text "Big CRumia Doll"
	line "was sent home."
	done

BigCLyricaDollText:
	text "It's a jumbo-size"
	line "CLyrica Doll!"
	done

BigCRanDollText:
	text "It's a jumbo-size"
	line "CRan Doll!"
	done

BigCRumiaDollText:
	text "It's a jumbo-size"
	line "CRumia Doll!"
	done

CeladonHomeDecorStore4FDirectoryText:
	text "A Stuffed"
	line "Companion!"

	para "4F: Jumbo Dolls"
	done
