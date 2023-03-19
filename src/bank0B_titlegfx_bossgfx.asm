;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank0b", ROMX[$4000], BANK[$0b]

;@gfximg name=title_end width=16 height=12
tilesetGfxTitle:
    INCBIN "title_end.bin"                             ;; 0b:4000

;@gfximg name=trashbin width=2 height=8
trashbinGfx:
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
bossGfxMegapede:
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

;@gfximg name=boss/julius3 width=4 height=8
bossGfxJulius3:
    INCBIN "boss/julius3.bin"                          ;; 0b:7300

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

;@gfximg name=boss/garuda width=2 height=28
bossGfxGaruda:
    INCBIN "boss/garuda.bin"                           ;; 0b:7880
; @gfximg name=? width=4 height=4
    db   $00, $00, $00, $00, $00, $00, $c0, $c0        ;; 0b:7c00 ????????
    db   $f3, $b3, $7f, $4c, $76, $59, $20, $3f        ;; 0b:7c08 ????????
    db   $0c, $0c, $1e, $16, $3f, $35, $7d, $67        ;; 0b:7c10 ????????
    db   $fd, $a7, $d9, $bf, $81, $ff, $81, $ff        ;; 0b:7c18 ????????
    db   $00, $00, $c0, $c0, $70, $b0, $5c, $bc        ;; 0b:7c20 ????????
    db   $56, $ba, $17, $f9, $15, $fb, $11, $ff        ;; 0b:7c28 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:7c30 ????????
    db   $00, $00, $00, $00, $c0, $c0, $60, $a0        ;; 0b:7c38 ????????
    db   $20, $3f, $2c, $3f, $3e, $3f, $7f, $5d        ;; 0b:7c40 ????????
    db   $7f, $59, $7e, $4f, $3f, $23, $1c, $1c        ;; 0b:7c48 ????????
    db   $82, $ff, $43, $ff, $3d, $ff, $21, $ff        ;; 0b:7c50 ????????
    db   $21, $ff, $3e, $ff, $ff, $c4, $fb, $fb        ;; 0b:7c58 ????????
    db   $11, $ff, $12, $ff, $12, $ff, $22, $ff        ;; 0b:7c60 ????????
    db   $24, $ff, $db, $ff, $fe, $92, $6c, $6c        ;; 0b:7c68 ????????
    db   $70, $90, $9b, $7b, $27, $fd, $22, $fe        ;; 0b:7c70 ????????
    db   $46, $fe, $ae, $ba, $1f, $1d, $02, $02        ;; 0b:7c78 ????????
    db   $00, $00, $00, $00, $10, $10, $38, $28        ;; 0b:7c80 ????????
    db   $39, $29, $3f, $26, $3e, $29, $30, $3f        ;; 0b:7c88 ????????
    db   $02, $02, $07, $05, $0f, $09, $3f, $33        ;; 0b:7c90 ????????
    db   $fe, $d3, $6c, $df, $40, $ff, $40, $ff        ;; 0b:7c98 ????????
    db   $00, $00, $00, $00, $00, $00, $e0, $e0        ;; 0b:7ca0 ????????
    db   $b0, $d0, $ae, $de, $ab, $dd, $8b, $fc        ;; 0b:7ca8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:7cb0 ????????
    db   $12, $12, $3f, $2d, $3f, $2d, $f7, $ff        ;; 0b:7cb8 ????????
    db   $20, $3f, $2c, $3f, $3e, $33, $ff, $df        ;; 0b:7cc0 ????????
    db   $ff, $91, $fe, $8f, $7f, $43, $3c, $3c        ;; 0b:7cc8 ????????
    db   $41, $ff, $21, $ff, $1e, $ff, $10, $ff        ;; 0b:7cd0 ????????
    db   $21, $ff, $3e, $ff, $ff, $e2, $7d, $7d        ;; 0b:7cd8 ????????
    db   $0a, $fd, $88, $ff, $91, $ff, $91, $ff        ;; 0b:7ce0 ????????
    db   $36, $ff, $c9, $ff, $ff, $49, $b6, $b6        ;; 0b:7ce8 ????????
    db   $b1, $df, $cd, $bf, $1e, $f2, $1e, $f2        ;; 0b:7cf0 ????????
    db   $3c, $fc, $c0, $c0, $00, $00, $00, $00        ;; 0b:7cf8 ????????
