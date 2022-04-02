;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank0a", ROMX[$4000], BANK[$0a]

;@gfximg name=enemy/chibidevil width=2 height=4
gfxEnemyChibidevil:
    INCBIN "enemy/chibidevil.bin"                      ;; 0a:4000

;@gfximg name=enemy/myconid width=2 height=4
gfxEnemyMyconid:
    INCBIN "enemy/myconid.bin"                         ;; 0a:4080

;@gfximg name=enemy/grell width=2 height=4
gfxEnemyGrell:
    INCBIN "enemy/grell.bin"                           ;; 0a:4100

;@gfximg name=enemy/mudman width=2 height=4
gfxEnemyMudman:
    INCBIN "enemy/mudman.bin"                          ;; 0a:4180

;@gfximg name=enemy/death_flower width=2 height=4
gfxEnemyDeathFlower:
    INCBIN "enemy/death_flower.bin"                    ;; 0a:4200

;@gfximg name=enemy/roper width=2 height=4
gfxEnemyRoper:
    INCBIN "enemy/roper.bin"                           ;; 0a:4280

;@gfximg name=enemy/land_leech width=2 height=4
gfxEnemyLandLeech:
    INCBIN "enemy/land_leech.bin"                      ;; 0a:4300

;@gfximg name=enemy/killer_bee width=2 height=4
gfxEnemyKillerBee:
    INCBIN "enemy/killer_bee.bin"                      ;; 0a:4380
;@gfximg name=enemy/unknown1 width=2 height=4
    INCBIN "enemy/unknown1.bin"                        ;; 0a:4400

;@gfximg name=enemy/ruster width=2 height=4
gfxEnemyRuster:
    INCBIN "enemy/ruster.bin"                          ;; 0a:4480

;@gfximg name=enemy/mega_xorn width=2 height=4
gfxEnemyMegaXorn:
    INCBIN "enemy/mega_xorn.bin"                       ;; 0a:4500

;@gfximg name=enemy/ghost width=2 height=4
gfxEnemyGhost:
    INCBIN "enemy/ghost.bin"                           ;; 0a:4580

;@gfximg name=enemy/basilisk width=2 height=4
gfxEnemyBasilisk:
    INCBIN "enemy/basilisk.bin"                        ;; 0a:4600

;@gfximg name=enemy/mummy width=2 height=4
gfxEnemyMummy:
    INCBIN "enemy/mummy.bin"                           ;; 0a:4680

;@gfximg name=enemy/red_wisp width=2 height=4
gfxEnemyRedWisp:
    INCBIN "enemy/red_wisp.bin"                        ;; 0a:4700

;@gfximg name=enemy/barnaclejack width=2 height=4
gfxEnemyBarnaclejack:
    INCBIN "enemy/barnaclejack.bin"                    ;; 0a:4780
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4800 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4808 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4810 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4818 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4820 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4828 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4830 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4838 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4840 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4848 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4850 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4858 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4860 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4868 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4870 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:4878 ????????

;@gfximg name=enemy/mammoth width=2 height=4
gfxEnemyMammoth:
    INCBIN "enemy/mammoth.bin"                         ;; 0a:4880

;@gfximg name=enemy/bulette width=2 height=4
gfxEnemyBulette:
    INCBIN "enemy/bulette.bin"                         ;; 0a:4900

;@gfximg name=enemy/dragonfly width=2 height=4
gfxEnemyDragonfly:
    INCBIN "enemy/dragonfly.bin"                       ;; 0a:4980

;@gfximg name=enemy/walrus width=2 height=4
gfxEnemyWalrus:
    INCBIN "enemy/walrus.bin"                          ;; 0a:4a00

;@gfximg name=enemy/snowman width=2 height=4
gfxEnemySnowman:
    INCBIN "enemy/snowman.bin"                         ;; 0a:4a80

;@gfximg name=enemy/sabercat width=2 height=4
gfxEnemySabercat:
    INCBIN "enemy/sabercat.bin"                        ;; 0a:4b00

;@gfximg name=enemy/poto width=2 height=4
gfxEnemyPoto:
    INCBIN "enemy/poto.bin"                            ;; 0a:4b80

;@gfximg name=enemy/manta_ray width=2 height=4
gfxEnemyMantaRay:
    INCBIN "enemy/manta_ray.bin"                       ;; 0a:4c00

;@gfximg name=enemy/griffin_hand width=2 height=4
gfxEnemyGriffinHand:
    INCBIN "enemy/griffin_hand.bin"                    ;; 0a:4c80

;@gfximg name=enemy/fire_moth width=2 height=4
gfxEnemyFireMoth:
    INCBIN "enemy/fire_moth.bin"                       ;; 0a:4d00

;@gfximg name=enemy/denden width=2 height=4
gfxEnemyDenden:
    INCBIN "enemy/denden.bin"                          ;; 0a:4d80

;@gfximg name=enemy/gaurdian width=2 height=4
gfxEnemyGuardian:
    INCBIN "enemy/gaurdian.bin"                        ;; 0a:4e00

;@gfximg name=enemy/wonder width=2 height=4
gfxEnemyWonder:
    INCBIN "enemy/wonder.bin"                          ;; 0a:4e80

;@gfximg name=enemy/evil_sword width=2 height=4
gfxEnemyEvilSword:
    INCBIN "enemy/evil_sword.bin"                      ;; 0a:4f00

;@gfximg name=enemy/demon width=2 height=4
gfxEnemyDemon:
    INCBIN "enemy/demon.bin"                           ;; 0a:4f80

;@gfximg name=enemy/rabite width=2 height=6
gfxEnemyRabite:
    INCBIN "enemy/rabite.bin"                          ;; 0a:5000

;@gfximg name=enemy/green_slime width=2 height=6
gfxEnemyGreenSlime:
    INCBIN "enemy/green_slime.bin"                     ;; 0a:50c0

;@gfximg name=enemy/zombie width=2 height=6
gfxEnemyZombie:
    INCBIN "enemy/zombie.bin"                          ;; 0a:5180

;@gfximg name=enemy/pumpkin_bomb width=2 height=6
gfxEnemyPumpkinBomb:
    INCBIN "enemy/pumpkin_bomb.bin"                    ;; 0a:5240

;@gfximg name=enemy/blood_own width=2 height=6
gfxEnemyBloodOwl:
    INCBIN "enemy/blood_own.bin"                       ;; 0a:5300

;@gfximg name=enemy/gas_cloud width=2 height=6
gfxEnemyGasCloud:
    INCBIN "enemy/gas_cloud.bin"                       ;; 0a:53c0

;@gfximg name=enemy/death_crab width=2 height=6
gfxEnemyDeathCrab:
    INCBIN "enemy/death_crab.bin"                      ;; 0a:5480

;@gfximg name=enemy/mandrake width=2 height=6
gfxEnemyMandrake:
    INCBIN "enemy/mandrake.bin"                        ;; 0a:5540

;@gfximg name=enemy/death_scorpion width=2 height=6
gfxEnemyDeathScorpion:
    INCBIN "enemy/death_scorpion.bin"                  ;; 0a:5600

;@gfximg name=enemy/shadow_zero width=2 height=6
gfxEnemyShadowZero:
    INCBIN "enemy/shadow_zero.bin"                     ;; 0a:56c0

;@gfximg name=enemy/mimic width=2 height=6
gfxEnemyMimic:
    INCBIN "enemy/mimic.bin"                           ;; 0a:5780

;@gfximg name=enemy/air_elemental width=2 height=6
gfxEnemyAirElemental:
    INCBIN "enemy/air_elemental.bin"                   ;; 0a:5840

;@gfximg name=enemy/earth_elemental width=2 height=6
gfxEnemyEarthElemental:
    INCBIN "enemy/earth_elemental.bin"                 ;; 0a:5900

;@gfximg name=enemy/doppel_mirror width=2 height=6
gfxEnemyDoppelMirror:
    INCBIN "enemy/doppel_mirror.bin"                   ;; 0a:59c0
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5a80 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5a88 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5a90 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5a98 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5aa0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5aa8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5ab0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5ab8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5ac0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5ac8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5ad0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5ad8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5ae0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5ae8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5af0 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5af8 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5b00 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5b08 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5b10 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5b18 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5b20 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5b28 ????????
    db   $81, $81, $42, $42, $24, $24, $18, $18        ;; 0a:5b30 ????????
    db   $18, $18, $24, $24, $42, $42, $81, $81        ;; 0a:5b38 ????????

;@gfximg name=enemy/sea_dragon width=2 height=6
gfxEnemySeaDragon:
    INCBIN "enemy/sea_dragon.bin"                      ;; 0a:5b40

;@gfximg name=enemy/goblin width=2 height=8
gfxEnemyGoblin:
    INCBIN "enemy/goblin.bin"                          ;; 0a:5c00

