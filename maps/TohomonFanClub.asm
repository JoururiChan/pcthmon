TohomonFanClub_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, TohomonFanClubListenSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, TohomonFanClubBraggingSignText
	bg_event  0,  1, BGEVENT_READ, TohomonJournalGreenScript

	def_object_events
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CMEIRA, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, CMeiraDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  5,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TohomonFanClubChairmanScript, -1
	object_event  6,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TohomonFanClubReceptionistText, -1
	object_event  3,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TohomonFanClubCMeiraGuyScript, -1
	object_event  7,  2, SPRITE_TOHOFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TohomonFanClubTeacherText, -1
	tohomon_event  7,  3, ODDISH, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_GREEN, FanClubEKotohimeText, -1

	object_const_def
	const TOHOMONFANCLUB_CMEIRA_DOLL

TohomonFanClubChairmanScript:
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue_jumptextfaceplayer TohomonFanClubChairmanMoreTalesToTellText
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftruefwd .HeardSpeech
	writetext TohomonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse_jumpopenedtext TohomonFanClubChairmanHowDisappointingText
	writetext TohomonFanClubChairmanRapidashText
	promptbutton
.HeardSpeech:
	writetext TohomonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse_endtext
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	jumpopenedtext TohomonFanClubChairmanItsARareCandyText

TohomonFanClubCMeiraGuyScript:
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue_jumptextfaceplayer TohomonFanClubCMeiraGuyGoingToGetARealCMeiraText
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer TohomonFanClubCMeiraGuyCMeiraIsSoAdorableText
	faceplayer
	opentext
	writetext TohomonFanClubCMeiraGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftruefwd .FoundCMeiraDoll
	waitendtext
.FoundCMeiraDoll:
	promptbutton
	writetext TohomonFanClubCMeiraGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	disappear TOHOMONFANCLUB_CMEIRA_DOLL
	verbosegivekeyitem LOST_ITEM
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	endtext

TohomonJournalGreenScript:
	setflag ENGINE_READ_GREEN_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "<PK><MN> Trainer Leaf!"

	para "In addition to"
	line "being a powerful"
	cont "trainer, Leaf is"

	para "said to be fascin-"
	line "ated by legendary"
	cont "#mon."
	done

CMeiraDollScript:
	jumpthistext

	text "It's a CMeira!"
	line "Huh?"

	para "Oh, right. It's a"
	line "CMeira #"
	cont "Doll."
	done

TohomonFanClubChairmanDidYouVisitToHearAboutMyMonText:
	text "I'm the Chairman"
	line "of the #mon Fan"
	cont "Club."

	para "I've raised over"
	line "150 #mon."

	para "I'm very fussy"
	line "when it comes to"
	cont "#mon."

	para "Did you visit just"
	line "to hear about my"
	cont "#mon?"
	done

TohomonFanClubChairmanRapidashText:
	text "Good!"
	line "Then listen up!"

	para "So… my favorite"
	line "Rapidash…"

	para "It… cute… lovely…"
	line "smart… unbearably…"
	cont "plus… amazing… oh…"
	cont "you think so?…"
	cont "Too much… wild…"
	cont "beautiful… kindly…"
	cont "love it!"

	para "Hug it… when…"
	line "sleeping… warm and"
	cont "cuddly… Oh, and…"
	cont "spectacular…"
	cont "ravishing… simply"
	cont "divine…"
	cont "Oops! Look at the"
	cont "time! I've kept"
	cont "you too long!"
	done

TohomonFanClubChairmanIWantYouToHaveThisText:
	text "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done

TohomonFanClubChairmanItsARareCandyText:
	text "It's a Rare Candy"
	line "that makes #mon"
	cont "stronger."

	para "I prefer making my"
	line "#mon stronger"

	para "by battling, so"
	line "you can have it."
	done

TohomonFanClubChairmanMoreTalesToTellText:
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my #-"
	cont "mon again?"

	para "No? Oh… I had more"
	line "tales to tell…"
	done

TohomonFanClubChairmanHowDisappointingText:
	text "How disappointing…"

	para "Come back if you"
	line "want to listen."
	done

TohomonFanClubReceptionistText:
	text "Our Chairman is"
	line "very vocal when it"
	cont "comes to #mon…"
	done

TohomonFanClubCMeiraGuyCMeiraIsSoAdorableText:
	text "I love the way"
	line "CMeira waggles"

	para "its finger when"
	line "it's trying to use"

	para "Metronome."
	line "It's so adorable!"
	done

TohomonFanClubCMeiraGuyMakingDoWithADollIFoundText:
	text "I love CMeira,"
	line "but I could never"

	para "catch one. So I'm"
	line "making do with a"

	para "# Doll that I"
	line "found."
	done

TohomonFanClubCMeiraGuyTakeThisDollBackToGirlText:
	text "Oh, I see now. The"
	line "girl who lost this"

	para "# Doll is sad…"

	para "OK. Could you take"
	line "this # Doll"

	para "back to that poor"
	line "little girl?"

	para "I'll befriend a"
	line "real CMeira on"

	para "my own one day."
	line "No worries!"
	done

TohomonFanClubCMeiraGuyGoingToGetARealCMeiraText:
	text "You watch. I'm"
	line "going to get a"

	para "real CMeira as"
	line "my friend."
	done

TohomonFanClubTeacherText:
	text "Look at my darling"
	line "EKotohime!"

	para "The leaves on its"
	line "head are so cute!"
	done

FanClubEKotohimeText:
	text "EKotohime: Diish!"
	done

TohomonFanClubListenSignText:
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done

TohomonFanClubBraggingSignText:
	text "If someone brags,"
	line "brag right back!"
	done
