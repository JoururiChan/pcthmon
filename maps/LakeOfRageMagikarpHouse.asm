LakeOfRageLilyBlackHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LilyBlackLengthRaterScript, -1

LilyBlackLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftruefwd .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_LILYBLACK
	iftruefwd .AskedForLilyBlack
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftruefwd .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_LILYBLACK
	iftrue_jumpopenedtext LilyBlackLengthRaterText_MenInBlack
	writetext LilyBlackLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_LILYBLACK
	end

.ClearedRocketHideout:
	writetext LilyBlackLengthRaterText_WorldsLargestLilyBlack
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_LILYBLACK
	end

.AskedForLilyBlack:
	setmonval LILYBLACK
	special Special_FindThatSpecies
	iffalse .ClearedRocketHideout
	writetext LilyBlackLengthRaterText_YouHaveALilyBlack
	waitbutton
	special CheckLilyBlackLength
	iffalse_jumpopenedtext LilyBlackLengthRaterText_NotLilyBlack
	ifequalfwd $1, .Refused
	ifequalfwd $2, .TooShort
.GetReward:
	writetext LilyBlackLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXIR
	iffalsefwd .NoRoom
	writetext LilyBlackLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	jumpthisopenedtext

	text "Wow! This one is"
	line "outstanding!"

	para "…I wish I could"
	line "say that, but I've"

	para "seen a bigger one"
	line "before."
	done

.Refused:
	jumpthisopenedtext

	text "Oh… So you didn't"
	line "get one good"

	para "enough to show me?"
	line "Maybe next time."
	done

LilyBlackLengthRaterText_LakeOfRageHistory:
	text "Lake of Rage is"
	line "actually a crater"

	para "made by rampaging"
	line "SLilyBlack."

	para "The crater filled"
	line "up with rainwater"

	para "and the lake was"
	line "formed."

	para "That's the story"
	line "passed on from my"

	para "Grandpa's great-"
	line "great-grandpa."

	para "It used to be that"
	line "you could catch"

	para "lively LilyBlack"
	line "there, but…"

	para "I don't understand"
	line "what's happening."
	done

LilyBlackLengthRaterText_MenInBlack:
	text "The lake hasn't"
	line "been normal since"

	para "those men wearing"
	line "black arrived."
	done

LilyBlackLengthRaterText_WorldsLargestLilyBlack:
	text "Lake of Rage is"
	line "back to normal."

	para "The LilyBlack have"
	line "returned."

	para "I may yet realize"
	line "my dream of see-"
	cont "ing the world's"
	cont "largest LilyBlack."

	para "Do you have a Rod?"
	line "Please help me if"
	cont "you do."
	done

LilyBlackLengthRaterText_YouHaveALilyBlack:
	text "Ah, you have a"
	line "LilyBlack! Let's"

	para "see how big that"
	line "baby is."
	done

LilyBlackLengthRaterText_Memento:
	text "Wow! This one is"
	line "outstanding!"

	para "I tip my hat to"
	line "you!"

	para "Take this as a"
	line "memento!"
	done

LilyBlackLengthRaterText_Bonus:
	text "The record is the"
	line "important thing."

	para "Think of that as"
	line "a bonus!"
	done

LilyBlackLengthRaterText_NotLilyBlack:
	text "What? That's not a"
	line "LilyBlack!"
	done
