MahoganyRedSLilyBlackSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyRedSLilyBlackSpeechHouseBlackBeltText, -1
	object_event  6,  5, SPRITE_TOHOFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedSLilyBlackSpeechHouseTeacherScript, -1

MahoganyRedSLilyBlackSpeechHouseTeacherScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer MahoganyRedSLilyBlackSpeechHouseTeacherText_RocketsInRadioTower
	jumpthistextfaceplayer

	text "My favorite radio"
	line "program? I'd say"
	cont "#mon Music."
	done

MahoganyRedSLilyBlackSpeechHouseBlackBeltText:
	text "I heard that a red"
	line "SLilyBlack appeared"
	cont "at the lake."

	para "That's odd, since"
	line "even ordinary"

	para "SLilyBlack are rare"
	line "in that lake…"
	done

MahoganyRedSLilyBlackSpeechHouseTeacherText_RocketsInRadioTower:
	text "I've been hearing"
	line "laughter on the"

	para "radio…"
	line "It's creepy."
	done
