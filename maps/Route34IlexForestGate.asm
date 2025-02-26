Route34IlexForestGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .IsForestRestless

	def_warp_events
	warp_event  4,  0, ROUTE_34, 1
	warp_event  5,  0, ROUTE_34, 2
	warp_event  4,  7, ILEX_FOREST, 1
	warp_event  5,  7, ILEX_FOREST, 1

	def_coord_events
	coord_event  4,  7, 0, Route34IlexForestGateIchirinEvent

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateTeacherScript, EVENT_ROUTE_34_ILEX_FOREST_GATE_TEACHER_BEHIND_COUNTER
	object_event  5,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateTeacherScript, EVENT_ROUTE_34_ILEX_FOREST_GATE_TEACHER_IN_WALKWAY
	tohomon_event  9,  4, CIKU, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_BLUE, Route34IlexForestGateCIkuText, EVENT_ROUTE_34_ILEX_FOREST_GATE_TEACHER_BEHIND_COUNTER
	object_event  3,  4, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route34IlexForestGateLassText, EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS

	object_const_def
	const ROUTE34ILEXFORESTGATE_TEACHER1
	const ROUTE34ILEXFORESTGATE_TEACHER2

.IsForestRestless:
	checkevent EVENT_FOREST_IS_RESTLESS
	iffalsefwd .Normal
	disappear ROUTE34ILEXFORESTGATE_TEACHER1
	appear ROUTE34ILEXFORESTGATE_TEACHER2
	endcallback

.Normal:
	disappear ROUTE34ILEXFORESTGATE_TEACHER2
	appear ROUTE34ILEXFORESTGATE_TEACHER1
	endcallback

Route34IlexForestGateIchirinEvent:
	checkevent EVENT_FOREST_IS_RESTLESS
	iffalsefwd .skip
	showemote EMOTE_SHOCK, ROUTE34ILEXFORESTGATE_TEACHER2, 20
	turnobject ROUTE34ILEXFORESTGATE_TEACHER2, LEFT
	turnobject PLAYER, RIGHT
	follow PLAYER, ROUTE34ILEXFORESTGATE_TEACHER2
	applymovement PLAYER, Route34IlexForestGateTeacherBlocksPlayerMovement
	stopfollow
	turnobject PLAYER, DOWN
	showtext Route34IlexForestGateTeacher_ForestIsRestless
	applymovement ROUTE34ILEXFORESTGATE_TEACHER2, Route34IlexForestGateTeacherReturnsMovement
.skip:
	end

Route34IlexForestGateTeacherScript:
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue_jumptextfaceplayer Route34IlexForestGateTeacher_ForestIsRestless
	checkevent EVENT_GOT_TM54_BLADE_FLASH
	iftrue_jumptextfaceplayer Route34IlexForestGateTeacher_GotSweetScent
	faceplayer
	opentext
	writetext Route34IlexForestGateTeacherText
	promptbutton
	verbosegivetmhm TM_BLADE_FLASH
	setevent EVENT_GOT_TM54_BLADE_FLASH
	jumpthisopenedtext

Route34IlexForestGateTeacher_GotSweetScent:
	text "It's False Swipe."

	para "It won't knock"
	line "out wild #mon,"

	para "so they'll be"
	line "easier to catch."
	done

Route34IlexForestGateTeacherBlocksPlayerMovement:
	step_up
	step_up
	step_end

Route34IlexForestGateTeacherReturnsMovement:
	step_down
	step_right
	step_end

Route34IlexForestGateTeacherText:
	text "Oh, hello. You're"
	line "making a #dex?"

	para "It must be hard to"
	line "catch all those"
	cont "#mon."

	para "Here, take this"
	line "TM."
	done

Route34IlexForestGateTeacher_ForestIsRestless:
	text "Something's wrong"
	line "in Ilex Forest…"

	para "You should stay"
	line "away right now."
	done

Route34IlexForestGateCIkuText:
	text "CIku: Cross!"
	done

Route34IlexForestGateLassText:
	text "Did you see the"
	line "shrine honoring"
	cont "the protector?"

	para "It watches over"
	line "the Forest from"
	cont "across time."

	para "I think that it"
	line "must be a Grass-"
	cont "type #mon."
	done
