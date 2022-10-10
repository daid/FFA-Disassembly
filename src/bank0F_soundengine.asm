;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank0f", ROMX[$4000], BANK[$0f]

runSoundEngine:
    jr   runSoundEngineReal                            ;; 0f:4000 $18 $04
    db   $00                                           ;; 0f:4002 ?

initSoundEngine:
    jr   initSoundEngineReal                           ;; 0f:4003 $18 $43
    db   $00                                           ;; 0f:4005 ?

runSoundEngineReal:
    push AF                                            ;; 0f:4006 $f5
    push BC                                            ;; 0f:4007 $c5
    push DE                                            ;; 0f:4008 $d5
    push HL                                            ;; 0f:4009 $e5
    ldh  A, [hFF91]                                    ;; 0f:400a $f0 $91
    or   A, A                                          ;; 0f:400c $b7
    jr   Z, .jr_0f_401e                                ;; 0f:400d $28 $0f
    ldh  A, [hFF99]                                    ;; 0f:400f $f0 $99
    or   A, A                                          ;; 0f:4011 $b7
    jr   Z, .jr_0f_4019                                ;; 0f:4012 $28 $05
    call call_0f_4110                                  ;; 0f:4014 $cd $10 $41
    jr   .jr_0f_403d                                   ;; 0f:4017 $18 $24
.jr_0f_4019:
    call call_0f_40ee                                  ;; 0f:4019 $cd $ee $40
    jr   .jr_0f_403d                                   ;; 0f:401c $18 $1f
.jr_0f_401e:
    ldh  A, [hFF99]                                    ;; 0f:401e $f0 $99
    or   A, A                                          ;; 0f:4020 $b7
    jr   Z, .jr_0f_4028                                ;; 0f:4021 $28 $05
    call call_0f_4120                                  ;; 0f:4023 $cd $20 $41
    jr   .jr_0f_403d                                   ;; 0f:4026 $18 $15
.jr_0f_4028:
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4028 $fa $1a $c1
    or   A, A                                          ;; 0f:402b $b7
    jr   NZ, .jr_0f_4037                               ;; 0f:402c $20 $09
    ldh  A, [hPlayingMusic]                            ;; 0f:402e $f0 $93
    ld   B, A                                          ;; 0f:4030 $47
    ldh  A, [hCurrentMusic]                            ;; 0f:4031 $f0 $90
    cp   A, B                                          ;; 0f:4033 $b8
    call NZ, musicSongInit                             ;; 0f:4034 $c4 $9e $40
.jr_0f_4037:
    ldh  A, [hSFX]                                     ;; 0f:4037 $f0 $92
    or   A, A                                          ;; 0f:4039 $b7
    call NZ, soundEffectPlay                           ;; 0f:403a $c4 $3c $49
.jr_0f_403d:
    call musicPlayStep                                 ;; 0f:403d $cd $57 $42
    call soundEffectPlayStep                           ;; 0f:4040 $cd $65 $49
    pop  HL                                            ;; 0f:4043 $e1
    pop  DE                                            ;; 0f:4044 $d1
    pop  BC                                            ;; 0f:4045 $c1
    pop  AF                                            ;; 0f:4046 $f1
    ret                                                ;; 0f:4047 $c9

initSoundEngineReal:
    ld   A, $ff                                        ;; 0f:4048 $3e $ff
    ldh  [rNR52], A                                    ;; 0f:404a $e0 $26
    call musicInitChannels                             ;; 0f:404c $cd $84 $40
    ld   A, $ff                                        ;; 0f:404f $3e $ff
    ld   [wMusicEndedOnChannel2], A                    ;; 0f:4051 $ea $13 $c1
    ld   [wMusicEndedOnChannel1], A                    ;; 0f:4054 $ea $2b $c1
    ld   [wMusicEndedOnChannel3], A                    ;; 0f:4057 $ea $43 $c1
    ld   [wMusicEndedOnChannel4], A                    ;; 0f:405a $ea $5b $c1
    ld   A, $10                                        ;; 0f:405d $3e $10
    ldh  [rNR12], A                                    ;; 0f:405f $e0 $12
    ldh  [rNR22], A                                    ;; 0f:4061 $e0 $17
    ldh  [rNR32], A                                    ;; 0f:4063 $e0 $1c
    ldh  [rNR42], A                                    ;; 0f:4065 $e0 $21
    call muteSoundEngine                               ;; 0f:4067 $cd $d1 $40
    xor  A, A                                          ;; 0f:406a $af
    ld   [wSoundEffectDurrationChannel1], A            ;; 0f:406b $ea $1a $c1
    ld   A, $77                                        ;; 0f:406e $3e $77
    ldh  [rNR50], A                                    ;; 0f:4070 $e0 $24
    ld   A, $ff                                        ;; 0f:4072 $3e $ff
    ldh  [rNR51], A                                    ;; 0f:4074 $e0 $25
    ld   HL, hCurrentMusic                             ;; 0f:4076 $21 $90 $ff
    ld   C, $10                                        ;; 0f:4079 $0e $10
    xor  A, A                                          ;; 0f:407b $af
.jr_0f_407c:
    ld   [HL+], A                                      ;; 0f:407c $22
    dec  C                                             ;; 0f:407d $0d
    jr   NZ, .jr_0f_407c                               ;; 0f:407e $20 $fc
    ld   [wC1C8], A                                    ;; 0f:4080 $ea $c8 $c1
    ret                                                ;; 0f:4083 $c9

;
musicInitChannels:
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:4084 $21 $00 $c1
    ld   A, $ff                                        ;; 0f:4087 $3e $ff
    ld   [HL+], A                                      ;; 0f:4089 $22
    ld   A, $3c                                        ;; 0f:408a $3e $3c
    ld   [HL+], A                                      ;; 0f:408c $22
    ld   B, $03                                        ;; 0f:408d $06 $03
.jr_0f_408f:
    ld   DE, musicChannelInitData                      ;; 0f:408f $11 $7a $41
    ld   C, $18                                        ;; 0f:4092 $0e $18
.jr_0f_4094:
    ld   A, [DE]                                       ;; 0f:4094 $1a
    ld   [HL+], A                                      ;; 0f:4095 $22
    inc  E                                             ;; 0f:4096 $1c
    dec  C                                             ;; 0f:4097 $0d
    jr   NZ, .jr_0f_4094                               ;; 0f:4098 $20 $fa
    dec  B                                             ;; 0f:409a $05
    jr   NZ, .jr_0f_408f                               ;; 0f:409b $20 $f2
    ret                                                ;; 0f:409d $c9

musicSongInit:
    ldh  [hPlayingMusic], A                            ;; 0f:409e $e0 $93
    or   A, A                                          ;; 0f:40a0 $b7
    jr   NZ, musicSongPlay                             ;; 0f:40a1 $20 $04
    call initSoundEngineReal                           ;; 0f:40a3 $cd $48 $40
    ret                                                ;; 0f:40a6 $c9

musicSongPlay:
    push AF                                            ;; 0f:40a7 $f5
    call musicInitChannels                             ;; 0f:40a8 $cd $84 $40
    pop  AF                                            ;; 0f:40ab $f1
    dec  A                                             ;; 0f:40ac $3d
    ld   E, A                                          ;; 0f:40ad $5f
    add  A, A                                          ;; 0f:40ae $87
    add  A, E                                          ;; 0f:40af $83
    add  A, A                                          ;; 0f:40b0 $87
    ld   HL, musicSongChannelPointers                  ;; 0f:40b1 $21 $12 $4a
    ld   E, A                                          ;; 0f:40b4 $5f
    ld   D, $00                                        ;; 0f:40b5 $16 $00
    add  HL, DE                                        ;; 0f:40b7 $19
    ld   A, [HL+]                                      ;; 0f:40b8 $2a
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:40b9 $ea $04 $c1
    ld   A, [HL+]                                      ;; 0f:40bc $2a
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:40bd $ea $05 $c1
    ld   A, [HL+]                                      ;; 0f:40c0 $2a
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:40c1 $ea $1c $c1
    ld   A, [HL+]                                      ;; 0f:40c4 $2a
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:40c5 $ea $1d $c1
    ld   A, [HL+]                                      ;; 0f:40c8 $2a
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:40c9 $ea $34 $c1
    ld   A, [HL+]                                      ;; 0f:40cc $2a
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:40cd $ea $35 $c1
    ret                                                ;; 0f:40d0 $c9

muteSoundEngine:
    xor  A, A                                          ;; 0f:40d1 $af
    ldh  [rNR10], A                                    ;; 0f:40d2 $e0 $10
    ld   A, $ff                                        ;; 0f:40d4 $3e $ff
    ldh  [rNR13], A                                    ;; 0f:40d6 $e0 $13
    ldh  [rNR23], A                                    ;; 0f:40d8 $e0 $18
    ldh  [rNR31], A                                    ;; 0f:40da $e0 $1b
    ldh  [rNR33], A                                    ;; 0f:40dc $e0 $1d
    ld   A, $07                                        ;; 0f:40de $3e $07
    ldh  [rNR14], A                                    ;; 0f:40e0 $e0 $14
    ldh  [rNR24], A                                    ;; 0f:40e2 $e0 $19
    ldh  [rNR34], A                                    ;; 0f:40e4 $e0 $1e
    xor  A, A                                          ;; 0f:40e6 $af
    ldh  [rNR42], A                                    ;; 0f:40e7 $e0 $21
    ld   A, $80                                        ;; 0f:40e9 $3e $80
    ldh  [rNR44], A                                    ;; 0f:40eb $e0 $23
    ret                                                ;; 0f:40ed $c9

call_0f_40ee:
    call muteSoundEngine                               ;; 0f:40ee $cd $d1 $40
    xor  A, A                                          ;; 0f:40f1 $af
    ld   [wSoundEffectDurrationChannel1], A            ;; 0f:40f2 $ea $1a $c1
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:40f5 $ea $4a $c1
    ld   C, $62                                        ;; 0f:40f8 $0e $62
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:40fa $21 $00 $c1
    ld   DE, wC162                                     ;; 0f:40fd $11 $62 $c1
.jr_0f_4100:
    ld   A, [HL+]                                      ;; 0f:4100 $2a
    ld   [DE], A                                       ;; 0f:4101 $12
    inc  E                                             ;; 0f:4102 $1c
    dec  C                                             ;; 0f:4103 $0d
    jr   NZ, .jr_0f_4100                               ;; 0f:4104 $20 $fa
    ldh  A, [hFF91]                                    ;; 0f:4106 $f0 $91
    call musicSongPlay                                 ;; 0f:4108 $cd $a7 $40
    ld   A, $01                                        ;; 0f:410b $3e $01
    ldh  [hFF99], A                                    ;; 0f:410d $e0 $99
    ret                                                ;; 0f:410f $c9

call_0f_4110:
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:4110 $fa $13 $c1
    ld   E, A                                          ;; 0f:4113 $5f
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:4114 $fa $2b $c1
    ld   D, A                                          ;; 0f:4117 $57
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:4118 $fa $43 $c1
    and  A, D                                          ;; 0f:411b $a2
    and  A, E                                          ;; 0f:411c $a3
    cp   A, $ff                                        ;; 0f:411d $fe $ff
    ret  NZ                                            ;; 0f:411f $c0

call_0f_4120:
    call muteSoundEngine                               ;; 0f:4120 $cd $d1 $40
    ld   C, $62                                        ;; 0f:4123 $0e $62
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:4125 $21 $00 $c1
    ld   DE, wC162                                     ;; 0f:4128 $11 $62 $c1
.jr_0f_412b:
    ld   A, [DE]                                       ;; 0f:412b $1a
    ld   [HL+], A                                      ;; 0f:412c $22
    inc  E                                             ;; 0f:412d $1c
    dec  C                                             ;; 0f:412e $0d
    jr   NZ, .jr_0f_412b                               ;; 0f:412f $20 $fa
    xor  A, A                                          ;; 0f:4131 $af
    ldh  [hFF91], A                                    ;; 0f:4132 $e0 $91
    ldh  [hFF99], A                                    ;; 0f:4134 $e0 $99
    ld   A, [wC10C]                                    ;; 0f:4136 $fa $0c $c1
    ldh  [rNR21], A                                    ;; 0f:4139 $e0 $16
    ld   A, [wC110]                                    ;; 0f:413b $fa $10 $c1
    ldh  [rNR22], A                                    ;; 0f:413e $e0 $17
    ld   A, $87                                        ;; 0f:4140 $3e $87
    ldh  [rNR24], A                                    ;; 0f:4142 $e0 $19
    ldh  A, [hFF9A]                                    ;; 0f:4144 $f0 $9a
    ld   L, A                                          ;; 0f:4146 $6f
    ldh  A, [hFF9B]                                    ;; 0f:4147 $f0 $9b
    ld   H, A                                          ;; 0f:4149 $67
    call call_0f_47ad                                  ;; 0f:414a $cd $ad $47

soundEffectRestoreChannel1:
    xor  A, A                                          ;; 0f:414d $af
    ldh  [rNR10], A                                    ;; 0f:414e $e0 $10
    ld   A, [wC124]                                    ;; 0f:4150 $fa $24 $c1
    ldh  [rNR11], A                                    ;; 0f:4153 $e0 $11
    ld   A, [wC128]                                    ;; 0f:4155 $fa $28 $c1
    ldh  [rNR12], A                                    ;; 0f:4158 $e0 $12
    ld   A, [wC1C9]                                    ;; 0f:415a $fa $c9 $c1
    ldh  [rNR13], A                                    ;; 0f:415d $e0 $13
    ld   A, [wC1CA]                                    ;; 0f:415f $fa $ca $c1
    ldh  [rNR14], A                                    ;; 0f:4162 $e0 $14
    ld   A, [wC12A]                                    ;; 0f:4164 $fa $2a $c1
    ld   E, A                                          ;; 0f:4167 $5f
    ldh  A, [rNR51]                                    ;; 0f:4168 $f0 $25
    and  A, $ee                                        ;; 0f:416a $e6 $ee
    or   A, E                                          ;; 0f:416c $b3
    ldh  [rNR51], A                                    ;; 0f:416d $e0 $25
    ret                                                ;; 0f:416f $c9

soundEffectMuteChannel4:
    xor  A, A                                          ;; 0f:4170 $af
    ldh  [rNR42], A                                    ;; 0f:4171 $e0 $21
    ldh  [rNR43], A                                    ;; 0f:4173 $e0 $22
    ld   A, $80                                        ;; 0f:4175 $3e $80
    ldh  [rNR44], A                                    ;; 0f:4177 $e0 $23
    ret                                                ;; 0f:4179 $c9

; Gets loaded into the runtime for each of channel 1, 2, and 3.
;@data format=b amount=24
musicChannelInitData:
    db   $00                                           ;; 0f:417a . $00
    db   $01                                           ;; 0f:417b . $01
    db   $00                                           ;; 0f:417c . $02
    db   $00                                           ;; 0f:417d . $03
    db   $14                                           ;; 0f:417e . $04
    db   $92                                           ;; 0f:417f . $05
    db   $41                                           ;; 0f:4180 . $06
    db   $92                                           ;; 0f:4181 . $07
    db   $41                                           ;; 0f:4182 . $08
    db   $60                                           ;; 0f:4183 . $09
    db   $00                                           ;; 0f:4184 . $0a
    db   $00                                           ;; 0f:4185 . $0b
    db   $00                                           ;; 0f:4186 . $0c
    db   $00                                           ;; 0f:4187 . $0d
    db   $10                                           ;; 0f:4188 . $0e
    db   $0f                                           ;; 0f:4189 . $0f
    db   $00                                           ;; 0f:418a . $10
    db   $00                                           ;; 0f:418b . $11
    db   $01                                           ;; 0f:418c . $12
    db   $9b                                           ;; 0f:418d . $13
    db   $41                                           ;; 0f:418e . $14
    db   $9b                                           ;; 0f:418f . $15
    db   $41                                           ;; 0f:4190 . $16
    db   $00                                           ;; 0f:4191 . $17
    db   $0a, $00, $02, $01, $02, $00, $00, $94        ;; 0f:4192 ????????
    db   $41, $ff, $f0, $00, $9b, $41                  ;; 0f:419a ??????

data_0f_41a0:
    db   $2c, $80, $9d, $80, $07, $81, $6b, $81        ;; 0f:41a0 ????????
    db   $c9, $81, $23, $82, $77, $82, $c7, $82        ;; 0f:41a8 ????????
    db   $12, $83, $58, $83, $9b, $83, $da, $83        ;; 0f:41b0 ??????..
    db   $16, $84, $4e, $84, $83, $84, $b5, $84        ;; 0f:41b8 ....????
    db   $e5, $84, $11, $85, $3b, $85, $63, $85        ;; 0f:41c0 ........
    db   $89, $85, $ac, $85, $ce, $85, $ed, $85        ;; 0f:41c8 ........
    db   $0b, $86, $27, $86, $42, $86, $5b, $86        ;; 0f:41d0 ........
    db   $72, $86, $89, $86, $9e, $86, $b2, $86        ;; 0f:41d8 ........
    db   $c4, $86, $d6, $86, $e7, $86, $f7, $86        ;; 0f:41e0 ........
    db   $06, $87, $14, $87, $21, $87, $2d, $87        ;; 0f:41e8 ........
    db   $39, $87, $44, $87, $4f, $87, $59, $87        ;; 0f:41f0 ........
    db   $62, $87, $6b, $87, $73, $87, $7b, $87        ;; 0f:41f8 ........
    db   $83, $87, $8a, $87, $90, $87, $97, $87        ;; 0f:4200 ..??????
    db   $9d, $87, $a2, $87, $a7, $87, $ac, $87        ;; 0f:4208 ????????
    db   $b1, $87, $b6, $87, $ba, $87, $be, $87        ;; 0f:4210 ????????
    db   $c1, $87, $c5, $87, $c8, $87, $cb, $87        ;; 0f:4218 ????????
    db   $ce, $87, $d1, $87, $d4, $87, $d6, $87        ;; 0f:4220 ????????
    db   $d9, $87, $db, $87, $dd, $87, $df, $87        ;; 0f:4228 ????????
    db   $e1, $87, $e2, $87, $e4, $87, $e6, $87        ;; 0f:4230 ????????
    db   $e7, $87, $e9, $87, $ea, $87, $eb, $87        ;; 0f:4238 ????????
    db   $ec, $87, $ed, $87, $ee, $87, $ef, $87        ;; 0f:4240 ????????
    db   $f0, $87                                      ;; 0f:4248 ??

musicNoteDurations:
    db   $60, $48, $30, $20, $24, $18, $10, $12        ;; 0f:424a ...?....
    db   $0c, $08, $06, $04, $03                       ;; 0f:4252 .?...

musicPlayStep:
    ld   A, [wMusicTempoTimeCounter]                   ;; 0f:4257 $fa $00 $c1
    ld   B, A                                          ;; 0f:425a $47
    ld   A, [wMusicTempo]                              ;; 0f:425b $fa $01 $c1
    add  A, B                                          ;; 0f:425e $80
    ld   [wMusicTempoTimeCounter], A                   ;; 0f:425f $ea $00 $c1
    jr   NC, .jr_0f_426e                               ;; 0f:4262 $30 $0a
    call call_0f_428b                                  ;; 0f:4264 $cd $8b $42
    ld   A, [wC1C8]                                    ;; 0f:4267 $fa $c8 $c1
    or   A, A                                          ;; 0f:426a $b7
    call call_0f_428b                                  ;; 0f:426b $cd $8b $42
.jr_0f_426e:
    ldh  A, [hFF94]                                    ;; 0f:426e $f0 $94
    inc  A                                             ;; 0f:4270 $3c
    cp   A, $03                                        ;; 0f:4271 $fe $03
    jr   NZ, .jr_0f_4276                               ;; 0f:4273 $20 $01
    xor  A, A                                          ;; 0f:4275 $af
.jr_0f_4276:
    ldh  [hFF94], A                                    ;; 0f:4276 $e0 $94
    or   A, A                                          ;; 0f:4278 $b7
    call Z, call_0f_47ef                               ;; 0f:4279 $cc $ef $47
    ldh  A, [hFF94]                                    ;; 0f:427c $f0 $94
    cp   A, $01                                        ;; 0f:427e $fe $01
    call Z, call_0f_4869                               ;; 0f:4280 $cc $69 $48
    ldh  A, [hFF94]                                    ;; 0f:4283 $f0 $94
    cp   A, $02                                        ;; 0f:4285 $fe $02
    call Z, call_0f_48e3                               ;; 0f:4287 $cc $e3 $48
    ret                                                ;; 0f:428a $c9

call_0f_428b:
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:428b $fa $13 $c1
    cp   A, $ff                                        ;; 0f:428e $fe $ff
    jp   Z, jp_0f_44e2                                 ;; 0f:4290 $ca $e2 $44
    ld   A, [wMusicNoteDurationChannel2]               ;; 0f:4293 $fa $03 $c1
    dec  A                                             ;; 0f:4296 $3d
    ld   [wMusicNoteDurationChannel2], A               ;; 0f:4297 $ea $03 $c1
    ldh  [hFF95], A                                    ;; 0f:429a $e0 $95
    jp   NZ, jp_0f_44e2                                ;; 0f:429c $c2 $e2 $44

jp_0f_429f:
    call getNextMusicInstructionChannel2               ;; 0f:429f $cd $d9 $47
    ld   E, A                                          ;; 0f:42a2 $5f
    cp   A, $d0                                        ;; 0f:42a3 $fe $d0
    jr   NC, .notNote                                  ;; 0f:42a5 $30 $6a
    and  A, $f0                                        ;; 0f:42a7 $e6 $f0
    swap A                                             ;; 0f:42a9 $cb $37
    ld   C, A                                          ;; 0f:42ab $4f
    ld   HL, musicNoteDurations                        ;; 0f:42ac $21 $4a $42
    ld   B, $00                                        ;; 0f:42af $06 $00
    add  HL, BC                                        ;; 0f:42b1 $09
    ld   A, [HL]                                       ;; 0f:42b2 $7e
    ld   [wMusicNoteDurationChannel2], A               ;; 0f:42b3 $ea $03 $c1
    ld   A, E                                          ;; 0f:42b6 $7b
    and  A, $0f                                        ;; 0f:42b7 $e6 $0f
    ld   [wMusicNotePitchChannel2], A                  ;; 0f:42b9 $ea $11 $c1
    cp   A, $0e                                        ;; 0f:42bc $fe $0e
    jp   Z, jp_0f_44e2                                 ;; 0f:42be $ca $e2 $44
    cp   A, $0f                                        ;; 0f:42c1 $fe $0f
    jr   NZ, .jr_0f_42d0                               ;; 0f:42c3 $20 $0b
; Rest note by maxing frequency
    ld   A, $ff                                        ;; 0f:42c5 $3e $ff
    ldh  [rNR23], A                                    ;; 0f:42c7 $e0 $18
    ld   A, $07                                        ;; 0f:42c9 $3e $07
    ldh  [rNR24], A                                    ;; 0f:42cb $e0 $19
    jp   jp_0f_44e2                                    ;; 0f:42cd $c3 $e2 $44
.jr_0f_42d0:
    add  A, A                                          ;; 0f:42d0 $87
    ld   E, A                                          ;; 0f:42d1 $5f
    ld   A, [wMusicOctiveChannel2]                     ;; 0f:42d2 $fa $0b $c1
    add  A, E                                          ;; 0f:42d5 $83
    ld   E, A                                          ;; 0f:42d6 $5f
    ld   D, $00                                        ;; 0f:42d7 $16 $00
    ld   HL, data_0f_41a0                              ;; 0f:42d9 $21 $a0 $41
    add  HL, DE                                        ;; 0f:42dc $19
    push HL                                            ;; 0f:42dd $e5
    ld   A, [wC115]                                    ;; 0f:42de $fa $15 $c1
    ld   L, A                                          ;; 0f:42e1 $6f
    ld   A, [wC116]                                    ;; 0f:42e2 $fa $16 $c1
    ld   H, A                                          ;; 0f:42e5 $67
    ld   A, [HL+]                                      ;; 0f:42e6 $2a
    ld   [wC114], A                                    ;; 0f:42e7 $ea $14 $c1
    ld   A, [HL+]                                      ;; 0f:42ea $2a
    ldh  [rNR22], A                                    ;; 0f:42eb $e0 $17
    ld   A, L                                          ;; 0f:42ed $7d
    ld   A, [wC117]                                    ;; 0f:42ee $fa $17 $c1
    ld   A, H                                          ;; 0f:42f1 $7c
    ld   A, [wC118]                                    ;; 0f:42f2 $fa $18 $c1
    pop  HL                                            ;; 0f:42f5 $e1
    ld   A, [HL+]                                      ;; 0f:42f6 $2a
    ldh  [rNR23], A                                    ;; 0f:42f7 $e0 $18
    ld   [wC10D], A                                    ;; 0f:42f9 $ea $0d $c1
    ld   A, [HL]                                       ;; 0f:42fc $7e
    ldh  [rNR24], A                                    ;; 0f:42fd $e0 $19
    ld   [wC10E], A                                    ;; 0f:42ff $ea $0e $c1
    ld   HL, wC106                                     ;; 0f:4302 $21 $06 $c1
    call call_0f_47c8                                  ;; 0f:4305 $cd $c8 $47
    ld   HL, wC114                                     ;; 0f:4308 $21 $14 $c1
    call call_0f_47c8                                  ;; 0f:430b $cd $c8 $47
    jp   jp_0f_44e2                                    ;; 0f:430e $c3 $e2 $44
.notNote:
    cp   A, $ff                                        ;; 0f:4311 $fe $ff
    jr   NZ, jp_0f_429f.notTerminator                  ;; 0f:4313 $20 $0c
    ld   [wMusicEndedOnChannel2], A                    ;; 0f:4315 $ea $13 $c1
    ldh  [rNR23], A                                    ;; 0f:4318 $e0 $18
    ld   A, $07                                        ;; 0f:431a $3e $07
    ldh  [rNR24], A                                    ;; 0f:431c $e0 $19
    jp   jp_0f_44e2                                    ;; 0f:431e $c3 $e2 $44
.notTerminator:
    cp   A, $e0                                        ;; 0f:4321 $fe $e0
    jr   NC, jp_0f_429f.opCode                         ;; 0f:4323 $30 $26
; Octive change
    bit  3, A                                          ;; 0f:4325 $cb $5f
    jr   NZ, jp_0f_429f.relativeOctive                 ;; 0f:4327 $20 $0e
    and  A, $07                                        ;; 0f:4329 $e6 $07
    add  A, A                                          ;; 0f:432b $87
    add  A, A                                          ;; 0f:432c $87
    add  A, A                                          ;; 0f:432d $87
    ld   E, A                                          ;; 0f:432e $5f
    add  A, A                                          ;; 0f:432f $87
    add  A, E                                          ;; 0f:4330 $83
    ld   [wMusicOctiveChannel2], A                     ;; 0f:4331 $ea $0b $c1
    jp   jp_0f_429f                                    ;; 0f:4334 $c3 $9f $42
.relativeOctive:
    and  A, $07                                        ;; 0f:4337 $e6 $07
    ld   E, A                                          ;; 0f:4339 $5f
    ld   D, $00                                        ;; 0f:433a $16 $00
    ld   HL, data_0f_47d1                              ;; 0f:433c $21 $d1 $47
    add  HL, DE                                        ;; 0f:433f $19
    ld   E, [HL]                                       ;; 0f:4340 $5e
    ld   A, [wMusicOctiveChannel2]                     ;; 0f:4341 $fa $0b $c1
    add  A, E                                          ;; 0f:4344 $83
    ld   [wMusicOctiveChannel2], A                     ;; 0f:4345 $ea $0b $c1
    jp   jp_0f_429f                                    ;; 0f:4348 $c3 $9f $42
.opCode:
    and  A, $0f                                        ;; 0f:434b $e6 $0f
    add  A, A                                          ;; 0f:434d $87
    ld   HL, musicOpCodeTableChannel2                  ;; 0f:434e $21 $65 $43
    ld   E, A                                          ;; 0f:4351 $5f
    ld   D, $00                                        ;; 0f:4352 $16 $00
    add  HL, DE                                        ;; 0f:4354 $19
    call musicCallOpCode                               ;; 0f:4355 $cd $5b $43
    jp   jp_0f_429f                                    ;; 0f:4358 $c3 $9f $42

musicCallOpCode:
    ld   A, [HL+]                                      ;; 0f:435b $2a
    ld   E, A                                          ;; 0f:435c $5f
    ld   A, [HL]                                       ;; 0f:435d $7e
    ld   H, A                                          ;; 0f:435e $67
    ld   L, E                                          ;; 0f:435f $6b
    jp   HL                                            ;; 0f:4360 $e9

musicOpCodeHalt:
    jp   musicOpCodeHalt                               ;; 0f:4361 $c3 $61 $43
    db   $c9                                           ;; 0f:4364 ?

;@jumptable amount=13
; Jump table for $E0-$ED music "opcodes", guess is that these are flow control codes.
musicOpCodeTableChannel2:
    dw   call_0f_4386                                  ;; 0f:4365 pP
    dw   musicOpCodeChannel2Jump                       ;; 0f:4367 pP
    dw   musicOpCodeChannel2LoopCounter1               ;; 0f:4369 pP
    dw   musicOpCodeSetChannel2LoopCounter1            ;; 0f:436b pP
    dw   call_0f_449b                                  ;; 0f:436d pP
    dw   call_0f_44bc                                  ;; 0f:436f pP
    dw   call_0f_44c5                                  ;; 0f:4371 pP
    dw   musicOpCodeChannel2Tempo                      ;; 0f:4373 pP
    dw   musicOpCodeHalt                               ;; 0f:4375 ??
    dw   musicOpCodeChannel2LoopCounter2               ;; 0f:4377 ??
    dw   musicOpCodeSetChannel2LoopCounter2            ;; 0f:4379 ??
    dw   musicOpCodeIfChannel2LoopCounter1Equal        ;; 0f:437b pP
    dw   call_0f_437f                                  ;; 0f:437d ??

call_0f_437f:
    call getNextMusicInstructionChannel2               ;; 0f:437f $cd $d9 $47
    ld   [wC1C8], A                                    ;; 0f:4382 $ea $c8 $c1
    ret                                                ;; 0f:4385 $c9

call_0f_4386:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:4386 $21 $04 $c1
    ld   E, [HL]                                       ;; 0f:4389 $5e
    inc  HL                                            ;; 0f:438a $23
    ld   D, [HL]                                       ;; 0f:438b $56
    ld   A, [DE]                                       ;; 0f:438c $1a
    ld   C, A                                          ;; 0f:438d $4f
    inc  DE                                            ;; 0f:438e $13
    ld   A, [DE]                                       ;; 0f:438f $1a
    inc  DE                                            ;; 0f:4390 $13
    ld   [wC116], A                                    ;; 0f:4391 $ea $16 $c1
    ld   [wC118], A                                    ;; 0f:4394 $ea $18 $c1
    ld   A, C                                          ;; 0f:4397 $79
    ld   [wC115], A                                    ;; 0f:4398 $ea $15 $c1
    ld   [wC117], A                                    ;; 0f:439b $ea $17 $c1
    ld   A, E                                          ;; 0f:439e $7b
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:439f $ea $04 $c1
    ld   A, D                                          ;; 0f:43a2 $7a
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:43a3 $ea $05 $c1
    ret                                                ;; 0f:43a6 $c9

musicOpCodeChannel2Jump:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:43a7 $21 $04 $c1
    ld   E, [HL]                                       ;; 0f:43aa $5e
    inc  HL                                            ;; 0f:43ab $23
    ld   D, [HL]                                       ;; 0f:43ac $56
    ld   A, [DE]                                       ;; 0f:43ad $1a
    inc  DE                                            ;; 0f:43ae $13
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:43af $ea $04 $c1
    ld   A, [DE]                                       ;; 0f:43b2 $1a
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:43b3 $ea $05 $c1
    ret                                                ;; 0f:43b6 $c9

musicOpCodeChannel2LoopCounter1:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:43b7 $21 $04 $c1
    call musicGetLoopTarget                            ;; 0f:43ba $cd $17 $44
    ld   B, A                                          ;; 0f:43bd $47
    ld   A, [wC10F]                                    ;; 0f:43be $fa $0f $c1
    dec  A                                             ;; 0f:43c1 $3d
    ld   [wC10F], A                                    ;; 0f:43c2 $ea $0f $c1
    jr   jr_0f_4420                                    ;; 0f:43c5 $18 $59

musicOpCodeChannel1LoopCounter1:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:43c7 $21 $1c $c1
    call musicGetLoopTarget                            ;; 0f:43ca $cd $17 $44
    ld   B, A                                          ;; 0f:43cd $47
    ld   A, [wC127]                                    ;; 0f:43ce $fa $27 $c1
    dec  A                                             ;; 0f:43d1 $3d
    ld   [wC127], A                                    ;; 0f:43d2 $ea $27 $c1
    jr   jr_0f_4420                                    ;; 0f:43d5 $18 $49

musicOpCodeChannel3LoopCounter1:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:43d7 $21 $34 $c1
    call musicGetLoopTarget                            ;; 0f:43da $cd $17 $44
    ld   B, A                                          ;; 0f:43dd $47
    ld   A, [wC13F]                                    ;; 0f:43de $fa $3f $c1
    dec  A                                             ;; 0f:43e1 $3d
    ld   [wC13F], A                                    ;; 0f:43e2 $ea $3f $c1
    jr   jr_0f_4420                                    ;; 0f:43e5 $18 $39

musicOpCodeChannel2LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:43e7 $21 $04 $c1
    call musicGetLoopTarget                            ;; 0f:43ea $cd $17 $44
    ld   B, A                                          ;; 0f:43ed $47
    ld   A, [wC119]                                    ;; 0f:43ee $fa $19 $c1
    dec  A                                             ;; 0f:43f1 $3d
    ld   [wC119], A                                    ;; 0f:43f2 $ea $19 $c1
    jr   jr_0f_4420                                    ;; 0f:43f5 $18 $29

musicOpCodeChannel1LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:43f7 $21 $1c $c1
    call musicGetLoopTarget                            ;; 0f:43fa $cd $17 $44
    ld   B, A                                          ;; 0f:43fd $47
    ld   A, [wC131]                                    ;; 0f:43fe $fa $31 $c1
    dec  A                                             ;; 0f:4401 $3d
    ld   [wC131], A                                    ;; 0f:4402 $ea $31 $c1
    jr   jr_0f_4420                                    ;; 0f:4405 $18 $19

musicOpCodeChannel3LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4407 $21 $34 $c1
    call musicGetLoopTarget                            ;; 0f:440a $cd $17 $44
    ld   B, A                                          ;; 0f:440d $47
    ld   A, [wC149]                                    ;; 0f:440e $fa $49 $c1
    dec  A                                             ;; 0f:4411 $3d
    ld   [wC149], A                                    ;; 0f:4412 $ea $49 $c1
    jr   jr_0f_4420                                    ;; 0f:4415 $18 $09

musicGetLoopTarget:
    ld   E, [HL]                                       ;; 0f:4417 $5e
    inc  HL                                            ;; 0f:4418 $23
    ld   D, [HL]                                       ;; 0f:4419 $56
    ld   A, [DE]                                       ;; 0f:441a $1a
    ld   C, A                                          ;; 0f:441b $4f
    inc  DE                                            ;; 0f:441c $13
    ld   A, [DE]                                       ;; 0f:441d $1a
    inc  DE                                            ;; 0f:441e $13
    ret                                                ;; 0f:441f $c9

jr_0f_4420:
    jr   NZ, .jr_0f_4426                               ;; 0f:4420 $20 $04
    ld   [HL], D                                       ;; 0f:4422 $72
    dec  HL                                            ;; 0f:4423 $2b
    ld   [HL], E                                       ;; 0f:4424 $73
    ret                                                ;; 0f:4425 $c9
.jr_0f_4426:
    ld   [HL], B                                       ;; 0f:4426 $70
    dec  HL                                            ;; 0f:4427 $2b
    ld   [HL], C                                       ;; 0f:4428 $71
    ret                                                ;; 0f:4429 $c9

musicOpCodeIfChannel2LoopCounter1Equal:
    call getNextMusicInstructionChannel2               ;; 0f:442a $cd $d9 $47
    ld   C, A                                          ;; 0f:442d $4f
    ld   A, [wMusicInstructionPointerChannel2]         ;; 0f:442e $fa $04 $c1
    ld   L, A                                          ;; 0f:4431 $6f
    ld   A, [wMusicInstructionPointerChannel2.high]    ;; 0f:4432 $fa $05 $c1
    ld   H, A                                          ;; 0f:4435 $67
    ld   A, [HL+]                                      ;; 0f:4436 $2a
    ld   E, A                                          ;; 0f:4437 $5f
    ld   A, [HL+]                                      ;; 0f:4438 $2a
    ld   D, A                                          ;; 0f:4439 $57
    ld   A, [wC10F]                                    ;; 0f:443a $fa $0f $c1
    cp   A, C                                          ;; 0f:443d $b9
    jr   NZ, .jr_0f_4442                               ;; 0f:443e $20 $02
    push DE                                            ;; 0f:4440 $d5
    pop  HL                                            ;; 0f:4441 $e1
