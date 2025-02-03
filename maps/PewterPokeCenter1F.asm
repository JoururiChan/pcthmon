PewterTohoCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, PEWTER_CITY, 4
	warp_event  6,  7, PEWTER_CITY, 4
	warp_event  0,  7, TOHOCENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, TohomonJournalBrockScript

	def_object_events
	pc_nurse_event  5, 1
	tohomon_event  2,  3, ELLEN, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_PINK, PewterEllenText, -1
	object_event  8,  2, SPRITE_TOHOFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_CHRIS, -1
	object_event 11,  5, SPRITE_TOHOFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterTohoCenter1FTeacherText, -1
	object_event  3,  3, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterTohoCenter1FChildText, -1

TohomonJournalBrockScript:
	setflag ENGINE_READ_BROCK_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Brock!"

	para "Brock rarely"
	line "laughs, but is"

	para "said to be unable"
	line "to stop if he"
	cont "starts."
	done

PewterEllenText:
	text "Ellen:"
	line "♪ Puu pupuu. ♪"
	done

PewterTohoCenter1FTeacherText:
	text "…Yeah, and the"
	line "Gym in Cinnabar's"

	para "gone. I was really"
	line "amazed."

	para "…Yes? I'm on the"
	line "phone. Go away!"
	done

PewterTohoCenter1FChildText:
	text "Most #mon get"
	line "drowsy if they"

	para "hear a Ellen"
	line "singing."

	para "There are several"
	line "moves that can be"

	para "used only while a"
	line "#mon is asleep."
	done
