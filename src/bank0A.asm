;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

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

;@gfximg name=enemy/pakkun_lizard width=2 height=10
gfxEnemyPakkunLizard:
    INCBIN "enemy/pakkun_lizard.bin"                   ;; 0a:7440

;@gfximg name=enemy/magician width=2 height=12
gfxEnemyMagician:
    INCBIN "enemy/magician.bin"                        ;; 0a:7580

;@gfximg name=enemy/death_gauntlet width=2 height=12
gfxEnemyDeathGauntlet:
    INCBIN "enemy/death_gauntlet.bin"                  ;; 0a:7700

;@gfximg name=enemy/wizard width=2 height=12
gfxEnemyWizard:
    INCBIN "enemy/wizard.bin"                          ;; 0a:7880

;@gfximg name=enemy/dark_stalker width=2 height=12
gfxEnemyDarkStalker:
    INCBIN "enemy/dark_stalker.bin"                    ;; 0a:7a00

;@gfximg name=enemy/dark_lord width=2 height=12
gfxEnemyDarkLord:
    INCBIN "enemy/dark_lord.bin"                       ;; 0a:7b80

;@gfximg name=enemy/julius width=2 height=12
gfxEnemyJulius:
    INCBIN "enemy/julius.bin"                          ;; 0a:7d00
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