;@gfximg name=enemy/skeleton width=2 height=8
gfxEnemySkeleton:
    INCBIN "enemy/skeleton.bin"                        ;; 0a:5d00

;@gfximg name=enemy/wererat width=2 height=8
gfxEnemyWarerat:
    INCBIN "enemy/wererat.bin"                         ;; 0a:5e00

;@gfximg name=enemy/gal_fish width=2 height=8
gfxEnemyGalFish:
    INCBIN "enemy/gal_fish.bin"                        ;; 0a:5f00

;@gfximg name=enemy/lizardman width=2 height=8
gfxEnemyLizardman:
    INCBIN "enemy/lizardman.bin"                       ;; 0a:6000

;@gfximg name=enemy/tarantula width=2 height=8
gfxEnemyTarantula:
    INCBIN "enemy/tarantula.bin"                       ;; 0a:6100

;@gfximg name=enemy/gargoyle width=2 height=8
gfxEnemyGargoyle:
    INCBIN "enemy/gargoyle.bin"                        ;; 0a:6200

;@gfximg name=enemy/eye_spy width=2 height=8
gfxEnemyEyeSpy:
    INCBIN "enemy/eye_spy.bin"                         ;; 0a:6300

;@gfximg name=enemy/werewolf width=2 height=8
gfxEnemyWerewolf:
    INCBIN "enemy/werewolf.bin"                        ;; 0a:6400

;@gfximg name=enemy/saurus width=2 height=8
gfxEnemySaurus:
    INCBIN "enemy/saurus.bin"                          ;; 0a:6500

;@gfximg name=enemy/cobra width=2 height=8
gfxEnemyCobra:
    INCBIN "enemy/cobra.bin"                           ;; 0a:6600

;@gfximg name=enemy/molebear width=2 height=8
gfxEnemyMolebear:
    INCBIN "enemy/molebear.bin"                        ;; 0a:6700

;@gfximg name=enemy/ape width=2 height=8
gfxEnemyApe:
    INCBIN "enemy/ape.bin"                             ;; 0a:6800

;@gfximg name=enemy/ogre width=2 height=8
gfxEnemyOrge:
    INCBIN "enemy/ogre.bin"                            ;; 0a:6900

;@gfximg name=enemy/phantasm width=2 height=8
gfxEnemyPhantasm:
    INCBIN "enemy/phantasm.bin"                        ;; 0a:6a00

;@gfximg name=enemy/minotaur width=2 height=8
gfxEnemyMinotaur:
    INCBIN "enemy/minotaur.bin"                        ;; 0a:6b00

;@gfximg name=enemy/duck_soldier width=2 height=8
gfxEnemyDuckSolder:
    INCBIN "enemy/duck_soldier.bin"                    ;; 0a:6c00

;@gfximg name=enemy/beholder width=2 height=8
gfxEnemyBeholder:
    INCBIN "enemy/beholder.bin"                        ;; 0a:6d00

;@gfximg name=enemy/tortoise_knight width=2 height=8
gfxEnemyTortoiseKnight:
    INCBIN "enemy/tortoise_knight.bin"                 ;; 0a:6e00

;@gfximg name=enemy/garasha width=2 height=8
gfxEnemyGarasha:
    INCBIN "enemy/garasha.bin"                         ;; 0a:6f00

;@gfximg name=enemy/orc width=2 height=8
gfxEnemyOrc:
    INCBIN "enemy/orc.bin"                             ;; 0a:7000

;@gfximg name=enemy/ninja width=2 height=8
gfxEnemyNinja:
    INCBIN "enemy/ninja.bin"                           ;; 0a:7100

;@gfximg name=enemy/sahagin width=2 height=8
gfxEnemySahagin:
    INCBIN "enemy/sahagin.bin"                         ;; 0a:7200

;@gfximg name=enemy/porcupine width=2 height=10
gfxEnemyPorcupine:
    INCBIN "enemy/porcupine.bin"                       ;; 0a:7300

data_0a_7440:
    db   $01, $01, $06, $07, $18, $1f, $38, $27        ;; 0a:7440 ????????
    db   $7d, $43, $7f, $5b, $7b, $5f, $46, $7f        ;; 0a:7448 ????????
    db   $f0, $f0, $a8, $58, $34, $fc, $f4, $fc        ;; 0a:7450 ????????
    db   $f4, $fc, $e8, $f8, $d0, $f0, $50, $f0        ;; 0a:7458 ????????
    db   $23, $3f, $39, $3f, $62, $5f, $8f, $fd        ;; 0a:7460 ????????
    db   $7f, $72, $3f, $21, $3f, $33, $7f, $7f        ;; 0a:7468 ????????
    db   $ee, $fe, $ed, $fb, $0a, $fe, $fc, $fc        ;; 0a:7470 ????????
    db   $c8, $38, $b8, $78, $90, $f0, $fe, $fe        ;; 0a:7478 ????????
    db   $1f, $1f, $20, $3f, $40, $7f, $58, $67        ;; 0a:7480 ????????
    db   $78, $77, $78, $77, $50, $6f, $20, $3f        ;; 0a:7488 ????????
    db   $c0, $c0, $60, $e0, $90, $70, $58, $a8        ;; 0a:7490 ????????
    db   $4c, $b4, $4c, $b4, $48, $b8, $08, $f8        ;; 0a:7498 ????????
    db   $38, $3f, $60, $5f, $c0, $bf, $60, $7f        ;; 0a:74a0 ????????
    db   $30, $3f, $3c, $3f, $43, $7f, $7f, $7f        ;; 0a:74a8 ????????
    db   $38, $f8, $7e, $e6, $ed, $df, $49, $bf        ;; 0a:74b0 ????????
    db   $0f, $ff, $18, $f8, $f0, $f0, $fe, $fe        ;; 0a:74b8 ????????
    db   $7e, $7e, $b5, $cb, $40, $7f, $21, $3e        ;; 0a:74c0 ????????
    db   $13, $1f, $0b, $0f, $05, $06, $06, $07        ;; 0a:74c8 ????????
    db   $00, $00, $80, $80, $40, $c0, $a0, $60        ;; 0a:74d0 ????????
    db   $d0, $30, $d0, $30, $98, $78, $14, $fc        ;; 0a:74d8 ????????
    db   $0f, $0f, $1c, $1f, $30, $3f, $41, $7f        ;; 0a:74e0 ????????
    db   $3e, $3f, $1e, $11, $0e, $0f, $04, $07        ;; 0a:74e8 ????????
    db   $2a, $ee, $79, $9f, $09, $ff, $91, $ff        ;; 0a:74f0 ????????
    db   $b2, $de, $ec, $fc, $30, $f0, $18, $f8        ;; 0a:74f8 ????????
    db   $00, $00, $7e, $7e, $b5, $cb, $40, $7f        ;; 0a:7500 ????????
    db   $21, $3e, $13, $1f, $0b, $0f, $05, $06        ;; 0a:7508 ????????
    db   $00, $00, $00, $00, $80, $80, $40, $c0        ;; 0a:7510 ????????
    db   $a0, $60, $d0, $30, $d3, $33, $95, $77        ;; 0a:7518 ????????
    db   $06, $07, $0f, $0f, $1c, $1f, $30, $3f        ;; 0a:7520 ????????
    db   $41, $7f, $3e, $3f, $4e, $79, $27, $3f        ;; 0a:7528 ????????
    db   $1a, $fe, $2a, $ee, $11, $ff, $0d, $fb        ;; 0a:7530 ????????
    db   $99, $ef, $7a, $fe, $04, $fc, $cf, $ff        ;; 0a:7538 ????????
    db   $07, $07, $08, $0f, $0f, $0f, $1f, $18        ;; 0a:7540 ????????
    db   $3f, $20, $7f, $40, $7f, $40, $9f, $f0        ;; 0a:7548 ????????
    db   $80, $80, $60, $e0, $1c, $fc, $9e, $f2        ;; 0a:7550 ????????
    db   $de, $6e, $fe, $32, $fc, $1c, $fa, $0e        ;; 0a:7558 ????????
    db   $8f, $f8, $8f, $f8, $ff, $f0, $ff, $80        ;; 0a:7560 ????????
    db   $7f, $40, $5f, $60, $83, $ff, $ff, $ff        ;; 0a:7568 ????????
    db   $fa, $06, $fd, $0f, $f1, $1f, $f3, $1f        ;; 0a:7570 ????????
    db   $ee, $1e, $c2, $3e, $82, $fe, $d5, $ff        ;; 0a:7578 ????????