.jr_0f_4442:
    ld   A, L                                          ;; 0f:4442 $7d
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:4443 $ea $04 $c1
    ld   A, H                                          ;; 0f:4446 $7c
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:4447 $ea $05 $c1
    ret                                                ;; 0f:444a $c9

musicOpCodeIfChannel1LoopCounter1Equal:
    call getNextMusicInstructionChannel1               ;; 0f:444b $cd $e5 $47
    ld   C, A                                          ;; 0f:444e $4f
    ld   A, [wMusicInstructionPointerChannel1]         ;; 0f:444f $fa $1c $c1
    ld   L, A                                          ;; 0f:4452 $6f
    ld   A, [wMusicInstructionPointerChannel1.high]    ;; 0f:4453 $fa $1d $c1
    ld   H, A                                          ;; 0f:4456 $67
    ld   A, [HL+]                                      ;; 0f:4457 $2a
    ld   E, A                                          ;; 0f:4458 $5f
    ld   A, [HL+]                                      ;; 0f:4459 $2a
    ld   D, A                                          ;; 0f:445a $57
    ld   A, [wC127]                                    ;; 0f:445b $fa $27 $c1
    cp   A, C                                          ;; 0f:445e $b9
    jr   NZ, .jr_0f_4463                               ;; 0f:445f $20 $02
    push DE                                            ;; 0f:4461 $d5
    pop  HL                                            ;; 0f:4462 $e1
.jr_0f_4463:
    ld   A, L                                          ;; 0f:4463 $7d
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:4464 $ea $1c $c1
    ld   A, H                                          ;; 0f:4467 $7c
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:4468 $ea $1d $c1
    ret                                                ;; 0f:446b $c9

musicOpCodeIfChannel3LoopCounter1Equal:
    call getNextMusicInstructionChannel3               ;; 0f:446c $cd $ea $47
    ld   C, A                                          ;; 0f:446f $4f
    ld   A, [wMusicInstructionPointerChannel3]         ;; 0f:4470 $fa $34 $c1
    ld   L, A                                          ;; 0f:4473 $6f
    ld   A, [wMusicInstructionPointerChannel3.high]    ;; 0f:4474 $fa $35 $c1
    ld   H, A                                          ;; 0f:4477 $67
    ld   A, [HL+]                                      ;; 0f:4478 $2a
    ld   E, A                                          ;; 0f:4479 $5f
    ld   A, [HL+]                                      ;; 0f:447a $2a
    ld   D, A                                          ;; 0f:447b $57
    ld   A, [wC13F]                                    ;; 0f:447c $fa $3f $c1
    cp   A, C                                          ;; 0f:447f $b9
    jr   NZ, .jr_0f_4484                               ;; 0f:4480 $20 $02
    push DE                                            ;; 0f:4482 $d5
    pop  HL                                            ;; 0f:4483 $e1
.jr_0f_4484:
    ld   A, L                                          ;; 0f:4484 $7d
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:4485 $ea $34 $c1
    ld   A, H                                          ;; 0f:4488 $7c
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:4489 $ea $35 $c1
    ret                                                ;; 0f:448c $c9

musicOpCodeSetChannel2LoopCounter1:
    call getNextMusicInstructionChannel2               ;; 0f:448d $cd $d9 $47
    ld   [wC10F], A                                    ;; 0f:4490 $ea $0f $c1
    ret                                                ;; 0f:4493 $c9

musicOpCodeSetChannel2LoopCounter2:
    call getNextMusicInstructionChannel2               ;; 0f:4494 $cd $d9 $47
    ld   [wC119], A                                    ;; 0f:4497 $ea $19 $c1
    ret                                                ;; 0f:449a $c9

call_0f_449b:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:449b $21 $04 $c1
    ld   E, [HL]                                       ;; 0f:449e $5e
    inc  HL                                            ;; 0f:449f $23
    ld   D, [HL]                                       ;; 0f:44a0 $56
    ld   A, [DE]                                       ;; 0f:44a1 $1a
    ld   C, A                                          ;; 0f:44a2 $4f
    inc  DE                                            ;; 0f:44a3 $13
    ld   A, [DE]                                       ;; 0f:44a4 $1a
    inc  DE                                            ;; 0f:44a5 $13
    ld   [wC108], A                                    ;; 0f:44a6 $ea $08 $c1
    ld   [wC10A], A                                    ;; 0f:44a9 $ea $0a $c1
    ld   A, C                                          ;; 0f:44ac $79
    ld   [wC107], A                                    ;; 0f:44ad $ea $07 $c1
    ld   [wC109], A                                    ;; 0f:44b0 $ea $09 $c1
    ld   A, E                                          ;; 0f:44b3 $7b
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:44b4 $ea $04 $c1
    ld   A, D                                          ;; 0f:44b7 $7a
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:44b8 $ea $05 $c1
    ret                                                ;; 0f:44bb $c9

call_0f_44bc:
    call getNextMusicInstructionChannel2               ;; 0f:44bc $cd $d9 $47
    ldh  [rNR21], A                                    ;; 0f:44bf $e0 $16
    ld   [wC10C], A                                    ;; 0f:44c1 $ea $0c $c1
    ret                                                ;; 0f:44c4 $c9

call_0f_44c5:
    call getNextMusicInstructionChannel2               ;; 0f:44c5 $cd $d9 $47
    ld   E, A                                          ;; 0f:44c8 $5f
    ld   D, $00                                        ;; 0f:44c9 $16 $00
    ld   HL, data_0f_4664                              ;; 0f:44cb $21 $64 $46
    add  HL, DE                                        ;; 0f:44ce $19
    ldh  A, [rNR51]                                    ;; 0f:44cf $f0 $25
    and  A, $dd                                        ;; 0f:44d1 $e6 $dd
    or   A, [HL]                                       ;; 0f:44d3 $b6
    ldh  [rNR51], A                                    ;; 0f:44d4 $e0 $25
    ret                                                ;; 0f:44d6 $c9

data_0f_44d7:
    db   $00, $01, $10, $11                            ;; 0f:44d7 ?...

musicOpCodeChannel2Tempo:
    call getNextMusicInstructionChannel2               ;; 0f:44db $cd $d9 $47
    ld   [wMusicTempo], A                              ;; 0f:44de $ea $01 $c1
    ret                                                ;; 0f:44e1 $c9

jp_0f_44e2:
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:44e2 $fa $2b $c1
    cp   A, $ff                                        ;; 0f:44e5 $fe $ff
    jp   Z, jp_0f_4668                                 ;; 0f:44e7 $ca $68 $46
    ld   A, [wMusicNoteDurationChannel1]               ;; 0f:44ea $fa $1b $c1
    dec  A                                             ;; 0f:44ed $3d
    ld   [wMusicNoteDurationChannel1], A               ;; 0f:44ee $ea $1b $c1
    ldh  [hFF96], A                                    ;; 0f:44f1 $e0 $96
    jp   NZ, jp_0f_4668                                ;; 0f:44f3 $c2 $68 $46

jp_0f_44f6:
    call getNextMusicInstructionChannel1               ;; 0f:44f6 $cd $e5 $47
    ld   E, A                                          ;; 0f:44f9 $5f
    cp   A, $d0                                        ;; 0f:44fa $fe $d0
    jr   NC, .notNote                                  ;; 0f:44fc $30 $79
    and  A, $f0                                        ;; 0f:44fe $e6 $f0
    swap A                                             ;; 0f:4500 $cb $37
    ld   C, A                                          ;; 0f:4502 $4f
    ld   HL, musicNoteDurations                        ;; 0f:4503 $21 $4a $42
    ld   B, $00                                        ;; 0f:4506 $06 $00
    add  HL, BC                                        ;; 0f:4508 $09
    ld   A, [HL]                                       ;; 0f:4509 $7e
    ld   [wMusicNoteDurationChannel1], A               ;; 0f:450a $ea $1b $c1
    ld   A, E                                          ;; 0f:450d $7b
    and  A, $0f                                        ;; 0f:450e $e6 $0f
    ld   [wMusicNotePitchChannel1], A                  ;; 0f:4510 $ea $29 $c1
    cp   A, $0e                                        ;; 0f:4513 $fe $0e
    jp   Z, jp_0f_4668                                 ;; 0f:4515 $ca $68 $46
    ld   C, A                                          ;; 0f:4518 $4f
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4519 $fa $1a $c1
    or   A, A                                          ;; 0f:451c $b7
    jp   NZ, jp_0f_4668                                ;; 0f:451d $c2 $68 $46
    ld   A, C                                          ;; 0f:4520 $79
    cp   A, $0f                                        ;; 0f:4521 $fe $0f
    jr   NZ, .jr_0f_4536                               ;; 0f:4523 $20 $11
; Rest note by maxing frequency
    ld   A, $ff                                        ;; 0f:4525 $3e $ff
    ldh  [rNR13], A                                    ;; 0f:4527 $e0 $13
    ld   [wC1C9], A                                    ;; 0f:4529 $ea $c9 $c1
    ld   A, $07                                        ;; 0f:452c $3e $07
    ldh  [rNR14], A                                    ;; 0f:452e $e0 $14
    ld   [wC1CA], A                                    ;; 0f:4530 $ea $ca $c1
    jp   jp_0f_4668                                    ;; 0f:4533 $c3 $68 $46
.jr_0f_4536:
    add  A, A                                          ;; 0f:4536 $87
    ld   E, A                                          ;; 0f:4537 $5f
    ld   A, [wMusicOctiveChannel1]                     ;; 0f:4538 $fa $23 $c1
    add  A, E                                          ;; 0f:453b $83
    ld   E, A                                          ;; 0f:453c $5f
    ld   D, $00                                        ;; 0f:453d $16 $00
    ld   HL, data_0f_41a0                              ;; 0f:453f $21 $a0 $41
    add  HL, DE                                        ;; 0f:4542 $19
    push HL                                            ;; 0f:4543 $e5
    ld   A, [wC12D]                                    ;; 0f:4544 $fa $2d $c1
    ld   L, A                                          ;; 0f:4547 $6f
    ld   A, [wC12E]                                    ;; 0f:4548 $fa $2e $c1
    ld   H, A                                          ;; 0f:454b $67
    ld   A, [HL+]                                      ;; 0f:454c $2a
    ld   [wC12C], A                                    ;; 0f:454d $ea $2c $c1
    ld   A, [HL+]                                      ;; 0f:4550 $2a
    ldh  [rNR12], A                                    ;; 0f:4551 $e0 $12
    ld   A, L                                          ;; 0f:4553 $7d
    ld   A, [wC12F]                                    ;; 0f:4554 $fa $2f $c1
    ld   A, H                                          ;; 0f:4557 $7c
    ld   A, [wC130]                                    ;; 0f:4558 $fa $30 $c1
    pop  HL                                            ;; 0f:455b $e1
    ld   A, [HL+]                                      ;; 0f:455c $2a
    ldh  [rNR13], A                                    ;; 0f:455d $e0 $13
    ld   [wC125], A                                    ;; 0f:455f $ea $25 $c1
    ld   A, [HL]                                       ;; 0f:4562 $7e
    ldh  [rNR14], A                                    ;; 0f:4563 $e0 $14
    ld   [wC126], A                                    ;; 0f:4565 $ea $26 $c1
    ld   HL, wC11E                                     ;; 0f:4568 $21 $1e $c1
    call call_0f_47c8                                  ;; 0f:456b $cd $c8 $47
    ld   HL, wC12C                                     ;; 0f:456e $21 $2c $c1
    call call_0f_47c8                                  ;; 0f:4571 $cd $c8 $47
    jp   jp_0f_4668                                    ;; 0f:4574 $c3 $68 $46
.notNote:
    cp   A, $ff                                        ;; 0f:4577 $fe $ff
    jr   NZ, jp_0f_44f6.notTerminator                  ;; 0f:4579 $20 $0c
    ld   [wMusicEndedOnChannel1], A                    ;; 0f:457b $ea $2b $c1
    ldh  [rNR23], A                                    ;; 0f:457e $e0 $18
    ld   A, $07                                        ;; 0f:4580 $3e $07
    ldh  [rNR24], A                                    ;; 0f:4582 $e0 $19
    jp   jp_0f_4668                                    ;; 0f:4584 $c3 $68 $46
.notTerminator:
    cp   A, $e0                                        ;; 0f:4587 $fe $e0
    jr   NC, jp_0f_44f6.opCode                         ;; 0f:4589 $30 $26
; Octive change
    bit  3, A                                          ;; 0f:458b $cb $5f
    jr   NZ, jp_0f_44f6.relativeOctive                 ;; 0f:458d $20 $0e
    and  A, $07                                        ;; 0f:458f $e6 $07
    add  A, A                                          ;; 0f:4591 $87
    add  A, A                                          ;; 0f:4592 $87
    add  A, A                                          ;; 0f:4593 $87
    ld   E, A                                          ;; 0f:4594 $5f
    add  A, A                                          ;; 0f:4595 $87
    add  A, E                                          ;; 0f:4596 $83
    ld   [wMusicOctiveChannel1], A                     ;; 0f:4597 $ea $23 $c1
    jp   jp_0f_44f6                                    ;; 0f:459a $c3 $f6 $44
.relativeOctive:
    and  A, $07                                        ;; 0f:459d $e6 $07
    ld   E, A                                          ;; 0f:459f $5f
    ld   D, $00                                        ;; 0f:45a0 $16 $00
    ld   HL, data_0f_47d1                              ;; 0f:45a2 $21 $d1 $47
    add  HL, DE                                        ;; 0f:45a5 $19
    ld   E, [HL]                                       ;; 0f:45a6 $5e
    ld   A, [wMusicOctiveChannel1]                     ;; 0f:45a7 $fa $23 $c1
    add  A, E                                          ;; 0f:45aa $83
    ld   [wMusicOctiveChannel1], A                     ;; 0f:45ab $ea $23 $c1
    jp   jp_0f_44f6                                    ;; 0f:45ae $c3 $f6 $44
.opCode:
    and  A, $0f                                        ;; 0f:45b1 $e6 $0f
    add  A, A                                          ;; 0f:45b3 $87
    ld   HL, musicOpCodeTableChannel1                  ;; 0f:45b4 $21 $c7 $45
    ld   E, A                                          ;; 0f:45b7 $5f
    ld   D, $00                                        ;; 0f:45b8 $16 $00
    add  HL, DE                                        ;; 0f:45ba $19
    call musicCallOpCode_DupChannel1                   ;; 0f:45bb $cd $c1 $45
    jp   jp_0f_44f6                                    ;; 0f:45be $c3 $f6 $44

musicCallOpCode_DupChannel1:
    ld   A, [HL+]                                      ;; 0f:45c1 $2a
    ld   E, A                                          ;; 0f:45c2 $5f
    ld   A, [HL]                                       ;; 0f:45c3 $7e
    ld   H, A                                          ;; 0f:45c4 $67
    ld   L, E                                          ;; 0f:45c5 $6b
    jp   HL                                            ;; 0f:45c6 $e9

;@jumptable amount=12
musicOpCodeTableChannel1:
    dw   call_0f_45df                                  ;; 0f:45c7 pP
    dw   musicOpCodeChannel1Jump                       ;; 0f:45c9 pP
    dw   musicOpCodeChannel1LoopCounter1               ;; 0f:45cb pP
    dw   musicOpCodeSetChannel1LoopCounter1            ;; 0f:45cd pP
    dw   call_0f_4618                                  ;; 0f:45cf pP
    dw   call_0f_4639                                  ;; 0f:45d1 pP
    dw   call_0f_4649                                  ;; 0f:45d3 pP
    dw   musicOpCodeHalt                               ;; 0f:45d5 ??
    dw   musicOpCodeHalt                               ;; 0f:45d7 ??
    dw   musicOpCodeChannel1LoopCounter2               ;; 0f:45d9 ??
    dw   musicOpCodeSetChannel1LoopCounter2            ;; 0f:45db ??
    dw   musicOpCodeIfChannel1LoopCounter1Equal        ;; 0f:45dd pP

call_0f_45df:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:45df $21 $1c $c1
    ld   E, [HL]                                       ;; 0f:45e2 $5e
    inc  HL                                            ;; 0f:45e3 $23
    ld   D, [HL]                                       ;; 0f:45e4 $56
    ld   A, [DE]                                       ;; 0f:45e5 $1a
    ld   C, A                                          ;; 0f:45e6 $4f
    inc  DE                                            ;; 0f:45e7 $13
    ld   A, [DE]                                       ;; 0f:45e8 $1a
    inc  DE                                            ;; 0f:45e9 $13
    ld   [wC12E], A                                    ;; 0f:45ea $ea $2e $c1
    ld   A, C                                          ;; 0f:45ed $79
    ld   [wC12D], A                                    ;; 0f:45ee $ea $2d $c1
    ld   A, E                                          ;; 0f:45f1 $7b
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:45f2 $ea $1c $c1
    ld   A, D                                          ;; 0f:45f5 $7a
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:45f6 $ea $1d $c1
    ret                                                ;; 0f:45f9 $c9

musicOpCodeChannel1Jump:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:45fa $21 $1c $c1
    ld   E, [HL]                                       ;; 0f:45fd $5e
    inc  HL                                            ;; 0f:45fe $23
    ld   D, [HL]                                       ;; 0f:45ff $56
    ld   A, [DE]                                       ;; 0f:4600 $1a
    inc  DE                                            ;; 0f:4601 $13
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:4602 $ea $1c $c1
    ld   A, [DE]                                       ;; 0f:4605 $1a
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:4606 $ea $1d $c1
    ret                                                ;; 0f:4609 $c9

musicOpCodeSetChannel1LoopCounter1:
    call getNextMusicInstructionChannel1               ;; 0f:460a $cd $e5 $47
    ld   [wC127], A                                    ;; 0f:460d $ea $27 $c1
    ret                                                ;; 0f:4610 $c9

musicOpCodeSetChannel1LoopCounter2:
    call getNextMusicInstructionChannel1               ;; 0f:4611 $cd $e5 $47
    ld   [wC131], A                                    ;; 0f:4614 $ea $31 $c1
    ret                                                ;; 0f:4617 $c9

call_0f_4618:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:4618 $21 $1c $c1
    ld   E, [HL]                                       ;; 0f:461b $5e
    inc  HL                                            ;; 0f:461c $23
    ld   D, [HL]                                       ;; 0f:461d $56
    ld   A, [DE]                                       ;; 0f:461e $1a
    ld   C, A                                          ;; 0f:461f $4f
    inc  DE                                            ;; 0f:4620 $13
    ld   A, [DE]                                       ;; 0f:4621 $1a
    inc  DE                                            ;; 0f:4622 $13
    ld   [wC120], A                                    ;; 0f:4623 $ea $20 $c1
    ld   [wC122], A                                    ;; 0f:4626 $ea $22 $c1
    ld   A, C                                          ;; 0f:4629 $79
    ld   [wC11F], A                                    ;; 0f:462a $ea $1f $c1
    ld   [wC121], A                                    ;; 0f:462d $ea $21 $c1
    ld   A, E                                          ;; 0f:4630 $7b
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:4631 $ea $1c $c1
    ld   A, D                                          ;; 0f:4634 $7a
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:4635 $ea $1d $c1
    ret                                                ;; 0f:4638 $c9

call_0f_4639:
    call getNextMusicInstructionChannel1               ;; 0f:4639 $cd $e5 $47
    ld   [wC124], A                                    ;; 0f:463c $ea $24 $c1
    ld   B, A                                          ;; 0f:463f $47
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4640 $fa $1a $c1
    or   A, A                                          ;; 0f:4643 $b7
    ret  NZ                                            ;; 0f:4644 $c0
    ld   A, B                                          ;; 0f:4645 $78
    ldh  [rNR11], A                                    ;; 0f:4646 $e0 $11
    ret                                                ;; 0f:4648 $c9

call_0f_4649:
    call getNextMusicInstructionChannel1               ;; 0f:4649 $cd $e5 $47
    ld   E, A                                          ;; 0f:464c $5f
    ld   D, $00                                        ;; 0f:464d $16 $00
    ld   HL, data_0f_44d7                              ;; 0f:464f $21 $d7 $44
    add  HL, DE                                        ;; 0f:4652 $19
    ld   A, [HL]                                       ;; 0f:4653 $7e
    ld   [wC12A], A                                    ;; 0f:4654 $ea $2a $c1
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4657 $fa $1a $c1
    or   A, A                                          ;; 0f:465a $b7
    ret  NZ                                            ;; 0f:465b $c0
    ldh  A, [rNR51]                                    ;; 0f:465c $f0 $25
    and  A, $ee                                        ;; 0f:465e $e6 $ee
    or   A, [HL]                                       ;; 0f:4660 $b6
    ldh  [rNR51], A                                    ;; 0f:4661 $e0 $25
    ret                                                ;; 0f:4663 $c9

data_0f_4664:
    db   $00, $02, $20, $22                            ;; 0f:4664 ????

jp_0f_4668:
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:4668 $fa $43 $c1
    cp   A, $ff                                        ;; 0f:466b $fe $ff
    jp   Z, return                                     ;; 0f:466d $ca $c7 $47
    ld   A, [wMusicNoteDurationChannel3]               ;; 0f:4670 $fa $33 $c1
    dec  A                                             ;; 0f:4673 $3d
    ld   [wMusicNoteDurationChannel3], A               ;; 0f:4674 $ea $33 $c1
    ldh  [hFF97], A                                    ;; 0f:4677 $e0 $97
    jp   NZ, return                                    ;; 0f:4679 $c2 $c7 $47

jp_0f_467c:
    call getNextMusicInstructionChannel3               ;; 0f:467c $cd $ea $47
    ld   E, A                                          ;; 0f:467f $5f
    cp   A, $d0                                        ;; 0f:4680 $fe $d0
    jr   NC, .notNote                                  ;; 0f:4682 $30 $4e
    and  A, $f0                                        ;; 0f:4684 $e6 $f0
    swap A                                             ;; 0f:4686 $cb $37
    ld   C, A                                          ;; 0f:4688 $4f
    ld   HL, musicNoteDurations                        ;; 0f:4689 $21 $4a $42
    ld   B, $00                                        ;; 0f:468c $06 $00
    add  HL, BC                                        ;; 0f:468e $09
    ld   A, [HL]                                       ;; 0f:468f $7e
    ld   [wMusicNoteDurationChannel3], A               ;; 0f:4690 $ea $33 $c1
    ld   A, E                                          ;; 0f:4693 $7b
    and  A, $0f                                        ;; 0f:4694 $e6 $0f
    ld   [wMusicNotePitchChannel3], A                  ;; 0f:4696 $ea $41 $c1
    cp   A, $0e                                        ;; 0f:4699 $fe $0e
    jp   Z, return                                     ;; 0f:469b $ca $c7 $47
    cp   A, $0f                                        ;; 0f:469e $fe $0f
    jr   NZ, .jr_0f_46a9                               ;; 0f:46a0 $20 $07
; Rest note
    ld   A, $00                                        ;; 0f:46a2 $3e $00
    ldh  [rNR32], A                                    ;; 0f:46a4 $e0 $1c
    jp   return                                        ;; 0f:46a6 $c3 $c7 $47
.jr_0f_46a9:
    add  A, A                                          ;; 0f:46a9 $87
    ld   E, A                                          ;; 0f:46aa $5f
    ld   A, [wMusicOctiveChannel3]                     ;; 0f:46ab $fa $3b $c1
    add  A, E                                          ;; 0f:46ae $83
    ld   E, A                                          ;; 0f:46af $5f
    ld   D, $00                                        ;; 0f:46b0 $16 $00
    ld   HL, data_0f_41a0                              ;; 0f:46b2 $21 $a0 $41
    add  HL, DE                                        ;; 0f:46b5 $19
    ld   A, [wC140]                                    ;; 0f:46b6 $fa $40 $c1
    ldh  [rNR32], A                                    ;; 0f:46b9 $e0 $1c
    ld   A, [HL+]                                      ;; 0f:46bb $2a
    ldh  [rNR33], A                                    ;; 0f:46bc $e0 $1d
    ld   [wC13D], A                                    ;; 0f:46be $ea $3d $c1
    ld   A, [HL]                                       ;; 0f:46c1 $7e
    and  A, $07                                        ;; 0f:46c2 $e6 $07
    ldh  [rNR34], A                                    ;; 0f:46c4 $e0 $1e
    ld   [wC13E], A                                    ;; 0f:46c6 $ea $3e $c1
    ld   HL, wC136                                     ;; 0f:46c9 $21 $36 $c1
    call call_0f_47c8                                  ;; 0f:46cc $cd $c8 $47
    jp   return                                        ;; 0f:46cf $c3 $c7 $47
.notNote:
    cp   A, $ff                                        ;; 0f:46d2 $fe $ff
    jr   NZ, jp_0f_467c.notTerminator                  ;; 0f:46d4 $20 $0c
    ld   [wMusicEndedOnChannel3], A                    ;; 0f:46d6 $ea $43 $c1
    ldh  [rNR33], A                                    ;; 0f:46d9 $e0 $1d
    ld   A, $07                                        ;; 0f:46db $3e $07
    ldh  [rNR34], A                                    ;; 0f:46dd $e0 $1e
    jp   return                                        ;; 0f:46df $c3 $c7 $47
.notTerminator:
    cp   A, $e0                                        ;; 0f:46e2 $fe $e0
    jr   NC, jp_0f_467c.opCode                         ;; 0f:46e4 $30 $26
; Octive change
    bit  3, A                                          ;; 0f:46e6 $cb $5f
    jr   NZ, jp_0f_467c.relativeOctive                 ;; 0f:46e8 $20 $0e
    and  A, $07                                        ;; 0f:46ea $e6 $07
    add  A, A                                          ;; 0f:46ec $87
    add  A, A                                          ;; 0f:46ed $87
    add  A, A                                          ;; 0f:46ee $87
    ld   E, A                                          ;; 0f:46ef $5f
    add  A, A                                          ;; 0f:46f0 $87
    add  A, E                                          ;; 0f:46f1 $83
    ld   [wMusicOctiveChannel3], A                     ;; 0f:46f2 $ea $3b $c1
    jp   jp_0f_467c                                    ;; 0f:46f5 $c3 $7c $46
.relativeOctive:
    and  A, $07                                        ;; 0f:46f8 $e6 $07
    ld   E, A                                          ;; 0f:46fa $5f
    ld   D, $00                                        ;; 0f:46fb $16 $00
    ld   HL, data_0f_47d1                              ;; 0f:46fd $21 $d1 $47
    add  HL, DE                                        ;; 0f:4700 $19
    ld   E, [HL]                                       ;; 0f:4701 $5e
    ld   A, [wMusicOctiveChannel3]                     ;; 0f:4702 $fa $3b $c1
    add  A, E                                          ;; 0f:4705 $83
    ld   [wMusicOctiveChannel3], A                     ;; 0f:4706 $ea $3b $c1
    jp   jp_0f_467c                                    ;; 0f:4709 $c3 $7c $46
.opCode:
    and  A, $0f                                        ;; 0f:470c $e6 $0f
    add  A, A                                          ;; 0f:470e $87
    ld   HL, musicOpCodeTableChannel3                  ;; 0f:470f $21 $22 $47
    ld   E, A                                          ;; 0f:4712 $5f
    ld   D, $00                                        ;; 0f:4713 $16 $00
    add  HL, DE                                        ;; 0f:4715 $19
    call musicCallOpCode_DupChannel3                   ;; 0f:4716 $cd $1c $47
    jp   jp_0f_467c                                    ;; 0f:4719 $c3 $7c $46

musicCallOpCode_DupChannel3:
    ld   A, [HL+]                                      ;; 0f:471c $2a
    ld   E, A                                          ;; 0f:471d $5f
    ld   A, [HL]                                       ;; 0f:471e $7e
    ld   H, A                                          ;; 0f:471f $67
    ld   L, E                                          ;; 0f:4720 $6b
    jp   HL                                            ;; 0f:4721 $e9

;@jumptable amount=12
musicOpCodeTableChannel3:
    dw   call_0f_473a                                  ;; 0f:4722 pP
    dw   musicOpCodeChannel3Jump                       ;; 0f:4724 pP
    dw   musicOpCodeChannel3LoopCounter1               ;; 0f:4726 pP
    dw   musicOpCodeSetChannel3LoopCounter1            ;; 0f:4728 pP
    dw   call_0f_4761                                  ;; 0f:472a pP
    dw   musicOpCodeHalt                               ;; 0f:472c ??
    dw   call_0f_4782                                  ;; 0f:472e pP
    dw   musicOpCodeHalt                               ;; 0f:4730 ??
    dw   call_0f_4798                                  ;; 0f:4732 pP
    dw   musicOpCodeChannel3LoopCounter2               ;; 0f:4734 ??
    dw   musicOpCodeSetChannel3LoopCounter2            ;; 0f:4736 ??
    dw   musicOpCodeIfChannel3LoopCounter1Equal        ;; 0f:4738 ??

call_0f_473a:
    call getNextMusicInstructionChannel3               ;; 0f:473a $cd $ea $47
    ld   [wC140], A                                    ;; 0f:473d $ea $40 $c1
    ldh  [rNR32], A                                    ;; 0f:4740 $e0 $1c
    ret                                                ;; 0f:4742 $c9

musicOpCodeChannel3Jump:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4743 $21 $34 $c1
    ld   E, [HL]                                       ;; 0f:4746 $5e
    inc  HL                                            ;; 0f:4747 $23
    ld   D, [HL]                                       ;; 0f:4748 $56
    ld   A, [DE]                                       ;; 0f:4749 $1a
    inc  DE                                            ;; 0f:474a $13
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:474b $ea $34 $c1
    ld   A, [DE]                                       ;; 0f:474e $1a
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:474f $ea $35 $c1
    ret                                                ;; 0f:4752 $c9

musicOpCodeSetChannel3LoopCounter1:
    call getNextMusicInstructionChannel3               ;; 0f:4753 $cd $ea $47
    ld   [wC13F], A                                    ;; 0f:4756 $ea $3f $c1
    ret                                                ;; 0f:4759 $c9

musicOpCodeSetChannel3LoopCounter2:
    call getNextMusicInstructionChannel3               ;; 0f:475a $cd $ea $47
    ld   [wC149], A                                    ;; 0f:475d $ea $49 $c1
    ret                                                ;; 0f:4760 $c9

call_0f_4761:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4761 $21 $34 $c1
    ld   E, [HL]                                       ;; 0f:4764 $5e
    inc  HL                                            ;; 0f:4765 $23
    ld   D, [HL]                                       ;; 0f:4766 $56
    ld   A, [DE]                                       ;; 0f:4767 $1a
    ld   C, A                                          ;; 0f:4768 $4f
    inc  DE                                            ;; 0f:4769 $13
    ld   A, [DE]                                       ;; 0f:476a $1a
    inc  DE                                            ;; 0f:476b $13
    ld   [wC138], A                                    ;; 0f:476c $ea $38 $c1
    ld   [wC13A], A                                    ;; 0f:476f $ea $3a $c1
    ld   A, C                                          ;; 0f:4772 $79
    ld   [wC137], A                                    ;; 0f:4773 $ea $37 $c1
    ld   [wC139], A                                    ;; 0f:4776 $ea $39 $c1
    ld   A, E                                          ;; 0f:4779 $7b
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:477a $ea $34 $c1
    ld   A, D                                          ;; 0f:477d $7a
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:477e $ea $35 $c1
    ret                                                ;; 0f:4781 $c9

call_0f_4782:
    call getNextMusicInstructionChannel3               ;; 0f:4782 $cd $ea $47
    ld   E, A                                          ;; 0f:4785 $5f
    ld   D, $00                                        ;; 0f:4786 $16 $00
    ld   HL, .data_0f_4794                             ;; 0f:4788 $21 $94 $47
    add  HL, DE                                        ;; 0f:478b $19
    ldh  A, [rNR51]                                    ;; 0f:478c $f0 $25
    and  A, $bb                                        ;; 0f:478e $e6 $bb
    or   A, [HL]                                       ;; 0f:4790 $b6
    ldh  [rNR51], A                                    ;; 0f:4791 $e0 $25
    ret                                                ;; 0f:4793 $c9
.data_0f_4794:
    db   $00, $04, $40, $44                            ;; 0f:4794 ????

call_0f_4798:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4798 $21 $34 $c1
    ld   E, [HL]                                       ;; 0f:479b $5e
    inc  HL                                            ;; 0f:479c $23
    ld   D, [HL]                                       ;; 0f:479d $56
    ld   A, [DE]                                       ;; 0f:479e $1a
    ld   C, A                                          ;; 0f:479f $4f
    ldh  [hFF9A], A                                    ;; 0f:47a0 $e0 $9a
    inc  DE                                            ;; 0f:47a2 $13
    ld   A, [DE]                                       ;; 0f:47a3 $1a
    ld   B, A                                          ;; 0f:47a4 $47
    ldh  [hFF9B], A                                    ;; 0f:47a5 $e0 $9b
    inc  DE                                            ;; 0f:47a7 $13
    ld   [HL], D                                       ;; 0f:47a8 $72
    dec  HL                                            ;; 0f:47a9 $2b
    ld   [HL], E                                       ;; 0f:47aa $73
    push BC                                            ;; 0f:47ab $c5
    pop  HL                                            ;; 0f:47ac $e1

call_0f_47ad:
    xor  A, A                                          ;; 0f:47ad $af
    ldh  [rNR30], A                                    ;; 0f:47ae $e0 $1a
    ld   C, $30                                        ;; 0f:47b0 $0e $30
    ld   B, $10                                        ;; 0f:47b2 $06 $10
.jr_0f_47b4:
    ld   A, [HL+]                                      ;; 0f:47b4 $2a
    ldh  [C], A                                        ;; 0f:47b5 $e2
    inc  C                                             ;; 0f:47b6 $0c
    dec  B                                             ;; 0f:47b7 $05
    jr   NZ, .jr_0f_47b4                               ;; 0f:47b8 $20 $fa
    ld   A, $80                                        ;; 0f:47ba $3e $80
    ldh  [rNR30], A                                    ;; 0f:47bc $e0 $1a
    ld   A, $00                                        ;; 0f:47be $3e $00
    ldh  [rNR32], A                                    ;; 0f:47c0 $e0 $1c
    ld   A, $87                                        ;; 0f:47c2 $3e $87
    ldh  [rNR34], A                                    ;; 0f:47c4 $e0 $1e
    ret                                                ;; 0f:47c6 $c9

return:
    ret                                                ;; 0f:47c7 $c9

call_0f_47c8:
    ld   A, $01                                        ;; 0f:47c8 $3e $01
    ld   [HL+], A                                      ;; 0f:47ca $22
    ld   A, [HL+]                                      ;; 0f:47cb $2a
    ld   E, [HL]                                       ;; 0f:47cc $5e
    inc  HL                                            ;; 0f:47cd $23
    ld   [HL+], A                                      ;; 0f:47ce $22
    ld   [HL], E                                       ;; 0f:47cf $73
    ret                                                ;; 0f:47d0 $c9

data_0f_47d1:
    db   $18, $30, $48, $60, $e8, $d0, $b8, $a0        ;; 0f:47d1 .???..??

getNextMusicInstructionChannel2:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:47d9 $21 $04 $c1

jr_0f_47dc:
    ld   E, [HL]                                       ;; 0f:47dc $5e
    inc  HL                                            ;; 0f:47dd $23
    ld   D, [HL]                                       ;; 0f:47de $56
    ld   A, [DE]                                       ;; 0f:47df $1a
    inc  DE                                            ;; 0f:47e0 $13
    ld   [HL], D                                       ;; 0f:47e1 $72
    dec  HL                                            ;; 0f:47e2 $2b
    ld   [HL], E                                       ;; 0f:47e3 $73
    ret                                                ;; 0f:47e4 $c9

getNextMusicInstructionChannel1:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:47e5 $21 $1c $c1
    jr   jr_0f_47dc                                    ;; 0f:47e8 $18 $f2

getNextMusicInstructionChannel3:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:47ea $21 $34 $c1
    jr   jr_0f_47dc                                    ;; 0f:47ed $18 $ed

