;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank0c", ROMX[$4000], BANK[$0c]

;@gfximg name=tileset/outdoor width=16 height=16
tilesetGfxOutdoor:
    INCBIN "tileset/outdoor.bin"                       ;; 0c:4000

;@gfximg name=tileset/town_airship_mountain width=16 height=16
tilesetGfxTown:
    INCBIN "tileset/town_airship_mountain.bin"         ;; 0c:5000

;@gfximg name=tileset/indoor width=16 height=16
tilesetGfxIndoor:
    INCBIN "tileset/indoor.bin"                        ;; 0c:6000

;@gfximg name=tileset/caves width=16 height=16
tilesetGfxCaves:
    INCBIN "tileset/caves.bin"                         ;; 0c:7000