data_0a_7580:
    db   $01, $01, $03, $02, $0f, $0e, $3f, $32        ;; 0a:7580 ????????
    db   $7f, $44, $7f, $40, $2f, $30, $38, $3f        ;; 0a:7588 ????????
    db   $80, $80, $40, $c0, $70, $f0, $4c, $fc        ;; 0a:7590 ????????
    db   $ba, $66, $fa, $06, $f4, $0c, $1c, $fc        ;; 0a:7598 ????????
    db   $4f, $7d, $df, $ff, $bb, $e7, $bc, $e7        ;; 0a:75a0 ????????
    db   $9d, $ff, $54, $7f, $2f, $3f, $3f, $38        ;; 0a:75a8 ????????
    db   $f2, $be, $e1, $ff, $d9, $ff, $3d, $e7        ;; 0a:75b0 ????????
    db   $fd, $e7, $19, $ff, $11, $ff, $fa, $fe        ;; 0a:75b8 ????????
    db   $01, $01, $03, $02, $0f, $0e, $3f, $32        ;; 0a:75c0 ????????
    db   $7f, $44, $7f, $40, $2f, $30, $38, $3f        ;; 0a:75c8 ????????
    db   $80, $80, $40, $c0, $70, $f0, $4c, $fc        ;; 0a:75d0 ????????
    db   $ba, $66, $fa, $06, $f4, $0c, $1c, $fc        ;; 0a:75d8 ????????
    db   $17, $1f, $20, $3f, $44, $7f, $43, $7f        ;; 0a:75e0 ????????
    db   $40, $7f, $40, $7f, $38, $3f, $07, $07        ;; 0a:75e8 ????????
    db   $e8, $f8, $04, $fc, $02, $fe, $a2, $fe        ;; 0a:75f0 ????????
    db   $02, $fe, $74, $fc, $fc, $8c, $f0, $f0        ;; 0a:75f8 ????????
    db   $00, $00, $01, $01, $7f, $7e, $ff, $80        ;; 0a:7600 ????????
    db   $7f, $60, $1f, $1c, $0f, $0b, $0f, $0b        ;; 0a:7608 ????????
    db   $3c, $3c, $fc, $c4, $e8, $18, $d0, $30        ;; 0a:7610 ????????
    db   $90, $70, $c8, $38, $f6, $0e, $fd, $f3        ;; 0a:7618 ????????
    db   $1e, $1f, $13, $1f, $17, $19, $0f, $09        ;; 0a:7620 ????????
    db   $0e, $0f, $0a, $0f, $0a, $0f, $0f, $0f        ;; 0a:7628 ????????
    db   $3e, $fe, $08, $f8, $08, $f8, $04, $fc        ;; 0a:7630 ????????
    db   $04, $fc, $02, $fe, $01, $ff, $ff, $ff        ;; 0a:7638 ????????
    db   $00, $00, $00, $00, $01, $01, $7f, $7e        ;; 0a:7640 ????????
    db   $ff, $80, $7f, $60, $1f, $1c, $0f, $0b        ;; 0a:7648 ????????
    db   $00, $00, $3c, $3c, $fc, $c4, $e8, $18        ;; 0a:7650 ????????
    db   $d0, $30, $90, $70, $c8, $38, $f6, $0e        ;; 0a:7658 ????????
    db   $0f, $0b, $1e, $1f, $11, $1f, $16, $1f        ;; 0a:7660 ????????
    db   $0f, $09, $0f, $09, $17, $1f, $1f, $1f        ;; 0a:7668 ????????
    db   $fd, $f3, $3e, $fe, $88, $f8, $08, $f8        ;; 0a:7670 ????????
    db   $04, $fc, $14, $fc, $0a, $fe, $ff, $ff        ;; 0a:7678 ????????
    db   $00, $00, $01, $01, $03, $02, $0f, $0e        ;; 0a:7680 ????????
    db   $3f, $32, $7f, $44, $7f, $40, $2f, $30        ;; 0a:7688 ????????
    db   $00, $00, $80, $80, $40, $c0, $70, $f0        ;; 0a:7690 ????????
    db   $4c, $fc, $ba, $66, $fa, $06, $f4, $0c        ;; 0a:7698 ????????
    db   $58, $7f, $8f, $fd, $87, $ff, $83, $ff        ;; 0a:76a0 ????????
    db   $47, $7c, $47, $7c, $2f, $3f, $3f, $3f        ;; 0a:76a8 ????????
    db   $1a, $fe, $f1, $bf, $e1, $ff, $c1, $ff        ;; 0a:76b0 ????????
    db   $e2, $be, $e2, $be, $f6, $fe, $fc, $1c        ;; 0a:76b8 ????????
    db   $00, $00, $01, $01, $7f, $7e, $ff, $80        ;; 0a:76c0 ????????
    db   $7f, $60, $1f, $1c, $0f, $0b, $0f, $0b        ;; 0a:76c8 ????????
    db   $3c, $3c, $fc, $c4, $e8, $18, $d0, $30        ;; 0a:76d0 ????????
    db   $90, $70, $c8, $38, $f6, $0e, $fd, $f3        ;; 0a:76d8 ????????
    db   $7e, $7f, $70, $5f, $70, $5f, $30, $3f        ;; 0a:76e0 ????????
    db   $08, $0f, $18, $1f, $34, $2f, $3f, $3f        ;; 0a:76e8 ????????
    db   $3e, $fe, $10, $f0, $10, $f0, $08, $f8        ;; 0a:76f0 ????????
    db   $48, $f8, $44, $fc, $c2, $fe, $ff, $ff        ;; 0a:76f8 ????????

data_0a_7700:
    db   $00, $00, $03, $03, $0f, $0c, $14, $1f        ;; 0a:7700 ????????
    db   $2f, $3c, $35, $3e, $23, $3f, $60, $7f        ;; 0a:7708 ????????
    db   $00, $00, $c0, $c0, $b0, $f0, $e8, $f8        ;; 0a:7710 ????????
    db   $b4, $dc, $9c, $fc, $f6, $de, $3d, $f7        ;; 0a:7718 ????????
    db   $70, $5f, $5c, $6f, $7b, $4b, $30, $30        ;; 0a:7720 ????????
    db   $00, $00, $00, $00, $00, $00, $3f, $3f        ;; 0a:7728 ????????
    db   $1f, $fd, $86, $fe, $f8, $f8, $00, $00        ;; 0a:7730 ????????
    db   $00, $00, $00, $00, $00, $00, $fc, $fc        ;; 0a:7738 ????????
    db   $03, $03, $0c, $0f, $13, $1f, $2f, $3f        ;; 0a:7740 ????????
    db   $28, $3f, $30, $3f, $2d, $3f, $3f, $32        ;; 0a:7748 ????????
    db   $c0, $c0, $30, $f0, $c8, $f8, $f4, $fc        ;; 0a:7750 ????????
    db   $1c, $fc, $04, $fc, $84, $fc, $f2, $7e        ;; 0a:7758 ????????
    db   $32, $3f, $3f, $32, $3b, $36, $36, $3f        ;; 0a:7760 ????????
    db   $2f, $3f, $10, $1f, $0f, $0f, $1f, $1f        ;; 0a:7768 ????????
    db   $7e, $ce, $ca, $7e, $6a, $de, $d4, $fc        ;; 0a:7770 ????????
    db   $f8, $f8, $80, $80, $80, $80, $f8, $f8        ;; 0a:7778 ????????
    db   $03, $03, $07, $05, $05, $07, $06, $05        ;; 0a:7780 ????????
    db   $7d, $7e, $d7, $af, $7c, $7f, $ea, $97        ;; 0a:7788 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 0a:7790 ????????
    db   $80, $80, $4f, $cf, $79, $ff, $39, $ef        ;; 0a:7798 ????????
    db   $7f, $7f, $6a, $57, $3c, $3f, $3a, $27        ;; 0a:77a0 ????????
    db   $1f, $1f, $00, $00, $00, $00, $7f, $7f        ;; 0a:77a8 ????????
    db   $b9, $ef, $39, $ef, $39, $ef, $79, $ff        ;; 0a:77b0 ????????
    db   $8f, $8f, $00, $00, $00, $00, $fe, $fe        ;; 0a:77b8 ????????
    db   $00, $00, $1e, $1e, $21, $3f, $60, $7f        ;; 0a:77c0 ????????
    db   $a0, $ff, $e0, $ff, $a0, $ff, $e0, $ff        ;; 0a:77c8 ????????
    db   $00, $00, $00, $00, $8f, $8f, $79, $ff        ;; 0a:77d0 ????????
    db   $39, $ef, $39, $ef, $39, $ef, $39, $ef        ;; 0a:77d8 ????????
    db   $b7, $ff, $5d, $7e, $3d, $3b, $0a, $0e        ;; 0a:77e0 ????????
    db   $0e, $0a, $06, $06, $00, $00, $3f, $3f        ;; 0a:77e8 ????????
    db   $79, $ff, $8f, $8f, $00, $00, $00, $00        ;; 0a:77f0 ????????
    db   $00, $00, $00, $00, $00, $00, $fc, $fc        ;; 0a:77f8 ????????
    db   $00, $00, $03, $03, $1c, $1f, $20, $3f        ;; 0a:7800 ????????
    db   $23, $3c, $4f, $73, $4c, $7f, $30, $3f        ;; 0a:7808 ????????
    db   $c0, $c0, $e0, $20, $d0, $f0, $10, $f0        ;; 0a:7810 ????????
    db   $c8, $38, $e8, $d8, $3c, $f4, $0c, $fc        ;; 0a:7818 ????????
    db   $17, $1f, $2f, $3f, $2b, $3f, $2c, $3f        ;; 0a:7820 ????????
    db   $13, $1f, $0c, $0f, $03, $03, $1f, $1f        ;; 0a:7828 ????????
    db   $e8, $f8, $f4, $fc, $d4, $fc, $34, $fc        ;; 0a:7830 ????????
    db   $c8, $f8, $30, $f0, $c0, $c0, $f8, $f8        ;; 0a:7838 ????????
    db   $00, $00, $00, $00, $03, $03, $dc, $df        ;; 0a:7840 ????????
    db   $e0, $bf, $f3, $9c, $77, $5b, $2c, $3f        ;; 0a:7848 ????????
    db   $00, $00, $c0, $c0, $e0, $20, $d0, $f0        ;; 0a:7850 ????????
    db   $10, $f0, $ce, $3e, $ff, $d1, $3f, $f3        ;; 0a:7858 ????????
    db   $10, $1f, $17, $1f, $2f, $3f, $2b, $3f        ;; 0a:7860 ????????
    db   $2c, $3f, $13, $1f, $0c, $0f, $3f, $3f        ;; 0a:7868 ????????
    db   $0c, $fc, $e8, $f8, $f4, $fc, $d4, $fc        ;; 0a:7870 ????????
    db   $34, $fc, $c8, $f8, $30, $f0, $fc, $fc        ;; 0a:7878 ????????