; @gfximg name=? width=2 height=8
    db   $00, $00, $19, $19, $1f, $16, $0e, $0b        ;; 0b:7d00 ????????
    db   $0f, $09, $06, $07, $03, $03, $04, $07        ;; 0b:7d08 ????????
    db   $00, $00, $98, $98, $78, $e8, $70, $d0        ;; 0b:7d10 ????????
    db   $f0, $90, $60, $e0, $c0, $c0, $20, $e0        ;; 0b:7d18 ????????
    db   $0b, $0f, $14, $1f, $1b, $1c, $34, $3b        ;; 0b:7d20 ????????
    db   $23, $3f, $2c, $3f, $53, $7c, $64, $7b        ;; 0b:7d28 ????????
    db   $d0, $f0, $28, $f8, $d8, $38, $2c, $dc        ;; 0b:7d30 ????????
    db   $c4, $fc, $34, $fc, $ca, $3e, $26, $de        ;; 0b:7d38 ????????
    db   $43, $7f, $ec, $ff, $f0, $bf, $73, $5f        ;; 0b:7d40 ????????
    db   $6d, $7f, $53, $7e, $23, $3e, $21, $3f        ;; 0b:7d48 ????????
    db   $c2, $fe, $37, $ff, $0f, $fd, $ce, $fa        ;; 0b:7d50 ????????
    db   $b6, $fe, $ca, $7e, $c4, $7c, $84, $fc        ;; 0b:7d58 ????????
    db   $40, $7f, $58, $7f, $7e, $67, $7f, $4f        ;; 0b:7d60 ????????
    db   $3f, $2c, $1f, $1d, $07, $04, $03, $03        ;; 0b:7d68 ????????
    db   $02, $fe, $1a, $fe, $7e, $e6, $fe, $f2        ;; 0b:7d70 ????????
    db   $fc, $b4, $f8, $38, $e0, $a0, $c0, $c0        ;; 0b:7d78 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:7d80 ????????
    db   $00, $00, $19, $19, $1f, $16, $0e, $0b        ;; 0b:7d88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0b:7d90 ????????
    db   $00, $00, $98, $98, $78, $e8, $70, $d0        ;; 0b:7d98 ????????
    db   $0f, $09, $06, $07, $03, $03, $0c, $0f        ;; 0b:7da0 ????????
    db   $13, $1c, $23, $3f, $2f, $3c, $34, $3b        ;; 0b:7da8 ????????
    db   $f0, $90, $60, $e0, $c0, $c0, $30, $f0        ;; 0b:7db0 ????????
    db   $88, $78, $c4, $fc, $f4, $3c, $2c, $dc        ;; 0b:7db8 ????????
    db   $63, $7f, $cc, $ff, $f0, $bf, $73, $5f        ;; 0b:7dc0 ????????
    db   $6d, $7f, $53, $7e, $23, $3e, $21, $3f        ;; 0b:7dc8 ????????
    db   $c6, $fe, $33, $ff, $0f, $fd, $ce, $fa        ;; 0b:7dd0 ????????
    db   $b6, $fe, $ca, $7e, $c4, $7c, $84, $fc        ;; 0b:7dd8 ????????
    db   $58, $7f, $7e, $67, $7f, $7f, $3f, $24        ;; 0b:7de0 ????????
    db   $1f, $1d, $07, $04, $03, $03, $00, $00        ;; 0b:7de8 ????????
    db   $1a, $fe, $7e, $e6, $fe, $fe, $fc, $a4        ;; 0b:7df0 ????????
    db   $f8, $38, $e0, $a0, $c0, $c0, $00, $00        ;; 0b:7df8 ????????

;@gfximg name=boss/jackal width=2 height=16
bossGfxJackal:
    INCBIN "boss/jackal.bin"                           ;; 0b:7e00
