;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank08", ROMX[$4000], BANK[$08]

INCLUDE "data/map/headers.asm"

INCLUDE "data/metatiles.asm"

INCLUDE "data/xptable.asm"

INCLUDE "data/scriptPointers.asm"
    db   $69, $2a, $18, $68, $ea, $17, $2a, $a3        ;; 08:5999 ????????
    db   $4b, $a6, $0f, $4b, $66, $19, $4b, $26        ;; 08:59a1 ????????
    db   $0f, $4a, $e6, $19, $4a, $a6, $0f, $6b        ;; 08:59a9 ????????
    db   $63, $4f, $1c, $25, $68, $46, $6c, $52        ;; 08:59b1 ????????
    db   $1a, $29, $e8, $59, $ea, $52, $1a, $86        ;; 08:59b9 ????????
    db   $92, $15, $b3, $00, $14, $f6, $00, $19        ;; 08:59c1 ????????
    db   $a1, $00, $19, $e5, $00, $13, $a8, $00        ;; 08:59c9 ????????
    db   $13, $e4, $06, $15, $64, $05, $19, $28        ;; 08:59d1 ????????
    db   $04, $15, $30, $04, $2b, $ec, $4d, $75        ;; 08:59d9 ????????
    db   $1e, $4c, $75, $14, $2c, $b3, $4d, $34        ;; 08:59e1 ????????
    db   $0e, $6c, $b4, $4c, $0d, $2c, $b0, $4d        ;; 08:59e9 ????????
    db   $31, $0e, $6c, $b1, $4c, $0d, $2c, $ad        ;; 08:59f1 ????????
    db   $4d, $2e, $0e, $6c, $ae, $4c, $0d             ;; 08:59f9 ???????
;@gfximg name=player width=2 height=40
    INCBIN "player.bin"                                ;; 08:5a00
;@gfximg name=chest width=2 height=3
    INCBIN "chest.bin"                                 ;; 08:5f00
;@gfximg name=hand_spark width=2 height=5
    INCBIN "hand_spark.bin"                            ;; 08:5f60
;@gfximg name=chocobo width=2 height=24
    INCBIN "chocobo.bin"                               ;; 08:6000
;@gfximg name=minecart width=2 height=6
    INCBIN "minecart.bin"                              ;; 08:6300
;@gfximg name=cloud width=2 height=2
    INCBIN "cloud.bin"                                 ;; 08:63c0
;@gfximg name=moogle width=2 height=12
    INCBIN "moogle.bin"                                ;; 08:6400
;@gfximg name=chocobo2 width=2 height=12
    INCBIN "chocobo2.bin"                              ;; 08:6580
;@gfximg name=statusbar width=16 height=3
    INCBIN "statusbar.bin"                             ;; 08:6700
;@gfximg name=font width=16 height=6
    INCBIN "font.bin"                                  ;; 08:6a00
;@gfximg name=attacks1 width=2 height=24
    INCBIN "attacks1.bin"                              ;; 08:7000
;@gfximg name=attacks2 width=20 height=1
    INCBIN "attacks2.bin"                              ;; 08:7300
;@gfximg name=attacks3 width=2 height=40
    INCBIN "attacks3.bin"                              ;; 08:7440
;@gfximg name=attacks4 width=1 height=1
    INCBIN "attacks4.bin"                              ;; 08:7940
;@gfximg name=attacks5 width=2 height=39
    INCBIN "attacks5.bin"                              ;; 08:7950