data_0a_7880:
    db   $01, $01, $02, $03, $1c, $1f, $2e, $3b        ;; 0a:7880 ????????
    db   $47, $7d, $43, $7e, $21, $3f, $38, $3f        ;; 0a:7888 ????????
    db   $c0, $c0, $20, $e0, $78, $f8, $74, $dc        ;; 0a:7890 ????????
    db   $e2, $be, $c2, $7e, $84, $fc, $1c, $fc        ;; 0a:7898 ????????
    db   $4f, $7d, $b7, $fd, $fb, $cf, $fc, $cf        ;; 0a:78a0 ????????
    db   $bf, $fb, $bf, $fe, $51, $5f, $1f, $1f        ;; 0a:78a8 ????????
    db   $f2, $be, $e5, $bf, $cd, $ff, $3f, $f3        ;; 0a:78b0 ????????
    db   $ff, $d3, $fd, $bf, $e5, $e7, $f2, $f2        ;; 0a:78b8 ????????
    db   $00, $00, $01, $01, $0e, $0f, $32, $3f        ;; 0a:78c0 ????????
    db   $44, $7f, $40, $7f, $20, $3f, $38, $3f        ;; 0a:78c8 ????????
    db   $c0, $c0, $20, $e0, $70, $f0, $4c, $fc        ;; 0a:78d0 ????????
    db   $22, $fe, $02, $fe, $04, $fc, $1c, $fc        ;; 0a:78d8 ????????
    db   $4f, $7f, $80, $ff, $88, $ff, $87, $ff        ;; 0a:78e0 ????????
    db   $e1, $9e, $7f, $61, $1f, $1f, $1f, $1f        ;; 0a:78e8 ????????
    db   $f2, $fe, $01, $ff, $01, $ff, $63, $fd        ;; 0a:78f0 ????????
    db   $ff, $03, $fc, $fc, $f8, $08, $f8, $f8        ;; 0a:78f8 ????????
    db   $00, $00, $03, $03, $7d, $7e, $87, $fd        ;; 0a:7900 ????????
    db   $62, $7f, $1c, $1f, $0f, $0b, $0f, $0b        ;; 0a:7908 ????????
    db   $bc, $bc, $c2, $7e, $8c, $fc, $10, $f0        ;; 0a:7910 ????????
    db   $10, $f0, $08, $f8, $06, $fe, $f1, $ff        ;; 0a:7918 ????????
    db   $0e, $0f, $11, $1f, $0f, $0f, $1f, $15        ;; 0a:7920 ????????
    db   $1f, $15, $0f, $0a, $04, $07, $1f, $1f        ;; 0a:7928 ????????
    db   $0e, $fe, $e4, $fc, $94, $fc, $d4, $3c        ;; 0a:7930 ????????
    db   $f4, $3c, $f2, $fe, $3a, $fe, $fc, $fc        ;; 0a:7938 ????????
    db   $00, $00, $00, $00, $03, $03, $7d, $7e        ;; 0a:7940 ????????
    db   $87, $fd, $62, $7f, $1c, $1f, $0f, $0b        ;; 0a:7948 ????????
    db   $00, $00, $bc, $bc, $c2, $7e, $8c, $fc        ;; 0a:7950 ????????
    db   $10, $f0, $10, $f0, $08, $f8, $06, $fe        ;; 0a:7958 ????????
    db   $0f, $0b, $0e, $0f, $11, $1f, $0f, $0f        ;; 0a:7960 ????????
    db   $3f, $35, $4f, $7d, $27, $3e, $1f, $1f        ;; 0a:7968 ????????
    db   $f1, $ff, $0e, $fe, $e2, $fe, $d9, $ff        ;; 0a:7970 ????????
    db   $dd, $67, $fd, $67, $9d, $ff, $fa, $fa        ;; 0a:7978 ????????
    db   $01, $01, $02, $03, $07, $05, $3b, $3e        ;; 0a:7980 ????????
    db   $41, $7f, $30, $3f, $7f, $7d, $f7, $9d        ;; 0a:7988 ????????
    db   $80, $80, $40, $c0, $e0, $a0, $dc, $7c        ;; 0a:7990 ????????
    db   $82, $fe, $0c, $fc, $fe, $be, $ef, $b9        ;; 0a:7998 ????????
    db   $eb, $9f, $5c, $7f, $bf, $f7, $bf, $fa        ;; 0a:79a0 ????????
    db   $7f, $ca, $f7, $ce, $67, $7f, $18, $18        ;; 0a:79a8 ????????
    db   $d7, $f9, $3a, $fe, $fd, $ef, $7d, $df        ;; 0a:79b0 ????????
    db   $7e, $d3, $6f, $f3, $e4, $fc, $18, $18        ;; 0a:79b8 ????????
    db   $00, $00, $03, $03, $7d, $7e, $87, $fd        ;; 0a:79c0 ????????
    db   $62, $7f, $7c, $5f, $2f, $3b, $2f, $3b        ;; 0a:79c8 ????????
    db   $bc, $bc, $c2, $7e, $8c, $fc, $10, $f0        ;; 0a:79d0 ????????
    db   $10, $f0, $08, $f8, $06, $fe, $f1, $ff        ;; 0a:79d8 ????????
    db   $1e, $1f, $11, $1f, $7f, $7f, $ff, $94        ;; 0a:79e0 ????????
    db   $de, $b5, $5c, $7f, $33, $33, $00, $00        ;; 0a:79e8 ????????
    db   $0e, $fe, $f2, $fe, $ed, $bf, $af, $f3        ;; 0a:79f0 ????????
    db   $df, $f3, $dd, $ff, $e2, $e2, $00, $00        ;; 0a:79f8 ????????

