
ld_long_load: MACRO
    db $FA
    dw \1
ENDM
ld_long_store: MACRO
    db $EA
    dw \1
ENDM
bad_halt: MACRO
    db $76
ENDM