call_0f_47ef:
    ld   A, [wSoundEffectDurationChannel2]             ;; 0f:47ef $fa $02 $c1
    ld   E, A                                          ;; 0f:47f2 $5f
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:47f3 $fa $13 $c1
    or   A, E                                          ;; 0f:47f6 $b3
    ret  NZ                                            ;; 0f:47f7 $c0
    ldh  A, [hFF95]                                    ;; 0f:47f8 $f0 $95
    or   A, A                                          ;; 0f:47fa $b7
    ret  Z                                             ;; 0f:47fb $c8
    ld   A, [wMusicNotePitchChannel2]                  ;; 0f:47fc $fa $11 $c1
    cp   A, $0f                                        ;; 0f:47ff $fe $0f
    ret  Z                                             ;; 0f:4801 $c8
    ld   A, [wC106]                                    ;; 0f:4802 $fa $06 $c1
    dec  A                                             ;; 0f:4805 $3d
    ld   [wC106], A                                    ;; 0f:4806 $ea $06 $c1
    jr   NZ, .jr_0f_483d                               ;; 0f:4809 $20 $32
    ld   A, [wC109]                                    ;; 0f:480b $fa $09 $c1
    ld   L, A                                          ;; 0f:480e $6f
    ld   A, [wC10A]                                    ;; 0f:480f $fa $0a $c1
    ld   H, A                                          ;; 0f:4812 $67
    ld   A, [HL+]                                      ;; 0f:4813 $2a
    or   A, A                                          ;; 0f:4814 $b7
    call Z, call_0f_4932                               ;; 0f:4815 $cc $32 $49
    ld   [wC106], A                                    ;; 0f:4818 $ea $06 $c1
    ld   A, [HL+]                                      ;; 0f:481b $2a
    ld   E, A                                          ;; 0f:481c $5f
    ld   A, L                                          ;; 0f:481d $7d
    ld   [wC109], A                                    ;; 0f:481e $ea $09 $c1
    ld   A, H                                          ;; 0f:4821 $7c
    ld   [wC10A], A                                    ;; 0f:4822 $ea $0a $c1
    ld   D, $00                                        ;; 0f:4825 $16 $00
    bit  7, E                                          ;; 0f:4827 $cb $7b
    jr   Z, .jr_0f_482c                                ;; 0f:4829 $28 $01
    dec  D                                             ;; 0f:482b $15
.jr_0f_482c:
    ld   A, [wC10D]                                    ;; 0f:482c $fa $0d $c1
    ld   L, A                                          ;; 0f:482f $6f
    ld   A, [wC10E]                                    ;; 0f:4830 $fa $0e $c1
    ld   H, A                                          ;; 0f:4833 $67
    add  HL, DE                                        ;; 0f:4834 $19
    ld   A, L                                          ;; 0f:4835 $7d
    ldh  [rNR23], A                                    ;; 0f:4836 $e0 $18
    ld   A, H                                          ;; 0f:4838 $7c
    and  A, $07                                        ;; 0f:4839 $e6 $07
    ldh  [rNR24], A                                    ;; 0f:483b $e0 $19
.jr_0f_483d:
    ld   A, [wC114]                                    ;; 0f:483d $fa $14 $c1
    cp   A, $ff                                        ;; 0f:4840 $fe $ff
    ret  Z                                             ;; 0f:4842 $c8
    dec  A                                             ;; 0f:4843 $3d
    ld   [wC114], A                                    ;; 0f:4844 $ea $14 $c1
    ret  NZ                                            ;; 0f:4847 $c0
    ld   A, [wC117]                                    ;; 0f:4848 $fa $17 $c1
    ld   L, A                                          ;; 0f:484b $6f
    ld   A, [wC118]                                    ;; 0f:484c $fa $18 $c1
    ld   H, A                                          ;; 0f:484f $67
    ld   A, [HL+]                                      ;; 0f:4850 $2a
    or   A, A                                          ;; 0f:4851 $b7
    call Z, call_0f_4932                               ;; 0f:4852 $cc $32 $49
    ld   [wC114], A                                    ;; 0f:4855 $ea $14 $c1
    ld   A, [HL+]                                      ;; 0f:4858 $2a
    ldh  [rNR22], A                                    ;; 0f:4859 $e0 $17
    ld   A, [wC10E]                                    ;; 0f:485b $fa $0e $c1
    ldh  [rNR24], A                                    ;; 0f:485e $e0 $19
    ld   A, L                                          ;; 0f:4860 $7d
    ld   [wC117], A                                    ;; 0f:4861 $ea $17 $c1
    ld   A, H                                          ;; 0f:4864 $7c
    ld   [wC118], A                                    ;; 0f:4865 $ea $18 $c1
    ret                                                ;; 0f:4868 $c9

call_0f_4869:
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4869 $fa $1a $c1
    ld   E, A                                          ;; 0f:486c $5f
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:486d $fa $2b $c1
    or   A, E                                          ;; 0f:4870 $b3
    ret  NZ                                            ;; 0f:4871 $c0
    ldh  A, [hFF96]                                    ;; 0f:4872 $f0 $96
    or   A, A                                          ;; 0f:4874 $b7
    ret  Z                                             ;; 0f:4875 $c8
    ld   A, [wMusicNotePitchChannel1]                  ;; 0f:4876 $fa $29 $c1
    cp   A, $0f                                        ;; 0f:4879 $fe $0f
    ret  Z                                             ;; 0f:487b $c8
    ld   A, [wC11E]                                    ;; 0f:487c $fa $1e $c1
    dec  A                                             ;; 0f:487f $3d
    ld   [wC11E], A                                    ;; 0f:4880 $ea $1e $c1
    jr   NZ, .jr_0f_48b7                               ;; 0f:4883 $20 $32
    ld   A, [wC121]                                    ;; 0f:4885 $fa $21 $c1
    ld   L, A                                          ;; 0f:4888 $6f
    ld   A, [wC122]                                    ;; 0f:4889 $fa $22 $c1
    ld   H, A                                          ;; 0f:488c $67
    ld   A, [HL+]                                      ;; 0f:488d $2a
    or   A, A                                          ;; 0f:488e $b7
    call Z, call_0f_4932                               ;; 0f:488f $cc $32 $49
    ld   [wC11E], A                                    ;; 0f:4892 $ea $1e $c1
    ld   A, [HL+]                                      ;; 0f:4895 $2a
    ld   E, A                                          ;; 0f:4896 $5f
    ld   A, L                                          ;; 0f:4897 $7d
    ld   [wC121], A                                    ;; 0f:4898 $ea $21 $c1
    ld   A, H                                          ;; 0f:489b $7c
    ld   [wC122], A                                    ;; 0f:489c $ea $22 $c1
    ld   D, $00                                        ;; 0f:489f $16 $00
    bit  7, E                                          ;; 0f:48a1 $cb $7b
    jr   Z, .jr_0f_48a6                                ;; 0f:48a3 $28 $01
    dec  D                                             ;; 0f:48a5 $15
.jr_0f_48a6:
    ld   A, [wC125]                                    ;; 0f:48a6 $fa $25 $c1
    ld   L, A                                          ;; 0f:48a9 $6f
    ld   A, [wC126]                                    ;; 0f:48aa $fa $26 $c1
    ld   H, A                                          ;; 0f:48ad $67
    add  HL, DE                                        ;; 0f:48ae $19
    ld   A, L                                          ;; 0f:48af $7d
    ldh  [rNR13], A                                    ;; 0f:48b0 $e0 $13
    ld   A, H                                          ;; 0f:48b2 $7c
    and  A, $07                                        ;; 0f:48b3 $e6 $07
    ldh  [rNR14], A                                    ;; 0f:48b5 $e0 $14
.jr_0f_48b7:
    ld   A, [wC12C]                                    ;; 0f:48b7 $fa $2c $c1
    cp   A, $ff                                        ;; 0f:48ba $fe $ff
    ret  Z                                             ;; 0f:48bc $c8
    dec  A                                             ;; 0f:48bd $3d
    ld   [wC12C], A                                    ;; 0f:48be $ea $2c $c1
    ret  NZ                                            ;; 0f:48c1 $c0
    ld   A, [wC12F]                                    ;; 0f:48c2 $fa $2f $c1
    ld   L, A                                          ;; 0f:48c5 $6f
    ld   A, [wC130]                                    ;; 0f:48c6 $fa $30 $c1
    ld   H, A                                          ;; 0f:48c9 $67
    ld   A, [HL+]                                      ;; 0f:48ca $2a
    or   A, A                                          ;; 0f:48cb $b7
    call Z, call_0f_4932                               ;; 0f:48cc $cc $32 $49
    ld   [wC12C], A                                    ;; 0f:48cf $ea $2c $c1
    ld   A, [HL+]                                      ;; 0f:48d2 $2a
    ldh  [rNR12], A                                    ;; 0f:48d3 $e0 $12
    ld   A, [wC126]                                    ;; 0f:48d5 $fa $26 $c1
    ldh  [rNR14], A                                    ;; 0f:48d8 $e0 $14
    ld   A, L                                          ;; 0f:48da $7d
    ld   [wC12F], A                                    ;; 0f:48db $ea $2f $c1
    ld   A, H                                          ;; 0f:48de $7c
    ld   [wC130], A                                    ;; 0f:48df $ea $30 $c1
    ret                                                ;; 0f:48e2 $c9

call_0f_48e3:
    ld   A, [wSoundEffectDurationChannel3]             ;; 0f:48e3 $fa $32 $c1
    ld   E, A                                          ;; 0f:48e6 $5f
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:48e7 $fa $43 $c1
    or   A, E                                          ;; 0f:48ea $b3
    ret  NZ                                            ;; 0f:48eb $c0
    ldh  A, [hFF97]                                    ;; 0f:48ec $f0 $97
    or   A, A                                          ;; 0f:48ee $b7
    ret  Z                                             ;; 0f:48ef $c8
    ld   A, [wMusicNotePitchChannel3]                  ;; 0f:48f0 $fa $41 $c1
    cp   A, $0f                                        ;; 0f:48f3 $fe $0f
    ret  Z                                             ;; 0f:48f5 $c8
    ld   A, [wC136]                                    ;; 0f:48f6 $fa $36 $c1
    dec  A                                             ;; 0f:48f9 $3d
    ld   [wC136], A                                    ;; 0f:48fa $ea $36 $c1
    jr   NZ, .jr_0f_4931                               ;; 0f:48fd $20 $32
    ld   A, [wC139]                                    ;; 0f:48ff $fa $39 $c1
    ld   L, A                                          ;; 0f:4902 $6f
    ld   A, [wC13A]                                    ;; 0f:4903 $fa $3a $c1
    ld   H, A                                          ;; 0f:4906 $67
    ld   A, [HL+]                                      ;; 0f:4907 $2a
    or   A, A                                          ;; 0f:4908 $b7
    call Z, call_0f_4932                               ;; 0f:4909 $cc $32 $49
    ld   [wC136], A                                    ;; 0f:490c $ea $36 $c1
    ld   A, [HL+]                                      ;; 0f:490f $2a
    ld   E, A                                          ;; 0f:4910 $5f
    ld   A, L                                          ;; 0f:4911 $7d
    ld   [wC139], A                                    ;; 0f:4912 $ea $39 $c1
    ld   A, H                                          ;; 0f:4915 $7c
    ld   [wC13A], A                                    ;; 0f:4916 $ea $3a $c1
    ld   D, $00                                        ;; 0f:4919 $16 $00
    bit  7, E                                          ;; 0f:491b $cb $7b
    jr   Z, .jr_0f_4920                                ;; 0f:491d $28 $01
    dec  D                                             ;; 0f:491f $15
.jr_0f_4920:
    ld   A, [wC13D]                                    ;; 0f:4920 $fa $3d $c1
    ld   L, A                                          ;; 0f:4923 $6f
    ld   A, [wC13E]                                    ;; 0f:4924 $fa $3e $c1
    ld   H, A                                          ;; 0f:4927 $67
    add  HL, DE                                        ;; 0f:4928 $19
    ld   A, L                                          ;; 0f:4929 $7d
    ldh  [rNR33], A                                    ;; 0f:492a $e0 $1d
    ld   A, H                                          ;; 0f:492c $7c
    and  A, $07                                        ;; 0f:492d $e6 $07
    ldh  [rNR34], A                                    ;; 0f:492f $e0 $1e
.jr_0f_4931:
    ret                                                ;; 0f:4931 $c9

call_0f_4932:
    ld   A, [HL+]                                      ;; 0f:4932 $2a
    ld   E, A                                          ;; 0f:4933 $5f
    ld   A, [HL+]                                      ;; 0f:4934 $2a
    ld   [HL], E                                       ;; 0f:4935 $73
    inc  HL                                            ;; 0f:4936 $23
    ld   [HL+], A                                      ;; 0f:4937 $22
    ld   L, E                                          ;; 0f:4938 $6b
    ld   H, A                                          ;; 0f:4939 $67
    ld   A, [HL+]                                      ;; 0f:493a $2a
    ret                                                ;; 0f:493b $c9

soundEffectPlay:
    dec  A                                             ;; 0f:493c $3d
    add  A, A                                          ;; 0f:493d $87
    ld   E, A                                          ;; 0f:493e $5f
    ld   D, $00                                        ;; 0f:493f $16 $00
    ld   HL, soundEffectDataChannel1                   ;; 0f:4941 $21 $3c $7b
    add  HL, DE                                        ;; 0f:4944 $19
    ld   A, [HL+]                                      ;; 0f:4945 $2a
    ld   [wSoundEffectInstructionPointerChannel1], A   ;; 0f:4946 $ea $c4 $c1
    ld   A, [HL]                                       ;; 0f:4949 $7e
    ld   [wSoundEffectInstructionPointerChannel1.high], A ;; 0f:494a $ea $c5 $c1
    ld   HL, soundEffectDataChannel4                   ;; 0f:494d $21 $86 $7b
    add  HL, DE                                        ;; 0f:4950 $19
    ld   A, [HL+]                                      ;; 0f:4951 $2a
    ld   [wSoundEffectInstructionPointerChannel4], A   ;; 0f:4952 $ea $c6 $c1
    ld   A, [HL+]                                      ;; 0f:4955 $2a
    ld   [wSoundEffectInstructionPointerChannel4.high], A ;; 0f:4956 $ea $c7 $c1
    ld   A, $01                                        ;; 0f:4959 $3e $01
    ld   [wSoundEffectDurrationChannel1], A            ;; 0f:495b $ea $1a $c1
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:495e $ea $4a $c1
    xor  A, A                                          ;; 0f:4961 $af
    ldh  [hSFX], A                                     ;; 0f:4962 $e0 $92
    ret                                                ;; 0f:4964 $c9

soundEffectPlayStep:
    ld   A, [wSoundEffectDurrationChannel1]            ;; 0f:4965 $fa $1a $c1
    or   A, A                                          ;; 0f:4968 $b7
    jp   Z, .jp_0f_49bc                                ;; 0f:4969 $ca $bc $49
    dec  A                                             ;; 0f:496c $3d
    ld   [wSoundEffectDurrationChannel1], A            ;; 0f:496d $ea $1a $c1
    or   A, A                                          ;; 0f:4970 $b7
    jr   NZ, .jp_0f_49bc                               ;; 0f:4971 $20 $49
    ld   A, [wSoundEffectInstructionPointerChannel1]   ;; 0f:4973 $fa $c4 $c1
    ld   L, A                                          ;; 0f:4976 $6f
    ld   A, [wSoundEffectInstructionPointerChannel1.high] ;; 0f:4977 $fa $c5 $c1
    ld   H, A                                          ;; 0f:497a $67
.jr_0f_497b:
    ld   A, [HL+]                                      ;; 0f:497b $2a
    ld   [wSoundEffectDurrationChannel1], A            ;; 0f:497c $ea $1a $c1
    or   A, A                                          ;; 0f:497f $b7
    jr   NZ, .jr_0f_4987                               ;; 0f:4980 $20 $05
    call soundEffectRestoreChannel1                    ;; 0f:4982 $cd $4d $41
    jr   .jp_0f_49bc                                   ;; 0f:4985 $18 $35
.jr_0f_4987:
    cp   A, $ef                                        ;; 0f:4987 $fe $ef
    jr   NZ, .jr_0f_499a                               ;; 0f:4989 $20 $0f
    ld   A, [HL+]                                      ;; 0f:498b $2a
    ld   C, A                                          ;; 0f:498c $4f
    ld   A, [HL+]                                      ;; 0f:498d $2a
    ld   B, A                                          ;; 0f:498e $47
    ldh  A, [hSoundEffectLoopCounterChannel1]          ;; 0f:498f $f0 $9c
    dec  A                                             ;; 0f:4991 $3d
    ldh  [hSoundEffectLoopCounterChannel1], A          ;; 0f:4992 $e0 $9c
    jr   Z, .jr_0f_497b                                ;; 0f:4994 $28 $e5
    ld   L, C                                          ;; 0f:4996 $69
    ld   H, B                                          ;; 0f:4997 $60
    jr   .jr_0f_497b                                   ;; 0f:4998 $18 $e1
.jr_0f_499a:
    cp   A, $f0                                        ;; 0f:499a $fe $f0
    jr   C, .jr_0f_49a4                                ;; 0f:499c $38 $06
    and  A, $0f                                        ;; 0f:499e $e6 $0f
    ldh  [hSoundEffectLoopCounterChannel1], A          ;; 0f:49a0 $e0 $9c
    jr   .jr_0f_497b                                   ;; 0f:49a2 $18 $d7
.jr_0f_49a4:
    ld   C, $10                                        ;; 0f:49a4 $0e $10
    ld   B, $05                                        ;; 0f:49a6 $06 $05
.jr_0f_49a8:
    ld   A, [HL+]                                      ;; 0f:49a8 $2a
    ldh  [C], A                                        ;; 0f:49a9 $e2
    inc  C                                             ;; 0f:49aa $0c
    dec  B                                             ;; 0f:49ab $05
    jr   NZ, .jr_0f_49a8                               ;; 0f:49ac $20 $fa
    ldh  A, [rNR51]                                    ;; 0f:49ae $f0 $25
    or   A, $11                                        ;; 0f:49b0 $f6 $11
    ldh  [rNR51], A                                    ;; 0f:49b2 $e0 $25
    ld   A, L                                          ;; 0f:49b4 $7d
    ld   [wSoundEffectInstructionPointerChannel1], A   ;; 0f:49b5 $ea $c4 $c1
    ld   A, H                                          ;; 0f:49b8 $7c
    ld   [wSoundEffectInstructionPointerChannel1.high], A ;; 0f:49b9 $ea $c5 $c1
.jp_0f_49bc:
    ld   A, [wSoundEffectDurationChannel4]             ;; 0f:49bc $fa $4a $c1
    or   A, A                                          ;; 0f:49bf $b7
    jr   Z, .jr_0f_4a11                                ;; 0f:49c0 $28 $4f
    dec  A                                             ;; 0f:49c2 $3d
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:49c3 $ea $4a $c1
    jr   NZ, .jr_0f_4a11                               ;; 0f:49c6 $20 $49
    ld   A, [wSoundEffectInstructionPointerChannel4]   ;; 0f:49c8 $fa $c6 $c1
    ld   L, A                                          ;; 0f:49cb $6f
    ld   A, [wSoundEffectInstructionPointerChannel4.high] ;; 0f:49cc $fa $c7 $c1
    ld   H, A                                          ;; 0f:49cf $67
.jr_0f_49d0:
    ld   A, [HL+]                                      ;; 0f:49d0 $2a
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:49d1 $ea $4a $c1
    or   A, A                                          ;; 0f:49d4 $b7
    jr   NZ, .jr_0f_49dc                               ;; 0f:49d5 $20 $05
    call soundEffectMuteChannel4                       ;; 0f:49d7 $cd $70 $41
    jr   .jr_0f_4a11                                   ;; 0f:49da $18 $35
.jr_0f_49dc:
    cp   A, $ef                                        ;; 0f:49dc $fe $ef
    jr   NZ, .jr_0f_49ef                               ;; 0f:49de $20 $0f
    ld   A, [HL+]                                      ;; 0f:49e0 $2a
    ld   C, A                                          ;; 0f:49e1 $4f
    ld   A, [HL+]                                      ;; 0f:49e2 $2a
    ld   B, A                                          ;; 0f:49e3 $47
    ldh  A, [hSoundEffectLoopCounterChannel4]          ;; 0f:49e4 $f0 $9d
    dec  A                                             ;; 0f:49e6 $3d
    ldh  [hSoundEffectLoopCounterChannel4], A          ;; 0f:49e7 $e0 $9d
    jr   Z, .jr_0f_49d0                                ;; 0f:49e9 $28 $e5
    ld   L, C                                          ;; 0f:49eb $69
    ld   H, B                                          ;; 0f:49ec $60
    jr   .jr_0f_49d0                                   ;; 0f:49ed $18 $e1
.jr_0f_49ef:
    cp   A, $f0                                        ;; 0f:49ef $fe $f0
    jr   C, .jr_0f_49f9                                ;; 0f:49f1 $38 $06
    and  A, $0f                                        ;; 0f:49f3 $e6 $0f
    ldh  [hSoundEffectLoopCounterChannel4], A          ;; 0f:49f5 $e0 $9d
    jr   .jr_0f_49d0                                   ;; 0f:49f7 $18 $d7
.jr_0f_49f9:
    ld   A, [HL+]                                      ;; 0f:49f9 $2a
    ldh  [rNR42], A                                    ;; 0f:49fa $e0 $21
    ld   A, [HL+]                                      ;; 0f:49fc $2a
    ldh  [rNR43], A                                    ;; 0f:49fd $e0 $22
    ld   A, $80                                        ;; 0f:49ff $3e $80
    ldh  [rNR44], A                                    ;; 0f:4a01 $e0 $23
    ldh  A, [rNR51]                                    ;; 0f:4a03 $f0 $25
    or   A, $88                                        ;; 0f:4a05 $f6 $88
    ldh  [rNR51], A                                    ;; 0f:4a07 $e0 $25
    ld   A, L                                          ;; 0f:4a09 $7d
    ld   [wSoundEffectInstructionPointerChannel4], A   ;; 0f:4a0a $ea $c6 $c1
    ld   A, H                                          ;; 0f:4a0d $7c
    ld   [wSoundEffectInstructionPointerChannel4.high], A ;; 0f:4a0e $ea $c7 $c1
.jr_0f_4a11:
    ret                                                ;; 0f:4a11 $c9

;@data amount=30 format=ppp
; Music data table, 3 pointers per music:
; Channel 2, Channel 1, Channel 3
; These start at zero, one off of their script numbering
musicSongChannelPointers:
    dw   song00_Channel2, song00_Channel1, song00_Channel3 ;; 0f:4a12 pPpPpP $00
    dw   data_0f_4bb9, data_0f_4c0f, data_0f_4c92      ;; 0f:4a18 ?????? $01
    dw   data_0f_4cc1, data_0f_4d0d, data_0f_4d83      ;; 0f:4a1e ?????? $02
    dw   data_0f_4daf, data_0f_4deb, data_0f_4e33      ;; 0f:4a24 pPpPpP $03
    dw   data_0f_4e5e, data_0f_4e9e, data_0f_4eb0      ;; 0f:4a2a ?????? $04
    dw   data_0f_4edc, data_0f_4fb7, data_0f_503d      ;; 0f:4a30 ?????? $05
    dw   data_0f_50c9, data_0f_515b, data_0f_51d2      ;; 0f:4a36 ?????? $06
    dw   data_0f_523d, data_0f_52a6, data_0f_5344      ;; 0f:4a3c ?????? $07
    dw   data_0f_5388, data_0f_53bf, data_0f_53ef      ;; 0f:4a42 pPpPpP $08
    dw   data_0f_5442, data_0f_5460, data_0f_54e5      ;; 0f:4a48 pPpPpP $09
    dw   data_0f_556f, data_0f_55be, data_0f_5627      ;; 0f:4a4e ?????? $0a
    dw   data_0f_5661, data_0f_56ad, data_0f_5751      ;; 0f:4a54 ?????? $0b
    dw   data_0f_57f5, data_0f_5897, data_0f_5910      ;; 0f:4a5a ?????? $0c
    dw   data_0f_5937, data_0f_5a3a, data_0f_5ac6      ;; 0f:4a60 pPpPpP $0d
    dw   data_0f_5b3c, data_0f_5bc8, data_0f_5daa      ;; 0f:4a66 ?????? $0e
    dw   data_0f_5e69, data_0f_5faa, data_0f_61c2      ;; 0f:4a6c ?????? $0f
    dw   data_0f_6397, data_0f_63b2, data_0f_63be      ;; 0f:4a72 pPpPpP $10
    dw   data_0f_62e9, data_0f_632e, data_0f_6371      ;; 0f:4a78 ?????? $11
    dw   data_0f_63d0, data_0f_64a3, data_0f_6667      ;; 0f:4a7e ?????? $12
    dw   data_0f_6819, data_0f_68bd, data_0f_69ff      ;; 0f:4a84 pPpPpP $13
    dw   data_0f_6b57, data_0f_6c83, data_0f_6da9      ;; 0f:4a8a ?????? $14
    dw   data_0f_6e8a, data_0f_6f5e, data_0f_7031      ;; 0f:4a90 ?????? $15
    dw   data_0f_7070, data_0f_709f, data_0f_70f9      ;; 0f:4a96 pPpPpP $16
    dw   data_0f_7118, data_0f_71aa, data_0f_7263      ;; 0f:4a9c ?????? $17
    dw   data_0f_7349, data_0f_741c, data_0f_756f      ;; 0f:4aa2 ?????? $18
    dw   data_0f_76d3, data_0f_771c, data_0f_7762      ;; 0f:4aa8 pPpPpP $19
    dw   data_0f_77a8, data_0f_7811, data_0f_78a3      ;; 0f:4aae ?????? $1a
    dw   data_0f_78fa, data_0f_7924, data_0f_7948      ;; 0f:4ab4 pPpPpP $1b
    dw   data_0f_796b, data_0f_7984, data_0f_799a      ;; 0f:4aba ?????? $1c
    dw   data_0f_79b6, data_0f_79ea, data_0f_7a1d      ;; 0f:4ac0 ?????? $1d
    db   $ff, $e7, $14                                 ;; 0f:4ac6 ???

song00_Channel2:
    db   $e7, $41, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:4ac9 ........
    db   $e5, $80, $e6, $03, $e3, $02                  ;; 0f:4ad1 ......
.data_0f_4ad7:
    db   $d3, $82, $87, $04, $8f, $84, $85, $84        ;; 0f:4ad7 ........
    db   $82, $80, $82, $87, $04, $8f, $80, $dc        ;; 0f:4adf ........
    db   $8b, $8c, $8b, $87, $29, $8e, $89, $8b        ;; 0f:4ae7 ........
    db   $8c, $d8, $eb, $01                            ;; 0f:4aef ....
    dw   .data_0f_4b01                                 ;; 0f:4af3 pP
    db   $52, $dc, $59, $4b, $8c, $d8, $22, $50        ;; 0f:4af5 ........
    db   $52, $e2                                      ;; 0f:4afd ..
    dw   .data_0f_4ad7                                 ;; 0f:4aff pP
.data_0f_4b01:
    db   $52, $54, $42, $80, $00, $0f, $e1, $d5        ;; 0f:4b01 ..??????
    db   $4a                                           ;; 0f:4b09 ?

song00_Channel1:
    db   $e4, $75, $7a, $e0, $c8, $7a, $e5, $40        ;; 0f:4b0a ........
    db   $e6, $02, $e3, $02                            ;; 0f:4b12 ....
.data_0f_4b16:
    db   $e6, $02, $d1, $8f, $87, $8c, $d8, $82        ;; 0f:4b16 ........
    db   $84, $82, $80, $dc, $87, $8f, $87, $d8        ;; 0f:4b1e ........
    db   $84, $80, $89, $87, $85, $84, $e6, $01        ;; 0f:4b26 ........
    db   $8f, $dc, $89, $8c, $d8, $84, $89, $84        ;; 0f:4b2e ........
    db   $82, $84, $50, $54, $57, $52, $e6, $02        ;; 0f:4b36 ........
    db   $8f, $80, $85, $87, $55, $57, $eb, $01        ;; 0f:4b3e ........
    dw   .data_0f_4b5c                                 ;; 0f:4b46 pP
    db   $86, $84, $86, $87, $56, $59, $e6, $01        ;; 0f:4b48 ........
    db   $8f, $82, $87, $82, $85, $80, $87, $82        ;; 0f:4b50 ........
    db   $dc, $e2                                      ;; 0f:4b58 ..
    dw   .data_0f_4b16                                 ;; 0f:4b5a pP
.data_0f_4b5c:
    db   $e6, $02, $55, $59, $8b, $89, $87, $85        ;; 0f:4b5c ....????
    db   $e6, $01, $8f, $dc, $87, $8c, $d8, $82        ;; 0f:4b64 ????????
    db   $84, $82, $80, $dc, $87, $8f, $87, $8c        ;; 0f:4b6c ????????
    db   $d8, $82, $84, $82, $84, $85, $dc, $e1        ;; 0f:4b74 ????????
    db   $14, $4b                                      ;; 0f:4b7c ??

song00_Channel3:
    db   $e4, $75, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:4b7e ........
    db   $e6, $03, $e3, $02, $d1, $1c, $57, $1c        ;; 0f:4b86 ........
    db   $5b, $19, $d8, $54, $dc, $29, $27, $d8        ;; 0f:4b8e ........
    db   $15, $54, $12, $59, $57, $dc, $57, $59        ;; 0f:4b96 ........
    db   $5b, $1c, $57, $1c, $5b, $19, $d8, $54        ;; 0f:4b9e ........
    db   $dc, $29, $27, $d8, $15, $54, $22, $57        ;; 0f:4ba6 .......?
    db   $dc, $57, $1c, $57, $2c, $27, $e1, $88        ;; 0f:4bae ????????
    db   $4b, $e7, $14                                 ;; 0f:4bb6 ???

data_0f_4bb9:
    db   $e7, $4b, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:4bb9 ????????
    db   $e5, $80, $e6, $03, $d2, $57, $59, $4a        ;; 0f:4bc1 ????????
    db   $83, $1a, $59, $5c, $5a, $49, $82, $29        ;; 0f:4bc9 ????????
    db   $5a, $87, $89, $5a, $5c, $d8, $42, $83        ;; 0f:4bd1 ????????
    db   $50, $dc, $5a, $59, $d8, $52, $50, $52        ;; 0f:4bd9 ????????
    db   $dc, $2a, $2c, $d8, $22, $8e, $82, $83        ;; 0f:4be1 ????????
    db   $85, $27, $8e, $85, $83, $82, $50, $59        ;; 0f:4be9 ????????
    db   $57, $59, $25, $8e, $83, $82, $80, $dc        ;; 0f:4bf1 ????????
    db   $2b, $5c, $d8, $52, $23, $8e, $82, $80        ;; 0f:4bf9 ????????
    db   $82, $53, $55, $50, $53, $02, $5e, $5f        ;; 0f:4c01 ????????
    db   $dc, $57, $59, $e1, $c8, $4b                  ;; 0f:4c09 ??????

data_0f_4c0f:
    db   $e4, $75, $7a, $e0, $c8, $7a, $e5, $00        ;; 0f:4c0f ????????
    db   $e6, $03, $2f, $8f, $d1, $87, $8c, $87        ;; 0f:4c17 ????????
    db   $d8, $83, $dc, $87, $8c, $87, $8f, $8c        ;; 0f:4c1f ????????
    db   $d8, $85, $80, $53, $50, $8f, $dc, $85        ;; 0f:4c27 ????????
    db   $8a, $85, $d8, $82, $dc, $85, $8a, $85        ;; 0f:4c2f ????????
    db   $8f, $8a, $d8, $83, $85, $57, $55, $8f        ;; 0f:4c37 ????????
    db   $dc, $87, $8c, $87, $d8, $83, $dc, $87        ;; 0f:4c3f ????????
    db   $8c, $87, $8f, $8c, $d8, $86, $80, $57        ;; 0f:4c47 ????????
    db   $59, $82, $87, $85, $87, $85, $80, $82        ;; 0f:4c4f ????????
    db   $83, $55, $57, $28, $8f, $dc, $8a, $d8        ;; 0f:4c57 ????????
    db   $83, $dc, $8a, $d8, $27, $59, $d8, $55        ;; 0f:4c5f ????????
    db   $53, $50, $8f, $dc, $80, $88, $87, $25        ;; 0f:4c67 ????????
    db   $8f, $82, $87, $82, $55, $57, $8f, $80        ;; 0f:4c6f ????????
    db   $83, $80, $27, $8f, $dc, $89, $8c, $89        ;; 0f:4c77 ????????
    db   $d8, $53, $57, $8f, $dc, $89, $d8, $84        ;; 0f:4c7f ????????
    db   $80, $87, $89, $84, $87, $26, $50, $52        ;; 0f:4c87 ????????
    db   $e1, $1a, $4c                                 ;; 0f:4c8f ???

data_0f_4c92:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:4c92 ????????
    db   $e6, $03, $2f, $d2, $00, $05, $dc, $0a        ;; 0f:4c9a ????????
    db   $d8, $13, $52, $00, $22, $54, $56, $27        ;; 0f:4ca2 ????????
    db   $29, $2a, $2b, $03, $05, $08, $57, $dc        ;; 0f:4caa ????????
    db   $57, $59, $5b, $0c, $09, $d8, $02, $2e        ;; 0f:4cb2 ????????
    db   $54, $56, $e1, $9e, $4c, $e7, $14             ;; 0f:4cba ???????

data_0f_4cc1:
    db   $e7, $39, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:4cc1 ????????
    db   $e5, $80, $e6, $03, $d2, $0f, $0f, $e7        ;; 0f:4cc9 ????????
    db   $39, $29, $8e, $a8, $a9, $ab, $a9, $a8        ;; 0f:4cd1 ????????
    db   $a9, $21, $8e, $a8, $a9, $ab, $a9, $a8        ;; 0f:4cd9 ????????
    db   $a9, $58, $26, $84, $82, $21, $8e, $8f        ;; 0f:4ce1 ????????
    db   $a6, $a8, $a9, $a6, $d8, $42, $dc, $89        ;; 0f:4ce9 ????????
    db   $58, $a8, $a9, $ab, $a8, $4d, $88, $56        ;; 0f:4cf1 ????????
    db   $a6, $a8, $a9, $a6, $5b, $59, $88, $86        ;; 0f:4cf9 ????????
    db   $85, $86, $28, $8f, $e7, $37, $85, $86        ;; 0f:4d01 ????????
    db   $88, $e2, $d0, $4c                            ;; 0f:4d09 ????

data_0f_4d0d:
    db   $e4, $4f, $7a, $e0, $c4, $7a, $e5, $80        ;; 0f:4d0d ????????
    db   $e6, $03, $d3, $86, $d8, $81, $dc, $8b        ;; 0f:4d15 ????????
    db   $8d, $89, $8d, $88, $8d, $86, $8d, $8b        ;; 0f:4d1d ????????
    db   $8d, $89, $8d, $88, $8d, $dc, $e0, $c8        ;; 0f:4d25 ????????
    db   $7a, $e5, $00, $e6, $02, $8f, $81, $dc        ;; 0f:4d2d ????????
    db   $8b, $8d, $89, $8d, $88, $8d, $e6, $01        ;; 0f:4d35 ????????
    db   $8f, $8b, $89, $8b, $88, $8b, $89, $8b        ;; 0f:4d3d ????????
    db   $e6, $02, $8f, $89, $88, $89, $86, $89        ;; 0f:4d45 ????????
    db   $88, $89, $e6, $01, $8f, $88, $86, $88        ;; 0f:4d4d ????????
    db   $84, $88, $86, $88, $e6, $02, $8f, $89        ;; 0f:4d55 ????????
    db   $86, $89, $8f, $8b, $88, $8b, $e6, $01        ;; 0f:4d5d ????????
    db   $8f, $89, $84, $8b, $8f, $89, $86, $89        ;; 0f:4d65 ????????
    db   $e6, $03, $8f, $86, $82, $86, $8f, $86        ;; 0f:4d6d ????????
    db   $82, $86, $8f, $88, $86, $88, $85, $88        ;; 0f:4d75 ????????
    db   $8b, $8d, $d8, $e2, $2b, $4d                  ;; 0f:4d7d ??????

data_0f_4d83:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:4d83 ????????
    db   $d2, $0f, $0f, $e6, $03, $06, $04, $02        ;; 0f:4d8b ????????
    db   $01, $dc, $2b, $d8, $24, $dc, $29, $d8        ;; 0f:4d93 ????????
    db   $22, $dc, $0b, $2d, $8f, $e6, $02, $8d        ;; 0f:4d9b ????????
    db   $d8, $e6, $03, $83, $e6, $01, $85, $e2        ;; 0f:4da3 ????????
    db   $8e, $4d, $e7, $14                            ;; 0f:4dab ????

data_0f_4daf:
    db   $e7, $3e, $e4, $4f, $7a                       ;; 0f:4daf .....
.data_0f_4db4:
    db   $e0, $82, $7a, $e5, $40, $e6, $03, $d3        ;; 0f:4db4 ........
    db   $54, $82, $84, $22, $50, $dc, $8b, $8c        ;; 0f:4dbc ........
    db   $5b, $57, $89, $87, $89, $8b, $8c, $d8        ;; 0f:4dc4 ........
    db   $82, $84, $86, $57, $85, $84, $22, $84        ;; 0f:4dcc ........
    db   $dc, $8b, $8a, $8b, $d8, $54, $52, $80        ;; 0f:4dd4 ........
    db   $82, $84, $80, $59, $87, $85, $54, $85        ;; 0f:4ddc ........
    db   $84, $42, $80, $00, $e1                       ;; 0f:4de4 .....
    dw   .data_0f_4db4                                 ;; 0f:4de9 pP

