INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank10", ROMX, BANK[$10]

setDoubleSpeed:
    ldh a, [rKEY1]
    and $80
    ret nz
    ld  a, $01
    ldh [rKEY1], a
    stop
    ret

loadBGPalette:
    ld  a, $80
    ldh [rBCPS], a
    ld  hl, backgroundPaletteTable
    ld  c, LOW(rBCPD)
    REPT 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      ldh [c], a
    ENDR
    ret

loadOBJPalette:
    ld  a, $80
    ldh [rOCPS], a
    ld  hl, objectPaletteTable
    ld  c, LOW(rOCPD)
    REPT 8 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      ldh [c], a
    ENDR
    ret
    
backgroundPaletteTable:
    dw $47FF, $51F3, $2867, $0000

objectPaletteTable:
    dw $7FFF, $46FF, $05FF, $0000
    dw $7FFF, $46FF, $22A2, $0000
    dw $7FFF, $46FF, $05FF, $0000
    dw $7FFF, $46FF, $22A2, $0000
    dw $7FFF, $46FF, $05FF, $0000
    dw $7FFF, $46FF, $22A2, $0000
    dw $7FFF, $46FF, $05FF, $0000
    dw $7FFF, $46FF, $22A2, $0000


SECTION "bank11", ROMX, BANK[$11]
INCLUDE "data/metatiles.asm"