data_0a_7a00:
    db   $07, $07, $0b, $0f, $16, $1f, $16, $1f        ;; 0a:7a00 ????????
    db   $10, $1f, $0e, $09, $0b, $0c, $7c, $7f        ;; 0a:7a08 ????????
    db   $e0, $e0, $f0, $f0, $f8, $f8, $f8, $f8        ;; 0a:7a10 ????????
    db   $f8, $f8, $f0, $90, $f0, $30, $fe, $fe        ;; 0a:7a18 ????????
    db   $87, $ff, $69, $7f, $f0, $bf, $fa, $9f        ;; 0a:7a20 ????????
    db   $6d, $6f, $08, $0f, $04, $07, $1f, $1f        ;; 0a:7a28 ????????
    db   $ff, $e3, $ff, $d5, $7f, $d5, $7f, $dd        ;; 0a:7a30 ????????
    db   $ff, $dd, $be, $ea, $fc, $f4, $f8, $f8        ;; 0a:7a38 ????????
    db   $07, $07, $0b, $0f, $16, $1f, $16, $1f        ;; 0a:7a40 ????????
    db   $10, $1f, $0e, $09, $0b, $0c, $7c, $7f        ;; 0a:7a48 ????????
    db   $e0, $e0, $f0, $f0, $f8, $f8, $f8, $f8        ;; 0a:7a50 ????????
    db   $f8, $f8, $f0, $90, $f0, $30, $fe, $fe        ;; 0a:7a58 ????????
    db   $e7, $ff, $f9, $9f, $f0, $9f, $7a, $7f        ;; 0a:7a60 ????????
    db   $0f, $0f, $09, $0f, $07, $07, $1f, $1f        ;; 0a:7a68 ????????
    db   $fd, $ff, $bf, $e3, $7f, $d5, $7f, $d5        ;; 0a:7a70 ????????
    db   $ff, $dd, $7f, $dd, $3e, $ea, $fc, $f4        ;; 0a:7a78 ????????
    db   $07, $07, $0b, $0f, $17, $1f, $17, $1f        ;; 0a:7a80 ????????
    db   $17, $1f, $0b, $0f, $0f, $0f, $7f, $7f        ;; 0a:7a88 ????????
    db   $e0, $e0, $f0, $f0, $f8, $f8, $f8, $f8        ;; 0a:7a90 ????????
    db   $f8, $f8, $f0, $f0, $f0, $f0, $fe, $fe        ;; 0a:7a98 ????????
    db   $87, $ff, $e9, $ff, $f0, $df, $fa, $df        ;; 0a:7aa0 ????????
    db   $ef, $bf, $c9, $bf, $67, $5f, $3f, $2f        ;; 0a:7aa8 ????????
    db   $e1, $ff, $96, $fe, $0c, $fc, $5c, $f4        ;; 0a:7ab0 ????????
    db   $b8, $f8, $10, $f0, $20, $e0, $f8, $f8        ;; 0a:7ab8 ????????
    db   $07, $07, $0b, $0f, $17, $1f, $17, $1f        ;; 0a:7ac0 ????????
    db   $17, $1f, $0b, $0f, $0f, $0f, $7f, $7f        ;; 0a:7ac8 ????????
    db   $e0, $e0, $f0, $f0, $f8, $f8, $f8, $f8        ;; 0a:7ad0 ????????
    db   $f8, $f8, $f0, $f0, $f0, $f0, $fe, $fe        ;; 0a:7ad8 ????????
    db   $87, $ff, $e9, $ff, $f0, $df, $ba, $ff        ;; 0a:7ae0 ????????
    db   $dd, $bf, $68, $5f, $3c, $2f, $1f, $1f        ;; 0a:7ae8 ????????
    db   $e1, $ff, $96, $fe, $0e, $fa, $5e, $f2        ;; 0a:7af0 ????????
    db   $fc, $f4, $98, $f8, $e0, $e0, $f8, $f8        ;; 0a:7af8 ????????
    db   $07, $07, $0b, $0f, $17, $1f, $17, $1f        ;; 0a:7b00 ????????
    db   $1f, $19, $07, $0b, $0f, $0f, $7f, $7f        ;; 0a:7b08 ????????
    db   $e0, $e0, $f0, $f0, $f8, $f8, $38, $f8        ;; 0a:7b10 ????????
    db   $78, $f8, $f0, $f0, $e0, $e0, $f0, $f0        ;; 0a:7b18 ????????
    db   $75, $5f, $d8, $bf, $f9, $af, $fb, $ae        ;; 0a:7b20 ????????
    db   $df, $be, $73, $53, $34, $37, $07, $07        ;; 0a:7b28 ????????
    db   $08, $f8, $f0, $f0, $90, $f0, $90, $70        ;; 0a:7b30 ????????
    db   $a0, $60, $e0, $e0, $20, $e0, $f0, $f0        ;; 0a:7b38 ????????
    db   $00, $00, $07, $07, $0b, $0f, $17, $1f        ;; 0a:7b40 ????????
    db   $17, $1f, $1f, $19, $07, $0b, $0f, $0f        ;; 0a:7b48 ????????
    db   $00, $00, $e0, $e0, $f0, $f0, $f8, $f8        ;; 0a:7b50 ????????
    db   $38, $f8, $78, $f8, $f0, $f0, $e0, $e0        ;; 0a:7b58 ????????
    db   $7f, $7f, $75, $5f, $d8, $bf, $f8, $af        ;; 0a:7b60 ????????
    db   $fa, $bf, $e6, $ff, $43, $7f, $27, $3f        ;; 0a:7b68 ????????
    db   $f0, $f0, $08, $f8, $f0, $f0, $48, $f8        ;; 0a:7b70 ????????
    db   $dc, $e4, $fc, $e4, $98, $f8, $e8, $f8        ;; 0a:7b78 ????????

