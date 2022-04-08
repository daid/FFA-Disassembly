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

gfxBlankTile:
    dw   `00000000                                     ;; 08:5a00 $00 $00
    dw   `00000000                                     ;; 08:5a02 $00 $00
    dw   `00000000                                     ;; 08:5a04 $00 $00
    dw   `00000000                                     ;; 08:5a06 $00 $00
    dw   `00000000                                     ;; 08:5a08 $00 $00
    dw   `00000000                                     ;; 08:5a0a $00 $00
    dw   `00000000                                     ;; 08:5a0c $00 $00
    dw   `00000000                                     ;; 08:5a0e $00 $00

    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a10 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a18 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a20 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a28 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a30 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:5a38 ????????

;@gfximg name=player width=2 height=38
data_08_5a40:
    INCBIN "player.bin"                                ;; 08:5a40

;@gfximg name=chest width=2 height=3
gfxChest:
    INCBIN "chest.bin"                                 ;; 08:5f00

;@gfximg name=hand_spark width=2 height=5
gfxHand:
    INCBIN "hand_spark.bin"                            ;; 08:5f60

;@gfximg name=chocobo width=2 height=24
gfxChocobo:
    INCBIN "chocobo.bin"                               ;; 08:6000

;@gfximg name=minecart width=2 height=6
gfxMinecart:
    INCBIN "minecart.bin"                              ;; 08:6300
;@gfximg name=cloud width=2 height=2
    INCBIN "cloud.bin"                                 ;; 08:63c0

;@gfximg name=moogle width=2 height=12
gfxMoogle:
    INCBIN "moogle.bin"                                ;; 08:6400
;@gfximg name=chocobo2 width=2 height=12
    INCBIN "chocobo2.bin"                              ;; 08:6580
;@gfximg name=statusbar width=16 height=3
    INCBIN "statusbar.bin"                             ;; 08:6700
;@gfximg name=font width=16 height=6
    INCBIN "font.bin"                                  ;; 08:6a00

;@gfximg name=attack/sword width=2 height=6
data_08_7000:
    INCBIN "attack/sword.bin"                          ;; 08:7000

;@gfximg name=attack/axe width=2 height=6
data_08_70c0:
    INCBIN "attack/axe.bin"                            ;; 08:70c0

;@gfximg name=attack/morning_star width=2 height=6
data_08_7180:
    INCBIN "attack/morning_star.bin"                   ;; 08:7180

;@gfximg name=attack/sickle width=2 height=6
data_08_7240:
    INCBIN "attack/sickle.bin"                         ;; 08:7240

;@gfximg name=attacks1 width=6 height=1
data_08_7300:
    INCBIN "attacks1.bin"                              ;; 08:7300

;@gfximg name=attacks2 width=14 height=1
data_08_7360:
    INCBIN "attacks2.bin"                              ;; 08:7360

;@gfximg name=attack/mattok width=2 height=6
data_08_7440:
    INCBIN "attack/mattok.bin"                         ;; 08:7440

;@gfximg name=attacks3 width=2 height=4
data_08_7500:
    INCBIN "attacks3.bin"                              ;; 08:7500

data_08_7580:
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 08:7580 ????????
    db   $06, $07, $05, $06, $0b, $0c, $0b, $0c        ;; 08:7588 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 08:7590 ????????
    db   $60, $e0, $a0, $60, $d0, $30, $d0, $30        ;; 08:7598 ????????
    db   $0b, $0c, $05, $06, $06, $07, $01, $01        ;; 08:75a0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:75a8 ????????
    db   $d0, $30, $a0, $60, $60, $e0, $80, $80        ;; 08:75b0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 08:75b8 ????????
    db   $00, $00, $03, $03, $0c, $0f, $11, $1e        ;; 08:75c0 ????????
    db   $27, $38, $2f, $30, $4f, $70, $5f, $60        ;; 08:75c8 ????????
    db   $00, $00, $c0, $c0, $30, $f0, $88, $78        ;; 08:75d0 ????????
    db   $e4, $1c, $f4, $0c, $f2, $0e, $fa, $06        ;; 08:75d8 ????????
    db   $5f, $60, $4f, $70, $2f, $30, $27, $38        ;; 08:75e0 ????????
    db   $11, $1e, $0c, $0f, $03, $03, $00, $00        ;; 08:75e8 ????????
    db   $fa, $06, $f2, $0e, $f4, $0c, $e4, $1c        ;; 08:75f0 ????????
    db   $88, $78, $30, $f0, $c0, $c0, $00, $00        ;; 08:75f8 ????????

;@gfximg name=effect/snowman width=2 height=2
gfxSnowman:
    INCBIN "effect/snowman.bin"                        ;; 08:7600

;@gfximg name=attack/ice width=2 height=10
data_08_7640:
    INCBIN "attack/ice.bin"                            ;; 08:7640

;@gfximg name=attack/fire width=2 height=6
data_08_7780:
    INCBIN "attack/fire.bin"                           ;; 08:7780

;@gfximg name=attacks4 width=2 height=8
data_08_7840:
    INCBIN "attacks4.bin"                              ;; 08:7840

;@gfximg name=attacks5 width=1 height=1
data_08_7940:
    INCBIN "attacks5.bin"                              ;; 08:7940

;@gfximg name=attacks6 width=2 height=2
data_08_7950:
    INCBIN "attacks6.bin"                              ;; 08:7950

;@gfximg name=attacks7 width=2 height=2
data_08_7990:
    INCBIN "attacks7.bin"                              ;; 08:7990

;@gfximg name=attacks8 width=2 height=31
data_08_79d0:
    INCBIN "attacks8.bin"                              ;; 08:79d0

;@gfximg name=attacks9 width=2 height=5
data_08_7db0:
    INCBIN "attacks9.bin"                              ;; 08:7db0