data_0f_4deb:
    db   $e4, $4f, $7a                                 ;; 0f:4deb ...
.data_0f_4dee:
    db   $e0, $b0, $7a, $e5, $40, $e6, $02, $8f        ;; 0f:4dee ........
    db   $d2, $84, $85, $87, $8f, $82, $84, $82        ;; 0f:4df6 ........
    db   $8f, $84, $82, $84, $8f, $82, $dc, $8b        ;; 0f:4dfe ........
    db   $d8, $82, $85, $84, $85, $87, $56, $87        ;; 0f:4e06 ........
    db   $89, $5b, $89, $87, $85, $e6, $03, $87        ;; 0f:4e0e ........
    db   $89, $8b, $e6, $01, $8f, $82, $84, $82        ;; 0f:4e16 ........
    db   $59, $5b, $54, $89, $84, $25, $8f, $8c        ;; 0f:4e1e ........
    db   $89, $87, $85, $89, $87, $85, $55, $84        ;; 0f:4e26 ........
    db   $82, $24, $e1                                 ;; 0f:4e2e ...
    dw   .data_0f_4dee                                 ;; 0f:4e31 pP

data_0f_4e33:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:4e33 ........
    db   $e6, $03                                      ;; 0f:4e3b ..
.data_0f_4e3d:
    db   $d2, $20, $27, $29, $27, $45, $84, $22        ;; 0f:4e3d ........
    db   $27, $8e, $8b, $8c, $d8, $82, $dc, $24        ;; 0f:4e45 ........
    db   $56, $58, $59, $57, $25, $27, $27, $20        ;; 0f:4e4d ........
    db   $8e, $87, $85, $82, $e1                       ;; 0f:4e55 .....
    dw   .data_0f_4e3d                                 ;; 0f:4e5a pP
    db   $e7, $14                                      ;; 0f:4e5c ??

data_0f_4e5e:
    db   $e7, $7c, $e4, $63, $7a, $e0, $8c, $7a        ;; 0f:4e5e ????????
    db   $e5, $00, $e6, $03, $0f, $0f, $d3, $82        ;; 0f:4e66 ????????
    db   $af, $a1, $a2, $af, $a7, $af, $e0, $c2        ;; 0f:4e6e ????????
    db   $7a, $05, $e0, $94, $7a, $8f, $a2, $a4        ;; 0f:4e76 ????????
    db   $a5, $a4, $a2, $dc, $ab, $d8, $82, $af        ;; 0f:4e7e ????????
    db   $a1, $a2, $af, $a7, $af, $e0, $c2, $7a        ;; 0f:4e86 ????????
    db   $05, $e0, $94, $7a, $8f, $a5, $a7, $a9        ;; 0f:4e8e ????????
    db   $a5, $a2, $dc, $ab, $d8, $e1, $6d, $4e        ;; 0f:4e96 ????????

data_0f_4e9e:
    db   $e4, $4f, $7a, $e0, $a0, $7a, $e5, $00        ;; 0f:4e9e ????????
    db   $e6, $03, $8f, $d3, $a1, $ce, $cf, $e1        ;; 0f:4ea6 ????????
    db   $a8, $4e                                      ;; 0f:4eae ??

data_0f_4eb0:
    db   $e4, $4f, $7a, $e8, $ec, $7a, $e0, $40        ;; 0f:4eb0 ????????
    db   $e6, $03, $d2, $a7, $af, $d8, $a2, $ce        ;; 0f:4eb8 ????????
    db   $cf, $dc, $a7, $af, $d8, $a2, $ce, $cf        ;; 0f:4ec0 ????????
    db   $dc, $a5, $af, $d8, $a2, $ce, $cf, $dc        ;; 0f:4ec8 ????????
    db   $a5, $af, $d8, $a2, $ce, $cf, $dc, $e1        ;; 0f:4ed0 ????????
    db   $ba, $4e, $e7, $14                            ;; 0f:4ed8 ????

data_0f_4edc:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $00        ;; 0f:4edc ????????
    db   $e6, $03, $e7, $82, $d3, $72, $af, $72        ;; 0f:4ee4 ????????
    db   $af, $e7, $84, $a2, $af, $72, $af, $a2        ;; 0f:4eec ????????
    db   $af, $e7, $82, $a2, $af, $72, $af, $a2        ;; 0f:4ef4 ????????
    db   $af, $e7, $80, $72, $af, $72, $af, $e7        ;; 0f:4efc ????????
    db   $82, $72, $af, $72, $af, $a2, $af, $72        ;; 0f:4f04 ????????
    db   $af, $a2, $af, $e7, $80, $a2, $af, $a2        ;; 0f:4f0c ????????
    db   $a2, $a2, $af, $a2, $af, $42, $8f, $e6        ;; 0f:4f14 ????????
    db   $03, $e3, $02, $e7, $82, $e5, $00, $a2        ;; 0f:4f1c ????????
    db   $7f, $dc, $ab, $af, $a7, $af, $a4, $af        ;; 0f:4f24 ????????
    db   $d8, $a2, $af, $dc, $ab, $af, $a7, $af        ;; 0f:4f2c ????????
    db   $ab, $7f, $a7, $7f, $ab, $ac, $ab, $ac        ;; 0f:4f34 ????????
    db   $e7, $7f, $ab, $af, $a9, $af, $e7, $82        ;; 0f:4f3c ????????
    db   $a7, $af, $e7, $7f, $a7, $a9, $e7, $82        ;; 0f:4f44 ????????
    db   $a7, $af, $a5, $af, $57, $8f, $a5, $af        ;; 0f:4f4c ????????
    db   $eb, $01, $6a, $4f, $a7, $af, $a7, $ab        ;; 0f:4f54 ????????
    db   $d8, $a2, $af, $a4, $af, $a5, $a7, $a5        ;; 0f:4f5c ????????
    db   $a7, $a5, $7f, $e2, $1f, $4f, $a7, $af        ;; 0f:4f64 ????????
    db   $a7, $ab, $d8, $a2, $af, $a4, $af, $a5        ;; 0f:4f6c ????????
    db   $a7, $a5, $a7, $a5, $7f, $a4, $a2, $a0        ;; 0f:4f74 ????????
    db   $a2, $e7, $7f, $a4, $af, $a7, $af, $e7        ;; 0f:4f7c ????????
    db   $82, $76, $a4, $a6, $af, $a9, $af, $a7        ;; 0f:4f84 ????????
    db   $a5, $a3, $a5, $e7, $7f, $a7, $af, $aa        ;; 0f:4f8c ????????
    db   $af, $e7, $82, $79, $a7, $a5, $af, $a3        ;; 0f:4f94 ????????
    db   $af, $e5, $40, $8f, $a2, $af, $a2, $af        ;; 0f:4f9c ????????
    db   $8f, $a2, $af, $a2, $af, $8f, $a2, $af        ;; 0f:4fa4 ????????
    db   $a2, $af, $2f, $a2, $a4, $a2, $af, $8f        ;; 0f:4fac ????????
    db   $e1, $1b, $4f                                 ;; 0f:4fb4 ???

data_0f_4fb7:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $00        ;; 0f:4fb7 ????????
    db   $e6, $03, $d3, $71, $af, $71, $af, $a1        ;; 0f:4fbf ????????
    db   $af, $71, $af, $a1, $af, $a1, $af, $71        ;; 0f:4fc7 ????????
    db   $af, $a1, $af, $71, $af, $71, $af, $71        ;; 0f:4fcf ????????
    db   $af, $71, $af, $a1, $af, $71, $af, $a1        ;; 0f:4fd7 ????????
    db   $af, $a1, $af, $a1, $a1, $a1, $af, $a1        ;; 0f:4fdf ????????
    db   $af, $41, $8f, $dc, $e3, $08, $e0, $c8        ;; 0f:4fe7 ????????
    db   $7a, $e6, $02, $8f, $a1, $af, $e6, $02        ;; 0f:4fef ????????
    db   $8f, $a1, $af, $e6, $01, $8f, $a1, $af        ;; 0f:4ff7 ????????
    db   $e6, $01, $8f, $a1, $af, $e2, $ed, $4f        ;; 0f:4fff ????????
    db   $e6, $03, $8f, $a4, $a6, $a7, $af, $a4        ;; 0f:5007 ????????
    db   $af, $8f, $a6, $a7, $a9, $af, $a6, $af        ;; 0f:500f ????????
    db   $8f, $a7, $a9, $aa, $af, $a7, $af, $8f        ;; 0f:5017 ????????
    db   $a9, $aa, $a9, $a7, $a5, $a3, $8f, $ad        ;; 0f:501f ????????
    db   $af, $ad, $af, $8f, $ad, $af, $ad, $af        ;; 0f:5027 ????????
    db   $8f, $ad, $af, $ad, $af, $2f, $ac, $ab        ;; 0f:502f ????????
    db   $a9, $af, $8f, $e1, $eb, $4f                  ;; 0f:5037 ??????

data_0f_503d:
    db   $e4, $4f, $7a, $e8, $ec, $7a, $e0, $40        ;; 0f:503d ????????
    db   $e6, $03, $d3, $7b, $af, $7b, $af, $a9        ;; 0f:5045 ????????
    db   $af, $79, $af, $a9, $af, $ab, $af, $7b        ;; 0f:504d ????????
    db   $af, $ab, $af, $79, $af, $79, $af, $7b        ;; 0f:5055 ????????
    db   $af, $7b, $af, $a9, $af, $79, $af, $a9        ;; 0f:505d ????????
    db   $af, $a7, $af, $a7, $a9, $ab, $af, $a7        ;; 0f:5065 ????????
    db   $af, $89, $dc, $a2, $a0, $dc, $ab, $af        ;; 0f:506d ????????
    db   $a9, $af, $e6, $03, $e3, $08, $e8, $dc        ;; 0f:5075 ????????
    db   $7a, $87, $d9, $e6, $02, $a2, $af, $dd        ;; 0f:507d ????????
    db   $e6, $03, $87, $d9, $e6, $02, $a2, $af        ;; 0f:5085 ????????
    db   $dd, $e6, $03, $85, $d9, $e6, $01, $a2        ;; 0f:508d ????????
    db   $af, $dd, $e6, $03, $85, $d9, $e6, $01        ;; 0f:5095 ????????
    db   $a2, $af, $dd, $e2, $7b, $50, $e6, $03        ;; 0f:509d ????????
    db   $d8, $20, $22, $23, $25, $e6, $02, $a2        ;; 0f:50a5 ????????
    db   $af, $5f, $e6, $01, $a9, $af, $5f, $e6        ;; 0f:50ad ????????
    db   $03, $a2, $af, $5f, $a6, $a7, $a9, $a7        ;; 0f:50b5 ????????
    db   $a6, $a4, $a2, $af, $5f, $dc, $89, $e1        ;; 0f:50bd ????????
    db   $77, $50, $e7, $14                            ;; 0f:50c5 ????

data_0f_50c9:
    db   $e7, $60, $e4, $75, $7a, $e0, $82, $7a        ;; 0f:50c9 ????????
    db   $e5, $80, $e6, $03, $d2, $b5, $b6, $b7        ;; 0f:50d1 ????????
    db   $b8, $b9, $ba, $e3, $02, $e5, $40, $ab        ;; 0f:50d9 ????????
    db   $d8, $a4, $13, $8e, $5e, $8f, $dc, $8b        ;; 0f:50e1 ????????
    db   $d8, $82, $81, $dc, $59, $4b, $bc, $bd        ;; 0f:50e9 ????????
    db   $d8, $b2, $43, $b2, $b1, $b0, $dc, $eb        ;; 0f:50f1 ????????
    db   $01, $07, $51, $8b, $bc, $bd, $d8, $b2        ;; 0f:50f9 ????????
    db   $23, $50, $dc, $e2, $de, $50, $8b, $bc        ;; 0f:5101 ????????
    db   $bd, $d8, $b2, $53, $56, $59, $e3, $02        ;; 0f:5109 ????????
    db   $4b, $b9, $b8, $b7, $46, $b7, $b8, $b9        ;; 0f:5111 ????????
    db   $8b, $b9, $b8, $b7, $26, $84, $86, $dc        ;; 0f:5119 ????????
    db   $4b, $bc, $bd, $d8, $b2, $43, $b2, $b1        ;; 0f:5121 ????????
    db   $b0, $dc, $eb, $01, $3a, $51, $8b, $bc        ;; 0f:5129 ????????
    db   $bd, $d8, $b2, $53, $56, $59, $e2, $11        ;; 0f:5131 ????????
    db   $51, $8b, $bc, $bd, $d8, $b2, $13, $e5        ;; 0f:5139 ????????
    db   $00, $54, $53, $52, $53, $84, $83, $82        ;; 0f:5141 ????????
    db   $83, $8f, $84, $83, $8f, $82, $83, $8f        ;; 0f:5149 ????????
    db   $84, $83, $8f, $84, $05, $8e, $dc, $e1        ;; 0f:5151 ????????
    db   $dc, $50                                      ;; 0f:5159 ??

data_0f_515b:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $80        ;; 0f:515b ????????
    db   $e6, $03, $d1, $ba, $bb, $bc, $bd, $d8        ;; 0f:5163 ????????
    db   $b2, $b3, $e3, $08, $e0, $c6, $7a, $e6        ;; 0f:516b ????????
    db   $02, $e5, $00, $a4, $dc, $ab, $d8, $a3        ;; 0f:5173 ????????
    db   $dc, $aa, $d8, $a2, $dc, $a9, $ad, $a8        ;; 0f:517b ????????
    db   $d8, $e6, $03, $a4, $dc, $ab, $d8, $a3        ;; 0f:5183 ????????
    db   $dc, $aa, $d8, $a2, $dc, $a9, $ad, $a8        ;; 0f:518b ????????
    db   $d8, $e6, $01, $a4, $dc, $ab, $d8, $a3        ;; 0f:5193 ????????
    db   $dc, $aa, $d8, $a2, $dc, $a9, $ad, $a8        ;; 0f:519b ????????
    db   $d8, $e6, $03, $a4, $dc, $ab, $d8, $a3        ;; 0f:51a3 ????????
    db   $dc, $aa, $d8, $a2, $dc, $a9, $ad, $a8        ;; 0f:51ab ????????
    db   $d8, $e2, $6f, $51, $e0, $82, $7a, $5b        ;; 0f:51b3 ????????
    db   $5a, $59, $5a, $8b, $8a, $89, $8a, $8f        ;; 0f:51bb ????????
    db   $8b, $8a, $8f, $89, $8a, $8f, $8b, $8a        ;; 0f:51c3 ????????
    db   $8f, $8b, $0c, $8e, $e1, $6d, $51             ;; 0f:51cb ???????

data_0f_51d2:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:51d2 ????????
    db   $e6, $03, $5f, $e8, $dc, $7a, $e3, $08        ;; 0f:51da ????????
    db   $d2, $24, $dc, $2b, $d8, $22, $dc, $29        ;; 0f:51e2 ????????
    db   $d8, $e2, $e2, $51, $e8, $cc, $7a, $5c        ;; 0f:51ea ????????
    db   $5b, $5a, $5b, $8c, $8b, $8a, $8b, $e0        ;; 0f:51f2 ????????
    db   $20, $e6, $02, $a0, $af, $e0, $40, $e6        ;; 0f:51fa ????????
    db   $03, $8c, $8b, $e0, $20, $e6, $01, $a0        ;; 0f:5202 ????????
    db   $af, $e0, $40, $e6, $03, $8a, $8b, $e0        ;; 0f:520a ????????
    db   $20, $e6, $02, $a0, $af, $e0, $40, $e6        ;; 0f:5212 ????????
    db   $03, $8c, $8b, $e0, $20, $e6, $01, $a0        ;; 0f:521a ????????
    db   $af, $e0, $40, $e6, $03, $8c, $8d, $7e        ;; 0f:5222 ????????
    db   $af, $e6, $02, $7d, $af, $e6, $01, $7d        ;; 0f:522a ????????
    db   $af, $e6, $03, $81, $a2, $a3, $e1, $dd        ;; 0f:5232 ????????
    db   $51, $e7, $14                                 ;; 0f:523a ???

data_0f_523d:
    db   $e4, $75, $7a, $e0, $82, $7a, $e5, $80        ;; 0f:523d ????????
    db   $e6, $03, $e7, $5a, $e3, $02, $d3, $1b        ;; 0f:5245 ????????
    db   $28, $85, $a8, $a5, $14, $52, $54, $52        ;; 0f:524d ????????
    db   $dc, $2b, $7e, $cc, $cd, $d8, $24, $7e        ;; 0f:5255 ????????
    db   $c5, $c6, $18, $dc, $eb, $01, $75, $52        ;; 0f:525d ????????
    db   $ab, $ac, $d8, $a3, $a4, $a3, $a0, $a3        ;; 0f:5265 ????????
    db   $a4, $a5, $a8, $a9, $aa, $e2, $4b, $52        ;; 0f:526d ????????
    db   $d8, $ab, $a9, $a8, $a9, $a8, $a5, $a4        ;; 0f:5275 ????????
    db   $a5, $a4, $a3, $a0, $dc, $ab, $e7, $6e        ;; 0f:527d ????????
    db   $e0, $be, $7a, $e5, $40, $2a, $8e, $a9        ;; 0f:5285 ????????
    db   $aa, $2b, $8e, $aa, $ab, $2c, $ad, $d8        ;; 0f:528d ????????
    db   $a2, $a3, $a4, $25, $be, $e7, $5a, $e5        ;; 0f:5295 ????????
    db   $80, $b6, $b7, $b8, $b9, $ba, $e1, $40        ;; 0f:529d ????????
    db   $52                                           ;; 0f:52a5 ?

data_0f_52a6:
    db   $e4, $4f, $7a, $e0, $c2, $7a, $e5, $80        ;; 0f:52a6 ????????
    db   $e6, $02, $d2, $af, $84, $85, $88, $89        ;; 0f:52ae ????????
    db   $88, $85, $84, $85, $88, $89, $88, $85        ;; 0f:52b6 ????????
    db   $84, $85, $88, $89, $88, $85, $84, $85        ;; 0f:52be ????????
    db   $88, $89, $88, $85, $84, $85, $88, $89        ;; 0f:52c6 ????????
    db   $88, $85, $84, $85, $88, $89, $88, $85        ;; 0f:52ce ????????
    db   $84, $85, $88, $89, $88, $85, $84, $85        ;; 0f:52d6 ????????
    db   $88, $89, $88, $85, $84, $85, $88, $89        ;; 0f:52de ????????
    db   $88, $85, $84, $85, $88, $89, $88, $85        ;; 0f:52e6 ????????
    db   $84, $85, $88, $89, $88, $85, $84, $85        ;; 0f:52ee ????????
    db   $88, $89, $88, $85, $84, $85, $88, $89        ;; 0f:52f6 ????????
    db   $88, $85, $84, $85, $88, $89, $88, $85        ;; 0f:52fe ????????
    db   $84, $85, $88, $89, $88, $85, $84, $85        ;; 0f:5306 ????????
    db   $88, $89, $88, $a5, $e0, $c0, $7a, $e5        ;; 0f:530e ????????
    db   $40, $e6, $03, $a6, $af, $a6, $af, $8f        ;; 0f:5316 ????????
    db   $a6, $af, $5f, $a7, $af, $a7, $af, $8f        ;; 0f:531e ????????
    db   $a7, $af, $5f, $a8, $af, $a8, $af, $8f        ;; 0f:5326 ????????
    db   $a8, $af, $5f, $a9, $af, $a9, $af, $8f        ;; 0f:532e ????????
    db   $a9, $af, $e5, $80, $b9, $ba, $bb, $bc        ;; 0f:5336 ????????
    db   $bd, $d8, $b2, $e1, $a9, $52                  ;; 0f:533e ??????

data_0f_5344:
    db   $e4, $4f, $7a, $e8, $fc, $7a, $e0, $20        ;; 0f:5344 ????????
    db   $e6, $01, $e3, $10, $d3, $84, $85, $88        ;; 0f:534c ????????
    db   $89, $88, $85, $e2, $50, $53, $e8, $dc        ;; 0f:5354 ????????
    db   $7a, $e0, $20, $e6, $03, $dc, $a0, $af        ;; 0f:535c ????????
    db   $a0, $af, $8f, $a0, $af, $5f, $a1, $af        ;; 0f:5364 ????????
    db   $a1, $af, $8f, $a1, $af, $5f, $a2, $af        ;; 0f:536c ????????
    db   $a2, $af, $8f, $a2, $af, $5f, $a3, $af        ;; 0f:5374 ????????
    db   $a3, $af, $8f, $a3, $af, $5f, $d8, $e1        ;; 0f:537c ????????
    db   $47, $53, $e7, $14                            ;; 0f:5384 ????

data_0f_5388:
    db   $e7, $91, $e4, $75, $7a, $e0, $82, $7a        ;; 0f:5388 ........
    db   $e5, $40                                      ;; 0f:5390 ..
.data_0f_5392:
    db   $e6, $03, $d3, $16, $54, $59, $57, $56        ;; 0f:5392 ........
    db   $54, $45, $a4, $a3, $02, $af, $dc, $ab        ;; 0f:539a ........
    db   $ac, $ad, $d8, $a2, $a3, $a4, $a5, $16        ;; 0f:53a2 ........
    db   $54, $59, $57, $56, $54, $45, $a8, $a9        ;; 0f:53aa ........
    db   $0b, $ae, $a9, $a8, $a5, $a2, $a5, $a2        ;; 0f:53b2 ........
    db   $dc, $ab, $e1                                 ;; 0f:53ba ...
    dw   .data_0f_5392                                 ;; 0f:53bd pP

data_0f_53bf:
    db   $e4, $75, $7a, $e0, $ae, $7a, $e5, $40        ;; 0f:53bf ........
    db   $e6, $03                                      ;; 0f:53c7 ..
.data_0f_53c9:
    db   $e3, $04                                      ;; 0f:53c9 ..
.data_0f_53cb:
    db   $e6, $03, $d2, $a9, $a6, $a9, $a6, $e6        ;; 0f:53cb ........
    db   $02, $a9, $a6, $a9, $a6, $e2                  ;; 0f:53d3 ......
    dw   .data_0f_53cb                                 ;; 0f:53d9 pP
    db   $e3, $04                                      ;; 0f:53db ..
.data_0f_53dd:
    db   $e6, $03, $a8, $a5, $a8, $a5, $e6, $01        ;; 0f:53dd ........
    db   $a8, $a5, $a8, $a5, $e2                       ;; 0f:53e5 .....
    dw   .data_0f_53dd                                 ;; 0f:53ea pP
    db   $e1                                           ;; 0f:53ec .
    dw   .data_0f_53c9                                 ;; 0f:53ed pP

data_0f_53ef:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $20        ;; 0f:53ef ........
.data_0f_53f7:
    db   $e6, $03, $d2, $a0, $af, $a0, $af, $8f        ;; 0f:53f7 ........
    db   $a0, $af, $e6, $02, $8f, $a0, $af, $8f        ;; 0f:53ff ........
    db   $a0, $af, $e6, $03, $a0, $af, $a0, $af        ;; 0f:5407 ........
    db   $8f, $a0, $af, $e6, $02, $8f, $a0, $af        ;; 0f:540f ........
    db   $8f, $a0, $af, $e6, $03, $dc, $ab, $af        ;; 0f:5417 ........
    db   $ab, $af, $8f, $ab, $af, $e6, $01, $8f        ;; 0f:541f ........
    db   $ab, $af, $8f, $ab, $af, $e6, $03, $ab        ;; 0f:5427 ........
    db   $af, $ab, $af, $8f, $ab, $af, $e6, $01        ;; 0f:542f ........
    db   $8f, $ab, $af, $8f, $ab, $af, $e1             ;; 0f:5437 .......
    dw   .data_0f_53f7                                 ;; 0f:543e pP
    db   $e7, $14                                      ;; 0f:5440 ??

data_0f_5442:
    db   $e7, $7f, $e4, $63, $7a, $e0, $82, $7a        ;; 0f:5442 ........
    db   $e6, $03                                      ;; 0f:544a ..
.data_0f_544c:
    db   $e5, $40, $d1, $00, $2e, $20, $dc, $0b        ;; 0f:544c ........
    db   $2e, $2b, $d8, $00, $2e, $20, $01, $2e        ;; 0f:5454 ........
    db   $21, $e1                                      ;; 0f:545c ..
    dw   .data_0f_544c                                 ;; 0f:545e pP

data_0f_5460:
    db   $e4, $4f, $7a, $e0, $c2, $7a, $e6, $02        ;; 0f:5460 ........
    db   $d2, $af                                      ;; 0f:5468 ..
.data_0f_546a:
    db   $e0, $c2, $7a, $e5, $80, $88, $84, $80        ;; 0f:546a ........
    db   $84, $88, $84, $80, $84, $e0, $c8, $7a        ;; 0f:5472 ........
    db   $e5, $40, $88, $84, $80, $84, $e5, $00        ;; 0f:547a ........
    db   $88, $84, $80, $84, $e0, $c2, $7a, $e5        ;; 0f:5482 ........
    db   $80, $87, $83, $dc, $8b, $d8, $83, $87        ;; 0f:548a ........
    db   $83, $dc, $8b, $d8, $83, $e0, $c8, $7a        ;; 0f:5492 ........
    db   $e5, $40, $87, $83, $dc, $8b, $d8, $83        ;; 0f:549a ........
    db   $e5, $00, $87, $83, $dc, $8b, $d8, $83        ;; 0f:54a2 ........
    db   $e0, $c2, $7a, $e5, $80, $88, $84, $80        ;; 0f:54aa ........
    db   $84, $88, $84, $80, $84, $e0, $c8, $7a        ;; 0f:54b2 ........
    db   $e5, $40, $88, $84, $80, $84, $e5, $00        ;; 0f:54ba ........
    db   $88, $84, $80, $84, $e0, $c2, $7a, $e5        ;; 0f:54c2 ........
    db   $80, $89, $85, $81, $85, $89, $85, $81        ;; 0f:54ca ........
    db   $85, $e0, $c8, $7a, $e5, $40, $89, $85        ;; 0f:54d2 ........
    db   $81, $85, $e5, $00, $89, $85, $81, $85        ;; 0f:54da ........
    db   $e1                                           ;; 0f:54e2 .
    dw   .data_0f_546a                                 ;; 0f:54e3 pP

data_0f_54e5:
    db   $e4, $4f, $7a, $e6, $01                       ;; 0f:54e5 .....
.data_0f_54ea:
    db   $e8, $cc, $7a, $e0, $20, $d3, $88, $84        ;; 0f:54ea ........
    db   $80, $84, $d3, $88, $84, $80, $84, $e8        ;; 0f:54f2 ........
    db   $dc, $7a, $e0, $40, $d3, $88, $84, $80        ;; 0f:54fa ........
    db   $84, $e8, $ec, $7a, $d3, $88, $84, $80        ;; 0f:5502 ........
    db   $84, $e8, $cc, $7a, $e0, $20, $87, $83        ;; 0f:550a ........
    db   $dc, $8b, $d8, $83, $87, $83, $dc, $8b        ;; 0f:5512 ........
    db   $d8, $83, $e8, $dc, $7a, $e0, $40, $87        ;; 0f:551a ........
    db   $83, $dc, $8b, $d8, $83, $e8, $ec, $7a        ;; 0f:5522 ........
    db   $87, $83, $dc, $8b, $d8, $83, $e8, $cc        ;; 0f:552a ........
    db   $7a, $e0, $20, $88, $84, $80, $84, $88        ;; 0f:5532 ........
    db   $84, $80, $84, $e8, $dc, $7a, $e0, $40        ;; 0f:553a ........
    db   $88, $84, $80, $84, $e8, $ec, $7a, $88        ;; 0f:5542 ........
    db   $84, $80, $84, $e8, $cc, $7a, $e0, $20        ;; 0f:554a ........
    db   $89, $85, $81, $85, $89, $85, $81, $85        ;; 0f:5552 ........
    db   $e8, $dc, $7a, $e0, $40, $89, $85, $81        ;; 0f:555a ........
    db   $85, $e8, $ec, $7a, $89, $85, $81, $85        ;; 0f:5562 ........
    db   $e1                                           ;; 0f:556a .
    dw   .data_0f_54ea                                 ;; 0f:556b pP
    db   $e7, $14                                      ;; 0f:556d ??

data_0f_556f:
    db   $e7, $3e, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:556f ????????
    db   $e5, $40, $e6, $03, $e3, $02, $d2, $54        ;; 0f:5577 ????????
    db   $5d, $5b, $59, $58, $56, $5b, $ae, $a9        ;; 0f:557f ????????
    db   $a8, $a6, $58, $d8, $54, $52, $51, $dc        ;; 0f:5587 ????????
    db   $4b, $a9, $a8, $29, $88, $86, $85, $86        ;; 0f:558f ????????
    db   $5b, $8d, $d8, $82, $84, $81, $84, $88        ;; 0f:5597 ????????
    db   $56, $54, $eb, $01, $b3, $55, $52, $dc        ;; 0f:559f ????????
    db   $46, $88, $89, $8b, $49, $ab, $a9, $58        ;; 0f:55a7 ????????
    db   $56, $e2, $7d, $55, $22, $81, $dc, $8b        ;; 0f:55af ????????
    db   $89, $88, $2b, $29, $e1, $7b, $55             ;; 0f:55b7 ???????

data_0f_55be:
    db   $e4, $4f, $7a, $e0, $c4, $7a, $e5, $00        ;; 0f:55be ????????
    db   $e3, $02, $e6, $02, $d2, $81, $dc, $89        ;; 0f:55c6 ????????
    db   $d8, $84, $89, $58, $54, $e6, $03, $42        ;; 0f:55ce ????????
    db   $81, $82, $84, $52, $e6, $01, $84, $81        ;; 0f:55d6 ????????
    db   $88, $8b, $56, $54, $e6, $03, $46, $84        ;; 0f:55de ????????
    db   $86, $81, $86, $84, $e6, $02, $52, $81        ;; 0f:55e6 ????????
    db   $82, $84, $86, $e6, $03, $88, $86, $e6        ;; 0f:55ee ????????
    db   $01, $58, $5b, $8d, $8b, $8a, $88, $eb        ;; 0f:55f6 ????????
    db   $01, $17, $56, $e6, $03, $86, $84, $82        ;; 0f:55fe ????????
    db   $81, $22, $e6, $02, $82, $dc, $8b, $8d        ;; 0f:5606 ????????
    db   $d8, $82, $e6, $03, $54, $52, $e2, $c8        ;; 0f:560e ????????
    db   $55, $e6, $03, $8f, $86, $88, $89, $88        ;; 0f:5616 ????????
    db   $86, $54, $56, $84, $82, $21, $e1, $c6        ;; 0f:561e ????????
    db   $55                                           ;; 0f:5626 ?

data_0f_5627:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:5627 ????????
    db   $e6, $03, $e3, $02, $d1, $19, $5d, $d8        ;; 0f:562f ????????
    db   $02, $11, $58, $56, $51, $dc, $56, $5d        ;; 0f:5637 ????????
    db   $2b, $d8, $54, $52, $21, $dc, $26, $eb        ;; 0f:563f ????????
    db   $01, $52, $56, $0b, $d8, $14, $52, $dc        ;; 0f:5647 ????????
    db   $e2, $33, $56, $2b, $d8, $24, $52, $81        ;; 0f:564f ????????
    db   $dc, $8b, $59, $d8, $54, $e1, $31, $56        ;; 0f:5657 ????????
    db   $e7, $14                                      ;; 0f:565f ??

data_0f_5661:
    db   $e7, $82, $e4, $75, $7a, $e0, $82, $7a        ;; 0f:5661 ????????
    db   $e5, $80, $e6, $03, $e3, $02, $d1, $dc        ;; 0f:5669 ????????
    db   $06, $06, $26, $d8, $26, $21, $dc, $26        ;; 0f:5671 ????????
    db   $05, $05, $25, $d8, $25, $20, $dc, $25        ;; 0f:5679 ????????
    db   $e2, $6f, $56, $06, $06, $26, $d8, $26        ;; 0f:5681 ????????
    db   $21, $dc, $26, $07, $07, $27, $d8, $22        ;; 0f:5689 ????????
    db   $dc, $27, $25, $04, $04, $24, $d8, $24        ;; 0f:5691 ????????
    db   $dc, $2b, $24, $05, $05, $25, $d8, $e7        ;; 0f:5699 ????????
    db   $78, $25, $e7, $73, $20, $dc, $e7, $6c        ;; 0f:56a1 ????????
    db   $25, $e1, $61, $56                            ;; 0f:56a9 ????

data_0f_56ad:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $80        ;; 0f:56ad ????????
    db   $e6, $02, $d3, $af, $e3, $04, $d3, $84        ;; 0f:56b5 ????????
    db   $dc, $89, $8d, $d8, $84, $86, $dc, $89        ;; 0f:56bd ????????
    db   $8d, $d8, $86, $e2, $bb, $56, $e3, $04        ;; 0f:56c5 ????????
    db   $84, $dc, $89, $8c, $d8, $84, $85, $dc        ;; 0f:56cd ????????
    db   $89, $8c, $d8, $85, $e2, $cd, $56, $e3        ;; 0f:56d5 ????????
    db   $04, $84, $dc, $89, $8d, $d8, $84, $86        ;; 0f:56dd ????????
    db   $dc, $89, $8d, $d8, $86, $e2, $de, $56        ;; 0f:56e5 ????????
    db   $e3, $04, $84, $dc, $89, $8c, $d8, $84        ;; 0f:56ed ????????
    db   $85, $dc, $89, $8c, $d8, $85, $e2, $ef        ;; 0f:56f5 ????????
    db   $56, $e3, $04, $85, $dc, $8a, $8d, $d8        ;; 0f:56fd ????????
    db   $85, $86, $dc, $8a, $8d, $d8, $86, $e2        ;; 0f:5705 ????????
    db   $00, $57, $e3, $03, $87, $dc, $8a, $d8        ;; 0f:570d ????????
    db   $82, $87, $89, $dc, $8a, $d8, $82, $89        ;; 0f:5715 ????????
    db   $e2, $11, $57, $87, $dc, $8a, $d8, $82        ;; 0f:571d ????????
    db   $87, $85, $dc, $89, $8c, $d8, $85, $e3        ;; 0f:5725 ????????
    db   $04, $84, $dc, $87, $8b, $d8, $84, $86        ;; 0f:572d ????????
    db   $dc, $87, $8b, $d8, $86, $e2, $2e, $57        ;; 0f:5735 ????????
    db   $e3, $04, $84, $dc, $89, $8c, $d8, $84        ;; 0f:573d ????????
    db   $85, $dc, $89, $8c, $d8, $85, $e2, $3f        ;; 0f:5745 ????????
    db   $57, $e1, $b9, $56                            ;; 0f:574d ????

data_0f_5751:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $20        ;; 0f:5751 ????????
    db   $e6, $01, $e3, $04, $d4, $84, $dc, $89        ;; 0f:5759 ????????
    db   $8d, $d8, $84, $86, $dc, $89, $8d, $d8        ;; 0f:5761 ????????
    db   $86, $e2, $5d, $57, $e3, $04, $84, $dc        ;; 0f:5769 ????????
    db   $89, $8c, $d8, $84, $85, $dc, $89, $8c        ;; 0f:5771 ????????
    db   $d8, $85, $e2, $6f, $57, $e3, $04, $84        ;; 0f:5779 ????????
    db   $dc, $89, $8d, $d8, $84, $86, $dc, $89        ;; 0f:5781 ????????
    db   $8d, $d8, $86, $e2, $80, $57, $e3, $04        ;; 0f:5789 ????????
    db   $84, $dc, $89, $8c, $d8, $84, $85, $dc        ;; 0f:5791 ????????
    db   $89, $8c, $d8, $85, $e2, $91, $57, $e3        ;; 0f:5799 ????????
    db   $04, $85, $dc, $8a, $8d, $d8, $85, $86        ;; 0f:57a1 ????????
    db   $dc, $8a, $8d, $d8, $86, $e2, $a2, $57        ;; 0f:57a9 ????????
    db   $e3, $03, $87, $dc, $8a, $d8, $82, $87        ;; 0f:57b1 ????????
    db   $89, $dc, $8a, $d8, $82, $89, $e2, $b3        ;; 0f:57b9 ????????
    db   $57, $87, $dc, $8a, $d8, $82, $87, $85        ;; 0f:57c1 ????????
    db   $dc, $89, $8c, $d8, $85, $e3, $04, $84        ;; 0f:57c9 ????????
    db   $dc, $87, $8b, $d8, $84, $86, $dc, $87        ;; 0f:57d1 ????????
    db   $8b, $d8, $86, $e2, $d0, $57, $e3, $04        ;; 0f:57d9 ????????
    db   $84, $dc, $89, $8c, $d8, $84, $85, $dc        ;; 0f:57e1 ????????
    db   $89, $8c, $d8, $85, $e2, $e1, $57, $e1        ;; 0f:57e9 ????????
    db   $5b, $57, $e7, $14                            ;; 0f:57f1 ????