data_0a_7b80:
    dw   `00000033                                     ;; 0a:7b80 $03 $03
    dw   `00000312                                     ;; 0a:7b82 $06 $05
    dw   `00003122                                     ;; 0a:7b84 $0c $0b
    dw   `00003122                                     ;; 0a:7b86 $0c $0b
    dw   `00032332                                     ;; 0a:7b88 $16 $1f
    dw   `03032313                                     ;; 0a:7b8a $57 $5d
    dw   `32333213                                     ;; 0a:7b8c $bb $fd
    dw   `32222322                                     ;; 0a:7b8e $84 $ff

    dw   `33033033                                     ;; 0a:7b90 $db $db
    dw   `32311313                                     ;; 0a:7b92 $bf $e5
    dw   `32231130                                     ;; 0a:7b94 $9e $f2
    dw   `32233300                                     ;; 0a:7b96 $9c $fc
    dw   `33323000                                     ;; 0a:7b98 $e8 $f8
    dw   `31323030                                     ;; 0a:7b9a $ea $ba
    dw   `31233323                                     ;; 0a:7b9c $dd $bf
    dw   `22311133                                     ;; 0a:7b9e $3f $e3

    dw   `33223132                                     ;; 0a:7ba0 $ce $fb
    dw   `33333213                                     ;; 0a:7ba2 $fb $fd
    dw   `31133321                                     ;; 0a:7ba4 $fd $9e
    dw   `31133223                                     ;; 0a:7ba6 $f9 $9f
    dw   `33333333                                     ;; 0a:7ba8 $ff $ff
    dw   `32333122                                     ;; 0a:7baa $bc $fb
    dw   `32300322                                     ;; 0a:7bac $a4 $e7
    dw   `03003333                                     ;; 0a:7bae $4f $4f

    dw   `23132313                                     ;; 0a:7bb0 $77 $dd
    dw   `33133313                                     ;; 0a:7bb2 $ff $dd
    dw   `13133313                                     ;; 0a:7bb4 $ff $5d
    dw   `33132313                                     ;; 0a:7bb6 $f7 $dd
    dw   `33132313                                     ;; 0a:7bb8 $f7 $dd
    dw   `33311133                                     ;; 0a:7bba $ff $e3
    dw   `33333330                                     ;; 0a:7bbc $fe $fe
    dw   `33330000                                     ;; 0a:7bbe $f0 $f0

    dw   `33033033                                     ;; 0a:7bc0 $db $db
    dw   `31311312                                     ;; 0a:7bc2 $fe $a5
    dw   `03113122                                     ;; 0a:7bc4 $7c $4b
    dw   `00333122                                     ;; 0a:7bc6 $3c $3b
    dw   `00032332                                     ;; 0a:7bc8 $16 $1f
    dw   `03032313                                     ;; 0a:7bca $57 $5d
    dw   `32333213                                     ;; 0a:7bcc $bb $fd
    dw   `32222322                                     ;; 0a:7bce $84 $ff

    dw   `33000000                                     ;; 0a:7bd0 $c0 $c0
    dw   `32300000                                     ;; 0a:7bd2 $a0 $e0
    dw   `32230000                                     ;; 0a:7bd4 $90 $f0
    dw   `32230000                                     ;; 0a:7bd6 $90 $f0
    dw   `33323000                                     ;; 0a:7bd8 $e8 $f8
    dw   `31323030                                     ;; 0a:7bda $ea $ba
    dw   `31233323                                     ;; 0a:7bdc $dd $bf
    dw   `22333323                                     ;; 0a:7bde $3d $ff

    dw   `33323132                                     ;; 0a:7be0 $ee $fb
    dw   `31133213                                     ;; 0a:7be2 $fb $9d
    dw   `31133321                                     ;; 0a:7be4 $fd $9e
    dw   `33333223                                     ;; 0a:7be6 $f9 $ff
    dw   `32333333                                     ;; 0a:7be8 $bf $ff
    dw   `32303233                                     ;; 0a:7bea $ab $ef
    dw   `03000333                                     ;; 0a:7bec $47 $47
    dw   `00000033                                     ;; 0a:7bee $03 $03

    dw   `23311133                                     ;; 0a:7bf0 $7f $e3
    dw   `33132313                                     ;; 0a:7bf2 $f7 $dd
    dw   `13133313                                     ;; 0a:7bf4 $ff $5d
    dw   `33133313                                     ;; 0a:7bf6 $ff $dd
    dw   `33132313                                     ;; 0a:7bf8 $f7 $dd
    dw   `23132313                                     ;; 0a:7bfa $77 $dd
    dw   `22311133                                     ;; 0a:7bfc $3f $e3
    dw   `33333330                                     ;; 0a:7bfe $fe $fe

    dw   `00000033                                     ;; 0a:7c00 $03 $03
    dw   `00000323                                     ;; 0a:7c02 $05 $07
    dw   `00003231                                     ;; 0a:7c04 $0b $0e
    dw   `00003111                                     ;; 0a:7c06 $0f $08
    dw   `00003311                                     ;; 0a:7c08 $0f $0c
    dw   `03031113                                     ;; 0a:7c0a $5f $51
    dw   `32313331                                     ;; 0a:7c0c $bf $ee
    dw   `32233122                                     ;; 0a:7c0e $9c $fb

    dw   `33000000                                     ;; 0a:7c10 $c0 $c0
    dw   `32300000                                     ;; 0a:7c12 $a0 $e0
    dw   `13230000                                     ;; 0a:7c14 $d0 $70
    dw   `13230000                                     ;; 0a:7c16 $d0 $70
    dw   `32230000                                     ;; 0a:7c18 $90 $f0
    dw   `33230030                                     ;; 0a:7c1a $d2 $f2
    dw   `11333323                                     ;; 0a:7c1c $fd $3f
    dw   `22132223                                     ;; 0a:7c1e $31 $df

    dw   `33332322                                     ;; 0a:7c20 $f4 $ff
    dw   `33222233                                     ;; 0a:7c22 $c3 $ff
    dw   `32222222                                     ;; 0a:7c24 $80 $ff
    dw   `32222322                                     ;; 0a:7c26 $84 $ff
    dw   `32222233                                     ;; 0a:7c28 $83 $ff
    dw   `32222222                                     ;; 0a:7c2a $80 $ff
    dw   `33322222                                     ;; 0a:7c2c $e0 $ff
    dw   `03333333                                     ;; 0a:7c2e $7f $7f

    dw   `22323330                                     ;; 0a:7c30 $2e $fe
    dw   `33222230                                     ;; 0a:7c32 $c2 $fe
    dw   `22222230                                     ;; 0a:7c34 $02 $fe
    dw   `22222223                                     ;; 0a:7c36 $01 $ff
    dw   `32222223                                     ;; 0a:7c38 $81 $ff
    dw   `22233223                                     ;; 0a:7c3a $19 $ff
    dw   `23333323                                     ;; 0a:7c3c $7d $ff
    dw   `33333333                                     ;; 0a:7c3e $ff $ff

    dw   `00000033                                     ;; 0a:7c40 $03 $03
    dw   `00000323                                     ;; 0a:7c42 $05 $07
    dw   `00003231                                     ;; 0a:7c44 $0b $0e
    dw   `00003231                                     ;; 0a:7c46 $0b $0e
    dw   `00003223                                     ;; 0a:7c48 $09 $0f
    dw   `03003233                                     ;; 0a:7c4a $4b $4f
    dw   `32333311                                     ;; 0a:7c4c $bf $fc
    dw   `32223122                                     ;; 0a:7c4e $8c $fb

    dw   `33000000                                     ;; 0a:7c50 $c0 $c0
    dw   `32300000                                     ;; 0a:7c52 $a0 $e0
    dw   `13230000                                     ;; 0a:7c54 $d0 $70
    dw   `11130000                                     ;; 0a:7c56 $f0 $10
    dw   `11330000                                     ;; 0a:7c58 $f0 $30
    dw   `31113030                                     ;; 0a:7c5a $fa $8a
    dw   `13331323                                     ;; 0a:7c5c $fd $77
    dw   `22133223                                     ;; 0a:7c5e $39 $df

    dw   `33332322                                     ;; 0a:7c60 $f4 $ff
    dw   `33222233                                     ;; 0a:7c62 $c3 $ff
    dw   `33222222                                     ;; 0a:7c64 $c0 $ff
    dw   `32222222                                     ;; 0a:7c66 $80 $ff
    dw   `32222223                                     ;; 0a:7c68 $81 $ff
    dw   `32233222                                     ;; 0a:7c6a $98 $ff
    dw   `32333332                                     ;; 0a:7c6c $be $ff
    dw   `33333333                                     ;; 0a:7c6e $ff $ff

    dw   `22323330                                     ;; 0a:7c70 $2e $fe
    dw   `33222230                                     ;; 0a:7c72 $c2 $fe
    dw   `22222223                                     ;; 0a:7c74 $01 $ff
    dw   `22322223                                     ;; 0a:7c76 $21 $ff
    dw   `33222223                                     ;; 0a:7c78 $c1 $ff
    dw   `22222223                                     ;; 0a:7c7a $01 $ff
    dw   `22222330                                     ;; 0a:7c7c $06 $fe
    dw   `33333333                                     ;; 0a:7c7e $ff $ff

    dw   `00000333                                     ;; 0a:7c80 $07 $07
    dw   `00003122                                     ;; 0a:7c82 $0c $0b
    dw   `00031222                                     ;; 0a:7c84 $18 $17
    dw   `00031233                                     ;; 0a:7c86 $1b $17
    dw   `00032313                                     ;; 0a:7c88 $17 $1d
    dw   `00003313                                     ;; 0a:7c8a $0f $0d
    dw   `00003332                                     ;; 0a:7c8c $0e $0f
    dw   `33003222                                     ;; 0a:7c8e $c8 $cf

    dw   `33003300                                     ;; 0a:7c90 $cc $cc
    dw   `22331130                                     ;; 0a:7c92 $3e $f2
    dw   `32221130                                     ;; 0a:7c94 $8e $f2
    dw   `32233113                                     ;; 0a:7c96 $9f $f9
    dw   `22230313                                     ;; 0a:7c98 $17 $f5
    dw   `22330313                                     ;; 0a:7c9a $37 $f5
    dw   `23033130                                     ;; 0a:7c9c $5e $da
    dw   `33323300                                     ;; 0a:7c9e $ec $fc

    dw   `31333323                                     ;; 0a:7ca0 $fd $bf
    dw   `31313131                                     ;; 0a:7ca2 $ff $aa
    dw   `31323212                                     ;; 0a:7ca4 $ea $bd
    dw   `31333323                                     ;; 0a:7ca6 $fd $bf
    dw   `31300033                                     ;; 0a:7ca8 $e3 $a3
    dw   `31300032                                     ;; 0a:7caa $e2 $a3
    dw   `03300322                                     ;; 0a:7cac $64 $67
    dw   `00333333                                     ;; 0a:7cae $3f $3f

    dw   `32222300                                     ;; 0a:7cb0 $84 $fc
    dw   `23333000                                     ;; 0a:7cb2 $78 $f8
    dw   `33223000                                     ;; 0a:7cb4 $c8 $f8
    dw   `11323300                                     ;; 0a:7cb6 $ec $3c
    dw   `11332300                                     ;; 0a:7cb8 $f4 $3c
    dw   `33332300                                     ;; 0a:7cba $f4 $fc
    dw   `22333230                                     ;; 0a:7cbc $3a $fe
    dw   `33333330                                     ;; 0a:7cbe $fe $fe

    dw   `00000000                                     ;; 0a:7cc0 $00 $00
    dw   `00000333                                     ;; 0a:7cc2 $07 $07
    dw   `00003122                                     ;; 0a:7cc4 $0c $0b
    dw   `00031222                                     ;; 0a:7cc6 $18 $17
    dw   `00031233                                     ;; 0a:7cc8 $1b $17
    dw   `00032313                                     ;; 0a:7cca $17 $1d
    dw   `00003313                                     ;; 0a:7ccc $0f $0d
    dw   `00003332                                     ;; 0a:7cce $0e $0f

    dw   `00000000                                     ;; 0a:7cd0 $00 $00
    dw   `33003300                                     ;; 0a:7cd2 $cc $cc
    dw   `22331130                                     ;; 0a:7cd4 $3e $f2
    dw   `32221130                                     ;; 0a:7cd6 $8e $f2
    dw   `32233130                                     ;; 0a:7cd8 $9e $fa
    dw   `22233113                                     ;; 0a:7cda $1f $f9
    dw   `22330313                                     ;; 0a:7cdc $37 $f5
    dw   `23030033                                     ;; 0a:7cde $53 $d3

    dw   `33003222                                     ;; 0a:7ce0 $c8 $cf
    dw   `31333323                                     ;; 0a:7ce2 $fd $bf
    dw   `31313131                                     ;; 0a:7ce4 $ff $aa
    dw   `31323212                                     ;; 0a:7ce6 $ea $bd
    dw   `31333323                                     ;; 0a:7ce8 $fd $bf
    dw   `31333233                                     ;; 0a:7cea $fb $bf
    dw   `31322123                                     ;; 0a:7cec $e5 $bb
    dw   `03331233                                     ;; 0a:7cee $7b $77

    dw   `33323300                                     ;; 0a:7cf0 $ec $fc
    dw   `32222300                                     ;; 0a:7cf2 $84 $fc
    dw   `23333000                                     ;; 0a:7cf4 $78 $f8
    dw   `33113300                                     ;; 0a:7cf6 $fc $cc
    dw   `33113300                                     ;; 0a:7cf8 $fc $cc
    dw   `32333230                                     ;; 0a:7cfa $ba $fe
    dw   `22123230                                     ;; 0a:7cfc $2a $de
    dw   `33233323                                     ;; 0a:7cfe $dd $ff


