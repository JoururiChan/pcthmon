MACRO realign
    ds (1 << (\1) - (@ & (1 << (\1) - 1)) % (1 << (\1))
    align \1
ENDM