data_0f_57f5:
    db   $e4, $4f, $7a, $e0, $a8, $7a, $e5, $80        ;; 0f:57f5 ????????
    db   $e6, $03, $e7, $37, $d3, $98, $dc, $9b        ;; 0f:57fd ????????
    db   $d8, $94, $9b, $dc, $e7, $3a, $9b, $d8        ;; 0f:5805 ????????
    db   $94, $99, $dc, $9b, $d8, $e7, $3d, $93        ;; 0f:580d ????????
    db   $98, $dc, $9b, $d8, $e7, $41, $93, $96        ;; 0f:5815 ????????
    db   $dc, $99, $d8, $92, $e7, $3e, $96, $dc        ;; 0f:581d ????????
    db   $99, $d8, $e7, $3a, $92, $95, $dc, $98        ;; 0f:5825 ????????
    db   $9d, $d8, $e7, $37, $95, $96, $98, $99        ;; 0f:582d ????????
    db   $91, $96, $9b, $91, $e7, $3a, $96, $9d        ;; 0f:5835 ????????
    db   $91, $95, $e7, $3d, $9b, $91, $95, $e7        ;; 0f:583d ????????
    db   $41, $99, $91, $94, $98, $e7, $3e, $91        ;; 0f:5845 ????????
    db   $94, $e7, $3a, $96, $dc, $9b, $d8, $93        ;; 0f:584d ????????
    db   $e7, $37, $96, $98, $99, $e7, $39, $9b        ;; 0f:5855 ????????
    db   $93, $98, $d8, $93, $dc, $98, $e7, $3c        ;; 0f:585d ????????
    db   $9b, $d8, $94, $dc, $98, $e7, $38, $9d        ;; 0f:5865 ????????
    db   $d8, $93, $dc, $e7, $34, $96, $9b, $e7        ;; 0f:586d ????????
    db   $3a, $9d, $94, $99, $9d, $94, $99, $e7        ;; 0f:5875 ????????
    db   $37, $9b, $94, $98, $9b, $94, $98, $e7        ;; 0f:587d ????????
    db   $35, $9a, $94, $97, $9a, $94, $97, $99        ;; 0f:5885 ????????
    db   $91, $96, $e7, $2d, $93, $94, $96, $e1        ;; 0f:588d ????????
    db   $ff, $57                                      ;; 0f:5895 ??

data_0f_5897:
    db   $e4, $4f, $7a, $e0, $b0, $7a, $e5, $40        ;; 0f:5897 ????????
    db   $e6, $03, $d3, $bf, $98, $dc, $9b, $d8        ;; 0f:589f ????????
    db   $94, $9b, $dc, $9b, $d8, $94, $99, $dc        ;; 0f:58a7 ????????
    db   $9b, $d8, $93, $98, $dc, $9b, $d8, $93        ;; 0f:58af ????????
    db   $96, $dc, $99, $d8, $92, $96, $dc, $99        ;; 0f:58b7 ????????
    db   $d8, $92, $95, $dc, $98, $9d, $d8, $95        ;; 0f:58bf ????????
    db   $96, $98, $99, $91, $96, $9b, $91, $96        ;; 0f:58c7 ????????
    db   $9d, $91, $95, $9b, $91, $95, $99, $91        ;; 0f:58cf ????????
    db   $94, $98, $91, $94, $96, $dc, $9b, $d8        ;; 0f:58d7 ????????
    db   $93, $96, $98, $99, $9b, $93, $98, $d8        ;; 0f:58df ????????
    db   $93, $dc, $98, $9b, $d8, $94, $dc, $98        ;; 0f:58e7 ????????
    db   $9d, $d8, $93, $dc, $96, $9b, $9d, $94        ;; 0f:58ef ????????
    db   $99, $9d, $94, $99, $9b, $94, $98, $9b        ;; 0f:58f7 ????????
    db   $94, $98, $9a, $94, $97, $9a, $94, $97        ;; 0f:58ff ????????
    db   $99, $91, $96, $93, $94, $96, $e1, $a3        ;; 0f:5907 ????????
    db   $58                                           ;; 0f:590f ?

data_0f_5910:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:5910 ????????
    db   $e6, $03, $d2, $24, $23, $22, $31, $93        ;; 0f:5918 ????????
    db   $95, $26, $25, $24, $53, $9e, $94, $96        ;; 0f:5920 ????????
    db   $28, $5d, $5b, $29, $28, $27, $56, $dc        ;; 0f:5928 ????????
    db   $9b, $9d, $d8, $93, $e1, $1a, $59             ;; 0f:5930 ???????

data_0f_5937:
    db   $e7, $5d, $e4, $4f, $7a, $e0, $a8, $7a        ;; 0f:5937 ........
    db   $e5, $40, $e3, $02                            ;; 0f:593f ....
.data_0f_5943:
    db   $e0, $b4, $7a, $e6, $03, $d3, $b6, $b3        ;; 0f:5943 ........
    db   $b6, $b3, $b6, $b3, $b6, $b3, $b6, $b3        ;; 0f:594b ........
    db   $b6, $b3, $e6, $02, $b9, $b3, $b9, $b3        ;; 0f:5953 ........
    db   $b9, $b3, $b9, $b3, $b9, $b3, $b9, $b3        ;; 0f:595b ........
    db   $e6, $03, $b8, $b3, $b8, $b3, $b8, $b3        ;; 0f:5963 ........
    db   $b8, $b3, $b8, $b3, $b8, $b3, $e6, $01        ;; 0f:596b ........
    db   $b7, $b3, $b7, $b3, $b7, $b3, $b7, $b3        ;; 0f:5973 ........
    db   $b7, $b3, $b7, $b3, $e2                       ;; 0f:597b .....
    dw   .data_0f_5943                                 ;; 0f:5980 pP
    db   $e6, $03, $b8, $b5, $b8, $b5, $b8, $b5        ;; 0f:5982 ........
    db   $b8, $b5, $b8, $b5, $b8, $b5, $e6, $02        ;; 0f:598a ........
    db   $bb, $b5, $bb, $b5, $bb, $b5, $bb, $b5        ;; 0f:5992 ........
    db   $bb, $b5, $bb, $b5, $e6, $03, $ba, $b5        ;; 0f:599a ........
    db   $ba, $b5, $ba, $b5, $ba, $b5, $ba, $b5        ;; 0f:59a2 ........
    db   $ba, $b5, $e6, $01, $b9, $b5, $b9, $b5        ;; 0f:59aa ........
    db   $b9, $b5, $b9, $b5, $b9, $b5, $b9, $b5        ;; 0f:59b2 ........
    db   $e6, $03, $b9, $b6, $b9, $b6, $b9, $b6        ;; 0f:59ba ........
    db   $b9, $b6, $b9, $b6, $b9, $b6, $e6, $02        ;; 0f:59c2 ........
    db   $bc, $b6, $bc, $b6, $bc, $b6, $bc, $b6        ;; 0f:59ca ........
    db   $bc, $b6, $bc, $b6, $e7, $58, $e6, $03        ;; 0f:59d2 ........
    db   $bb, $b6, $bb, $b6, $bb, $b6, $e7, $55        ;; 0f:59da ........
    db   $bb, $b6, $bb, $b6, $bb, $b6, $e7, $53        ;; 0f:59e2 ........
    db   $e6, $01, $ba, $b6, $ba, $b6, $ba, $b6        ;; 0f:59ea ........
    db   $e7, $51, $ba, $b6, $ba, $b6, $ba, $b6        ;; 0f:59f2 ........
    db   $dc, $e7, $59, $e0, $be, $7a, $e6, $03        ;; 0f:59fa ........
    db   $66, $b7, $b8, $59, $18, $86, $89, $58        ;; 0f:5a02 ........
    db   $86, $84, $66, $b7, $b8, $59, $18, $86        ;; 0f:5a0a ........
    db   $89, $58, $86, $84, $68, $b9, $ba, $5b        ;; 0f:5a12 ........
    db   $1a, $88, $8b, $5a, $88, $86, $68, $b9        ;; 0f:5a1a ........
    db   $ba, $5b, $1a, $88, $8b, $5a, $88, $86        ;; 0f:5a22 ........
    db   $15, $58, $e7, $55, $e0, $82, $7a, $54        ;; 0f:5a2a ........
    db   $57, $e7, $50, $5a, $5d, $e1                  ;; 0f:5a32 ......
    dw   data_0f_5937                                  ;; 0f:5a38 pP

data_0f_5a3a:
    db   $e4, $4f, $7a, $e0, $82, $7a                  ;; 0f:5a3a ......
.data_0f_5a40:
    db   $e6, $03, $e5, $80, $e3, $04                  ;; 0f:5a40 ......
.data_0f_5a46:
    db   $d1, $8b, $d8, $8c, $8b, $8a, $89, $88        ;; 0f:5a46 ........
    db   $87, $86, $e2                                 ;; 0f:5a4e ...
    dw   .data_0f_5a46                                 ;; 0f:5a51 pP
    db   $81, $d8, $82, $81, $80, $dc, $8b, $8a        ;; 0f:5a53 ........
    db   $89, $88, $81, $d8, $82, $81, $80, $dc        ;; 0f:5a5b ........
    db   $8b, $8a, $89, $88, $82, $d8, $83, $82        ;; 0f:5a63 ........
    db   $81, $80, $dc, $8b, $8a, $89, $82, $d8        ;; 0f:5a6b ........
    db   $83, $82, $81, $80, $dc, $8b, $8a, $89        ;; 0f:5a73 ........
    db   $e3, $02                                      ;; 0f:5a7b ..
.data_0f_5a7d:
    db   $e0, $c8, $7a, $e5, $40, $82, $81, $80        ;; 0f:5a7d ........
    db   $dc, $8b, $d8, $82, $81, $80, $dc, $8b        ;; 0f:5a85 ........
    db   $d8, $82, $81, $80, $dc, $8b, $d8, $82        ;; 0f:5a8d ........
    db   $81, $80, $dc, $8b, $d8, $e2                  ;; 0f:5a95 ......
    dw   .data_0f_5a7d                                 ;; 0f:5a9b pP
    db   $e3, $02                                      ;; 0f:5a9d ..
.data_0f_5a9f:
    db   $84, $83, $82, $81, $84, $83, $82, $81        ;; 0f:5a9f ........
    db   $84, $83, $82, $81, $84, $83, $82, $81        ;; 0f:5aa7 ........
    db   $e2                                           ;; 0f:5aaf .
    dw   .data_0f_5a9f                                 ;; 0f:5ab0 pP
    db   $dc, $88, $86, $88, $89, $58, $e0, $82        ;; 0f:5ab2 ........
    db   $7a, $5b, $e6, $02, $57, $5a, $5d, $d8        ;; 0f:5aba ........
    db   $54, $e1                                      ;; 0f:5ac2 ..
    dw   .data_0f_5a40                                 ;; 0f:5ac4 pP

data_0f_5ac6:
    db   $e4, $4f, $7a                                 ;; 0f:5ac6 ...
.data_0f_5ac9:
    db   $e8, $cc, $7a, $e0, $40, $e6, $03, $e3        ;; 0f:5ac9 ........
    db   $04                                           ;; 0f:5ad1 .
.data_0f_5ad2:
    db   $d1, $8b, $8f, $8b, $8f, $8b, $8f, $8b        ;; 0f:5ad2 ........
    db   $8f, $e2                                      ;; 0f:5ada ..
    dw   .data_0f_5ad2                                 ;; 0f:5adc pP
    db   $8d, $8f, $8d, $8f, $8d, $8f, $8d, $8f        ;; 0f:5ade ........
    db   $8d, $8f, $8d, $8f, $8d, $8f, $8d, $8f        ;; 0f:5ae6 ........
    db   $d8, $82, $8f, $82, $8f, $82, $8f, $82        ;; 0f:5aee ........
    db   $8f, $82, $8f, $82, $8f, $82, $8f, $82        ;; 0f:5af6 ........
    db   $8f, $dc, $e3, $02                            ;; 0f:5afe ....
.data_0f_5b02:
    db   $e6, $02, $2b, $d8, $e6, $01, $26, $dc        ;; 0f:5b02 ........
    db   $e6, $02, $2b, $d8, $e6, $01, $26, $dc        ;; 0f:5b0a ........
    db   $e2                                           ;; 0f:5b12 .
    dw   .data_0f_5b02                                 ;; 0f:5b13 pP
    db   $e3, $02                                      ;; 0f:5b15 ..
.data_0f_5b17:
    db   $e6, $02, $d8, $21, $e6, $01, $28, $e6        ;; 0f:5b17 ........
    db   $02, $21, $e6, $01, $28, $dc, $e2             ;; 0f:5b1f .......
    dw   .data_0f_5b17                                 ;; 0f:5b26 pP
    db   $e6, $02, $1b, $d8, $e6, $03, $52, $dc        ;; 0f:5b28 ........
    db   $e6, $01, $5a, $5d, $d8, $54, $57, $e1        ;; 0f:5b30 ........
    dw   .data_0f_5ac9                                 ;; 0f:5b38 pP
    db   $e7, $14                                      ;; 0f:5b3a ??

data_0f_5b3c:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $40        ;; 0f:5b3c ????????
    db   $e6, $03, $e3, $02, $e7, $85, $d2, $79        ;; 0f:5b44 ????????
    db   $d8, $74, $80, $17, $8e, $a6, $a7, $76        ;; 0f:5b4c ????????
    db   $74, $82, $74, $70, $84, $29, $7e, $77        ;; 0f:5b54 ????????
    db   $89, $64, $b5, $b6, $57, $46, $42, $54        ;; 0f:5b5c ????????
    db   $85, $84, $85, $54, $a2, $a0, $dc, $5b        ;; 0f:5b64 ????????
    db   $e2, $48, $5b, $e3, $02, $e7, $87, $e4        ;; 0f:5b6c ????????
    db   $63, $7a, $e0, $82, $7a, $e5, $80, $4c        ;; 0f:5b74 ????????
    db   $ab, $aa, $49, $aa, $ab, $8c, $ab, $aa        ;; 0f:5b7c ????????
    db   $29, $87, $89, $e5, $40, $44, $a5, $a6        ;; 0f:5b84 ????????
    db   $47, $a6, $a5, $84, $a5, $a6, $17, $e2        ;; 0f:5b8c ????????
    db   $71, $5b, $e7, $85, $e4, $4f, $7a, $e0        ;; 0f:5b94 ????????
    db   $be, $7a, $a4, $a8, $ab, $a4, $a8, $ab        ;; 0f:5b9c ????????
    db   $a8, $ab, $d8, $24, $dc, $a5, $a9, $ac        ;; 0f:5ba4 ????????
    db   $a5, $a9, $ac, $a9, $ac, $d8, $25, $dc        ;; 0f:5bac ????????
    db   $e7, $87, $ab, $ac, $d8, $a2, $a0, $dc        ;; 0f:5bb4 ????????
    db   $5b, $a9, $ab, $ac, $ab, $59, $48, $49        ;; 0f:5bbc ????????
    db   $5b, $e1, $3c, $5b                            ;; 0f:5bc4 ????

data_0f_5bc8:
    db   $e4, $4f, $7a, $e0, $ae, $7a, $e5, $00        ;; 0f:5bc8 ????????
    db   $e6, $02, $e3, $02, $e6, $02, $d2, $a4        ;; 0f:5bd0 ????????
    db   $a0, $dc, $ab, $ac, $d8, $e6, $01, $a4        ;; 0f:5bd8 ????????
    db   $a0, $dc, $ab, $ac, $d8, $e6, $02, $a4        ;; 0f:5be0 ????????
    db   $a0, $dc, $ab, $ac, $d8, $e6, $01, $a4        ;; 0f:5be8 ????????
    db   $a0, $dc, $ab, $ac, $d8, $e6, $03, $a4        ;; 0f:5bf0 ????????
    db   $a0, $dc, $ab, $ac, $d8, $a4, $a0, $dc        ;; 0f:5bf8 ????????
    db   $ab, $ac, $d8, $a4, $a0, $dc, $ab, $ac        ;; 0f:5c00 ????????
    db   $d8, $a4, $a0, $dc, $ab, $ac, $e2, $d4        ;; 0f:5c08 ????????
    db   $5b, $d8, $e3, $02, $e6, $02, $a6, $a2        ;; 0f:5c10 ????????
    db   $dc, $a9, $d8, $a2, $e6, $01, $a6, $a2        ;; 0f:5c18 ????????
    db   $dc, $a9, $d8, $a2, $e2, $14, $5c, $e6        ;; 0f:5c20 ????????
    db   $03, $a5, $a0, $dc, $a9, $ac, $d8, $a5        ;; 0f:5c28 ????????
    db   $a0, $dc, $a9, $ac, $d8, $a5, $a0, $dc        ;; 0f:5c30 ????????
    db   $a9, $ac, $d8, $a5, $a0, $dc, $a9, $ac        ;; 0f:5c38 ????????
    db   $e3, $02, $e6, $02, $d2, $a4, $a0, $dc        ;; 0f:5c40 ????????
    db   $ab, $ac, $d8, $e6, $01, $a4, $a0, $dc        ;; 0f:5c48 ????????
    db   $ab, $ac, $d8, $e6, $02, $a4, $a0, $dc        ;; 0f:5c50 ????????
    db   $ab, $ac, $d8, $e6, $01, $a4, $a0, $dc        ;; 0f:5c58 ????????
    db   $ab, $ac, $d8, $e6, $03, $a4, $a0, $dc        ;; 0f:5c60 ????????
    db   $ab, $ac, $d8, $a4, $a0, $dc, $ab, $ac        ;; 0f:5c68 ????????
    db   $d8, $a4, $a0, $dc, $ab, $ac, $d8, $a4        ;; 0f:5c70 ????????
    db   $a0, $dc, $ab, $ac, $e2, $42, $5c, $d8        ;; 0f:5c78 ????????
    db   $e3, $02, $e6, $02, $a6, $a2, $dc, $a9        ;; 0f:5c80 ????????
    db   $d8, $a2, $e6, $01, $a6, $a2, $dc, $a9        ;; 0f:5c88 ????????
    db   $d8, $a2, $e2, $82, $5c, $e6, $03, $a5        ;; 0f:5c90 ????????
    db   $a0, $dc, $a9, $ac, $d8, $a5, $a0, $dc        ;; 0f:5c98 ????????
    db   $a9, $ac, $d8, $a5, $a0, $dc, $a9, $ac        ;; 0f:5ca0 ????????
    db   $d8, $a5, $a0, $dc, $a9, $ac, $d9, $e3        ;; 0f:5ca8 ????????
    db   $04, $e0, $a0, $7a, $e5, $40, $e6, $02        ;; 0f:5cb0 ????????
    db   $a9, $a4, $d8, $e6, $03, $a4, $dc, $a4        ;; 0f:5cb8 ????????
    db   $e6, $01, $a9, $a4, $d8, $e6, $03, $a4        ;; 0f:5cc0 ????????
    db   $dc, $a4, $e2, $b1, $5c, $e6, $03, $e5        ;; 0f:5cc8 ????????
    db   $00, $e0, $ae, $7a, $dd, $ab, $aa, $a9        ;; 0f:5cd0 ????????
    db   $a8, $ab, $aa, $a9, $a8, $a7, $a8, $a9        ;; 0f:5cd8 ????????
    db   $aa, $a7, $a8, $a9, $aa, $ab, $aa, $a9        ;; 0f:5ce0 ????????
    db   $a8, $ab, $aa, $a9, $a8, $a7, $a8, $a9        ;; 0f:5ce8 ????????
    db   $aa, $a7, $a8, $a9, $aa, $d9, $e3, $04        ;; 0f:5cf0 ????????
    db   $e0, $a0, $7a, $e5, $40, $e6, $02, $a9        ;; 0f:5cf8 ????????
    db   $a4, $d8, $e6, $03, $a4, $dc, $a4, $e6        ;; 0f:5d00 ????????
    db   $01, $a9, $a4, $d8, $e6, $03, $a4, $dc        ;; 0f:5d08 ????????
    db   $a4, $e2, $f8, $5c, $e0, $ae, $7a, $e6        ;; 0f:5d10 ????????
    db   $03, $e5, $00, $dd, $ab, $aa, $a9, $a8        ;; 0f:5d18 ????????
    db   $ab, $aa, $a9, $a8, $a7, $a8, $a9, $aa        ;; 0f:5d20 ????????
    db   $a7, $a8, $a9, $aa, $ab, $aa, $a9, $a8        ;; 0f:5d28 ????????
    db   $ab, $aa, $a9, $a8, $a7, $a8, $a9, $aa        ;; 0f:5d30 ????????
    db   $a7, $a8, $a9, $aa, $e0, $82, $7a, $e6        ;; 0f:5d38 ????????
    db   $02, $a8, $ab, $d8, $a4, $dc, $a8, $ab        ;; 0f:5d40 ????????
    db   $d8, $a4, $dc, $ab, $d8, $a4, $e6, $03        ;; 0f:5d48 ????????
    db   $8f, $dc, $ab, $ac, $ab, $a9, $a8, $ab        ;; 0f:5d50 ????????
    db   $e6, $01, $a9, $ac, $d8, $a5, $dc, $a9        ;; 0f:5d58 ????????
    db   $ac, $d8, $a5, $dc, $a9, $ac, $e6, $03        ;; 0f:5d60 ????????
    db   $8f, $ac, $d8, $a2, $a0, $dc, $ab, $a9        ;; 0f:5d68 ????????
    db   $ac, $d8, $e0, $b0, $7a, $52, $e6, $02        ;; 0f:5d70 ????????
    db   $a7, $a2, $dc, $ab, $d8, $a2, $e6, $03        ;; 0f:5d78 ????????
    db   $50, $e6, $01, $a5, $a0, $dc, $a9, $ac        ;; 0f:5d80 ????????
    db   $e0, $94, $7a, $e6, $03, $ab, $a4, $ab        ;; 0f:5d88 ????????
    db   $a4, $ab, $a4, $ac, $a4, $ac, $a4, $ac        ;; 0f:5d90 ????????
    db   $a4, $d8, $e6, $02, $b2, $dc, $bb, $e6        ;; 0f:5d98 ????????
    db   $03, $b8, $bb, $e6, $01, $b8, $b4, $e1        ;; 0f:5da0 ????????
    db   $c8, $5b                                      ;; 0f:5da8 ??

data_0f_5daa:
    db   $e4, $4f, $7a, $e8, $0c, $7b, $e0, $20        ;; 0f:5daa ????????
    db   $e3, $02, $e6, $03, $d1, $a9, $ce, $cf        ;; 0f:5db2 ????????
    db   $a9, $ce, $cf, $4f, $d8, $74, $af, $a4        ;; 0f:5dba ????????
    db   $ce, $cf, $dc, $e6, $02, $a9, $ce, $cf        ;; 0f:5dc2 ????????
    db   $e6, $01, $a9, $ce, $cf, $1f, $e6, $03        ;; 0f:5dca ????????
    db   $a9, $ce, $cf, $a9, $ce, $cf, $4f, $d8        ;; 0f:5dd2 ????????
    db   $74, $af, $a4, $ce, $cf, $dc, $e6, $02        ;; 0f:5dda ????????
    db   $a9, $ce, $cf, $e6, $01, $a9, $ce, $cf        ;; 0f:5de2 ????????
    db   $1f, $d8, $e6, $03, $02, $e6, $02, $45        ;; 0f:5dea ????????
    db   $e6, $03, $44, $e6, $01, $52, $e2, $b4        ;; 0f:5df2 ????????
    db   $5d, $e3, $02, $e8, $1c, $7b, $e6, $03        ;; 0f:5dfa ????????
    db   $dc, $a5, $af, $a5, $af, $5f, $a5, $af        ;; 0f:5e02 ????????
    db   $a5, $af, $5f, $a5, $af, $a5, $af, $5f        ;; 0f:5e0a ????????
    db   $a5, $af, $a5, $af, $5f, $d8, $e8, $fc        ;; 0f:5e12 ????????
    db   $7a, $e6, $02, $25, $e6, $03, $20, $e6        ;; 0f:5e1a ????????
    db   $01, $25, $e6, $03, $20, $e2, $fd, $5d        ;; 0f:5e22 ????????
    db   $e8, $0c, $7b, $e6, $03, $dc, $a4, $af        ;; 0f:5e2a ????????
    db   $a4, $af, $a4, $af, $a4, $af, $8f, $d8        ;; 0f:5e32 ????????
    db   $74, $af, $dc, $ab, $ce, $cf, $a5, $af        ;; 0f:5e3a ????????
    db   $a5, $af, $a5, $af, $a5, $af, $8f, $d8        ;; 0f:5e42 ????????
    db   $75, $af, $a0, $ce, $cf, $dc, $57, $d8        ;; 0f:5e4a ????????
    db   $57, $dc, $55, $d8, $55, $dc, $e6, $02        ;; 0f:5e52 ????????
    db   $44, $e6, $01, $46, $e6, $03, $a8, $ce        ;; 0f:5e5a ????????
    db   $cf, $a4, $ce, $cf, $e1, $aa, $5d             ;; 0f:5e62 ???????

data_0f_5e69:
    db   $e7, $87, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:5e69 ????????
    db   $e5, $40, $e6, $03, $d3, $53, $ae, $a0        ;; 0f:5e71 ????????
    db   $a2, $a3, $55, $ae, $a2, $a3, $a5, $57        ;; 0f:5e79 ????????
    db   $ae, $a5, $a3, $a7, $55, $50, $e7, $8a        ;; 0f:5e81 ????????
    db   $83, $80, $82, $83, $85, $82, $83, $85        ;; 0f:5e89 ????????
    db   $47, $a9, $a7, $86, $82, $84, $86, $e0        ;; 0f:5e91 ????????
    db   $be, $7a, $77, $72, $85, $24, $75, $70        ;; 0f:5e99 ????????
    db   $83, $22, $72, $dc, $77, $d8, $82, $73        ;; 0f:5ea1 ????????
    db   $dc, $77, $d8, $83, $75, $70, $85, $76        ;; 0f:5ea9 ????????
    db   $72, $86, $dd, $e0, $a8, $7a, $e5, $80        ;; 0f:5eb1 ????????
    db   $ab, $ac, $ab, $a9, $ab, $ac, $d8, $a2        ;; 0f:5eb9 ????????
    db   $a3, $a5, $a7, $a5, $a3, $b5, $b7, $b9        ;; 0f:5ec1 ????????
    db   $bb, $bc, $d8, $b2, $e7, $8a, $e0, $ac        ;; 0f:5ec9 ????????
    db   $7a, $e5, $00, $a3, $dc, $aa, $a7, $aa        ;; 0f:5ed1 ????????
    db   $d8, $a5, $a0, $dc, $a9, $ac, $d8, $a3        ;; 0f:5ed9 ????????
    db   $dc, $aa, $a7, $aa, $d8, $a5, $a0, $dc        ;; 0f:5ee1 ????????
    db   $a9, $ac, $d8, $a3, $dc, $aa, $a7, $aa        ;; 0f:5ee9 ????????
    db   $d8, $a5, $a0, $dc, $a9, $ac, $d8, $a3        ;; 0f:5ef1 ????????
    db   $dc, $aa, $a7, $aa, $d8, $a5, $a0, $dc        ;; 0f:5ef9 ????????
    db   $a9, $ac, $d8, $e3, $02, $e7, $87, $e0        ;; 0f:5f01 ????????
    db   $be, $7a, $e5, $40, $57, $ae, $a8, $a9        ;; 0f:5f09 ????????
    db   $aa, $59, $ae, $a7, $a5, $a9, $57, $ae        ;; 0f:5f11 ????????
    db   $a5, $a3, $a7, $55, $ae, $a3, $a2, $a5        ;; 0f:5f19 ????????
    db   $43, $52, $80, $82, $83, $eb, $01, $3f        ;; 0f:5f21 ????????
    db   $5f, $a5, $a7, $a5, $a3, $a2, $a3, $a2        ;; 0f:5f29 ????????
    db   $a0, $dc, $aa, $ac, $d8, $a2, $a3, $a5        ;; 0f:5f31 ????????
    db   $a7, $a8, $aa, $e2, $06, $5f, $a5, $a7        ;; 0f:5f39 ????????
    db   $a5, $a3, $a2, $a3, $a2, $a0, $e7, $85        ;; 0f:5f41 ????????
    db   $82, $83, $85, $87, $e7, $8a, $a0, $a2        ;; 0f:5f49 ????????
    db   $a3, $a2, $50, $ae, $a0, $dc, $a8, $d8        ;; 0f:5f51 ????????
    db   $a3, $a8, $a7, $a5, $a3, $a2, $a3, $a5        ;; 0f:5f59 ????????
    db   $a3, $52, $ae, $a2, $dc, $aa, $d8, $a5        ;; 0f:5f61 ????????
    db   $aa, $a8, $a7, $a5, $47, $a5, $a7, $48        ;; 0f:5f69 ????????
    db   $a7, $a8, $aa, $ac, $aa, $a8, $a7, $a8        ;; 0f:5f71 ????????
    db   $a7, $a5, $74, $75, $87, $48, $a7, $a8        ;; 0f:5f79 ????????
    db   $4a, $a8, $aa, $e7, $88, $7c, $78, $85        ;; 0f:5f81 ????????
    db   $72, $75, $88, $e7, $8a, $47, $a6, $a7        ;; 0f:5f89 ????????
    db   $7b, $77, $8b, $d8, $22, $af, $dd, $e7        ;; 0f:5f91 ????????
    db   $82, $e0, $a8, $7a, $e5, $80, $a7, $a9        ;; 0f:5f99 ????????
    db   $ab, $ac, $d8, $a2, $a3, $a5, $e1, $69        ;; 0f:5fa1 ????????
    db   $5e                                           ;; 0f:5fa9 ?

data_0f_5faa:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $00        ;; 0f:5faa ????????
    db   $e6, $02, $af, $d2, $a0, $a3, $a0, $a2        ;; 0f:5fb2 ????????
    db   $a0, $a3, $a0, $af, $dc, $ab, $d8, $a2        ;; 0f:5fba ????????
    db   $dc, $ab, $ac, $ab, $d8, $a2, $dc, $ab        ;; 0f:5fc2 ????????
    db   $af, $aa, $d8, $a2, $dc, $aa, $ac, $aa        ;; 0f:5fca ????????
    db   $d8, $a2, $dc, $aa, $af, $a9, $ac, $a9        ;; 0f:5fd2 ????????
    db   $ac, $a9, $ac, $a9, $e6, $01, $af, $a8        ;; 0f:5fda ????????
    db   $ac, $a8, $aa, $a8, $ac, $a8, $af, $aa        ;; 0f:5fe2 ????????
    db   $d8, $a2, $dc, $aa, $ac, $aa, $d8, $a2        ;; 0f:5fea ????????
    db   $dc, $aa, $af, $d8, $a3, $a7, $a3, $a5        ;; 0f:5ff2 ????????
    db   $a3, $a7, $a3, $af, $a2, $a6, $a2, $a4        ;; 0f:5ffa ????????
    db   $a2, $a6, $a2, $dc, $e0, $c4, $7a, $e6        ;; 0f:6002 ????????
    db   $02, $ab, $d8, $a2, $a0, $a2, $dc, $e6        ;; 0f:600a ????????
    db   $01, $a7, $d8, $a2, $a0, $a2, $e6, $03        ;; 0f:6012 ????????
    db   $a0, $a4, $a2, $a4, $a0, $a4, $a2, $a4        ;; 0f:601a ????????
    db   $e6, $02, $a0, $a5, $a3, $a5, $e6, $01        ;; 0f:6022 ????????
    db   $a0, $a5, $a3, $a5, $dc, $e6, $03, $aa        ;; 0f:602a ????????
    db   $d8, $a2, $a0, $a2, $dc, $aa, $d8, $a2        ;; 0f:6032 ????????
    db   $a0, $a2, $a2, $dc, $a7, $d8, $a2, $dc        ;; 0f:603a ????????
    db   $a7, $d8, $a2, $dc, $a7, $d8, $a2, $dc        ;; 0f:6042 ????????
    db   $a7, $d8, $a3, $dc, $a7, $d8, $a3, $dc        ;; 0f:604a ????????
    db   $a7, $d8, $a3, $dc, $a7, $d8, $a3, $dc        ;; 0f:6052 ????????
    db   $a7, $d8, $a5, $a0, $a5, $a0, $a5, $a0        ;; 0f:605a ????????
    db   $a5, $a0, $a6, $a0, $a6, $a0, $a6, $a0        ;; 0f:6062 ????????
    db   $a6, $a0, $dc, $e5, $80, $a7, $a8, $a7        ;; 0f:606a ????????
    db   $a5, $a7, $a9, $ab, $ac, $d8, $a2, $a3        ;; 0f:6072 ????????
    db   $a2, $a0, $b2, $b3, $b5, $b7, $b9, $bb        ;; 0f:607a ????????
    db   $d8, $e0, $ac, $7a, $e5, $00, $aa, $a7        ;; 0f:6082 ????????
    db   $e6, $02, $a3, $a7, $e6, $03, $ac, $a9        ;; 0f:608a ????????
    db   $e6, $01, $a5, $a9, $e6, $03, $aa, $a7        ;; 0f:6092 ????????
    db   $e6, $02, $a3, $a7, $e6, $03, $a9, $a5        ;; 0f:609a ????????
    db   $e6, $01, $a0, $a5, $e6, $03, $aa, $a7        ;; 0f:60a2 ????????
    db   $e6, $02, $a3, $a7, $e6, $03, $ac, $a9        ;; 0f:60aa ????????
    db   $e6, $01, $a5, $a9, $e6, $03, $aa, $a7        ;; 0f:60b2 ????????
    db   $a3, $a7, $a9, $a5, $a0, $a5, $dc, $e3        ;; 0f:60ba ????????
    db   $02, $e6, $03, $a3, $a5, $a3, $a2, $e6        ;; 0f:60c2 ????????
    db   $02, $a3, $a5, $a3, $a2, $a3, $a5, $a3        ;; 0f:60ca ????????
    db   $a2, $e6, $03, $a3, $a5, $a3, $a2, $a3        ;; 0f:60d2 ????????
    db   $a5, $a3, $a2, $e6, $01, $a3, $a5, $a3        ;; 0f:60da ????????
    db   $a2, $a3, $a5, $a3, $a2, $e6, $03, $a0        ;; 0f:60e2 ????????
    db   $a2, $a0, $dc, $aa, $ac, $d8, $a2, $a3        ;; 0f:60ea ????????
    db   $a2, $a0, $af, $a0, $a2, $a3, $a2, $a0        ;; 0f:60f2 ????????
    db   $af, $a0, $a2, $a3, $a0, $eb, $01, $1a        ;; 0f:60fa ????????
    db   $61, $a2, $a3, $a5, $a3, $a2, $af, $a2        ;; 0f:6102 ????????
    db   $a0, $a2, $a3, $a5, $a7, $e6, $01, $a8        ;; 0f:610a ????????
    db   $aa, $ac, $d8, $a2, $dc, $e2, $c3, $60        ;; 0f:6112 ????????
    db   $e6, $02, $82, $80, $dc, $8a, $88, $d8        ;; 0f:611a ????????
    db   $e0, $a8, $7a, $e6, $03, $e5, $40, $a5        ;; 0f:6122 ????????
    db   $a2, $a7, $a3, $a8, $a5, $aa, $a2, $e0        ;; 0f:612a ????????
    db   $ac, $7a, $e5, $00, $a3, $a5, $a7, $a5        ;; 0f:6132 ????????
    db   $83, $e6, $02, $85, $87, $e6, $03, $a0        ;; 0f:613a ????????
    db   $a8, $ac, $aa, $a8, $a7, $a5, $a7, $a8        ;; 0f:6142 ????????
    db   $a7, $85, $e6, $01, $87, $88, $e6, $03        ;; 0f:614a ????????
    db   $a2, $aa, $d8, $a2, $a0, $dc, $aa, $a8        ;; 0f:6152 ????????
    db   $e6, $02, $a7, $a3, $a7, $aa, $d8, $53        ;; 0f:615a ????????
    db   $dc, $e6, $01, $a5, $a2, $a5, $aa, $d8        ;; 0f:6162 ????????
    db   $52, $dc, $e6, $03, $a5, $a1, $a5, $a8        ;; 0f:616a ????????
    db   $ad, $ac, $aa, $a8, $77, $78, $8a, $e6        ;; 0f:6172 ????????
    db   $02, $a5, $a7, $a8, $a7, $55, $e6, $01        ;; 0f:617a ????????
    db   $a7, $a8, $aa, $a8, $57, $e6, $03, $78        ;; 0f:6182 ????????
    db   $75, $82, $dc, $78, $d8, $72, $85, $e6        ;; 0f:618a ????????
    db   $02, $82, $dc, $e6, $03, $ab, $af, $ab        ;; 0f:6192 ????????
    db   $af, $d8, $e6, $01, $82, $dc, $e6, $03        ;; 0f:619a ????????
    db   $ab, $af, $ab, $af, $d8, $e6, $02, $82        ;; 0f:61a2 ????????
    db   $dc, $e6, $03, $ab, $af, $8f, $d8, $82        ;; 0f:61aa ????????
    db   $85, $87, $e5, $80, $a3, $a0, $a2, $dc        ;; 0f:61b2 ????????
    db   $ab, $ac, $a8, $ab, $a7, $e1, $aa, $5f        ;; 0f:61ba ????????

