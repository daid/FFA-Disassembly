;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank05", ROMX[$4000], BANK[$05]

INCLUDE "data/map/00_rooms.asm"

INCLUDE "data/map/09_rooms.asm"
