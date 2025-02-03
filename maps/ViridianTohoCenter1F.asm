ViridianTohoCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, VIRIDIAN_CITY, 5
	warp_event  6,  7, VIRIDIAN_CITY, 5
	warp_event  0,  7, TOHOCENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, TohomonJournalBlueScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianTohoCenter1FCooltrainermScript, -1
	object_event  8,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianTohoCenter1FCooltrainerfText, -1
	object_event  3,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianTohoCenter1FBugCatcherText, -1

TohomonJournalBlueScript:
	setflag ENGINE_READ_BLUE_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Blue!"

	para "Blue supposedly"
	line "visits his cher-"
	cont "ished #mon"

	para "every year in the"
	line "House of Souls."
	done

ViridianTohoCenter1FCooltrainermScript:
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue_jumptextfaceplayer .BlueText
	jumpthistextfaceplayer

	text "Where in the world"
	line "is Viridian's Gym"

	para "Leader? I wanted"
	line "to challenge him."
	done

.BlueText:
	text "There are strong"
	line "Gym Trainers at"
	cont "the Viridian Gym."

	para "Someday I'm going"
	line "to join them!"
	done

ViridianTohoCenter1FCooltrainerfText:
	text "I heard that the"
	line "Gym in Cinnabar is"
	cont "gone."

	para "I wonder what be-"
	line "came of Blaine,"
	cont "the Gym Leader."
	done

ViridianTohoCenter1FBugCatcherText:
	text "My dream is to be-"
	line "come a Gym Leader."
	done
