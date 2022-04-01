;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank0b", ROMX[$4000], BANK[$0b]

;@gfximg name=title_end width=16 height=12
tilesetGfxTitle:
    INCBIN "title_end.bin"                             ;; 0b:4000
;@gfximg name=trashbin width=2 height=8
    INCBIN "trashbin.bin"                              ;; 0b:4c00

;@gfximg name=boss/vampire width=2 height=12
bossGfxVampire:
    INCBIN "boss/vampire.bin"                          ;; 0b:4d00

;@gfximg name=boss/davias width=2 height=14
bossGfxDavias:
    INCBIN "boss/davias.bin"                           ;; 0b:4e80

;@gfximg name=boss/golem width=2 height=16
bossGfxGolem:
    INCBIN "boss/golem.bin"                            ;; 0b:5040

;@gfximg name=boss/megapede width=2 height=16
bossGfxMegapepe:
    INCBIN "boss/megapede.bin"                         ;; 0b:5240
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5440 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5448 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5450 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5458 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5460 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5468 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5470 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5478 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5480 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5488 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5490 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5498 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54a0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54a8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54b0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54b8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54c0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54c8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54d0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54d8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54e0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54e8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54f0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:54f8 ????????

;@gfximg name=boss/chimera width=2 height=24
bossGfxChimera:
    INCBIN "boss/chimera.bin"                          ;; 0b:5500

;@gfximg name=boss/kary width=2 height=22
bossGfxKary:
    INCBIN "boss/kary.bin"                             ;; 0b:5800

;@gfximg name=boss/cyclops width=2 height=27
bossGfxCyclops:
    INCBIN "boss/cyclops.bin"                          ;; 0b:5ac0
    db   $99, $99, $66, $66, $00, $00, $00, $00        ;; 0b:5e20 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:5e28 ????????

;@gfximg name=boss/iflyte width=2 height=22
bossGfxIflyte:
    INCBIN "boss/iflyte.bin"                           ;; 0b:5e30
    db   $e0, $f0, $80, $e0, $00, $80, $00, $38        ;; 0b:60f0 ????????
    db   $00, $c0, $00, $80, $00, $00, $00, $00        ;; 0b:60f8 ????????

;@gfximg name=boss/medusa width=2 height=24
bossGfxMedusa:
    INCBIN "boss/medusa.bin"                           ;; 0b:6100

;@gfximg name=boss/lich width=4 height=14
bossGfxLich:
    INCBIN "boss/lich.bin"                             ;; 0b:6400

;@gfximg name=boss/dragon width=4 height=14
bossGfxDragon:
    INCBIN "boss/dragon.bin"                           ;; 0b:6780

;@gfximg name=boss/dragon_zombie width=2 height=24
bossGfxDragonZombie:
    INCBIN "boss/dragon_zombie.bin"                    ;; 0b:6b00

;@gfximg name=boss/kraken width=2 height=26
bossGfxKraken:
    INCBIN "boss/kraken.bin"                           ;; 0b:6e00

;@gfximg name=boss/metak_crab width=2 height=14
bossGfxMetalCrab:
    INCBIN "boss/metak_crab.bin"                       ;; 0b:7140