data_0a_7d00:
    dw   `00033333                                     ;; 0a:7d00 $1f $1f
    dw   `00032222                                     ;; 0a:7d02 $10 $1f
    dw   `00003232                                     ;; 0a:7d04 $0a $0f
    dw   `00032323                                     ;; 0a:7d06 $15 $1f
    dw   `03003321                                     ;; 0a:7d08 $4d $4e
    dw   `31333331                                     ;; 0a:7d0a $ff $be
    dw   `31113131                                     ;; 0a:7d0c $ff $8a
    dw   `33332311                                     ;; 0a:7d0e $f7 $fc

    dw   `33330000                                     ;; 0a:7d10 $f0 $f0
    dw   `22223000                                     ;; 0a:7d12 $08 $f8
    dw   `32223000                                     ;; 0a:7d14 $88 $f8
    dw   `11323000                                     ;; 0a:7d16 $e8 $38
    dw   `11323030                                     ;; 0a:7d18 $ea $3a
    dw   `33323313                                     ;; 0a:7d1a $ef $fd
    dw   `13131113                                     ;; 0a:7d1c $ff $51
    dw   `11323233                                     ;; 0a:7d1e $eb $3f

    dw   `03233233                                     ;; 0a:7d20 $5b $7f
    dw   `03333322                                     ;; 0a:7d22 $7c $7f
    dw   `31133133                                     ;; 0a:7d24 $ff $9b
    dw   `31133231                                     ;; 0a:7d26 $fb $9e
    dw   `33332231                                     ;; 0a:7d28 $f3 $fe
    dw   `32332231                                     ;; 0a:7d2a $b3 $fe
    dw   `32303232                                     ;; 0a:7d2c $aa $ef
    dw   `03333333                                     ;; 0a:7d2e $7f $7f

    dw   `33233130                                     ;; 0a:7d30 $de $fa
    dw   `22331213                                     ;; 0a:7d32 $3b $f5
    dw   `33133113                                     ;; 0a:7d34 $ff $d9
    dw   `32233333                                     ;; 0a:7d36 $9f $ff
    dw   `32223323                                     ;; 0a:7d38 $8d $ff
    dw   `33322323                                     ;; 0a:7d3a $e5 $ff
    dw   `31133323                                     ;; 0a:7d3c $fd $9f
    dw   `33333330                                     ;; 0a:7d3e $fe $fe

    dw   `00000333                                     ;; 0a:7d40 $07 $07
    dw   `00003222                                     ;; 0a:7d42 $08 $0f
    dw   `00003222                                     ;; 0a:7d44 $08 $0f
    dw   `00003222                                     ;; 0a:7d46 $08 $0f
    dw   `03003233                                     ;; 0a:7d48 $4b $4f
    dw   `31333311                                     ;; 0a:7d4a $ff $bc
    dw   `31113133                                     ;; 0a:7d4c $ff $8b
    dw   `33333333                                     ;; 0a:7d4e $ff $ff

    dw   `33333000                                     ;; 0a:7d50 $f8 $f8
    dw   `22223000                                     ;; 0a:7d52 $08 $f8
    dw   `22230000                                     ;; 0a:7d54 $10 $f0
    dw   `22223000                                     ;; 0a:7d56 $08 $f8
    dw   `33233030                                     ;; 0a:7d58 $da $fa
    dw   `11333313                                     ;; 0a:7d5a $ff $3d
    dw   `33131113                                     ;; 0a:7d5c $ff $d1
    dw   `33333333                                     ;; 0a:7d5e $ff $ff

    dw   `33333333                                     ;; 0a:7d60 $ff $ff
    dw   `33333333                                     ;; 0a:7d62 $ff $ff
    dw   `33333333                                     ;; 0a:7d64 $ff $ff
    dw   `33333333                                     ;; 0a:7d66 $ff $ff
    dw   `33333333                                     ;; 0a:7d68 $ff $ff
    dw   `33333333                                     ;; 0a:7d6a $ff $ff
    dw   `30000333                                     ;; 0a:7d6c $87 $87
    dw   `00000003                                     ;; 0a:7d6e $01 $01

    dw   `33333333                                     ;; 0a:7d70 $ff $ff
    dw   `33333333                                     ;; 0a:7d72 $ff $ff
    dw   `33332333                                     ;; 0a:7d74 $f7 $ff
    dw   `33223333                                     ;; 0a:7d76 $cf $ff
    dw   `22333333                                     ;; 0a:7d78 $3f $ff
    dw   `33333330                                     ;; 0a:7d7a $fe $fe
    dw   `33333300                                     ;; 0a:7d7c $fc $fc
    dw   `33333000                                     ;; 0a:7d7e $f8 $f8

    dw   `00333333                                     ;; 0a:7d80 $3f $3f
    dw   `03222222                                     ;; 0a:7d82 $40 $7f
    dw   `00322222                                     ;; 0a:7d84 $20 $3f
    dw   `03223111                                     ;; 0a:7d86 $4f $78
    dw   `03231123                                     ;; 0a:7d88 $5d $73
    dw   `00333331                                     ;; 0a:7d8a $3f $3e
    dw   `00031311                                     ;; 0a:7d8c $1f $14
    dw   `00031113                                     ;; 0a:7d8e $1f $11

    dw   `33000000                                     ;; 0a:7d90 $c0 $c0
    dw   `22300000                                     ;; 0a:7d92 $20 $e0
    dw   `22300000                                     ;; 0a:7d94 $20 $e0
    dw   `22300000                                     ;; 0a:7d96 $20 $e0
    dw   `12300000                                     ;; 0a:7d98 $a0 $60
    dw   `12300000                                     ;; 0a:7d9a $a0 $60
    dw   `33130000                                     ;; 0a:7d9c $f0 $d0
    dw   `11130000                                     ;; 0a:7d9e $f0 $10

    dw   `00033332                                     ;; 0a:7da0 $1e $1f
    dw   `00003223                                     ;; 0a:7da2 $09 $0f
    dw   `00000332                                     ;; 0a:7da4 $06 $07
    dw   `00003112                                     ;; 0a:7da6 $0e $09
    dw   `00003113                                     ;; 0a:7da8 $0f $09
    dw   `00000332                                     ;; 0a:7daa $06 $07
    dw   `00000313                                     ;; 0a:7dac $07 $05
    dw   `00033333                                     ;; 0a:7dae $1f $1f

    dw   `32233000                                     ;; 0a:7db0 $98 $f8
    dw   `33233300                                     ;; 0a:7db2 $dc $fc
    dw   `23323300                                     ;; 0a:7db4 $6c $fc
    dw   `23323300                                     ;; 0a:7db6 $6c $fc
    dw   `32323330                                     ;; 0a:7db8 $ae $fe
    dw   `22322333                                     ;; 0a:7dba $27 $ff
    dw   `22232223                                     ;; 0a:7dbc $11 $ff
    dw   `33333333                                     ;; 0a:7dbe $ff $ff

    dw   `00000000                                     ;; 0a:7dc0 $00 $00
    dw   `00333333                                     ;; 0a:7dc2 $3f $3f
    dw   `03222222                                     ;; 0a:7dc4 $40 $7f
    dw   `00322222                                     ;; 0a:7dc6 $20 $3f
    dw   `03223111                                     ;; 0a:7dc8 $4f $78
    dw   `03231123                                     ;; 0a:7dca $5d $73
    dw   `00333331                                     ;; 0a:7dcc $3f $3e
    dw   `00031311                                     ;; 0a:7dce $1f $14

    dw   `00000000                                     ;; 0a:7dd0 $00 $00
    dw   `33000000                                     ;; 0a:7dd2 $c0 $c0
    dw   `22300000                                     ;; 0a:7dd4 $20 $e0
    dw   `22300000                                     ;; 0a:7dd6 $20 $e0
    dw   `22300000                                     ;; 0a:7dd8 $20 $e0
    dw   `12300000                                     ;; 0a:7dda $a0 $60
    dw   `12333000                                     ;; 0a:7ddc $b8 $78
    dw   `33313000                                     ;; 0a:7dde $f8 $e8

    dw   `00031113                                     ;; 0a:7de0 $1f $11
    dw   `00003332                                     ;; 0a:7de2 $0e $0f
    dw   `00003223                                     ;; 0a:7de4 $09 $0f
    dw   `00000333                                     ;; 0a:7de6 $07 $07
    dw   `00000323                                     ;; 0a:7de8 $05 $07
    dw   `00003322                                     ;; 0a:7dea $0c $0f
    dw   `00031132                                     ;; 0a:7dec $1e $13
    dw   `00333333                                     ;; 0a:7dee $3f $3f

    dw   `31113000                                     ;; 0a:7df0 $f8 $88
    dw   `33323300                                     ;; 0a:7df2 $ec $fc
    dw   `22332330                                     ;; 0a:7df4 $36 $fe
    dw   `22232330                                     ;; 0a:7df6 $16 $fe
    dw   `31133233                                     ;; 0a:7df8 $fb $9f
    dw   `31133233                                     ;; 0a:7dfa $fb $9f
    dw   `23333233                                     ;; 0a:7dfc $7b $ff
    dw   `33333333                                     ;; 0a:7dfe $ff $ff

    dw   `00033333                                     ;; 0a:7e00 $1f $1f
    dw   `00032222                                     ;; 0a:7e02 $10 $1f
    dw   `00003232                                     ;; 0a:7e04 $0a $0f
    dw   `00032323                                     ;; 0a:7e06 $15 $1f
    dw   `03003321                                     ;; 0a:7e08 $4d $4e
    dw   `31333331                                     ;; 0a:7e0a $ff $be
    dw   `31113131                                     ;; 0a:7e0c $ff $8a
    dw   `33332311                                     ;; 0a:7e0e $f7 $fc

    dw   `33330000                                     ;; 0a:7e10 $f0 $f0
    dw   `22223000                                     ;; 0a:7e12 $08 $f8
    dw   `32223000                                     ;; 0a:7e14 $88 $f8
    dw   `11323000                                     ;; 0a:7e16 $e8 $38
    dw   `11323030                                     ;; 0a:7e18 $ea $3a
    dw   `33323313                                     ;; 0a:7e1a $ef $fd
    dw   `13131113                                     ;; 0a:7e1c $ff $51
    dw   `11323333                                     ;; 0a:7e1e $ef $3f

    dw   `03323233                                     ;; 0a:7e20 $6b $7f
    dw   `33222322                                     ;; 0a:7e22 $c4 $ff
    dw   `11122233                                     ;; 0a:7e24 $e3 $1f
    dw   `33133232                                     ;; 0a:7e26 $fa $df
    dw   `32333232                                     ;; 0a:7e28 $ba $ff
    dw   `32332231                                     ;; 0a:7e2a $b3 $fe
    dw   `32303232                                     ;; 0a:7e2c $aa $ef
    dw   `03333333                                     ;; 0a:7e2e $7f $7f

    dw   `33233230                                     ;; 0a:7e30 $da $fe
    dw   `22322333                                     ;; 0a:7e32 $27 $ff
    dw   `33221113                                     ;; 0a:7e34 $cf $f1
    dw   `23231333                                     ;; 0a:7e36 $5f $f7
    dw   `23223323                                     ;; 0a:7e38 $4d $ff
    dw   `13222323                                     ;; 0a:7e3a $c5 $7f
    dw   `23223323                                     ;; 0a:7e3c $4d $ff
    dw   `33333330                                     ;; 0a:7e3e $fe $fe

    dw   `00333333                                     ;; 0a:7e40 $3f $3f
    dw   `03222222                                     ;; 0a:7e42 $40 $7f
    dw   `00332312                                     ;; 0a:7e44 $36 $3d
    dw   `33323111                                     ;; 0a:7e46 $ef $f8
    dw   `31323123                                     ;; 0a:7e48 $ed $bb
    dw   `31333331                                     ;; 0a:7e4a $ff $be
    dw   `03231311                                     ;; 0a:7e4c $5f $74
    dw   `03231113                                     ;; 0a:7e4e $5f $71

    dw   `33000000                                     ;; 0a:7e50 $c0 $c0
    dw   `22300000                                     ;; 0a:7e52 $20 $e0
    dw   `22333000                                     ;; 0a:7e54 $38 $f8
    dw   `22311300                                     ;; 0a:7e56 $3c $e4
    dw   `31311300                                     ;; 0a:7e58 $fc $a4
    dw   `13313000                                     ;; 0a:7e5a $f8 $68
    dw   `33133000                                     ;; 0a:7e5c $f8 $d8
    dw   `13111300                                     ;; 0a:7e5e $fc $44

    dw   `00333331                                     ;; 0a:7e60 $3f $3e
    dw   `00332232                                     ;; 0a:7e62 $32 $3f
    dw   `00031322                                     ;; 0a:7e64 $1c $17
    dw   `00033113                                     ;; 0a:7e66 $1f $19
    dw   `00032232                                     ;; 0a:7e68 $12 $1f
    dw   `00032232                                     ;; 0a:7e6a $12 $1f
    dw   `00311132                                     ;; 0a:7e6c $3e $23
    dw   `00333333                                     ;; 0a:7e6e $3f $3f

    dw   `32223000                                     ;; 0a:7e70 $88 $f8
    dw   `32230000                                     ;; 0a:7e72 $90 $f0
    dw   `23330000                                     ;; 0a:7e74 $70 $f0
    dw   `33233330                                     ;; 0a:7e76 $de $fe
    dw   `23323333                                     ;; 0a:7e78 $6f $ff
    dw   `22332233                                     ;; 0a:7e7a $33 $ff
    dw   `22233323                                     ;; 0a:7e7c $1d $ff
    dw   `33333333                                     ;; 0a:7e7e $ff $ff

    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7e80 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7e88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7e90 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7e98 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ea0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ea8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7eb0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7eb8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ec0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ec8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ed0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ed8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ee0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ee8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ef0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7ef8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7f00 ????????
    db   $0f, $0f, $1e, $12, $1c, $14, $38, $28        ;; 0a:7f08 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7f10 ????????
    db   $70, $70, $f8, $c8, $38, $28, $1c, $14        ;; 0a:7f18 ????????
    db   $70, $50, $ec, $9c, $78, $68, $3c, $34        ;; 0a:7f20 ????????
    db   $1e, $1a, $7b, $7d, $1f, $1f, $00, $00        ;; 0a:7f28 ????????
    db   $0e, $0a, $37, $39, $1e, $16, $3c, $2c        ;; 0a:7f30 ????????
    db   $78, $58, $de, $be, $f8, $f8, $00, $00        ;; 0a:7f38 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7f40 ????????
    db   $00, $00, $00, $00, $03, $03, $1f, $1c        ;; 0a:7f48 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7f50 ????????
    db   $00, $00, $00, $00, $f0, $f0, $f8, $08        ;; 0a:7f58 ????????
    db   $3f, $21, $1b, $17, $1c, $14, $1c, $14        ;; 0a:7f60 ????????
    db   $3a, $36, $67, $7f, $3e, $3e, $00, $00        ;; 0a:7f68 ????????
    db   $fc, $fc, $32, $d2, $e8, $d8, $38, $28        ;; 0a:7f70 ????????
    db   $5c, $6c, $e6, $fe, $7c, $7c, $00, $00        ;; 0a:7f78 ????????
    db   $01, $01, $06, $07, $0f, $0f, $10, $1f        ;; 0a:7f80 ????????
    db   $20, $3f, $2f, $3f, $3f, $39, $ef, $f9        ;; 0a:7f88 ????????
    db   $e0, $e0, $10, $f0, $08, $f8, $86, $fe        ;; 0a:7f90 ????????
    db   $41, $ff, $0d, $ff, $9a, $fe, $df, $f7        ;; 0a:7f98 ????????
    db   $f7, $9f, $f8, $bf, $f7, $97, $7f, $4f        ;; 0a:7fa0 ????????
    db   $3f, $3d, $0b, $0f, $1f, $1c, $0f, $0f        ;; 0a:7fa8 ????????
    db   $37, $f9, $fb, $fd, $ff, $c3, $f6, $ee        ;; 0a:7fb0 ????????
    db   $fa, $1e, $e4, $fc, $ce, $3e, $fc, $fc        ;; 0a:7fb8 ????????
    db   $00, $00, $01, $01, $06, $07, $0f, $0f        ;; 0a:7fc0 ????????
    db   $10, $1f, $20, $3f, $20, $3f, $5f, $7f        ;; 0a:7fc8 ????????
    db   $00, $00, $e0, $e0, $10, $f0, $08, $f8        ;; 0a:7fd0 ????????
    db   $84, $fc, $42, $fe, $01, $ff, $0d, $ff        ;; 0a:7fd8 ????????
    db   $7f, $79, $2f, $3f, $30, $3f, $3f, $2f        ;; 0a:7fe0 ????????
    db   $27, $3e, $1f, $1f, $3f, $20, $1f, $1f        ;; 0a:7fe8 ????????
    db   $bf, $ff, $59, $ef, $ea, $de, $d2, $be        ;; 0a:7ff0 ????????
    db   $bc, $7c, $a4, $7c, $ce, $7e, $fc, $fc        ;; 0a:7ff8 ????????