data_0f_61c2:
    db   $e4, $4f, $7a, $e8, $0c, $7b, $e0, $20        ;; 0f:61c2 ????????
    db   $e6, $03, $d2, $20, $dc, $2b, $2a, $29        ;; 0f:61ca ????????
    db   $28, $2a, $d8, $23, $22, $dc, $57, $5b        ;; 0f:61d2 ????????
    db   $2c, $55, $59, $2a, $e6, $02, $7b, $af        ;; 0f:61da ????????
    db   $e6, $01, $7b, $af, $e6, $02, $7c, $af        ;; 0f:61e2 ????????
    db   $e6, $01, $7c, $af, $e6, $02, $78, $af        ;; 0f:61ea ????????
    db   $e6, $01, $78, $af, $d8, $e6, $02, $72        ;; 0f:61f2 ????????
    db   $af, $e6, $01, $72, $af, $dc, $e6, $03        ;; 0f:61fa ????????
    db   $17, $5f, $0c, $2f, $d8, $e6, $02, $7c        ;; 0f:6202 ????????
    db   $e6, $01, $75, $e6, $03, $87, $e3, $02        ;; 0f:620a ????????
    db   $a0, $ce, $cf, $a0, $ce, $cf, $50, $8f        ;; 0f:6212 ????????
    db   $a0, $ce, $cf, $50, $8f, $a0, $ce, $cf        ;; 0f:621a ????????
    db   $70, $af, $50, $dc, $5a, $e6, $02, $88        ;; 0f:6222 ????????
    db   $d8, $e6, $03, $a8, $af, $a8, $af, $dc        ;; 0f:622a ????????
    db   $e6, $01, $88, $d8, $e6, $03, $a8, $af        ;; 0f:6232 ????????
    db   $a8, $af, $e6, $02, $dc, $88, $d8, $e6        ;; 0f:623a ????????
    db   $03, $a8, $af, $dc, $eb, $01, $5e, $62        ;; 0f:6242 ????????
    db   $8a, $d8, $aa, $af, $dc, $8a, $d8, $aa        ;; 0f:624a ????????
    db   $af, $dc, $e6, $02, $5a, $d8, $e6, $03        ;; 0f:6252 ????????
    db   $52, $e2, $12, $62, $e6, $01, $2a, $8f        ;; 0f:625a ????????
    db   $d8, $e6, $03, $8a, $e6, $02, $85, $dc        ;; 0f:6262 ????????
    db   $e6, $01, $8a, $e6, $03, $88, $d8, $a8        ;; 0f:626a ????????
    db   $af, $dc, $88, $d8, $a8, $af, $dc, $88        ;; 0f:6272 ????????
    db   $d8, $a8, $af, $dc, $88, $d8, $a8, $af        ;; 0f:627a ????????
    db   $dc, $8a, $d8, $aa, $af, $dc, $8a, $d8        ;; 0f:6282 ????????
    db   $aa, $af, $80, $ac, $af, $82, $d8, $a2        ;; 0f:628a ????????
    db   $af, $dc, $a3, $ce, $cf, $a3, $ce, $cf        ;; 0f:6292 ????????
    db   $5a, $a2, $ce, $cf, $a2, $ce, $cf, $58        ;; 0f:629a ????????
    db   $21, $8f, $a0, $ce, $cf, $50, $dc, $a5        ;; 0f:62a2 ????????
    db   $ce, $cf, $a5, $ce, $cf, $d8, $55, $dc        ;; 0f:62aa ????????
    db   $a3, $ce, $cf, $a3, $ce, $cf, $d8, $53        ;; 0f:62b2 ????????
    db   $42, $dc, $48, $d8, $52, $dc, $e6, $02        ;; 0f:62ba ????????
    db   $87, $d8, $e6, $03, $a7, $af, $a7, $af        ;; 0f:62c2 ????????
    db   $dc, $e6, $01, $87, $d8, $e6, $03, $a7        ;; 0f:62ca ????????
    db   $af, $a7, $af, $e6, $02, $dc, $87, $d8        ;; 0f:62d2 ????????
    db   $e6, $03, $a7, $af, $dc, $57, $d8, $52        ;; 0f:62da ????????
    db   $87, $85, $83, $82, $e1, $c2, $61             ;; 0f:62e2 ???????

data_0f_62e9:
    db   $e7, $6c, $e4, $4f, $7a, $e0, $c0, $7a        ;; 0f:62e9 ????????
    db   $e5, $00, $e6, $03, $d2, $ab, $7f, $d8        ;; 0f:62f1 ????????
    db   $a6, $af, $a3, $af, $dc, $ab, $7f, $d8        ;; 0f:62f9 ????????
    db   $a6, $af, $a3, $af, $dc, $ab, $7f, $d8        ;; 0f:6301 ????????
    db   $a3, $7f, $dc, $46, $8f, $d8, $a6, $af        ;; 0f:6309 ????????
    db   $a8, $af, $a6, $af, $a3, $af, $a6, $af        ;; 0f:6311 ????????
    db   $a8, $af, $a6, $af, $a3, $af, $dc, $ab        ;; 0f:6319 ????????
    db   $af, $ab, $d8, $a3, $dc, $ab, $af, $d8        ;; 0f:6321 ????????
    db   $a3, $af, $46, $8f, $ff                       ;; 0f:6329 ?????

data_0f_632e:
    db   $e4, $4f, $7a, $e0, $c6, $7a, $e5, $00        ;; 0f:632e ????????
    db   $e6, $03, $d2, $aa, $7f, $d8, $a5, $af        ;; 0f:6336 ????????
    db   $a2, $af, $dc, $aa, $7f, $d8, $a5, $af        ;; 0f:633e ????????
    db   $a2, $af, $dc, $aa, $7f, $d8, $a2, $7f        ;; 0f:6346 ????????
    db   $dc, $45, $8f, $d8, $a5, $af, $a7, $af        ;; 0f:634e ????????
    db   $a5, $af, $a2, $af, $a5, $af, $a7, $af        ;; 0f:6356 ????????
    db   $a5, $af, $a2, $af, $dc, $aa, $af, $aa        ;; 0f:635e ????????
    db   $d8, $a2, $dc, $aa, $af, $d8, $a2, $af        ;; 0f:6366 ????????
    db   $45, $8f, $ff                                 ;; 0f:636e ???

data_0f_6371:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:6371 ????????
    db   $d1, $ab, $7f, $2f, $56, $ab, $7f, $4f        ;; 0f:6379 ????????
    db   $a6, $af, $a8, $af, $aa, $af, $d1, $ab        ;; 0f:6381 ????????
    db   $7f, $2f, $56, $ab, $7f, $2f, $d8, $a6        ;; 0f:6389 ????????
    db   $a4, $a3, $a1, $dc, $ab, $ff                  ;; 0f:6391 ??????

data_0f_6397:
    db   $e7, $6b, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:6397 ........
    db   $e5, $80, $e6, $03, $d3, $a9, $a7, $a6        ;; 0f:639f ........
    db   $a9, $a7, $a6, $a4, $a2, $a1, $af, $a4        ;; 0f:63a7 ........
    db   $af, $52, $ff                                 ;; 0f:63af ...

data_0f_63b2:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $80        ;; 0f:63b2 ........
    db   $e6, $03, $0f, $ff                            ;; 0f:63ba ....

data_0f_63be:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:63be ........
    db   $e6, $03, $0f, $ff, $d0, $63, $a3, $64        ;; 0f:63c6 ....????
    db   $67, $66                                      ;; 0f:63ce ??

data_0f_63d0:
    db   $e7, $82, $e4, $4f, $7a, $e0, $c2, $7a        ;; 0f:63d0 ????????
    db   $e5, $40, $e6, $03, $dc, $0f, $1f, $8f        ;; 0f:63d8 ????????
    db   $d2, $ab, $d8, $a1, $e3, $02, $22, $8e        ;; 0f:63e0 ????????
    db   $82, $84, $86, $76, $74, $82, $41, $dc        ;; 0f:63e8 ????????
    db   $ab, $d8, $a1, $22, $8e, $82, $84, $82        ;; 0f:63f0 ????????
    db   $eb, $01, $28, $64, $71, $dc, $7b, $89        ;; 0f:63f8 ????????
    db   $49, $ab, $d8, $a1, $72, $71, $dc, $8b        ;; 0f:6400 ????????
    db   $4b, $d8, $a1, $a2, $74, $72, $81, $71        ;; 0f:6408 ????????
    db   $72, $84, $46, $a4, $a6, $47, $a6, $a7        ;; 0f:6410 ????????
    db   $49, $a7, $a9, $aa, $a6, $a1, $a6, $a1        ;; 0f:6418 ????????
    db   $dc, $aa, $ab, $d8, $a1, $e2, $e6, $63        ;; 0f:6420 ????????
    db   $71, $dc, $7b, $89, $d8, $49, $a6, $a7        ;; 0f:6428 ????????
    db   $79, $77, $86, $27, $76, $71, $84, $52        ;; 0f:6430 ????????
    db   $51, $dc, $4b, $d8, $a1, $a2, $51, $dc        ;; 0f:6438 ????????
    db   $59, $2b, $ae, $e0, $c4, $7a, $e5, $80        ;; 0f:6440 ????????
    db   $a6, $a7, $a9, $ab, $d8, $a1, $a2, $a4        ;; 0f:6448 ????????
    db   $e0, $82, $7a, $46, $a4, $a2, $71, $dc        ;; 0f:6450 ????????
    db   $7b, $d8, $81, $2e, $af, $dc, $ab, $d8        ;; 0f:6458 ????????
    db   $a1, $a2, $a4, $a2, $a1, $dc, $ab, $49        ;; 0f:6460 ????????
    db   $d8, $59, $54, $87, $16, $8f, $e5, $40        ;; 0f:6468 ????????
    db   $a6, $a7, $89, $87, $86, $87, $79, $7b        ;; 0f:6470 ????????
    db   $d8, $80, $dc, $5b, $86, $5b, $89, $87        ;; 0f:6478 ????????
    db   $86, $17, $8f, $a4, $a6, $57, $56, $54        ;; 0f:6480 ????????
    db   $52, $71, $dc, $76, $d8, $81, $72, $dc        ;; 0f:6488 ????????
    db   $77, $d8, $82, $74, $dc, $79, $d8, $84        ;; 0f:6490 ????????
    db   $e0, $be, $7a, $46, $dc, $ab, $d8, $a1        ;; 0f:6498 ????????
    db   $e1, $e4, $63                                 ;; 0f:64a0 ???

data_0f_64a3:
    db   $e4, $4f, $7a, $e0, $a8, $7a, $e5, $40        ;; 0f:64a3 ????????
    db   $e6, $03, $d2, $a2, $dc, $ab, $d8, $a4        ;; 0f:64ab ????????
    db   $a1, $a6, $a2, $a7, $a4, $a6, $a2, $a4        ;; 0f:64b3 ????????
    db   $a1, $a2, $dc, $ab, $d8, $a1, $dc, $a9        ;; 0f:64bb ????????
    db   $d8, $a2, $dc, $ab, $d8, $a4, $a1, $a6        ;; 0f:64c3 ????????
    db   $a2, $a7, $a4, $a6, $a2, $a4, $a1, $a2        ;; 0f:64cb ????????
    db   $dc, $ab, $d8, $e6, $02, $e5, $00, $a1        ;; 0f:64d3 ????????
    db   $dc, $a9, $e3, $02, $e0, $ac, $7a, $e5        ;; 0f:64db ????????
    db   $00, $e6, $02, $d2, $86, $87, $86, $a4        ;; 0f:64e3 ????????
    db   $76, $e6, $03, $86, $87, $89, $79, $77        ;; 0f:64eb ????????
    db   $86, $84, $81, $84, $e6, $01, $a7, $a9        ;; 0f:64f3 ????????
    db   $8b, $89, $87, $a9, $5b, $ae, $d8, $e6        ;; 0f:64fb ????????
    db   $03, $81, $dc, $8b, $eb, $01, $5d, $65        ;; 0f:6503 ????????
    db   $79, $76, $84, $84, $81, $84, $a6, $a9        ;; 0f:650b ????????
    db   $e6, $02, $27, $7e, $76, $a4, $a6, $e6        ;; 0f:6513 ????????
    db   $03, $77, $76, $84, $74, $76, $87, $e6        ;; 0f:651b ????????
    db   $01, $a6, $a1, $dc, $aa, $d8, $a6, $e6        ;; 0f:6523 ????????
    db   $03, $a1, $dc, $aa, $d8, $a6, $dc, $aa        ;; 0f:652b ????????
    db   $d8, $e6, $02, $a7, $a2, $dc, $ab, $d8        ;; 0f:6533 ????????
    db   $a7, $e6, $03, $a2, $dc, $ab, $d8, $a7        ;; 0f:653b ????????
    db   $dc, $ab, $e6, $01, $d8, $a9, $a4, $a1        ;; 0f:6543 ????????
    db   $a9, $e6, $03, $a4, $a1, $a9, $a1, $aa        ;; 0f:654b ????????
    db   $a1, $a6, $a1, $a4, $a1, $a6, $a1, $e2        ;; 0f:6553 ????????
    db   $df, $64, $79, $76, $84, $d8, $71, $dc        ;; 0f:655b ????????
    db   $7b, $89, $e6, $01, $4b, $a9, $ab, $d8        ;; 0f:6563 ????????
    db   $e6, $03, $51, $dc, $5b, $e6, $02, $4a        ;; 0f:656b ????????
    db   $a8, $aa, $e6, $03, $56, $54, $77, $72        ;; 0f:6573 ????????
    db   $a4, $a6, $54, $51, $22, $ae, $dc, $e0        ;; 0f:657b ????????
    db   $c4, $7a, $e5, $80, $a9, $ab, $d8, $a1        ;; 0f:6583 ????????
    db   $a2, $a4, $a6, $a7, $e3, $02, $e5, $00        ;; 0f:658b ????????
    db   $e6, $01, $82, $dc, $e6, $03, $ab, $af        ;; 0f:6593 ????????
    db   $ab, $af, $d8, $e6, $01, $82, $dc, $e6        ;; 0f:659b ????????
    db   $03, $ab, $af, $ab, $af, $e6, $01, $d8        ;; 0f:65a3 ????????
    db   $82, $dc, $e6, $03, $ab, $af, $d8, $e2        ;; 0f:65ab ????????
    db   $91, $65, $e6, $01, $81, $dc, $e6, $03        ;; 0f:65b3 ????????
    db   $a9, $af, $a9, $af, $d8, $e6, $01, $81        ;; 0f:65bb ????????
    db   $dc, $e6, $03, $a9, $af, $a9, $af, $e6        ;; 0f:65c3 ????????
    db   $01, $d8, $81, $dc, $e6, $03, $a9, $af        ;; 0f:65cb ????????
    db   $e0, $ac, $7a, $d8, $a9, $a6, $a1, $a6        ;; 0f:65d3 ????????
    db   $d8, $a1, $dc, $a6, $a1, $a6, $ab, $a6        ;; 0f:65db ????????
    db   $a1, $a6, $a9, $a6, $a1, $a6, $e6, $01        ;; 0f:65e3 ????????
    db   $d8, $80, $dc, $8b, $89, $8b, $d8, $40        ;; 0f:65eb ????????
    db   $84, $53, $dc, $8b, $d8, $43, $dc, $59        ;; 0f:65f3 ????????
    db   $e6, $02, $a4, $dc, $ab, $a7, $ab, $d8        ;; 0f:65fb ????????
    db   $57, $e6, $01, $a2, $dc, $ab, $a7, $ab        ;; 0f:6603 ????????
    db   $d8, $57, $e6, $03, $ab, $a7, $a4, $a7        ;; 0f:660b ????????
    db   $ab, $a7, $a4, $a7, $d8, $a1, $dc, $a7        ;; 0f:6613 ????????
    db   $a4, $a7, $ab, $a7, $a4, $a7, $e6, $02        ;; 0f:661b ????????
    db   $a1, $dc, $aa, $a6, $d8, $e6, $03, $a1        ;; 0f:6623 ????????
    db   $dc, $aa, $a6, $e6, $01, $d8, $a1, $dc        ;; 0f:662b ????????
    db   $a6, $d8, $e6, $02, $a2, $dc, $ab, $a7        ;; 0f:6633 ????????
    db   $e6, $03, $d8, $a2, $dc, $ab, $a7, $d8        ;; 0f:663b ????????
    db   $e6, $01, $a2, $dc, $a7, $e6, $02, $d8        ;; 0f:6643 ????????
    db   $a4, $a1, $dc, $a9, $d8, $e6, $03, $a4        ;; 0f:664b ????????
    db   $a1, $dc, $a9, $d8, $e6, $01, $a4, $dc        ;; 0f:6653 ????????
    db   $a9, $d8, $e6, $03, $56, $dc, $8a, $d8        ;; 0f:665b ????????
    db   $84, $e1, $dd, $64                            ;; 0f:6663 ????

data_0f_6667:
    db   $e4, $4f, $7a, $e8, $fc, $7a, $e0, $20        ;; 0f:6667 ????????
    db   $e6, $03, $d1, $1b, $8f, $89, $8b, $2f        ;; 0f:666f ????????
    db   $a9, $af, $a9, $af, $89, $e3, $02, $e6        ;; 0f:6677 ????????
    db   $03, $e8, $0c, $7b, $8b, $d8, $ab, $af        ;; 0f:667f ????????
    db   $dc, $8b, $d8, $ab, $af, $dc, $8b, $d8        ;; 0f:6687 ????????
    db   $ab, $af, $dc, $8b, $d8, $ab, $af, $dc        ;; 0f:668f ????????
    db   $89, $d8, $a9, $af, $dc, $89, $d8, $a9        ;; 0f:6697 ????????
    db   $af, $dc, $89, $d8, $a9, $af, $dc, $89        ;; 0f:669f ????????
    db   $d8, $a9, $af, $dc, $87, $d8, $a7, $af        ;; 0f:66a7 ????????
    db   $dc, $87, $d8, $a7, $af, $dc, $87, $d8        ;; 0f:66af ????????
    db   $a7, $af, $dc, $87, $d8, $a7, $af, $eb        ;; 0f:66b7 ????????
    db   $01, $19, $67, $dc, $86, $d8, $a6, $af        ;; 0f:66bf ????????
    db   $dc, $86, $d8, $a6, $af, $dc, $86, $d8        ;; 0f:66c7 ????????
    db   $a6, $af, $dc, $86, $d8, $a6, $af, $dc        ;; 0f:66cf ????????
    db   $84, $d8, $a4, $af, $dc, $84, $d8, $a4        ;; 0f:66d7 ????????
    db   $af, $dc, $84, $d8, $a4, $af, $dc, $84        ;; 0f:66df ????????
    db   $d8, $a4, $af, $dc, $81, $d8, $a1, $af        ;; 0f:66e7 ????????
    db   $dc, $81, $d8, $a1, $af, $dc, $81, $d8        ;; 0f:66ef ????????
    db   $a1, $af, $dc, $81, $d8, $a1, $af, $dc        ;; 0f:66f7 ????????
    db   $56, $d8, $56, $dc, $57, $d8, $57, $dc        ;; 0f:66ff ????????
    db   $59, $d8, $59, $dc, $e6, $01, $7a, $d8        ;; 0f:6707 ????????
    db   $e6, $02, $76, $dc, $e6, $03, $86, $e2        ;; 0f:670f ????????
    db   $7e, $66, $dc, $86, $d8, $a6, $af, $dc        ;; 0f:6717 ????????
    db   $86, $d8, $a6, $af, $dc, $86, $d8, $a6        ;; 0f:671f ????????
    db   $af, $dc, $86, $d8, $a6, $af, $dc, $77        ;; 0f:6727 ????????
    db   $d8, $77, $82, $dc, $84, $d8, $a4, $af        ;; 0f:672f ????????
    db   $dc, $84, $d8, $a4, $af, $dc, $76, $d8        ;; 0f:6737 ????????
    db   $76, $81, $dc, $8b, $d8, $ab, $af, $dc        ;; 0f:673f ????????
    db   $89, $d8, $a9, $af, $dc, $87, $d8, $a7        ;; 0f:6747 ????????
    db   $af, $dc, $87, $d8, $a7, $af, $dc, $89        ;; 0f:674f ????????
    db   $d8, $a9, $af, $dc, $89, $d8, $a9, $af        ;; 0f:6757 ????????
    db   $dc, $8b, $d8, $ab, $af, $dc, $8b, $d8        ;; 0f:675f ????????
    db   $ab, $af, $dc, $e6, $02, $5b, $e6, $01        ;; 0f:6767 ????????
    db   $59, $e3, $02, $e6, $02, $87, $d8, $e6        ;; 0f:676f ????????
    db   $03, $a7, $af, $a7, $af, $dc, $e6, $02        ;; 0f:6777 ????????
    db   $87, $d8, $e6, $03, $a7, $af, $a7, $af        ;; 0f:677f ????????
    db   $e6, $02, $dc, $87, $d8, $e6, $03, $a7        ;; 0f:6787 ????????
    db   $af, $dc, $e2, $72, $67, $86, $d8, $a6        ;; 0f:678f ????????
    db   $af, $a6, $af, $dc, $86, $d8, $a6, $af        ;; 0f:6797 ????????
    db   $a6, $af, $dc, $86, $d8, $a6, $af, $e6        ;; 0f:679f ????????
    db   $02, $dc, $56, $d8, $e6, $01, $56, $e6        ;; 0f:67a7 ????????
    db   $02, $51, $dc, $e6, $01, $56, $e6, $03        ;; 0f:67af ????????
    db   $89, $d8, $a9, $af, $dc, $89, $d8, $a9        ;; 0f:67b7 ????????
    db   $af, $dc, $89, $d8, $a9, $af, $dc, $89        ;; 0f:67bf ????????
    db   $d8, $a9, $af, $dc, $8b, $d8, $ab, $af        ;; 0f:67c7 ????????
    db   $dc, $8b, $d8, $ab, $af, $81, $d8, $a1        ;; 0f:67cf ????????
    db   $af, $dc, $83, $d8, $a3, $af, $dc, $a4        ;; 0f:67d7 ????????
    db   $af, $a4, $af, $a4, $af, $a4, $af, $a2        ;; 0f:67df ????????
    db   $af, $a2, $af, $a2, $af, $a2, $af, $01        ;; 0f:67e7 ????????
    db   $dc, $a6, $af, $a6, $af, $a6, $af, $a6        ;; 0f:67ef ????????
    db   $af, $a7, $af, $a7, $af, $a7, $af, $a7        ;; 0f:67f7 ????????
    db   $af, $a9, $af, $a9, $af, $a9, $af, $a9        ;; 0f:67ff ????????
    db   $af, $d8, $e6, $02, $56, $dc, $e6, $01        ;; 0f:6807 ????????
    db   $56, $e1, $7c, $66, $19, $68, $bd, $68        ;; 0f:680f ????????
    db   $ff, $69                                      ;; 0f:6817 ??

data_0f_6819:
    db   $e7, $78                                      ;; 0f:6819 ..
.data_0f_681b:
    db   $e4, $4f, $7a, $e0, $be, $7a, $e5, $40        ;; 0f:681b ........
    db   $e6, $03, $d2, $59, $ae, $a4, $a9, $d8        ;; 0f:6823 ........
    db   $a0, $24, $7e, $72, $80, $dc, $5b, $57        ;; 0f:682b ........
    db   $7b, $d8, $70, $dc, $8b, $24, $0e, $59        ;; 0f:6833 ........
    db   $ae, $a4, $a9, $d8, $a0, $24, $7e, $72        ;; 0f:683b ........
    db   $80, $dc, $7b, $d8, $70, $82, $44, $57        ;; 0f:6843 ........
    db   $a6, $a5, $54, $08, $59, $ae, $a7, $a5        ;; 0f:684b ........
    db   $a4, $22, $5e, $54, $55, $59, $47, $54        ;; 0f:6853 ........
    db   $a5, $a6, $57, $20, $8e, $82, $a0, $dc        ;; 0f:685b ........
    db   $7b, $29, $8e, $d8, $80, $dc, $8b, $89        ;; 0f:6863 ........
    db   $47, $5b, $a9, $a8, $57, $09, $2e, $8e        ;; 0f:686b ........
    db   $e0, $82, $7a, $e5, $80, $8b, $d8, $80        ;; 0f:6873 ........
    db   $82, $44, $42, $57, $74, $72, $40, $a0        ;; 0f:687b ........
    db   $72, $dc, $4b, $d8, $47, $52, $2e, $8f        ;; 0f:6883 ........
    db   $dc, $e0, $a8, $7a, $ab, $d8, $a0, $a2        ;; 0f:688b ........
    db   $a0, $dc, $ab, $a7, $e0, $82, $7a, $e5        ;; 0f:6893 ........
    db   $40, $79, $7b, $d8, $80, $dc, $5b, $57        ;; 0f:689b ........
    db   $d8, $70, $72, $84, $73, $74, $86, $04        ;; 0f:68a3 ........
    db   $2e, $ae, $e0, $a8, $7a, $a2, $a0, $dc        ;; 0f:68ab ........
    db   $ab, $d8, $a0, $dc, $ab, $a9, $a8, $e1        ;; 0f:68b3 ........
    dw   .data_0f_681b                                 ;; 0f:68bb pP

data_0f_68bd:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $00        ;; 0f:68bd ........
    db   $e6, $02, $d2, $40, $ae, $a4, $59, $57        ;; 0f:68c5 ........
    db   $29, $52, $dc, $5b, $d8, $44, $82, $50        ;; 0f:68cd ........
    db   $dc, $5b, $e0, $82, $7a, $e6, $03, $e5        ;; 0f:68d5 ........
    db   $40, $79, $7b, $d8, $80, $dc, $7b, $d8        ;; 0f:68dd ........
    db   $70, $82, $e0, $c0, $7a, $e6, $01, $e5        ;; 0f:68e5 ........
    db   $00, $40, $ae, $a4, $59, $5b, $d8, $70        ;; 0f:68ed ........
    db   $dc, $7b, $89, $47, $85, $27, $8e, $a9        ;; 0f:68f5 ........
    db   $ab, $d8, $50, $e0, $82, $7a, $e6, $03        ;; 0f:68fd ........
    db   $e5, $40, $52, $50, $dc, $7b, $d8, $70        ;; 0f:6905 ........
    db   $82, $e0, $c0, $7a, $e6, $02, $e5, $00        ;; 0f:690d ........
    db   $50, $dc, $59, $65, $b7, $b8, $59, $2b        ;; 0f:6915 ........
    db   $59, $5b, $d8, $40, $dc, $57, $a9, $aa        ;; 0f:691d ........
    db   $5b, $74, $70, $82, $54, $ae, $72, $e6        ;; 0f:6925 ........
    db   $03, $70, $dc, $7b, $59, $d8, $85, $82        ;; 0f:692d ........
    db   $80, $dc, $7b, $d8, $70, $42, $dc, $5b        ;; 0f:6935 ........
    db   $e6, $01, $d8, $40, $42, $dc, $5b, $e6        ;; 0f:693d ........
    db   $03, $d8, $a0, $a2, $a4, $a2, $a0, $a2        ;; 0f:6945 ........
    db   $a4, $a2, $80, $82, $84, $85, $e0, $ae        ;; 0f:694d ........
    db   $7a, $e5, $40, $a0, $a2, $a0, $dc, $ab        ;; 0f:6955 ........
    db   $e6, $02, $a9, $ab, $d8, $a0, $a2, $e6        ;; 0f:695d ........
    db   $03, $a0, $dc, $ab, $a9, $ab, $d8, $e6        ;; 0f:6965 ........
    db   $01, $a0, $a2, $a0, $dc, $ab, $e6, $03        ;; 0f:696d ........
    db   $d8, $a0, $a2, $a0, $dc, $ab, $e6, $02        ;; 0f:6975 ........
    db   $a9, $ab, $d8, $a0, $a2, $e6, $03, $a0        ;; 0f:697d ........
    db   $dc, $ab, $a9, $ab, $e6, $01, $d8, $a0        ;; 0f:6985 ........
    db   $a2, $a0, $dc, $a9, $e6, $03, $ab, $d8        ;; 0f:698d ........
    db   $a0, $dc, $ab, $a9, $e6, $02, $a7, $a9        ;; 0f:6995 ........
    db   $ab, $d8, $a0, $e6, $03, $dc, $ab, $a9        ;; 0f:699d ........
    db   $a7, $a9, $e6, $01, $ab, $d8, $a0, $dc        ;; 0f:69a5 ........
    db   $ab, $a9, $e6, $03, $ab, $d8, $a0, $dc        ;; 0f:69ad ........
    db   $ab, $a9, $e6, $02, $a7, $a9, $ab, $d8        ;; 0f:69b5 ........
    db   $a0, $dc, $8b, $e6, $03, $d8, $a7, $a9        ;; 0f:69bd ........
    db   $ab, $a9, $a7, $a2, $e0, $c0, $7a, $e6        ;; 0f:69c5 ........
    db   $01, $40, $85, $22, $74, $75, $87, $76        ;; 0f:69cd ........
    db   $78, $89, $e0, $82, $7a, $e5, $40, $e6        ;; 0f:69d5 ........
    db   $03, $78, $79, $8b, $79, $78, $86, $e0        ;; 0f:69dd ........
    db   $ae, $7a, $a4, $dc, $a8, $ab, $d8, $a4        ;; 0f:69e5 ........
    db   $a6, $dc, $a9, $d8, $a2, $a6, $a8, $a6        ;; 0f:69ed ........
    db   $a4, $a2, $a4, $a2, $a0, $dc, $ab, $e1        ;; 0f:69f5 ........
    dw   data_0f_68bd                                  ;; 0f:69fd pP

data_0f_69ff:
    db   $e4, $4f, $7a, $e8, $0c, $7b, $e0, $20        ;; 0f:69ff ........
    db   $e6, $03                                      ;; 0f:6a07 ..
.data_0f_6a09:
    db   $e3, $03                                      ;; 0f:6a09 ..
.data_0f_6a0b:
    db   $d1, $89, $d8, $a9, $af, $dc, $89, $d8        ;; 0f:6a0b ........
    db   $a9, $af, $dc, $89, $d8, $a9, $af, $dc        ;; 0f:6a13 ........
    db   $87, $d8, $a7, $af, $dc, $85, $d8, $a5        ;; 0f:6a1b ........
    db   $af, $dc, $85, $d8, $a5, $af, $dc, $87        ;; 0f:6a23 ........
    db   $d8, $a7, $af, $dc, $87, $d8, $a7, $af        ;; 0f:6a2b ........
    db   $e2                                           ;; 0f:6a33 .
    dw   .data_0f_6a0b                                 ;; 0f:6a34 pP
    db   $80, $d8, $a0, $af, $dc, $80, $d8, $a0        ;; 0f:6a36 ........
    db   $af, $dc, $80, $d8, $a0, $af, $dc, $80        ;; 0f:6a3e ........
    db   $d8, $a0, $af, $dc, $a4, $af, $a4, $af        ;; 0f:6a46 ........
    db   $a4, $af, $a4, $af, $74, $76, $88, $dc        ;; 0f:6a4e ........
    db   $85, $d8, $a5, $af, $dc, $85, $d8, $a5        ;; 0f:6a56 ........
    db   $af, $dc, $85, $d8, $a5, $af, $dc, $85        ;; 0f:6a5e ........
    db   $d8, $a5, $af, $dc, $87, $d8, $a7, $af        ;; 0f:6a66 ........
    db   $dc, $87, $d8, $a7, $af, $dc, $87, $d8        ;; 0f:6a6e ........
    db   $a7, $af, $dc, $87, $d8, $a7, $af, $80        ;; 0f:6a76 ........
    db   $d8, $a0, $af, $dc, $80, $d8, $a0, $af        ;; 0f:6a7e ........
    db   $dc, $80, $d8, $a0, $af, $dd, $8b, $d8        ;; 0f:6a86 ........
    db   $ab, $af, $dc, $89, $d8, $a9, $af, $dc        ;; 0f:6a8e ........
    db   $89, $d8, $a9, $af, $dc, $e6, $02, $59        ;; 0f:6a96 ........
    db   $e6, $01, $57, $e6, $03, $75, $d8, $75        ;; 0f:6a9e ........
    db   $80, $8f, $dc, $a5, $af, $a5, $af, $a5        ;; 0f:6aa6 ........
    db   $af, $77, $d8, $77, $82, $8f, $dc, $a7        ;; 0f:6aae ........
    db   $af, $a7, $af, $a7, $af, $89, $d8, $a9        ;; 0f:6ab6 ........
    db   $af, $dc, $89, $d8, $a9, $af, $dc, $89        ;; 0f:6abe ........
    db   $d8, $a9, $af, $dc, $89, $d8, $a9, $af        ;; 0f:6ac6 ........
    db   $dc, $89, $d8, $a9, $af, $dc, $89, $d8        ;; 0f:6ace ........
    db   $a9, $af, $dc, $e6, $02, $59, $e6, $01        ;; 0f:6ad6 ........
    db   $57, $e6, $03, $a5, $af, $a5, $af, $a5        ;; 0f:6ade ........
    db   $af, $d8, $45, $50, $dc, $a5, $af, $a5        ;; 0f:6ae6 ........
    db   $af, $a5, $af, $d8, $45, $50, $dc, $a4        ;; 0f:6aee ........
    db   $af, $a4, $af, $a4, $af, $d8, $44, $dc        ;; 0f:6af6 ........
    db   $5b, $a4, $af, $a4, $af, $a4, $af, $d8        ;; 0f:6afe ........
    db   $44, $dc, $5b, $85, $d8, $a5, $af, $dc        ;; 0f:6b06 ........
    db   $85, $d8, $a5, $af, $dc, $87, $d8, $a7        ;; 0f:6b0e ........
    db   $af, $dc, $87, $d8, $a7, $af, $80, $d8        ;; 0f:6b16 ........
    db   $a0, $af, $dc, $80, $d8, $a0, $af, $dd        ;; 0f:6b1e ........
    db   $8b, $d8, $ab, $af, $dc, $8b, $d8, $ab        ;; 0f:6b26 ........
    db   $af, $a4, $af, $a4, $af, $a4, $af, $a4        ;; 0f:6b2e ........
    db   $af, $a2, $af, $a2, $af, $a2, $af, $a2        ;; 0f:6b36 ........
    db   $af, $dc, $e6, $02, $54, $d8, $e6, $03        ;; 0f:6b3e ........
    db   $54, $dc, $e6, $01, $5b, $e6, $03, $54        ;; 0f:6b46 ........
    db   $e1                                           ;; 0f:6b4e .
    dw   .data_0f_6a09                                 ;; 0f:6b4f pP
    db   $57, $6b, $83, $6c, $a9, $6d                  ;; 0f:6b51 ??????

