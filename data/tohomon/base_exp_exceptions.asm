MACRO base_exception
; mon, actual yield
	dp \1
	dw \2
ENDM

NewBaseExpExceptions:
	base_exception CTEI, 300
	base_exception TEI, 400
	base_exception TTEI, 400
	base_exception KOISHI, 608
	dw -1
