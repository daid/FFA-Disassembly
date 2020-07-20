SCRIPT_POINTER: MACRO
    dw ((\1 - $4000) + ((BANK(\1) - $0D) * $4000))
ENDM
bad_halt: MACRO
    db $76
ENDM
ld_long_load: MACRO
    db $FA
    dw \1
ENDM
ld_long_store: MACRO
    db $EA
    dw \1
ENDM