data_0f_6b57:
    db   $e7, $3e, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:6b57 ????????
    db   $e5, $40, $d2, $87, $d8, $80, $dc, $19        ;; 0f:6b5f ????????
    db   $87, $d8, $80, $dc, $49, $89, $8a, $d8        ;; 0f:6b67 ????????
    db   $80, $50, $dc, $5a, $55, $57, $29, $8f        ;; 0f:6b6f ????????
    db   $85, $87, $89, $5a, $89, $8a, $d8, $50        ;; 0f:6b77 ????????
    db   $dc, $59, $8f, $d8, $82, $84, $85, $84        ;; 0f:6b7f ????????
    db   $82, $80, $dc, $8b, $d8, $20, $8e, $dc        ;; 0f:6b87 ????????
    db   $89, $8a, $d8, $80, $80, $dc, $8a, $89        ;; 0f:6b8f ????????
    db   $8a, $22, $24, $25, $2e, $2f, $e3, $02        ;; 0f:6b97 ????????
    db   $e5, $80, $59, $d8, $50, $dc, $5a, $59        ;; 0f:6b9f ????????
    db   $55, $57, $29, $d8, $22, $8f, $80, $dc        ;; 0f:6ba7 ????????
    db   $8a, $89, $27, $8f, $87, $89, $8a, $d8        ;; 0f:6baf ????????
    db   $50, $dc, $89, $8a, $d8, $50, $55, $54        ;; 0f:6bb7 ????????
    db   $52, $50, $dc, $5a, $eb, $01, $d4, $6b        ;; 0f:6bbf ????????
    db   $59, $d8, $50, $dc, $8a, $89, $87, $85        ;; 0f:6bc7 ????????
    db   $29, $27, $e2, $9f, $6b, $59, $d8, $50        ;; 0f:6bcf ????????
    db   $dc, $8a, $89, $82, $84, $25, $8f, $e5        ;; 0f:6bd7 ????????
    db   $40, $89, $8a, $d8, $80, $e3, $02, $22        ;; 0f:6bdf ????????
    db   $8e, $dc, $87, $89, $8a, $d8, $20, $8e        ;; 0f:6be7 ????????
    db   $dc, $85, $87, $89, $2a, $8e, $87, $d8        ;; 0f:6bef ????????
    db   $80, $dc, $87, $5a, $59, $5a, $d8, $50        ;; 0f:6bf7 ????????
    db   $22, $8e, $84, $85, $87, $20, $8e, $82        ;; 0f:6bff ????????
    db   $84, $85, $55, $52, $54, $55, $55, $e7        ;; 0f:6c07 ????????
    db   $3a, $5e, $e7, $36, $54, $8e, $8f, $eb        ;; 0f:6c0f ????????
    db   $01, $54, $6c, $e5, $80, $e7, $3e, $dc        ;; 0f:6c17 ????????
    db   $59, $d8, $50, $dc, $5a, $59, $55, $57        ;; 0f:6c1f ????????
    db   $29, $d8, $22, $8f, $80, $dc, $8a, $89        ;; 0f:6c27 ????????
    db   $27, $8f, $87, $89, $8a, $d8, $50, $dc        ;; 0f:6c2f ????????
    db   $89, $8a, $d8, $50, $55, $54, $52, $50        ;; 0f:6c37 ????????
    db   $dc, $5a, $59, $d8, $50, $dc, $8a, $89        ;; 0f:6c3f ????????
    db   $82, $84, $25, $8f, $e5, $40, $89, $8a        ;; 0f:6c47 ????????
    db   $d8, $80, $e2, $e6, $6b, $e7, $3e, $e5        ;; 0f:6c4f ????????
    db   $80, $dc, $59, $d8, $50, $dc, $5a, $59        ;; 0f:6c57 ????????
    db   $55, $57, $e7, $36, $59, $87, $89, $e7        ;; 0f:6c5f ????????
    db   $3e, $2a, $d8, $20, $22, $e7, $39, $54        ;; 0f:6c67 ????????
    db   $e7, $36, $54, $e7, $3e, $05, $5f, $e7        ;; 0f:6c6f ????????
    db   $38, $5f, $e7, $33, $5f, $e7, $2f, $5f        ;; 0f:6c77 ????????
    db   $e7, $2a, $05, $ff                            ;; 0f:6c7f ????

data_0f_6c83:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $00        ;; 0f:6c83 ????????
    db   $e6, $03, $8f, $d1, $89, $d8, $80, $dc        ;; 0f:6c8b ????????
    db   $89, $d8, $55, $54, $53, $50, $8e, $85        ;; 0f:6c93 ????????
    db   $87, $89, $22, $dc, $2a, $d8, $20, $8f        ;; 0f:6c9b ????????
    db   $dc, $49, $d8, $22, $54, $50, $8f, $45        ;; 0f:6ca3 ????????
    db   $58, $89, $84, $8f, $84, $89, $87, $56        ;; 0f:6cab ????????
    db   $87, $89, $52, $50, $dc, $2a, $d8, $50        ;; 0f:6cb3 ????????
    db   $dc, $5a, $29, $2e, $2f, $d8, $e3, $02        ;; 0f:6cbb ????????
    db   $e0, $c6, $7a, $e5, $40, $25, $21, $22        ;; 0f:6cc3 ????????
    db   $83, $80, $82, $83, $55, $5a, $54, $82        ;; 0f:6ccb ????????
    db   $80, $8f, $dc, $8a, $d8, $80, $82, $54        ;; 0f:6cd3 ????????
    db   $85, $87, $89, $87, $55, $29, $05, $eb        ;; 0f:6cdb ????????
    db   $01, $f3, $6c, $54, $57, $52, $84, $82        ;; 0f:6ce3 ????????
    db   $8f, $80, $85, $80, $24, $e2, $c3, $6c        ;; 0f:6ceb ????????
    db   $8f, $80, $84, $80, $52, $dc, $5a, $29        ;; 0f:6cf3 ????????
    db   $8f, $d8, $e0, $82, $7a, $e5, $00, $85        ;; 0f:6cfb ????????
    db   $87, $89, $e3, $02, $e0, $c2, $7a, $8f        ;; 0f:6d03 ????????
    db   $82, $84, $85, $24, $8f, $80, $82, $84        ;; 0f:6d0b ????????
    db   $52, $84, $85, $82, $dc, $8a, $d8, $80        ;; 0f:6d13 ????????
    db   $82, $50, $84, $80, $e0, $82, $7a, $52        ;; 0f:6d1b ????????
    db   $50, $57, $59, $e0, $c2, $7a, $8f, $82        ;; 0f:6d23 ????????
    db   $84, $85, $84, $87, $89, $8a, $8f, $80        ;; 0f:6d2b ????????
    db   $82, $84, $82, $85, $87, $89, $2a, $2b        ;; 0f:6d33 ????????
    db   $8f, $8a, $d8, $80, $82, $dc, $47, $8f        ;; 0f:6d3b ????????
    db   $eb, $01, $7b, $6d, $e0, $c4, $7a, $e5        ;; 0f:6d43 ????????
    db   $40, $25, $21, $22, $83, $80, $82, $83        ;; 0f:6d4b ????????
    db   $52, $5a, $54, $82, $80, $8f, $dc, $8a        ;; 0f:6d53 ????????
    db   $d8, $80, $82, $54, $85, $87, $89, $87        ;; 0f:6d5b ????????
    db   $55, $29, $05, $8f, $80, $84, $80, $52        ;; 0f:6d63 ????????
    db   $dc, $5a, $29, $8f, $d8, $e0, $82, $7a        ;; 0f:6d6b ????????
    db   $e5, $00, $85, $87, $89, $e2, $07, $6d        ;; 0f:6d73 ????????
    db   $e5, $40, $25, $21, $22, $53, $5f, $e0        ;; 0f:6d7b ????????
    db   $82, $7a, $8f, $82, $84, $85, $8f, $84        ;; 0f:6d83 ????????
    db   $85, $87, $8f, $85, $87, $89, $87, $8a        ;; 0f:6d8b ????????
    db   $89, $87, $8f, $89, $8a, $d8, $80, $51        ;; 0f:6d93 ????????
    db   $80, $dc, $8a, $8f, $89, $8a, $d8, $80        ;; 0f:6d9b ????????
    db   $51, $80, $dc, $8a, $09, $ff                  ;; 0f:6da3 ??????

data_0f_6da9:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:6da9 ????????
    db   $d2, $05, $03, $dc, $2a, $d8, $21, $dc        ;; 0f:6db1 ????????
    db   $59, $d8, $54, $52, $50, $dc, $27, $59        ;; 0f:6db9 ????????
    db   $d8, $54, $dc, $2a, $d8, $54, $86, $88        ;; 0f:6dc1 ????????
    db   $5f, $59, $52, $84, $86, $dc, $57, $59        ;; 0f:6dc9 ????????
    db   $2a, $d8, $20, $8f, $dc, $85, $d8, $80        ;; 0f:6dd1 ????????
    db   $dc, $89, $d8, $55, $50, $dc, $45, $8f        ;; 0f:6dd9 ????????
    db   $d8, $e3, $02, $e8, $cc, $7a, $25, $24        ;; 0f:6de1 ????????
    db   $22, $20, $dc, $2a, $29, $57, $89, $8a        ;; 0f:6de9 ????????
    db   $d8, $20, $25, $23, $0a, $eb, $01, $06        ;; 0f:6df1 ????????
    db   $6e, $dc, $29, $27, $d8, $20, $8e, $8a        ;; 0f:6df9 ????????
    db   $89, $87, $e2, $e4, $6d, $dc, $29, $57        ;; 0f:6e01 ????????
    db   $d8, $50, $8f, $dc, $85, $d8, $80, $dc        ;; 0f:6e09 ????????
    db   $89, $d8, $e8, $dc, $7a, $55, $53, $e3        ;; 0f:6e11 ????????
    db   $02, $dc, $2a, $d8, $20, $dc, $29, $d8        ;; 0f:6e19 ????????
    db   $22, $dc, $27, $d8, $20, $dc, $55, $d8        ;; 0f:6e21 ????????
    db   $55, $53, $55, $dc, $2a, $d8, $20, $dc        ;; 0f:6e29 ????????
    db   $29, $d8, $22, $47, $82, $dc, $27, $d8        ;; 0f:6e31 ????????
    db   $20, $8e, $8a, $89, $87, $eb, $01, $69        ;; 0f:6e39 ????????
    db   $6e, $e8, $cc, $7a, $25, $24, $22, $20        ;; 0f:6e41 ????????
    db   $dc, $2a, $29, $57, $89, $8a, $d8, $20        ;; 0f:6e49 ????????
    db   $25, $23, $0a, $dc, $29, $57, $d8, $50        ;; 0f:6e51 ????????
    db   $8f, $dc, $85, $d8, $80, $dc, $89, $d8        ;; 0f:6e59 ????????
    db   $e8, $dc, $7a, $55, $53, $e2, $1a, $6e        ;; 0f:6e61 ????????
    db   $e8, $cc, $7a, $25, $24, $22, $50, $5f        ;; 0f:6e69 ????????
    db   $e8, $dc, $7a, $dc, $2a, $29, $27, $d8        ;; 0f:6e71 ????????
    db   $20, $dc, $25, $2a, $25, $5a, $89, $87        ;; 0f:6e79 ????????
    db   $25, $2f, $ff, $8a, $6e, $5e, $6f, $31        ;; 0f:6e81 ????????
    db   $70                                           ;; 0f:6e89 ?

data_0f_6e8a:
    db   $e7, $73, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:6e8a ????????
    db   $e5, $80, $e6, $01, $e3, $02, $d4, $80        ;; 0f:6e92 ????????
    db   $dc, $85, $88, $85, $d8, $81, $dc, $85        ;; 0f:6e9a ????????
    db   $88, $85, $d8, $83, $dc, $85, $88, $85        ;; 0f:6ea2 ????????
    db   $d8, $80, $dc, $85, $88, $85, $8a, $83        ;; 0f:6eaa ????????
    db   $87, $83, $d8, $80, $dc, $85, $88, $85        ;; 0f:6eb2 ????????
    db   $8a, $83, $87, $83, $d8, $80, $dc, $83        ;; 0f:6eba ????????
    db   $87, $83, $d8, $82, $dc, $83, $87, $83        ;; 0f:6ec2 ????????
    db   $d8, $83, $dc, $83, $87, $83, $d8, $82        ;; 0f:6eca ????????
    db   $dc, $83, $87, $83, $d8, $80, $dc, $83        ;; 0f:6ed2 ????????
    db   $87, $83, $e2, $98, $6e, $d8, $80, $dc        ;; 0f:6eda ????????
    db   $81, $85, $81, $8a, $81, $85, $81, $88        ;; 0f:6ee2 ????????
    db   $81, $85, $81, $87, $80, $84, $80, $88        ;; 0f:6eea ????????
    db   $82, $85, $82, $8a, $84, $87, $84, $8a        ;; 0f:6ef2 ????????
    db   $80, $85, $80, $88, $80, $85, $80, $8a        ;; 0f:6efa ????????
    db   $83, $87, $83, $d8, $80, $dc, $83, $88        ;; 0f:6f02 ????????
    db   $83, $d8, $81, $dc, $83, $88, $83, $d8        ;; 0f:6f0a ????????
    db   $83, $dc, $89, $d8, $80, $dc, $89, $d8        ;; 0f:6f12 ????????
    db   $81, $dc, $85, $8a, $85, $d8, $83, $dc        ;; 0f:6f1a ????????
    db   $85, $8a, $85, $d8, $81, $dc, $85, $8a        ;; 0f:6f22 ????????
    db   $85, $d8, $81, $dc, $86, $8a, $86, $d8        ;; 0f:6f2a ????????
    db   $83, $dc, $86, $8a, $86, $d8, $81, $dc        ;; 0f:6f32 ????????
    db   $86, $8a, $86, $d8, $80, $dc, $83, $88        ;; 0f:6f3a ????????
    db   $83, $d8, $80, $dc, $83, $88, $83, $8a        ;; 0f:6f42 ????????
    db   $81, $86, $81, $89, $80, $85, $80, $8a        ;; 0f:6f4a ????????
    db   $80, $85, $80, $d8, $80, $dc, $80, $85        ;; 0f:6f52 ????????
    db   $80, $e1, $96, $6e                            ;; 0f:6f5a ????

data_0f_6f5e:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $80        ;; 0f:6f5e ????????
    db   $e6, $02, $af, $e3, $02, $d4, $80, $dc        ;; 0f:6f66 ????????
    db   $85, $88, $85, $d8, $81, $dc, $85, $88        ;; 0f:6f6e ????????
    db   $85, $d8, $83, $dc, $85, $88, $85, $d8        ;; 0f:6f76 ????????
    db   $80, $dc, $85, $88, $85, $8a, $83, $87        ;; 0f:6f7e ????????
    db   $83, $d8, $80, $dc, $85, $88, $85, $8a        ;; 0f:6f86 ????????
    db   $83, $87, $83, $d8, $80, $dc, $83, $87        ;; 0f:6f8e ????????
    db   $83, $d8, $82, $dc, $83, $87, $83, $d8        ;; 0f:6f96 ????????
    db   $83, $dc, $83, $87, $83, $d8, $82, $dc        ;; 0f:6f9e ????????
    db   $83, $87, $83, $d8, $80, $dc, $83, $87        ;; 0f:6fa6 ????????
    db   $83, $e2, $6b, $6f, $d8, $80, $dc, $81        ;; 0f:6fae ????????
    db   $85, $81, $8a, $81, $85, $81, $88, $81        ;; 0f:6fb6 ????????
    db   $85, $81, $87, $80, $84, $80, $88, $82        ;; 0f:6fbe ????????
    db   $85, $82, $8a, $84, $87, $84, $8a, $80        ;; 0f:6fc6 ????????
    db   $85, $80, $88, $80, $85, $80, $8a, $83        ;; 0f:6fce ????????
    db   $87, $83, $d8, $80, $dc, $83, $88, $83        ;; 0f:6fd6 ????????
    db   $d8, $81, $dc, $83, $88, $83, $d8, $83        ;; 0f:6fde ????????
    db   $dc, $89, $d8, $80, $dc, $89, $d8, $81        ;; 0f:6fe6 ????????
    db   $dc, $85, $8a, $85, $d8, $83, $dc, $85        ;; 0f:6fee ????????
    db   $8a, $85, $d8, $81, $dc, $85, $8a, $85        ;; 0f:6ff6 ????????
    db   $d8, $81, $dc, $86, $8a, $86, $d8, $83        ;; 0f:6ffe ????????
    db   $dc, $86, $8a, $86, $d8, $81, $dc, $86        ;; 0f:7006 ????????
    db   $8a, $86, $d8, $80, $dc, $83, $88, $83        ;; 0f:700e ????????
    db   $d8, $80, $dc, $83, $88, $83, $8a, $81        ;; 0f:7016 ????????
    db   $86, $81, $89, $80, $85, $80, $8a, $80        ;; 0f:701e ????????
    db   $85, $80, $d8, $80, $dc, $80, $85, $80        ;; 0f:7026 ????????
    db   $e1, $69, $6f                                 ;; 0f:702e ???

data_0f_7031:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:7031 ????????
    db   $e6, $03, $e3, $02, $d3, $01, $28, $01        ;; 0f:7039 ????????
    db   $28, $00, $27, $eb, $01, $4d, $70, $00        ;; 0f:7041 ????????
    db   $27, $e2, $3d, $70, $10, $d8, $50, $dc        ;; 0f:7049 ????????
    db   $57, $50, $dc, $0a, $d8, $25, $20, $22        ;; 0f:7051 ????????
    db   $24, $05, $27, $08, $29, $0a, $28, $06        ;; 0f:7059 ????????
    db   $2a, $08, $26, $25, $27, $29, $e1, $3b        ;; 0f:7061 ????????
    db   $70, $70, $70, $9f, $70, $f9, $70             ;; 0f:7069 ???????

data_0f_7070:
    db   $e7, $3c, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:7070 ........
    db   $e5, $80                                      ;; 0f:7078 ..
.data_0f_707a:
    db   $d3, $14, $59, $22, $8e, $dc, $8b, $d8        ;; 0f:707a ........
    db   $80, $82, $24, $59, $d8, $50, $dc, $2b        ;; 0f:7082 ........
    db   $27, $24, $8e, $84, $82, $80, $52, $dc        ;; 0f:708a ........
    db   $5b, $57, $5b, $09, $2e, $8f, $8b, $d8        ;; 0f:7092 ........
    db   $80, $82, $e1                                 ;; 0f:709a ...
    dw   .data_0f_707a                                 ;; 0f:709d pP

data_0f_709f:
    db   $e4, $4f, $7a, $e0, $b2, $7a, $e5, $40        ;; 0f:709f ........
    db   $e6, $03                                      ;; 0f:70a7 ..
.data_0f_70a9:
    db   $8f, $d2, $80, $85, $80, $89, $80, $85        ;; 0f:70a9 ........
    db   $80, $8f, $dc, $8b, $d8, $84, $dc, $8b        ;; 0f:70b1 ........
    db   $d8, $87, $dc, $8b, $d8, $84, $87, $8f        ;; 0f:70b9 ........
    db   $80, $85, $80, $d8, $80, $dc, $85, $89        ;; 0f:70c1 ........
    db   $85, $8f, $dc, $8b, $d8, $84, $dc, $8b        ;; 0f:70c9 ........
    db   $d8, $5b, $57, $8f, $80, $85, $80, $59        ;; 0f:70d1 ........
    db   $8b, $89, $8f, $82, $87, $82, $8f, $dc        ;; 0f:70d9 ........
    db   $8b, $d8, $82, $dc, $8b, $8f, $d8, $84        ;; 0f:70e1 ........
    db   $85, $84, $8f, $84, $85, $84, $8f, $84        ;; 0f:70e9 ........
    db   $85, $84, $5f, $89, $8b, $e1                  ;; 0f:70f1 ......
    dw   .data_0f_70a9                                 ;; 0f:70f7 pP

data_0f_70f9:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:70f9 ........
    db   $e6, $03                                      ;; 0f:7101 ..
.data_0f_7103:
    db   $d2, $05, $04, $05, $04, $05, $27, $24        ;; 0f:7103 ........
    db   $29, $28, $27, $26, $e1                       ;; 0f:710b .....
    dw   .data_0f_7103                                 ;; 0f:7110 pP
    db   $18, $71, $aa, $71, $63, $72                  ;; 0f:7112 ??????

data_0f_7118:
    db   $e7, $5d, $e4, $4f, $7a, $e0, $aa, $7a        ;; 0f:7118 ????????
    db   $e5, $80, $0f, $8f, $d3, $ab, $d8, $a0        ;; 0f:7120 ????????
    db   $a2, $af, $dc, $ab, $af, $d8, $a0, $af        ;; 0f:7128 ????????
    db   $a0, $dc, $ab, $d8, $a0, $dc, $ab, $a9        ;; 0f:7130 ????????
    db   $af, $0b, $8f, $d8, $a2, $a0, $a2, $af        ;; 0f:7138 ????????
    db   $a7, $af, $a5, $af, $a5, $a7, $a4, $a2        ;; 0f:7140 ????????
    db   $a0, $af, $22, $8e, $dc, $ab, $af, $d8        ;; 0f:7148 ????????
    db   $a0, $af, $a2, $af, $a4, $af, $a4, $a3        ;; 0f:7150 ????????
    db   $a4, $af, $a6, $af, $57, $8f, $a4, $af        ;; 0f:7158 ????????
    db   $a2, $af, $a2, $a1, $a2, $af, $a6, $af        ;; 0f:7160 ????????
    db   $57, $8f, $a2, $af, $a0, $dc, $ab, $d8        ;; 0f:7168 ????????
    db   $a0, $a2, $84, $8f, $dc, $ab, $a9, $ab        ;; 0f:7170 ????????
    db   $d8, $a0, $82, $8f, $dc, $a9, $af, $a9        ;; 0f:7178 ????????
    db   $ab, $d8, $a0, $dc, $ab, $a9, $af, $ab        ;; 0f:7180 ????????
    db   $af, $ab, $d8, $a0, $dc, $ab, $a9, $a7        ;; 0f:7188 ????????
    db   $af, $86, $d8, $a2, $7f, $dc, $a6, $af        ;; 0f:7190 ????????
    db   $84, $d8, $a0, $7f, $dc, $a4, $af, $76        ;; 0f:7198 ????????
    db   $a4, $a6, $af, $a9, $af, $d8, $22, $e1        ;; 0f:71a0 ????????
    db   $23, $71                                      ;; 0f:71a8 ??

data_0f_71aa:
    db   $e4, $4f, $7a, $e0, $b4, $7a, $e5, $40        ;; 0f:71aa ????????
    db   $e6, $03, $0f, $e6, $02, $8f, $d2, $ab        ;; 0f:71b2 ????????
    db   $a9, $ab, $af, $a7, $af, $e6, $03, $79        ;; 0f:71ba ????????
    db   $ab, $a9, $af, $a5, $af, $e6, $01, $8f        ;; 0f:71c2 ????????
    db   $ab, $a9, $ab, $af, $a7, $af, $e6, $03        ;; 0f:71ca ????????
    db   $79, $ab, $a9, $af, $a5, $af, $e6, $02        ;; 0f:71d2 ????????
    db   $8f, $ab, $a9, $ab, $af, $a7, $af, $e6        ;; 0f:71da ????????
    db   $03, $79, $ab, $a9, $af, $a5, $af, $e6        ;; 0f:71e2 ????????
    db   $01, $8f, $ab, $a9, $ab, $af, $a7, $af        ;; 0f:71ea ????????
    db   $e6, $03, $d8, $57, $a9, $af, $ab, $af        ;; 0f:71f2 ????????
    db   $d8, $a0, $af, $a0, $dc, $ab, $d8, $a0        ;; 0f:71fa ????????
    db   $af, $af, $7f, $dc, $e6, $02, $a4, $a6        ;; 0f:7202 ????????
    db   $a4, $af, $a7, $af, $e6, $03, $ab, $af        ;; 0f:720a ????????
    db   $ab, $aa, $ab, $af, $d8, $af, $7f, $dd        ;; 0f:7212 ????????
    db   $e6, $01, $ab, $d8, $a0, $a2, $af, $dc        ;; 0f:721a ????????
    db   $ab, $af, $e6, $03, $d8, $a4, $a2, $a4        ;; 0f:7222 ????????
    db   $a6, $87, $8f, $a2, $a0, $a2, $a4, $86        ;; 0f:722a ????????
    db   $8f, $e6, $01, $a5, $a4, $a5, $7f, $e6        ;; 0f:7232 ????????
    db   $03, $a5, $af, $e6, $02, $a7, $a6, $a7        ;; 0f:723a ????????
    db   $7f, $dc, $e6, $03, $ab, $af, $e6, $01        ;; 0f:7242 ????????
    db   $89, $5f, $e6, $03, $a9, $af, $e6, $02        ;; 0f:724a ????????
    db   $87, $5f, $e6, $03, $a7, $af, $29, $8f        ;; 0f:7252 ????????
    db   $d8, $84, $a2, $af, $a0, $af, $e1, $b5        ;; 0f:725a ????????
    db   $71                                           ;; 0f:7262 ?

data_0f_7263:
    db   $e4, $4f, $7a, $e8, $cc, $7a, $e0, $40        ;; 0f:7263 ????????
    db   $d1, $a7, $af, $d8, $a2, $af, $dc, $a7        ;; 0f:726b ????????
    db   $af, $d8, $a2, $af, $dc, $a7, $af, $d8        ;; 0f:7273 ????????
    db   $a2, $af, $dc, $a7, $af, $d8, $a2, $af        ;; 0f:727b ????????
    db   $dc, $e6, $03, $a7, $af, $d8, $a2, $af        ;; 0f:7283 ????????
    db   $dc, $a7, $af, $d8, $a2, $af, $dc, $a5        ;; 0f:728b ????????
    db   $af, $d8, $a0, $af, $dc, $a5, $af, $d8        ;; 0f:7293 ????????
    db   $a0, $af, $dc, $a7, $af, $d8, $a2, $af        ;; 0f:729b ????????
    db   $dc, $a7, $af, $d8, $a2, $af, $dc, $a5        ;; 0f:72a3 ????????
    db   $af, $d8, $a0, $af, $dc, $a5, $af, $d8        ;; 0f:72ab ????????
    db   $a0, $af, $dc, $a7, $af, $d8, $a2, $af        ;; 0f:72b3 ????????
    db   $dc, $a7, $af, $d8, $a2, $af, $dc, $a5        ;; 0f:72bb ????????
    db   $af, $d8, $a0, $af, $dc, $a5, $af, $d8        ;; 0f:72c3 ????????
    db   $a0, $af, $dc, $a7, $af, $d8, $a2, $af        ;; 0f:72cb ????????
    db   $dc, $a7, $af, $d8, $a2, $af, $57, $55        ;; 0f:72d3 ????????
    db   $e6, $02, $a0, $af, $e6, $01, $a0, $4f        ;; 0f:72db ????????
    db   $af, $e6, $03, $d8, $a0, $af, $dc, $a7        ;; 0f:72e3 ????????
    db   $af, $d8, $a0, $af, $e6, $02, $dd, $ab        ;; 0f:72eb ????????
    db   $af, $e6, $01, $ab, $4f, $af, $e6, $03        ;; 0f:72f3 ????????
    db   $d8, $a7, $af, $a2, $af, $a7, $af, $49        ;; 0f:72fb ????????
    db   $e6, $02, $a4, $af, $e6, $03, $47, $e6        ;; 0f:7303 ????????
    db   $01, $a2, $af, $e6, $03, $a5, $af, $a5        ;; 0f:730b ????????
    db   $af, $a5, $af, $a5, $af, $a4, $af, $a4        ;; 0f:7313 ????????
    db   $af, $a4, $af, $a4, $af, $82, $5f, $e6        ;; 0f:731b ????????
    db   $02, $a2, $af, $e6, $03, $80, $5f, $e6        ;; 0f:7323 ????????
    db   $01, $a0, $af, $e6, $03, $22, $8f, $d8        ;; 0f:732b ????????
    db   $e6, $02, $80, $dc, $e6, $03, $ab, $af        ;; 0f:7333 ????????
    db   $e6, $01, $a9, $af, $dc, $e1, $84, $72        ;; 0f:733b ????????
    db   $49, $73, $1c, $74, $6f, $75                  ;; 0f:7343 ??????

data_0f_7349:
    db   $e7, $7d, $e4, $4f, $7a, $e0, $c4, $7a        ;; 0f:7349 ????????
    db   $e5, $40, $e3, $03, $d2, $a4, $a1, $dc        ;; 0f:7351 ????????
    db   $ab, $d8, $a4, $a1, $dc, $ab, $d8, $a4        ;; 0f:7359 ????????
    db   $a1, $dc, $ab, $d8, $a4, $a1, $dc, $ab        ;; 0f:7361 ????????
    db   $d8, $a4, $a1, $dc, $8b, $e2, $55, $73        ;; 0f:7369 ????????
    db   $e0, $c0, $7a, $2f, $af, $d2, $a1, $dc        ;; 0f:7371 ????????
    db   $ab, $d8, $a1, $a4, $a1, $dc, $ab, $d8        ;; 0f:7379 ????????
    db   $a1, $e3, $02, $49, $a8, $a9, $8b, $89        ;; 0f:7381 ????????
    db   $88, $89, $78, $56, $ae, $ae, $dc, $ab        ;; 0f:7389 ????????
    db   $a9, $ab, $d8, $a2, $dc, $ab, $a9, $ab        ;; 0f:7391 ????????
    db   $d8, $48, $a6, $a8, $89, $88, $86, $88        ;; 0f:7399 ????????
    db   $76, $54, $ae, $8e, $81, $82, $84, $76        ;; 0f:73a1 ????????
    db   $78, $86, $49, $a8, $a6, $74, $76, $84        ;; 0f:73a9 ????????
    db   $7b, $79, $88, $eb, $01, $c8, $73, $26        ;; 0f:73b1 ????????
    db   $af, $a1, $dc, $ab, $d8, $a1, $a4, $a1        ;; 0f:73b9 ????????
    db   $dc, $ab, $d8, $a1, $e2, $84, $73, $26        ;; 0f:73c1 ????????
    db   $8e, $e0, $82, $7a, $e5, $80, $89, $8b        ;; 0f:73c9 ????????
    db   $d8, $81, $22, $8f, $82, $84, $86, $74        ;; 0f:73d1 ????????
    db   $dc, $7b, $d8, $82, $21, $dc, $7b, $d8        ;; 0f:73d9 ????????
    db   $71, $82, $51, $dc, $5b, $59, $5b, $d8        ;; 0f:73e1 ????????
    db   $51, $54, $22, $8f, $82, $84, $86, $74        ;; 0f:73e9 ????????
    db   $dc, $7b, $d8, $82, $21, $dc, $2b, $8e        ;; 0f:73f1 ????????
    db   $8a, $8b, $d8, $81, $52, $51, $dc, $5b        ;; 0f:73f9 ????????
    db   $59, $28, $8e, $86, $85, $86, $28, $af        ;; 0f:7401 ????????
    db   $e0, $c0, $7a, $e5, $40, $a1, $dc, $ab        ;; 0f:7409 ????????
    db   $d8, $a1, $a4, $a1, $dc, $ab, $d8, $a1        ;; 0f:7411 ????????
    db   $e1, $82, $73                                 ;; 0f:7419 ???

data_0f_741c:
    db   $e4, $4f, $7a, $e0, $ca, $7a, $e5, $40        ;; 0f:741c ????????
    db   $e6, $03, $e3, $03, $d2, $a4, $a1, $dc        ;; 0f:7424 ????????
    db   $ab, $d8, $a4, $a1, $dc, $ab, $d8, $a4        ;; 0f:742c ????????
    db   $a1, $dc, $ab, $d8, $a4, $a1, $dc, $ab        ;; 0f:7434 ????????
    db   $d8, $a4, $a1, $dc, $8b, $e2, $28, $74        ;; 0f:743c ????????
    db   $e0, $c6, $7a, $a6, $a8, $a9, $ab, $d8        ;; 0f:7444 ????????
    db   $a1, $a2, $a4, $a6, $28, $e3, $02, $e6        ;; 0f:744c ????????
    db   $02, $e5, $00, $46, $81, $88, $86, $84        ;; 0f:7454 ????????
    db   $86, $22, $ae, $dc, $e6, $03, $a6, $a4        ;; 0f:745c ????????
    db   $a6, $a9, $a6, $a4, $a6, $e6, $01, $d8        ;; 0f:7464 ????????
    db   $44, $dc, $8b, $d8, $86, $84, $82, $84        ;; 0f:746c ????????
    db   $21, $8e, $dc, $e6, $03, $89, $8b, $d8        ;; 0f:7474 ????????
    db   $81, $72, $54, $ae, $22, $e6, $02, $dc        ;; 0f:747c ????????
    db   $78, $79, $88, $d8, $e6, $01, $78, $76        ;; 0f:7484 ????????
    db   $84, $eb, $01, $ad, $74, $e6, $03, $a2        ;; 0f:748c ????????
    db   $a1, $dc, $ab, $d8, $e6, $02, $a1, $dc        ;; 0f:7494 ????????
    db   $ab, $a9, $e6, $01, $ab, $a9, $58, $e6        ;; 0f:749c ????????
    db   $03, $ab, $a8, $a4, $a8, $d8, $e2, $53        ;; 0f:74a4 ????????
    db   $74, $e5, $40, $e6, $03, $dc, $a9, $a6        ;; 0f:74ac ????????
    db   $a2, $e6, $02, $a9, $a6, $a9, $e6, $01        ;; 0f:74b4 ????????
    db   $ab, $a8, $89, $d8, $e6, $03, $86, $88        ;; 0f:74bc ????????
    db   $89, $e6, $02, $7b, $79, $88, $56, $88        ;; 0f:74c4 ????????
    db   $89, $e6, $03, $48, $86, $24, $e6, $01        ;; 0f:74cc ????????
    db   $72, $74, $86, $85, $81, $83, $85, $e6        ;; 0f:74d4 ????????
    db   $03, $a1, $dc, $a9, $e6, $01, $a6, $a9        ;; 0f:74dc ????????
    db   $d8, $e6, $03, $a2, $dc, $ab, $e6, $02        ;; 0f:74e4 ????????
    db   $a8, $ab, $d8, $e6, $03, $a4, $a1, $dc        ;; 0f:74ec ????????
    db   $e6, $01, $a9, $d8, $a1, $e6, $03, $a6        ;; 0f:74f4 ????????
    db   $a1, $dc, $e6, $02, $aa, $d8, $a1, $e6        ;; 0f:74fc ????????
    db   $01, $7b, $79, $88, $56, $88, $89, $e6        ;; 0f:7504 ????????
    db   $03, $48, $86, $24, $e6, $02, $72, $76        ;; 0f:750c ????????
    db   $84, $82, $81, $82, $84, $e6, $03, $a6        ;; 0f:7514 ????????
    db   $a2, $dc, $ab, $d8, $a2, $e6, $01, $a4        ;; 0f:751c ????????
    db   $a1, $dc, $a9, $d8, $a1, $e6, $03, $a2        ;; 0f:7524 ????????
    db   $dc, $ab, $a8, $ab, $d8, $e6, $02, $a1        ;; 0f:752c ????????
    db   $dc, $a9, $a6, $a9, $e6, $03, $d8, $a3        ;; 0f:7534 ????????
    db   $a0, $dc, $a8, $d8, $e6, $01, $a3, $a0        ;; 0f:753c ????????
    db   $dc, $a8, $d8, $e6, $02, $a3, $a0, $dc        ;; 0f:7544 ????????
    db   $a8, $d8, $e6, $03, $a3, $a0, $dc, $a8        ;; 0f:754c ????????
    db   $e6, $01, $d8, $a1, $dc, $aa, $a6, $aa        ;; 0f:7554 ????????
    db   $e6, $02, $a8, $ab, $a9, $a8, $e6, $01        ;; 0f:755c ????????
    db   $a6, $a9, $a8, $a6, $e6, $03, $28, $d8        ;; 0f:7564 ????????
    db   $e1, $51, $74                                 ;; 0f:756c ???

data_0f_756f:
    db   $e4, $4f, $7a, $e8, $fc, $7a, $e0, $20        ;; 0f:756f ????????
    db   $e6, $03, $d1, $a6, $af, $a6, $af, $a6        ;; 0f:7577 ????????
    db   $af, $a6, $af, $a6, $af, $a6, $af, $d8        ;; 0f:757f ????????
    db   $e6, $02, $51, $e6, $03, $dc, $a6, $af        ;; 0f:7587 ????????
    db   $a6, $af, $a6, $af, $a6, $af, $a6, $af        ;; 0f:758f ????????
    db   $a6, $af, $d8, $e6, $01, $51, $e6, $03        ;; 0f:7597 ????????
    db   $dc, $a2, $af, $a2, $af, $a2, $af, $a2        ;; 0f:759f ????????
    db   $af, $a2, $af, $a2, $af, $e6, $02, $59        ;; 0f:75a7 ????????
    db   $e6, $03, $54, $52, $41, $8f, $e3, $02        ;; 0f:75af ????????
    db   $e8, $0c, $7b, $86, $d8, $a6, $af, $dc        ;; 0f:75b7 ????????
    db   $86, $d8, $a6, $af, $dc, $86, $d8, $a6        ;; 0f:75bf ????????
    db   $af, $dc, $86, $d8, $a6, $af, $dc, $8b        ;; 0f:75c7 ????????
    db   $d8, $ab, $af, $dc, $8b, $d8, $ab, $af        ;; 0f:75cf ????????
    db   $dc, $e6, $02, $5b, $e6, $01, $56, $e6        ;; 0f:75d7 ????????
    db   $03, $84, $d8, $a4, $af, $dc, $84, $d8        ;; 0f:75df ????????
    db   $a4, $af, $dc, $84, $d8, $a4, $af, $dc        ;; 0f:75e7 ????????
    db   $84, $d8, $a4, $af, $dc, $89, $d8, $a9        ;; 0f:75ef ????????
    db   $af, $dc, $89, $d8, $a9, $af, $dc, $e6        ;; 0f:75f7 ????????
    db   $01, $59, $e6, $02, $57, $e6, $03, $82        ;; 0f:75ff ????????
    db   $d8, $a2, $af, $dc, $82, $d8, $a2, $af        ;; 0f:7607 ????????
    db   $dc, $82, $d8, $a2, $af, $dc, $82, $d8        ;; 0f:760f ????????
    db   $a2, $af, $dc, $84, $d8, $a4, $af, $dc        ;; 0f:7617 ????????
    db   $84, $d8, $a4, $af, $dc, $84, $d8, $a4        ;; 0f:761f ????????
    db   $af, $dc, $84, $d8, $a4, $af, $eb, $01        ;; 0f:7627 ????????
    db   $3e, $76, $dc, $72, $d8, $72, $dc, $89        ;; 0f:762f ????????
    db   $d8, $41, $8f, $dc, $e2, $b7, $75, $dc        ;; 0f:7637 ????????
    db   $a2, $af, $a2, $af, $af, $74, $46, $8f        ;; 0f:763f ????????
    db   $8b, $d8, $ab, $af, $dc, $8b, $d8, $ab        ;; 0f:7647 ????????
    db   $af, $dc, $8b, $d8, $ab, $af, $dc, $8b        ;; 0f:764f ????????
    db   $d8, $ab, $af, $dc, $84, $d8, $a4, $af        ;; 0f:7657 ????????
    db   $dc, $84, $d8, $a4, $af, $dc, $59, $57        ;; 0f:765f ????????
    db   $82, $d8, $a2, $af, $dc, $82, $d8, $a2        ;; 0f:7667 ????????
    db   $af, $dc, $81, $d8, $a1, $af, $dc, $81        ;; 0f:766f ????????
    db   $d8, $a1, $af, $dc, $56, $58, $59, $5a        ;; 0f:7677 ????????
    db   $8b, $d8, $ab, $af, $dc, $8b, $d8, $ab        ;; 0f:767f ????????
    db   $af, $dc, $8b, $d8, $ab, $af, $dc, $8b        ;; 0f:7687 ????????
    db   $d8, $ab, $af, $dc, $84, $d8, $a4, $af        ;; 0f:768f ????????
    db   $dc, $84, $d8, $a4, $af, $dc, $59, $57        ;; 0f:7697 ????????
    db   $82, $d8, $a2, $af, $dc, $82, $d8, $a2        ;; 0f:769f ????????
    db   $af, $dc, $82, $d8, $86, $82, $81, $dc        ;; 0f:76a7 ????????
    db   $5b, $59, $58, $56, $a8, $af, $a8, $af        ;; 0f:76af ????????
    db   $a8, $af, $a8, $af, $a8, $af, $a8, $af        ;; 0f:76b7 ????????
    db   $a8, $af, $a8, $af, $71, $d8, $71, $dc        ;; 0f:76bf ????????
    db   $88, $41, $8f, $e1, $b5, $75, $d3, $76        ;; 0f:76c7 ????????
    db   $1c, $77, $62, $77                            ;; 0f:76cf ????