data_0b_7300:
    db   $60, $60, $70, $50, $38, $28, $38, $28        ;; 0b:7300 ????????
    db   $2c, $34, $1d, $15, $1b, $37, $1f, $53        ;; 0b:7308 ????????
    db   $01, $01, $12, $13, $15, $17, $39, $2f        ;; 0b:7310 ????????
    db   $b9, $af, $78, $ef, $6c, $f7, $5c, $f7        ;; 0b:7318 ????????
    db   $cf, $cf, $b2, $be, $44, $7c, $89, $f9        ;; 0b:7320 ????????
    db   $89, $f9, $86, $ff, $08, $ff, $00, $ff        ;; 0b:7328 ????????
    db   $03, $03, $67, $65, $ce, $ca, $4e, $ca        ;; 0b:7330 ????????
    db   $5a, $d6, $5c, $d4, $5c, $d4, $ac, $f4        ;; 0b:7338 ????????
    db   $0f, $49, $0a, $cd, $49, $ce, $44, $e7        ;; 0b:7340 ????????
    db   $c3, $e3, $c7, $e7, $ec, $fb, $ff, $ff        ;; 0b:7348 ????????
    db   $16, $fb, $8b, $fd, $cb, $7c, $45, $fe        ;; 0b:7350 ????????
    db   $42, $ff, $f1, $ff, $bc, $ef, $be, $f3        ;; 0b:7358 ????????
    db   $03, $ff, $80, $ff, $c1, $7f, $c3, $7e        ;; 0b:7360 ????????
    db   $41, $ff, $8b, $ff, $3a, $f7, $7e, $cf        ;; 0b:7368 ????????
    db   $3c, $e4, $f4, $cc, $e8, $1a, $c8, $3a        ;; 0b:7370 ????????
    db   $30, $f2, $e2, $e7, $e2, $e7, $96, $ff        ;; 0b:7378 ????????
    db   $fc, $fb, $78, $f7, $7b, $f7, $3c, $7f        ;; 0b:7380 ????????
    db   $3c, $7b, $1f, $3d, $1f, $3f, $1f, $3f        ;; 0b:7388 ????????
    db   $ee, $fb, $76, $ff, $b4, $ff, $7d, $ff        ;; 0b:7390 ????????
    db   $3c, $ff, $ce, $ff, $c7, $3f, $f3, $cf        ;; 0b:7398 ????????
    db   $75, $df, $ef, $ff, $ac, $ff, $bb, $ff        ;; 0b:73a0 ????????
    db   $3c, $ff, $78, $ff, $cf, $fc, $bf, $c7        ;; 0b:73a8 ????????
    db   $de, $ef, $7c, $be, $3c, $ce, $9c, $ee        ;; 0b:73b0 ????????
    db   $58, $ed, $f8, $5d, $f9, $fd, $f1, $fb        ;; 0b:73b8 ????????
    db   $0f, $3c, $0d, $5f, $0f, $5f, $4f, $5f        ;; 0b:73c0 ????????
    db   $4f, $df, $47, $ef, $67, $ef, $27, $7f        ;; 0b:73c8 ????????
    db   $fd, $ff, $bf, $ff, $f7, $ef, $ef, $fd        ;; 0b:73d0 ????????
    db   $ff, $fa, $f7, $f8, $f7, $fa, $ff, $fa        ;; 0b:73d8 ????????
    db   $7f, $fe, $fb, $ff, $df, $ef, $ef, $7f        ;; 0b:73e0 ????????
    db   $ff, $bf, $df, $3f, $df, $bf, $ff, $bf        ;; 0b:73e8 ????????
    db   $f3, $7f, $76, $ff, $fe, $fe, $fc, $fe        ;; 0b:73f0 ????????
    db   $fc, $fe, $fc, $fe, $f6, $ff, $f6, $ff        ;; 0b:73f8 ????????
    db   $37, $7f, $3f, $7f, $1f, $3f, $1f, $3f        ;; 0b:7400 ????????
    db   $0f, $1f, $0d, $1f, $04, $0d, $04, $0d        ;; 0b:7408 ????????
    db   $fe, $ff, $fe, $ff, $ff, $ff, $ff, $ff        ;; 0b:7410 ????????
    db   $ff, $ff, $ef, $ff, $e7, $ff, $c6, $ef        ;; 0b:7418 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0b:7420 ????????
    db   $ff, $ff, $fd, $ff, $fd, $ff, $f8, $fd        ;; 0b:7428 ????????
    db   $f2, $ff, $fa, $ff, $f8, $fc, $dc, $fe        ;; 0b:7430 ????????
    db   $cc, $fe, $c4, $ee, $c4, $e6, $c4, $e6        ;; 0b:7438 ????????
    db   $05, $0f, $01, $0b, $01, $03, $01, $03        ;; 0b:7440 ????????
    db   $00, $01, $00, $01, $00, $00, $00, $00        ;; 0b:7448 ????????
    db   $ce, $ef, $8c, $dd, $88, $d9, $88, $d8        ;; 0b:7450 ????????
    db   $c0, $c8, $c0, $c4, $60, $e1, $10, $32        ;; 0b:7458 ????????
    db   $f0, $f9, $f0, $f9, $60, $f1, $61, $f3        ;; 0b:7460 ????????
    db   $41, $e3, $82, $c6, $00, $80, $00, $00        ;; 0b:7468 ????????
    db   $c0, $e4, $80, $c0, $80, $c0, $00, $80        ;; 0b:7470 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:7478 ????????
    db   $68, $68, $54, $7c, $d2, $fe, $a9, $ff        ;; 0b:7480 ????????
    db   $54, $7f, $6a, $7f, $94, $ff, $69, $7f        ;; 0b:7488 ????????
    db   $00, $00, $60, $60, $a0, $e0, $a0, $e0        ;; 0b:7490 ????????
    db   $a0, $e4, $94, $f6, $94, $f6, $16, $f6        ;; 0b:7498 ????????
    db   $11, $1f, $09, $0f, $08, $0f, $04, $07        ;; 0b:74a0 ????????
    db   $03, $03, $00, $00, $01, $03, $07, $1f        ;; 0b:74a8 ????????
    db   $16, $f7, $1f, $ff, $8f, $ff, $0f, $ff        ;; 0b:74b0 ????????
    db   $1e, $ff, $fe, $ff, $cc, $fe, $18, $f8        ;; 0b:74b8 ????????
    db   $00, $0f, $01, $13, $00, $01, $00, $00        ;; 0b:74c0 ????????
    db   $0f, $0f, $10, $1f, $e0, $ff, $8c, $ff        ;; 0b:74c8 ????????
    db   $10, $18, $88, $cc, $cc, $ee, $ec, $fe        ;; 0b:74d0 ????????
    db   $f6, $ff, $36, $ff, $1e, $ff, $5e, $ff        ;; 0b:74d8 ????????
    db   $77, $7f, $4c, $7f, $92, $ff, $a5, $ff        ;; 0b:74e0 ????????
    db   $aa, $fe, $ad, $ff, $57, $5f, $0c, $0c        ;; 0b:74e8 ????????
    db   $9c, $ff, $2c, $fe, $cc, $de, $08, $1a        ;; 0b:74f0 ????????
    db   $00, $19, $00, $08, $00, $08, $00, $04        ;; 0b:74f8 ????????

