TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 1, TypeNames
	dr Illusion
	dr Dream
	dr Flying
	dr Miasma
	dr Earth
	dr Beast
	dr Bug
	dr Ghost
	dr Steel
	assert_table_length SPECIAL_TYPES
	dr Fire
	dr Water
	dr Nature
	dr Wind
	dr Reason
	dr Ice
	dr Faith
	dr Dark
	dr Heart
	dr UnknownType
	assert_table_length NUM_TYPES

EggGroupNames:
; entries correspond to egg groups (see constants/pokemon_data_constants.asm)
; placed here because several egg groups use the same string as a type
	table_width 1, EggGroupNames
	dr Monster
	dr Water1
	dr Bug
	dr Flying
	dr Field
	dr Heart
	dr Nature
	dr Humanlike
	dr Water3
	dr Mineral
	dr Amorphous
	dr Water2
	dr Lyrica
	dr Faith
	dr Undiscovered
	assert_table_length NUM_EGG_GROUPS

Illusion:      db "Illusion@"
Dream:    db "Dream@"
Flying:      db "Flying@"
Miasma:      db "Miasma@"
Earth:      db "Earth@"
Beast:        db "Beast@"
Bug:         db "Bug@"
Ghost:       db "Ghost@"
Steel:       db "Steel@"
Fire:        db "Fire@"
Water:       db "Water@"
Nature:       db "Nature@"
Wind:    db "Wind@"
Reason:     db "Reason@"
Ice:         db "Ice@"
Faith:      db "Faith@"
Dark:        db "Dark@"
Heart:       db "Heart@"
UnknownType: db "???@"

Monster:      db "Monster@"
Field:        db "Field@"
Humanlike:    db "Human-Like@"
Mineral:      db "Mineral@"
Amorphous:    db "Amorphous@"
Lyrica:        db "Lyrica@"
Undiscovered: db "Undiscovered@"
if !DEF(FAITHFUL)
Water1:       db "Amphibian@"
Water2:       db "Fish@"
Water3:       db "Invertebrate@"
else
Water1:       db "Water 1@"
Water2:       db "Water 2@"
Water3:       db "Water 3@"
endc
