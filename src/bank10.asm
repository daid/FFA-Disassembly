INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank10", ROMX, BANK[$10]

; Load a CGB palette with index B
loadCGBPalette:
    ld  a, b
    and a, $7F
    add a, a
    ld  l, a
    ld  h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld  de, cgbPaletteTable
    add hl, de
    bit 7, b
    jp  nz, .loadObjPal

.loadBGPal:
    ld  a, $80
    ldh [rBCPS], a
    ld  c, LOW(rBCPD)
    REPT 8 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      ldh [c], a
    ENDR
    ret

.loadObjPal:
    ld  a, $80
    ldh [rOCPS], a
    ld  c, LOW(rOCPD)
    REPT 8 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      ldh [c], a
    ENDR
    ret
    
cgbPaletteTable:
    ; $00 Overworld background palette
    dw $47FF, $51F3, $2867, $0000
    dw $47FF, $26C4, $1521, $0000
    dw $47FF, $11D9, $10CE, $0000
    dw $47FF, $1419, $100A, $0000
    dw $47FF, $12EC, $15A6, $0000
    dw $47FF, $7CC3, $2C00, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000

    ; $01 Main object palette
    dw $7FFF, $46FF, $05FF, $0000
    dw $7FFF, $46FF, $22A2, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000
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