;@gfximg name=boss/mantis_ant width=2 height=24
bossGfxMantisAnt:
    INCBIN "boss/mantis_ant.bin"                       ;; 0b:7500
    db   $c0, $c0, $e0, $a0, $7a, $5a, $3f, $25        ;; 0b:7800 ????????
    db   $1f, $14, $0f, $08, $1f, $10, $3f, $23        ;; 0b:7808 ????????
    db   $00, $00, $f0, $f0, $d8, $b8, $dc, $b4        ;; 0b:7810 ????????
    db   $f2, $6e, $f6, $1e, $fd, $0b, $1b, $ef        ;; 0b:7818 ????????
    db   $3f, $26, $3f, $26, $30, $2f, $73, $4f        ;; 0b:7820 ????????
    db   $f5, $8d, $f5, $8d, $f9, $f9, $03, $02        ;; 0b:7828 ????????
    db   $0f, $f5, $25, $ff, $27, $ff, $c7, $fd        ;; 0b:7830 ????????
    db   $c5, $3f, $c7, $3f, $c7, $3d, $c5, $3f        ;; 0b:7838 ????????
    db   $03, $02, $0f, $0c, $1f, $10, $1e, $11        ;; 0b:7840 ????????
    db   $3e, $21, $3e, $21, $3e, $21, $7f, $58        ;; 0b:7848 ????????
    db   $8f, $7f, $8f, $79, $11, $ff, $1e, $fe        ;; 0b:7850 ????????
    db   $1e, $f2, $12, $fe, $0c, $fc, $1a, $fe        ;; 0b:7858 ????????
    db   $ff, $87, $7f, $40, $3f, $30, $3f, $2f        ;; 0b:7860 ????????
    db   $3f, $20, $1f, $1f, $0f, $08, $07, $07        ;; 0b:7868 ????????
    db   $f9, $e7, $e2, $1e, $0c, $fc, $f4, $fc        ;; 0b:7870 ????????
    db   $04, $fc, $f8, $f8, $10, $f0, $e0, $e0        ;; 0b:7878 ????????

;@gfximg name=boss/garuda width=2 height=44
bossGfxGaruda:
    INCBIN "boss/garuda.bin"                           ;; 0b:7880

;@gfximg name=boss/jackal width=2 height=16
bossGfxJackal:
    INCBIN "boss/jackal.bin"                           ;; 0b:7e00