data_0f_76d3:
    db   $e7, $7b, $e4, $4f, $7a, $e0, $b0, $7a        ;; 0f:76d3 ........
    db   $e5, $00, $e3, $04                            ;; 0f:76db ....
.data_0f_76df:
    db   $d2, $a3, $a2, $a1, $a0, $a3, $a2, $a1        ;; 0f:76df ........
    db   $a0, $a3, $a2, $a1, $a0, $a3, $a2, $a1        ;; 0f:76e7 ........
    db   $a0, $e2                                      ;; 0f:76ef ..
    dw   .data_0f_76df                                 ;; 0f:76f1 pP
    db   $e7, $82, $e0, $be, $7a, $e5, $40, $d8        ;; 0f:76f3 ........
    db   $c3, $cf, $c3, $cf, $c3, $cf, $2f, $af        ;; 0f:76fb ........
    db   $53, $5f, $53, $8f, $83, $8f, $83, $c3        ;; 0f:7703 ........
    db   $cf, $c3, $cf, $c3, $cf, $2f, $af, $53        ;; 0f:770b ........
    db   $5f, $53, $8f, $83, $8f, $83, $e1             ;; 0f:7713 .......
    dw   data_0f_76d3                                  ;; 0f:771a pP

data_0f_771c:
    db   $e4, $4f, $7a, $e0, $b4, $7a, $e5, $00        ;; 0f:771c ........
    db   $e6, $03, $e3, $08                            ;; 0f:7724 ....
.data_0f_7728:
    db   $e6, $03, $d2, $ab, $aa, $e6, $02, $a9        ;; 0f:7728 ........
    db   $a8, $e6, $03, $ab, $aa, $e6, $01, $a9        ;; 0f:7730 ........
    db   $a8, $e2                                      ;; 0f:7738 ..
    dw   .data_0f_7728                                 ;; 0f:773a pP
    db   $e3, $04                                      ;; 0f:773c ..
.data_0f_773e:
    db   $e0, $ae, $7a, $e5, $40, $e6, $02, $d2        ;; 0f:773e ........
    db   $ab, $aa, $a9, $a8, $e6, $01, $ab, $aa        ;; 0f:7746 ........
    db   $a9, $a8, $e6, $02, $a7, $a8, $a9, $aa        ;; 0f:774e ........
    db   $e6, $01, $a7, $a8, $a9, $aa, $e2             ;; 0f:7756 .......
    dw   .data_0f_773e                                 ;; 0f:775d pP
    db   $e1                                           ;; 0f:775f .
    dw   data_0f_771c                                  ;; 0f:7760 pP

data_0f_7762:
    db   $e4, $4f, $7a                                 ;; 0f:7762 ...
.data_0f_7765:
    db   $e8, $fc, $7a, $e0, $20, $e6, $03, $e3        ;; 0f:7765 ........
    db   $02                                           ;; 0f:776d .
.data_0f_776e:
    db   $d1, $27, $26, $25, $24, $e2                  ;; 0f:776e ......
    dw   .data_0f_776e                                 ;; 0f:7774 pP
    db   $e3, $02                                      ;; 0f:7776 ..
.data_0f_7778:
    db   $e8, $0c, $7b, $d1, $a7, $af, $a7, $af        ;; 0f:7778 ........
    db   $a7, $af, $a7, $af, $a6, $af, $a6, $af        ;; 0f:7780 ........
    db   $a6, $af, $a6, $af, $a5, $af, $a5, $af        ;; 0f:7788 ........
    db   $a5, $af, $a5, $af, $a4, $af, $a4, $af        ;; 0f:7790 ........
    db   $a4, $af, $a4, $af, $e2                       ;; 0f:7798 .....
    dw   .data_0f_7778                                 ;; 0f:779d pP
    db   $e1                                           ;; 0f:779f .
    dw   .data_0f_7765                                 ;; 0f:77a0 pP
    db   $a8, $77, $11, $78, $a3, $78                  ;; 0f:77a2 ??????

data_0f_77a8:
    db   $e7, $3c, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:77a8 ????????
    db   $e5, $80, $d3, $a2, $a4, $a5, $a7, $29        ;; 0f:77b0 ????????
    db   $8e, $d8, $80, $dc, $7b, $a7, $29, $8e        ;; 0f:77b8 ????????
    db   $d8, $80, $dc, $7b, $a7, $49, $a7, $a5        ;; 0f:77c0 ????????
    db   $24, $2e, $82, $84, $85, $82, $24, $8e        ;; 0f:77c8 ????????
    db   $87, $84, $80, $dc, $4a, $d8, $80, $82        ;; 0f:77d0 ????????
    db   $84, $85, $87, $29, $8e, $87, $85, $89        ;; 0f:77d8 ????????
    db   $14, $a2, $a4, $a5, $a7, $29, $8e, $d8        ;; 0f:77e0 ????????
    db   $80, $dc, $7b, $a7, $29, $8e, $d8, $80        ;; 0f:77e8 ????????
    db   $dc, $7b, $a7, $49, $a7, $a5, $24, $2e        ;; 0f:77f0 ????????
    db   $82, $84, $85, $82, $24, $8e, $87, $84        ;; 0f:77f8 ????????
    db   $80, $42, $82, $84, $82, $80, $84, $02        ;; 0f:7800 ????????
    db   $2e, $5f, $a2, $a4, $a5, $a7, $e1, $b7        ;; 0f:7808 ????????
    db   $77                                           ;; 0f:7810 ?

data_0f_7811:
    db   $e4, $4f, $7a, $e0, $b0, $7a, $e5, $00        ;; 0f:7811 ????????
    db   $e6, $03, $5f, $8f, $d2, $85, $84, $85        ;; 0f:7819 ????????
    db   $82, $85, $87, $82, $8f, $85, $84, $85        ;; 0f:7821 ????????
    db   $82, $85, $87, $82, $8f, $82, $80, $82        ;; 0f:7829 ????????
    db   $84, $82, $70, $a4, $8e, $82, $84, $82        ;; 0f:7831 ????????
    db   $85, $87, $59, $8f, $dc, $89, $d8, $80        ;; 0f:7839 ????????
    db   $dc, $89, $d8, $54, $59, $82, $80, $82        ;; 0f:7841 ????????
    db   $84, $85, $87, $89, $8a, $8f, $80, $89        ;; 0f:7849 ????????
    db   $85, $d8, $80, $dc, $8a, $59, $8f, $81        ;; 0f:7851 ????????
    db   $84, $82, $21, $8f, $85, $84, $85, $82        ;; 0f:7859 ????????
    db   $85, $87, $82, $8f, $85, $84, $85, $82        ;; 0f:7861 ????????
    db   $85, $87, $82, $8f, $82, $80, $82, $84        ;; 0f:7869 ????????
    db   $82, $70, $a4, $8e, $82, $84, $82, $85        ;; 0f:7871 ????????
    db   $87, $59, $8f, $dc, $89, $d8, $80, $dc        ;; 0f:7879 ????????
    db   $89, $d8, $54, $59, $8f, $dc, $8a, $d8        ;; 0f:7881 ????????
    db   $80, $dc, $8a, $d8, $50, $dc, $59, $8f        ;; 0f:7889 ????????
    db   $d8, $85, $84, $85, $82, $85, $84, $85        ;; 0f:7891 ????????
    db   $8f, $82, $80, $82, $84, $85, $54, $e1        ;; 0f:7899 ????????
    db   $1c, $78                                      ;; 0f:78a1 ??

data_0f_78a3:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:78a3 ????????
    db   $e6, $03, $5f, $d2, $12, $8e, $dc, $89        ;; 0f:78ab ????????
    db   $d8, $12, $8e, $80, $dc, $1a, $8e, $d8        ;; 0f:78b3 ????????
    db   $85, $dc, $1a, $8e, $d8, $85, $dc, $19        ;; 0f:78bb ????????
    db   $d8, $54, $dc, $27, $d8, $50, $82, $84        ;; 0f:78c3 ????????
    db   $45, $80, $dc, $25, $09, $d8, $12, $8e        ;; 0f:78cb ????????
    db   $dc, $89, $d8, $12, $8e, $80, $dc, $1a        ;; 0f:78d3 ????????
    db   $8e, $d8, $85, $dc, $1a, $8e, $d8, $85        ;; 0f:78db ????????
    db   $dc, $19, $d8, $54, $dc, $27, $29, $d8        ;; 0f:78e3 ????????
    db   $12, $50, $dc, $2a, $d8, $20, $e1, $ae        ;; 0f:78eb ????????
    db   $78, $fa, $78, $24, $79, $48, $79             ;; 0f:78f3 ???????

data_0f_78fa:
    db   $e7, $6f, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:78fa ........
    db   $e5, $40, $e6, $03, $d3, $b0, $bf, $dc        ;; 0f:7902 ........
    db   $ba, $bf, $d8, $b0, $bf, $b2, $bf, $b0        ;; 0f:790a ........
    db   $bf, $b2, $bf, $e7, $6c, $83, $bf, $b3        ;; 0f:7912 ........
    db   $bf, $b5, $bf, $b3, $bf, $b1, $bf, $43        ;; 0f:791a ........
    db   $af, $ff                                      ;; 0f:7922 ??

data_0f_7924:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $00        ;; 0f:7924 ........
    db   $e6, $03, $d2, $b3, $bf, $b2, $bf, $b3        ;; 0f:792c ........
    db   $bf, $b5, $bf, $b3, $bf, $b5, $bf, $86        ;; 0f:7934 ........
    db   $bf, $b6, $bf, $b8, $bf, $b6, $bf, $b5        ;; 0f:793c ........
    db   $bf, $47, $af, $ff                            ;; 0f:7944 ..??

data_0f_7948:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $40        ;; 0f:7948 ........
    db   $e6, $03, $d2, $b8, $bf, $b7, $bf, $b8        ;; 0f:7950 ........
    db   $bf, $ba, $bf, $b8, $bf, $ba, $bf, $5b        ;; 0f:7958 ........
    db   $d8, $51, $43, $af, $ff, $6b, $79, $84        ;; 0f:7960 ...?????
    db   $79, $9a, $79                                 ;; 0f:7968 ???

data_0f_796b:
    db   $e7, $7d, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:796b ????????
    db   $e5, $40, $e6, $03, $d2, $55, $84, $85        ;; 0f:7973 ????????
    db   $56, $5b, $4a, $a9, $a8, $27, $2e, $2f        ;; 0f:797b ????????
    db   $ff                                           ;; 0f:7983 ?

data_0f_7984:
    db   $e4, $4f, $7a, $e0, $82, $7a, $e5, $00        ;; 0f:7984 ????????
    db   $e6, $03, $d2, $52, $81, $82, $23, $44        ;; 0f:798c ????????
    db   $a3, $a2, $21, $2e, $2f, $ff                  ;; 0f:7994 ??????

data_0f_799a:
    db   $e4, $4f, $7a, $e8, $ec, $7a, $e0, $40        ;; 0f:799a ????????
    db   $e6, $03, $d1, $2b, $d8, $20, $41, $a0        ;; 0f:79a2 ????????
    db   $dc, $ab, $2a, $2e, $2f, $ff, $b6, $79        ;; 0f:79aa ????????
    db   $ea, $79, $1d, $7a                            ;; 0f:79b2 ????

data_0f_79b6:
    db   $e7, $4b, $e4, $4f, $7a, $e0, $82, $7a        ;; 0f:79b6 ????????
    db   $e5, $80, $e6, $01, $d3, $9b, $93, $97        ;; 0f:79be ????????
    db   $9b, $93, $97, $d8, $90, $dc, $94, $98        ;; 0f:79c6 ????????
    db   $d8, $90, $dc, $94, $98, $d8, $91, $dc        ;; 0f:79ce ????????
    db   $95, $99, $d8, $91, $dc, $95, $99, $d8        ;; 0f:79d6 ????????
    db   $90, $dc, $94, $98, $d8, $90, $dc, $94        ;; 0f:79de ????????
    db   $98, $e1, $c2, $79                            ;; 0f:79e6 ????

data_0f_79ea:
    db   $e4, $4f, $7a, $e0, $c0, $7a, $e5, $80        ;; 0f:79ea ????????
    db   $e6, $02, $bf, $d3, $9b, $93, $97, $9b        ;; 0f:79f2 ????????
    db   $93, $97, $d8, $90, $dc, $94, $98, $d8        ;; 0f:79fa ????????
    db   $90, $dc, $94, $98, $d8, $91, $dc, $95        ;; 0f:7a02 ????????
    db   $99, $d8, $91, $dc, $95, $99, $d8, $90        ;; 0f:7a0a ????????
    db   $dc, $94, $98, $d8, $90, $dc, $94, $98        ;; 0f:7a12 ????????
    db   $e1, $f5, $79                                 ;; 0f:7a1a ???

data_0f_7a1d:
    db   $e4, $4f, $7a, $e8, $dc, $7a, $e0, $60        ;; 0f:7a1d ????????
    db   $e6, $03, $d4, $9b, $93, $97, $9b, $93        ;; 0f:7a25 ????????
    db   $97, $d8, $90, $dc, $94, $98, $d8, $90        ;; 0f:7a2d ????????
    db   $dc, $94, $98, $d8, $91, $dc, $95, $99        ;; 0f:7a35 ????????
    db   $d8, $91, $dc, $95, $99, $d8, $90, $dc        ;; 0f:7a3d ????????
    db   $94, $98, $d8, $90, $dc, $94, $98, $e1        ;; 0f:7a45 ????????
    db   $27, $7a, $0a, $00, $01, $01, $01, $02        ;; 0f:7a4d ??......
    db   $01, $01, $01, $00, $00, $51, $7a, $02        ;; 0f:7a55 .......?
    db   $00, $02, $0a, $00, $5c, $7a, $04, $00        ;; 0f:7a5d ??????..
    db   $01, $02, $01, $ff, $00, $65, $7a, $05        ;; 0f:7a65 .......?
    db   $00, $02, $01, $02, $00, $00, $6e, $7a        ;; 0f:7a6d ????????
    db   $0a, $00, $01, $02, $01, $04, $01, $02        ;; 0f:7a75 ........
    db   $01, $00, $00, $77, $7a, $0a, $8c, $63        ;; 0f:7a7d ........
    db   $f7, $ff, $0a, $6c, $63, $35, $ff, $63        ;; 0f:7a85 .???????
    db   $c2, $63, $10, $63, $b2, $63, $10, $63        ;; 0f:7a8d ????????
    db   $a2, $63, $10, $05, $92, $63, $10, $05        ;; 0f:7a95 ????????
    db   $82, $63, $10, $63, $72, $63, $10, $63        ;; 0f:7a9d ????????
    db   $62, $63, $10, $63, $c4, $63, $b4, $63        ;; 0f:7aa5 ???..???
    db   $a4, $63, $94, $63, $84, $63, $74, $63        ;; 0f:7aad ?.......
    db   $64, $63, $54, $63, $44, $63, $34, $63        ;; 0f:7ab5 .???????
    db   $24, $63, $c7, $63, $b7, $63, $a7, $63        ;; 0f:7abd ?......?
    db   $97, $63, $87, $63, $77, $63, $67, $ff        ;; 0f:7ac5 ???..??.
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00        ;; 0f:7acd ........
    db   $00, $00, $00, $00, $00, $00, $00, $ff        ;; 0f:7ad5 ........
    db   $ff, $ff, $ff, $00, $00, $00, $00, $00        ;; 0f:7add ........
    db   $00, $00, $00, $00, $00, $00, $00, $ff        ;; 0f:7ae5 ........
    db   $ff, $00, $00, $00, $00, $00, $00, $00        ;; 0f:7aed ........
    db   $00, $00, $00, $00, $00, $00, $00, $bb        ;; 0f:7af5 ........
    db   $bb, $bb, $bb, $bb, $bb, $bb, $bb, $00        ;; 0f:7afd ........
    db   $00, $00, $00, $00, $00, $00, $00, $bb        ;; 0f:7b05 ........
    db   $bb, $bb, $bb, $00, $00, $00, $00, $00        ;; 0f:7b0d ........
    db   $00, $00, $00, $00, $00, $00, $00, $bb        ;; 0f:7b15 .......?
    db   $bb, $00, $00, $00, $00, $00, $00, $00        ;; 0f:7b1d ????????
    db   $00, $00, $00, $00, $00, $00, $00, $ff        ;; 0f:7b25 ????????
    db   $cc, $99, $66, $99, $cc, $ff, $00, $00        ;; 0f:7b2d ????????
    db   $00, $00, $00, $00, $00, $00, $00             ;; 0f:7b35 ???????

;@data format=p amount=37
soundEffectDataChannel1:
    dw   data_0f_7bd1                                  ;; 0f:7b3c .. $00
    dw   data_0f_7be5                                  ;; 0f:7b3e .. $01
    dw   soundEffectChannelUnused                      ;; 0f:7b40 ?? $02
    dw   soundEffectChannelUnused                      ;; 0f:7b42 ?? $03
    dw   data_0f_7c10                                  ;; 0f:7b44 .. $04
    dw   data_0f_7c1d                                  ;; 0f:7b46 ?? $05
    dw   data_0f_7c4c                                  ;; 0f:7b48 ?? $06
    dw   data_0f_7c53                                  ;; 0f:7b4a ?? $07
    dw   data_0f_7c68                                  ;; 0f:7b4c ?? $08
    dw   data_0f_7c93                                  ;; 0f:7b4e ?? $09
    dw   data_0f_7cb4                                  ;; 0f:7b50 .. $0a
    dw   data_0f_7cd1                                  ;; 0f:7b52 .. $0b
    dw   soundEffectChannelUnused                      ;; 0f:7b54 .. $0c
    dw   data_0f_7ce2                                  ;; 0f:7b56 .. $0d
    dw   data_0f_7cf3                                  ;; 0f:7b58 .. $0e
    dw   soundEffectChannelUnused                      ;; 0f:7b5a .. $0f
    dw   soundEffectChannelUnused                      ;; 0f:7b5c .. $10
    dw   data_0f_7d21                                  ;; 0f:7b5e .. $11
    dw   data_0f_7d2e                                  ;; 0f:7b60 ?? $12
    dw   soundEffectChannelUnused                      ;; 0f:7b62 .. $13
    dw   data_0f_7d3f                                  ;; 0f:7b64 .. $14
    dw   data_0f_7d4c                                  ;; 0f:7b66 ?? $15
    dw   soundEffectChannelUnused                      ;; 0f:7b68 ?? $16
    dw   data_0f_7d9e                                  ;; 0f:7b6a ?? $17
    dw   soundEffectChannelUnused                      ;; 0f:7b6c ?? $18
    dw   soundEffectChannelUnused                      ;; 0f:7b6e ?? $19
    dw   data_0f_7dbf                                  ;; 0f:7b70 ?? $1a
    dw   data_0f_7de1                                  ;; 0f:7b72 ?? $1b
    dw   data_0f_7df5                                  ;; 0f:7b74 ?? $1c
    dw   data_0f_7e15                                  ;; 0f:7b76 ?? $1d
    dw   data_0f_7e2f                                  ;; 0f:7b78 ?? $1e
    dw   data_0f_7e52                                  ;; 0f:7b7a .. $1f
    dw   data_0f_7e66                                  ;; 0f:7b7c ?? $20
    dw   data_0f_7e97                                  ;; 0f:7b7e ?? $21
    dw   data_0f_7ea2                                  ;; 0f:7b80 .. $22
    dw   data_0f_7ea9                                  ;; 0f:7b82 .. $23
    dw   soundEffectChannelUnused                      ;; 0f:7b84 ?? $24

;@data format=p amount=37
soundEffectDataChannel4:
    dw   data_0f_7bde                                  ;; 0f:7b86 .. $00
    dw   data_0f_7bf2                                  ;; 0f:7b88 .. $01
    dw   data_0f_7bf9                                  ;; 0f:7b8a ?? $02
    dw   data_0f_7bfd                                  ;; 0f:7b8c ?? $03
    dw   soundEffectChannelUnused                      ;; 0f:7b8e .. $04
    dw   data_0f_7c3c                                  ;; 0f:7b90 ?? $05
    dw   soundEffectChannelUnused                      ;; 0f:7b92 ?? $06
    dw   data_0f_7c64                                  ;; 0f:7b94 ?? $07
    dw   soundEffectChannelUnused                      ;; 0f:7b96 ?? $08
    dw   data_0f_7cac                                  ;; 0f:7b98 ?? $09
    dw   data_0f_7cc7                                  ;; 0f:7b9a .. $0a
    dw   soundEffectChannelUnused                      ;; 0f:7b9c .. $0b
    dw   data_0f_7cd8                                  ;; 0f:7b9e .. $0c
    dw   soundEffectChannelUnused                      ;; 0f:7ba0 .. $0d
    dw   soundEffectChannelUnused                      ;; 0f:7ba2 .. $0e
    dw   data_0f_7d00                                  ;; 0f:7ba4 .. $0f
    dw   data_0f_7d04                                  ;; 0f:7ba6 .. $10
    dw   soundEffectChannelUnused                      ;; 0f:7ba8 .. $11
    dw   soundEffectChannelUnused                      ;; 0f:7baa ?? $12
    dw   data_0f_7d35                                  ;; 0f:7bac .. $13
    dw   soundEffectChannelUnused                      ;; 0f:7bae .. $14
    dw   data_0f_7d7d                                  ;; 0f:7bb0 ?? $15
    dw   data_0f_7d8d                                  ;; 0f:7bb2 ?? $16
    dw   soundEffectChannelUnused                      ;; 0f:7bb4 ?? $17
    dw   data_0f_7dab                                  ;; 0f:7bb6 ?? $18
    dw   data_0f_7db5                                  ;; 0f:7bb8 ?? $19
    dw   data_0f_7dd0                                  ;; 0f:7bba ?? $1a
    dw   data_0f_7dee                                  ;; 0f:7bbc ?? $1b
    dw   data_0f_7e02                                  ;; 0f:7bbe ?? $1c
    dw   data_0f_7e22                                  ;; 0f:7bc0 ?? $1d
    dw   data_0f_7e42                                  ;; 0f:7bc2 ?? $1e
    dw   data_0f_7e5f                                  ;; 0f:7bc4 .. $1f
    dw   soundEffectChannelUnused                      ;; 0f:7bc6 ?? $20
    dw   data_0f_7e9e                                  ;; 0f:7bc8 ?? $21
    dw   soundEffectChannelUnused                      ;; 0f:7bca .. $22
    dw   soundEffectChannelUnused                      ;; 0f:7bcc .. $23
    dw   data_0f_7eb0                                  ;; 0f:7bce ?? $24

soundEffectChannelUnused:
    db   $00                                           ;; 0f:7bd0 .

data_0f_7bd1:
    db   $08, $23, $40, $f1, $5a, $84, $07, $25        ;; 0f:7bd1 ........
    db   $80, $51, $ff, $85, $00                       ;; 0f:7bd9 .....

data_0f_7bde:
    db   $05, $8a, $4e, $07, $7a, $24, $00             ;; 0f:7bde .......

data_0f_7be5:
    db   $05, $23, $40, $f1, $5a, $84, $02, $23        ;; 0f:7be5 ........
    db   $00, $21, $ff, $85, $00                       ;; 0f:7bed .....

data_0f_7bf2:
    db   $02, $8a, $2f, $04, $7a, $32, $00             ;; 0f:7bf2 .......

data_0f_7bf9:
    db   $2a, $f8, $56, $00                            ;; 0f:7bf9 ????

data_0f_7bfd:
    db   $05, $f4, $62, $03, $c7, $32, $07, $f3        ;; 0f:7bfd ????????
    db   $37, $05, $f4, $71, $05, $d7, $30, $2b        ;; 0f:7c05 ????????
    db   $f3, $37, $00                                 ;; 0f:7c0d ???

data_0f_7c10:
    db   $31, $47, $80, $f5, $a0, $86, $15, $00        ;; 0f:7c10 ........
    db   $40, $d2, $d9, $87, $00                       ;; 0f:7c18 .....

data_0f_7c1d:
    db   $03, $00, $80, $72, $7a, $87, $03, $00        ;; 0f:7c1d ????????
    db   $80, $92, $8a, $87, $03, $00, $80, $b2        ;; 0f:7c25 ????????
    db   $9a, $87, $03, $00, $80, $d2, $b0, $87        ;; 0f:7c2d ????????
    db   $08, $00, $80, $f2, $cc, $87, $00             ;; 0f:7c35 ???????

data_0f_7c3c:
    db   $03, $92, $08, $03, $a2, $08, $03, $b2        ;; 0f:7c3c ????????
    db   $08, $03, $c2, $08, $07, $d2, $08, $00        ;; 0f:7c44 ????????

data_0f_7c4c:
    db   $05, $35, $00, $f7, $a0, $86, $00             ;; 0f:7c4c ???????

data_0f_7c53:
    db   $f2, $0a, $26, $00, $f0, $40, $86, $0a        ;; 0f:7c53 ????????
    db   $26, $00, $f0, $60, $86, $ef, $54, $7c        ;; 0f:7c5b ????????
    db   $00                                           ;; 0f:7c63 ?

data_0f_7c64:
    db   $28, $7f, $46, $00                            ;; 0f:7c64 ????

data_0f_7c68:
    db   $08, $7f, $40, $f0, $d0, $87, $08, $7f        ;; 0f:7c68 ????????
    db   $40, $f1, $ca, $87, $08, $7f, $40, $f1        ;; 0f:7c70 ????????
    db   $c0, $87, $08, $7f, $40, $f2, $ba, $87        ;; 0f:7c78 ????????
    db   $08, $7f, $40, $f2, $b0, $87, $08, $7f        ;; 0f:7c80 ????????
    db   $40, $d3, $a5, $87, $0a, $7f, $40, $c3        ;; 0f:7c88 ????????
    db   $9a, $87, $00                                 ;; 0f:7c90 ???

data_0f_7c93:
    db   $04, $00, $40, $b3, $c7, $87, $04, $00        ;; 0f:7c93 ????????
    db   $40, $b3, $cd, $87, $04, $00, $40, $b3        ;; 0f:7c9b ????????
    db   $d3, $87, $15, $00, $40, $d2, $db, $87        ;; 0f:7ca3 ????????
    db   $00                                           ;; 0f:7cab ?

data_0f_7cac:
    db   $f3, $04, $a2, $08, $ef, $ad, $7c, $00        ;; 0f:7cac ????????

data_0f_7cb4:
    db   $05, $57, $40, $f0, $5a, $85, $01, $00        ;; 0f:7cb4 ........
    db   $00, $00, $00, $80, $15, $1e, $80, $f3        ;; 0f:7cbc ........
    db   $ff, $87, $00                                 ;; 0f:7cc4 ...

data_0f_7cc7:
    db   $05, $f0, $6b, $01, $00, $00, $15, $d2        ;; 0f:7cc7 ........
    db   $36, $00                                      ;; 0f:7ccf ..

data_0f_7cd1:
    db   $40, $3f, $80, $f5, $6a, $87, $00             ;; 0f:7cd1 .......

data_0f_7cd8:
    db   $03, $af, $5c, $02, $23, $32, $04, $f7        ;; 0f:7cd8 ........
    db   $6b, $00                                      ;; 0f:7ce0 ..

data_0f_7ce2:
    db   $f6, $01, $00, $40, $f0, $00, $86, $01        ;; 0f:7ce2 ........
    db   $00, $80, $f0, $00, $87, $ef, $e3, $7c        ;; 0f:7cea ........
    db   $00                                           ;; 0f:7cf2 .

data_0f_7cf3:
    db   $02, $67, $80, $a3, $0e, $87, $03, $44        ;; 0f:7cf3 ........
    db   $80, $f0, $0e, $87, $00                       ;; 0f:7cfb .....

data_0f_7d00:
    db   $20, $f2, $62, $00                            ;; 0f:7d00 ....

data_0f_7d04:
    db   $f4, $02, $ca, $6a, $06, $fc, $7c, $02        ;; 0f:7d04 ........
    db   $f9, $d7, $03, $ca, $6a, $07, $fc, $7b        ;; 0f:7d0c ........
    db   $02, $f9, $d7, $ef, $05, $7d, $07, $f1        ;; 0f:7d14 ...?????
    db   $47, $2a, $f3, $37, $00                       ;; 0f:7d1c ?????

data_0f_7d21:
    db   $06, $00, $40, $a1, $90, $87, $10, $00        ;; 0f:7d21 ........
    db   $80, $f1, $4c, $87, $00                       ;; 0f:7d29 .....

data_0f_7d2e:
    db   $40, $75, $80, $0c, $ff, $84, $00             ;; 0f:7d2e ???????

data_0f_7d35:
    db   $03, $e1, $6c, $01, $32, $11, $20, $f2        ;; 0f:7d35 ........
    db   $34, $00                                      ;; 0f:7d3d ..

data_0f_7d3f:
    db   $03, $00, $40, $f2, $7a, $87, $0a, $00        ;; 0f:7d3f ........
    db   $40, $a1, $ef, $86, $00                       ;; 0f:7d47 .....

data_0f_7d4c:
    db   $09, $06, $80, $e1, $b0, $87, $09, $06        ;; 0f:7d4c ????????
    db   $80, $e1, $d0, $87, $09, $06, $80, $e1        ;; 0f:7d54 ????????
    db   $a4, $87, $09, $06, $80, $e1, $c1, $87        ;; 0f:7d5c ????????
    db   $12, $06, $80, $e1, $8d, $87, $09, $06        ;; 0f:7d64 ????????
    db   $80, $e1, $b0, $87, $09, $06, $80, $e1        ;; 0f:7d6c ????????
    db   $d0, $87, $12, $06, $80, $e1, $8d, $87        ;; 0f:7d74 ????????
    db   $00                                           ;; 0f:7d7c ?

data_0f_7d7d:
    db   $12, $f2, $43, $12, $e2, $52, $12, $b2        ;; 0f:7d7d ????????
    db   $52, $12, $f2, $43, $10, $b2, $52, $00        ;; 0f:7d85 ????????

data_0f_7d8d:
    db   $f4, $03, $f8, $33, $02, $00, $00, $03        ;; 0f:7d8d ????????
    db   $78, $43, $02, $00, $00, $ef, $8d, $7d        ;; 0f:7d95 ????????
    db   $00                                           ;; 0f:7d9d ?

data_0f_7d9e:
    db   $04, $08, $80, $f1, $6a, $87, $10, $08        ;; 0f:7d9e ????????
    db   $80, $f1, $90, $87, $00                       ;; 0f:7da6 ?????

data_0f_7dab:
    db   $03, $fa, $6a, $08, $ac, $7c, $1c, $f2        ;; 0f:7dab ????????
    db   $35, $00                                      ;; 0f:7db3 ??

data_0f_7db5:
    db   $07, $d2, $56, $02, $a7, $67, $30, $f3        ;; 0f:7db5 ????????
    db   $45, $00                                      ;; 0f:7dbd ??

data_0f_7dbf:
    db   $f4, $0a, $45, $40, $d1, $90, $86, $03        ;; 0f:7dbf ????????
    db   $00, $00, $00, $00, $80, $ef, $bf, $7d        ;; 0f:7dc7 ????????
    db   $00                                           ;; 0f:7dcf ?

data_0f_7dd0:
    db   $f4, $04, $e2, $35, $04, $f1, $42, $03        ;; 0f:7dd0 ????????
    db   $a1, $33, $02, $00, $00, $ef, $d0, $7d        ;; 0f:7dd8 ????????
    db   $00                                           ;; 0f:7de0 ?

data_0f_7de1:
    db   $05, $23, $80, $f1, $5a, $84, $03, $23        ;; 0f:7de1 ????????
    db   $00, $f1, $9a, $86, $00                       ;; 0f:7de9 ?????

data_0f_7dee:
    db   $04, $da, $5f, $04, $ca, $32, $00             ;; 0f:7dee ???????

data_0f_7df5:
    db   $0c, $24, $00, $c2, $40, $84, $04, $2c        ;; 0f:7df5 ????????
    db   $40, $a2, $ff, $87, $00                       ;; 0f:7dfd ?????

data_0f_7e02:
    db   $02, $52, $52, $03, $82, $52, $03, $b2        ;; 0f:7e02 ????????
    db   $42, $04, $f2, $42, $02, $92, $42, $01        ;; 0f:7e0a ????????
    db   $c2, $23, $00                                 ;; 0f:7e12 ???

data_0f_7e15:
    db   $0d, $53, $40, $a3, $90, $84, $03, $00        ;; 0f:7e15 ????????
    db   $00, $00, $00, $80, $00                       ;; 0f:7e1d ?????

data_0f_7e22:
    db   $06, $72, $35, $04, $f1, $44, $04, $d1        ;; 0f:7e22 ????????
    db   $37, $02, $91, $06, $00                       ;; 0f:7e2a ?????

data_0f_7e2f:
    db   $0f, $33, $40, $fb, $00, $82, $06, $00        ;; 0f:7e2f ????????
    db   $00, $00, $00, $80, $1a, $00, $80, $a2        ;; 0f:7e37 ????????
    db   $da, $87, $00                                 ;; 0f:7e3f ???

data_0f_7e42:
    db   $0f, $97, $36, $04, $00, $00, $03, $c2        ;; 0f:7e42 ????????
    db   $33, $02, $52, $77, $06, $f1, $37, $00        ;; 0f:7e4a ????????

data_0f_7e52:
    db   $08, $00, $80, $42, $aa, $87, $1e, $00        ;; 0f:7e52 ........
    db   $80, $a2, $ba, $87, $00                       ;; 0f:7e5a .....

data_0f_7e5f:
    db   $08, $f1, $6c, $1e, $f2, $4b, $00             ;; 0f:7e5f .......

data_0f_7e66:
    db   $05, $2f, $00, $f8, $0f, $87, $05, $2f        ;; 0f:7e66 ????????
    db   $00, $f8, $3f, $87, $05, $2f, $40, $f8        ;; 0f:7e6e ????????
    db   $6f, $87, $05, $2f, $40, $f8, $8f, $87        ;; 0f:7e76 ????????
    db   $05, $2f, $80, $f8, $af, $87, $05, $2f        ;; 0f:7e7e ????????
    db   $80, $f8, $cf, $87, $05, $2f, $80, $f8        ;; 0f:7e86 ????????
    db   $df, $87, $05, $2f, $80, $f8, $ff, $87        ;; 0f:7e8e ????????
    db   $00                                           ;; 0f:7e96 ?

data_0f_7e97:
    db   $00, $00, $00, $00, $00, $80, $00             ;; 0f:7e97 ???????

data_0f_7e9e:
    db   $00, $00, $00, $00                            ;; 0f:7e9e ????

data_0f_7ea2:
    db   $16, $27, $40, $f0, $4a, $86, $00             ;; 0f:7ea2 .......

data_0f_7ea9:
    db   $16, $2f, $40, $f8, $4a, $87, $00             ;; 0f:7ea9 .......

data_0f_7eb0:
    db   $3a, $f0, $8a                                 ;; 0f:7eb0 ???
