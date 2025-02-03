SafariZoneHubRestHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_HUB, 9
	warp_event  3,  7, SAFARI_ZONE_HUB, 9

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, TohomonJournalKogaScript
	bg_event  5,  1, BGEVENT_READ, TohomonJournalKogaScript
	bg_event  6,  1, BGEVENT_READ, TohomonJournalKogaScript
	bg_event  7,  1, BGEVENT_READ, TohomonJournalKogaScript

	def_object_events

TohomonJournalKogaScript:
	setflag ENGINE_READ_KOGA_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Elite Four Koga!"

	para "Koga is said to"
	line "have a thorough"

	para "knowledge of"
	line "medicine."

	para "He even concocts"
	line "medicine to nurse"

	para "his #mon to"
	line "health."
	done
