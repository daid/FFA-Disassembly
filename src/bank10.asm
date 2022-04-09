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
    REPT 8 * 8
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
    dw $47FF, $26C4, $1521, $0000
    dw $47FF, $11D9, $10CE, $0000
    dw $11D9, $26C4, $1521, $0000
    dw $47FF, $12EC, $15A6, $0000
    dw $47FF, $7CC3, $2C00, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000

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

drawMetaTileAttrs:
    ld   a, $01
    ldh  [rVBK], a

    ; Draw the background attributes
    inc  HL
    inc  HL
    inc  HL
    push HL
    call getBackgroundDrawAddress
    pop  DE

:   ldh  a, [rSTAT]
    and  $02
    jr   nz, :-
    
    ld   a, [DE]
    ld   [HL+], A
    inc  DE
    ld   a, [DE]
    ld   [HL+], A
    inc  DE

    ld   A, L
    add  A, $20 - 2
    ld   L, A
    jr   nc, :+
    inc  H
:

:   ldh  a, [rSTAT]
    and  $02
    jr   nz, :-
    
    ld   a, [DE]
    ld   [HL+], A
    inc  DE
    ld   a, [DE]
    ld   [HL+], A

    xor  a
    ldh  [rVBK], a
    ret