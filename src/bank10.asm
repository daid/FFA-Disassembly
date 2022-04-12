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
    ld  a, b
    ldh [hCurBGPal], a
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
    ld  a, b
    and $7F
    ldh [hCurObjPal], a
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
    
; de = fade mask
cgbPalFadeToBlank:
    ldh a, [hCurBGPal]
    add a, a
    ld  l, a
    ld  h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld  bc, cgbPaletteTable
    add hl, bc
    
    ld  a, $80
    ldh [rBCPS], a
    ld  c, LOW(rBCPD)
    REPT 4 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      and a, e
      ldh [c], a

:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      and a, d
      ldh [c], a
    ENDR

    ldh a, [hCurObjPal]
    add a, a
    ld  l, a
    ld  h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld  bc, cgbPaletteTable
    add hl, bc
    
    ld  a, $80
    ldh [rOCPS], a
    ld  c, LOW(rOCPD)
    REPT 4 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      and a, e
      ldh [c], a

:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      and a, d
      ldh [c], a
    ENDR

    ret

; de = fade mask
cgbPalFadeToWhite:
    ldh a, [hCurBGPal]
    add a, a
    ld  l, a
    ld  h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld  bc, cgbPaletteTable
    add hl, bc
    
    ld  a, $80
    ldh [rBCPS], a
    ld  c, LOW(rBCPD)
    REPT 4 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      or  a, e
      ldh [c], a

:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      or  a, d
      ldh [c], a
    ENDR

    ldh a, [hCurObjPal]
    add a, a
    ld  l, a
    ld  h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld  bc, cgbPaletteTable
    add hl, bc
    
    ld  a, $80
    ldh [rOCPS], a
    ld  c, LOW(rOCPD)
    REPT 4 * 8
:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      or  a, e
      ldh [c], a

:     ld  a, [rSTAT]
      and $02
      jr  nz, :-
      ld  a, [hl+]
      or  a, d
      ldh [c], a
    ENDR

    ret

include "data/cgbPalettes.asm"    


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