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
    ldh  A, [hMusicSpecialSongRequest]                 ;; 0f:400a $f0 $91
    or   A, A                                          ;; 0f:400c $b7
    jr   Z, .noSpecialMusic                            ;; 0f:400d $28 $0f
    ldh  A, [hMusicSpecialSongPlaying]                 ;; 0f:400f $f0 $99
    or   A, A                                          ;; 0f:4011 $b7
    jr   Z, .specialMusicStart                         ;; 0f:4012 $28 $05
    call musicSpecialSongCheckFinished                 ;; 0f:4014 $cd $10 $41
    jr   .audioPlayStep                                ;; 0f:4017 $18 $24
.specialMusicStart:
    call musicSpecialSongStart                         ;; 0f:4019 $cd $ee $40
    jr   runSoundEngineReal.audioPlayStep              ;; 0f:401c $18 $1f
.noSpecialMusic:
    ldh  A, [hMusicSpecialSongPlaying]                 ;; 0f:401e $f0 $99
    or   A, A                                          ;; 0f:4020 $b7
    jr   Z, runSoundEngineReal.startMusic              ;; 0f:4021 $28 $05
    call musicSpecialSongResumeSavedSong               ;; 0f:4023 $cd $20 $41
    jr   runSoundEngineReal.audioPlayStep              ;; 0f:4026 $18 $15
.startMusic:
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4028 $fa $1a $c1
    or   A, A                                          ;; 0f:402b $b7
    jr   NZ, runSoundEngineReal.startSoundEffect       ;; 0f:402c $20 $09
    ldh  A, [hPlayingMusic]                            ;; 0f:402e $f0 $93
    ld   B, A                                          ;; 0f:4030 $47
    ldh  A, [hCurrentMusic]                            ;; 0f:4031 $f0 $90
    cp   A, B                                          ;; 0f:4033 $b8
    call NZ, musicSongInit                             ;; 0f:4034 $c4 $9e $40
.startSoundEffect:
    ldh  A, [hSFX]                                     ;; 0f:4037 $f0 $92
    or   A, A                                          ;; 0f:4039 $b7
    call NZ, soundEffectPlay                           ;; 0f:403a $c4 $3c $49
.audioPlayStep:
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
    ld   [wSoundEffectDurationChannel1], A             ;; 0f:406b $ea $1a $c1
    ld   A, $77                                        ;; 0f:406e $3e $77
    ldh  [rNR50], A                                    ;; 0f:4070 $e0 $24
    ld   A, $ff                                        ;; 0f:4072 $3e $ff
    ldh  [rNR51], A                                    ;; 0f:4074 $e0 $25
    ld   HL, hCurrentMusic                             ;; 0f:4076 $21 $90 $ff
    ld   C, $10                                        ;; 0f:4079 $0e $10
    xor  A, A                                          ;; 0f:407b $af
.loop:
    ld   [HL+], A                                      ;; 0f:407c $22
    dec  C                                             ;; 0f:407d $0d
    jr   NZ, initSoundEngineReal.loop                  ;; 0f:407e $20 $fc
    ld   [wMusicBrokenDoubleTimeMode], A               ;; 0f:4080 $ea $c8 $c1
    ret                                                ;; 0f:4083 $c9

musicInitChannels:
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:4084 $21 $00 $c1
    ld   A, $ff                                        ;; 0f:4087 $3e $ff
    ld   [HL+], A                                      ;; 0f:4089 $22
    ld   A, $3c                                        ;; 0f:408a $3e $3c
    ld   [HL+], A                                      ;; 0f:408c $22
    ld   B, $03                                        ;; 0f:408d $06 $03
.loop_outer:
    ld   DE, musicChannelInitData                      ;; 0f:408f $11 $7a $41
    ld   C, $18                                        ;; 0f:4092 $0e $18
.loop_inner:
    ld   A, [DE]                                       ;; 0f:4094 $1a
    ld   [HL+], A                                      ;; 0f:4095 $22
    inc  E                                             ;; 0f:4096 $1c
    dec  C                                             ;; 0f:4097 $0d
    jr   NZ, musicInitChannels.loop_inner              ;; 0f:4098 $20 $fa
    dec  B                                             ;; 0f:409a $05
    jr   NZ, musicInitChannels.loop_outer              ;; 0f:409b $20 $f2
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

; Unused. Saves state of the current song, and starts a different one...
; Or at least that is what it is supposed to do.
musicSpecialSongStart:
    call muteSoundEngine                               ;; 0f:40ee $cd $d1 $40
    xor  A, A                                          ;; 0f:40f1 $af
    ld   [wSoundEffectDurationChannel1], A             ;; 0f:40f2 $ea $1a $c1
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:40f5 $ea $4a $c1
    ld   C, $62                                        ;; 0f:40f8 $0e $62
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:40fa $21 $00 $c1
    ld   DE, wMusicDataBackup                          ;; 0f:40fd $11 $62 $c1
.loop:
    ld   A, [HL+]                                      ;; 0f:4100 $2a
    ld   [DE], A                                       ;; 0f:4101 $12
    inc  E                                             ;; 0f:4102 $1c
    dec  C                                             ;; 0f:4103 $0d
    jr   NZ, musicSpecialSongStart.loop                ;; 0f:4104 $20 $fa
    ldh  A, [hMusicSpecialSongRequest]                 ;; 0f:4106 $f0 $91
    call musicSongPlay                                 ;; 0f:4108 $cd $a7 $40
    ld   A, $01                                        ;; 0f:410b $3e $01
    ldh  [hMusicSpecialSongPlaying], A                 ;; 0f:410d $e0 $99
    ret                                                ;; 0f:410f $c9

; Unused. Called each frame if a temporary has been playing to see if it is finished.
musicSpecialSongCheckFinished:
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:4110 $fa $13 $c1
    ld   E, A                                          ;; 0f:4113 $5f
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:4114 $fa $2b $c1
    ld   D, A                                          ;; 0f:4117 $57
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:4118 $fa $43 $c1
    and  A, D                                          ;; 0f:411b $a2
    and  A, E                                          ;; 0f:411c $a3
    cp   A, $ff                                        ;; 0f:411d $fe $ff
    ret  NZ                                            ;; 0f:411f $c0

; Unused. Called when the temporary song has either naturally finished, or has been set to zero.
; It attempts to restore the saved song state from backup, but seems like it has bugs?
musicSpecialSongResumeSavedSong:
    call muteSoundEngine                               ;; 0f:4120 $cd $d1 $40
    ld   C, $62                                        ;; 0f:4123 $0e $62
    ld   HL, wMusicTempoTimeCounter                    ;; 0f:4125 $21 $00 $c1
    ld   DE, wMusicDataBackup                          ;; 0f:4128 $11 $62 $c1
.loop:
    ld   A, [DE]                                       ;; 0f:412b $1a
    ld   [HL+], A                                      ;; 0f:412c $22
    inc  E                                             ;; 0f:412d $1c
    dec  C                                             ;; 0f:412e $0d
    jr   NZ, musicSpecialSongResumeSavedSong.loop      ;; 0f:412f $20 $fa
    xor  A, A                                          ;; 0f:4131 $af
    ldh  [hMusicSpecialSongRequest], A                 ;; 0f:4132 $e0 $91
    ldh  [hMusicSpecialSongPlaying], A                 ;; 0f:4134 $e0 $99
    ld   A, [wMusicNR21DutyCycleChannel2]              ;; 0f:4136 $fa $0c $c1
    ldh  [rNR21], A                                    ;; 0f:4139 $e0 $16
    ld   A, [wMusicNR22DefaultVolumeChannel2]          ;; 0f:413b $fa $10 $c1
    ldh  [rNR22], A                                    ;; 0f:413e $e0 $17
    ld   A, $87                                        ;; 0f:4140 $3e $87
    ldh  [rNR24], A                                    ;; 0f:4142 $e0 $19
; NR24 is set without setting NR23. This looks like it leaves channel 2 playing a random note?
    ldh  A, [hWaveTablePointer]                        ;; 0f:4144 $f0 $9a
    ld   L, A                                          ;; 0f:4146 $6f
    ldh  A, [hWaveTablePointer.high]                   ;; 0f:4147 $f0 $9b
    ld   H, A                                          ;; 0f:4149 $67
    call musicLoadWaveTable                            ;; 0f:414a $cd $ad $47

soundEffectRestoreChannel1:
    xor  A, A                                          ;; 0f:414d $af
    ldh  [rNR10], A                                    ;; 0f:414e $e0 $10
    ld   A, [wMusicNR11DutyCycleChannel1]              ;; 0f:4150 $fa $24 $c1
    ldh  [rNR11], A                                    ;; 0f:4153 $e0 $11
    ld   A, [wMusicNR12DefaultVolumeChannel1]          ;; 0f:4155 $fa $28 $c1
    ldh  [rNR12], A                                    ;; 0f:4158 $e0 $12
    ld   A, [wSoundsMusicRestorePitchChannel1]         ;; 0f:415a $fa $c9 $c1
    ldh  [rNR13], A                                    ;; 0f:415d $e0 $13
    ld   A, [wSoundsMusicRestorePitchChannel1.high]    ;; 0f:415f $fa $ca $c1
    ldh  [rNR14], A                                    ;; 0f:4162 $e0 $14
    ld   A, [wMusicStereoPanChannel1]                  ;; 0f:4164 $fa $2a $c1
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

; These are divided into seven octaves with 12 notes each, plus a c above that for a total of 86 "keys"
;@data format=wwwwwwwwwwww amount=7
musicNoteFrequencies:
    dw   $802c, $809d, $8107, $816b, $81c9, $8223, $8277, $82c7, $8312, $8358, $839b, $83da ;; 0f:41a0 ??????????????????????.. $00
    dw   $8416, $844e, $8483, $84b5, $84e5, $8511, $853b, $8563, $8589, $85ac, $85ce, $85ed ;; 0f:41b8 ....????................ $01
    dw   $860b, $8627, $8642, $865b, $8672, $8689, $869e, $86b2, $86c4, $86d6, $86e7, $86f7 ;; 0f:41d0 ........................ $02
    dw   $8706, $8714, $8721, $872d, $8739, $8744, $874f, $8759, $8762, $876b, $8773, $877b ;; 0f:41e8 ........................ $03
    dw   $8783, $878a, $8790, $8797, $879d, $87a2, $87a7, $87ac, $87b1, $87b6, $87ba, $87be ;; 0f:4200 ..?????????????????????? $04
    dw   $87c1, $87c5, $87c8, $87cb, $87ce, $87d1, $87d4, $87d6, $87d9, $87db, $87dd, $87df ;; 0f:4218 ???????????????????????? $05
    dw   $87e1, $87e2, $87e4, $87e6, $87e7, $87e9, $87ea, $87eb, $87ec, $87ed, $87ee, $87ef ;; 0f:4230 ???????????????????????? $06
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
    jr   NC, .vibratoAndVolume                         ;; 0f:4262 $30 $0a
    call musicTempoPlayNotes                           ;; 0f:4264 $cd $8b $42
    ld   A, [wMusicBrokenDoubleTimeMode]               ;; 0f:4267 $fa $c8 $c1
    or   A, A                                          ;; 0f:426a $b7
; This was almost certainly supposed to be a call nz to conditionally have a doubletime mode
    call musicTempoPlayNotes                           ;; 0f:426b $cd $8b $42
.vibratoAndVolume:
    ldh  A, [hVibratoVolumeChannelSelection]           ;; 0f:426e $f0 $94
    inc  A                                             ;; 0f:4270 $3c
    cp   A, $03                                        ;; 0f:4271 $fe $03
    jr   NZ, musicPlayStep.vibratoAndVolumeSingleChannel ;; 0f:4273 $20 $01
    xor  A, A                                          ;; 0f:4275 $af
; Envelopes are checked on one of the three channels each time
.vibratoAndVolumeSingleChannel:
    ldh  [hVibratoVolumeChannelSelection], A           ;; 0f:4276 $e0 $94
    or   A, A                                          ;; 0f:4278 $b7
    call Z, musicVibratoAndVolumeChannel2              ;; 0f:4279 $cc $ef $47
    ldh  A, [hVibratoVolumeChannelSelection]           ;; 0f:427c $f0 $94
    cp   A, $01                                        ;; 0f:427e $fe $01
    call Z, musicVibratoAndVolumeChannel1              ;; 0f:4280 $cc $69 $48
    ldh  A, [hVibratoVolumeChannelSelection]           ;; 0f:4283 $f0 $94
    cp   A, $02                                        ;; 0f:4285 $fe $02
    call Z, musicVibratoAndVolumeChannel3              ;; 0f:4287 $cc $e3 $48
    ret                                                ;; 0f:428a $c9

; Updates the note duration counters on each of the three channels and if zero plays the next note.
musicTempoPlayNotes:
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:428b $fa $13 $c1
    cp   A, $ff                                        ;; 0f:428e $fe $ff
    jp   Z, musicTempoPlayNotes_Channel1               ;; 0f:4290 $ca $e2 $44
    ld   A, [wMusicNoteDurationChannel2]               ;; 0f:4293 $fa $03 $c1
    dec  A                                             ;; 0f:4296 $3d
    ld   [wMusicNoteDurationChannel2], A               ;; 0f:4297 $ea $03 $c1
    ldh  [hMusicNoteDurationChannel2Copy], A           ;; 0f:429a $e0 $95
    jp   NZ, musicTempoPlayNotes_Channel1              ;; 0f:429c $c2 $e2 $44
.nextMusicInstruction:
    call getNextMusicInstructionChannel2               ;; 0f:429f $cd $d9 $47
    ld   E, A                                          ;; 0f:42a2 $5f
    cp   A, $d0                                        ;; 0f:42a3 $fe $d0
    jr   NC, musicTempoPlayNotes.notNote               ;; 0f:42a5 $30 $6a
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
    jp   Z, musicTempoPlayNotes_Channel1               ;; 0f:42be $ca $e2 $44
    cp   A, $0f                                        ;; 0f:42c1 $fe $0f
    jr   NZ, musicTempoPlayNotes.playNote              ;; 0f:42c3 $20 $0b
; Rest note by maxing frequency
    ld   A, $ff                                        ;; 0f:42c5 $3e $ff
    ldh  [rNR23], A                                    ;; 0f:42c7 $e0 $18
    ld   A, $07                                        ;; 0f:42c9 $3e $07
    ldh  [rNR24], A                                    ;; 0f:42cb $e0 $19
    jp   musicTempoPlayNotes_Channel1                  ;; 0f:42cd $c3 $e2 $44
.playNote:
    add  A, A                                          ;; 0f:42d0 $87
    ld   E, A                                          ;; 0f:42d1 $5f
    ld   A, [wMusicOctaveChannel2]                     ;; 0f:42d2 $fa $0b $c1
    add  A, E                                          ;; 0f:42d5 $83
    ld   E, A                                          ;; 0f:42d6 $5f
    ld   D, $00                                        ;; 0f:42d7 $16 $00
    ld   HL, musicNoteFrequencies                      ;; 0f:42d9 $21 $a0 $41
    add  HL, DE                                        ;; 0f:42dc $19
    push HL                                            ;; 0f:42dd $e5
    ld   A, [wMusicVolumeEnvelopeChannel2]             ;; 0f:42de $fa $15 $c1
    ld   L, A                                          ;; 0f:42e1 $6f
    ld   A, [wMusicVolumeEnvelopeChannel2.high]        ;; 0f:42e2 $fa $16 $c1
    ld   H, A                                          ;; 0f:42e5 $67
    ld   A, [HL+]                                      ;; 0f:42e6 $2a
    ld   [wMusicVolumeDurationChannel2], A             ;; 0f:42e7 $ea $14 $c1
    ld   A, [HL+]                                      ;; 0f:42ea $2a
    ldh  [rNR22], A                                    ;; 0f:42eb $e0 $17
    ld   A, L                                          ;; 0f:42ed $7d
    ld   A, [wMusicVolumeEnvelopePointerChannel2]      ;; 0f:42ee $fa $17 $c1
    ld   A, H                                          ;; 0f:42f1 $7c
    ld   A, [wMusicVolumeEnvelopePointerChannel2.high] ;; 0f:42f2 $fa $18 $c1
    pop  HL                                            ;; 0f:42f5 $e1
    ld   A, [HL+]                                      ;; 0f:42f6 $2a
    ldh  [rNR23], A                                    ;; 0f:42f7 $e0 $18
    ld   [wMusicCurrentPitchChannel2], A               ;; 0f:42f9 $ea $0d $c1
    ld   A, [HL]                                       ;; 0f:42fc $7e
    ldh  [rNR24], A                                    ;; 0f:42fd $e0 $19
    ld   [wMusicCurrentPitchChannel2.high], A          ;; 0f:42ff $ea $0e $c1
    ld   HL, wMusicVibratoDurationChannel2             ;; 0f:4302 $21 $06 $c1
    call musicStartEnvelope                            ;; 0f:4305 $cd $c8 $47
    ld   HL, wMusicVolumeDurationChannel2              ;; 0f:4308 $21 $14 $c1
    call musicStartEnvelope                            ;; 0f:430b $cd $c8 $47
    jp   musicTempoPlayNotes_Channel1                  ;; 0f:430e $c3 $e2 $44
.notNote:
    cp   A, $ff                                        ;; 0f:4311 $fe $ff
    jr   NZ, musicTempoPlayNotes.notTerminator         ;; 0f:4313 $20 $0c
    ld   [wMusicEndedOnChannel2], A                    ;; 0f:4315 $ea $13 $c1
    ldh  [rNR23], A                                    ;; 0f:4318 $e0 $18
    ld   A, $07                                        ;; 0f:431a $3e $07
    ldh  [rNR24], A                                    ;; 0f:431c $e0 $19
    jp   musicTempoPlayNotes_Channel1                  ;; 0f:431e $c3 $e2 $44
.notTerminator:
    cp   A, $e0                                        ;; 0f:4321 $fe $e0
    jr   NC, musicTempoPlayNotes.opCode                ;; 0f:4323 $30 $26
; Octave change
    bit  3, A                                          ;; 0f:4325 $cb $5f
    jr   NZ, musicTempoPlayNotes.relativeOctave        ;; 0f:4327 $20 $0e
    and  A, $07                                        ;; 0f:4329 $e6 $07
    add  A, A                                          ;; 0f:432b $87
    add  A, A                                          ;; 0f:432c $87
    add  A, A                                          ;; 0f:432d $87
    ld   E, A                                          ;; 0f:432e $5f
    add  A, A                                          ;; 0f:432f $87
    add  A, E                                          ;; 0f:4330 $83
    ld   [wMusicOctaveChannel2], A                     ;; 0f:4331 $ea $0b $c1
    jp   musicTempoPlayNotes.nextMusicInstruction      ;; 0f:4334 $c3 $9f $42
.relativeOctave:
    and  A, $07                                        ;; 0f:4337 $e6 $07
    ld   E, A                                          ;; 0f:4339 $5f
    ld   D, $00                                        ;; 0f:433a $16 $00
    ld   HL, musicOctaveRelatvieOffsets                ;; 0f:433c $21 $d1 $47
    add  HL, DE                                        ;; 0f:433f $19
    ld   E, [HL]                                       ;; 0f:4340 $5e
    ld   A, [wMusicOctaveChannel2]                     ;; 0f:4341 $fa $0b $c1
    add  A, E                                          ;; 0f:4344 $83
    ld   [wMusicOctaveChannel2], A                     ;; 0f:4345 $ea $0b $c1
    jp   musicTempoPlayNotes.nextMusicInstruction      ;; 0f:4348 $c3 $9f $42
.opCode:
    and  A, $0f                                        ;; 0f:434b $e6 $0f
    add  A, A                                          ;; 0f:434d $87
    ld   HL, musicOpCodeTableChannel2                  ;; 0f:434e $21 $65 $43
    ld   E, A                                          ;; 0f:4351 $5f
    ld   D, $00                                        ;; 0f:4352 $16 $00
    add  HL, DE                                        ;; 0f:4354 $19
    call musicCallOpCode                               ;; 0f:4355 $cd $5b $43
    jp   musicTempoPlayNotes.nextMusicInstruction      ;; 0f:4358 $c3 $9f $42

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
    dw   musicOpCodeSetChannel2VolumeEnvelope          ;; 0f:4365 pP
    dw   musicOpCodeChannel2Jump                       ;; 0f:4367 pP
    dw   musicOpCodeChannel2LoopCounter1               ;; 0f:4369 pP
    dw   musicOpCodeSetChannel2LoopCounter1            ;; 0f:436b pP
    dw   musicOpCodeSetChannel2VibratoEnvelope         ;; 0f:436d pP
    dw   musicChannel2SetDutyCycle                     ;; 0f:436f pP
    dw   musicOpCodeSetChannel2StereoPan               ;; 0f:4371 pP
    dw   musicOpCodeSetTempo                           ;; 0f:4373 pP
    dw   musicOpCodeHalt                               ;; 0f:4375 ??
    dw   musicOpCodeChannel2LoopCounter2               ;; 0f:4377 ??
    dw   musicOpCodeSetChannel2LoopCounter2            ;; 0f:4379 ??
    dw   musicOpCodeIfChannel2LoopCounter1Equal        ;; 0f:437b pP
    dw   musicOpCodeSetDoubletimeMode                  ;; 0f:437d ??

; Does not actually do anything because the check is broken leading to permanent doubletime
musicOpCodeSetDoubletimeMode:
    call getNextMusicInstructionChannel2               ;; 0f:437f $cd $d9 $47
    ld   [wMusicBrokenDoubleTimeMode], A               ;; 0f:4382 $ea $c8 $c1
    ret                                                ;; 0f:4385 $c9

musicOpCodeSetChannel2VolumeEnvelope:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:4386 $21 $04 $c1
    ld   E, [HL]                                       ;; 0f:4389 $5e
    inc  HL                                            ;; 0f:438a $23
    ld   D, [HL]                                       ;; 0f:438b $56
    ld   A, [DE]                                       ;; 0f:438c $1a
    ld   C, A                                          ;; 0f:438d $4f
    inc  DE                                            ;; 0f:438e $13
    ld   A, [DE]                                       ;; 0f:438f $1a
    inc  DE                                            ;; 0f:4390 $13
    ld   [wMusicVolumeEnvelopeChannel2.high], A        ;; 0f:4391 $ea $16 $c1
    ld   [wMusicVolumeEnvelopePointerChannel2.high], A ;; 0f:4394 $ea $18 $c1
    ld   A, C                                          ;; 0f:4397 $79
    ld   [wMusicVolumeEnvelopeChannel2], A             ;; 0f:4398 $ea $15 $c1
    ld   [wMusicVolumeEnvelopePointerChannel2], A      ;; 0f:439b $ea $17 $c1
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
    ld   A, [wMusicLoopCounter1Channel2]               ;; 0f:43be $fa $0f $c1
    dec  A                                             ;; 0f:43c1 $3d
    ld   [wMusicLoopCounter1Channel2], A               ;; 0f:43c2 $ea $0f $c1
    jr   jumpIfCondition                               ;; 0f:43c5 $18 $59

musicOpCodeChannel1LoopCounter1:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:43c7 $21 $1c $c1
    call musicGetLoopTarget                            ;; 0f:43ca $cd $17 $44
    ld   B, A                                          ;; 0f:43cd $47
    ld   A, [wMusicLoopCounter1Channel1]               ;; 0f:43ce $fa $27 $c1
    dec  A                                             ;; 0f:43d1 $3d
    ld   [wMusicLoopCounter1Channel1], A               ;; 0f:43d2 $ea $27 $c1
    jr   jumpIfCondition                               ;; 0f:43d5 $18 $49

musicOpCodeChannel3LoopCounter1:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:43d7 $21 $34 $c1
    call musicGetLoopTarget                            ;; 0f:43da $cd $17 $44
    ld   B, A                                          ;; 0f:43dd $47
    ld   A, [wMusicLoopCounter1Channel3]               ;; 0f:43de $fa $3f $c1
    dec  A                                             ;; 0f:43e1 $3d
    ld   [wMusicLoopCounter1Channel3], A               ;; 0f:43e2 $ea $3f $c1
    jr   jumpIfCondition                               ;; 0f:43e5 $18 $39

musicOpCodeChannel2LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:43e7 $21 $04 $c1
    call musicGetLoopTarget                            ;; 0f:43ea $cd $17 $44
    ld   B, A                                          ;; 0f:43ed $47
    ld   A, [wMusicLoopCounter2Channel2]               ;; 0f:43ee $fa $19 $c1
    dec  A                                             ;; 0f:43f1 $3d
    ld   [wMusicLoopCounter2Channel2], A               ;; 0f:43f2 $ea $19 $c1
    jr   jumpIfCondition                               ;; 0f:43f5 $18 $29

musicOpCodeChannel1LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:43f7 $21 $1c $c1
    call musicGetLoopTarget                            ;; 0f:43fa $cd $17 $44
    ld   B, A                                          ;; 0f:43fd $47
    ld   A, [wMusicLoopCounter2Channel1]               ;; 0f:43fe $fa $31 $c1
    dec  A                                             ;; 0f:4401 $3d
    ld   [wMusicLoopCounter2Channel1], A               ;; 0f:4402 $ea $31 $c1
    jr   jumpIfCondition                               ;; 0f:4405 $18 $19

musicOpCodeChannel3LoopCounter2:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4407 $21 $34 $c1
    call musicGetLoopTarget                            ;; 0f:440a $cd $17 $44
    ld   B, A                                          ;; 0f:440d $47
    ld   A, [wMusicLoopCounter2Channel3]               ;; 0f:440e $fa $49 $c1
    dec  A                                             ;; 0f:4411 $3d
    ld   [wMusicLoopCounter2Channel3], A               ;; 0f:4412 $ea $49 $c1
    jr   jumpIfCondition                               ;; 0f:4415 $18 $09

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

jumpIfCondition:
    jr   NZ, .true                                     ;; 0f:4420 $20 $04
    ld   [HL], D                                       ;; 0f:4422 $72
    dec  HL                                            ;; 0f:4423 $2b
    ld   [HL], E                                       ;; 0f:4424 $73
    ret                                                ;; 0f:4425 $c9
.true:
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
    ld   A, [wMusicLoopCounter1Channel2]               ;; 0f:443a $fa $0f $c1
    cp   A, C                                          ;; 0f:443d $b9
    jr   NZ, .write                                    ;; 0f:443e $20 $02
    push DE                                            ;; 0f:4440 $d5
    pop  HL                                            ;; 0f:4441 $e1
.write:
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
    ld   A, [wMusicLoopCounter1Channel1]               ;; 0f:445b $fa $27 $c1
    cp   A, C                                          ;; 0f:445e $b9
    jr   NZ, .write                                    ;; 0f:445f $20 $02
    push DE                                            ;; 0f:4461 $d5
    pop  HL                                            ;; 0f:4462 $e1
.write:
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
    ld   A, [wMusicLoopCounter1Channel3]               ;; 0f:447c $fa $3f $c1
    cp   A, C                                          ;; 0f:447f $b9
    jr   NZ, .write                                    ;; 0f:4480 $20 $02
    push DE                                            ;; 0f:4482 $d5
    pop  HL                                            ;; 0f:4483 $e1
.write:
    ld   A, L                                          ;; 0f:4484 $7d
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:4485 $ea $34 $c1
    ld   A, H                                          ;; 0f:4488 $7c
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:4489 $ea $35 $c1
    ret                                                ;; 0f:448c $c9

musicOpCodeSetChannel2LoopCounter1:
    call getNextMusicInstructionChannel2               ;; 0f:448d $cd $d9 $47
    ld   [wMusicLoopCounter1Channel2], A               ;; 0f:4490 $ea $0f $c1
    ret                                                ;; 0f:4493 $c9

musicOpCodeSetChannel2LoopCounter2:
    call getNextMusicInstructionChannel2               ;; 0f:4494 $cd $d9 $47
    ld   [wMusicLoopCounter2Channel2], A               ;; 0f:4497 $ea $19 $c1
    ret                                                ;; 0f:449a $c9

musicOpCodeSetChannel2VibratoEnvelope:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:449b $21 $04 $c1
    ld   E, [HL]                                       ;; 0f:449e $5e
    inc  HL                                            ;; 0f:449f $23
    ld   D, [HL]                                       ;; 0f:44a0 $56
    ld   A, [DE]                                       ;; 0f:44a1 $1a
    ld   C, A                                          ;; 0f:44a2 $4f
    inc  DE                                            ;; 0f:44a3 $13
    ld   A, [DE]                                       ;; 0f:44a4 $1a
    inc  DE                                            ;; 0f:44a5 $13
    ld   [wMusicVibratoEnvelopeChannel2.high], A       ;; 0f:44a6 $ea $08 $c1
    ld   [wMusicVibratoEnvelopePointerChannel2.high], A ;; 0f:44a9 $ea $0a $c1
    ld   A, C                                          ;; 0f:44ac $79
    ld   [wMusicVibratoEnvelopeChannel2], A            ;; 0f:44ad $ea $07 $c1
    ld   [wMusicVibratoEnvelopePointerChannel2], A     ;; 0f:44b0 $ea $09 $c1
    ld   A, E                                          ;; 0f:44b3 $7b
    ld   [wMusicInstructionPointerChannel2], A         ;; 0f:44b4 $ea $04 $c1
    ld   A, D                                          ;; 0f:44b7 $7a
    ld   [wMusicInstructionPointerChannel2.high], A    ;; 0f:44b8 $ea $05 $c1
    ret                                                ;; 0f:44bb $c9

musicChannel2SetDutyCycle:
    call getNextMusicInstructionChannel2               ;; 0f:44bc $cd $d9 $47
    ldh  [rNR21], A                                    ;; 0f:44bf $e0 $16
    ld   [wMusicNR21DutyCycleChannel2], A              ;; 0f:44c1 $ea $0c $c1
    ret                                                ;; 0f:44c4 $c9

musicOpCodeSetChannel2StereoPan:
    call getNextMusicInstructionChannel2               ;; 0f:44c5 $cd $d9 $47
    ld   E, A                                          ;; 0f:44c8 $5f
    ld   D, $00                                        ;; 0f:44c9 $16 $00
    ld   HL, channel2StereoPanValues                   ;; 0f:44cb $21 $64 $46
    add  HL, DE                                        ;; 0f:44ce $19
    ldh  A, [rNR51]                                    ;; 0f:44cf $f0 $25
    and  A, $dd                                        ;; 0f:44d1 $e6 $dd
    or   A, [HL]                                       ;; 0f:44d3 $b6
    ldh  [rNR51], A                                    ;; 0f:44d4 $e0 $25
    ret                                                ;; 0f:44d6 $c9

channel1StereoPanValues:
    db   $00, $01, $10, $11                            ;; 0f:44d7 ?...

musicOpCodeSetTempo:
    call getNextMusicInstructionChannel2               ;; 0f:44db $cd $d9 $47
    ld   [wMusicTempo], A                              ;; 0f:44de $ea $01 $c1
    ret                                                ;; 0f:44e1 $c9

musicTempoPlayNotes_Channel1:
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:44e2 $fa $2b $c1
    cp   A, $ff                                        ;; 0f:44e5 $fe $ff
    jp   Z, musicTempoPlayNotes_Channel3               ;; 0f:44e7 $ca $68 $46
    ld   A, [wMusicNoteDurationChannel1]               ;; 0f:44ea $fa $1b $c1
    dec  A                                             ;; 0f:44ed $3d
    ld   [wMusicNoteDurationChannel1], A               ;; 0f:44ee $ea $1b $c1
    ldh  [hMusicNoteDurationChannel1Copy], A           ;; 0f:44f1 $e0 $96
    jp   NZ, musicTempoPlayNotes_Channel3              ;; 0f:44f3 $c2 $68 $46
.nextMusicInstruction:
    call getNextMusicInstructionChannel1               ;; 0f:44f6 $cd $e5 $47
    ld   E, A                                          ;; 0f:44f9 $5f
    cp   A, $d0                                        ;; 0f:44fa $fe $d0
    jr   NC, musicTempoPlayNotes_Channel1.notNote      ;; 0f:44fc $30 $79
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
    jp   Z, musicTempoPlayNotes_Channel3               ;; 0f:4515 $ca $68 $46
    ld   C, A                                          ;; 0f:4518 $4f
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4519 $fa $1a $c1
    or   A, A                                          ;; 0f:451c $b7
    jp   NZ, musicTempoPlayNotes_Channel3              ;; 0f:451d $c2 $68 $46
    ld   A, C                                          ;; 0f:4520 $79
    cp   A, $0f                                        ;; 0f:4521 $fe $0f
    jr   NZ, musicTempoPlayNotes_Channel1.playNote     ;; 0f:4523 $20 $11
; Rest note by maxing frequency
    ld   A, $ff                                        ;; 0f:4525 $3e $ff
    ldh  [rNR13], A                                    ;; 0f:4527 $e0 $13
    ld   [wSoundsMusicRestorePitchChannel1], A         ;; 0f:4529 $ea $c9 $c1
    ld   A, $07                                        ;; 0f:452c $3e $07
    ldh  [rNR14], A                                    ;; 0f:452e $e0 $14
    ld   [wSoundsMusicRestorePitchChannel1.high], A    ;; 0f:4530 $ea $ca $c1
    jp   musicTempoPlayNotes_Channel3                  ;; 0f:4533 $c3 $68 $46
.playNote:
    add  A, A                                          ;; 0f:4536 $87
    ld   E, A                                          ;; 0f:4537 $5f
    ld   A, [wMusicOctaveChannel1]                     ;; 0f:4538 $fa $23 $c1
    add  A, E                                          ;; 0f:453b $83
    ld   E, A                                          ;; 0f:453c $5f
    ld   D, $00                                        ;; 0f:453d $16 $00
    ld   HL, musicNoteFrequencies                      ;; 0f:453f $21 $a0 $41
    add  HL, DE                                        ;; 0f:4542 $19
    push HL                                            ;; 0f:4543 $e5
    ld   A, [wMusicVolumeEnvelopeChannel1]             ;; 0f:4544 $fa $2d $c1
    ld   L, A                                          ;; 0f:4547 $6f
    ld   A, [wMusicVolumeEnvelopeChannel1.high]        ;; 0f:4548 $fa $2e $c1
    ld   H, A                                          ;; 0f:454b $67
    ld   A, [HL+]                                      ;; 0f:454c $2a
    ld   [wMusicVolumeDurationChannel1], A             ;; 0f:454d $ea $2c $c1
    ld   A, [HL+]                                      ;; 0f:4550 $2a
    ldh  [rNR12], A                                    ;; 0f:4551 $e0 $12
    ld   A, L                                          ;; 0f:4553 $7d
    ld   A, [wMusicVolumeEnvelopePointerChannel1]      ;; 0f:4554 $fa $2f $c1
    ld   A, H                                          ;; 0f:4557 $7c
    ld   A, [wMusicVolumeEnvelopePointerChannel1.high] ;; 0f:4558 $fa $30 $c1
    pop  HL                                            ;; 0f:455b $e1
    ld   A, [HL+]                                      ;; 0f:455c $2a
    ldh  [rNR13], A                                    ;; 0f:455d $e0 $13
    ld   [wMusicCurrentPitchChannel1], A               ;; 0f:455f $ea $25 $c1
    ld   A, [HL]                                       ;; 0f:4562 $7e
    ldh  [rNR14], A                                    ;; 0f:4563 $e0 $14
    ld   [wMusicCurrentPitchChannel1.high], A          ;; 0f:4565 $ea $26 $c1
    ld   HL, wMusicVibratoDurationChannel1             ;; 0f:4568 $21 $1e $c1
    call musicStartEnvelope                            ;; 0f:456b $cd $c8 $47
    ld   HL, wMusicVolumeDurationChannel1              ;; 0f:456e $21 $2c $c1
    call musicStartEnvelope                            ;; 0f:4571 $cd $c8 $47
    jp   musicTempoPlayNotes_Channel3                  ;; 0f:4574 $c3 $68 $46
.notNote:
    cp   A, $ff                                        ;; 0f:4577 $fe $ff
    jr   NZ, musicTempoPlayNotes_Channel1.notTerminator ;; 0f:4579 $20 $0c
    ld   [wMusicEndedOnChannel1], A                    ;; 0f:457b $ea $2b $c1
    ldh  [rNR23], A                                    ;; 0f:457e $e0 $18
    ld   A, $07                                        ;; 0f:4580 $3e $07
    ldh  [rNR24], A                                    ;; 0f:4582 $e0 $19
    jp   musicTempoPlayNotes_Channel3                  ;; 0f:4584 $c3 $68 $46
.notTerminator:
    cp   A, $e0                                        ;; 0f:4587 $fe $e0
    jr   NC, musicTempoPlayNotes_Channel1.opCode       ;; 0f:4589 $30 $26
; Octave change
    bit  3, A                                          ;; 0f:458b $cb $5f
    jr   NZ, musicTempoPlayNotes_Channel1.relativeOctave ;; 0f:458d $20 $0e
    and  A, $07                                        ;; 0f:458f $e6 $07
    add  A, A                                          ;; 0f:4591 $87
    add  A, A                                          ;; 0f:4592 $87
    add  A, A                                          ;; 0f:4593 $87
    ld   E, A                                          ;; 0f:4594 $5f
    add  A, A                                          ;; 0f:4595 $87
    add  A, E                                          ;; 0f:4596 $83
    ld   [wMusicOctaveChannel1], A                     ;; 0f:4597 $ea $23 $c1
    jp   musicTempoPlayNotes_Channel1.nextMusicInstruction ;; 0f:459a $c3 $f6 $44
.relativeOctave:
    and  A, $07                                        ;; 0f:459d $e6 $07
    ld   E, A                                          ;; 0f:459f $5f
    ld   D, $00                                        ;; 0f:45a0 $16 $00
    ld   HL, musicOctaveRelatvieOffsets                ;; 0f:45a2 $21 $d1 $47
    add  HL, DE                                        ;; 0f:45a5 $19
    ld   E, [HL]                                       ;; 0f:45a6 $5e
    ld   A, [wMusicOctaveChannel1]                     ;; 0f:45a7 $fa $23 $c1
    add  A, E                                          ;; 0f:45aa $83
    ld   [wMusicOctaveChannel1], A                     ;; 0f:45ab $ea $23 $c1
    jp   musicTempoPlayNotes_Channel1.nextMusicInstruction ;; 0f:45ae $c3 $f6 $44
.opCode:
    and  A, $0f                                        ;; 0f:45b1 $e6 $0f
    add  A, A                                          ;; 0f:45b3 $87
    ld   HL, musicOpCodeTableChannel1                  ;; 0f:45b4 $21 $c7 $45
    ld   E, A                                          ;; 0f:45b7 $5f
    ld   D, $00                                        ;; 0f:45b8 $16 $00
    add  HL, DE                                        ;; 0f:45ba $19
    call musicCallOpCode_DupChannel1                   ;; 0f:45bb $cd $c1 $45
    jp   musicTempoPlayNotes_Channel1.nextMusicInstruction ;; 0f:45be $c3 $f6 $44

musicCallOpCode_DupChannel1:
    ld   A, [HL+]                                      ;; 0f:45c1 $2a
    ld   E, A                                          ;; 0f:45c2 $5f
    ld   A, [HL]                                       ;; 0f:45c3 $7e
    ld   H, A                                          ;; 0f:45c4 $67
    ld   L, E                                          ;; 0f:45c5 $6b
    jp   HL                                            ;; 0f:45c6 $e9

;@jumptable amount=12
musicOpCodeTableChannel1:
    dw   musicOpCodeSetChannel1VolumeEnvelope          ;; 0f:45c7 pP
    dw   musicOpCodeChannel1Jump                       ;; 0f:45c9 pP
    dw   musicOpCodeChannel1LoopCounter1               ;; 0f:45cb pP
    dw   musicOpCodeSetChannel1LoopCounter1            ;; 0f:45cd pP
    dw   musicOpCodeSetChannel1VibratoEnvelope         ;; 0f:45cf pP
    dw   musicChannel1SetDutyCycle                     ;; 0f:45d1 pP
    dw   musicOpCodeSetChannel1StereoPan               ;; 0f:45d3 pP
    dw   musicOpCodeHalt                               ;; 0f:45d5 ??
    dw   musicOpCodeHalt                               ;; 0f:45d7 ??
    dw   musicOpCodeChannel1LoopCounter2               ;; 0f:45d9 ??
    dw   musicOpCodeSetChannel1LoopCounter2            ;; 0f:45db ??
    dw   musicOpCodeIfChannel1LoopCounter1Equal        ;; 0f:45dd pP

musicOpCodeSetChannel1VolumeEnvelope:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:45df $21 $1c $c1
    ld   E, [HL]                                       ;; 0f:45e2 $5e
    inc  HL                                            ;; 0f:45e3 $23
    ld   D, [HL]                                       ;; 0f:45e4 $56
    ld   A, [DE]                                       ;; 0f:45e5 $1a
    ld   C, A                                          ;; 0f:45e6 $4f
    inc  DE                                            ;; 0f:45e7 $13
    ld   A, [DE]                                       ;; 0f:45e8 $1a
    inc  DE                                            ;; 0f:45e9 $13
    ld   [wMusicVolumeEnvelopeChannel1.high], A        ;; 0f:45ea $ea $2e $c1
    ld   A, C                                          ;; 0f:45ed $79
    ld   [wMusicVolumeEnvelopeChannel1], A             ;; 0f:45ee $ea $2d $c1
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
    ld   [wMusicLoopCounter1Channel1], A               ;; 0f:460d $ea $27 $c1
    ret                                                ;; 0f:4610 $c9

musicOpCodeSetChannel1LoopCounter2:
    call getNextMusicInstructionChannel1               ;; 0f:4611 $cd $e5 $47
    ld   [wMusicLoopCounter2Channel1], A               ;; 0f:4614 $ea $31 $c1
    ret                                                ;; 0f:4617 $c9

musicOpCodeSetChannel1VibratoEnvelope:
    ld   HL, wMusicInstructionPointerChannel1          ;; 0f:4618 $21 $1c $c1
    ld   E, [HL]                                       ;; 0f:461b $5e
    inc  HL                                            ;; 0f:461c $23
    ld   D, [HL]                                       ;; 0f:461d $56
    ld   A, [DE]                                       ;; 0f:461e $1a
    ld   C, A                                          ;; 0f:461f $4f
    inc  DE                                            ;; 0f:4620 $13
    ld   A, [DE]                                       ;; 0f:4621 $1a
    inc  DE                                            ;; 0f:4622 $13
    ld   [wMusicVibratoEnvelopeChannel1.high], A       ;; 0f:4623 $ea $20 $c1
    ld   [wMusicVibratoEnvelopePointerChannel1.high], A ;; 0f:4626 $ea $22 $c1
    ld   A, C                                          ;; 0f:4629 $79
    ld   [wMusicVibratoEnvelopeChannel1], A            ;; 0f:462a $ea $1f $c1
    ld   [wMusicVibratoEnvelopePointerChannel1], A     ;; 0f:462d $ea $21 $c1
    ld   A, E                                          ;; 0f:4630 $7b
    ld   [wMusicInstructionPointerChannel1], A         ;; 0f:4631 $ea $1c $c1
    ld   A, D                                          ;; 0f:4634 $7a
    ld   [wMusicInstructionPointerChannel1.high], A    ;; 0f:4635 $ea $1d $c1
    ret                                                ;; 0f:4638 $c9

musicChannel1SetDutyCycle:
    call getNextMusicInstructionChannel1               ;; 0f:4639 $cd $e5 $47
    ld   [wMusicNR11DutyCycleChannel1], A              ;; 0f:463c $ea $24 $c1
    ld   B, A                                          ;; 0f:463f $47
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4640 $fa $1a $c1
    or   A, A                                          ;; 0f:4643 $b7
    ret  NZ                                            ;; 0f:4644 $c0
    ld   A, B                                          ;; 0f:4645 $78
    ldh  [rNR11], A                                    ;; 0f:4646 $e0 $11
    ret                                                ;; 0f:4648 $c9

musicOpCodeSetChannel1StereoPan:
    call getNextMusicInstructionChannel1               ;; 0f:4649 $cd $e5 $47
    ld   E, A                                          ;; 0f:464c $5f
    ld   D, $00                                        ;; 0f:464d $16 $00
    ld   HL, channel1StereoPanValues                   ;; 0f:464f $21 $d7 $44
    add  HL, DE                                        ;; 0f:4652 $19
    ld   A, [HL]                                       ;; 0f:4653 $7e
    ld   [wMusicStereoPanChannel1], A                  ;; 0f:4654 $ea $2a $c1
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4657 $fa $1a $c1
    or   A, A                                          ;; 0f:465a $b7
    ret  NZ                                            ;; 0f:465b $c0
    ldh  A, [rNR51]                                    ;; 0f:465c $f0 $25
    and  A, $ee                                        ;; 0f:465e $e6 $ee
    or   A, [HL]                                       ;; 0f:4660 $b6
    ldh  [rNR51], A                                    ;; 0f:4661 $e0 $25
    ret                                                ;; 0f:4663 $c9

channel2StereoPanValues:
    db   $00, $02, $20, $22                            ;; 0f:4664 ????

musicTempoPlayNotes_Channel3:
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:4668 $fa $43 $c1
    cp   A, $ff                                        ;; 0f:466b $fe $ff
    jp   Z, return                                     ;; 0f:466d $ca $c7 $47
    ld   A, [wMusicNoteDurationChannel3]               ;; 0f:4670 $fa $33 $c1
    dec  A                                             ;; 0f:4673 $3d
    ld   [wMusicNoteDurationChannel3], A               ;; 0f:4674 $ea $33 $c1
    ldh  [hMusicNoteDurationChannel3Copy], A           ;; 0f:4677 $e0 $97
    jp   NZ, return                                    ;; 0f:4679 $c2 $c7 $47
.nextMusicInstruction:
    call getNextMusicInstructionChannel3               ;; 0f:467c $cd $ea $47
    ld   E, A                                          ;; 0f:467f $5f
    cp   A, $d0                                        ;; 0f:4680 $fe $d0
    jr   NC, musicTempoPlayNotes_Channel3.notNote      ;; 0f:4682 $30 $4e
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
    jr   NZ, musicTempoPlayNotes_Channel3.playNote     ;; 0f:46a0 $20 $07
; Rest note
    ld   A, $00                                        ;; 0f:46a2 $3e $00
    ldh  [rNR32], A                                    ;; 0f:46a4 $e0 $1c
    jp   return                                        ;; 0f:46a6 $c3 $c7 $47
.playNote:
    add  A, A                                          ;; 0f:46a9 $87
    ld   E, A                                          ;; 0f:46aa $5f
    ld   A, [wMusicOctaveChannel3]                     ;; 0f:46ab $fa $3b $c1
    add  A, E                                          ;; 0f:46ae $83
    ld   E, A                                          ;; 0f:46af $5f
    ld   D, $00                                        ;; 0f:46b0 $16 $00
    ld   HL, musicNoteFrequencies                      ;; 0f:46b2 $21 $a0 $41
    add  HL, DE                                        ;; 0f:46b5 $19
    ld   A, [wMusicVolumeChannel3]                     ;; 0f:46b6 $fa $40 $c1
    ldh  [rNR32], A                                    ;; 0f:46b9 $e0 $1c
    ld   A, [HL+]                                      ;; 0f:46bb $2a
    ldh  [rNR33], A                                    ;; 0f:46bc $e0 $1d
    ld   [wMusicCurrentPitchChannel3], A               ;; 0f:46be $ea $3d $c1
    ld   A, [HL]                                       ;; 0f:46c1 $7e
    and  A, $07                                        ;; 0f:46c2 $e6 $07
    ldh  [rNR34], A                                    ;; 0f:46c4 $e0 $1e
    ld   [wMusicCurrentPitchChannel3.high], A          ;; 0f:46c6 $ea $3e $c1
    ld   HL, wMusicVibratoDurationChannel3             ;; 0f:46c9 $21 $36 $c1
    call musicStartEnvelope                            ;; 0f:46cc $cd $c8 $47
    jp   return                                        ;; 0f:46cf $c3 $c7 $47
.notNote:
    cp   A, $ff                                        ;; 0f:46d2 $fe $ff
    jr   NZ, musicTempoPlayNotes_Channel3.notTerminator ;; 0f:46d4 $20 $0c
    ld   [wMusicEndedOnChannel3], A                    ;; 0f:46d6 $ea $43 $c1
    ldh  [rNR33], A                                    ;; 0f:46d9 $e0 $1d
    ld   A, $07                                        ;; 0f:46db $3e $07
    ldh  [rNR34], A                                    ;; 0f:46dd $e0 $1e
    jp   return                                        ;; 0f:46df $c3 $c7 $47
.notTerminator:
    cp   A, $e0                                        ;; 0f:46e2 $fe $e0
    jr   NC, musicTempoPlayNotes_Channel3.opCode       ;; 0f:46e4 $30 $26
; Octave change
    bit  3, A                                          ;; 0f:46e6 $cb $5f
    jr   NZ, musicTempoPlayNotes_Channel3.relativeOctave ;; 0f:46e8 $20 $0e
    and  A, $07                                        ;; 0f:46ea $e6 $07
    add  A, A                                          ;; 0f:46ec $87
    add  A, A                                          ;; 0f:46ed $87
    add  A, A                                          ;; 0f:46ee $87
    ld   E, A                                          ;; 0f:46ef $5f
    add  A, A                                          ;; 0f:46f0 $87
    add  A, E                                          ;; 0f:46f1 $83
    ld   [wMusicOctaveChannel3], A                     ;; 0f:46f2 $ea $3b $c1
    jp   musicTempoPlayNotes_Channel3.nextMusicInstruction ;; 0f:46f5 $c3 $7c $46
.relativeOctave:
    and  A, $07                                        ;; 0f:46f8 $e6 $07
    ld   E, A                                          ;; 0f:46fa $5f
    ld   D, $00                                        ;; 0f:46fb $16 $00
    ld   HL, musicOctaveRelatvieOffsets                ;; 0f:46fd $21 $d1 $47
    add  HL, DE                                        ;; 0f:4700 $19
    ld   E, [HL]                                       ;; 0f:4701 $5e
    ld   A, [wMusicOctaveChannel3]                     ;; 0f:4702 $fa $3b $c1
    add  A, E                                          ;; 0f:4705 $83
    ld   [wMusicOctaveChannel3], A                     ;; 0f:4706 $ea $3b $c1
    jp   musicTempoPlayNotes_Channel3.nextMusicInstruction ;; 0f:4709 $c3 $7c $46
.opCode:
    and  A, $0f                                        ;; 0f:470c $e6 $0f
    add  A, A                                          ;; 0f:470e $87
    ld   HL, musicOpCodeTableChannel3                  ;; 0f:470f $21 $22 $47
    ld   E, A                                          ;; 0f:4712 $5f
    ld   D, $00                                        ;; 0f:4713 $16 $00
    add  HL, DE                                        ;; 0f:4715 $19
    call musicCallOpCode_DupChannel3                   ;; 0f:4716 $cd $1c $47
    jp   musicTempoPlayNotes_Channel3.nextMusicInstruction ;; 0f:4719 $c3 $7c $46

musicCallOpCode_DupChannel3:
    ld   A, [HL+]                                      ;; 0f:471c $2a
    ld   E, A                                          ;; 0f:471d $5f
    ld   A, [HL]                                       ;; 0f:471e $7e
    ld   H, A                                          ;; 0f:471f $67
    ld   L, E                                          ;; 0f:4720 $6b
    jp   HL                                            ;; 0f:4721 $e9

;@jumptable amount=12
musicOpCodeTableChannel3:
    dw   musicOpCodeSetChannel3Volume                  ;; 0f:4722 pP
    dw   musicOpCodeChannel3Jump                       ;; 0f:4724 pP
    dw   musicOpCodeChannel3LoopCounter1               ;; 0f:4726 pP
    dw   musicOpCodeSetChannel3LoopCounter1            ;; 0f:4728 pP
    dw   musicOpCodeSetChannel3VibratoEnvelope         ;; 0f:472a pP
    dw   musicOpCodeHalt                               ;; 0f:472c ??
    dw   musicOpCodeSetChannel3StereoPan               ;; 0f:472e pP
    dw   musicOpCodeHalt                               ;; 0f:4730 ??
    dw   musicOpCodeChannel3LoadWaveTable              ;; 0f:4732 pP
    dw   musicOpCodeChannel3LoopCounter2               ;; 0f:4734 ??
    dw   musicOpCodeSetChannel3LoopCounter2            ;; 0f:4736 ??
    dw   musicOpCodeIfChannel3LoopCounter1Equal        ;; 0f:4738 ??

musicOpCodeSetChannel3Volume:
    call getNextMusicInstructionChannel3               ;; 0f:473a $cd $ea $47
    ld   [wMusicVolumeChannel3], A                     ;; 0f:473d $ea $40 $c1
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
    ld   [wMusicLoopCounter1Channel3], A               ;; 0f:4756 $ea $3f $c1
    ret                                                ;; 0f:4759 $c9

musicOpCodeSetChannel3LoopCounter2:
    call getNextMusicInstructionChannel3               ;; 0f:475a $cd $ea $47
    ld   [wMusicLoopCounter2Channel3], A               ;; 0f:475d $ea $49 $c1
    ret                                                ;; 0f:4760 $c9

musicOpCodeSetChannel3VibratoEnvelope:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4761 $21 $34 $c1
    ld   E, [HL]                                       ;; 0f:4764 $5e
    inc  HL                                            ;; 0f:4765 $23
    ld   D, [HL]                                       ;; 0f:4766 $56
    ld   A, [DE]                                       ;; 0f:4767 $1a
    ld   C, A                                          ;; 0f:4768 $4f
    inc  DE                                            ;; 0f:4769 $13
    ld   A, [DE]                                       ;; 0f:476a $1a
    inc  DE                                            ;; 0f:476b $13
    ld   [wMusicVibratoEnvelopeChannel3.high], A       ;; 0f:476c $ea $38 $c1
    ld   [wMusicVibratoEnvelopePointerChannel3.high], A ;; 0f:476f $ea $3a $c1
    ld   A, C                                          ;; 0f:4772 $79
    ld   [wMusicVibratoEnvelopeChannel3], A            ;; 0f:4773 $ea $37 $c1
    ld   [wMusicVibratoEnvelopePointerChannel3], A     ;; 0f:4776 $ea $39 $c1
    ld   A, E                                          ;; 0f:4779 $7b
    ld   [wMusicInstructionPointerChannel3], A         ;; 0f:477a $ea $34 $c1
    ld   A, D                                          ;; 0f:477d $7a
    ld   [wMusicInstructionPointerChannel3.high], A    ;; 0f:477e $ea $35 $c1
    ret                                                ;; 0f:4781 $c9

musicOpCodeSetChannel3StereoPan:
    call getNextMusicInstructionChannel3               ;; 0f:4782 $cd $ea $47
    ld   E, A                                          ;; 0f:4785 $5f
    ld   D, $00                                        ;; 0f:4786 $16 $00
    ld   HL, .stereoPanValues                          ;; 0f:4788 $21 $94 $47
    add  HL, DE                                        ;; 0f:478b $19
    ldh  A, [rNR51]                                    ;; 0f:478c $f0 $25
    and  A, $bb                                        ;; 0f:478e $e6 $bb
    or   A, [HL]                                       ;; 0f:4790 $b6
    ldh  [rNR51], A                                    ;; 0f:4791 $e0 $25
    ret                                                ;; 0f:4793 $c9
.stereoPanValues:
    db   $00, $04, $40, $44                            ;; 0f:4794 ????

musicOpCodeChannel3LoadWaveTable:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:4798 $21 $34 $c1
    ld   E, [HL]                                       ;; 0f:479b $5e
    inc  HL                                            ;; 0f:479c $23
    ld   D, [HL]                                       ;; 0f:479d $56
    ld   A, [DE]                                       ;; 0f:479e $1a
    ld   C, A                                          ;; 0f:479f $4f
    ldh  [hWaveTablePointer], A                        ;; 0f:47a0 $e0 $9a
    inc  DE                                            ;; 0f:47a2 $13
    ld   A, [DE]                                       ;; 0f:47a3 $1a
    ld   B, A                                          ;; 0f:47a4 $47
    ldh  [hWaveTablePointer.high], A                   ;; 0f:47a5 $e0 $9b
    inc  DE                                            ;; 0f:47a7 $13
    ld   [HL], D                                       ;; 0f:47a8 $72
    dec  HL                                            ;; 0f:47a9 $2b
    ld   [HL], E                                       ;; 0f:47aa $73
    push BC                                            ;; 0f:47ab $c5
    pop  HL                                            ;; 0f:47ac $e1

musicLoadWaveTable:
    xor  A, A                                          ;; 0f:47ad $af
    ldh  [rNR30], A                                    ;; 0f:47ae $e0 $1a
    ld   C, $30                                        ;; 0f:47b0 $0e $30
    ld   B, $10                                        ;; 0f:47b2 $06 $10
.loop:
    ld   A, [HL+]                                      ;; 0f:47b4 $2a
    ldh  [C], A                                        ;; 0f:47b5 $e2
    inc  C                                             ;; 0f:47b6 $0c
    dec  B                                             ;; 0f:47b7 $05
    jr   NZ, musicLoadWaveTable.loop                   ;; 0f:47b8 $20 $fa
    ld   A, $80                                        ;; 0f:47ba $3e $80
    ldh  [rNR30], A                                    ;; 0f:47bc $e0 $1a
    ld   A, $00                                        ;; 0f:47be $3e $00
    ldh  [rNR32], A                                    ;; 0f:47c0 $e0 $1c
    ld   A, $87                                        ;; 0f:47c2 $3e $87
    ldh  [rNR34], A                                    ;; 0f:47c4 $e0 $1e
    ret                                                ;; 0f:47c6 $c9

return:
    ret                                                ;; 0f:47c7 $c9

; Used when a note is started to init vibrato/volume envelopes
musicStartEnvelope:
    ld   A, $01                                        ;; 0f:47c8 $3e $01
    ld   [HL+], A                                      ;; 0f:47ca $22
    ld   A, [HL+]                                      ;; 0f:47cb $2a
    ld   E, [HL]                                       ;; 0f:47cc $5e
    inc  HL                                            ;; 0f:47cd $23
    ld   [HL+], A                                      ;; 0f:47ce $22
    ld   [HL], E                                       ;; 0f:47cf $73
    ret                                                ;; 0f:47d0 $c9

;         +1,  +2,  +3,  +4,  -1,  -2,  -3,  -4
musicOctaveRelatvieOffsets:
    db   $18, $30, $48, $60, $e8, $d0, $b8, $a0        ;; 0f:47d1 .???..??

getNextMusicInstructionChannel2:
    ld   HL, wMusicInstructionPointerChannel2          ;; 0f:47d9 $21 $04 $c1

getNextMusicalInstructionCommon:
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
    jr   getNextMusicalInstructionCommon               ;; 0f:47e8 $18 $f2

getNextMusicInstructionChannel3:
    ld   HL, wMusicInstructionPointerChannel3          ;; 0f:47ea $21 $34 $c1
    jr   getNextMusicalInstructionCommon               ;; 0f:47ed $18 $ed

musicVibratoAndVolumeChannel2:
    ld   A, [wSoundEffectDurationChannel2]             ;; 0f:47ef $fa $02 $c1
    ld   E, A                                          ;; 0f:47f2 $5f
    ld   A, [wMusicEndedOnChannel2]                    ;; 0f:47f3 $fa $13 $c1
    or   A, E                                          ;; 0f:47f6 $b3
    ret  NZ                                            ;; 0f:47f7 $c0
    ldh  A, [hMusicNoteDurationChannel2Copy]           ;; 0f:47f8 $f0 $95
    or   A, A                                          ;; 0f:47fa $b7
    ret  Z                                             ;; 0f:47fb $c8
    ld   A, [wMusicNotePitchChannel2]                  ;; 0f:47fc $fa $11 $c1
    cp   A, $0f                                        ;; 0f:47ff $fe $0f
    ret  Z                                             ;; 0f:4801 $c8
    ld   A, [wMusicVibratoDurationChannel2]            ;; 0f:4802 $fa $06 $c1
    dec  A                                             ;; 0f:4805 $3d
    ld   [wMusicVibratoDurationChannel2], A            ;; 0f:4806 $ea $06 $c1
    jr   NZ, .volume_envelope                          ;; 0f:4809 $20 $32
    ld   A, [wMusicVibratoEnvelopePointerChannel2]     ;; 0f:480b $fa $09 $c1
    ld   L, A                                          ;; 0f:480e $6f
    ld   A, [wMusicVibratoEnvelopePointerChannel2.high] ;; 0f:480f $fa $0a $c1
    ld   H, A                                          ;; 0f:4812 $67
    ld   A, [HL+]                                      ;; 0f:4813 $2a
    or   A, A                                          ;; 0f:4814 $b7
    call Z, musicVibratoAndVolumeJump                  ;; 0f:4815 $cc $32 $49
    ld   [wMusicVibratoDurationChannel2], A            ;; 0f:4818 $ea $06 $c1
    ld   A, [HL+]                                      ;; 0f:481b $2a
    ld   E, A                                          ;; 0f:481c $5f
    ld   A, L                                          ;; 0f:481d $7d
    ld   [wMusicVibratoEnvelopePointerChannel2], A     ;; 0f:481e $ea $09 $c1
    ld   A, H                                          ;; 0f:4821 $7c
    ld   [wMusicVibratoEnvelopePointerChannel2.high], A ;; 0f:4822 $ea $0a $c1
    ld   D, $00                                        ;; 0f:4825 $16 $00
    bit  7, E                                          ;; 0f:4827 $cb $7b
    jr   Z, .sign_extended                             ;; 0f:4829 $28 $01
    dec  D                                             ;; 0f:482b $15
.sign_extended:
    ld   A, [wMusicCurrentPitchChannel2]               ;; 0f:482c $fa $0d $c1
    ld   L, A                                          ;; 0f:482f $6f
    ld   A, [wMusicCurrentPitchChannel2.high]          ;; 0f:4830 $fa $0e $c1
    ld   H, A                                          ;; 0f:4833 $67
    add  HL, DE                                        ;; 0f:4834 $19
    ld   A, L                                          ;; 0f:4835 $7d
    ldh  [rNR23], A                                    ;; 0f:4836 $e0 $18
    ld   A, H                                          ;; 0f:4838 $7c
    and  A, $07                                        ;; 0f:4839 $e6 $07
    ldh  [rNR24], A                                    ;; 0f:483b $e0 $19
.volume_envelope:
    ld   A, [wMusicVolumeDurationChannel2]             ;; 0f:483d $fa $14 $c1
    cp   A, $ff                                        ;; 0f:4840 $fe $ff
    ret  Z                                             ;; 0f:4842 $c8
    dec  A                                             ;; 0f:4843 $3d
    ld   [wMusicVolumeDurationChannel2], A             ;; 0f:4844 $ea $14 $c1
    ret  NZ                                            ;; 0f:4847 $c0
    ld   A, [wMusicVolumeEnvelopePointerChannel2]      ;; 0f:4848 $fa $17 $c1
    ld   L, A                                          ;; 0f:484b $6f
    ld   A, [wMusicVolumeEnvelopePointerChannel2.high] ;; 0f:484c $fa $18 $c1
    ld   H, A                                          ;; 0f:484f $67
    ld   A, [HL+]                                      ;; 0f:4850 $2a
    or   A, A                                          ;; 0f:4851 $b7
    call Z, musicVibratoAndVolumeJump                  ;; 0f:4852 $cc $32 $49
    ld   [wMusicVolumeDurationChannel2], A             ;; 0f:4855 $ea $14 $c1
    ld   A, [HL+]                                      ;; 0f:4858 $2a
    ldh  [rNR22], A                                    ;; 0f:4859 $e0 $17
    ld   A, [wMusicCurrentPitchChannel2.high]          ;; 0f:485b $fa $0e $c1
    ldh  [rNR24], A                                    ;; 0f:485e $e0 $19
    ld   A, L                                          ;; 0f:4860 $7d
    ld   [wMusicVolumeEnvelopePointerChannel2], A      ;; 0f:4861 $ea $17 $c1
    ld   A, H                                          ;; 0f:4864 $7c
    ld   [wMusicVolumeEnvelopePointerChannel2.high], A ;; 0f:4865 $ea $18 $c1
    ret                                                ;; 0f:4868 $c9

musicVibratoAndVolumeChannel1:
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4869 $fa $1a $c1
    ld   E, A                                          ;; 0f:486c $5f
    ld   A, [wMusicEndedOnChannel1]                    ;; 0f:486d $fa $2b $c1
    or   A, E                                          ;; 0f:4870 $b3
    ret  NZ                                            ;; 0f:4871 $c0
    ldh  A, [hMusicNoteDurationChannel1Copy]           ;; 0f:4872 $f0 $96
    or   A, A                                          ;; 0f:4874 $b7
    ret  Z                                             ;; 0f:4875 $c8
    ld   A, [wMusicNotePitchChannel1]                  ;; 0f:4876 $fa $29 $c1
    cp   A, $0f                                        ;; 0f:4879 $fe $0f
    ret  Z                                             ;; 0f:487b $c8
    ld   A, [wMusicVibratoDurationChannel1]            ;; 0f:487c $fa $1e $c1
    dec  A                                             ;; 0f:487f $3d
    ld   [wMusicVibratoDurationChannel1], A            ;; 0f:4880 $ea $1e $c1
    jr   NZ, .volume_envelope                          ;; 0f:4883 $20 $32
    ld   A, [wMusicVibratoEnvelopePointerChannel1]     ;; 0f:4885 $fa $21 $c1
    ld   L, A                                          ;; 0f:4888 $6f
    ld   A, [wMusicVibratoEnvelopePointerChannel1.high] ;; 0f:4889 $fa $22 $c1
    ld   H, A                                          ;; 0f:488c $67
    ld   A, [HL+]                                      ;; 0f:488d $2a
    or   A, A                                          ;; 0f:488e $b7
    call Z, musicVibratoAndVolumeJump                  ;; 0f:488f $cc $32 $49
    ld   [wMusicVibratoDurationChannel1], A            ;; 0f:4892 $ea $1e $c1
    ld   A, [HL+]                                      ;; 0f:4895 $2a
    ld   E, A                                          ;; 0f:4896 $5f
    ld   A, L                                          ;; 0f:4897 $7d
    ld   [wMusicVibratoEnvelopePointerChannel1], A     ;; 0f:4898 $ea $21 $c1
    ld   A, H                                          ;; 0f:489b $7c
    ld   [wMusicVibratoEnvelopePointerChannel1.high], A ;; 0f:489c $ea $22 $c1
    ld   D, $00                                        ;; 0f:489f $16 $00
    bit  7, E                                          ;; 0f:48a1 $cb $7b
    jr   Z, .sign_extended                             ;; 0f:48a3 $28 $01
    dec  D                                             ;; 0f:48a5 $15
.sign_extended:
    ld   A, [wMusicCurrentPitchChannel1]               ;; 0f:48a6 $fa $25 $c1
    ld   L, A                                          ;; 0f:48a9 $6f
    ld   A, [wMusicCurrentPitchChannel1.high]          ;; 0f:48aa $fa $26 $c1
    ld   H, A                                          ;; 0f:48ad $67
    add  HL, DE                                        ;; 0f:48ae $19
    ld   A, L                                          ;; 0f:48af $7d
    ldh  [rNR13], A                                    ;; 0f:48b0 $e0 $13
    ld   A, H                                          ;; 0f:48b2 $7c
    and  A, $07                                        ;; 0f:48b3 $e6 $07
    ldh  [rNR14], A                                    ;; 0f:48b5 $e0 $14
.volume_envelope:
    ld   A, [wMusicVolumeDurationChannel1]             ;; 0f:48b7 $fa $2c $c1
    cp   A, $ff                                        ;; 0f:48ba $fe $ff
    ret  Z                                             ;; 0f:48bc $c8
    dec  A                                             ;; 0f:48bd $3d
    ld   [wMusicVolumeDurationChannel1], A             ;; 0f:48be $ea $2c $c1
    ret  NZ                                            ;; 0f:48c1 $c0
    ld   A, [wMusicVolumeEnvelopePointerChannel1]      ;; 0f:48c2 $fa $2f $c1
    ld   L, A                                          ;; 0f:48c5 $6f
    ld   A, [wMusicVolumeEnvelopePointerChannel1.high] ;; 0f:48c6 $fa $30 $c1
    ld   H, A                                          ;; 0f:48c9 $67
    ld   A, [HL+]                                      ;; 0f:48ca $2a
    or   A, A                                          ;; 0f:48cb $b7
    call Z, musicVibratoAndVolumeJump                  ;; 0f:48cc $cc $32 $49
    ld   [wMusicVolumeDurationChannel1], A             ;; 0f:48cf $ea $2c $c1
    ld   A, [HL+]                                      ;; 0f:48d2 $2a
    ldh  [rNR12], A                                    ;; 0f:48d3 $e0 $12
    ld   A, [wMusicCurrentPitchChannel1.high]          ;; 0f:48d5 $fa $26 $c1
    ldh  [rNR14], A                                    ;; 0f:48d8 $e0 $14
    ld   A, L                                          ;; 0f:48da $7d
    ld   [wMusicVolumeEnvelopePointerChannel1], A      ;; 0f:48db $ea $2f $c1
    ld   A, H                                          ;; 0f:48de $7c
    ld   [wMusicVolumeEnvelopePointerChannel1.high], A ;; 0f:48df $ea $30 $c1
    ret                                                ;; 0f:48e2 $c9

musicVibratoAndVolumeChannel3:
    ld   A, [wSoundEffectDurationChannel3]             ;; 0f:48e3 $fa $32 $c1
    ld   E, A                                          ;; 0f:48e6 $5f
    ld   A, [wMusicEndedOnChannel3]                    ;; 0f:48e7 $fa $43 $c1
    or   A, E                                          ;; 0f:48ea $b3
    ret  NZ                                            ;; 0f:48eb $c0
    ldh  A, [hMusicNoteDurationChannel3Copy]           ;; 0f:48ec $f0 $97
    or   A, A                                          ;; 0f:48ee $b7
    ret  Z                                             ;; 0f:48ef $c8
    ld   A, [wMusicNotePitchChannel3]                  ;; 0f:48f0 $fa $41 $c1
    cp   A, $0f                                        ;; 0f:48f3 $fe $0f
    ret  Z                                             ;; 0f:48f5 $c8
    ld   A, [wMusicVibratoDurationChannel3]            ;; 0f:48f6 $fa $36 $c1
    dec  A                                             ;; 0f:48f9 $3d
    ld   [wMusicVibratoDurationChannel3], A            ;; 0f:48fa $ea $36 $c1
    jr   NZ, .return                                   ;; 0f:48fd $20 $32
    ld   A, [wMusicVibratoEnvelopePointerChannel3]     ;; 0f:48ff $fa $39 $c1
    ld   L, A                                          ;; 0f:4902 $6f
    ld   A, [wMusicVibratoEnvelopePointerChannel3.high] ;; 0f:4903 $fa $3a $c1
    ld   H, A                                          ;; 0f:4906 $67
    ld   A, [HL+]                                      ;; 0f:4907 $2a
    or   A, A                                          ;; 0f:4908 $b7
    call Z, musicVibratoAndVolumeJump                  ;; 0f:4909 $cc $32 $49
    ld   [wMusicVibratoDurationChannel3], A            ;; 0f:490c $ea $36 $c1
    ld   A, [HL+]                                      ;; 0f:490f $2a
    ld   E, A                                          ;; 0f:4910 $5f
    ld   A, L                                          ;; 0f:4911 $7d
    ld   [wMusicVibratoEnvelopePointerChannel3], A     ;; 0f:4912 $ea $39 $c1
    ld   A, H                                          ;; 0f:4915 $7c
    ld   [wMusicVibratoEnvelopePointerChannel3.high], A ;; 0f:4916 $ea $3a $c1
    ld   D, $00                                        ;; 0f:4919 $16 $00
    bit  7, E                                          ;; 0f:491b $cb $7b
    jr   Z, .sign_extended                             ;; 0f:491d $28 $01
    dec  D                                             ;; 0f:491f $15
.sign_extended:
    ld   A, [wMusicCurrentPitchChannel3]               ;; 0f:4920 $fa $3d $c1
    ld   L, A                                          ;; 0f:4923 $6f
    ld   A, [wMusicCurrentPitchChannel3.high]          ;; 0f:4924 $fa $3e $c1
    ld   H, A                                          ;; 0f:4927 $67
    add  HL, DE                                        ;; 0f:4928 $19
    ld   A, L                                          ;; 0f:4929 $7d
    ldh  [rNR33], A                                    ;; 0f:492a $e0 $1d
    ld   A, H                                          ;; 0f:492c $7c
    and  A, $07                                        ;; 0f:492d $e6 $07
    ldh  [rNR34], A                                    ;; 0f:492f $e0 $1e
.return:
    ret                                                ;; 0f:4931 $c9

; This does unnecessary writes which would corrupt things if it was writing to RAM instead of ROM
musicVibratoAndVolumeJump:
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
    ld   [wSoundEffectDurationChannel1], A             ;; 0f:495b $ea $1a $c1
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:495e $ea $4a $c1
    xor  A, A                                          ;; 0f:4961 $af
    ldh  [hSFX], A                                     ;; 0f:4962 $e0 $92
    ret                                                ;; 0f:4964 $c9

soundEffectPlayStep:
    ld   A, [wSoundEffectDurationChannel1]             ;; 0f:4965 $fa $1a $c1
    or   A, A                                          ;; 0f:4968 $b7
    jp   Z, .channel4                                  ;; 0f:4969 $ca $bc $49
    dec  A                                             ;; 0f:496c $3d
    ld   [wSoundEffectDurationChannel1], A             ;; 0f:496d $ea $1a $c1
    or   A, A                                          ;; 0f:4970 $b7
    jr   NZ, .channel4                                 ;; 0f:4971 $20 $49
    ld   A, [wSoundEffectInstructionPointerChannel1]   ;; 0f:4973 $fa $c4 $c1
    ld   L, A                                          ;; 0f:4976 $6f
    ld   A, [wSoundEffectInstructionPointerChannel1.high] ;; 0f:4977 $fa $c5 $c1
    ld   H, A                                          ;; 0f:497a $67
.nextInstructionChannel1:
    ld   A, [HL+]                                      ;; 0f:497b $2a
    ld   [wSoundEffectDurationChannel1], A             ;; 0f:497c $ea $1a $c1
    or   A, A                                          ;; 0f:497f $b7
    jr   NZ, soundEffectPlayStep.notTerminatorChannel1 ;; 0f:4980 $20 $05
    call soundEffectRestoreChannel1                    ;; 0f:4982 $cd $4d $41
    jr   soundEffectPlayStep.channel4                  ;; 0f:4985 $18 $35
.notTerminatorChannel1:
    cp   A, $ef                                        ;; 0f:4987 $fe $ef
    jr   NZ, soundEffectPlayStep.notLoopChannel1       ;; 0f:4989 $20 $0f
    ld   A, [HL+]                                      ;; 0f:498b $2a
    ld   C, A                                          ;; 0f:498c $4f
    ld   A, [HL+]                                      ;; 0f:498d $2a
    ld   B, A                                          ;; 0f:498e $47
    ldh  A, [hSoundEffectLoopCounterChannel1]          ;; 0f:498f $f0 $9c
    dec  A                                             ;; 0f:4991 $3d
    ldh  [hSoundEffectLoopCounterChannel1], A          ;; 0f:4992 $e0 $9c
    jr   Z, soundEffectPlayStep.nextInstructionChannel1 ;; 0f:4994 $28 $e5
    ld   L, C                                          ;; 0f:4996 $69
    ld   H, B                                          ;; 0f:4997 $60
    jr   soundEffectPlayStep.nextInstructionChannel1   ;; 0f:4998 $18 $e1
.notLoopChannel1:
    cp   A, $f0                                        ;; 0f:499a $fe $f0
    jr   C, soundEffectPlayStep.playChannel1           ;; 0f:499c $38 $06
    and  A, $0f                                        ;; 0f:499e $e6 $0f
    ldh  [hSoundEffectLoopCounterChannel1], A          ;; 0f:49a0 $e0 $9c
    jr   soundEffectPlayStep.nextInstructionChannel1   ;; 0f:49a2 $18 $d7
.playChannel1:
    ld   C, $10                                        ;; 0f:49a4 $0e $10
    ld   B, $05                                        ;; 0f:49a6 $06 $05
.copyLoop:
    ld   A, [HL+]                                      ;; 0f:49a8 $2a
    ldh  [C], A                                        ;; 0f:49a9 $e2
    inc  C                                             ;; 0f:49aa $0c
    dec  B                                             ;; 0f:49ab $05
    jr   NZ, soundEffectPlayStep.copyLoop              ;; 0f:49ac $20 $fa
    ldh  A, [rNR51]                                    ;; 0f:49ae $f0 $25
    or   A, $11                                        ;; 0f:49b0 $f6 $11
    ldh  [rNR51], A                                    ;; 0f:49b2 $e0 $25
    ld   A, L                                          ;; 0f:49b4 $7d
    ld   [wSoundEffectInstructionPointerChannel1], A   ;; 0f:49b5 $ea $c4 $c1
    ld   A, H                                          ;; 0f:49b8 $7c
    ld   [wSoundEffectInstructionPointerChannel1.high], A ;; 0f:49b9 $ea $c5 $c1
.channel4:
    ld   A, [wSoundEffectDurationChannel4]             ;; 0f:49bc $fa $4a $c1
    or   A, A                                          ;; 0f:49bf $b7
    jr   Z, soundEffectPlayStep.return                 ;; 0f:49c0 $28 $4f
    dec  A                                             ;; 0f:49c2 $3d
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:49c3 $ea $4a $c1
    jr   NZ, soundEffectPlayStep.return                ;; 0f:49c6 $20 $49
    ld   A, [wSoundEffectInstructionPointerChannel4]   ;; 0f:49c8 $fa $c6 $c1
    ld   L, A                                          ;; 0f:49cb $6f
    ld   A, [wSoundEffectInstructionPointerChannel4.high] ;; 0f:49cc $fa $c7 $c1
    ld   H, A                                          ;; 0f:49cf $67
.nextInstructionChannel4:
    ld   A, [HL+]                                      ;; 0f:49d0 $2a
    ld   [wSoundEffectDurationChannel4], A             ;; 0f:49d1 $ea $4a $c1
    or   A, A                                          ;; 0f:49d4 $b7
    jr   NZ, soundEffectPlayStep.notTerminatorChannel4 ;; 0f:49d5 $20 $05
    call soundEffectMuteChannel4                       ;; 0f:49d7 $cd $70 $41
    jr   soundEffectPlayStep.return                    ;; 0f:49da $18 $35
.notTerminatorChannel4:
    cp   A, $ef                                        ;; 0f:49dc $fe $ef
    jr   NZ, soundEffectPlayStep.notLoopChannel4       ;; 0f:49de $20 $0f
    ld   A, [HL+]                                      ;; 0f:49e0 $2a
    ld   C, A                                          ;; 0f:49e1 $4f
    ld   A, [HL+]                                      ;; 0f:49e2 $2a
    ld   B, A                                          ;; 0f:49e3 $47
    ldh  A, [hSoundEffectLoopCounterChannel4]          ;; 0f:49e4 $f0 $9d
    dec  A                                             ;; 0f:49e6 $3d
    ldh  [hSoundEffectLoopCounterChannel4], A          ;; 0f:49e7 $e0 $9d
    jr   Z, soundEffectPlayStep.nextInstructionChannel4 ;; 0f:49e9 $28 $e5
    ld   L, C                                          ;; 0f:49eb $69
    ld   H, B                                          ;; 0f:49ec $60
    jr   soundEffectPlayStep.nextInstructionChannel4   ;; 0f:49ed $18 $e1
.notLoopChannel4:
    cp   A, $f0                                        ;; 0f:49ef $fe $f0
    jr   C, soundEffectPlayStep.notSetCounterChannel4  ;; 0f:49f1 $38 $06
    and  A, $0f                                        ;; 0f:49f3 $e6 $0f
    ldh  [hSoundEffectLoopCounterChannel4], A          ;; 0f:49f5 $e0 $9d
    jr   soundEffectPlayStep.nextInstructionChannel4   ;; 0f:49f7 $18 $d7
.notSetCounterChannel4:
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
.return:
    ret                                                ;; 0f:4a11 $c9

;@music_pointers amount=30
; Music data table, 3 pointers per music:
; Channel 2, Channel 1, Channel 3
; These start at zero, one off of their script numbering
musicSongChannelPointers:
    dw   song00_Channel2, song00_Channel1, song00_Channel3 ;; 0f:4a12 $c9 $4a $0a $4b $7e $4b
    dw   song01_channel2, song01_channel1, song01_channel3 ;; 0f:4a18 $b9 $4b $0f $4c $92 $4c
    dw   song02_channel2, song02_channel1, song02_channel3 ;; 0f:4a1e $c1 $4c $0d $4d $83 $4d
    dw   song03_channel2, song03_channel1, song03_channel3 ;; 0f:4a24 $af $4d $eb $4d $33 $4e
    dw   song04_channel2, song04_channel1, song04_channel3 ;; 0f:4a2a $5e $4e $9e $4e $b0 $4e
    dw   song05_channel2, song05_channel1, song05_channel3 ;; 0f:4a30 $dc $4e $b7 $4f $3d $50
    dw   song06_channel2, song06_channel1, song06_channel3 ;; 0f:4a36 $c9 $50 $5b $51 $d2 $51
    dw   song07_channel2, song07_channel1, song07_channel3 ;; 0f:4a3c $3d $52 $a6 $52 $44 $53
    dw   song08_channel2, song08_channel1, song08_channel3 ;; 0f:4a42 $88 $53 $bf $53 $ef $53
    dw   song09_channel2, song09_channel1, song09_channel3 ;; 0f:4a48 $42 $54 $60 $54 $e5 $54
    dw   song0a_channel2, song0a_channel1, song0a_channel3 ;; 0f:4a4e $6f $55 $be $55 $27 $56
    dw   song0b_channel2, song0b_channel1, song0b_channel3 ;; 0f:4a54 $61 $56 $ad $56 $51 $57
    dw   song0c_channel2, song0c_channel1, song0c_channel3 ;; 0f:4a5a $f5 $57 $97 $58 $10 $59
    dw   song0d_channel2, song0d_channel1, song0d_channel3 ;; 0f:4a60 $37 $59 $3a $5a $c6 $5a
    dw   song0e_channel2, song0e_channel1, song0e_channel3 ;; 0f:4a66 $3c $5b $c8 $5b $aa $5d
    dw   song0f_channel2, song0f_channel1, song0f_channel3 ;; 0f:4a6c $69 $5e $aa $5f $c2 $61
    dw   song10_channel2, song10_channel1, song10_channel3 ;; 0f:4a72 $97 $63 $b2 $63 $be $63
    dw   song11_channel2, song11_channel1, song11_channel3 ;; 0f:4a78 $e9 $62 $2e $63 $71 $63
    dw   song12_channel2, song12_channel1, song12_channel3 ;; 0f:4a7e $d0 $63 $a3 $64 $67 $66
    dw   song13_channel2, song13_channel1, song13_channel3 ;; 0f:4a84 $19 $68 $bd $68 $ff $69
    dw   song14_channel2, song14_channel1, song14_channel3 ;; 0f:4a8a $57 $6b $83 $6c $a9 $6d
    dw   song15_channel2, song15_channel1, song15_channel3 ;; 0f:4a90 $8a $6e $5e $6f $31 $70
    dw   song16_channel2, song16_channel1, song16_channel3 ;; 0f:4a96 $70 $70 $9f $70 $f9 $70
    dw   song17_channel2, song17_channel1, song17_channel3 ;; 0f:4a9c $18 $71 $aa $71 $63 $72
    dw   song18_channel2, song18_channel1, song18_channel3 ;; 0f:4aa2 $49 $73 $1c $74 $6f $75
    dw   song19_channel2, song19_channel1, song19_channel3 ;; 0f:4aa8 $d3 $76 $1c $77 $62 $77
    dw   song1a_channel2, song1a_channel1, song1a_channel3 ;; 0f:4aae $a8 $77 $11 $78 $a3 $78
    dw   song1b_channel2, song1b_channel1, song1b_channel3 ;; 0f:4ab4 $fa $78 $24 $79 $48 $79
    dw   song1c_channel2, song1c_channel1, song1c_channel3 ;; 0f:4aba $6b $79 $84 $79 $9a $79
    dw   song1d_Channel2, song1d_Channel1, song1d_Channel3 ;; 0f:4ac0 $b6 $79 $ea $79 $1d $7a
    db   $ff, $e7, $14                                 ;; 0f:4ac6 ???

song00_Channel2:
    mTEMPO $41                                         ;; 0f:4ac9 $e7 $41
    mVIBRATO frequencyDeltaData                        ;; 0f:4acb $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4ace $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:4ad1 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:4ad3 $e6 $03
.data_0f_4ad5:
    mCOUNTER $02                                       ;; 0f:4ad5 $e3 $02
.data_0f_4ad7:
    mOCTAVE_3                                          ;; 0f:4ad7 $d3
    mD_8                                               ;; 0f:4ad8 $82
    mG_8                                               ;; 0f:4ad9 $87
    mE_0                                               ;; 0f:4ada $04
    mRest_8                                            ;; 0f:4adb $8f
    mE_8                                               ;; 0f:4adc $84
    mF_8                                               ;; 0f:4add $85
    mE_8                                               ;; 0f:4ade $84
    mD_8                                               ;; 0f:4adf $82
    mC_8                                               ;; 0f:4ae0 $80
    mD_8                                               ;; 0f:4ae1 $82
    mG_8                                               ;; 0f:4ae2 $87
    mE_0                                               ;; 0f:4ae3 $04
    mRest_8                                            ;; 0f:4ae4 $8f
    mC_8                                               ;; 0f:4ae5 $80
    mOCTAVE_MINUS_1                                    ;; 0f:4ae6 $dc
    mB_8                                               ;; 0f:4ae7 $8b
    mCPlus_8                                           ;; 0f:4ae8 $8c
    mB_8                                               ;; 0f:4ae9 $8b
    mG_8                                               ;; 0f:4aea $87
    mA_2                                               ;; 0f:4aeb $29
    mWait_8                                            ;; 0f:4aec $8e
    mA_8                                               ;; 0f:4aed $89
    mB_8                                               ;; 0f:4aee $8b
    mCPlus_8                                           ;; 0f:4aef $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4af0 $d8
    mJUMPIF $01, .data_0f_4b01                         ;; 0f:4af1 $eb $01 $01 $4b
    mD_5                                               ;; 0f:4af5 $52
    mOCTAVE_MINUS_1                                    ;; 0f:4af6 $dc
    mA_5                                               ;; 0f:4af7 $59
    mB_4                                               ;; 0f:4af8 $4b
    mCPlus_8                                           ;; 0f:4af9 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4afa $d8
    mD_2                                               ;; 0f:4afb $22
    mC_5                                               ;; 0f:4afc $50
    mD_5                                               ;; 0f:4afd $52
    mREPEAT .data_0f_4ad7                              ;; 0f:4afe $e2 $d7 $4a
.data_0f_4b01:
    mD_5                                               ;; 0f:4b01 $52
    mE_5                                               ;; 0f:4b02 $54
    mD_4                                               ;; 0f:4b03 $42
    mC_8                                               ;; 0f:4b04 $80
    mC_0                                               ;; 0f:4b05 $00
    mRest_0                                            ;; 0f:4b06 $0f
    mJUMP .data_0f_4ad5                                ;; 0f:4b07 $e1 $d5 $4a

song00_Channel1:
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:4b0a $e4 $75 $7a
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:4b0d $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:4b10 $e5 $40
    mSTEREOPAN $02                                     ;; 0f:4b12 $e6 $02
.data_0f_4b14:
    mCOUNTER $02                                       ;; 0f:4b14 $e3 $02
.data_0f_4b16:
    mSTEREOPAN $02                                     ;; 0f:4b16 $e6 $02
    mOCTAVE_1                                          ;; 0f:4b18 $d1
    mRest_8                                            ;; 0f:4b19 $8f
    mG_8                                               ;; 0f:4b1a $87
    mCPlus_8                                           ;; 0f:4b1b $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4b1c $d8
    mD_8                                               ;; 0f:4b1d $82
    mE_8                                               ;; 0f:4b1e $84
    mD_8                                               ;; 0f:4b1f $82
    mC_8                                               ;; 0f:4b20 $80
    mOCTAVE_MINUS_1                                    ;; 0f:4b21 $dc
    mG_8                                               ;; 0f:4b22 $87
    mRest_8                                            ;; 0f:4b23 $8f
    mG_8                                               ;; 0f:4b24 $87
    mOCTAVE_PLUS_1                                     ;; 0f:4b25 $d8
    mE_8                                               ;; 0f:4b26 $84
    mC_8                                               ;; 0f:4b27 $80
    mA_8                                               ;; 0f:4b28 $89
    mG_8                                               ;; 0f:4b29 $87
    mF_8                                               ;; 0f:4b2a $85
    mE_8                                               ;; 0f:4b2b $84
    mSTEREOPAN $01                                     ;; 0f:4b2c $e6 $01
    mRest_8                                            ;; 0f:4b2e $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4b2f $dc
    mA_8                                               ;; 0f:4b30 $89
    mCPlus_8                                           ;; 0f:4b31 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4b32 $d8
    mE_8                                               ;; 0f:4b33 $84
    mA_8                                               ;; 0f:4b34 $89
    mE_8                                               ;; 0f:4b35 $84
    mD_8                                               ;; 0f:4b36 $82
    mE_8                                               ;; 0f:4b37 $84
    mC_5                                               ;; 0f:4b38 $50
    mE_5                                               ;; 0f:4b39 $54
    mG_5                                               ;; 0f:4b3a $57
    mD_5                                               ;; 0f:4b3b $52
    mSTEREOPAN $02                                     ;; 0f:4b3c $e6 $02
    mRest_8                                            ;; 0f:4b3e $8f
    mC_8                                               ;; 0f:4b3f $80
    mF_8                                               ;; 0f:4b40 $85
    mG_8                                               ;; 0f:4b41 $87
    mF_5                                               ;; 0f:4b42 $55
    mG_5                                               ;; 0f:4b43 $57
    mJUMPIF $01, .data_0f_4b5c                         ;; 0f:4b44 $eb $01 $5c $4b
    mFis_8                                             ;; 0f:4b48 $86
    mE_8                                               ;; 0f:4b49 $84
    mFis_8                                             ;; 0f:4b4a $86
    mG_8                                               ;; 0f:4b4b $87
    mFis_5                                             ;; 0f:4b4c $56
    mA_5                                               ;; 0f:4b4d $59
    mSTEREOPAN $01                                     ;; 0f:4b4e $e6 $01
    mRest_8                                            ;; 0f:4b50 $8f
    mD_8                                               ;; 0f:4b51 $82
    mG_8                                               ;; 0f:4b52 $87
    mD_8                                               ;; 0f:4b53 $82
    mF_8                                               ;; 0f:4b54 $85
    mC_8                                               ;; 0f:4b55 $80
    mG_8                                               ;; 0f:4b56 $87
    mD_8                                               ;; 0f:4b57 $82
    mOCTAVE_MINUS_1                                    ;; 0f:4b58 $dc
    mREPEAT .data_0f_4b16                              ;; 0f:4b59 $e2 $16 $4b
.data_0f_4b5c:
    mSTEREOPAN $02                                     ;; 0f:4b5c $e6 $02
    mF_5                                               ;; 0f:4b5e $55
    mA_5                                               ;; 0f:4b5f $59
    mB_8                                               ;; 0f:4b60 $8b
    mA_8                                               ;; 0f:4b61 $89
    mG_8                                               ;; 0f:4b62 $87
    mF_8                                               ;; 0f:4b63 $85
    mSTEREOPAN $01                                     ;; 0f:4b64 $e6 $01
    mRest_8                                            ;; 0f:4b66 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4b67 $dc
    mG_8                                               ;; 0f:4b68 $87
    mCPlus_8                                           ;; 0f:4b69 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4b6a $d8
    mD_8                                               ;; 0f:4b6b $82
    mE_8                                               ;; 0f:4b6c $84
    mD_8                                               ;; 0f:4b6d $82
    mC_8                                               ;; 0f:4b6e $80
    mOCTAVE_MINUS_1                                    ;; 0f:4b6f $dc
    mG_8                                               ;; 0f:4b70 $87
    mRest_8                                            ;; 0f:4b71 $8f
    mG_8                                               ;; 0f:4b72 $87
    mCPlus_8                                           ;; 0f:4b73 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4b74 $d8
    mD_8                                               ;; 0f:4b75 $82
    mE_8                                               ;; 0f:4b76 $84
    mD_8                                               ;; 0f:4b77 $82
    mE_8                                               ;; 0f:4b78 $84
    mF_8                                               ;; 0f:4b79 $85
    mOCTAVE_MINUS_1                                    ;; 0f:4b7a $dc
    mJUMP .data_0f_4b14                                ;; 0f:4b7b $e1 $14 $4b

song00_Channel3:
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:4b7e $e4 $75 $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:4b81 $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:4b84 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:4b86 $e6 $03
.data_0f_4b88:
    mCOUNTER $02                                       ;; 0f:4b88 $e3 $02
    mOCTAVE_1                                          ;; 0f:4b8a $d1
    mCPlus_1                                           ;; 0f:4b8b $1c
    mG_5                                               ;; 0f:4b8c $57
    mCPlus_1                                           ;; 0f:4b8d $1c
    mB_5                                               ;; 0f:4b8e $5b
    mA_1                                               ;; 0f:4b8f $19
    mOCTAVE_PLUS_1                                     ;; 0f:4b90 $d8
    mE_5                                               ;; 0f:4b91 $54
    mOCTAVE_MINUS_1                                    ;; 0f:4b92 $dc
    mA_2                                               ;; 0f:4b93 $29
    mG_2                                               ;; 0f:4b94 $27
    mOCTAVE_PLUS_1                                     ;; 0f:4b95 $d8
    mF_1                                               ;; 0f:4b96 $15
    mE_5                                               ;; 0f:4b97 $54
    mD_1                                               ;; 0f:4b98 $12
    mA_5                                               ;; 0f:4b99 $59
    mG_5                                               ;; 0f:4b9a $57
    mOCTAVE_MINUS_1                                    ;; 0f:4b9b $dc
    mG_5                                               ;; 0f:4b9c $57
    mA_5                                               ;; 0f:4b9d $59
    mB_5                                               ;; 0f:4b9e $5b
    mCPlus_1                                           ;; 0f:4b9f $1c
    mG_5                                               ;; 0f:4ba0 $57
    mCPlus_1                                           ;; 0f:4ba1 $1c
    mB_5                                               ;; 0f:4ba2 $5b
    mA_1                                               ;; 0f:4ba3 $19
    mOCTAVE_PLUS_1                                     ;; 0f:4ba4 $d8
    mE_5                                               ;; 0f:4ba5 $54
    mOCTAVE_MINUS_1                                    ;; 0f:4ba6 $dc
    mA_2                                               ;; 0f:4ba7 $29
    mG_2                                               ;; 0f:4ba8 $27
    mOCTAVE_PLUS_1                                     ;; 0f:4ba9 $d8
    mF_1                                               ;; 0f:4baa $15
    mE_5                                               ;; 0f:4bab $54
    mD_2                                               ;; 0f:4bac $22
    mG_5                                               ;; 0f:4bad $57
    mOCTAVE_MINUS_1                                    ;; 0f:4bae $dc
    mG_5                                               ;; 0f:4baf $57
    mCPlus_1                                           ;; 0f:4bb0 $1c
    mG_5                                               ;; 0f:4bb1 $57
    mCPlus_2                                           ;; 0f:4bb2 $2c
    mG_2                                               ;; 0f:4bb3 $27
    mJUMP .data_0f_4b88                                ;; 0f:4bb4 $e1 $88 $4b
    db   $e7, $14                                      ;; 0f:4bb7 ??

song01_channel2:
    mTEMPO $4b                                         ;; 0f:4bb9 $e7 $4b
    mVIBRATO frequencyDeltaData                        ;; 0f:4bbb $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4bbe $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:4bc1 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:4bc3 $e6 $03
    mOCTAVE_2                                          ;; 0f:4bc5 $d2
    mG_5                                               ;; 0f:4bc6 $57
    mA_5                                               ;; 0f:4bc7 $59
.data_0f_4bc8:
    mAis_4                                             ;; 0f:4bc8 $4a
    mDis_8                                             ;; 0f:4bc9 $83
    mAis_1                                             ;; 0f:4bca $1a
    mA_5                                               ;; 0f:4bcb $59
    mCPlus_5                                           ;; 0f:4bcc $5c
    mAis_5                                             ;; 0f:4bcd $5a
    mA_4                                               ;; 0f:4bce $49
    mD_8                                               ;; 0f:4bcf $82
    mA_2                                               ;; 0f:4bd0 $29
    mAis_5                                             ;; 0f:4bd1 $5a
    mG_8                                               ;; 0f:4bd2 $87
    mA_8                                               ;; 0f:4bd3 $89
    mAis_5                                             ;; 0f:4bd4 $5a
    mCPlus_5                                           ;; 0f:4bd5 $5c
    mOCTAVE_PLUS_1                                     ;; 0f:4bd6 $d8
    mD_4                                               ;; 0f:4bd7 $42
    mDis_8                                             ;; 0f:4bd8 $83
    mC_5                                               ;; 0f:4bd9 $50
    mOCTAVE_MINUS_1                                    ;; 0f:4bda $dc
    mAis_5                                             ;; 0f:4bdb $5a
    mA_5                                               ;; 0f:4bdc $59
    mOCTAVE_PLUS_1                                     ;; 0f:4bdd $d8
    mD_5                                               ;; 0f:4bde $52
    mC_5                                               ;; 0f:4bdf $50
    mD_5                                               ;; 0f:4be0 $52
    mOCTAVE_MINUS_1                                    ;; 0f:4be1 $dc
    mAis_2                                             ;; 0f:4be2 $2a
    mCPlus_2                                           ;; 0f:4be3 $2c
    mOCTAVE_PLUS_1                                     ;; 0f:4be4 $d8
    mD_2                                               ;; 0f:4be5 $22
    mWait_8                                            ;; 0f:4be6 $8e
    mD_8                                               ;; 0f:4be7 $82
    mDis_8                                             ;; 0f:4be8 $83
    mF_8                                               ;; 0f:4be9 $85
    mG_2                                               ;; 0f:4bea $27
    mWait_8                                            ;; 0f:4beb $8e
    mF_8                                               ;; 0f:4bec $85
    mDis_8                                             ;; 0f:4bed $83
    mD_8                                               ;; 0f:4bee $82
    mC_5                                               ;; 0f:4bef $50
    mA_5                                               ;; 0f:4bf0 $59
    mG_5                                               ;; 0f:4bf1 $57
    mA_5                                               ;; 0f:4bf2 $59
    mF_2                                               ;; 0f:4bf3 $25
    mWait_8                                            ;; 0f:4bf4 $8e
    mDis_8                                             ;; 0f:4bf5 $83
    mD_8                                               ;; 0f:4bf6 $82
    mC_8                                               ;; 0f:4bf7 $80
    mOCTAVE_MINUS_1                                    ;; 0f:4bf8 $dc
    mB_2                                               ;; 0f:4bf9 $2b
    mCPlus_5                                           ;; 0f:4bfa $5c
    mOCTAVE_PLUS_1                                     ;; 0f:4bfb $d8
    mD_5                                               ;; 0f:4bfc $52
    mDis_2                                             ;; 0f:4bfd $23
    mWait_8                                            ;; 0f:4bfe $8e
    mD_8                                               ;; 0f:4bff $82
    mC_8                                               ;; 0f:4c00 $80
    mD_8                                               ;; 0f:4c01 $82
    mDis_5                                             ;; 0f:4c02 $53
    mF_5                                               ;; 0f:4c03 $55
    mC_5                                               ;; 0f:4c04 $50
    mDis_5                                             ;; 0f:4c05 $53
    mD_0                                               ;; 0f:4c06 $02
    mWait_5                                            ;; 0f:4c07 $5e
    mRest_5                                            ;; 0f:4c08 $5f
    mOCTAVE_MINUS_1                                    ;; 0f:4c09 $dc
    mG_5                                               ;; 0f:4c0a $57
    mA_5                                               ;; 0f:4c0b $59
    mJUMP .data_0f_4bc8                                ;; 0f:4c0c $e1 $c8 $4b

song01_channel1:
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:4c0f $e4 $75 $7a
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:4c12 $e0 $c8 $7a
    mDUTYCYCLE $00                                     ;; 0f:4c15 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:4c17 $e6 $03
    mRest_2                                            ;; 0f:4c19 $2f
.data_0f_4c1a:
    mRest_8                                            ;; 0f:4c1a $8f
    mOCTAVE_1                                          ;; 0f:4c1b $d1
    mG_8                                               ;; 0f:4c1c $87
    mCPlus_8                                           ;; 0f:4c1d $8c
    mG_8                                               ;; 0f:4c1e $87
    mOCTAVE_PLUS_1                                     ;; 0f:4c1f $d8
    mDis_8                                             ;; 0f:4c20 $83
    mOCTAVE_MINUS_1                                    ;; 0f:4c21 $dc
    mG_8                                               ;; 0f:4c22 $87
    mCPlus_8                                           ;; 0f:4c23 $8c
    mG_8                                               ;; 0f:4c24 $87
    mRest_8                                            ;; 0f:4c25 $8f
    mCPlus_8                                           ;; 0f:4c26 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4c27 $d8
    mF_8                                               ;; 0f:4c28 $85
    mC_8                                               ;; 0f:4c29 $80
    mDis_5                                             ;; 0f:4c2a $53
    mC_5                                               ;; 0f:4c2b $50
    mRest_8                                            ;; 0f:4c2c $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c2d $dc
    mF_8                                               ;; 0f:4c2e $85
    mAis_8                                             ;; 0f:4c2f $8a
    mF_8                                               ;; 0f:4c30 $85
    mOCTAVE_PLUS_1                                     ;; 0f:4c31 $d8
    mD_8                                               ;; 0f:4c32 $82
    mOCTAVE_MINUS_1                                    ;; 0f:4c33 $dc
    mF_8                                               ;; 0f:4c34 $85
    mAis_8                                             ;; 0f:4c35 $8a
    mF_8                                               ;; 0f:4c36 $85
    mRest_8                                            ;; 0f:4c37 $8f
    mAis_8                                             ;; 0f:4c38 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:4c39 $d8
    mDis_8                                             ;; 0f:4c3a $83
    mF_8                                               ;; 0f:4c3b $85
    mG_5                                               ;; 0f:4c3c $57
    mF_5                                               ;; 0f:4c3d $55
    mRest_8                                            ;; 0f:4c3e $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c3f $dc
    mG_8                                               ;; 0f:4c40 $87
    mCPlus_8                                           ;; 0f:4c41 $8c
    mG_8                                               ;; 0f:4c42 $87
    mOCTAVE_PLUS_1                                     ;; 0f:4c43 $d8
    mDis_8                                             ;; 0f:4c44 $83
    mOCTAVE_MINUS_1                                    ;; 0f:4c45 $dc
    mG_8                                               ;; 0f:4c46 $87
    mCPlus_8                                           ;; 0f:4c47 $8c
    mG_8                                               ;; 0f:4c48 $87
    mRest_8                                            ;; 0f:4c49 $8f
    mCPlus_8                                           ;; 0f:4c4a $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4c4b $d8
    mFis_8                                             ;; 0f:4c4c $86
    mC_8                                               ;; 0f:4c4d $80
    mG_5                                               ;; 0f:4c4e $57
    mA_5                                               ;; 0f:4c4f $59
    mD_8                                               ;; 0f:4c50 $82
    mG_8                                               ;; 0f:4c51 $87
    mF_8                                               ;; 0f:4c52 $85
    mG_8                                               ;; 0f:4c53 $87
    mF_8                                               ;; 0f:4c54 $85
    mC_8                                               ;; 0f:4c55 $80
    mD_8                                               ;; 0f:4c56 $82
    mDis_8                                             ;; 0f:4c57 $83
    mF_5                                               ;; 0f:4c58 $55
    mG_5                                               ;; 0f:4c59 $57
    mGis_2                                             ;; 0f:4c5a $28
    mRest_8                                            ;; 0f:4c5b $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c5c $dc
    mAis_8                                             ;; 0f:4c5d $8a
    mOCTAVE_PLUS_1                                     ;; 0f:4c5e $d8
    mDis_8                                             ;; 0f:4c5f $83
    mOCTAVE_MINUS_1                                    ;; 0f:4c60 $dc
    mAis_8                                             ;; 0f:4c61 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:4c62 $d8
    mG_2                                               ;; 0f:4c63 $27
    mA_5                                               ;; 0f:4c64 $59
    mOCTAVE_PLUS_1                                     ;; 0f:4c65 $d8
    mF_5                                               ;; 0f:4c66 $55
    mDis_5                                             ;; 0f:4c67 $53
    mC_5                                               ;; 0f:4c68 $50
    mRest_8                                            ;; 0f:4c69 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c6a $dc
    mC_8                                               ;; 0f:4c6b $80
    mGis_8                                             ;; 0f:4c6c $88
    mG_8                                               ;; 0f:4c6d $87
    mF_2                                               ;; 0f:4c6e $25
    mRest_8                                            ;; 0f:4c6f $8f
    mD_8                                               ;; 0f:4c70 $82
    mG_8                                               ;; 0f:4c71 $87
    mD_8                                               ;; 0f:4c72 $82
    mF_5                                               ;; 0f:4c73 $55
    mG_5                                               ;; 0f:4c74 $57
    mRest_8                                            ;; 0f:4c75 $8f
    mC_8                                               ;; 0f:4c76 $80
    mDis_8                                             ;; 0f:4c77 $83
    mC_8                                               ;; 0f:4c78 $80
    mG_2                                               ;; 0f:4c79 $27
    mRest_8                                            ;; 0f:4c7a $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c7b $dc
    mA_8                                               ;; 0f:4c7c $89
    mCPlus_8                                           ;; 0f:4c7d $8c
    mA_8                                               ;; 0f:4c7e $89
    mOCTAVE_PLUS_1                                     ;; 0f:4c7f $d8
    mDis_5                                             ;; 0f:4c80 $53
    mG_5                                               ;; 0f:4c81 $57
    mRest_8                                            ;; 0f:4c82 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4c83 $dc
    mA_8                                               ;; 0f:4c84 $89
    mOCTAVE_PLUS_1                                     ;; 0f:4c85 $d8
    mE_8                                               ;; 0f:4c86 $84
    mC_8                                               ;; 0f:4c87 $80
    mG_8                                               ;; 0f:4c88 $87
    mA_8                                               ;; 0f:4c89 $89
    mE_8                                               ;; 0f:4c8a $84
    mG_8                                               ;; 0f:4c8b $87
    mFis_2                                             ;; 0f:4c8c $26
    mC_5                                               ;; 0f:4c8d $50
    mD_5                                               ;; 0f:4c8e $52
    mJUMP .data_0f_4c1a                                ;; 0f:4c8f $e1 $1a $4c

song01_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:4c92 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:4c95 $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:4c98 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:4c9a $e6 $03
    mRest_2                                            ;; 0f:4c9c $2f
    mOCTAVE_2                                          ;; 0f:4c9d $d2
.data_0f_4c9e:
    mC_0                                               ;; 0f:4c9e $00
    mF_0                                               ;; 0f:4c9f $05
    mOCTAVE_MINUS_1                                    ;; 0f:4ca0 $dc
    mAis_0                                             ;; 0f:4ca1 $0a
    mOCTAVE_PLUS_1                                     ;; 0f:4ca2 $d8
    mDis_1                                             ;; 0f:4ca3 $13
    mD_5                                               ;; 0f:4ca4 $52
    mC_0                                               ;; 0f:4ca5 $00
    mD_2                                               ;; 0f:4ca6 $22
    mE_5                                               ;; 0f:4ca7 $54
    mFis_5                                             ;; 0f:4ca8 $56
    mG_2                                               ;; 0f:4ca9 $27
    mA_2                                               ;; 0f:4caa $29
    mAis_2                                             ;; 0f:4cab $2a
    mB_2                                               ;; 0f:4cac $2b
    mDis_0                                             ;; 0f:4cad $03
    mF_0                                               ;; 0f:4cae $05
    mGis_0                                             ;; 0f:4caf $08
    mG_5                                               ;; 0f:4cb0 $57
    mOCTAVE_MINUS_1                                    ;; 0f:4cb1 $dc
    mG_5                                               ;; 0f:4cb2 $57
    mA_5                                               ;; 0f:4cb3 $59
    mB_5                                               ;; 0f:4cb4 $5b
    mCPlus_0                                           ;; 0f:4cb5 $0c
    mA_0                                               ;; 0f:4cb6 $09
    mOCTAVE_PLUS_1                                     ;; 0f:4cb7 $d8
    mD_0                                               ;; 0f:4cb8 $02
    mWait_2                                            ;; 0f:4cb9 $2e
    mE_5                                               ;; 0f:4cba $54
    mFis_5                                             ;; 0f:4cbb $56
    mJUMP .data_0f_4c9e                                ;; 0f:4cbc $e1 $9e $4c
    db   $e7, $14                                      ;; 0f:4cbf ??

song02_channel2:
    mTEMPO $39                                         ;; 0f:4cc1 $e7 $39
    mVIBRATO frequencyDeltaData                        ;; 0f:4cc3 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4cc6 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:4cc9 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:4ccb $e6 $03
    mOCTAVE_2                                          ;; 0f:4ccd $d2
    mRest_0                                            ;; 0f:4cce $0f
    mRest_0                                            ;; 0f:4ccf $0f
.data_0f_4cd0:
    mTEMPO $39                                         ;; 0f:4cd0 $e7 $39
    mA_2                                               ;; 0f:4cd2 $29
    mWait_8                                            ;; 0f:4cd3 $8e
    mGis_10                                            ;; 0f:4cd4 $a8
    mA_10                                              ;; 0f:4cd5 $a9
    mB_10                                              ;; 0f:4cd6 $ab
    mA_10                                              ;; 0f:4cd7 $a9
    mGis_10                                            ;; 0f:4cd8 $a8
    mA_10                                              ;; 0f:4cd9 $a9
    mCis_2                                             ;; 0f:4cda $21
    mWait_8                                            ;; 0f:4cdb $8e
    mGis_10                                            ;; 0f:4cdc $a8
    mA_10                                              ;; 0f:4cdd $a9
    mB_10                                              ;; 0f:4cde $ab
    mA_10                                              ;; 0f:4cdf $a9
    mGis_10                                            ;; 0f:4ce0 $a8
    mA_10                                              ;; 0f:4ce1 $a9
    mGis_5                                             ;; 0f:4ce2 $58
    mFis_2                                             ;; 0f:4ce3 $26
    mE_8                                               ;; 0f:4ce4 $84
    mD_8                                               ;; 0f:4ce5 $82
    mCis_2                                             ;; 0f:4ce6 $21
    mWait_8                                            ;; 0f:4ce7 $8e
    mRest_8                                            ;; 0f:4ce8 $8f
    mFis_10                                            ;; 0f:4ce9 $a6
    mGis_10                                            ;; 0f:4cea $a8
    mA_10                                              ;; 0f:4ceb $a9
    mFis_10                                            ;; 0f:4cec $a6
    mOCTAVE_PLUS_1                                     ;; 0f:4ced $d8
    mD_4                                               ;; 0f:4cee $42
    mOCTAVE_MINUS_1                                    ;; 0f:4cef $dc
    mA_8                                               ;; 0f:4cf0 $89
    mGis_5                                             ;; 0f:4cf1 $58
    mGis_10                                            ;; 0f:4cf2 $a8
    mA_10                                              ;; 0f:4cf3 $a9
    mB_10                                              ;; 0f:4cf4 $ab
    mGis_10                                            ;; 0f:4cf5 $a8
    mCisPlus_4                                         ;; 0f:4cf6 $4d
    mGis_8                                             ;; 0f:4cf7 $88
    mFis_5                                             ;; 0f:4cf8 $56
    mFis_10                                            ;; 0f:4cf9 $a6
    mGis_10                                            ;; 0f:4cfa $a8
    mA_10                                              ;; 0f:4cfb $a9
    mFis_10                                            ;; 0f:4cfc $a6
    mB_5                                               ;; 0f:4cfd $5b
    mA_5                                               ;; 0f:4cfe $59
    mGis_8                                             ;; 0f:4cff $88
    mFis_8                                             ;; 0f:4d00 $86
    mF_8                                               ;; 0f:4d01 $85
    mFis_8                                             ;; 0f:4d02 $86
    mGis_2                                             ;; 0f:4d03 $28
    mRest_8                                            ;; 0f:4d04 $8f
    mTEMPO $37                                         ;; 0f:4d05 $e7 $37
    mF_8                                               ;; 0f:4d07 $85
    mFis_8                                             ;; 0f:4d08 $86
    mGis_8                                             ;; 0f:4d09 $88
    mREPEAT .data_0f_4cd0                              ;; 0f:4d0a $e2 $d0 $4c

song02_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:4d0d $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:4d10 $e0 $c4 $7a
    mDUTYCYCLE $80                                     ;; 0f:4d13 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:4d15 $e6 $03
    mOCTAVE_3                                          ;; 0f:4d17 $d3
    mFis_8                                             ;; 0f:4d18 $86
    mOCTAVE_PLUS_1                                     ;; 0f:4d19 $d8
    mCis_8                                             ;; 0f:4d1a $81
    mOCTAVE_MINUS_1                                    ;; 0f:4d1b $dc
    mB_8                                               ;; 0f:4d1c $8b
    mCisPlus_8                                         ;; 0f:4d1d $8d
    mA_8                                               ;; 0f:4d1e $89
    mCisPlus_8                                         ;; 0f:4d1f $8d
    mGis_8                                             ;; 0f:4d20 $88
    mCisPlus_8                                         ;; 0f:4d21 $8d
    mFis_8                                             ;; 0f:4d22 $86
    mCisPlus_8                                         ;; 0f:4d23 $8d
    mB_8                                               ;; 0f:4d24 $8b
    mCisPlus_8                                         ;; 0f:4d25 $8d
    mA_8                                               ;; 0f:4d26 $89
    mCisPlus_8                                         ;; 0f:4d27 $8d
    mGis_8                                             ;; 0f:4d28 $88
    mCisPlus_8                                         ;; 0f:4d29 $8d
    mOCTAVE_MINUS_1                                    ;; 0f:4d2a $dc
.data_0f_4d2b:
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:4d2b $e0 $c8 $7a
    mDUTYCYCLE $00                                     ;; 0f:4d2e $e5 $00
    mSTEREOPAN $02                                     ;; 0f:4d30 $e6 $02
    mRest_8                                            ;; 0f:4d32 $8f
    mCis_8                                             ;; 0f:4d33 $81
    mOCTAVE_MINUS_1                                    ;; 0f:4d34 $dc
    mB_8                                               ;; 0f:4d35 $8b
    mCisPlus_8                                         ;; 0f:4d36 $8d
    mA_8                                               ;; 0f:4d37 $89
    mCisPlus_8                                         ;; 0f:4d38 $8d
    mGis_8                                             ;; 0f:4d39 $88
    mCisPlus_8                                         ;; 0f:4d3a $8d
    mSTEREOPAN $01                                     ;; 0f:4d3b $e6 $01
    mRest_8                                            ;; 0f:4d3d $8f
    mB_8                                               ;; 0f:4d3e $8b
    mA_8                                               ;; 0f:4d3f $89
    mB_8                                               ;; 0f:4d40 $8b
    mGis_8                                             ;; 0f:4d41 $88
    mB_8                                               ;; 0f:4d42 $8b
    mA_8                                               ;; 0f:4d43 $89
    mB_8                                               ;; 0f:4d44 $8b
    mSTEREOPAN $02                                     ;; 0f:4d45 $e6 $02
    mRest_8                                            ;; 0f:4d47 $8f
    mA_8                                               ;; 0f:4d48 $89
    mGis_8                                             ;; 0f:4d49 $88
    mA_8                                               ;; 0f:4d4a $89
    mFis_8                                             ;; 0f:4d4b $86
    mA_8                                               ;; 0f:4d4c $89
    mGis_8                                             ;; 0f:4d4d $88
    mA_8                                               ;; 0f:4d4e $89
    mSTEREOPAN $01                                     ;; 0f:4d4f $e6 $01
    mRest_8                                            ;; 0f:4d51 $8f
    mGis_8                                             ;; 0f:4d52 $88
    mFis_8                                             ;; 0f:4d53 $86
    mGis_8                                             ;; 0f:4d54 $88
    mE_8                                               ;; 0f:4d55 $84
    mGis_8                                             ;; 0f:4d56 $88
    mFis_8                                             ;; 0f:4d57 $86
    mGis_8                                             ;; 0f:4d58 $88
    mSTEREOPAN $02                                     ;; 0f:4d59 $e6 $02
    mRest_8                                            ;; 0f:4d5b $8f
    mA_8                                               ;; 0f:4d5c $89
    mFis_8                                             ;; 0f:4d5d $86
    mA_8                                               ;; 0f:4d5e $89
    mRest_8                                            ;; 0f:4d5f $8f
    mB_8                                               ;; 0f:4d60 $8b
    mGis_8                                             ;; 0f:4d61 $88
    mB_8                                               ;; 0f:4d62 $8b
    mSTEREOPAN $01                                     ;; 0f:4d63 $e6 $01
    mRest_8                                            ;; 0f:4d65 $8f
    mA_8                                               ;; 0f:4d66 $89
    mE_8                                               ;; 0f:4d67 $84
    mB_8                                               ;; 0f:4d68 $8b
    mRest_8                                            ;; 0f:4d69 $8f
    mA_8                                               ;; 0f:4d6a $89
    mFis_8                                             ;; 0f:4d6b $86
    mA_8                                               ;; 0f:4d6c $89
    mSTEREOPAN $03                                     ;; 0f:4d6d $e6 $03
    mRest_8                                            ;; 0f:4d6f $8f
    mFis_8                                             ;; 0f:4d70 $86
    mD_8                                               ;; 0f:4d71 $82
    mFis_8                                             ;; 0f:4d72 $86
    mRest_8                                            ;; 0f:4d73 $8f
    mFis_8                                             ;; 0f:4d74 $86
    mD_8                                               ;; 0f:4d75 $82
    mFis_8                                             ;; 0f:4d76 $86
    mRest_8                                            ;; 0f:4d77 $8f
    mGis_8                                             ;; 0f:4d78 $88
    mFis_8                                             ;; 0f:4d79 $86
    mGis_8                                             ;; 0f:4d7a $88
    mF_8                                               ;; 0f:4d7b $85
    mGis_8                                             ;; 0f:4d7c $88
    mB_8                                               ;; 0f:4d7d $8b
    mCisPlus_8                                         ;; 0f:4d7e $8d
    mOCTAVE_PLUS_1                                     ;; 0f:4d7f $d8
    mREPEAT .data_0f_4d2b                              ;; 0f:4d80 $e2 $2b $4d

song02_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:4d83 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:4d86 $e8 $dc $7a
    mVOLUME_ENVELOPE $d240                             ;; 0f:4d89 $e0 $40 $d2
    mRest_0                                            ;; 0f:4d8c $0f
    mRest_0                                            ;; 0f:4d8d $0f
.data_0f_4d8e:
    mSTEREOPAN $03                                     ;; 0f:4d8e $e6 $03
    mFis_0                                             ;; 0f:4d90 $06
    mE_0                                               ;; 0f:4d91 $04
    mD_0                                               ;; 0f:4d92 $02
    mCis_0                                             ;; 0f:4d93 $01
    mOCTAVE_MINUS_1                                    ;; 0f:4d94 $dc
    mB_2                                               ;; 0f:4d95 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:4d96 $d8
    mE_2                                               ;; 0f:4d97 $24
    mOCTAVE_MINUS_1                                    ;; 0f:4d98 $dc
    mA_2                                               ;; 0f:4d99 $29
    mOCTAVE_PLUS_1                                     ;; 0f:4d9a $d8
    mD_2                                               ;; 0f:4d9b $22
    mOCTAVE_MINUS_1                                    ;; 0f:4d9c $dc
    mB_0                                               ;; 0f:4d9d $0b
    mCisPlus_2                                         ;; 0f:4d9e $2d
    mRest_8                                            ;; 0f:4d9f $8f
    mSTEREOPAN $02                                     ;; 0f:4da0 $e6 $02
    mCisPlus_8                                         ;; 0f:4da2 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:4da3 $d8
    mSTEREOPAN $03                                     ;; 0f:4da4 $e6 $03
    mDis_8                                             ;; 0f:4da6 $83
    mSTEREOPAN $01                                     ;; 0f:4da7 $e6 $01
    mF_8                                               ;; 0f:4da9 $85
    mREPEAT .data_0f_4d8e                              ;; 0f:4daa $e2 $8e $4d
    mTEMPO $14                                         ;; 0f:4dad $e7 $14

song03_channel2:
    mTEMPO $3e                                         ;; 0f:4daf $e7 $3e
    mVIBRATO frequencyDeltaData                        ;; 0f:4db1 $e4 $4f $7a
.data_0f_4db4:
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4db4 $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:4db7 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:4db9 $e6 $03
    mOCTAVE_3                                          ;; 0f:4dbb $d3
    mE_5                                               ;; 0f:4dbc $54
    mD_8                                               ;; 0f:4dbd $82
    mE_8                                               ;; 0f:4dbe $84
    mD_2                                               ;; 0f:4dbf $22
    mC_5                                               ;; 0f:4dc0 $50
    mOCTAVE_MINUS_1                                    ;; 0f:4dc1 $dc
    mB_8                                               ;; 0f:4dc2 $8b
    mCPlus_8                                           ;; 0f:4dc3 $8c
    mB_5                                               ;; 0f:4dc4 $5b
    mG_5                                               ;; 0f:4dc5 $57
    mA_8                                               ;; 0f:4dc6 $89
    mG_8                                               ;; 0f:4dc7 $87
    mA_8                                               ;; 0f:4dc8 $89
    mB_8                                               ;; 0f:4dc9 $8b
    mCPlus_8                                           ;; 0f:4dca $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4dcb $d8
    mD_8                                               ;; 0f:4dcc $82
    mE_8                                               ;; 0f:4dcd $84
    mFis_8                                             ;; 0f:4dce $86
    mG_5                                               ;; 0f:4dcf $57
    mF_8                                               ;; 0f:4dd0 $85
    mE_8                                               ;; 0f:4dd1 $84
    mD_2                                               ;; 0f:4dd2 $22
    mE_8                                               ;; 0f:4dd3 $84
    mOCTAVE_MINUS_1                                    ;; 0f:4dd4 $dc
    mB_8                                               ;; 0f:4dd5 $8b
    mAis_8                                             ;; 0f:4dd6 $8a
    mB_8                                               ;; 0f:4dd7 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:4dd8 $d8
    mE_5                                               ;; 0f:4dd9 $54
    mD_5                                               ;; 0f:4dda $52
    mC_8                                               ;; 0f:4ddb $80
    mD_8                                               ;; 0f:4ddc $82
    mE_8                                               ;; 0f:4ddd $84
    mC_8                                               ;; 0f:4dde $80
    mA_5                                               ;; 0f:4ddf $59
    mG_8                                               ;; 0f:4de0 $87
    mF_8                                               ;; 0f:4de1 $85
    mE_5                                               ;; 0f:4de2 $54
    mF_8                                               ;; 0f:4de3 $85
    mE_8                                               ;; 0f:4de4 $84
    mD_4                                               ;; 0f:4de5 $42
    mC_8                                               ;; 0f:4de6 $80
    mC_0                                               ;; 0f:4de7 $00
    mJUMP .data_0f_4db4                                ;; 0f:4de8 $e1 $b4 $4d

song03_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:4deb $e4 $4f $7a
.data_0f_4dee:
    mVOLUME_ENVELOPE data_0f_7ab0                      ;; 0f:4dee $e0 $b0 $7a
    mDUTYCYCLE $40                                     ;; 0f:4df1 $e5 $40
    mSTEREOPAN $02                                     ;; 0f:4df3 $e6 $02
    mRest_8                                            ;; 0f:4df5 $8f
    mOCTAVE_2                                          ;; 0f:4df6 $d2
    mE_8                                               ;; 0f:4df7 $84
    mF_8                                               ;; 0f:4df8 $85
    mG_8                                               ;; 0f:4df9 $87
    mRest_8                                            ;; 0f:4dfa $8f
    mD_8                                               ;; 0f:4dfb $82
    mE_8                                               ;; 0f:4dfc $84
    mD_8                                               ;; 0f:4dfd $82
    mRest_8                                            ;; 0f:4dfe $8f
    mE_8                                               ;; 0f:4dff $84
    mD_8                                               ;; 0f:4e00 $82
    mE_8                                               ;; 0f:4e01 $84
    mRest_8                                            ;; 0f:4e02 $8f
    mD_8                                               ;; 0f:4e03 $82
    mOCTAVE_MINUS_1                                    ;; 0f:4e04 $dc
    mB_8                                               ;; 0f:4e05 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:4e06 $d8
    mD_8                                               ;; 0f:4e07 $82
    mF_8                                               ;; 0f:4e08 $85
    mE_8                                               ;; 0f:4e09 $84
    mF_8                                               ;; 0f:4e0a $85
    mG_8                                               ;; 0f:4e0b $87
    mFis_5                                             ;; 0f:4e0c $56
    mG_8                                               ;; 0f:4e0d $87
    mA_8                                               ;; 0f:4e0e $89
    mB_5                                               ;; 0f:4e0f $5b
    mA_8                                               ;; 0f:4e10 $89
    mG_8                                               ;; 0f:4e11 $87
    mF_8                                               ;; 0f:4e12 $85
    mSTEREOPAN $03                                     ;; 0f:4e13 $e6 $03
    mG_8                                               ;; 0f:4e15 $87
    mA_8                                               ;; 0f:4e16 $89
    mB_8                                               ;; 0f:4e17 $8b
    mSTEREOPAN $01                                     ;; 0f:4e18 $e6 $01
    mRest_8                                            ;; 0f:4e1a $8f
    mD_8                                               ;; 0f:4e1b $82
    mE_8                                               ;; 0f:4e1c $84
    mD_8                                               ;; 0f:4e1d $82
    mA_5                                               ;; 0f:4e1e $59
    mB_5                                               ;; 0f:4e1f $5b
    mE_5                                               ;; 0f:4e20 $54
    mA_8                                               ;; 0f:4e21 $89
    mE_8                                               ;; 0f:4e22 $84
    mF_2                                               ;; 0f:4e23 $25
    mRest_8                                            ;; 0f:4e24 $8f
    mCPlus_8                                           ;; 0f:4e25 $8c
    mA_8                                               ;; 0f:4e26 $89
    mG_8                                               ;; 0f:4e27 $87
    mF_8                                               ;; 0f:4e28 $85
    mA_8                                               ;; 0f:4e29 $89
    mG_8                                               ;; 0f:4e2a $87
    mF_8                                               ;; 0f:4e2b $85
    mF_5                                               ;; 0f:4e2c $55
    mE_8                                               ;; 0f:4e2d $84
    mD_8                                               ;; 0f:4e2e $82
    mE_2                                               ;; 0f:4e2f $24
    mJUMP .data_0f_4dee                                ;; 0f:4e30 $e1 $ee $4d

song03_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:4e33 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:4e36 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:4e39 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:4e3b $e6 $03
.data_0f_4e3d:
    mOCTAVE_2                                          ;; 0f:4e3d $d2
    mC_2                                               ;; 0f:4e3e $20
    mG_2                                               ;; 0f:4e3f $27
    mA_2                                               ;; 0f:4e40 $29
    mG_2                                               ;; 0f:4e41 $27
    mF_4                                               ;; 0f:4e42 $45
    mE_8                                               ;; 0f:4e43 $84
    mD_2                                               ;; 0f:4e44 $22
    mG_2                                               ;; 0f:4e45 $27
    mWait_8                                            ;; 0f:4e46 $8e
    mB_8                                               ;; 0f:4e47 $8b
    mCPlus_8                                           ;; 0f:4e48 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:4e49 $d8
    mD_8                                               ;; 0f:4e4a $82
    mOCTAVE_MINUS_1                                    ;; 0f:4e4b $dc
    mE_2                                               ;; 0f:4e4c $24
    mFis_5                                             ;; 0f:4e4d $56
    mGis_5                                             ;; 0f:4e4e $58
    mA_5                                               ;; 0f:4e4f $59
    mG_5                                               ;; 0f:4e50 $57
    mF_2                                               ;; 0f:4e51 $25
    mG_2                                               ;; 0f:4e52 $27
    mG_2                                               ;; 0f:4e53 $27
    mC_2                                               ;; 0f:4e54 $20
    mWait_8                                            ;; 0f:4e55 $8e
    mG_8                                               ;; 0f:4e56 $87
    mF_8                                               ;; 0f:4e57 $85
    mD_8                                               ;; 0f:4e58 $82
    mJUMP .data_0f_4e3d                                ;; 0f:4e59 $e1 $3d $4e
    db   $e7, $14                                      ;; 0f:4e5c ??

song04_channel2:
    mTEMPO $7c                                         ;; 0f:4e5e $e7 $7c
    mVIBRATO frequencyDeltaData.third                  ;; 0f:4e60 $e4 $63 $7a
    mVOLUME_ENVELOPE data_0f_7a8c                      ;; 0f:4e63 $e0 $8c $7a
    mDUTYCYCLE $00                                     ;; 0f:4e66 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:4e68 $e6 $03
    mRest_0                                            ;; 0f:4e6a $0f
    mRest_0                                            ;; 0f:4e6b $0f
    mOCTAVE_3                                          ;; 0f:4e6c $d3
.data_0f_4e6d:
    mD_8                                               ;; 0f:4e6d $82
    mRest_10                                           ;; 0f:4e6e $af
    mCis_10                                            ;; 0f:4e6f $a1
    mD_10                                              ;; 0f:4e70 $a2
    mRest_10                                           ;; 0f:4e71 $af
    mG_10                                              ;; 0f:4e72 $a7
    mRest_10                                           ;; 0f:4e73 $af
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:4e74 $e0 $c2 $7a
    mF_0                                               ;; 0f:4e77 $05
    mVOLUME_ENVELOPE data_0f_7a94                      ;; 0f:4e78 $e0 $94 $7a
    mRest_8                                            ;; 0f:4e7b $8f
    mD_10                                              ;; 0f:4e7c $a2
    mE_10                                              ;; 0f:4e7d $a4
    mF_10                                              ;; 0f:4e7e $a5
    mE_10                                              ;; 0f:4e7f $a4
    mD_10                                              ;; 0f:4e80 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:4e81 $dc
    mB_10                                              ;; 0f:4e82 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:4e83 $d8
    mD_8                                               ;; 0f:4e84 $82
    mRest_10                                           ;; 0f:4e85 $af
    mCis_10                                            ;; 0f:4e86 $a1
    mD_10                                              ;; 0f:4e87 $a2
    mRest_10                                           ;; 0f:4e88 $af
    mG_10                                              ;; 0f:4e89 $a7
    mRest_10                                           ;; 0f:4e8a $af
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:4e8b $e0 $c2 $7a
    mF_0                                               ;; 0f:4e8e $05
    mVOLUME_ENVELOPE data_0f_7a94                      ;; 0f:4e8f $e0 $94 $7a
    mRest_8                                            ;; 0f:4e92 $8f
    mF_10                                              ;; 0f:4e93 $a5
    mG_10                                              ;; 0f:4e94 $a7
    mA_10                                              ;; 0f:4e95 $a9
    mF_10                                              ;; 0f:4e96 $a5
    mD_10                                              ;; 0f:4e97 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:4e98 $dc
    mB_10                                              ;; 0f:4e99 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:4e9a $d8
    mJUMP .data_0f_4e6d                                ;; 0f:4e9b $e1 $6d $4e

song04_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:4e9e $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aa0                      ;; 0f:4ea1 $e0 $a0 $7a
    mDUTYCYCLE $00                                     ;; 0f:4ea4 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:4ea6 $e6 $03
.data_0f_4ea8:
    mRest_8                                            ;; 0f:4ea8 $8f
    mOCTAVE_3                                          ;; 0f:4ea9 $d3
    mCis_10                                            ;; 0f:4eaa $a1
    mWait_12                                           ;; 0f:4eab $ce
    mRest_12                                           ;; 0f:4eac $cf
    mJUMP .data_0f_4ea8                                ;; 0f:4ead $e1 $a8 $4e

song04_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:4eb0 $e4 $4f $7a
    mWAVETABLE data_0f_7aec                            ;; 0f:4eb3 $e8 $ec $7a
    mVOLUME $40                                        ;; 0f:4eb6 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:4eb8 $e6 $03
.data_0f_4eba:
    mOCTAVE_2                                          ;; 0f:4eba $d2
    mG_10                                              ;; 0f:4ebb $a7
    mRest_10                                           ;; 0f:4ebc $af
    mOCTAVE_PLUS_1                                     ;; 0f:4ebd $d8
    mD_10                                              ;; 0f:4ebe $a2
    mWait_12                                           ;; 0f:4ebf $ce
    mRest_12                                           ;; 0f:4ec0 $cf
    mOCTAVE_MINUS_1                                    ;; 0f:4ec1 $dc
    mG_10                                              ;; 0f:4ec2 $a7
    mRest_10                                           ;; 0f:4ec3 $af
    mOCTAVE_PLUS_1                                     ;; 0f:4ec4 $d8
    mD_10                                              ;; 0f:4ec5 $a2
    mWait_12                                           ;; 0f:4ec6 $ce
    mRest_12                                           ;; 0f:4ec7 $cf
    mOCTAVE_MINUS_1                                    ;; 0f:4ec8 $dc
    mF_10                                              ;; 0f:4ec9 $a5
    mRest_10                                           ;; 0f:4eca $af
    mOCTAVE_PLUS_1                                     ;; 0f:4ecb $d8
    mD_10                                              ;; 0f:4ecc $a2
    mWait_12                                           ;; 0f:4ecd $ce
    mRest_12                                           ;; 0f:4ece $cf
    mOCTAVE_MINUS_1                                    ;; 0f:4ecf $dc
    mF_10                                              ;; 0f:4ed0 $a5
    mRest_10                                           ;; 0f:4ed1 $af
    mOCTAVE_PLUS_1                                     ;; 0f:4ed2 $d8
    mD_10                                              ;; 0f:4ed3 $a2
    mWait_12                                           ;; 0f:4ed4 $ce
    mRest_12                                           ;; 0f:4ed5 $cf
    mOCTAVE_MINUS_1                                    ;; 0f:4ed6 $dc
    mJUMP .data_0f_4eba                                ;; 0f:4ed7 $e1 $ba $4e
    db   $e7, $14                                      ;; 0f:4eda ??

song05_channel2:
    mVIBRATO frequencyDeltaData                        ;; 0f:4edc $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4edf $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:4ee2 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:4ee4 $e6 $03
    mTEMPO $82                                         ;; 0f:4ee6 $e7 $82
    mOCTAVE_3                                          ;; 0f:4ee8 $d3
    mD_7                                               ;; 0f:4ee9 $72
    mRest_10                                           ;; 0f:4eea $af
    mD_7                                               ;; 0f:4eeb $72
    mRest_10                                           ;; 0f:4eec $af
    mTEMPO $84                                         ;; 0f:4eed $e7 $84
    mD_10                                              ;; 0f:4eef $a2
    mRest_10                                           ;; 0f:4ef0 $af
    mD_7                                               ;; 0f:4ef1 $72
    mRest_10                                           ;; 0f:4ef2 $af
    mD_10                                              ;; 0f:4ef3 $a2
    mRest_10                                           ;; 0f:4ef4 $af
    mTEMPO $82                                         ;; 0f:4ef5 $e7 $82
    mD_10                                              ;; 0f:4ef7 $a2
    mRest_10                                           ;; 0f:4ef8 $af
    mD_7                                               ;; 0f:4ef9 $72
    mRest_10                                           ;; 0f:4efa $af
    mD_10                                              ;; 0f:4efb $a2
    mRest_10                                           ;; 0f:4efc $af
    mTEMPO $80                                         ;; 0f:4efd $e7 $80
    mD_7                                               ;; 0f:4eff $72
    mRest_10                                           ;; 0f:4f00 $af
    mD_7                                               ;; 0f:4f01 $72
    mRest_10                                           ;; 0f:4f02 $af
    mTEMPO $82                                         ;; 0f:4f03 $e7 $82
    mD_7                                               ;; 0f:4f05 $72
    mRest_10                                           ;; 0f:4f06 $af
    mD_7                                               ;; 0f:4f07 $72
    mRest_10                                           ;; 0f:4f08 $af
    mD_10                                              ;; 0f:4f09 $a2
    mRest_10                                           ;; 0f:4f0a $af
    mD_7                                               ;; 0f:4f0b $72
    mRest_10                                           ;; 0f:4f0c $af
    mD_10                                              ;; 0f:4f0d $a2
    mRest_10                                           ;; 0f:4f0e $af
    mTEMPO $80                                         ;; 0f:4f0f $e7 $80
    mD_10                                              ;; 0f:4f11 $a2
    mRest_10                                           ;; 0f:4f12 $af
    mD_10                                              ;; 0f:4f13 $a2
    mD_10                                              ;; 0f:4f14 $a2
    mD_10                                              ;; 0f:4f15 $a2
    mRest_10                                           ;; 0f:4f16 $af
    mD_10                                              ;; 0f:4f17 $a2
    mRest_10                                           ;; 0f:4f18 $af
    mD_4                                               ;; 0f:4f19 $42
    mRest_8                                            ;; 0f:4f1a $8f
.data_0f_4f1b:
    mSTEREOPAN $03                                     ;; 0f:4f1b $e6 $03
    mCOUNTER $02                                       ;; 0f:4f1d $e3 $02
.data_0f_4f1f:
    mTEMPO $82                                         ;; 0f:4f1f $e7 $82
    mDUTYCYCLE $00                                     ;; 0f:4f21 $e5 $00
    mD_10                                              ;; 0f:4f23 $a2
    mRest_7                                            ;; 0f:4f24 $7f
    mOCTAVE_MINUS_1                                    ;; 0f:4f25 $dc
    mB_10                                              ;; 0f:4f26 $ab
    mRest_10                                           ;; 0f:4f27 $af
    mG_10                                              ;; 0f:4f28 $a7
    mRest_10                                           ;; 0f:4f29 $af
    mE_10                                              ;; 0f:4f2a $a4
    mRest_10                                           ;; 0f:4f2b $af
    mOCTAVE_PLUS_1                                     ;; 0f:4f2c $d8
    mD_10                                              ;; 0f:4f2d $a2
    mRest_10                                           ;; 0f:4f2e $af
    mOCTAVE_MINUS_1                                    ;; 0f:4f2f $dc
    mB_10                                              ;; 0f:4f30 $ab
    mRest_10                                           ;; 0f:4f31 $af
    mG_10                                              ;; 0f:4f32 $a7
    mRest_10                                           ;; 0f:4f33 $af
    mB_10                                              ;; 0f:4f34 $ab
    mRest_7                                            ;; 0f:4f35 $7f
    mG_10                                              ;; 0f:4f36 $a7
    mRest_7                                            ;; 0f:4f37 $7f
    mB_10                                              ;; 0f:4f38 $ab
    mCPlus_10                                          ;; 0f:4f39 $ac
    mB_10                                              ;; 0f:4f3a $ab
    mCPlus_10                                          ;; 0f:4f3b $ac
    mTEMPO $7f                                         ;; 0f:4f3c $e7 $7f
    mB_10                                              ;; 0f:4f3e $ab
    mRest_10                                           ;; 0f:4f3f $af
    mA_10                                              ;; 0f:4f40 $a9
    mRest_10                                           ;; 0f:4f41 $af
    mTEMPO $82                                         ;; 0f:4f42 $e7 $82
    mG_10                                              ;; 0f:4f44 $a7
    mRest_10                                           ;; 0f:4f45 $af
    mTEMPO $7f                                         ;; 0f:4f46 $e7 $7f
    mG_10                                              ;; 0f:4f48 $a7
    mA_10                                              ;; 0f:4f49 $a9
    mTEMPO $82                                         ;; 0f:4f4a $e7 $82
    mG_10                                              ;; 0f:4f4c $a7
    mRest_10                                           ;; 0f:4f4d $af
    mF_10                                              ;; 0f:4f4e $a5
    mRest_10                                           ;; 0f:4f4f $af
    mG_5                                               ;; 0f:4f50 $57
    mRest_8                                            ;; 0f:4f51 $8f
    mF_10                                              ;; 0f:4f52 $a5
    mRest_10                                           ;; 0f:4f53 $af
    mJUMPIF $01, .data_0f_4f6a                         ;; 0f:4f54 $eb $01 $6a $4f
    mG_10                                              ;; 0f:4f58 $a7
    mRest_10                                           ;; 0f:4f59 $af
    mG_10                                              ;; 0f:4f5a $a7
    mB_10                                              ;; 0f:4f5b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:4f5c $d8
    mD_10                                              ;; 0f:4f5d $a2
    mRest_10                                           ;; 0f:4f5e $af
    mE_10                                              ;; 0f:4f5f $a4
    mRest_10                                           ;; 0f:4f60 $af
    mF_10                                              ;; 0f:4f61 $a5
    mG_10                                              ;; 0f:4f62 $a7
    mF_10                                              ;; 0f:4f63 $a5
    mG_10                                              ;; 0f:4f64 $a7
    mF_10                                              ;; 0f:4f65 $a5
    mRest_7                                            ;; 0f:4f66 $7f
    mREPEAT .data_0f_4f1f                              ;; 0f:4f67 $e2 $1f $4f
.data_0f_4f6a:
    mG_10                                              ;; 0f:4f6a $a7
    mRest_10                                           ;; 0f:4f6b $af
    mG_10                                              ;; 0f:4f6c $a7
    mB_10                                              ;; 0f:4f6d $ab
    mOCTAVE_PLUS_1                                     ;; 0f:4f6e $d8
    mD_10                                              ;; 0f:4f6f $a2
    mRest_10                                           ;; 0f:4f70 $af
    mE_10                                              ;; 0f:4f71 $a4
    mRest_10                                           ;; 0f:4f72 $af
    mF_10                                              ;; 0f:4f73 $a5
    mG_10                                              ;; 0f:4f74 $a7
    mF_10                                              ;; 0f:4f75 $a5
    mG_10                                              ;; 0f:4f76 $a7
    mF_10                                              ;; 0f:4f77 $a5
    mRest_7                                            ;; 0f:4f78 $7f
    mE_10                                              ;; 0f:4f79 $a4
    mD_10                                              ;; 0f:4f7a $a2
    mC_10                                              ;; 0f:4f7b $a0
    mD_10                                              ;; 0f:4f7c $a2
    mTEMPO $7f                                         ;; 0f:4f7d $e7 $7f
    mE_10                                              ;; 0f:4f7f $a4
    mRest_10                                           ;; 0f:4f80 $af
    mG_10                                              ;; 0f:4f81 $a7
    mRest_10                                           ;; 0f:4f82 $af
    mTEMPO $82                                         ;; 0f:4f83 $e7 $82
    mFis_7                                             ;; 0f:4f85 $76
    mE_10                                              ;; 0f:4f86 $a4
    mFis_10                                            ;; 0f:4f87 $a6
    mRest_10                                           ;; 0f:4f88 $af
    mA_10                                              ;; 0f:4f89 $a9
    mRest_10                                           ;; 0f:4f8a $af
    mG_10                                              ;; 0f:4f8b $a7
    mF_10                                              ;; 0f:4f8c $a5
    mDis_10                                            ;; 0f:4f8d $a3
    mF_10                                              ;; 0f:4f8e $a5
    mTEMPO $7f                                         ;; 0f:4f8f $e7 $7f
    mG_10                                              ;; 0f:4f91 $a7
    mRest_10                                           ;; 0f:4f92 $af
    mAis_10                                            ;; 0f:4f93 $aa
    mRest_10                                           ;; 0f:4f94 $af
    mTEMPO $82                                         ;; 0f:4f95 $e7 $82
    mA_7                                               ;; 0f:4f97 $79
    mG_10                                              ;; 0f:4f98 $a7
    mF_10                                              ;; 0f:4f99 $a5
    mRest_10                                           ;; 0f:4f9a $af
    mDis_10                                            ;; 0f:4f9b $a3
    mRest_10                                           ;; 0f:4f9c $af
    mDUTYCYCLE $40                                     ;; 0f:4f9d $e5 $40
    mRest_8                                            ;; 0f:4f9f $8f
    mD_10                                              ;; 0f:4fa0 $a2
    mRest_10                                           ;; 0f:4fa1 $af
    mD_10                                              ;; 0f:4fa2 $a2
    mRest_10                                           ;; 0f:4fa3 $af
    mRest_8                                            ;; 0f:4fa4 $8f
    mD_10                                              ;; 0f:4fa5 $a2
    mRest_10                                           ;; 0f:4fa6 $af
    mD_10                                              ;; 0f:4fa7 $a2
    mRest_10                                           ;; 0f:4fa8 $af
    mRest_8                                            ;; 0f:4fa9 $8f
    mD_10                                              ;; 0f:4faa $a2
    mRest_10                                           ;; 0f:4fab $af
    mD_10                                              ;; 0f:4fac $a2
    mRest_10                                           ;; 0f:4fad $af
    mRest_2                                            ;; 0f:4fae $2f
    mD_10                                              ;; 0f:4faf $a2
    mE_10                                              ;; 0f:4fb0 $a4
    mD_10                                              ;; 0f:4fb1 $a2
    mRest_10                                           ;; 0f:4fb2 $af
    mRest_8                                            ;; 0f:4fb3 $8f
    mJUMP .data_0f_4f1b                                ;; 0f:4fb4 $e1 $1b $4f

song05_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:4fb7 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:4fba $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:4fbd $e5 $00
    mSTEREOPAN $03                                     ;; 0f:4fbf $e6 $03
    mOCTAVE_3                                          ;; 0f:4fc1 $d3
    mCis_7                                             ;; 0f:4fc2 $71
    mRest_10                                           ;; 0f:4fc3 $af
    mCis_7                                             ;; 0f:4fc4 $71
    mRest_10                                           ;; 0f:4fc5 $af
    mCis_10                                            ;; 0f:4fc6 $a1
    mRest_10                                           ;; 0f:4fc7 $af
    mCis_7                                             ;; 0f:4fc8 $71
    mRest_10                                           ;; 0f:4fc9 $af
    mCis_10                                            ;; 0f:4fca $a1
    mRest_10                                           ;; 0f:4fcb $af
    mCis_10                                            ;; 0f:4fcc $a1
    mRest_10                                           ;; 0f:4fcd $af
    mCis_7                                             ;; 0f:4fce $71
    mRest_10                                           ;; 0f:4fcf $af
    mCis_10                                            ;; 0f:4fd0 $a1
    mRest_10                                           ;; 0f:4fd1 $af
    mCis_7                                             ;; 0f:4fd2 $71
    mRest_10                                           ;; 0f:4fd3 $af
    mCis_7                                             ;; 0f:4fd4 $71
    mRest_10                                           ;; 0f:4fd5 $af
    mCis_7                                             ;; 0f:4fd6 $71
    mRest_10                                           ;; 0f:4fd7 $af
    mCis_7                                             ;; 0f:4fd8 $71
    mRest_10                                           ;; 0f:4fd9 $af
    mCis_10                                            ;; 0f:4fda $a1
    mRest_10                                           ;; 0f:4fdb $af
    mCis_7                                             ;; 0f:4fdc $71
    mRest_10                                           ;; 0f:4fdd $af
    mCis_10                                            ;; 0f:4fde $a1
    mRest_10                                           ;; 0f:4fdf $af
    mCis_10                                            ;; 0f:4fe0 $a1
    mRest_10                                           ;; 0f:4fe1 $af
    mCis_10                                            ;; 0f:4fe2 $a1
    mCis_10                                            ;; 0f:4fe3 $a1
    mCis_10                                            ;; 0f:4fe4 $a1
    mRest_10                                           ;; 0f:4fe5 $af
    mCis_10                                            ;; 0f:4fe6 $a1
    mRest_10                                           ;; 0f:4fe7 $af
    mCis_4                                             ;; 0f:4fe8 $41
    mRest_8                                            ;; 0f:4fe9 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:4fea $dc
.data_0f_4feb:
    mCOUNTER $08                                       ;; 0f:4feb $e3 $08
.data_0f_4fed:
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:4fed $e0 $c8 $7a
    mSTEREOPAN $02                                     ;; 0f:4ff0 $e6 $02
    mRest_8                                            ;; 0f:4ff2 $8f
    mCis_10                                            ;; 0f:4ff3 $a1
    mRest_10                                           ;; 0f:4ff4 $af
    mSTEREOPAN $02                                     ;; 0f:4ff5 $e6 $02
    mRest_8                                            ;; 0f:4ff7 $8f
    mCis_10                                            ;; 0f:4ff8 $a1
    mRest_10                                           ;; 0f:4ff9 $af
    mSTEREOPAN $01                                     ;; 0f:4ffa $e6 $01
    mRest_8                                            ;; 0f:4ffc $8f
    mCis_10                                            ;; 0f:4ffd $a1
    mRest_10                                           ;; 0f:4ffe $af
    mSTEREOPAN $01                                     ;; 0f:4fff $e6 $01
    mRest_8                                            ;; 0f:5001 $8f
    mCis_10                                            ;; 0f:5002 $a1
    mRest_10                                           ;; 0f:5003 $af
    mREPEAT .data_0f_4fed                              ;; 0f:5004 $e2 $ed $4f
    mSTEREOPAN $03                                     ;; 0f:5007 $e6 $03
    mRest_8                                            ;; 0f:5009 $8f
    mE_10                                              ;; 0f:500a $a4
    mFis_10                                            ;; 0f:500b $a6
    mG_10                                              ;; 0f:500c $a7
    mRest_10                                           ;; 0f:500d $af
    mE_10                                              ;; 0f:500e $a4
    mRest_10                                           ;; 0f:500f $af
    mRest_8                                            ;; 0f:5010 $8f
    mFis_10                                            ;; 0f:5011 $a6
    mG_10                                              ;; 0f:5012 $a7
    mA_10                                              ;; 0f:5013 $a9
    mRest_10                                           ;; 0f:5014 $af
    mFis_10                                            ;; 0f:5015 $a6
    mRest_10                                           ;; 0f:5016 $af
    mRest_8                                            ;; 0f:5017 $8f
    mG_10                                              ;; 0f:5018 $a7
    mA_10                                              ;; 0f:5019 $a9
    mAis_10                                            ;; 0f:501a $aa
    mRest_10                                           ;; 0f:501b $af
    mG_10                                              ;; 0f:501c $a7
    mRest_10                                           ;; 0f:501d $af
    mRest_8                                            ;; 0f:501e $8f
    mA_10                                              ;; 0f:501f $a9
    mAis_10                                            ;; 0f:5020 $aa
    mA_10                                              ;; 0f:5021 $a9
    mG_10                                              ;; 0f:5022 $a7
    mF_10                                              ;; 0f:5023 $a5
    mDis_10                                            ;; 0f:5024 $a3
    mRest_8                                            ;; 0f:5025 $8f
    mCisPlus_10                                        ;; 0f:5026 $ad
    mRest_10                                           ;; 0f:5027 $af
    mCisPlus_10                                        ;; 0f:5028 $ad
    mRest_10                                           ;; 0f:5029 $af
    mRest_8                                            ;; 0f:502a $8f
    mCisPlus_10                                        ;; 0f:502b $ad
    mRest_10                                           ;; 0f:502c $af
    mCisPlus_10                                        ;; 0f:502d $ad
    mRest_10                                           ;; 0f:502e $af
    mRest_8                                            ;; 0f:502f $8f
    mCisPlus_10                                        ;; 0f:5030 $ad
    mRest_10                                           ;; 0f:5031 $af
    mCisPlus_10                                        ;; 0f:5032 $ad
    mRest_10                                           ;; 0f:5033 $af
    mRest_2                                            ;; 0f:5034 $2f
    mCPlus_10                                          ;; 0f:5035 $ac
    mB_10                                              ;; 0f:5036 $ab
    mA_10                                              ;; 0f:5037 $a9
    mRest_10                                           ;; 0f:5038 $af
    mRest_8                                            ;; 0f:5039 $8f
    mJUMP .data_0f_4feb                                ;; 0f:503a $e1 $eb $4f

song05_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:503d $e4 $4f $7a
    mWAVETABLE data_0f_7aec                            ;; 0f:5040 $e8 $ec $7a
    mVOLUME $40                                        ;; 0f:5043 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5045 $e6 $03
    mOCTAVE_3                                          ;; 0f:5047 $d3
    mB_7                                               ;; 0f:5048 $7b
    mRest_10                                           ;; 0f:5049 $af
    mB_7                                               ;; 0f:504a $7b
    mRest_10                                           ;; 0f:504b $af
    mA_10                                              ;; 0f:504c $a9
    mRest_10                                           ;; 0f:504d $af
    mA_7                                               ;; 0f:504e $79
    mRest_10                                           ;; 0f:504f $af
    mA_10                                              ;; 0f:5050 $a9
    mRest_10                                           ;; 0f:5051 $af
    mB_10                                              ;; 0f:5052 $ab
    mRest_10                                           ;; 0f:5053 $af
    mB_7                                               ;; 0f:5054 $7b
    mRest_10                                           ;; 0f:5055 $af
    mB_10                                              ;; 0f:5056 $ab
    mRest_10                                           ;; 0f:5057 $af
    mA_7                                               ;; 0f:5058 $79
    mRest_10                                           ;; 0f:5059 $af
    mA_7                                               ;; 0f:505a $79
    mRest_10                                           ;; 0f:505b $af
    mB_7                                               ;; 0f:505c $7b
    mRest_10                                           ;; 0f:505d $af
    mB_7                                               ;; 0f:505e $7b
    mRest_10                                           ;; 0f:505f $af
    mA_10                                              ;; 0f:5060 $a9
    mRest_10                                           ;; 0f:5061 $af
    mA_7                                               ;; 0f:5062 $79
    mRest_10                                           ;; 0f:5063 $af
    mA_10                                              ;; 0f:5064 $a9
    mRest_10                                           ;; 0f:5065 $af
    mG_10                                              ;; 0f:5066 $a7
    mRest_10                                           ;; 0f:5067 $af
    mG_10                                              ;; 0f:5068 $a7
    mA_10                                              ;; 0f:5069 $a9
    mB_10                                              ;; 0f:506a $ab
    mRest_10                                           ;; 0f:506b $af
    mG_10                                              ;; 0f:506c $a7
    mRest_10                                           ;; 0f:506d $af
    mA_8                                               ;; 0f:506e $89
    mOCTAVE_MINUS_1                                    ;; 0f:506f $dc
    mD_10                                              ;; 0f:5070 $a2
    mC_10                                              ;; 0f:5071 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5072 $dc
    mB_10                                              ;; 0f:5073 $ab
    mRest_10                                           ;; 0f:5074 $af
    mA_10                                              ;; 0f:5075 $a9
    mRest_10                                           ;; 0f:5076 $af
.data_0f_5077:
    mSTEREOPAN $03                                     ;; 0f:5077 $e6 $03
    mCOUNTER $08                                       ;; 0f:5079 $e3 $08
.data_0f_507b:
    mWAVETABLE data_0f_7adc                            ;; 0f:507b $e8 $dc $7a
    mG_8                                               ;; 0f:507e $87
    mOCTAVE_PLUS_2                                     ;; 0f:507f $d9
    mSTEREOPAN $02                                     ;; 0f:5080 $e6 $02
    mD_10                                              ;; 0f:5082 $a2
    mRest_10                                           ;; 0f:5083 $af
    mOCTAVE_MINUS_2                                    ;; 0f:5084 $dd
    mSTEREOPAN $03                                     ;; 0f:5085 $e6 $03
    mG_8                                               ;; 0f:5087 $87
    mOCTAVE_PLUS_2                                     ;; 0f:5088 $d9
    mSTEREOPAN $02                                     ;; 0f:5089 $e6 $02
    mD_10                                              ;; 0f:508b $a2
    mRest_10                                           ;; 0f:508c $af
    mOCTAVE_MINUS_2                                    ;; 0f:508d $dd
    mSTEREOPAN $03                                     ;; 0f:508e $e6 $03
    mF_8                                               ;; 0f:5090 $85
    mOCTAVE_PLUS_2                                     ;; 0f:5091 $d9
    mSTEREOPAN $01                                     ;; 0f:5092 $e6 $01
    mD_10                                              ;; 0f:5094 $a2
    mRest_10                                           ;; 0f:5095 $af
    mOCTAVE_MINUS_2                                    ;; 0f:5096 $dd
    mSTEREOPAN $03                                     ;; 0f:5097 $e6 $03
    mF_8                                               ;; 0f:5099 $85
    mOCTAVE_PLUS_2                                     ;; 0f:509a $d9
    mSTEREOPAN $01                                     ;; 0f:509b $e6 $01
    mD_10                                              ;; 0f:509d $a2
    mRest_10                                           ;; 0f:509e $af
    mOCTAVE_MINUS_2                                    ;; 0f:509f $dd
    mREPEAT .data_0f_507b                              ;; 0f:50a0 $e2 $7b $50
    mSTEREOPAN $03                                     ;; 0f:50a3 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:50a5 $d8
    mC_2                                               ;; 0f:50a6 $20
    mD_2                                               ;; 0f:50a7 $22
    mDis_2                                             ;; 0f:50a8 $23
    mF_2                                               ;; 0f:50a9 $25
    mSTEREOPAN $02                                     ;; 0f:50aa $e6 $02
    mD_10                                              ;; 0f:50ac $a2
    mRest_10                                           ;; 0f:50ad $af
    mRest_5                                            ;; 0f:50ae $5f
    mSTEREOPAN $01                                     ;; 0f:50af $e6 $01
    mA_10                                              ;; 0f:50b1 $a9
    mRest_10                                           ;; 0f:50b2 $af
    mRest_5                                            ;; 0f:50b3 $5f
    mSTEREOPAN $03                                     ;; 0f:50b4 $e6 $03
    mD_10                                              ;; 0f:50b6 $a2
    mRest_10                                           ;; 0f:50b7 $af
    mRest_5                                            ;; 0f:50b8 $5f
    mFis_10                                            ;; 0f:50b9 $a6
    mG_10                                              ;; 0f:50ba $a7
    mA_10                                              ;; 0f:50bb $a9
    mG_10                                              ;; 0f:50bc $a7
    mFis_10                                            ;; 0f:50bd $a6
    mE_10                                              ;; 0f:50be $a4
    mD_10                                              ;; 0f:50bf $a2
    mRest_10                                           ;; 0f:50c0 $af
    mRest_5                                            ;; 0f:50c1 $5f
    mOCTAVE_MINUS_1                                    ;; 0f:50c2 $dc
    mA_8                                               ;; 0f:50c3 $89
    mJUMP .data_0f_5077                                ;; 0f:50c4 $e1 $77 $50
    db   $e7, $14                                      ;; 0f:50c7 ??

song06_channel2:
    mTEMPO $60                                         ;; 0f:50c9 $e7 $60
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:50cb $e4 $75 $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:50ce $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:50d1 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:50d3 $e6 $03
    mOCTAVE_2                                          ;; 0f:50d5 $d2
    mF_11                                              ;; 0f:50d6 $b5
    mFis_11                                            ;; 0f:50d7 $b6
    mG_11                                              ;; 0f:50d8 $b7
    mGis_11                                            ;; 0f:50d9 $b8
    mA_11                                              ;; 0f:50da $b9
    mAis_11                                            ;; 0f:50db $ba
.data_0f_50dc:
    mCOUNTER $02                                       ;; 0f:50dc $e3 $02
.data_0f_50de:
    mDUTYCYCLE $40                                     ;; 0f:50de $e5 $40
    mB_10                                              ;; 0f:50e0 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:50e1 $d8
    mE_10                                              ;; 0f:50e2 $a4
    mDis_1                                             ;; 0f:50e3 $13
    mWait_8                                            ;; 0f:50e4 $8e
    mWait_5                                            ;; 0f:50e5 $5e
    mRest_8                                            ;; 0f:50e6 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:50e7 $dc
    mB_8                                               ;; 0f:50e8 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:50e9 $d8
    mD_8                                               ;; 0f:50ea $82
    mCis_8                                             ;; 0f:50eb $81
    mOCTAVE_MINUS_1                                    ;; 0f:50ec $dc
    mA_5                                               ;; 0f:50ed $59
    mB_4                                               ;; 0f:50ee $4b
    mCPlus_11                                          ;; 0f:50ef $bc
    mCisPlus_11                                        ;; 0f:50f0 $bd
    mOCTAVE_PLUS_1                                     ;; 0f:50f1 $d8
    mD_11                                              ;; 0f:50f2 $b2
    mDis_4                                             ;; 0f:50f3 $43
    mD_11                                              ;; 0f:50f4 $b2
    mCis_11                                            ;; 0f:50f5 $b1
    mC_11                                              ;; 0f:50f6 $b0
    mOCTAVE_MINUS_1                                    ;; 0f:50f7 $dc
    mJUMPIF $01, .data_0f_5107                         ;; 0f:50f8 $eb $01 $07 $51
    mB_8                                               ;; 0f:50fc $8b
    mCPlus_11                                          ;; 0f:50fd $bc
    mCisPlus_11                                        ;; 0f:50fe $bd
    mOCTAVE_PLUS_1                                     ;; 0f:50ff $d8
    mD_11                                              ;; 0f:5100 $b2
    mDis_2                                             ;; 0f:5101 $23
    mC_5                                               ;; 0f:5102 $50
    mOCTAVE_MINUS_1                                    ;; 0f:5103 $dc
    mREPEAT .data_0f_50de                              ;; 0f:5104 $e2 $de $50
.data_0f_5107:
    mB_8                                               ;; 0f:5107 $8b
    mCPlus_11                                          ;; 0f:5108 $bc
    mCisPlus_11                                        ;; 0f:5109 $bd
    mOCTAVE_PLUS_1                                     ;; 0f:510a $d8
    mD_11                                              ;; 0f:510b $b2
    mDis_5                                             ;; 0f:510c $53
    mFis_5                                             ;; 0f:510d $56
    mA_5                                               ;; 0f:510e $59
    mCOUNTER $02                                       ;; 0f:510f $e3 $02
.data_0f_5111:
    mB_4                                               ;; 0f:5111 $4b
    mA_11                                              ;; 0f:5112 $b9
    mGis_11                                            ;; 0f:5113 $b8
    mG_11                                              ;; 0f:5114 $b7
    mFis_4                                             ;; 0f:5115 $46
    mG_11                                              ;; 0f:5116 $b7
    mGis_11                                            ;; 0f:5117 $b8
    mA_11                                              ;; 0f:5118 $b9
    mB_8                                               ;; 0f:5119 $8b
    mA_11                                              ;; 0f:511a $b9
    mGis_11                                            ;; 0f:511b $b8
    mG_11                                              ;; 0f:511c $b7
    mFis_2                                             ;; 0f:511d $26
    mE_8                                               ;; 0f:511e $84
    mFis_8                                             ;; 0f:511f $86
    mOCTAVE_MINUS_1                                    ;; 0f:5120 $dc
    mB_4                                               ;; 0f:5121 $4b
    mCPlus_11                                          ;; 0f:5122 $bc
    mCisPlus_11                                        ;; 0f:5123 $bd
    mOCTAVE_PLUS_1                                     ;; 0f:5124 $d8
    mD_11                                              ;; 0f:5125 $b2
    mDis_4                                             ;; 0f:5126 $43
    mD_11                                              ;; 0f:5127 $b2
    mCis_11                                            ;; 0f:5128 $b1
    mC_11                                              ;; 0f:5129 $b0
    mOCTAVE_MINUS_1                                    ;; 0f:512a $dc
    mJUMPIF $01, .data_0f_513a                         ;; 0f:512b $eb $01 $3a $51
    mB_8                                               ;; 0f:512f $8b
    mCPlus_11                                          ;; 0f:5130 $bc
    mCisPlus_11                                        ;; 0f:5131 $bd
    mOCTAVE_PLUS_1                                     ;; 0f:5132 $d8
    mD_11                                              ;; 0f:5133 $b2
    mDis_5                                             ;; 0f:5134 $53
    mFis_5                                             ;; 0f:5135 $56
    mA_5                                               ;; 0f:5136 $59
    mREPEAT .data_0f_5111                              ;; 0f:5137 $e2 $11 $51
.data_0f_513a:
    mB_8                                               ;; 0f:513a $8b
    mCPlus_11                                          ;; 0f:513b $bc
    mCisPlus_11                                        ;; 0f:513c $bd
    mOCTAVE_PLUS_1                                     ;; 0f:513d $d8
    mD_11                                              ;; 0f:513e $b2
    mDis_1                                             ;; 0f:513f $13
    mDUTYCYCLE $00                                     ;; 0f:5140 $e5 $00
    mE_5                                               ;; 0f:5142 $54
    mDis_5                                             ;; 0f:5143 $53
    mD_5                                               ;; 0f:5144 $52
    mDis_5                                             ;; 0f:5145 $53
    mE_8                                               ;; 0f:5146 $84
    mDis_8                                             ;; 0f:5147 $83
    mD_8                                               ;; 0f:5148 $82
    mDis_8                                             ;; 0f:5149 $83
    mRest_8                                            ;; 0f:514a $8f
    mE_8                                               ;; 0f:514b $84
    mDis_8                                             ;; 0f:514c $83
    mRest_8                                            ;; 0f:514d $8f
    mD_8                                               ;; 0f:514e $82
    mDis_8                                             ;; 0f:514f $83
    mRest_8                                            ;; 0f:5150 $8f
    mE_8                                               ;; 0f:5151 $84
    mDis_8                                             ;; 0f:5152 $83
    mRest_8                                            ;; 0f:5153 $8f
    mE_8                                               ;; 0f:5154 $84
    mF_0                                               ;; 0f:5155 $05
    mWait_8                                            ;; 0f:5156 $8e
    mOCTAVE_MINUS_1                                    ;; 0f:5157 $dc
    mJUMP .data_0f_50dc                                ;; 0f:5158 $e1 $dc $50

song06_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:515b $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:515e $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:5161 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:5163 $e6 $03
    mOCTAVE_1                                          ;; 0f:5165 $d1
    mAis_11                                            ;; 0f:5166 $ba
    mB_11                                              ;; 0f:5167 $bb
    mCPlus_11                                          ;; 0f:5168 $bc
    mCisPlus_11                                        ;; 0f:5169 $bd
    mOCTAVE_PLUS_1                                     ;; 0f:516a $d8
    mD_11                                              ;; 0f:516b $b2
    mDis_11                                            ;; 0f:516c $b3
.data_0f_516d:
    mCOUNTER $08                                       ;; 0f:516d $e3 $08
.data_0f_516f:
    mVOLUME_ENVELOPE data_0f_7ac6                      ;; 0f:516f $e0 $c6 $7a
    mSTEREOPAN $02                                     ;; 0f:5172 $e6 $02
    mDUTYCYCLE $00                                     ;; 0f:5174 $e5 $00
    mE_10                                              ;; 0f:5176 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5177 $dc
    mB_10                                              ;; 0f:5178 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5179 $d8
    mDis_10                                            ;; 0f:517a $a3
    mOCTAVE_MINUS_1                                    ;; 0f:517b $dc
    mAis_10                                            ;; 0f:517c $aa
    mOCTAVE_PLUS_1                                     ;; 0f:517d $d8
    mD_10                                              ;; 0f:517e $a2
    mOCTAVE_MINUS_1                                    ;; 0f:517f $dc
    mA_10                                              ;; 0f:5180 $a9
    mCisPlus_10                                        ;; 0f:5181 $ad
    mGis_10                                            ;; 0f:5182 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:5183 $d8
    mSTEREOPAN $03                                     ;; 0f:5184 $e6 $03
    mE_10                                              ;; 0f:5186 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5187 $dc
    mB_10                                              ;; 0f:5188 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5189 $d8
    mDis_10                                            ;; 0f:518a $a3
    mOCTAVE_MINUS_1                                    ;; 0f:518b $dc
    mAis_10                                            ;; 0f:518c $aa
    mOCTAVE_PLUS_1                                     ;; 0f:518d $d8
    mD_10                                              ;; 0f:518e $a2
    mOCTAVE_MINUS_1                                    ;; 0f:518f $dc
    mA_10                                              ;; 0f:5190 $a9
    mCisPlus_10                                        ;; 0f:5191 $ad
    mGis_10                                            ;; 0f:5192 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:5193 $d8
    mSTEREOPAN $01                                     ;; 0f:5194 $e6 $01
    mE_10                                              ;; 0f:5196 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5197 $dc
    mB_10                                              ;; 0f:5198 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5199 $d8
    mDis_10                                            ;; 0f:519a $a3
    mOCTAVE_MINUS_1                                    ;; 0f:519b $dc
    mAis_10                                            ;; 0f:519c $aa
    mOCTAVE_PLUS_1                                     ;; 0f:519d $d8
    mD_10                                              ;; 0f:519e $a2
    mOCTAVE_MINUS_1                                    ;; 0f:519f $dc
    mA_10                                              ;; 0f:51a0 $a9
    mCisPlus_10                                        ;; 0f:51a1 $ad
    mGis_10                                            ;; 0f:51a2 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:51a3 $d8
    mSTEREOPAN $03                                     ;; 0f:51a4 $e6 $03
    mE_10                                              ;; 0f:51a6 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:51a7 $dc
    mB_10                                              ;; 0f:51a8 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:51a9 $d8
    mDis_10                                            ;; 0f:51aa $a3
    mOCTAVE_MINUS_1                                    ;; 0f:51ab $dc
    mAis_10                                            ;; 0f:51ac $aa
    mOCTAVE_PLUS_1                                     ;; 0f:51ad $d8
    mD_10                                              ;; 0f:51ae $a2
    mOCTAVE_MINUS_1                                    ;; 0f:51af $dc
    mA_10                                              ;; 0f:51b0 $a9
    mCisPlus_10                                        ;; 0f:51b1 $ad
    mGis_10                                            ;; 0f:51b2 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:51b3 $d8
    mREPEAT .data_0f_516f                              ;; 0f:51b4 $e2 $6f $51
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:51b7 $e0 $82 $7a
    mB_5                                               ;; 0f:51ba $5b
    mAis_5                                             ;; 0f:51bb $5a
    mA_5                                               ;; 0f:51bc $59
    mAis_5                                             ;; 0f:51bd $5a
    mB_8                                               ;; 0f:51be $8b
    mAis_8                                             ;; 0f:51bf $8a
    mA_8                                               ;; 0f:51c0 $89
    mAis_8                                             ;; 0f:51c1 $8a
    mRest_8                                            ;; 0f:51c2 $8f
    mB_8                                               ;; 0f:51c3 $8b
    mAis_8                                             ;; 0f:51c4 $8a
    mRest_8                                            ;; 0f:51c5 $8f
    mA_8                                               ;; 0f:51c6 $89
    mAis_8                                             ;; 0f:51c7 $8a
    mRest_8                                            ;; 0f:51c8 $8f
    mB_8                                               ;; 0f:51c9 $8b
    mAis_8                                             ;; 0f:51ca $8a
    mRest_8                                            ;; 0f:51cb $8f
    mB_8                                               ;; 0f:51cc $8b
    mCPlus_0                                           ;; 0f:51cd $0c
    mWait_8                                            ;; 0f:51ce $8e
    mJUMP .data_0f_516d                                ;; 0f:51cf $e1 $6d $51

song06_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:51d2 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:51d5 $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:51d8 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:51da $e6 $03
    mRest_5                                            ;; 0f:51dc $5f
.data_0f_51dd:
    mWAVETABLE data_0f_7adc                            ;; 0f:51dd $e8 $dc $7a
    mCOUNTER $08                                       ;; 0f:51e0 $e3 $08
.data_0f_51e2:
    mOCTAVE_2                                          ;; 0f:51e2 $d2
    mE_2                                               ;; 0f:51e3 $24
    mOCTAVE_MINUS_1                                    ;; 0f:51e4 $dc
    mB_2                                               ;; 0f:51e5 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:51e6 $d8
    mD_2                                               ;; 0f:51e7 $22
    mOCTAVE_MINUS_1                                    ;; 0f:51e8 $dc
    mA_2                                               ;; 0f:51e9 $29
    mOCTAVE_PLUS_1                                     ;; 0f:51ea $d8
    mREPEAT .data_0f_51e2                              ;; 0f:51eb $e2 $e2 $51
    mWAVETABLE wavePatternsData                        ;; 0f:51ee $e8 $cc $7a
    mCPlus_5                                           ;; 0f:51f1 $5c
    mB_5                                               ;; 0f:51f2 $5b
    mAis_5                                             ;; 0f:51f3 $5a
    mB_5                                               ;; 0f:51f4 $5b
    mCPlus_8                                           ;; 0f:51f5 $8c
    mB_8                                               ;; 0f:51f6 $8b
    mAis_8                                             ;; 0f:51f7 $8a
    mB_8                                               ;; 0f:51f8 $8b
    mVOLUME $20                                        ;; 0f:51f9 $e0 $20
    mSTEREOPAN $02                                     ;; 0f:51fb $e6 $02
    mC_10                                              ;; 0f:51fd $a0
    mRest_10                                           ;; 0f:51fe $af
    mVOLUME $40                                        ;; 0f:51ff $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5201 $e6 $03
    mCPlus_8                                           ;; 0f:5203 $8c
    mB_8                                               ;; 0f:5204 $8b
    mVOLUME $20                                        ;; 0f:5205 $e0 $20
    mSTEREOPAN $01                                     ;; 0f:5207 $e6 $01
    mC_10                                              ;; 0f:5209 $a0
    mRest_10                                           ;; 0f:520a $af
    mVOLUME $40                                        ;; 0f:520b $e0 $40
    mSTEREOPAN $03                                     ;; 0f:520d $e6 $03
    mAis_8                                             ;; 0f:520f $8a
    mB_8                                               ;; 0f:5210 $8b
    mVOLUME $20                                        ;; 0f:5211 $e0 $20
    mSTEREOPAN $02                                     ;; 0f:5213 $e6 $02
    mC_10                                              ;; 0f:5215 $a0
    mRest_10                                           ;; 0f:5216 $af
    mVOLUME $40                                        ;; 0f:5217 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5219 $e6 $03
    mCPlus_8                                           ;; 0f:521b $8c
    mB_8                                               ;; 0f:521c $8b
    mVOLUME $20                                        ;; 0f:521d $e0 $20
    mSTEREOPAN $01                                     ;; 0f:521f $e6 $01
    mC_10                                              ;; 0f:5221 $a0
    mRest_10                                           ;; 0f:5222 $af
    mVOLUME $40                                        ;; 0f:5223 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5225 $e6 $03
    mCPlus_8                                           ;; 0f:5227 $8c
    mCisPlus_8                                         ;; 0f:5228 $8d
    mWait_7                                            ;; 0f:5229 $7e
    mRest_10                                           ;; 0f:522a $af
    mSTEREOPAN $02                                     ;; 0f:522b $e6 $02
    mCisPlus_7                                         ;; 0f:522d $7d
    mRest_10                                           ;; 0f:522e $af
    mSTEREOPAN $01                                     ;; 0f:522f $e6 $01
    mCisPlus_7                                         ;; 0f:5231 $7d
    mRest_10                                           ;; 0f:5232 $af
    mSTEREOPAN $03                                     ;; 0f:5233 $e6 $03
    mCis_8                                             ;; 0f:5235 $81
    mD_10                                              ;; 0f:5236 $a2
    mDis_10                                            ;; 0f:5237 $a3
    mJUMP .data_0f_51dd                                ;; 0f:5238 $e1 $dd $51
    db   $e7, $14                                      ;; 0f:523b ??

song07_channel2:
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:523d $e4 $75 $7a
.data_0f_5240:
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5240 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:5243 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:5245 $e6 $03
    mTEMPO $5a                                         ;; 0f:5247 $e7 $5a
    mCOUNTER $02                                       ;; 0f:5249 $e3 $02
.data_0f_524b:
    mOCTAVE_3                                          ;; 0f:524b $d3
    mB_1                                               ;; 0f:524c $1b
    mGis_2                                             ;; 0f:524d $28
    mF_8                                               ;; 0f:524e $85
    mGis_10                                            ;; 0f:524f $a8
    mF_10                                              ;; 0f:5250 $a5
    mE_1                                               ;; 0f:5251 $14
    mD_5                                               ;; 0f:5252 $52
    mE_5                                               ;; 0f:5253 $54
    mD_5                                               ;; 0f:5254 $52
    mOCTAVE_MINUS_1                                    ;; 0f:5255 $dc
    mB_2                                               ;; 0f:5256 $2b
    mWait_7                                            ;; 0f:5257 $7e
    mCPlus_12                                          ;; 0f:5258 $cc
    mCisPlus_12                                        ;; 0f:5259 $cd
    mOCTAVE_PLUS_1                                     ;; 0f:525a $d8
    mE_2                                               ;; 0f:525b $24
    mWait_7                                            ;; 0f:525c $7e
    mF_12                                              ;; 0f:525d $c5
    mFis_12                                            ;; 0f:525e $c6
    mGis_1                                             ;; 0f:525f $18
    mOCTAVE_MINUS_1                                    ;; 0f:5260 $dc
    mJUMPIF $01, .data_0f_5275                         ;; 0f:5261 $eb $01 $75 $52
    mB_10                                              ;; 0f:5265 $ab
    mCPlus_10                                          ;; 0f:5266 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5267 $d8
    mDis_10                                            ;; 0f:5268 $a3
    mE_10                                              ;; 0f:5269 $a4
    mDis_10                                            ;; 0f:526a $a3
    mC_10                                              ;; 0f:526b $a0
    mDis_10                                            ;; 0f:526c $a3
    mE_10                                              ;; 0f:526d $a4
    mF_10                                              ;; 0f:526e $a5
    mGis_10                                            ;; 0f:526f $a8
    mA_10                                              ;; 0f:5270 $a9
    mAis_10                                            ;; 0f:5271 $aa
    mREPEAT .data_0f_524b                              ;; 0f:5272 $e2 $4b $52
.data_0f_5275:
    mOCTAVE_PLUS_1                                     ;; 0f:5275 $d8
    mB_10                                              ;; 0f:5276 $ab
    mA_10                                              ;; 0f:5277 $a9
    mGis_10                                            ;; 0f:5278 $a8
    mA_10                                              ;; 0f:5279 $a9
    mGis_10                                            ;; 0f:527a $a8
    mF_10                                              ;; 0f:527b $a5
    mE_10                                              ;; 0f:527c $a4
    mF_10                                              ;; 0f:527d $a5
    mE_10                                              ;; 0f:527e $a4
    mDis_10                                            ;; 0f:527f $a3
    mC_10                                              ;; 0f:5280 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5281 $dc
    mB_10                                              ;; 0f:5282 $ab
    mTEMPO $6e                                         ;; 0f:5283 $e7 $6e
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:5285 $e0 $be $7a
    mDUTYCYCLE $40                                     ;; 0f:5288 $e5 $40
    mAis_2                                             ;; 0f:528a $2a
    mWait_8                                            ;; 0f:528b $8e
    mA_10                                              ;; 0f:528c $a9
    mAis_10                                            ;; 0f:528d $aa
    mB_2                                               ;; 0f:528e $2b
    mWait_8                                            ;; 0f:528f $8e
    mAis_10                                            ;; 0f:5290 $aa
    mB_10                                              ;; 0f:5291 $ab
    mCPlus_2                                           ;; 0f:5292 $2c
    mCisPlus_10                                        ;; 0f:5293 $ad
    mOCTAVE_PLUS_1                                     ;; 0f:5294 $d8
    mD_10                                              ;; 0f:5295 $a2
    mDis_10                                            ;; 0f:5296 $a3
    mE_10                                              ;; 0f:5297 $a4
    mF_2                                               ;; 0f:5298 $25
    mWait_11                                           ;; 0f:5299 $be
    mTEMPO $5a                                         ;; 0f:529a $e7 $5a
    mDUTYCYCLE $80                                     ;; 0f:529c $e5 $80
    mFis_11                                            ;; 0f:529e $b6
    mG_11                                              ;; 0f:529f $b7
    mGis_11                                            ;; 0f:52a0 $b8
    mA_11                                              ;; 0f:52a1 $b9
    mAis_11                                            ;; 0f:52a2 $ba
    mJUMP .data_0f_5240                                ;; 0f:52a3 $e1 $40 $52

song07_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:52a6 $e4 $4f $7a
.data_0f_52a9:
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:52a9 $e0 $c2 $7a
    mDUTYCYCLE $80                                     ;; 0f:52ac $e5 $80
    mSTEREOPAN $02                                     ;; 0f:52ae $e6 $02
    mOCTAVE_2                                          ;; 0f:52b0 $d2
    mRest_10                                           ;; 0f:52b1 $af
    mE_8                                               ;; 0f:52b2 $84
    mF_8                                               ;; 0f:52b3 $85
    mGis_8                                             ;; 0f:52b4 $88
    mA_8                                               ;; 0f:52b5 $89
    mGis_8                                             ;; 0f:52b6 $88
    mF_8                                               ;; 0f:52b7 $85
    mE_8                                               ;; 0f:52b8 $84
    mF_8                                               ;; 0f:52b9 $85
    mGis_8                                             ;; 0f:52ba $88
    mA_8                                               ;; 0f:52bb $89
    mGis_8                                             ;; 0f:52bc $88
    mF_8                                               ;; 0f:52bd $85
    mE_8                                               ;; 0f:52be $84
    mF_8                                               ;; 0f:52bf $85
    mGis_8                                             ;; 0f:52c0 $88
    mA_8                                               ;; 0f:52c1 $89
    mGis_8                                             ;; 0f:52c2 $88
    mF_8                                               ;; 0f:52c3 $85
    mE_8                                               ;; 0f:52c4 $84
    mF_8                                               ;; 0f:52c5 $85
    mGis_8                                             ;; 0f:52c6 $88
    mA_8                                               ;; 0f:52c7 $89
    mGis_8                                             ;; 0f:52c8 $88
    mF_8                                               ;; 0f:52c9 $85
    mE_8                                               ;; 0f:52ca $84
    mF_8                                               ;; 0f:52cb $85
    mGis_8                                             ;; 0f:52cc $88
    mA_8                                               ;; 0f:52cd $89
    mGis_8                                             ;; 0f:52ce $88
    mF_8                                               ;; 0f:52cf $85
    mE_8                                               ;; 0f:52d0 $84
    mF_8                                               ;; 0f:52d1 $85
    mGis_8                                             ;; 0f:52d2 $88
    mA_8                                               ;; 0f:52d3 $89
    mGis_8                                             ;; 0f:52d4 $88
    mF_8                                               ;; 0f:52d5 $85
    mE_8                                               ;; 0f:52d6 $84
    mF_8                                               ;; 0f:52d7 $85
    mGis_8                                             ;; 0f:52d8 $88
    mA_8                                               ;; 0f:52d9 $89
    mGis_8                                             ;; 0f:52da $88
    mF_8                                               ;; 0f:52db $85
    mE_8                                               ;; 0f:52dc $84
    mF_8                                               ;; 0f:52dd $85
    mGis_8                                             ;; 0f:52de $88
    mA_8                                               ;; 0f:52df $89
    mGis_8                                             ;; 0f:52e0 $88
    mF_8                                               ;; 0f:52e1 $85
    mE_8                                               ;; 0f:52e2 $84
    mF_8                                               ;; 0f:52e3 $85
    mGis_8                                             ;; 0f:52e4 $88
    mA_8                                               ;; 0f:52e5 $89
    mGis_8                                             ;; 0f:52e6 $88
    mF_8                                               ;; 0f:52e7 $85
    mE_8                                               ;; 0f:52e8 $84
    mF_8                                               ;; 0f:52e9 $85
    mGis_8                                             ;; 0f:52ea $88
    mA_8                                               ;; 0f:52eb $89
    mGis_8                                             ;; 0f:52ec $88
    mF_8                                               ;; 0f:52ed $85
    mE_8                                               ;; 0f:52ee $84
    mF_8                                               ;; 0f:52ef $85
    mGis_8                                             ;; 0f:52f0 $88
    mA_8                                               ;; 0f:52f1 $89
    mGis_8                                             ;; 0f:52f2 $88
    mF_8                                               ;; 0f:52f3 $85
    mE_8                                               ;; 0f:52f4 $84
    mF_8                                               ;; 0f:52f5 $85
    mGis_8                                             ;; 0f:52f6 $88
    mA_8                                               ;; 0f:52f7 $89
    mGis_8                                             ;; 0f:52f8 $88
    mF_8                                               ;; 0f:52f9 $85
    mE_8                                               ;; 0f:52fa $84
    mF_8                                               ;; 0f:52fb $85
    mGis_8                                             ;; 0f:52fc $88
    mA_8                                               ;; 0f:52fd $89
    mGis_8                                             ;; 0f:52fe $88
    mF_8                                               ;; 0f:52ff $85
    mE_8                                               ;; 0f:5300 $84
    mF_8                                               ;; 0f:5301 $85
    mGis_8                                             ;; 0f:5302 $88
    mA_8                                               ;; 0f:5303 $89
    mGis_8                                             ;; 0f:5304 $88
    mF_8                                               ;; 0f:5305 $85
    mE_8                                               ;; 0f:5306 $84
    mF_8                                               ;; 0f:5307 $85
    mGis_8                                             ;; 0f:5308 $88
    mA_8                                               ;; 0f:5309 $89
    mGis_8                                             ;; 0f:530a $88
    mF_8                                               ;; 0f:530b $85
    mE_8                                               ;; 0f:530c $84
    mF_8                                               ;; 0f:530d $85
    mGis_8                                             ;; 0f:530e $88
    mA_8                                               ;; 0f:530f $89
    mGis_8                                             ;; 0f:5310 $88
    mF_10                                              ;; 0f:5311 $a5
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:5312 $e0 $c0 $7a
    mDUTYCYCLE $40                                     ;; 0f:5315 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:5317 $e6 $03
    mFis_10                                            ;; 0f:5319 $a6
    mRest_10                                           ;; 0f:531a $af
    mFis_10                                            ;; 0f:531b $a6
    mRest_10                                           ;; 0f:531c $af
    mRest_8                                            ;; 0f:531d $8f
    mFis_10                                            ;; 0f:531e $a6
    mRest_10                                           ;; 0f:531f $af
    mRest_5                                            ;; 0f:5320 $5f
    mG_10                                              ;; 0f:5321 $a7
    mRest_10                                           ;; 0f:5322 $af
    mG_10                                              ;; 0f:5323 $a7
    mRest_10                                           ;; 0f:5324 $af
    mRest_8                                            ;; 0f:5325 $8f
    mG_10                                              ;; 0f:5326 $a7
    mRest_10                                           ;; 0f:5327 $af
    mRest_5                                            ;; 0f:5328 $5f
    mGis_10                                            ;; 0f:5329 $a8
    mRest_10                                           ;; 0f:532a $af
    mGis_10                                            ;; 0f:532b $a8
    mRest_10                                           ;; 0f:532c $af
    mRest_8                                            ;; 0f:532d $8f
    mGis_10                                            ;; 0f:532e $a8
    mRest_10                                           ;; 0f:532f $af
    mRest_5                                            ;; 0f:5330 $5f
    mA_10                                              ;; 0f:5331 $a9
    mRest_10                                           ;; 0f:5332 $af
    mA_10                                              ;; 0f:5333 $a9
    mRest_10                                           ;; 0f:5334 $af
    mRest_8                                            ;; 0f:5335 $8f
    mA_10                                              ;; 0f:5336 $a9
    mRest_10                                           ;; 0f:5337 $af
    mDUTYCYCLE $80                                     ;; 0f:5338 $e5 $80
    mA_11                                              ;; 0f:533a $b9
    mAis_11                                            ;; 0f:533b $ba
    mB_11                                              ;; 0f:533c $bb
    mCPlus_11                                          ;; 0f:533d $bc
    mCisPlus_11                                        ;; 0f:533e $bd
    mOCTAVE_PLUS_1                                     ;; 0f:533f $d8
    mD_11                                              ;; 0f:5340 $b2
    mJUMP .data_0f_52a9                                ;; 0f:5341 $e1 $a9 $52

song07_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5344 $e4 $4f $7a
.data_0f_5347:
    mWAVETABLE data_0f_7afc                            ;; 0f:5347 $e8 $fc $7a
    mVOLUME $20                                        ;; 0f:534a $e0 $20
    mSTEREOPAN $01                                     ;; 0f:534c $e6 $01
    mCOUNTER $10                                       ;; 0f:534e $e3 $10
.data_0f_5350:
    mOCTAVE_3                                          ;; 0f:5350 $d3
    mE_8                                               ;; 0f:5351 $84
    mF_8                                               ;; 0f:5352 $85
    mGis_8                                             ;; 0f:5353 $88
    mA_8                                               ;; 0f:5354 $89
    mGis_8                                             ;; 0f:5355 $88
    mF_8                                               ;; 0f:5356 $85
    mREPEAT .data_0f_5350                              ;; 0f:5357 $e2 $50 $53
    mWAVETABLE data_0f_7adc                            ;; 0f:535a $e8 $dc $7a
    mVOLUME $20                                        ;; 0f:535d $e0 $20
    mSTEREOPAN $03                                     ;; 0f:535f $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:5361 $dc
    mC_10                                              ;; 0f:5362 $a0
    mRest_10                                           ;; 0f:5363 $af
    mC_10                                              ;; 0f:5364 $a0
    mRest_10                                           ;; 0f:5365 $af
    mRest_8                                            ;; 0f:5366 $8f
    mC_10                                              ;; 0f:5367 $a0
    mRest_10                                           ;; 0f:5368 $af
    mRest_5                                            ;; 0f:5369 $5f
    mCis_10                                            ;; 0f:536a $a1
    mRest_10                                           ;; 0f:536b $af
    mCis_10                                            ;; 0f:536c $a1
    mRest_10                                           ;; 0f:536d $af
    mRest_8                                            ;; 0f:536e $8f
    mCis_10                                            ;; 0f:536f $a1
    mRest_10                                           ;; 0f:5370 $af
    mRest_5                                            ;; 0f:5371 $5f
    mD_10                                              ;; 0f:5372 $a2
    mRest_10                                           ;; 0f:5373 $af
    mD_10                                              ;; 0f:5374 $a2
    mRest_10                                           ;; 0f:5375 $af
    mRest_8                                            ;; 0f:5376 $8f
    mD_10                                              ;; 0f:5377 $a2
    mRest_10                                           ;; 0f:5378 $af
    mRest_5                                            ;; 0f:5379 $5f
    mDis_10                                            ;; 0f:537a $a3
    mRest_10                                           ;; 0f:537b $af
    mDis_10                                            ;; 0f:537c $a3
    mRest_10                                           ;; 0f:537d $af
    mRest_8                                            ;; 0f:537e $8f
    mDis_10                                            ;; 0f:537f $a3
    mRest_10                                           ;; 0f:5380 $af
    mRest_5                                            ;; 0f:5381 $5f
    mOCTAVE_PLUS_1                                     ;; 0f:5382 $d8
    mJUMP .data_0f_5347                                ;; 0f:5383 $e1 $47 $53
    db   $e7, $14                                      ;; 0f:5386 ??

song08_channel2:
    mTEMPO $91                                         ;; 0f:5388 $e7 $91
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:538a $e4 $75 $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:538d $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:5390 $e5 $40
.data_0f_5392:
    mSTEREOPAN $03                                     ;; 0f:5392 $e6 $03
    mOCTAVE_3                                          ;; 0f:5394 $d3
    mFis_1                                             ;; 0f:5395 $16
    mE_5                                               ;; 0f:5396 $54
    mA_5                                               ;; 0f:5397 $59
    mG_5                                               ;; 0f:5398 $57
    mFis_5                                             ;; 0f:5399 $56
    mE_5                                               ;; 0f:539a $54
    mF_4                                               ;; 0f:539b $45
    mE_10                                              ;; 0f:539c $a4
    mDis_10                                            ;; 0f:539d $a3
    mD_0                                               ;; 0f:539e $02
    mRest_10                                           ;; 0f:539f $af
    mOCTAVE_MINUS_1                                    ;; 0f:53a0 $dc
    mB_10                                              ;; 0f:53a1 $ab
    mCPlus_10                                          ;; 0f:53a2 $ac
    mCisPlus_10                                        ;; 0f:53a3 $ad
    mOCTAVE_PLUS_1                                     ;; 0f:53a4 $d8
    mD_10                                              ;; 0f:53a5 $a2
    mDis_10                                            ;; 0f:53a6 $a3
    mE_10                                              ;; 0f:53a7 $a4
    mF_10                                              ;; 0f:53a8 $a5
    mFis_1                                             ;; 0f:53a9 $16
    mE_5                                               ;; 0f:53aa $54
    mA_5                                               ;; 0f:53ab $59
    mG_5                                               ;; 0f:53ac $57
    mFis_5                                             ;; 0f:53ad $56
    mE_5                                               ;; 0f:53ae $54
    mF_4                                               ;; 0f:53af $45
    mGis_10                                            ;; 0f:53b0 $a8
    mA_10                                              ;; 0f:53b1 $a9
    mB_0                                               ;; 0f:53b2 $0b
    mWait_10                                           ;; 0f:53b3 $ae
    mA_10                                              ;; 0f:53b4 $a9
    mGis_10                                            ;; 0f:53b5 $a8
    mF_10                                              ;; 0f:53b6 $a5
    mD_10                                              ;; 0f:53b7 $a2
    mF_10                                              ;; 0f:53b8 $a5
    mD_10                                              ;; 0f:53b9 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:53ba $dc
    mB_10                                              ;; 0f:53bb $ab
    mJUMP .data_0f_5392                                ;; 0f:53bc $e1 $92 $53

song08_channel1:
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:53bf $e4 $75 $7a
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:53c2 $e0 $ae $7a
    mDUTYCYCLE $40                                     ;; 0f:53c5 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:53c7 $e6 $03
.data_0f_53c9:
    mCOUNTER $04                                       ;; 0f:53c9 $e3 $04
.data_0f_53cb:
    mSTEREOPAN $03                                     ;; 0f:53cb $e6 $03
    mOCTAVE_2                                          ;; 0f:53cd $d2
    mA_10                                              ;; 0f:53ce $a9
    mFis_10                                            ;; 0f:53cf $a6
    mA_10                                              ;; 0f:53d0 $a9
    mFis_10                                            ;; 0f:53d1 $a6
    mSTEREOPAN $02                                     ;; 0f:53d2 $e6 $02
    mA_10                                              ;; 0f:53d4 $a9
    mFis_10                                            ;; 0f:53d5 $a6
    mA_10                                              ;; 0f:53d6 $a9
    mFis_10                                            ;; 0f:53d7 $a6
    mREPEAT .data_0f_53cb                              ;; 0f:53d8 $e2 $cb $53
    mCOUNTER $04                                       ;; 0f:53db $e3 $04
.data_0f_53dd:
    mSTEREOPAN $03                                     ;; 0f:53dd $e6 $03
    mGis_10                                            ;; 0f:53df $a8
    mF_10                                              ;; 0f:53e0 $a5
    mGis_10                                            ;; 0f:53e1 $a8
    mF_10                                              ;; 0f:53e2 $a5
    mSTEREOPAN $01                                     ;; 0f:53e3 $e6 $01
    mGis_10                                            ;; 0f:53e5 $a8
    mF_10                                              ;; 0f:53e6 $a5
    mGis_10                                            ;; 0f:53e7 $a8
    mF_10                                              ;; 0f:53e8 $a5
    mREPEAT .data_0f_53dd                              ;; 0f:53e9 $e2 $dd $53
    mJUMP .data_0f_53c9                                ;; 0f:53ec $e1 $c9 $53

song08_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:53ef $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:53f2 $e8 $dc $7a
    mVOLUME $20                                        ;; 0f:53f5 $e0 $20
.data_0f_53f7:
    mSTEREOPAN $03                                     ;; 0f:53f7 $e6 $03
    mOCTAVE_2                                          ;; 0f:53f9 $d2
    mC_10                                              ;; 0f:53fa $a0
    mRest_10                                           ;; 0f:53fb $af
    mC_10                                              ;; 0f:53fc $a0
    mRest_10                                           ;; 0f:53fd $af
    mRest_8                                            ;; 0f:53fe $8f
    mC_10                                              ;; 0f:53ff $a0
    mRest_10                                           ;; 0f:5400 $af
    mSTEREOPAN $02                                     ;; 0f:5401 $e6 $02
    mRest_8                                            ;; 0f:5403 $8f
    mC_10                                              ;; 0f:5404 $a0
    mRest_10                                           ;; 0f:5405 $af
    mRest_8                                            ;; 0f:5406 $8f
    mC_10                                              ;; 0f:5407 $a0
    mRest_10                                           ;; 0f:5408 $af
    mSTEREOPAN $03                                     ;; 0f:5409 $e6 $03
    mC_10                                              ;; 0f:540b $a0
    mRest_10                                           ;; 0f:540c $af
    mC_10                                              ;; 0f:540d $a0
    mRest_10                                           ;; 0f:540e $af
    mRest_8                                            ;; 0f:540f $8f
    mC_10                                              ;; 0f:5410 $a0
    mRest_10                                           ;; 0f:5411 $af
    mSTEREOPAN $02                                     ;; 0f:5412 $e6 $02
    mRest_8                                            ;; 0f:5414 $8f
    mC_10                                              ;; 0f:5415 $a0
    mRest_10                                           ;; 0f:5416 $af
    mRest_8                                            ;; 0f:5417 $8f
    mC_10                                              ;; 0f:5418 $a0
    mRest_10                                           ;; 0f:5419 $af
    mSTEREOPAN $03                                     ;; 0f:541a $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:541c $dc
    mB_10                                              ;; 0f:541d $ab
    mRest_10                                           ;; 0f:541e $af
    mB_10                                              ;; 0f:541f $ab
    mRest_10                                           ;; 0f:5420 $af
    mRest_8                                            ;; 0f:5421 $8f
    mB_10                                              ;; 0f:5422 $ab
    mRest_10                                           ;; 0f:5423 $af
    mSTEREOPAN $01                                     ;; 0f:5424 $e6 $01
    mRest_8                                            ;; 0f:5426 $8f
    mB_10                                              ;; 0f:5427 $ab
    mRest_10                                           ;; 0f:5428 $af
    mRest_8                                            ;; 0f:5429 $8f
    mB_10                                              ;; 0f:542a $ab
    mRest_10                                           ;; 0f:542b $af
    mSTEREOPAN $03                                     ;; 0f:542c $e6 $03
    mB_10                                              ;; 0f:542e $ab
    mRest_10                                           ;; 0f:542f $af
    mB_10                                              ;; 0f:5430 $ab
    mRest_10                                           ;; 0f:5431 $af
    mRest_8                                            ;; 0f:5432 $8f
    mB_10                                              ;; 0f:5433 $ab
    mRest_10                                           ;; 0f:5434 $af
    mSTEREOPAN $01                                     ;; 0f:5435 $e6 $01
    mRest_8                                            ;; 0f:5437 $8f
    mB_10                                              ;; 0f:5438 $ab
    mRest_10                                           ;; 0f:5439 $af
    mRest_8                                            ;; 0f:543a $8f
    mB_10                                              ;; 0f:543b $ab
    mRest_10                                           ;; 0f:543c $af
    mJUMP .data_0f_53f7                                ;; 0f:543d $e1 $f7 $53
    db   $e7, $14                                      ;; 0f:5440 ??

song09_channel2:
    mTEMPO $7f                                         ;; 0f:5442 $e7 $7f
    mVIBRATO frequencyDeltaData.third                  ;; 0f:5444 $e4 $63 $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5447 $e0 $82 $7a
    mSTEREOPAN $03                                     ;; 0f:544a $e6 $03
.data_0f_544c:
    mDUTYCYCLE $40                                     ;; 0f:544c $e5 $40
    mOCTAVE_1                                          ;; 0f:544e $d1
    mC_0                                               ;; 0f:544f $00
    mWait_2                                            ;; 0f:5450 $2e
    mC_2                                               ;; 0f:5451 $20
    mOCTAVE_MINUS_1                                    ;; 0f:5452 $dc
    mB_0                                               ;; 0f:5453 $0b
    mWait_2                                            ;; 0f:5454 $2e
    mB_2                                               ;; 0f:5455 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:5456 $d8
    mC_0                                               ;; 0f:5457 $00
    mWait_2                                            ;; 0f:5458 $2e
    mC_2                                               ;; 0f:5459 $20
    mCis_0                                             ;; 0f:545a $01
    mWait_2                                            ;; 0f:545b $2e
    mCis_2                                             ;; 0f:545c $21
    mJUMP .data_0f_544c                                ;; 0f:545d $e1 $4c $54

song09_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:5460 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:5463 $e0 $c2 $7a
    mSTEREOPAN $02                                     ;; 0f:5466 $e6 $02
    mOCTAVE_2                                          ;; 0f:5468 $d2
    mRest_10                                           ;; 0f:5469 $af
.data_0f_546a:
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:546a $e0 $c2 $7a
    mDUTYCYCLE $80                                     ;; 0f:546d $e5 $80
    mGis_8                                             ;; 0f:546f $88
    mE_8                                               ;; 0f:5470 $84
    mC_8                                               ;; 0f:5471 $80
    mE_8                                               ;; 0f:5472 $84
    mGis_8                                             ;; 0f:5473 $88
    mE_8                                               ;; 0f:5474 $84
    mC_8                                               ;; 0f:5475 $80
    mE_8                                               ;; 0f:5476 $84
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:5477 $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:547a $e5 $40
    mGis_8                                             ;; 0f:547c $88
    mE_8                                               ;; 0f:547d $84
    mC_8                                               ;; 0f:547e $80
    mE_8                                               ;; 0f:547f $84
    mDUTYCYCLE $00                                     ;; 0f:5480 $e5 $00
    mGis_8                                             ;; 0f:5482 $88
    mE_8                                               ;; 0f:5483 $84
    mC_8                                               ;; 0f:5484 $80
    mE_8                                               ;; 0f:5485 $84
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:5486 $e0 $c2 $7a
    mDUTYCYCLE $80                                     ;; 0f:5489 $e5 $80
    mG_8                                               ;; 0f:548b $87
    mDis_8                                             ;; 0f:548c $83
    mOCTAVE_MINUS_1                                    ;; 0f:548d $dc
    mB_8                                               ;; 0f:548e $8b
    mOCTAVE_PLUS_1                                     ;; 0f:548f $d8
    mDis_8                                             ;; 0f:5490 $83
    mG_8                                               ;; 0f:5491 $87
    mDis_8                                             ;; 0f:5492 $83
    mOCTAVE_MINUS_1                                    ;; 0f:5493 $dc
    mB_8                                               ;; 0f:5494 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5495 $d8
    mDis_8                                             ;; 0f:5496 $83
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:5497 $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:549a $e5 $40
    mG_8                                               ;; 0f:549c $87
    mDis_8                                             ;; 0f:549d $83
    mOCTAVE_MINUS_1                                    ;; 0f:549e $dc
    mB_8                                               ;; 0f:549f $8b
    mOCTAVE_PLUS_1                                     ;; 0f:54a0 $d8
    mDis_8                                             ;; 0f:54a1 $83
    mDUTYCYCLE $00                                     ;; 0f:54a2 $e5 $00
    mG_8                                               ;; 0f:54a4 $87
    mDis_8                                             ;; 0f:54a5 $83
    mOCTAVE_MINUS_1                                    ;; 0f:54a6 $dc
    mB_8                                               ;; 0f:54a7 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:54a8 $d8
    mDis_8                                             ;; 0f:54a9 $83
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:54aa $e0 $c2 $7a
    mDUTYCYCLE $80                                     ;; 0f:54ad $e5 $80
    mGis_8                                             ;; 0f:54af $88
    mE_8                                               ;; 0f:54b0 $84
    mC_8                                               ;; 0f:54b1 $80
    mE_8                                               ;; 0f:54b2 $84
    mGis_8                                             ;; 0f:54b3 $88
    mE_8                                               ;; 0f:54b4 $84
    mC_8                                               ;; 0f:54b5 $80
    mE_8                                               ;; 0f:54b6 $84
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:54b7 $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:54ba $e5 $40
    mGis_8                                             ;; 0f:54bc $88
    mE_8                                               ;; 0f:54bd $84
    mC_8                                               ;; 0f:54be $80
    mE_8                                               ;; 0f:54bf $84
    mDUTYCYCLE $00                                     ;; 0f:54c0 $e5 $00
    mGis_8                                             ;; 0f:54c2 $88
    mE_8                                               ;; 0f:54c3 $84
    mC_8                                               ;; 0f:54c4 $80
    mE_8                                               ;; 0f:54c5 $84
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:54c6 $e0 $c2 $7a
    mDUTYCYCLE $80                                     ;; 0f:54c9 $e5 $80
    mA_8                                               ;; 0f:54cb $89
    mF_8                                               ;; 0f:54cc $85
    mCis_8                                             ;; 0f:54cd $81
    mF_8                                               ;; 0f:54ce $85
    mA_8                                               ;; 0f:54cf $89
    mF_8                                               ;; 0f:54d0 $85
    mCis_8                                             ;; 0f:54d1 $81
    mF_8                                               ;; 0f:54d2 $85
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:54d3 $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:54d6 $e5 $40
    mA_8                                               ;; 0f:54d8 $89
    mF_8                                               ;; 0f:54d9 $85
    mCis_8                                             ;; 0f:54da $81
    mF_8                                               ;; 0f:54db $85
    mDUTYCYCLE $00                                     ;; 0f:54dc $e5 $00
    mA_8                                               ;; 0f:54de $89
    mF_8                                               ;; 0f:54df $85
    mCis_8                                             ;; 0f:54e0 $81
    mF_8                                               ;; 0f:54e1 $85
    mJUMP .data_0f_546a                                ;; 0f:54e2 $e1 $6a $54

song09_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:54e5 $e4 $4f $7a
    mSTEREOPAN $01                                     ;; 0f:54e8 $e6 $01
.data_0f_54ea:
    mWAVETABLE wavePatternsData                        ;; 0f:54ea $e8 $cc $7a
    mVOLUME $20                                        ;; 0f:54ed $e0 $20
    mOCTAVE_3                                          ;; 0f:54ef $d3
    mGis_8                                             ;; 0f:54f0 $88
    mE_8                                               ;; 0f:54f1 $84
    mC_8                                               ;; 0f:54f2 $80
    mE_8                                               ;; 0f:54f3 $84
    mOCTAVE_3                                          ;; 0f:54f4 $d3
    mGis_8                                             ;; 0f:54f5 $88
    mE_8                                               ;; 0f:54f6 $84
    mC_8                                               ;; 0f:54f7 $80
    mE_8                                               ;; 0f:54f8 $84
    mWAVETABLE data_0f_7adc                            ;; 0f:54f9 $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:54fc $e0 $40
    mOCTAVE_3                                          ;; 0f:54fe $d3
    mGis_8                                             ;; 0f:54ff $88
    mE_8                                               ;; 0f:5500 $84
    mC_8                                               ;; 0f:5501 $80
    mE_8                                               ;; 0f:5502 $84
    mWAVETABLE data_0f_7aec                            ;; 0f:5503 $e8 $ec $7a
    mOCTAVE_3                                          ;; 0f:5506 $d3
    mGis_8                                             ;; 0f:5507 $88
    mE_8                                               ;; 0f:5508 $84
    mC_8                                               ;; 0f:5509 $80
    mE_8                                               ;; 0f:550a $84
    mWAVETABLE wavePatternsData                        ;; 0f:550b $e8 $cc $7a
    mVOLUME $20                                        ;; 0f:550e $e0 $20
    mG_8                                               ;; 0f:5510 $87
    mDis_8                                             ;; 0f:5511 $83
    mOCTAVE_MINUS_1                                    ;; 0f:5512 $dc
    mB_8                                               ;; 0f:5513 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5514 $d8
    mDis_8                                             ;; 0f:5515 $83
    mG_8                                               ;; 0f:5516 $87
    mDis_8                                             ;; 0f:5517 $83
    mOCTAVE_MINUS_1                                    ;; 0f:5518 $dc
    mB_8                                               ;; 0f:5519 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:551a $d8
    mDis_8                                             ;; 0f:551b $83
    mWAVETABLE data_0f_7adc                            ;; 0f:551c $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:551f $e0 $40
    mG_8                                               ;; 0f:5521 $87
    mDis_8                                             ;; 0f:5522 $83
    mOCTAVE_MINUS_1                                    ;; 0f:5523 $dc
    mB_8                                               ;; 0f:5524 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5525 $d8
    mDis_8                                             ;; 0f:5526 $83
    mWAVETABLE data_0f_7aec                            ;; 0f:5527 $e8 $ec $7a
    mG_8                                               ;; 0f:552a $87
    mDis_8                                             ;; 0f:552b $83
    mOCTAVE_MINUS_1                                    ;; 0f:552c $dc
    mB_8                                               ;; 0f:552d $8b
    mOCTAVE_PLUS_1                                     ;; 0f:552e $d8
    mDis_8                                             ;; 0f:552f $83
    mWAVETABLE wavePatternsData                        ;; 0f:5530 $e8 $cc $7a
    mVOLUME $20                                        ;; 0f:5533 $e0 $20
    mGis_8                                             ;; 0f:5535 $88
    mE_8                                               ;; 0f:5536 $84
    mC_8                                               ;; 0f:5537 $80
    mE_8                                               ;; 0f:5538 $84
    mGis_8                                             ;; 0f:5539 $88
    mE_8                                               ;; 0f:553a $84
    mC_8                                               ;; 0f:553b $80
    mE_8                                               ;; 0f:553c $84
    mWAVETABLE data_0f_7adc                            ;; 0f:553d $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:5540 $e0 $40
    mGis_8                                             ;; 0f:5542 $88
    mE_8                                               ;; 0f:5543 $84
    mC_8                                               ;; 0f:5544 $80
    mE_8                                               ;; 0f:5545 $84
    mWAVETABLE data_0f_7aec                            ;; 0f:5546 $e8 $ec $7a
    mGis_8                                             ;; 0f:5549 $88
    mE_8                                               ;; 0f:554a $84
    mC_8                                               ;; 0f:554b $80
    mE_8                                               ;; 0f:554c $84
    mWAVETABLE wavePatternsData                        ;; 0f:554d $e8 $cc $7a
    mVOLUME $20                                        ;; 0f:5550 $e0 $20
    mA_8                                               ;; 0f:5552 $89
    mF_8                                               ;; 0f:5553 $85
    mCis_8                                             ;; 0f:5554 $81
    mF_8                                               ;; 0f:5555 $85
    mA_8                                               ;; 0f:5556 $89
    mF_8                                               ;; 0f:5557 $85
    mCis_8                                             ;; 0f:5558 $81
    mF_8                                               ;; 0f:5559 $85
    mWAVETABLE data_0f_7adc                            ;; 0f:555a $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:555d $e0 $40
    mA_8                                               ;; 0f:555f $89
    mF_8                                               ;; 0f:5560 $85
    mCis_8                                             ;; 0f:5561 $81
    mF_8                                               ;; 0f:5562 $85
    mWAVETABLE data_0f_7aec                            ;; 0f:5563 $e8 $ec $7a
    mA_8                                               ;; 0f:5566 $89
    mF_8                                               ;; 0f:5567 $85
    mCis_8                                             ;; 0f:5568 $81
    mF_8                                               ;; 0f:5569 $85
    mJUMP .data_0f_54ea                                ;; 0f:556a $e1 $ea $54
    db   $e7, $14                                      ;; 0f:556d ??

song0a_channel2:
    mTEMPO $3e                                         ;; 0f:556f $e7 $3e
    mVIBRATO frequencyDeltaData                        ;; 0f:5571 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5574 $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:5577 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:5579 $e6 $03
.data_0f_557b:
    mCOUNTER $02                                       ;; 0f:557b $e3 $02
.data_0f_557d:
    mOCTAVE_2                                          ;; 0f:557d $d2
    mE_5                                               ;; 0f:557e $54
    mCisPlus_5                                         ;; 0f:557f $5d
    mB_5                                               ;; 0f:5580 $5b
    mA_5                                               ;; 0f:5581 $59
    mGis_5                                             ;; 0f:5582 $58
    mFis_5                                             ;; 0f:5583 $56
    mB_5                                               ;; 0f:5584 $5b
    mWait_10                                           ;; 0f:5585 $ae
    mA_10                                              ;; 0f:5586 $a9
    mGis_10                                            ;; 0f:5587 $a8
    mFis_10                                            ;; 0f:5588 $a6
    mGis_5                                             ;; 0f:5589 $58
    mOCTAVE_PLUS_1                                     ;; 0f:558a $d8
    mE_5                                               ;; 0f:558b $54
    mD_5                                               ;; 0f:558c $52
    mCis_5                                             ;; 0f:558d $51
    mOCTAVE_MINUS_1                                    ;; 0f:558e $dc
    mB_4                                               ;; 0f:558f $4b
    mA_10                                              ;; 0f:5590 $a9
    mGis_10                                            ;; 0f:5591 $a8
    mA_2                                               ;; 0f:5592 $29
    mGis_8                                             ;; 0f:5593 $88
    mFis_8                                             ;; 0f:5594 $86
    mF_8                                               ;; 0f:5595 $85
    mFis_8                                             ;; 0f:5596 $86
    mB_5                                               ;; 0f:5597 $5b
    mCisPlus_8                                         ;; 0f:5598 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:5599 $d8
    mD_8                                               ;; 0f:559a $82
    mE_8                                               ;; 0f:559b $84
    mCis_8                                             ;; 0f:559c $81
    mE_8                                               ;; 0f:559d $84
    mGis_8                                             ;; 0f:559e $88
    mFis_5                                             ;; 0f:559f $56
    mE_5                                               ;; 0f:55a0 $54
    mJUMPIF $01, .data_0f_55b3                         ;; 0f:55a1 $eb $01 $b3 $55
    mD_5                                               ;; 0f:55a5 $52
    mOCTAVE_MINUS_1                                    ;; 0f:55a6 $dc
    mFis_4                                             ;; 0f:55a7 $46
    mGis_8                                             ;; 0f:55a8 $88
    mA_8                                               ;; 0f:55a9 $89
    mB_8                                               ;; 0f:55aa $8b
    mA_4                                               ;; 0f:55ab $49
    mB_10                                              ;; 0f:55ac $ab
    mA_10                                              ;; 0f:55ad $a9
    mGis_5                                             ;; 0f:55ae $58
    mFis_5                                             ;; 0f:55af $56
    mREPEAT .data_0f_557d                              ;; 0f:55b0 $e2 $7d $55
.data_0f_55b3:
    mD_2                                               ;; 0f:55b3 $22
    mCis_8                                             ;; 0f:55b4 $81
    mOCTAVE_MINUS_1                                    ;; 0f:55b5 $dc
    mB_8                                               ;; 0f:55b6 $8b
    mA_8                                               ;; 0f:55b7 $89
    mGis_8                                             ;; 0f:55b8 $88
    mB_2                                               ;; 0f:55b9 $2b
    mA_2                                               ;; 0f:55ba $29
    mJUMP .data_0f_557b                                ;; 0f:55bb $e1 $7b $55

song0a_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:55be $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:55c1 $e0 $c4 $7a
    mDUTYCYCLE $00                                     ;; 0f:55c4 $e5 $00
.data_0f_55c6:
    mCOUNTER $02                                       ;; 0f:55c6 $e3 $02
.data_0f_55c8:
    mSTEREOPAN $02                                     ;; 0f:55c8 $e6 $02
    mOCTAVE_2                                          ;; 0f:55ca $d2
    mCis_8                                             ;; 0f:55cb $81
    mOCTAVE_MINUS_1                                    ;; 0f:55cc $dc
    mA_8                                               ;; 0f:55cd $89
    mOCTAVE_PLUS_1                                     ;; 0f:55ce $d8
    mE_8                                               ;; 0f:55cf $84
    mA_8                                               ;; 0f:55d0 $89
    mGis_5                                             ;; 0f:55d1 $58
    mE_5                                               ;; 0f:55d2 $54
    mSTEREOPAN $03                                     ;; 0f:55d3 $e6 $03
    mD_4                                               ;; 0f:55d5 $42
    mCis_8                                             ;; 0f:55d6 $81
    mD_8                                               ;; 0f:55d7 $82
    mE_8                                               ;; 0f:55d8 $84
    mD_5                                               ;; 0f:55d9 $52
    mSTEREOPAN $01                                     ;; 0f:55da $e6 $01
    mE_8                                               ;; 0f:55dc $84
    mCis_8                                             ;; 0f:55dd $81
    mGis_8                                             ;; 0f:55de $88
    mB_8                                               ;; 0f:55df $8b
    mFis_5                                             ;; 0f:55e0 $56
    mE_5                                               ;; 0f:55e1 $54
    mSTEREOPAN $03                                     ;; 0f:55e2 $e6 $03
    mFis_4                                             ;; 0f:55e4 $46
    mE_8                                               ;; 0f:55e5 $84
    mFis_8                                             ;; 0f:55e6 $86
    mCis_8                                             ;; 0f:55e7 $81
    mFis_8                                             ;; 0f:55e8 $86
    mE_8                                               ;; 0f:55e9 $84
    mSTEREOPAN $02                                     ;; 0f:55ea $e6 $02
    mD_5                                               ;; 0f:55ec $52
    mCis_8                                             ;; 0f:55ed $81
    mD_8                                               ;; 0f:55ee $82
    mE_8                                               ;; 0f:55ef $84
    mFis_8                                             ;; 0f:55f0 $86
    mSTEREOPAN $03                                     ;; 0f:55f1 $e6 $03
    mGis_8                                             ;; 0f:55f3 $88
    mFis_8                                             ;; 0f:55f4 $86
    mSTEREOPAN $01                                     ;; 0f:55f5 $e6 $01
    mGis_5                                             ;; 0f:55f7 $58
    mB_5                                               ;; 0f:55f8 $5b
    mCisPlus_8                                         ;; 0f:55f9 $8d
    mB_8                                               ;; 0f:55fa $8b
    mAis_8                                             ;; 0f:55fb $8a
    mGis_8                                             ;; 0f:55fc $88
    mJUMPIF $01, .data_0f_5617                         ;; 0f:55fd $eb $01 $17 $56
    mSTEREOPAN $03                                     ;; 0f:5601 $e6 $03
    mFis_8                                             ;; 0f:5603 $86
    mE_8                                               ;; 0f:5604 $84
    mD_8                                               ;; 0f:5605 $82
    mCis_8                                             ;; 0f:5606 $81
    mD_2                                               ;; 0f:5607 $22
    mSTEREOPAN $02                                     ;; 0f:5608 $e6 $02
    mD_8                                               ;; 0f:560a $82
    mOCTAVE_MINUS_1                                    ;; 0f:560b $dc
    mB_8                                               ;; 0f:560c $8b
    mCisPlus_8                                         ;; 0f:560d $8d
    mOCTAVE_PLUS_1                                     ;; 0f:560e $d8
    mD_8                                               ;; 0f:560f $82
    mSTEREOPAN $03                                     ;; 0f:5610 $e6 $03
    mE_5                                               ;; 0f:5612 $54
    mD_5                                               ;; 0f:5613 $52
    mREPEAT .data_0f_55c8                              ;; 0f:5614 $e2 $c8 $55
.data_0f_5617:
    mSTEREOPAN $03                                     ;; 0f:5617 $e6 $03
    mRest_8                                            ;; 0f:5619 $8f
    mFis_8                                             ;; 0f:561a $86
    mGis_8                                             ;; 0f:561b $88
    mA_8                                               ;; 0f:561c $89
    mGis_8                                             ;; 0f:561d $88
    mFis_8                                             ;; 0f:561e $86
    mE_5                                               ;; 0f:561f $54
    mFis_5                                             ;; 0f:5620 $56
    mE_8                                               ;; 0f:5621 $84
    mD_8                                               ;; 0f:5622 $82
    mCis_2                                             ;; 0f:5623 $21
    mJUMP .data_0f_55c6                                ;; 0f:5624 $e1 $c6 $55

song0a_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5627 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:562a $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:562d $e0 $40
    mSTEREOPAN $03                                     ;; 0f:562f $e6 $03
.data_0f_5631:
    mCOUNTER $02                                       ;; 0f:5631 $e3 $02
.data_0f_5633:
    mOCTAVE_1                                          ;; 0f:5633 $d1
    mA_1                                               ;; 0f:5634 $19
    mCisPlus_5                                         ;; 0f:5635 $5d
    mOCTAVE_PLUS_1                                     ;; 0f:5636 $d8
    mD_0                                               ;; 0f:5637 $02
    mCis_1                                             ;; 0f:5638 $11
    mGis_5                                             ;; 0f:5639 $58
    mFis_5                                             ;; 0f:563a $56
    mCis_5                                             ;; 0f:563b $51
    mOCTAVE_MINUS_1                                    ;; 0f:563c $dc
    mFis_5                                             ;; 0f:563d $56
    mCisPlus_5                                         ;; 0f:563e $5d
    mB_2                                               ;; 0f:563f $2b
    mOCTAVE_PLUS_1                                     ;; 0f:5640 $d8
    mE_5                                               ;; 0f:5641 $54
    mD_5                                               ;; 0f:5642 $52
    mCis_2                                             ;; 0f:5643 $21
    mOCTAVE_MINUS_1                                    ;; 0f:5644 $dc
    mFis_2                                             ;; 0f:5645 $26
    mJUMPIF $01, .data_0f_5652                         ;; 0f:5646 $eb $01 $52 $56
    mB_0                                               ;; 0f:564a $0b
    mOCTAVE_PLUS_1                                     ;; 0f:564b $d8
    mE_1                                               ;; 0f:564c $14
    mD_5                                               ;; 0f:564d $52
    mOCTAVE_MINUS_1                                    ;; 0f:564e $dc
    mREPEAT .data_0f_5633                              ;; 0f:564f $e2 $33 $56
.data_0f_5652:
    mB_2                                               ;; 0f:5652 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:5653 $d8
    mE_2                                               ;; 0f:5654 $24
    mD_5                                               ;; 0f:5655 $52
    mCis_8                                             ;; 0f:5656 $81
    mOCTAVE_MINUS_1                                    ;; 0f:5657 $dc
    mB_8                                               ;; 0f:5658 $8b
    mA_5                                               ;; 0f:5659 $59
    mOCTAVE_PLUS_1                                     ;; 0f:565a $d8
    mE_5                                               ;; 0f:565b $54
    mJUMP .data_0f_5631                                ;; 0f:565c $e1 $31 $56
    db   $e7, $14                                      ;; 0f:565f ??

song0b_channel2:
    mTEMPO $82                                         ;; 0f:5661 $e7 $82
    mVIBRATO frequencyDeltaData.fifth                  ;; 0f:5663 $e4 $75 $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5666 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:5669 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:566b $e6 $03
    mCOUNTER $02                                       ;; 0f:566d $e3 $02
.data_0f_566f:
    mOCTAVE_1                                          ;; 0f:566f $d1
    mOCTAVE_MINUS_1                                    ;; 0f:5670 $dc
    mFis_0                                             ;; 0f:5671 $06
    mFis_0                                             ;; 0f:5672 $06
    mFis_2                                             ;; 0f:5673 $26
    mOCTAVE_PLUS_1                                     ;; 0f:5674 $d8
    mFis_2                                             ;; 0f:5675 $26
    mCis_2                                             ;; 0f:5676 $21
    mOCTAVE_MINUS_1                                    ;; 0f:5677 $dc
    mFis_2                                             ;; 0f:5678 $26
    mF_0                                               ;; 0f:5679 $05
    mF_0                                               ;; 0f:567a $05
    mF_2                                               ;; 0f:567b $25
    mOCTAVE_PLUS_1                                     ;; 0f:567c $d8
    mF_2                                               ;; 0f:567d $25
    mC_2                                               ;; 0f:567e $20
    mOCTAVE_MINUS_1                                    ;; 0f:567f $dc
    mF_2                                               ;; 0f:5680 $25
    mREPEAT .data_0f_566f                              ;; 0f:5681 $e2 $6f $56
    mFis_0                                             ;; 0f:5684 $06
    mFis_0                                             ;; 0f:5685 $06
    mFis_2                                             ;; 0f:5686 $26
    mOCTAVE_PLUS_1                                     ;; 0f:5687 $d8
    mFis_2                                             ;; 0f:5688 $26
    mCis_2                                             ;; 0f:5689 $21
    mOCTAVE_MINUS_1                                    ;; 0f:568a $dc
    mFis_2                                             ;; 0f:568b $26
    mG_0                                               ;; 0f:568c $07
    mG_0                                               ;; 0f:568d $07
    mG_2                                               ;; 0f:568e $27
    mOCTAVE_PLUS_1                                     ;; 0f:568f $d8
    mD_2                                               ;; 0f:5690 $22
    mOCTAVE_MINUS_1                                    ;; 0f:5691 $dc
    mG_2                                               ;; 0f:5692 $27
    mF_2                                               ;; 0f:5693 $25
    mE_0                                               ;; 0f:5694 $04
    mE_0                                               ;; 0f:5695 $04
    mE_2                                               ;; 0f:5696 $24
    mOCTAVE_PLUS_1                                     ;; 0f:5697 $d8
    mE_2                                               ;; 0f:5698 $24
    mOCTAVE_MINUS_1                                    ;; 0f:5699 $dc
    mB_2                                               ;; 0f:569a $2b
    mE_2                                               ;; 0f:569b $24
    mF_0                                               ;; 0f:569c $05
    mF_0                                               ;; 0f:569d $05
    mF_2                                               ;; 0f:569e $25
    mOCTAVE_PLUS_1                                     ;; 0f:569f $d8
    mTEMPO $78                                         ;; 0f:56a0 $e7 $78
    mF_2                                               ;; 0f:56a2 $25
    mTEMPO $73                                         ;; 0f:56a3 $e7 $73
    mC_2                                               ;; 0f:56a5 $20
    mOCTAVE_MINUS_1                                    ;; 0f:56a6 $dc
    mTEMPO $6c                                         ;; 0f:56a7 $e7 $6c
    mF_2                                               ;; 0f:56a9 $25
    mJUMP song0b_channel2                              ;; 0f:56aa $e1 $61 $56

song0b_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:56ad $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:56b0 $e0 $c0 $7a
    mDUTYCYCLE $80                                     ;; 0f:56b3 $e5 $80
    mSTEREOPAN $02                                     ;; 0f:56b5 $e6 $02
    mOCTAVE_3                                          ;; 0f:56b7 $d3
    mRest_10                                           ;; 0f:56b8 $af
.data_0f_56b9:
    mCOUNTER $04                                       ;; 0f:56b9 $e3 $04
.data_0f_56bb:
    mOCTAVE_3                                          ;; 0f:56bb $d3
    mE_8                                               ;; 0f:56bc $84
    mOCTAVE_MINUS_1                                    ;; 0f:56bd $dc
    mA_8                                               ;; 0f:56be $89
    mCisPlus_8                                         ;; 0f:56bf $8d
    mOCTAVE_PLUS_1                                     ;; 0f:56c0 $d8
    mE_8                                               ;; 0f:56c1 $84
    mFis_8                                             ;; 0f:56c2 $86
    mOCTAVE_MINUS_1                                    ;; 0f:56c3 $dc
    mA_8                                               ;; 0f:56c4 $89
    mCisPlus_8                                         ;; 0f:56c5 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:56c6 $d8
    mFis_8                                             ;; 0f:56c7 $86
    mREPEAT .data_0f_56bb                              ;; 0f:56c8 $e2 $bb $56
    mCOUNTER $04                                       ;; 0f:56cb $e3 $04
.data_0f_56cd:
    mE_8                                               ;; 0f:56cd $84
    mOCTAVE_MINUS_1                                    ;; 0f:56ce $dc
    mA_8                                               ;; 0f:56cf $89
    mCPlus_8                                           ;; 0f:56d0 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:56d1 $d8
    mE_8                                               ;; 0f:56d2 $84
    mF_8                                               ;; 0f:56d3 $85
    mOCTAVE_MINUS_1                                    ;; 0f:56d4 $dc
    mA_8                                               ;; 0f:56d5 $89
    mCPlus_8                                           ;; 0f:56d6 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:56d7 $d8
    mF_8                                               ;; 0f:56d8 $85
    mREPEAT .data_0f_56cd                              ;; 0f:56d9 $e2 $cd $56
    mCOUNTER $04                                       ;; 0f:56dc $e3 $04
.data_0f_56de:
    mE_8                                               ;; 0f:56de $84
    mOCTAVE_MINUS_1                                    ;; 0f:56df $dc
    mA_8                                               ;; 0f:56e0 $89
    mCisPlus_8                                         ;; 0f:56e1 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:56e2 $d8
    mE_8                                               ;; 0f:56e3 $84
    mFis_8                                             ;; 0f:56e4 $86
    mOCTAVE_MINUS_1                                    ;; 0f:56e5 $dc
    mA_8                                               ;; 0f:56e6 $89
    mCisPlus_8                                         ;; 0f:56e7 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:56e8 $d8
    mFis_8                                             ;; 0f:56e9 $86
    mREPEAT .data_0f_56de                              ;; 0f:56ea $e2 $de $56
    mCOUNTER $04                                       ;; 0f:56ed $e3 $04
.data_0f_56ef:
    mE_8                                               ;; 0f:56ef $84
    mOCTAVE_MINUS_1                                    ;; 0f:56f0 $dc
    mA_8                                               ;; 0f:56f1 $89
    mCPlus_8                                           ;; 0f:56f2 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:56f3 $d8
    mE_8                                               ;; 0f:56f4 $84
    mF_8                                               ;; 0f:56f5 $85
    mOCTAVE_MINUS_1                                    ;; 0f:56f6 $dc
    mA_8                                               ;; 0f:56f7 $89
    mCPlus_8                                           ;; 0f:56f8 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:56f9 $d8
    mF_8                                               ;; 0f:56fa $85
    mREPEAT .data_0f_56ef                              ;; 0f:56fb $e2 $ef $56
    mCOUNTER $04                                       ;; 0f:56fe $e3 $04
.data_0f_5700:
    mF_8                                               ;; 0f:5700 $85
    mOCTAVE_MINUS_1                                    ;; 0f:5701 $dc
    mAis_8                                             ;; 0f:5702 $8a
    mCisPlus_8                                         ;; 0f:5703 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:5704 $d8
    mF_8                                               ;; 0f:5705 $85
    mFis_8                                             ;; 0f:5706 $86
    mOCTAVE_MINUS_1                                    ;; 0f:5707 $dc
    mAis_8                                             ;; 0f:5708 $8a
    mCisPlus_8                                         ;; 0f:5709 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:570a $d8
    mFis_8                                             ;; 0f:570b $86
    mREPEAT .data_0f_5700                              ;; 0f:570c $e2 $00 $57
    mCOUNTER $03                                       ;; 0f:570f $e3 $03
.data_0f_5711:
    mG_8                                               ;; 0f:5711 $87
    mOCTAVE_MINUS_1                                    ;; 0f:5712 $dc
    mAis_8                                             ;; 0f:5713 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:5714 $d8
    mD_8                                               ;; 0f:5715 $82
    mG_8                                               ;; 0f:5716 $87
    mA_8                                               ;; 0f:5717 $89
    mOCTAVE_MINUS_1                                    ;; 0f:5718 $dc
    mAis_8                                             ;; 0f:5719 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:571a $d8
    mD_8                                               ;; 0f:571b $82
    mA_8                                               ;; 0f:571c $89
    mREPEAT .data_0f_5711                              ;; 0f:571d $e2 $11 $57
    mG_8                                               ;; 0f:5720 $87
    mOCTAVE_MINUS_1                                    ;; 0f:5721 $dc
    mAis_8                                             ;; 0f:5722 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:5723 $d8
    mD_8                                               ;; 0f:5724 $82
    mG_8                                               ;; 0f:5725 $87
    mF_8                                               ;; 0f:5726 $85
    mOCTAVE_MINUS_1                                    ;; 0f:5727 $dc
    mA_8                                               ;; 0f:5728 $89
    mCPlus_8                                           ;; 0f:5729 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:572a $d8
    mF_8                                               ;; 0f:572b $85
    mCOUNTER $04                                       ;; 0f:572c $e3 $04
.data_0f_572e:
    mE_8                                               ;; 0f:572e $84
    mOCTAVE_MINUS_1                                    ;; 0f:572f $dc
    mG_8                                               ;; 0f:5730 $87
    mB_8                                               ;; 0f:5731 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5732 $d8
    mE_8                                               ;; 0f:5733 $84
    mFis_8                                             ;; 0f:5734 $86
    mOCTAVE_MINUS_1                                    ;; 0f:5735 $dc
    mG_8                                               ;; 0f:5736 $87
    mB_8                                               ;; 0f:5737 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5738 $d8
    mFis_8                                             ;; 0f:5739 $86
    mREPEAT .data_0f_572e                              ;; 0f:573a $e2 $2e $57
    mCOUNTER $04                                       ;; 0f:573d $e3 $04
.data_0f_573f:
    mE_8                                               ;; 0f:573f $84
    mOCTAVE_MINUS_1                                    ;; 0f:5740 $dc
    mA_8                                               ;; 0f:5741 $89
    mCPlus_8                                           ;; 0f:5742 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:5743 $d8
    mE_8                                               ;; 0f:5744 $84
    mF_8                                               ;; 0f:5745 $85
    mOCTAVE_MINUS_1                                    ;; 0f:5746 $dc
    mA_8                                               ;; 0f:5747 $89
    mCPlus_8                                           ;; 0f:5748 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:5749 $d8
    mF_8                                               ;; 0f:574a $85
    mREPEAT .data_0f_573f                              ;; 0f:574b $e2 $3f $57
    mJUMP .data_0f_56b9                                ;; 0f:574e $e1 $b9 $56

song0b_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5751 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:5754 $e8 $cc $7a
    mVOLUME $20                                        ;; 0f:5757 $e0 $20
    mSTEREOPAN $01                                     ;; 0f:5759 $e6 $01
.data_0f_575b:
    mCOUNTER $04                                       ;; 0f:575b $e3 $04
.data_0f_575d:
    mOCTAVE_4                                          ;; 0f:575d $d4
    mE_8                                               ;; 0f:575e $84
    mOCTAVE_MINUS_1                                    ;; 0f:575f $dc
    mA_8                                               ;; 0f:5760 $89
    mCisPlus_8                                         ;; 0f:5761 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:5762 $d8
    mE_8                                               ;; 0f:5763 $84
    mFis_8                                             ;; 0f:5764 $86
    mOCTAVE_MINUS_1                                    ;; 0f:5765 $dc
    mA_8                                               ;; 0f:5766 $89
    mCisPlus_8                                         ;; 0f:5767 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:5768 $d8
    mFis_8                                             ;; 0f:5769 $86
    mREPEAT .data_0f_575d                              ;; 0f:576a $e2 $5d $57
    mCOUNTER $04                                       ;; 0f:576d $e3 $04
.data_0f_576f:
    mE_8                                               ;; 0f:576f $84
    mOCTAVE_MINUS_1                                    ;; 0f:5770 $dc
    mA_8                                               ;; 0f:5771 $89
    mCPlus_8                                           ;; 0f:5772 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:5773 $d8
    mE_8                                               ;; 0f:5774 $84
    mF_8                                               ;; 0f:5775 $85
    mOCTAVE_MINUS_1                                    ;; 0f:5776 $dc
    mA_8                                               ;; 0f:5777 $89
    mCPlus_8                                           ;; 0f:5778 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:5779 $d8
    mF_8                                               ;; 0f:577a $85
    mREPEAT .data_0f_576f                              ;; 0f:577b $e2 $6f $57
    mCOUNTER $04                                       ;; 0f:577e $e3 $04
.data_0f_5780:
    mE_8                                               ;; 0f:5780 $84
    mOCTAVE_MINUS_1                                    ;; 0f:5781 $dc
    mA_8                                               ;; 0f:5782 $89
    mCisPlus_8                                         ;; 0f:5783 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:5784 $d8
    mE_8                                               ;; 0f:5785 $84
    mFis_8                                             ;; 0f:5786 $86
    mOCTAVE_MINUS_1                                    ;; 0f:5787 $dc
    mA_8                                               ;; 0f:5788 $89
    mCisPlus_8                                         ;; 0f:5789 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:578a $d8
    mFis_8                                             ;; 0f:578b $86
    mREPEAT .data_0f_5780                              ;; 0f:578c $e2 $80 $57
    mCOUNTER $04                                       ;; 0f:578f $e3 $04
.data_0f_5791:
    mE_8                                               ;; 0f:5791 $84
    mOCTAVE_MINUS_1                                    ;; 0f:5792 $dc
    mA_8                                               ;; 0f:5793 $89
    mCPlus_8                                           ;; 0f:5794 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:5795 $d8
    mE_8                                               ;; 0f:5796 $84
    mF_8                                               ;; 0f:5797 $85
    mOCTAVE_MINUS_1                                    ;; 0f:5798 $dc
    mA_8                                               ;; 0f:5799 $89
    mCPlus_8                                           ;; 0f:579a $8c
    mOCTAVE_PLUS_1                                     ;; 0f:579b $d8
    mF_8                                               ;; 0f:579c $85
    mREPEAT .data_0f_5791                              ;; 0f:579d $e2 $91 $57
    mCOUNTER $04                                       ;; 0f:57a0 $e3 $04
.data_0f_57a2:
    mF_8                                               ;; 0f:57a2 $85
    mOCTAVE_MINUS_1                                    ;; 0f:57a3 $dc
    mAis_8                                             ;; 0f:57a4 $8a
    mCisPlus_8                                         ;; 0f:57a5 $8d
    mOCTAVE_PLUS_1                                     ;; 0f:57a6 $d8
    mF_8                                               ;; 0f:57a7 $85
    mFis_8                                             ;; 0f:57a8 $86
    mOCTAVE_MINUS_1                                    ;; 0f:57a9 $dc
    mAis_8                                             ;; 0f:57aa $8a
    mCisPlus_8                                         ;; 0f:57ab $8d
    mOCTAVE_PLUS_1                                     ;; 0f:57ac $d8
    mFis_8                                             ;; 0f:57ad $86
    mREPEAT .data_0f_57a2                              ;; 0f:57ae $e2 $a2 $57
    mCOUNTER $03                                       ;; 0f:57b1 $e3 $03
.data_0f_57b3:
    mG_8                                               ;; 0f:57b3 $87
    mOCTAVE_MINUS_1                                    ;; 0f:57b4 $dc
    mAis_8                                             ;; 0f:57b5 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:57b6 $d8
    mD_8                                               ;; 0f:57b7 $82
    mG_8                                               ;; 0f:57b8 $87
    mA_8                                               ;; 0f:57b9 $89
    mOCTAVE_MINUS_1                                    ;; 0f:57ba $dc
    mAis_8                                             ;; 0f:57bb $8a
    mOCTAVE_PLUS_1                                     ;; 0f:57bc $d8
    mD_8                                               ;; 0f:57bd $82
    mA_8                                               ;; 0f:57be $89
    mREPEAT .data_0f_57b3                              ;; 0f:57bf $e2 $b3 $57
    mG_8                                               ;; 0f:57c2 $87
    mOCTAVE_MINUS_1                                    ;; 0f:57c3 $dc
    mAis_8                                             ;; 0f:57c4 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:57c5 $d8
    mD_8                                               ;; 0f:57c6 $82
    mG_8                                               ;; 0f:57c7 $87
    mF_8                                               ;; 0f:57c8 $85
    mOCTAVE_MINUS_1                                    ;; 0f:57c9 $dc
    mA_8                                               ;; 0f:57ca $89
    mCPlus_8                                           ;; 0f:57cb $8c
    mOCTAVE_PLUS_1                                     ;; 0f:57cc $d8
    mF_8                                               ;; 0f:57cd $85
    mCOUNTER $04                                       ;; 0f:57ce $e3 $04
.data_0f_57d0:
    mE_8                                               ;; 0f:57d0 $84
    mOCTAVE_MINUS_1                                    ;; 0f:57d1 $dc
    mG_8                                               ;; 0f:57d2 $87
    mB_8                                               ;; 0f:57d3 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:57d4 $d8
    mE_8                                               ;; 0f:57d5 $84
    mFis_8                                             ;; 0f:57d6 $86
    mOCTAVE_MINUS_1                                    ;; 0f:57d7 $dc
    mG_8                                               ;; 0f:57d8 $87
    mB_8                                               ;; 0f:57d9 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:57da $d8
    mFis_8                                             ;; 0f:57db $86
    mREPEAT .data_0f_57d0                              ;; 0f:57dc $e2 $d0 $57
    mCOUNTER $04                                       ;; 0f:57df $e3 $04
.data_0f_57e1:
    mE_8                                               ;; 0f:57e1 $84
    mOCTAVE_MINUS_1                                    ;; 0f:57e2 $dc
    mA_8                                               ;; 0f:57e3 $89
    mCPlus_8                                           ;; 0f:57e4 $8c
    mOCTAVE_PLUS_1                                     ;; 0f:57e5 $d8
    mE_8                                               ;; 0f:57e6 $84
    mF_8                                               ;; 0f:57e7 $85
    mOCTAVE_MINUS_1                                    ;; 0f:57e8 $dc
    mA_8                                               ;; 0f:57e9 $89
    mCPlus_8                                           ;; 0f:57ea $8c
    mOCTAVE_PLUS_1                                     ;; 0f:57eb $d8
    mF_8                                               ;; 0f:57ec $85
    mREPEAT .data_0f_57e1                              ;; 0f:57ed $e2 $e1 $57
    mJUMP .data_0f_575b                                ;; 0f:57f0 $e1 $5b $57
    db   $e7, $14                                      ;; 0f:57f3 ??

song0c_channel2:
    mVIBRATO frequencyDeltaData                        ;; 0f:57f5 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:57f8 $e0 $a8 $7a
    mDUTYCYCLE $80                                     ;; 0f:57fb $e5 $80
    mSTEREOPAN $03                                     ;; 0f:57fd $e6 $03
.data_0f_57ff:
    mTEMPO $37                                         ;; 0f:57ff $e7 $37
    mOCTAVE_3                                          ;; 0f:5801 $d3
    mGis_9                                             ;; 0f:5802 $98
    mOCTAVE_MINUS_1                                    ;; 0f:5803 $dc
    mB_9                                               ;; 0f:5804 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:5805 $d8
    mE_9                                               ;; 0f:5806 $94
    mB_9                                               ;; 0f:5807 $9b
    mOCTAVE_MINUS_1                                    ;; 0f:5808 $dc
    mTEMPO $3a                                         ;; 0f:5809 $e7 $3a
    mB_9                                               ;; 0f:580b $9b
    mOCTAVE_PLUS_1                                     ;; 0f:580c $d8
    mE_9                                               ;; 0f:580d $94
    mA_9                                               ;; 0f:580e $99
    mOCTAVE_MINUS_1                                    ;; 0f:580f $dc
    mB_9                                               ;; 0f:5810 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:5811 $d8
    mTEMPO $3d                                         ;; 0f:5812 $e7 $3d
    mDis_9                                             ;; 0f:5814 $93
    mGis_9                                             ;; 0f:5815 $98
    mOCTAVE_MINUS_1                                    ;; 0f:5816 $dc
    mB_9                                               ;; 0f:5817 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:5818 $d8
    mTEMPO $41                                         ;; 0f:5819 $e7 $41
    mDis_9                                             ;; 0f:581b $93
    mFis_9                                             ;; 0f:581c $96
    mOCTAVE_MINUS_1                                    ;; 0f:581d $dc
    mA_9                                               ;; 0f:581e $99
    mOCTAVE_PLUS_1                                     ;; 0f:581f $d8
    mD_9                                               ;; 0f:5820 $92
    mTEMPO $3e                                         ;; 0f:5821 $e7 $3e
    mFis_9                                             ;; 0f:5823 $96
    mOCTAVE_MINUS_1                                    ;; 0f:5824 $dc
    mA_9                                               ;; 0f:5825 $99
    mOCTAVE_PLUS_1                                     ;; 0f:5826 $d8
    mTEMPO $3a                                         ;; 0f:5827 $e7 $3a
    mD_9                                               ;; 0f:5829 $92
    mF_9                                               ;; 0f:582a $95
    mOCTAVE_MINUS_1                                    ;; 0f:582b $dc
    mGis_9                                             ;; 0f:582c $98
    mCisPlus_9                                         ;; 0f:582d $9d
    mOCTAVE_PLUS_1                                     ;; 0f:582e $d8
    mTEMPO $37                                         ;; 0f:582f $e7 $37
    mF_9                                               ;; 0f:5831 $95
    mFis_9                                             ;; 0f:5832 $96
    mGis_9                                             ;; 0f:5833 $98
    mA_9                                               ;; 0f:5834 $99
    mCis_9                                             ;; 0f:5835 $91
    mFis_9                                             ;; 0f:5836 $96
    mB_9                                               ;; 0f:5837 $9b
    mCis_9                                             ;; 0f:5838 $91
    mTEMPO $3a                                         ;; 0f:5839 $e7 $3a
    mFis_9                                             ;; 0f:583b $96
    mCisPlus_9                                         ;; 0f:583c $9d
    mCis_9                                             ;; 0f:583d $91
    mF_9                                               ;; 0f:583e $95
    mTEMPO $3d                                         ;; 0f:583f $e7 $3d
    mB_9                                               ;; 0f:5841 $9b
    mCis_9                                             ;; 0f:5842 $91
    mF_9                                               ;; 0f:5843 $95
    mTEMPO $41                                         ;; 0f:5844 $e7 $41
    mA_9                                               ;; 0f:5846 $99
    mCis_9                                             ;; 0f:5847 $91
    mE_9                                               ;; 0f:5848 $94
    mGis_9                                             ;; 0f:5849 $98
    mTEMPO $3e                                         ;; 0f:584a $e7 $3e
    mCis_9                                             ;; 0f:584c $91
    mE_9                                               ;; 0f:584d $94
    mTEMPO $3a                                         ;; 0f:584e $e7 $3a
    mFis_9                                             ;; 0f:5850 $96
    mOCTAVE_MINUS_1                                    ;; 0f:5851 $dc
    mB_9                                               ;; 0f:5852 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:5853 $d8
    mDis_9                                             ;; 0f:5854 $93
    mTEMPO $37                                         ;; 0f:5855 $e7 $37
    mFis_9                                             ;; 0f:5857 $96
    mGis_9                                             ;; 0f:5858 $98
    mA_9                                               ;; 0f:5859 $99
    mTEMPO $39                                         ;; 0f:585a $e7 $39
    mB_9                                               ;; 0f:585c $9b
    mDis_9                                             ;; 0f:585d $93
    mGis_9                                             ;; 0f:585e $98
    mOCTAVE_PLUS_1                                     ;; 0f:585f $d8
    mDis_9                                             ;; 0f:5860 $93
    mOCTAVE_MINUS_1                                    ;; 0f:5861 $dc
    mGis_9                                             ;; 0f:5862 $98
    mTEMPO $3c                                         ;; 0f:5863 $e7 $3c
    mB_9                                               ;; 0f:5865 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:5866 $d8
    mE_9                                               ;; 0f:5867 $94
    mOCTAVE_MINUS_1                                    ;; 0f:5868 $dc
    mGis_9                                             ;; 0f:5869 $98
    mTEMPO $38                                         ;; 0f:586a $e7 $38
    mCisPlus_9                                         ;; 0f:586c $9d
    mOCTAVE_PLUS_1                                     ;; 0f:586d $d8
    mDis_9                                             ;; 0f:586e $93
    mOCTAVE_MINUS_1                                    ;; 0f:586f $dc
    mTEMPO $34                                         ;; 0f:5870 $e7 $34
    mFis_9                                             ;; 0f:5872 $96
    mB_9                                               ;; 0f:5873 $9b
    mTEMPO $3a                                         ;; 0f:5874 $e7 $3a
    mCisPlus_9                                         ;; 0f:5876 $9d
    mE_9                                               ;; 0f:5877 $94
    mA_9                                               ;; 0f:5878 $99
    mCisPlus_9                                         ;; 0f:5879 $9d
    mE_9                                               ;; 0f:587a $94
    mA_9                                               ;; 0f:587b $99
    mTEMPO $37                                         ;; 0f:587c $e7 $37
    mB_9                                               ;; 0f:587e $9b
    mE_9                                               ;; 0f:587f $94
    mGis_9                                             ;; 0f:5880 $98
    mB_9                                               ;; 0f:5881 $9b
    mE_9                                               ;; 0f:5882 $94
    mGis_9                                             ;; 0f:5883 $98
    mTEMPO $35                                         ;; 0f:5884 $e7 $35
    mAis_9                                             ;; 0f:5886 $9a
    mE_9                                               ;; 0f:5887 $94
    mG_9                                               ;; 0f:5888 $97
    mAis_9                                             ;; 0f:5889 $9a
    mE_9                                               ;; 0f:588a $94
    mG_9                                               ;; 0f:588b $97
    mA_9                                               ;; 0f:588c $99
    mCis_9                                             ;; 0f:588d $91
    mFis_9                                             ;; 0f:588e $96
    mTEMPO $2d                                         ;; 0f:588f $e7 $2d
    mDis_9                                             ;; 0f:5891 $93
    mE_9                                               ;; 0f:5892 $94
    mFis_9                                             ;; 0f:5893 $96
    mJUMP .data_0f_57ff                                ;; 0f:5894 $e1 $ff $57

song0c_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:5897 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab0                      ;; 0f:589a $e0 $b0 $7a
    mDUTYCYCLE $40                                     ;; 0f:589d $e5 $40
    mSTEREOPAN $03                                     ;; 0f:589f $e6 $03
    mOCTAVE_3                                          ;; 0f:58a1 $d3
    mRest_11                                           ;; 0f:58a2 $bf
.data_0f_58a3:
    mGis_9                                             ;; 0f:58a3 $98
    mOCTAVE_MINUS_1                                    ;; 0f:58a4 $dc
    mB_9                                               ;; 0f:58a5 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58a6 $d8
    mE_9                                               ;; 0f:58a7 $94
    mB_9                                               ;; 0f:58a8 $9b
    mOCTAVE_MINUS_1                                    ;; 0f:58a9 $dc
    mB_9                                               ;; 0f:58aa $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58ab $d8
    mE_9                                               ;; 0f:58ac $94
    mA_9                                               ;; 0f:58ad $99
    mOCTAVE_MINUS_1                                    ;; 0f:58ae $dc
    mB_9                                               ;; 0f:58af $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58b0 $d8
    mDis_9                                             ;; 0f:58b1 $93
    mGis_9                                             ;; 0f:58b2 $98
    mOCTAVE_MINUS_1                                    ;; 0f:58b3 $dc
    mB_9                                               ;; 0f:58b4 $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58b5 $d8
    mDis_9                                             ;; 0f:58b6 $93
    mFis_9                                             ;; 0f:58b7 $96
    mOCTAVE_MINUS_1                                    ;; 0f:58b8 $dc
    mA_9                                               ;; 0f:58b9 $99
    mOCTAVE_PLUS_1                                     ;; 0f:58ba $d8
    mD_9                                               ;; 0f:58bb $92
    mFis_9                                             ;; 0f:58bc $96
    mOCTAVE_MINUS_1                                    ;; 0f:58bd $dc
    mA_9                                               ;; 0f:58be $99
    mOCTAVE_PLUS_1                                     ;; 0f:58bf $d8
    mD_9                                               ;; 0f:58c0 $92
    mF_9                                               ;; 0f:58c1 $95
    mOCTAVE_MINUS_1                                    ;; 0f:58c2 $dc
    mGis_9                                             ;; 0f:58c3 $98
    mCisPlus_9                                         ;; 0f:58c4 $9d
    mOCTAVE_PLUS_1                                     ;; 0f:58c5 $d8
    mF_9                                               ;; 0f:58c6 $95
    mFis_9                                             ;; 0f:58c7 $96
    mGis_9                                             ;; 0f:58c8 $98
    mA_9                                               ;; 0f:58c9 $99
    mCis_9                                             ;; 0f:58ca $91
    mFis_9                                             ;; 0f:58cb $96
    mB_9                                               ;; 0f:58cc $9b
    mCis_9                                             ;; 0f:58cd $91
    mFis_9                                             ;; 0f:58ce $96
    mCisPlus_9                                         ;; 0f:58cf $9d
    mCis_9                                             ;; 0f:58d0 $91
    mF_9                                               ;; 0f:58d1 $95
    mB_9                                               ;; 0f:58d2 $9b
    mCis_9                                             ;; 0f:58d3 $91
    mF_9                                               ;; 0f:58d4 $95
    mA_9                                               ;; 0f:58d5 $99
    mCis_9                                             ;; 0f:58d6 $91
    mE_9                                               ;; 0f:58d7 $94
    mGis_9                                             ;; 0f:58d8 $98
    mCis_9                                             ;; 0f:58d9 $91
    mE_9                                               ;; 0f:58da $94
    mFis_9                                             ;; 0f:58db $96
    mOCTAVE_MINUS_1                                    ;; 0f:58dc $dc
    mB_9                                               ;; 0f:58dd $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58de $d8
    mDis_9                                             ;; 0f:58df $93
    mFis_9                                             ;; 0f:58e0 $96
    mGis_9                                             ;; 0f:58e1 $98
    mA_9                                               ;; 0f:58e2 $99
    mB_9                                               ;; 0f:58e3 $9b
    mDis_9                                             ;; 0f:58e4 $93
    mGis_9                                             ;; 0f:58e5 $98
    mOCTAVE_PLUS_1                                     ;; 0f:58e6 $d8
    mDis_9                                             ;; 0f:58e7 $93
    mOCTAVE_MINUS_1                                    ;; 0f:58e8 $dc
    mGis_9                                             ;; 0f:58e9 $98
    mB_9                                               ;; 0f:58ea $9b
    mOCTAVE_PLUS_1                                     ;; 0f:58eb $d8
    mE_9                                               ;; 0f:58ec $94
    mOCTAVE_MINUS_1                                    ;; 0f:58ed $dc
    mGis_9                                             ;; 0f:58ee $98
    mCisPlus_9                                         ;; 0f:58ef $9d
    mOCTAVE_PLUS_1                                     ;; 0f:58f0 $d8
    mDis_9                                             ;; 0f:58f1 $93
    mOCTAVE_MINUS_1                                    ;; 0f:58f2 $dc
    mFis_9                                             ;; 0f:58f3 $96
    mB_9                                               ;; 0f:58f4 $9b
    mCisPlus_9                                         ;; 0f:58f5 $9d
    mE_9                                               ;; 0f:58f6 $94
    mA_9                                               ;; 0f:58f7 $99
    mCisPlus_9                                         ;; 0f:58f8 $9d
    mE_9                                               ;; 0f:58f9 $94
    mA_9                                               ;; 0f:58fa $99
    mB_9                                               ;; 0f:58fb $9b
    mE_9                                               ;; 0f:58fc $94
    mGis_9                                             ;; 0f:58fd $98
    mB_9                                               ;; 0f:58fe $9b
    mE_9                                               ;; 0f:58ff $94
    mGis_9                                             ;; 0f:5900 $98
    mAis_9                                             ;; 0f:5901 $9a
    mE_9                                               ;; 0f:5902 $94
    mG_9                                               ;; 0f:5903 $97
    mAis_9                                             ;; 0f:5904 $9a
    mE_9                                               ;; 0f:5905 $94
    mG_9                                               ;; 0f:5906 $97
    mA_9                                               ;; 0f:5907 $99
    mCis_9                                             ;; 0f:5908 $91
    mFis_9                                             ;; 0f:5909 $96
    mDis_9                                             ;; 0f:590a $93
    mE_9                                               ;; 0f:590b $94
    mFis_9                                             ;; 0f:590c $96
    mJUMP .data_0f_58a3                                ;; 0f:590d $e1 $a3 $58

song0c_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5910 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:5913 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:5916 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5918 $e6 $03
.data_0f_591a:
    mOCTAVE_2                                          ;; 0f:591a $d2
    mE_2                                               ;; 0f:591b $24
    mDis_2                                             ;; 0f:591c $23
    mD_2                                               ;; 0f:591d $22
    mCis_3                                             ;; 0f:591e $31
    mDis_9                                             ;; 0f:591f $93
    mF_9                                               ;; 0f:5920 $95
    mFis_2                                             ;; 0f:5921 $26
    mF_2                                               ;; 0f:5922 $25
    mE_2                                               ;; 0f:5923 $24
    mDis_5                                             ;; 0f:5924 $53
    mWait_9                                            ;; 0f:5925 $9e
    mE_9                                               ;; 0f:5926 $94
    mFis_9                                             ;; 0f:5927 $96
    mGis_2                                             ;; 0f:5928 $28
    mCisPlus_5                                         ;; 0f:5929 $5d
    mB_5                                               ;; 0f:592a $5b
    mA_2                                               ;; 0f:592b $29
    mGis_2                                             ;; 0f:592c $28
    mG_2                                               ;; 0f:592d $27
    mFis_5                                             ;; 0f:592e $56
    mOCTAVE_MINUS_1                                    ;; 0f:592f $dc
    mB_9                                               ;; 0f:5930 $9b
    mCisPlus_9                                         ;; 0f:5931 $9d
    mOCTAVE_PLUS_1                                     ;; 0f:5932 $d8
    mDis_9                                             ;; 0f:5933 $93
    mJUMP .data_0f_591a                                ;; 0f:5934 $e1 $1a $59

song0d_channel2:
    mTEMPO $5d                                         ;; 0f:5937 $e7 $5d
    mVIBRATO frequencyDeltaData                        ;; 0f:5939 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:593c $e0 $a8 $7a
    mDUTYCYCLE $40                                     ;; 0f:593f $e5 $40
    mCOUNTER $02                                       ;; 0f:5941 $e3 $02
.data_0f_5943:
    mVOLUME_ENVELOPE data_0f_7ab4                      ;; 0f:5943 $e0 $b4 $7a
    mSTEREOPAN $03                                     ;; 0f:5946 $e6 $03
    mOCTAVE_3                                          ;; 0f:5948 $d3
    mFis_11                                            ;; 0f:5949 $b6
    mDis_11                                            ;; 0f:594a $b3
    mFis_11                                            ;; 0f:594b $b6
    mDis_11                                            ;; 0f:594c $b3
    mFis_11                                            ;; 0f:594d $b6
    mDis_11                                            ;; 0f:594e $b3
    mFis_11                                            ;; 0f:594f $b6
    mDis_11                                            ;; 0f:5950 $b3
    mFis_11                                            ;; 0f:5951 $b6
    mDis_11                                            ;; 0f:5952 $b3
    mFis_11                                            ;; 0f:5953 $b6
    mDis_11                                            ;; 0f:5954 $b3
    mSTEREOPAN $02                                     ;; 0f:5955 $e6 $02
    mA_11                                              ;; 0f:5957 $b9
    mDis_11                                            ;; 0f:5958 $b3
    mA_11                                              ;; 0f:5959 $b9
    mDis_11                                            ;; 0f:595a $b3
    mA_11                                              ;; 0f:595b $b9
    mDis_11                                            ;; 0f:595c $b3
    mA_11                                              ;; 0f:595d $b9
    mDis_11                                            ;; 0f:595e $b3
    mA_11                                              ;; 0f:595f $b9
    mDis_11                                            ;; 0f:5960 $b3
    mA_11                                              ;; 0f:5961 $b9
    mDis_11                                            ;; 0f:5962 $b3
    mSTEREOPAN $03                                     ;; 0f:5963 $e6 $03
    mGis_11                                            ;; 0f:5965 $b8
    mDis_11                                            ;; 0f:5966 $b3
    mGis_11                                            ;; 0f:5967 $b8
    mDis_11                                            ;; 0f:5968 $b3
    mGis_11                                            ;; 0f:5969 $b8
    mDis_11                                            ;; 0f:596a $b3
    mGis_11                                            ;; 0f:596b $b8
    mDis_11                                            ;; 0f:596c $b3
    mGis_11                                            ;; 0f:596d $b8
    mDis_11                                            ;; 0f:596e $b3
    mGis_11                                            ;; 0f:596f $b8
    mDis_11                                            ;; 0f:5970 $b3
    mSTEREOPAN $01                                     ;; 0f:5971 $e6 $01
    mG_11                                              ;; 0f:5973 $b7
    mDis_11                                            ;; 0f:5974 $b3
    mG_11                                              ;; 0f:5975 $b7
    mDis_11                                            ;; 0f:5976 $b3
    mG_11                                              ;; 0f:5977 $b7
    mDis_11                                            ;; 0f:5978 $b3
    mG_11                                              ;; 0f:5979 $b7
    mDis_11                                            ;; 0f:597a $b3
    mG_11                                              ;; 0f:597b $b7
    mDis_11                                            ;; 0f:597c $b3
    mG_11                                              ;; 0f:597d $b7
    mDis_11                                            ;; 0f:597e $b3
    mREPEAT .data_0f_5943                              ;; 0f:597f $e2 $43 $59
    mSTEREOPAN $03                                     ;; 0f:5982 $e6 $03
    mGis_11                                            ;; 0f:5984 $b8
    mF_11                                              ;; 0f:5985 $b5
    mGis_11                                            ;; 0f:5986 $b8
    mF_11                                              ;; 0f:5987 $b5
    mGis_11                                            ;; 0f:5988 $b8
    mF_11                                              ;; 0f:5989 $b5
    mGis_11                                            ;; 0f:598a $b8
    mF_11                                              ;; 0f:598b $b5
    mGis_11                                            ;; 0f:598c $b8
    mF_11                                              ;; 0f:598d $b5
    mGis_11                                            ;; 0f:598e $b8
    mF_11                                              ;; 0f:598f $b5
    mSTEREOPAN $02                                     ;; 0f:5990 $e6 $02
    mB_11                                              ;; 0f:5992 $bb
    mF_11                                              ;; 0f:5993 $b5
    mB_11                                              ;; 0f:5994 $bb
    mF_11                                              ;; 0f:5995 $b5
    mB_11                                              ;; 0f:5996 $bb
    mF_11                                              ;; 0f:5997 $b5
    mB_11                                              ;; 0f:5998 $bb
    mF_11                                              ;; 0f:5999 $b5
    mB_11                                              ;; 0f:599a $bb
    mF_11                                              ;; 0f:599b $b5
    mB_11                                              ;; 0f:599c $bb
    mF_11                                              ;; 0f:599d $b5
    mSTEREOPAN $03                                     ;; 0f:599e $e6 $03
    mAis_11                                            ;; 0f:59a0 $ba
    mF_11                                              ;; 0f:59a1 $b5
    mAis_11                                            ;; 0f:59a2 $ba
    mF_11                                              ;; 0f:59a3 $b5
    mAis_11                                            ;; 0f:59a4 $ba
    mF_11                                              ;; 0f:59a5 $b5
    mAis_11                                            ;; 0f:59a6 $ba
    mF_11                                              ;; 0f:59a7 $b5
    mAis_11                                            ;; 0f:59a8 $ba
    mF_11                                              ;; 0f:59a9 $b5
    mAis_11                                            ;; 0f:59aa $ba
    mF_11                                              ;; 0f:59ab $b5
    mSTEREOPAN $01                                     ;; 0f:59ac $e6 $01
    mA_11                                              ;; 0f:59ae $b9
    mF_11                                              ;; 0f:59af $b5
    mA_11                                              ;; 0f:59b0 $b9
    mF_11                                              ;; 0f:59b1 $b5
    mA_11                                              ;; 0f:59b2 $b9
    mF_11                                              ;; 0f:59b3 $b5
    mA_11                                              ;; 0f:59b4 $b9
    mF_11                                              ;; 0f:59b5 $b5
    mA_11                                              ;; 0f:59b6 $b9
    mF_11                                              ;; 0f:59b7 $b5
    mA_11                                              ;; 0f:59b8 $b9
    mF_11                                              ;; 0f:59b9 $b5
    mSTEREOPAN $03                                     ;; 0f:59ba $e6 $03
    mA_11                                              ;; 0f:59bc $b9
    mFis_11                                            ;; 0f:59bd $b6
    mA_11                                              ;; 0f:59be $b9
    mFis_11                                            ;; 0f:59bf $b6
    mA_11                                              ;; 0f:59c0 $b9
    mFis_11                                            ;; 0f:59c1 $b6
    mA_11                                              ;; 0f:59c2 $b9
    mFis_11                                            ;; 0f:59c3 $b6
    mA_11                                              ;; 0f:59c4 $b9
    mFis_11                                            ;; 0f:59c5 $b6
    mA_11                                              ;; 0f:59c6 $b9
    mFis_11                                            ;; 0f:59c7 $b6
    mSTEREOPAN $02                                     ;; 0f:59c8 $e6 $02
    mCPlus_11                                          ;; 0f:59ca $bc
    mFis_11                                            ;; 0f:59cb $b6
    mCPlus_11                                          ;; 0f:59cc $bc
    mFis_11                                            ;; 0f:59cd $b6
    mCPlus_11                                          ;; 0f:59ce $bc
    mFis_11                                            ;; 0f:59cf $b6
    mCPlus_11                                          ;; 0f:59d0 $bc
    mFis_11                                            ;; 0f:59d1 $b6
    mCPlus_11                                          ;; 0f:59d2 $bc
    mFis_11                                            ;; 0f:59d3 $b6
    mCPlus_11                                          ;; 0f:59d4 $bc
    mFis_11                                            ;; 0f:59d5 $b6
    mTEMPO $58                                         ;; 0f:59d6 $e7 $58
    mSTEREOPAN $03                                     ;; 0f:59d8 $e6 $03
    mB_11                                              ;; 0f:59da $bb
    mFis_11                                            ;; 0f:59db $b6
    mB_11                                              ;; 0f:59dc $bb
    mFis_11                                            ;; 0f:59dd $b6
    mB_11                                              ;; 0f:59de $bb
    mFis_11                                            ;; 0f:59df $b6
    mTEMPO $55                                         ;; 0f:59e0 $e7 $55
    mB_11                                              ;; 0f:59e2 $bb
    mFis_11                                            ;; 0f:59e3 $b6
    mB_11                                              ;; 0f:59e4 $bb
    mFis_11                                            ;; 0f:59e5 $b6
    mB_11                                              ;; 0f:59e6 $bb
    mFis_11                                            ;; 0f:59e7 $b6
    mTEMPO $53                                         ;; 0f:59e8 $e7 $53
    mSTEREOPAN $01                                     ;; 0f:59ea $e6 $01
    mAis_11                                            ;; 0f:59ec $ba
    mFis_11                                            ;; 0f:59ed $b6
    mAis_11                                            ;; 0f:59ee $ba
    mFis_11                                            ;; 0f:59ef $b6
    mAis_11                                            ;; 0f:59f0 $ba
    mFis_11                                            ;; 0f:59f1 $b6
    mTEMPO $51                                         ;; 0f:59f2 $e7 $51
    mAis_11                                            ;; 0f:59f4 $ba
    mFis_11                                            ;; 0f:59f5 $b6
    mAis_11                                            ;; 0f:59f6 $ba
    mFis_11                                            ;; 0f:59f7 $b6
    mAis_11                                            ;; 0f:59f8 $ba
    mFis_11                                            ;; 0f:59f9 $b6
    mOCTAVE_MINUS_1                                    ;; 0f:59fa $dc
    mTEMPO $59                                         ;; 0f:59fb $e7 $59
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:59fd $e0 $be $7a
    mSTEREOPAN $03                                     ;; 0f:5a00 $e6 $03
    mFis_6                                             ;; 0f:5a02 $66
    mG_11                                              ;; 0f:5a03 $b7
    mGis_11                                            ;; 0f:5a04 $b8
    mA_5                                               ;; 0f:5a05 $59
    mGis_1                                             ;; 0f:5a06 $18
    mFis_8                                             ;; 0f:5a07 $86
    mA_8                                               ;; 0f:5a08 $89
    mGis_5                                             ;; 0f:5a09 $58
    mFis_8                                             ;; 0f:5a0a $86
    mE_8                                               ;; 0f:5a0b $84
    mFis_6                                             ;; 0f:5a0c $66
    mG_11                                              ;; 0f:5a0d $b7
    mGis_11                                            ;; 0f:5a0e $b8
    mA_5                                               ;; 0f:5a0f $59
    mGis_1                                             ;; 0f:5a10 $18
    mFis_8                                             ;; 0f:5a11 $86
    mA_8                                               ;; 0f:5a12 $89
    mGis_5                                             ;; 0f:5a13 $58
    mFis_8                                             ;; 0f:5a14 $86
    mE_8                                               ;; 0f:5a15 $84
    mGis_6                                             ;; 0f:5a16 $68
    mA_11                                              ;; 0f:5a17 $b9
    mAis_11                                            ;; 0f:5a18 $ba
    mB_5                                               ;; 0f:5a19 $5b
    mAis_1                                             ;; 0f:5a1a $1a
    mGis_8                                             ;; 0f:5a1b $88
    mB_8                                               ;; 0f:5a1c $8b
    mAis_5                                             ;; 0f:5a1d $5a
    mGis_8                                             ;; 0f:5a1e $88
    mFis_8                                             ;; 0f:5a1f $86
    mGis_6                                             ;; 0f:5a20 $68
    mA_11                                              ;; 0f:5a21 $b9
    mAis_11                                            ;; 0f:5a22 $ba
    mB_5                                               ;; 0f:5a23 $5b
    mAis_1                                             ;; 0f:5a24 $1a
    mGis_8                                             ;; 0f:5a25 $88
    mB_8                                               ;; 0f:5a26 $8b
    mAis_5                                             ;; 0f:5a27 $5a
    mGis_8                                             ;; 0f:5a28 $88
    mFis_8                                             ;; 0f:5a29 $86
    mF_1                                               ;; 0f:5a2a $15
    mGis_5                                             ;; 0f:5a2b $58
    mTEMPO $55                                         ;; 0f:5a2c $e7 $55
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5a2e $e0 $82 $7a
    mE_5                                               ;; 0f:5a31 $54
    mG_5                                               ;; 0f:5a32 $57
    mTEMPO $50                                         ;; 0f:5a33 $e7 $50
    mAis_5                                             ;; 0f:5a35 $5a
    mCisPlus_5                                         ;; 0f:5a36 $5d
    mJUMP song0d_channel2                              ;; 0f:5a37 $e1 $37 $59

song0d_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:5a3a $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5a3d $e0 $82 $7a
.data_0f_5a40:
    mSTEREOPAN $03                                     ;; 0f:5a40 $e6 $03
    mDUTYCYCLE $80                                     ;; 0f:5a42 $e5 $80
    mCOUNTER $04                                       ;; 0f:5a44 $e3 $04
.data_0f_5a46:
    mOCTAVE_1                                          ;; 0f:5a46 $d1
    mB_8                                               ;; 0f:5a47 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5a48 $d8
    mCPlus_8                                           ;; 0f:5a49 $8c
    mB_8                                               ;; 0f:5a4a $8b
    mAis_8                                             ;; 0f:5a4b $8a
    mA_8                                               ;; 0f:5a4c $89
    mGis_8                                             ;; 0f:5a4d $88
    mG_8                                               ;; 0f:5a4e $87
    mFis_8                                             ;; 0f:5a4f $86
    mREPEAT .data_0f_5a46                              ;; 0f:5a50 $e2 $46 $5a
    mCis_8                                             ;; 0f:5a53 $81
    mOCTAVE_PLUS_1                                     ;; 0f:5a54 $d8
    mD_8                                               ;; 0f:5a55 $82
    mCis_8                                             ;; 0f:5a56 $81
    mC_8                                               ;; 0f:5a57 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a58 $dc
    mB_8                                               ;; 0f:5a59 $8b
    mAis_8                                             ;; 0f:5a5a $8a
    mA_8                                               ;; 0f:5a5b $89
    mGis_8                                             ;; 0f:5a5c $88
    mCis_8                                             ;; 0f:5a5d $81
    mOCTAVE_PLUS_1                                     ;; 0f:5a5e $d8
    mD_8                                               ;; 0f:5a5f $82
    mCis_8                                             ;; 0f:5a60 $81
    mC_8                                               ;; 0f:5a61 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a62 $dc
    mB_8                                               ;; 0f:5a63 $8b
    mAis_8                                             ;; 0f:5a64 $8a
    mA_8                                               ;; 0f:5a65 $89
    mGis_8                                             ;; 0f:5a66 $88
    mD_8                                               ;; 0f:5a67 $82
    mOCTAVE_PLUS_1                                     ;; 0f:5a68 $d8
    mDis_8                                             ;; 0f:5a69 $83
    mD_8                                               ;; 0f:5a6a $82
    mCis_8                                             ;; 0f:5a6b $81
    mC_8                                               ;; 0f:5a6c $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a6d $dc
    mB_8                                               ;; 0f:5a6e $8b
    mAis_8                                             ;; 0f:5a6f $8a
    mA_8                                               ;; 0f:5a70 $89
    mD_8                                               ;; 0f:5a71 $82
    mOCTAVE_PLUS_1                                     ;; 0f:5a72 $d8
    mDis_8                                             ;; 0f:5a73 $83
    mD_8                                               ;; 0f:5a74 $82
    mCis_8                                             ;; 0f:5a75 $81
    mC_8                                               ;; 0f:5a76 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a77 $dc
    mB_8                                               ;; 0f:5a78 $8b
    mAis_8                                             ;; 0f:5a79 $8a
    mA_8                                               ;; 0f:5a7a $89
    mCOUNTER $02                                       ;; 0f:5a7b $e3 $02
.data_0f_5a7d:
    mVOLUME_ENVELOPE data_0f_7ac8                      ;; 0f:5a7d $e0 $c8 $7a
    mDUTYCYCLE $40                                     ;; 0f:5a80 $e5 $40
    mD_8                                               ;; 0f:5a82 $82
    mCis_8                                             ;; 0f:5a83 $81
    mC_8                                               ;; 0f:5a84 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a85 $dc
    mB_8                                               ;; 0f:5a86 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5a87 $d8
    mD_8                                               ;; 0f:5a88 $82
    mCis_8                                             ;; 0f:5a89 $81
    mC_8                                               ;; 0f:5a8a $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a8b $dc
    mB_8                                               ;; 0f:5a8c $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5a8d $d8
    mD_8                                               ;; 0f:5a8e $82
    mCis_8                                             ;; 0f:5a8f $81
    mC_8                                               ;; 0f:5a90 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a91 $dc
    mB_8                                               ;; 0f:5a92 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5a93 $d8
    mD_8                                               ;; 0f:5a94 $82
    mCis_8                                             ;; 0f:5a95 $81
    mC_8                                               ;; 0f:5a96 $80
    mOCTAVE_MINUS_1                                    ;; 0f:5a97 $dc
    mB_8                                               ;; 0f:5a98 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5a99 $d8
    mREPEAT .data_0f_5a7d                              ;; 0f:5a9a $e2 $7d $5a
    mCOUNTER $02                                       ;; 0f:5a9d $e3 $02
.data_0f_5a9f:
    mE_8                                               ;; 0f:5a9f $84
    mDis_8                                             ;; 0f:5aa0 $83
    mD_8                                               ;; 0f:5aa1 $82
    mCis_8                                             ;; 0f:5aa2 $81
    mE_8                                               ;; 0f:5aa3 $84
    mDis_8                                             ;; 0f:5aa4 $83
    mD_8                                               ;; 0f:5aa5 $82
    mCis_8                                             ;; 0f:5aa6 $81
    mE_8                                               ;; 0f:5aa7 $84
    mDis_8                                             ;; 0f:5aa8 $83
    mD_8                                               ;; 0f:5aa9 $82
    mCis_8                                             ;; 0f:5aaa $81
    mE_8                                               ;; 0f:5aab $84
    mDis_8                                             ;; 0f:5aac $83
    mD_8                                               ;; 0f:5aad $82
    mCis_8                                             ;; 0f:5aae $81
    mREPEAT .data_0f_5a9f                              ;; 0f:5aaf $e2 $9f $5a
    mOCTAVE_MINUS_1                                    ;; 0f:5ab2 $dc
    mGis_8                                             ;; 0f:5ab3 $88
    mFis_8                                             ;; 0f:5ab4 $86
    mGis_8                                             ;; 0f:5ab5 $88
    mA_8                                               ;; 0f:5ab6 $89
    mGis_5                                             ;; 0f:5ab7 $58
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5ab8 $e0 $82 $7a
    mB_5                                               ;; 0f:5abb $5b
    mSTEREOPAN $02                                     ;; 0f:5abc $e6 $02
    mG_5                                               ;; 0f:5abe $57
    mAis_5                                             ;; 0f:5abf $5a
    mCisPlus_5                                         ;; 0f:5ac0 $5d
    mOCTAVE_PLUS_1                                     ;; 0f:5ac1 $d8
    mE_5                                               ;; 0f:5ac2 $54
    mJUMP .data_0f_5a40                                ;; 0f:5ac3 $e1 $40 $5a

song0d_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5ac6 $e4 $4f $7a
.data_0f_5ac9:
    mWAVETABLE wavePatternsData                        ;; 0f:5ac9 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:5acc $e0 $40
    mSTEREOPAN $03                                     ;; 0f:5ace $e6 $03
    mCOUNTER $04                                       ;; 0f:5ad0 $e3 $04
.data_0f_5ad2:
    mOCTAVE_1                                          ;; 0f:5ad2 $d1
    mB_8                                               ;; 0f:5ad3 $8b
    mRest_8                                            ;; 0f:5ad4 $8f
    mB_8                                               ;; 0f:5ad5 $8b
    mRest_8                                            ;; 0f:5ad6 $8f
    mB_8                                               ;; 0f:5ad7 $8b
    mRest_8                                            ;; 0f:5ad8 $8f
    mB_8                                               ;; 0f:5ad9 $8b
    mRest_8                                            ;; 0f:5ada $8f
    mREPEAT .data_0f_5ad2                              ;; 0f:5adb $e2 $d2 $5a
    mCisPlus_8                                         ;; 0f:5ade $8d
    mRest_8                                            ;; 0f:5adf $8f
    mCisPlus_8                                         ;; 0f:5ae0 $8d
    mRest_8                                            ;; 0f:5ae1 $8f
    mCisPlus_8                                         ;; 0f:5ae2 $8d
    mRest_8                                            ;; 0f:5ae3 $8f
    mCisPlus_8                                         ;; 0f:5ae4 $8d
    mRest_8                                            ;; 0f:5ae5 $8f
    mCisPlus_8                                         ;; 0f:5ae6 $8d
    mRest_8                                            ;; 0f:5ae7 $8f
    mCisPlus_8                                         ;; 0f:5ae8 $8d
    mRest_8                                            ;; 0f:5ae9 $8f
    mCisPlus_8                                         ;; 0f:5aea $8d
    mRest_8                                            ;; 0f:5aeb $8f
    mCisPlus_8                                         ;; 0f:5aec $8d
    mRest_8                                            ;; 0f:5aed $8f
    mOCTAVE_PLUS_1                                     ;; 0f:5aee $d8
    mD_8                                               ;; 0f:5aef $82
    mRest_8                                            ;; 0f:5af0 $8f
    mD_8                                               ;; 0f:5af1 $82
    mRest_8                                            ;; 0f:5af2 $8f
    mD_8                                               ;; 0f:5af3 $82
    mRest_8                                            ;; 0f:5af4 $8f
    mD_8                                               ;; 0f:5af5 $82
    mRest_8                                            ;; 0f:5af6 $8f
    mD_8                                               ;; 0f:5af7 $82
    mRest_8                                            ;; 0f:5af8 $8f
    mD_8                                               ;; 0f:5af9 $82
    mRest_8                                            ;; 0f:5afa $8f
    mD_8                                               ;; 0f:5afb $82
    mRest_8                                            ;; 0f:5afc $8f
    mD_8                                               ;; 0f:5afd $82
    mRest_8                                            ;; 0f:5afe $8f
    mOCTAVE_MINUS_1                                    ;; 0f:5aff $dc
    mCOUNTER $02                                       ;; 0f:5b00 $e3 $02
.data_0f_5b02:
    mSTEREOPAN $02                                     ;; 0f:5b02 $e6 $02
    mB_2                                               ;; 0f:5b04 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:5b05 $d8
    mSTEREOPAN $01                                     ;; 0f:5b06 $e6 $01
    mFis_2                                             ;; 0f:5b08 $26
    mOCTAVE_MINUS_1                                    ;; 0f:5b09 $dc
    mSTEREOPAN $02                                     ;; 0f:5b0a $e6 $02
    mB_2                                               ;; 0f:5b0c $2b
    mOCTAVE_PLUS_1                                     ;; 0f:5b0d $d8
    mSTEREOPAN $01                                     ;; 0f:5b0e $e6 $01
    mFis_2                                             ;; 0f:5b10 $26
    mOCTAVE_MINUS_1                                    ;; 0f:5b11 $dc
    mREPEAT .data_0f_5b02                              ;; 0f:5b12 $e2 $02 $5b
    mCOUNTER $02                                       ;; 0f:5b15 $e3 $02
.data_0f_5b17:
    mSTEREOPAN $02                                     ;; 0f:5b17 $e6 $02
    mOCTAVE_PLUS_1                                     ;; 0f:5b19 $d8
    mCis_2                                             ;; 0f:5b1a $21
    mSTEREOPAN $01                                     ;; 0f:5b1b $e6 $01
    mGis_2                                             ;; 0f:5b1d $28
    mSTEREOPAN $02                                     ;; 0f:5b1e $e6 $02
    mCis_2                                             ;; 0f:5b20 $21
    mSTEREOPAN $01                                     ;; 0f:5b21 $e6 $01
    mGis_2                                             ;; 0f:5b23 $28
    mOCTAVE_MINUS_1                                    ;; 0f:5b24 $dc
    mREPEAT .data_0f_5b17                              ;; 0f:5b25 $e2 $17 $5b
    mSTEREOPAN $02                                     ;; 0f:5b28 $e6 $02
    mB_1                                               ;; 0f:5b2a $1b
    mOCTAVE_PLUS_1                                     ;; 0f:5b2b $d8
    mSTEREOPAN $03                                     ;; 0f:5b2c $e6 $03
    mD_5                                               ;; 0f:5b2e $52
    mOCTAVE_MINUS_1                                    ;; 0f:5b2f $dc
    mSTEREOPAN $01                                     ;; 0f:5b30 $e6 $01
    mAis_5                                             ;; 0f:5b32 $5a
    mCisPlus_5                                         ;; 0f:5b33 $5d
    mOCTAVE_PLUS_1                                     ;; 0f:5b34 $d8
    mE_5                                               ;; 0f:5b35 $54
    mG_5                                               ;; 0f:5b36 $57
    mJUMP .data_0f_5ac9                                ;; 0f:5b37 $e1 $c9 $5a
    db   $e7, $14                                      ;; 0f:5b3a ??

song0e_channel2:
    mVIBRATO frequencyDeltaData                        ;; 0f:5b3c $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:5b3f $e0 $c0 $7a
    mDUTYCYCLE $40                                     ;; 0f:5b42 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:5b44 $e6 $03
    mCOUNTER $02                                       ;; 0f:5b46 $e3 $02
.data_0f_5b48:
    mTEMPO $85                                         ;; 0f:5b48 $e7 $85
    mOCTAVE_2                                          ;; 0f:5b4a $d2
    mA_7                                               ;; 0f:5b4b $79
    mOCTAVE_PLUS_1                                     ;; 0f:5b4c $d8
    mE_7                                               ;; 0f:5b4d $74
    mC_8                                               ;; 0f:5b4e $80
    mG_1                                               ;; 0f:5b4f $17
    mWait_8                                            ;; 0f:5b50 $8e
    mFis_10                                            ;; 0f:5b51 $a6
    mG_10                                              ;; 0f:5b52 $a7
    mFis_7                                             ;; 0f:5b53 $76
    mE_7                                               ;; 0f:5b54 $74
    mD_8                                               ;; 0f:5b55 $82
    mE_7                                               ;; 0f:5b56 $74
    mC_7                                               ;; 0f:5b57 $70
    mE_8                                               ;; 0f:5b58 $84
    mA_2                                               ;; 0f:5b59 $29
    mWait_7                                            ;; 0f:5b5a $7e
    mG_7                                               ;; 0f:5b5b $77
    mA_8                                               ;; 0f:5b5c $89
    mE_6                                               ;; 0f:5b5d $64
    mF_11                                              ;; 0f:5b5e $b5
    mFis_11                                            ;; 0f:5b5f $b6
    mG_5                                               ;; 0f:5b60 $57
    mFis_4                                             ;; 0f:5b61 $46
    mD_4                                               ;; 0f:5b62 $42
    mE_5                                               ;; 0f:5b63 $54
    mF_8                                               ;; 0f:5b64 $85
    mE_8                                               ;; 0f:5b65 $84
    mF_8                                               ;; 0f:5b66 $85
    mE_5                                               ;; 0f:5b67 $54
    mD_10                                              ;; 0f:5b68 $a2
    mC_10                                              ;; 0f:5b69 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5b6a $dc
    mB_5                                               ;; 0f:5b6b $5b
    mREPEAT .data_0f_5b48                              ;; 0f:5b6c $e2 $48 $5b
    mCOUNTER $02                                       ;; 0f:5b6f $e3 $02
.data_0f_5b71:
    mTEMPO $87                                         ;; 0f:5b71 $e7 $87
    mVIBRATO frequencyDeltaData.third                  ;; 0f:5b73 $e4 $63 $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5b76 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:5b79 $e5 $80
    mCPlus_4                                           ;; 0f:5b7b $4c
    mB_10                                              ;; 0f:5b7c $ab
    mAis_10                                            ;; 0f:5b7d $aa
    mA_4                                               ;; 0f:5b7e $49
    mAis_10                                            ;; 0f:5b7f $aa
    mB_10                                              ;; 0f:5b80 $ab
    mCPlus_8                                           ;; 0f:5b81 $8c
    mB_10                                              ;; 0f:5b82 $ab
    mAis_10                                            ;; 0f:5b83 $aa
    mA_2                                               ;; 0f:5b84 $29
    mG_8                                               ;; 0f:5b85 $87
    mA_8                                               ;; 0f:5b86 $89
    mDUTYCYCLE $40                                     ;; 0f:5b87 $e5 $40
    mE_4                                               ;; 0f:5b89 $44
    mF_10                                              ;; 0f:5b8a $a5
    mFis_10                                            ;; 0f:5b8b $a6
    mG_4                                               ;; 0f:5b8c $47
    mFis_10                                            ;; 0f:5b8d $a6
    mF_10                                              ;; 0f:5b8e $a5
    mE_8                                               ;; 0f:5b8f $84
    mF_10                                              ;; 0f:5b90 $a5
    mFis_10                                            ;; 0f:5b91 $a6
    mG_1                                               ;; 0f:5b92 $17
    mREPEAT .data_0f_5b71                              ;; 0f:5b93 $e2 $71 $5b
    mTEMPO $85                                         ;; 0f:5b96 $e7 $85
    mVIBRATO frequencyDeltaData                        ;; 0f:5b98 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:5b9b $e0 $be $7a
    mE_10                                              ;; 0f:5b9e $a4
    mGis_10                                            ;; 0f:5b9f $a8
    mB_10                                              ;; 0f:5ba0 $ab
    mE_10                                              ;; 0f:5ba1 $a4
    mGis_10                                            ;; 0f:5ba2 $a8
    mB_10                                              ;; 0f:5ba3 $ab
    mGis_10                                            ;; 0f:5ba4 $a8
    mB_10                                              ;; 0f:5ba5 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5ba6 $d8
    mE_2                                               ;; 0f:5ba7 $24
    mOCTAVE_MINUS_1                                    ;; 0f:5ba8 $dc
    mF_10                                              ;; 0f:5ba9 $a5
    mA_10                                              ;; 0f:5baa $a9
    mCPlus_10                                          ;; 0f:5bab $ac
    mF_10                                              ;; 0f:5bac $a5
    mA_10                                              ;; 0f:5bad $a9
    mCPlus_10                                          ;; 0f:5bae $ac
    mA_10                                              ;; 0f:5baf $a9
    mCPlus_10                                          ;; 0f:5bb0 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bb1 $d8
    mF_2                                               ;; 0f:5bb2 $25
    mOCTAVE_MINUS_1                                    ;; 0f:5bb3 $dc
    mTEMPO $87                                         ;; 0f:5bb4 $e7 $87
    mB_10                                              ;; 0f:5bb6 $ab
    mCPlus_10                                          ;; 0f:5bb7 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bb8 $d8
    mD_10                                              ;; 0f:5bb9 $a2
    mC_10                                              ;; 0f:5bba $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5bbb $dc
    mB_5                                               ;; 0f:5bbc $5b
    mA_10                                              ;; 0f:5bbd $a9
    mB_10                                              ;; 0f:5bbe $ab
    mCPlus_10                                          ;; 0f:5bbf $ac
    mB_10                                              ;; 0f:5bc0 $ab
    mA_5                                               ;; 0f:5bc1 $59
    mGis_4                                             ;; 0f:5bc2 $48
    mA_4                                               ;; 0f:5bc3 $49
    mB_5                                               ;; 0f:5bc4 $5b
    mJUMP song0e_channel2                              ;; 0f:5bc5 $e1 $3c $5b

song0e_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:5bc8 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:5bcb $e0 $ae $7a
    mDUTYCYCLE $00                                     ;; 0f:5bce $e5 $00
    mSTEREOPAN $02                                     ;; 0f:5bd0 $e6 $02
    mCOUNTER $02                                       ;; 0f:5bd2 $e3 $02
.data_0f_5bd4:
    mSTEREOPAN $02                                     ;; 0f:5bd4 $e6 $02
    mOCTAVE_2                                          ;; 0f:5bd6 $d2
    mE_10                                              ;; 0f:5bd7 $a4
    mC_10                                              ;; 0f:5bd8 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5bd9 $dc
    mB_10                                              ;; 0f:5bda $ab
    mCPlus_10                                          ;; 0f:5bdb $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bdc $d8
    mSTEREOPAN $01                                     ;; 0f:5bdd $e6 $01
    mE_10                                              ;; 0f:5bdf $a4
    mC_10                                              ;; 0f:5be0 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5be1 $dc
    mB_10                                              ;; 0f:5be2 $ab
    mCPlus_10                                          ;; 0f:5be3 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5be4 $d8
    mSTEREOPAN $02                                     ;; 0f:5be5 $e6 $02
    mE_10                                              ;; 0f:5be7 $a4
    mC_10                                              ;; 0f:5be8 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5be9 $dc
    mB_10                                              ;; 0f:5bea $ab
    mCPlus_10                                          ;; 0f:5beb $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bec $d8
    mSTEREOPAN $01                                     ;; 0f:5bed $e6 $01
    mE_10                                              ;; 0f:5bef $a4
    mC_10                                              ;; 0f:5bf0 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5bf1 $dc
    mB_10                                              ;; 0f:5bf2 $ab
    mCPlus_10                                          ;; 0f:5bf3 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bf4 $d8
    mSTEREOPAN $03                                     ;; 0f:5bf5 $e6 $03
    mE_10                                              ;; 0f:5bf7 $a4
    mC_10                                              ;; 0f:5bf8 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5bf9 $dc
    mB_10                                              ;; 0f:5bfa $ab
    mCPlus_10                                          ;; 0f:5bfb $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5bfc $d8
    mE_10                                              ;; 0f:5bfd $a4
    mC_10                                              ;; 0f:5bfe $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5bff $dc
    mB_10                                              ;; 0f:5c00 $ab
    mCPlus_10                                          ;; 0f:5c01 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c02 $d8
    mE_10                                              ;; 0f:5c03 $a4
    mC_10                                              ;; 0f:5c04 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c05 $dc
    mB_10                                              ;; 0f:5c06 $ab
    mCPlus_10                                          ;; 0f:5c07 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c08 $d8
    mE_10                                              ;; 0f:5c09 $a4
    mC_10                                              ;; 0f:5c0a $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c0b $dc
    mB_10                                              ;; 0f:5c0c $ab
    mCPlus_10                                          ;; 0f:5c0d $ac
    mREPEAT .data_0f_5bd4                              ;; 0f:5c0e $e2 $d4 $5b
    mOCTAVE_PLUS_1                                     ;; 0f:5c11 $d8
    mCOUNTER $02                                       ;; 0f:5c12 $e3 $02
.data_0f_5c14:
    mSTEREOPAN $02                                     ;; 0f:5c14 $e6 $02
    mFis_10                                            ;; 0f:5c16 $a6
    mD_10                                              ;; 0f:5c17 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5c18 $dc
    mA_10                                              ;; 0f:5c19 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:5c1a $d8
    mD_10                                              ;; 0f:5c1b $a2
    mSTEREOPAN $01                                     ;; 0f:5c1c $e6 $01
    mFis_10                                            ;; 0f:5c1e $a6
    mD_10                                              ;; 0f:5c1f $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5c20 $dc
    mA_10                                              ;; 0f:5c21 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:5c22 $d8
    mD_10                                              ;; 0f:5c23 $a2
    mREPEAT .data_0f_5c14                              ;; 0f:5c24 $e2 $14 $5c
    mSTEREOPAN $03                                     ;; 0f:5c27 $e6 $03
    mF_10                                              ;; 0f:5c29 $a5
    mC_10                                              ;; 0f:5c2a $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c2b $dc
    mA_10                                              ;; 0f:5c2c $a9
    mCPlus_10                                          ;; 0f:5c2d $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c2e $d8
    mF_10                                              ;; 0f:5c2f $a5
    mC_10                                              ;; 0f:5c30 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c31 $dc
    mA_10                                              ;; 0f:5c32 $a9
    mCPlus_10                                          ;; 0f:5c33 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c34 $d8
    mF_10                                              ;; 0f:5c35 $a5
    mC_10                                              ;; 0f:5c36 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c37 $dc
    mA_10                                              ;; 0f:5c38 $a9
    mCPlus_10                                          ;; 0f:5c39 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c3a $d8
    mF_10                                              ;; 0f:5c3b $a5
    mC_10                                              ;; 0f:5c3c $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c3d $dc
    mA_10                                              ;; 0f:5c3e $a9
    mCPlus_10                                          ;; 0f:5c3f $ac
    mCOUNTER $02                                       ;; 0f:5c40 $e3 $02
.data_0f_5c42:
    mSTEREOPAN $02                                     ;; 0f:5c42 $e6 $02
    mOCTAVE_2                                          ;; 0f:5c44 $d2
    mE_10                                              ;; 0f:5c45 $a4
    mC_10                                              ;; 0f:5c46 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c47 $dc
    mB_10                                              ;; 0f:5c48 $ab
    mCPlus_10                                          ;; 0f:5c49 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c4a $d8
    mSTEREOPAN $01                                     ;; 0f:5c4b $e6 $01
    mE_10                                              ;; 0f:5c4d $a4
    mC_10                                              ;; 0f:5c4e $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c4f $dc
    mB_10                                              ;; 0f:5c50 $ab
    mCPlus_10                                          ;; 0f:5c51 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c52 $d8
    mSTEREOPAN $02                                     ;; 0f:5c53 $e6 $02
    mE_10                                              ;; 0f:5c55 $a4
    mC_10                                              ;; 0f:5c56 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c57 $dc
    mB_10                                              ;; 0f:5c58 $ab
    mCPlus_10                                          ;; 0f:5c59 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c5a $d8
    mSTEREOPAN $01                                     ;; 0f:5c5b $e6 $01
    mE_10                                              ;; 0f:5c5d $a4
    mC_10                                              ;; 0f:5c5e $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c5f $dc
    mB_10                                              ;; 0f:5c60 $ab
    mCPlus_10                                          ;; 0f:5c61 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c62 $d8
    mSTEREOPAN $03                                     ;; 0f:5c63 $e6 $03
    mE_10                                              ;; 0f:5c65 $a4
    mC_10                                              ;; 0f:5c66 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c67 $dc
    mB_10                                              ;; 0f:5c68 $ab
    mCPlus_10                                          ;; 0f:5c69 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c6a $d8
    mE_10                                              ;; 0f:5c6b $a4
    mC_10                                              ;; 0f:5c6c $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c6d $dc
    mB_10                                              ;; 0f:5c6e $ab
    mCPlus_10                                          ;; 0f:5c6f $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c70 $d8
    mE_10                                              ;; 0f:5c71 $a4
    mC_10                                              ;; 0f:5c72 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c73 $dc
    mB_10                                              ;; 0f:5c74 $ab
    mCPlus_10                                          ;; 0f:5c75 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c76 $d8
    mE_10                                              ;; 0f:5c77 $a4
    mC_10                                              ;; 0f:5c78 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c79 $dc
    mB_10                                              ;; 0f:5c7a $ab
    mCPlus_10                                          ;; 0f:5c7b $ac
    mREPEAT .data_0f_5c42                              ;; 0f:5c7c $e2 $42 $5c
    mOCTAVE_PLUS_1                                     ;; 0f:5c7f $d8
    mCOUNTER $02                                       ;; 0f:5c80 $e3 $02
.data_0f_5c82:
    mSTEREOPAN $02                                     ;; 0f:5c82 $e6 $02
    mFis_10                                            ;; 0f:5c84 $a6
    mD_10                                              ;; 0f:5c85 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5c86 $dc
    mA_10                                              ;; 0f:5c87 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:5c88 $d8
    mD_10                                              ;; 0f:5c89 $a2
    mSTEREOPAN $01                                     ;; 0f:5c8a $e6 $01
    mFis_10                                            ;; 0f:5c8c $a6
    mD_10                                              ;; 0f:5c8d $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5c8e $dc
    mA_10                                              ;; 0f:5c8f $a9
    mOCTAVE_PLUS_1                                     ;; 0f:5c90 $d8
    mD_10                                              ;; 0f:5c91 $a2
    mREPEAT .data_0f_5c82                              ;; 0f:5c92 $e2 $82 $5c
    mSTEREOPAN $03                                     ;; 0f:5c95 $e6 $03
    mF_10                                              ;; 0f:5c97 $a5
    mC_10                                              ;; 0f:5c98 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c99 $dc
    mA_10                                              ;; 0f:5c9a $a9
    mCPlus_10                                          ;; 0f:5c9b $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5c9c $d8
    mF_10                                              ;; 0f:5c9d $a5
    mC_10                                              ;; 0f:5c9e $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5c9f $dc
    mA_10                                              ;; 0f:5ca0 $a9
    mCPlus_10                                          ;; 0f:5ca1 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5ca2 $d8
    mF_10                                              ;; 0f:5ca3 $a5
    mC_10                                              ;; 0f:5ca4 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5ca5 $dc
    mA_10                                              ;; 0f:5ca6 $a9
    mCPlus_10                                          ;; 0f:5ca7 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5ca8 $d8
    mF_10                                              ;; 0f:5ca9 $a5
    mC_10                                              ;; 0f:5caa $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5cab $dc
    mA_10                                              ;; 0f:5cac $a9
    mCPlus_10                                          ;; 0f:5cad $ac
    mOCTAVE_PLUS_2                                     ;; 0f:5cae $d9
    mCOUNTER $04                                       ;; 0f:5caf $e3 $04
.data_0f_5cb1:
    mVOLUME_ENVELOPE data_0f_7aa0                      ;; 0f:5cb1 $e0 $a0 $7a
    mDUTYCYCLE $40                                     ;; 0f:5cb4 $e5 $40
    mSTEREOPAN $02                                     ;; 0f:5cb6 $e6 $02
    mA_10                                              ;; 0f:5cb8 $a9
    mE_10                                              ;; 0f:5cb9 $a4
    mOCTAVE_PLUS_1                                     ;; 0f:5cba $d8
    mSTEREOPAN $03                                     ;; 0f:5cbb $e6 $03
    mE_10                                              ;; 0f:5cbd $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5cbe $dc
    mE_10                                              ;; 0f:5cbf $a4
    mSTEREOPAN $01                                     ;; 0f:5cc0 $e6 $01
    mA_10                                              ;; 0f:5cc2 $a9
    mE_10                                              ;; 0f:5cc3 $a4
    mOCTAVE_PLUS_1                                     ;; 0f:5cc4 $d8
    mSTEREOPAN $03                                     ;; 0f:5cc5 $e6 $03
    mE_10                                              ;; 0f:5cc7 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5cc8 $dc
    mE_10                                              ;; 0f:5cc9 $a4
    mREPEAT .data_0f_5cb1                              ;; 0f:5cca $e2 $b1 $5c
    mSTEREOPAN $03                                     ;; 0f:5ccd $e6 $03
    mDUTYCYCLE $00                                     ;; 0f:5ccf $e5 $00
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:5cd1 $e0 $ae $7a
    mOCTAVE_MINUS_2                                    ;; 0f:5cd4 $dd
    mB_10                                              ;; 0f:5cd5 $ab
    mAis_10                                            ;; 0f:5cd6 $aa
    mA_10                                              ;; 0f:5cd7 $a9
    mGis_10                                            ;; 0f:5cd8 $a8
    mB_10                                              ;; 0f:5cd9 $ab
    mAis_10                                            ;; 0f:5cda $aa
    mA_10                                              ;; 0f:5cdb $a9
    mGis_10                                            ;; 0f:5cdc $a8
    mG_10                                              ;; 0f:5cdd $a7
    mGis_10                                            ;; 0f:5cde $a8
    mA_10                                              ;; 0f:5cdf $a9
    mAis_10                                            ;; 0f:5ce0 $aa
    mG_10                                              ;; 0f:5ce1 $a7
    mGis_10                                            ;; 0f:5ce2 $a8
    mA_10                                              ;; 0f:5ce3 $a9
    mAis_10                                            ;; 0f:5ce4 $aa
    mB_10                                              ;; 0f:5ce5 $ab
    mAis_10                                            ;; 0f:5ce6 $aa
    mA_10                                              ;; 0f:5ce7 $a9
    mGis_10                                            ;; 0f:5ce8 $a8
    mB_10                                              ;; 0f:5ce9 $ab
    mAis_10                                            ;; 0f:5cea $aa
    mA_10                                              ;; 0f:5ceb $a9
    mGis_10                                            ;; 0f:5cec $a8
    mG_10                                              ;; 0f:5ced $a7
    mGis_10                                            ;; 0f:5cee $a8
    mA_10                                              ;; 0f:5cef $a9
    mAis_10                                            ;; 0f:5cf0 $aa
    mG_10                                              ;; 0f:5cf1 $a7
    mGis_10                                            ;; 0f:5cf2 $a8
    mA_10                                              ;; 0f:5cf3 $a9
    mAis_10                                            ;; 0f:5cf4 $aa
    mOCTAVE_PLUS_2                                     ;; 0f:5cf5 $d9
    mCOUNTER $04                                       ;; 0f:5cf6 $e3 $04
.data_0f_5cf8:
    mVOLUME_ENVELOPE data_0f_7aa0                      ;; 0f:5cf8 $e0 $a0 $7a
    mDUTYCYCLE $40                                     ;; 0f:5cfb $e5 $40
    mSTEREOPAN $02                                     ;; 0f:5cfd $e6 $02
    mA_10                                              ;; 0f:5cff $a9
    mE_10                                              ;; 0f:5d00 $a4
    mOCTAVE_PLUS_1                                     ;; 0f:5d01 $d8
    mSTEREOPAN $03                                     ;; 0f:5d02 $e6 $03
    mE_10                                              ;; 0f:5d04 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5d05 $dc
    mE_10                                              ;; 0f:5d06 $a4
    mSTEREOPAN $01                                     ;; 0f:5d07 $e6 $01
    mA_10                                              ;; 0f:5d09 $a9
    mE_10                                              ;; 0f:5d0a $a4
    mOCTAVE_PLUS_1                                     ;; 0f:5d0b $d8
    mSTEREOPAN $03                                     ;; 0f:5d0c $e6 $03
    mE_10                                              ;; 0f:5d0e $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5d0f $dc
    mE_10                                              ;; 0f:5d10 $a4
    mREPEAT .data_0f_5cf8                              ;; 0f:5d11 $e2 $f8 $5c
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:5d14 $e0 $ae $7a
    mSTEREOPAN $03                                     ;; 0f:5d17 $e6 $03
    mDUTYCYCLE $00                                     ;; 0f:5d19 $e5 $00
    mOCTAVE_MINUS_2                                    ;; 0f:5d1b $dd
    mB_10                                              ;; 0f:5d1c $ab
    mAis_10                                            ;; 0f:5d1d $aa
    mA_10                                              ;; 0f:5d1e $a9
    mGis_10                                            ;; 0f:5d1f $a8
    mB_10                                              ;; 0f:5d20 $ab
    mAis_10                                            ;; 0f:5d21 $aa
    mA_10                                              ;; 0f:5d22 $a9
    mGis_10                                            ;; 0f:5d23 $a8
    mG_10                                              ;; 0f:5d24 $a7
    mGis_10                                            ;; 0f:5d25 $a8
    mA_10                                              ;; 0f:5d26 $a9
    mAis_10                                            ;; 0f:5d27 $aa
    mG_10                                              ;; 0f:5d28 $a7
    mGis_10                                            ;; 0f:5d29 $a8
    mA_10                                              ;; 0f:5d2a $a9
    mAis_10                                            ;; 0f:5d2b $aa
    mB_10                                              ;; 0f:5d2c $ab
    mAis_10                                            ;; 0f:5d2d $aa
    mA_10                                              ;; 0f:5d2e $a9
    mGis_10                                            ;; 0f:5d2f $a8
    mB_10                                              ;; 0f:5d30 $ab
    mAis_10                                            ;; 0f:5d31 $aa
    mA_10                                              ;; 0f:5d32 $a9
    mGis_10                                            ;; 0f:5d33 $a8
    mG_10                                              ;; 0f:5d34 $a7
    mGis_10                                            ;; 0f:5d35 $a8
    mA_10                                              ;; 0f:5d36 $a9
    mAis_10                                            ;; 0f:5d37 $aa
    mG_10                                              ;; 0f:5d38 $a7
    mGis_10                                            ;; 0f:5d39 $a8
    mA_10                                              ;; 0f:5d3a $a9
    mAis_10                                            ;; 0f:5d3b $aa
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5d3c $e0 $82 $7a
    mSTEREOPAN $02                                     ;; 0f:5d3f $e6 $02
    mGis_10                                            ;; 0f:5d41 $a8
    mB_10                                              ;; 0f:5d42 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5d43 $d8
    mE_10                                              ;; 0f:5d44 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5d45 $dc
    mGis_10                                            ;; 0f:5d46 $a8
    mB_10                                              ;; 0f:5d47 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5d48 $d8
    mE_10                                              ;; 0f:5d49 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:5d4a $dc
    mB_10                                              ;; 0f:5d4b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5d4c $d8
    mE_10                                              ;; 0f:5d4d $a4
    mSTEREOPAN $03                                     ;; 0f:5d4e $e6 $03
    mRest_8                                            ;; 0f:5d50 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:5d51 $dc
    mB_10                                              ;; 0f:5d52 $ab
    mCPlus_10                                          ;; 0f:5d53 $ac
    mB_10                                              ;; 0f:5d54 $ab
    mA_10                                              ;; 0f:5d55 $a9
    mGis_10                                            ;; 0f:5d56 $a8
    mB_10                                              ;; 0f:5d57 $ab
    mSTEREOPAN $01                                     ;; 0f:5d58 $e6 $01
    mA_10                                              ;; 0f:5d5a $a9
    mCPlus_10                                          ;; 0f:5d5b $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5d5c $d8
    mF_10                                              ;; 0f:5d5d $a5
    mOCTAVE_MINUS_1                                    ;; 0f:5d5e $dc
    mA_10                                              ;; 0f:5d5f $a9
    mCPlus_10                                          ;; 0f:5d60 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5d61 $d8
    mF_10                                              ;; 0f:5d62 $a5
    mOCTAVE_MINUS_1                                    ;; 0f:5d63 $dc
    mA_10                                              ;; 0f:5d64 $a9
    mCPlus_10                                          ;; 0f:5d65 $ac
    mSTEREOPAN $03                                     ;; 0f:5d66 $e6 $03
    mRest_8                                            ;; 0f:5d68 $8f
    mCPlus_10                                          ;; 0f:5d69 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5d6a $d8
    mD_10                                              ;; 0f:5d6b $a2
    mC_10                                              ;; 0f:5d6c $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5d6d $dc
    mB_10                                              ;; 0f:5d6e $ab
    mA_10                                              ;; 0f:5d6f $a9
    mCPlus_10                                          ;; 0f:5d70 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5d71 $d8
    mVOLUME_ENVELOPE data_0f_7ab0                      ;; 0f:5d72 $e0 $b0 $7a
    mD_5                                               ;; 0f:5d75 $52
    mSTEREOPAN $02                                     ;; 0f:5d76 $e6 $02
    mG_10                                              ;; 0f:5d78 $a7
    mD_10                                              ;; 0f:5d79 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5d7a $dc
    mB_10                                              ;; 0f:5d7b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5d7c $d8
    mD_10                                              ;; 0f:5d7d $a2
    mSTEREOPAN $03                                     ;; 0f:5d7e $e6 $03
    mC_5                                               ;; 0f:5d80 $50
    mSTEREOPAN $01                                     ;; 0f:5d81 $e6 $01
    mF_10                                              ;; 0f:5d83 $a5
    mC_10                                              ;; 0f:5d84 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5d85 $dc
    mA_10                                              ;; 0f:5d86 $a9
    mCPlus_10                                          ;; 0f:5d87 $ac
    mVOLUME_ENVELOPE data_0f_7a94                      ;; 0f:5d88 $e0 $94 $7a
    mSTEREOPAN $03                                     ;; 0f:5d8b $e6 $03
    mB_10                                              ;; 0f:5d8d $ab
    mE_10                                              ;; 0f:5d8e $a4
    mB_10                                              ;; 0f:5d8f $ab
    mE_10                                              ;; 0f:5d90 $a4
    mB_10                                              ;; 0f:5d91 $ab
    mE_10                                              ;; 0f:5d92 $a4
    mCPlus_10                                          ;; 0f:5d93 $ac
    mE_10                                              ;; 0f:5d94 $a4
    mCPlus_10                                          ;; 0f:5d95 $ac
    mE_10                                              ;; 0f:5d96 $a4
    mCPlus_10                                          ;; 0f:5d97 $ac
    mE_10                                              ;; 0f:5d98 $a4
    mOCTAVE_PLUS_1                                     ;; 0f:5d99 $d8
    mSTEREOPAN $02                                     ;; 0f:5d9a $e6 $02
    mD_11                                              ;; 0f:5d9c $b2
    mOCTAVE_MINUS_1                                    ;; 0f:5d9d $dc
    mB_11                                              ;; 0f:5d9e $bb
    mSTEREOPAN $03                                     ;; 0f:5d9f $e6 $03
    mGis_11                                            ;; 0f:5da1 $b8
    mB_11                                              ;; 0f:5da2 $bb
    mSTEREOPAN $01                                     ;; 0f:5da3 $e6 $01
    mGis_11                                            ;; 0f:5da5 $b8
    mE_11                                              ;; 0f:5da6 $b4
    mJUMP song0e_channel1                              ;; 0f:5da7 $e1 $c8 $5b

song0e_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:5daa $e4 $4f $7a
    mWAVETABLE data_0f_7b0c                            ;; 0f:5dad $e8 $0c $7b
    mVOLUME $20                                        ;; 0f:5db0 $e0 $20
    mCOUNTER $02                                       ;; 0f:5db2 $e3 $02
.data_0f_5db4:
    mSTEREOPAN $03                                     ;; 0f:5db4 $e6 $03
    mOCTAVE_1                                          ;; 0f:5db6 $d1
    mA_10                                              ;; 0f:5db7 $a9
    mWait_12                                           ;; 0f:5db8 $ce
    mRest_12                                           ;; 0f:5db9 $cf
    mA_10                                              ;; 0f:5dba $a9
    mWait_12                                           ;; 0f:5dbb $ce
    mRest_12                                           ;; 0f:5dbc $cf
    mRest_4                                            ;; 0f:5dbd $4f
    mOCTAVE_PLUS_1                                     ;; 0f:5dbe $d8
    mE_7                                               ;; 0f:5dbf $74
    mRest_10                                           ;; 0f:5dc0 $af
    mE_10                                              ;; 0f:5dc1 $a4
    mWait_12                                           ;; 0f:5dc2 $ce
    mRest_12                                           ;; 0f:5dc3 $cf
    mOCTAVE_MINUS_1                                    ;; 0f:5dc4 $dc
    mSTEREOPAN $02                                     ;; 0f:5dc5 $e6 $02
    mA_10                                              ;; 0f:5dc7 $a9
    mWait_12                                           ;; 0f:5dc8 $ce
    mRest_12                                           ;; 0f:5dc9 $cf
    mSTEREOPAN $01                                     ;; 0f:5dca $e6 $01
    mA_10                                              ;; 0f:5dcc $a9
    mWait_12                                           ;; 0f:5dcd $ce
    mRest_12                                           ;; 0f:5dce $cf
    mRest_1                                            ;; 0f:5dcf $1f
    mSTEREOPAN $03                                     ;; 0f:5dd0 $e6 $03
    mA_10                                              ;; 0f:5dd2 $a9
    mWait_12                                           ;; 0f:5dd3 $ce
    mRest_12                                           ;; 0f:5dd4 $cf
    mA_10                                              ;; 0f:5dd5 $a9
    mWait_12                                           ;; 0f:5dd6 $ce
    mRest_12                                           ;; 0f:5dd7 $cf
    mRest_4                                            ;; 0f:5dd8 $4f
    mOCTAVE_PLUS_1                                     ;; 0f:5dd9 $d8
    mE_7                                               ;; 0f:5dda $74
    mRest_10                                           ;; 0f:5ddb $af
    mE_10                                              ;; 0f:5ddc $a4
    mWait_12                                           ;; 0f:5ddd $ce
    mRest_12                                           ;; 0f:5dde $cf
    mOCTAVE_MINUS_1                                    ;; 0f:5ddf $dc
    mSTEREOPAN $02                                     ;; 0f:5de0 $e6 $02
    mA_10                                              ;; 0f:5de2 $a9
    mWait_12                                           ;; 0f:5de3 $ce
    mRest_12                                           ;; 0f:5de4 $cf
    mSTEREOPAN $01                                     ;; 0f:5de5 $e6 $01
    mA_10                                              ;; 0f:5de7 $a9
    mWait_12                                           ;; 0f:5de8 $ce
    mRest_12                                           ;; 0f:5de9 $cf
    mRest_1                                            ;; 0f:5dea $1f
    mOCTAVE_PLUS_1                                     ;; 0f:5deb $d8
    mSTEREOPAN $03                                     ;; 0f:5dec $e6 $03
    mD_0                                               ;; 0f:5dee $02
    mSTEREOPAN $02                                     ;; 0f:5def $e6 $02
    mF_4                                               ;; 0f:5df1 $45
    mSTEREOPAN $03                                     ;; 0f:5df2 $e6 $03
    mE_4                                               ;; 0f:5df4 $44
    mSTEREOPAN $01                                     ;; 0f:5df5 $e6 $01
    mD_5                                               ;; 0f:5df7 $52
    mREPEAT .data_0f_5db4                              ;; 0f:5df8 $e2 $b4 $5d
    mCOUNTER $02                                       ;; 0f:5dfb $e3 $02
.data_0f_5dfd:
    mWAVETABLE data_0f_7b1c                            ;; 0f:5dfd $e8 $1c $7b
    mSTEREOPAN $03                                     ;; 0f:5e00 $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:5e02 $dc
    mF_10                                              ;; 0f:5e03 $a5
    mRest_10                                           ;; 0f:5e04 $af
    mF_10                                              ;; 0f:5e05 $a5
    mRest_10                                           ;; 0f:5e06 $af
    mRest_5                                            ;; 0f:5e07 $5f
    mF_10                                              ;; 0f:5e08 $a5
    mRest_10                                           ;; 0f:5e09 $af
    mF_10                                              ;; 0f:5e0a $a5
    mRest_10                                           ;; 0f:5e0b $af
    mRest_5                                            ;; 0f:5e0c $5f
    mF_10                                              ;; 0f:5e0d $a5
    mRest_10                                           ;; 0f:5e0e $af
    mF_10                                              ;; 0f:5e0f $a5
    mRest_10                                           ;; 0f:5e10 $af
    mRest_5                                            ;; 0f:5e11 $5f
    mF_10                                              ;; 0f:5e12 $a5
    mRest_10                                           ;; 0f:5e13 $af
    mF_10                                              ;; 0f:5e14 $a5
    mRest_10                                           ;; 0f:5e15 $af
    mRest_5                                            ;; 0f:5e16 $5f
    mOCTAVE_PLUS_1                                     ;; 0f:5e17 $d8
    mWAVETABLE data_0f_7afc                            ;; 0f:5e18 $e8 $fc $7a
    mSTEREOPAN $02                                     ;; 0f:5e1b $e6 $02
    mF_2                                               ;; 0f:5e1d $25
    mSTEREOPAN $03                                     ;; 0f:5e1e $e6 $03
    mC_2                                               ;; 0f:5e20 $20
    mSTEREOPAN $01                                     ;; 0f:5e21 $e6 $01
    mF_2                                               ;; 0f:5e23 $25
    mSTEREOPAN $03                                     ;; 0f:5e24 $e6 $03
    mC_2                                               ;; 0f:5e26 $20
    mREPEAT .data_0f_5dfd                              ;; 0f:5e27 $e2 $fd $5d
    mWAVETABLE data_0f_7b0c                            ;; 0f:5e2a $e8 $0c $7b
    mSTEREOPAN $03                                     ;; 0f:5e2d $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:5e2f $dc
    mE_10                                              ;; 0f:5e30 $a4
    mRest_10                                           ;; 0f:5e31 $af
    mE_10                                              ;; 0f:5e32 $a4
    mRest_10                                           ;; 0f:5e33 $af
    mE_10                                              ;; 0f:5e34 $a4
    mRest_10                                           ;; 0f:5e35 $af
    mE_10                                              ;; 0f:5e36 $a4
    mRest_10                                           ;; 0f:5e37 $af
    mRest_8                                            ;; 0f:5e38 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:5e39 $d8
    mE_7                                               ;; 0f:5e3a $74
    mRest_10                                           ;; 0f:5e3b $af
    mOCTAVE_MINUS_1                                    ;; 0f:5e3c $dc
    mB_10                                              ;; 0f:5e3d $ab
    mWait_12                                           ;; 0f:5e3e $ce
    mRest_12                                           ;; 0f:5e3f $cf
    mF_10                                              ;; 0f:5e40 $a5
    mRest_10                                           ;; 0f:5e41 $af
    mF_10                                              ;; 0f:5e42 $a5
    mRest_10                                           ;; 0f:5e43 $af
    mF_10                                              ;; 0f:5e44 $a5
    mRest_10                                           ;; 0f:5e45 $af
    mF_10                                              ;; 0f:5e46 $a5
    mRest_10                                           ;; 0f:5e47 $af
    mRest_8                                            ;; 0f:5e48 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:5e49 $d8
    mF_7                                               ;; 0f:5e4a $75
    mRest_10                                           ;; 0f:5e4b $af
    mC_10                                              ;; 0f:5e4c $a0
    mWait_12                                           ;; 0f:5e4d $ce
    mRest_12                                           ;; 0f:5e4e $cf
    mOCTAVE_MINUS_1                                    ;; 0f:5e4f $dc
    mG_5                                               ;; 0f:5e50 $57
    mOCTAVE_PLUS_1                                     ;; 0f:5e51 $d8
    mG_5                                               ;; 0f:5e52 $57
    mOCTAVE_MINUS_1                                    ;; 0f:5e53 $dc
    mF_5                                               ;; 0f:5e54 $55
    mOCTAVE_PLUS_1                                     ;; 0f:5e55 $d8
    mF_5                                               ;; 0f:5e56 $55
    mOCTAVE_MINUS_1                                    ;; 0f:5e57 $dc
    mSTEREOPAN $02                                     ;; 0f:5e58 $e6 $02
    mE_4                                               ;; 0f:5e5a $44
    mSTEREOPAN $01                                     ;; 0f:5e5b $e6 $01
    mFis_4                                             ;; 0f:5e5d $46
    mSTEREOPAN $03                                     ;; 0f:5e5e $e6 $03
    mGis_10                                            ;; 0f:5e60 $a8
    mWait_12                                           ;; 0f:5e61 $ce
    mRest_12                                           ;; 0f:5e62 $cf
    mE_10                                              ;; 0f:5e63 $a4
    mWait_12                                           ;; 0f:5e64 $ce
    mRest_12                                           ;; 0f:5e65 $cf
    mJUMP song0e_channel3                              ;; 0f:5e66 $e1 $aa $5d

song0f_channel2:
    mTEMPO $87                                         ;; 0f:5e69 $e7 $87
    mVIBRATO frequencyDeltaData                        ;; 0f:5e6b $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:5e6e $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:5e71 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:5e73 $e6 $03
    mOCTAVE_3                                          ;; 0f:5e75 $d3
    mDis_5                                             ;; 0f:5e76 $53
    mWait_10                                           ;; 0f:5e77 $ae
    mC_10                                              ;; 0f:5e78 $a0
    mD_10                                              ;; 0f:5e79 $a2
    mDis_10                                            ;; 0f:5e7a $a3
    mF_5                                               ;; 0f:5e7b $55
    mWait_10                                           ;; 0f:5e7c $ae
    mD_10                                              ;; 0f:5e7d $a2
    mDis_10                                            ;; 0f:5e7e $a3
    mF_10                                              ;; 0f:5e7f $a5
    mG_5                                               ;; 0f:5e80 $57
    mWait_10                                           ;; 0f:5e81 $ae
    mF_10                                              ;; 0f:5e82 $a5
    mDis_10                                            ;; 0f:5e83 $a3
    mG_10                                              ;; 0f:5e84 $a7
    mF_5                                               ;; 0f:5e85 $55
    mC_5                                               ;; 0f:5e86 $50
    mTEMPO $8a                                         ;; 0f:5e87 $e7 $8a
    mDis_8                                             ;; 0f:5e89 $83
    mC_8                                               ;; 0f:5e8a $80
    mD_8                                               ;; 0f:5e8b $82
    mDis_8                                             ;; 0f:5e8c $83
    mF_8                                               ;; 0f:5e8d $85
    mD_8                                               ;; 0f:5e8e $82
    mDis_8                                             ;; 0f:5e8f $83
    mF_8                                               ;; 0f:5e90 $85
    mG_4                                               ;; 0f:5e91 $47
    mA_10                                              ;; 0f:5e92 $a9
    mG_10                                              ;; 0f:5e93 $a7
    mFis_8                                             ;; 0f:5e94 $86
    mD_8                                               ;; 0f:5e95 $82
    mE_8                                               ;; 0f:5e96 $84
    mFis_8                                             ;; 0f:5e97 $86
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:5e98 $e0 $be $7a
    mG_7                                               ;; 0f:5e9b $77
    mD_7                                               ;; 0f:5e9c $72
    mF_8                                               ;; 0f:5e9d $85
    mE_2                                               ;; 0f:5e9e $24
    mF_7                                               ;; 0f:5e9f $75
    mC_7                                               ;; 0f:5ea0 $70
    mDis_8                                             ;; 0f:5ea1 $83
    mD_2                                               ;; 0f:5ea2 $22
    mD_7                                               ;; 0f:5ea3 $72
    mOCTAVE_MINUS_1                                    ;; 0f:5ea4 $dc
    mG_7                                               ;; 0f:5ea5 $77
    mOCTAVE_PLUS_1                                     ;; 0f:5ea6 $d8
    mD_8                                               ;; 0f:5ea7 $82
    mDis_7                                             ;; 0f:5ea8 $73
    mOCTAVE_MINUS_1                                    ;; 0f:5ea9 $dc
    mG_7                                               ;; 0f:5eaa $77
    mOCTAVE_PLUS_1                                     ;; 0f:5eab $d8
    mDis_8                                             ;; 0f:5eac $83
    mF_7                                               ;; 0f:5ead $75
    mC_7                                               ;; 0f:5eae $70
    mF_8                                               ;; 0f:5eaf $85
    mFis_7                                             ;; 0f:5eb0 $76
    mD_7                                               ;; 0f:5eb1 $72
    mFis_8                                             ;; 0f:5eb2 $86
    mOCTAVE_MINUS_2                                    ;; 0f:5eb3 $dd
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:5eb4 $e0 $a8 $7a
    mDUTYCYCLE $80                                     ;; 0f:5eb7 $e5 $80
    mB_10                                              ;; 0f:5eb9 $ab
    mCPlus_10                                          ;; 0f:5eba $ac
    mB_10                                              ;; 0f:5ebb $ab
    mA_10                                              ;; 0f:5ebc $a9
    mB_10                                              ;; 0f:5ebd $ab
    mCPlus_10                                          ;; 0f:5ebe $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5ebf $d8
    mD_10                                              ;; 0f:5ec0 $a2
    mDis_10                                            ;; 0f:5ec1 $a3
    mF_10                                              ;; 0f:5ec2 $a5
    mG_10                                              ;; 0f:5ec3 $a7
    mF_10                                              ;; 0f:5ec4 $a5
    mDis_10                                            ;; 0f:5ec5 $a3
    mF_11                                              ;; 0f:5ec6 $b5
    mG_11                                              ;; 0f:5ec7 $b7
    mA_11                                              ;; 0f:5ec8 $b9
    mB_11                                              ;; 0f:5ec9 $bb
    mCPlus_11                                          ;; 0f:5eca $bc
    mOCTAVE_PLUS_1                                     ;; 0f:5ecb $d8
    mD_11                                              ;; 0f:5ecc $b2
    mTEMPO $8a                                         ;; 0f:5ecd $e7 $8a
    mVOLUME_ENVELOPE data_0f_7aac                      ;; 0f:5ecf $e0 $ac $7a
    mDUTYCYCLE $00                                     ;; 0f:5ed2 $e5 $00
    mDis_10                                            ;; 0f:5ed4 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:5ed5 $dc
    mAis_10                                            ;; 0f:5ed6 $aa
    mG_10                                              ;; 0f:5ed7 $a7
    mAis_10                                            ;; 0f:5ed8 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5ed9 $d8
    mF_10                                              ;; 0f:5eda $a5
    mC_10                                              ;; 0f:5edb $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5edc $dc
    mA_10                                              ;; 0f:5edd $a9
    mCPlus_10                                          ;; 0f:5ede $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5edf $d8
    mDis_10                                            ;; 0f:5ee0 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:5ee1 $dc
    mAis_10                                            ;; 0f:5ee2 $aa
    mG_10                                              ;; 0f:5ee3 $a7
    mAis_10                                            ;; 0f:5ee4 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5ee5 $d8
    mF_10                                              ;; 0f:5ee6 $a5
    mC_10                                              ;; 0f:5ee7 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5ee8 $dc
    mA_10                                              ;; 0f:5ee9 $a9
    mCPlus_10                                          ;; 0f:5eea $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5eeb $d8
    mDis_10                                            ;; 0f:5eec $a3
    mOCTAVE_MINUS_1                                    ;; 0f:5eed $dc
    mAis_10                                            ;; 0f:5eee $aa
    mG_10                                              ;; 0f:5eef $a7
    mAis_10                                            ;; 0f:5ef0 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5ef1 $d8
    mF_10                                              ;; 0f:5ef2 $a5
    mC_10                                              ;; 0f:5ef3 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5ef4 $dc
    mA_10                                              ;; 0f:5ef5 $a9
    mCPlus_10                                          ;; 0f:5ef6 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5ef7 $d8
    mDis_10                                            ;; 0f:5ef8 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:5ef9 $dc
    mAis_10                                            ;; 0f:5efa $aa
    mG_10                                              ;; 0f:5efb $a7
    mAis_10                                            ;; 0f:5efc $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5efd $d8
    mF_10                                              ;; 0f:5efe $a5
    mC_10                                              ;; 0f:5eff $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5f00 $dc
    mA_10                                              ;; 0f:5f01 $a9
    mCPlus_10                                          ;; 0f:5f02 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5f03 $d8
    mCOUNTER $02                                       ;; 0f:5f04 $e3 $02
.data_0f_5f06:
    mTEMPO $87                                         ;; 0f:5f06 $e7 $87
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:5f08 $e0 $be $7a
    mDUTYCYCLE $40                                     ;; 0f:5f0b $e5 $40
    mG_5                                               ;; 0f:5f0d $57
    mWait_10                                           ;; 0f:5f0e $ae
    mGis_10                                            ;; 0f:5f0f $a8
    mA_10                                              ;; 0f:5f10 $a9
    mAis_10                                            ;; 0f:5f11 $aa
    mA_5                                               ;; 0f:5f12 $59
    mWait_10                                           ;; 0f:5f13 $ae
    mG_10                                              ;; 0f:5f14 $a7
    mF_10                                              ;; 0f:5f15 $a5
    mA_10                                              ;; 0f:5f16 $a9
    mG_5                                               ;; 0f:5f17 $57
    mWait_10                                           ;; 0f:5f18 $ae
    mF_10                                              ;; 0f:5f19 $a5
    mDis_10                                            ;; 0f:5f1a $a3
    mG_10                                              ;; 0f:5f1b $a7
    mF_5                                               ;; 0f:5f1c $55
    mWait_10                                           ;; 0f:5f1d $ae
    mDis_10                                            ;; 0f:5f1e $a3
    mD_10                                              ;; 0f:5f1f $a2
    mF_10                                              ;; 0f:5f20 $a5
    mDis_4                                             ;; 0f:5f21 $43
    mD_5                                               ;; 0f:5f22 $52
    mC_8                                               ;; 0f:5f23 $80
    mD_8                                               ;; 0f:5f24 $82
    mDis_8                                             ;; 0f:5f25 $83
    mJUMPIF $01, .data_0f_5f3f                         ;; 0f:5f26 $eb $01 $3f $5f
    mF_10                                              ;; 0f:5f2a $a5
    mG_10                                              ;; 0f:5f2b $a7
    mF_10                                              ;; 0f:5f2c $a5
    mDis_10                                            ;; 0f:5f2d $a3
    mD_10                                              ;; 0f:5f2e $a2
    mDis_10                                            ;; 0f:5f2f $a3
    mD_10                                              ;; 0f:5f30 $a2
    mC_10                                              ;; 0f:5f31 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5f32 $dc
    mAis_10                                            ;; 0f:5f33 $aa
    mCPlus_10                                          ;; 0f:5f34 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5f35 $d8
    mD_10                                              ;; 0f:5f36 $a2
    mDis_10                                            ;; 0f:5f37 $a3
    mF_10                                              ;; 0f:5f38 $a5
    mG_10                                              ;; 0f:5f39 $a7
    mGis_10                                            ;; 0f:5f3a $a8
    mAis_10                                            ;; 0f:5f3b $aa
    mREPEAT .data_0f_5f06                              ;; 0f:5f3c $e2 $06 $5f
.data_0f_5f3f:
    mF_10                                              ;; 0f:5f3f $a5
    mG_10                                              ;; 0f:5f40 $a7
    mF_10                                              ;; 0f:5f41 $a5
    mDis_10                                            ;; 0f:5f42 $a3
    mD_10                                              ;; 0f:5f43 $a2
    mDis_10                                            ;; 0f:5f44 $a3
    mD_10                                              ;; 0f:5f45 $a2
    mC_10                                              ;; 0f:5f46 $a0
    mTEMPO $85                                         ;; 0f:5f47 $e7 $85
    mD_8                                               ;; 0f:5f49 $82
    mDis_8                                             ;; 0f:5f4a $83
    mF_8                                               ;; 0f:5f4b $85
    mG_8                                               ;; 0f:5f4c $87
    mTEMPO $8a                                         ;; 0f:5f4d $e7 $8a
    mC_10                                              ;; 0f:5f4f $a0
    mD_10                                              ;; 0f:5f50 $a2
    mDis_10                                            ;; 0f:5f51 $a3
    mD_10                                              ;; 0f:5f52 $a2
    mC_5                                               ;; 0f:5f53 $50
    mWait_10                                           ;; 0f:5f54 $ae
    mC_10                                              ;; 0f:5f55 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:5f56 $dc
    mGis_10                                            ;; 0f:5f57 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:5f58 $d8
    mDis_10                                            ;; 0f:5f59 $a3
    mGis_10                                            ;; 0f:5f5a $a8
    mG_10                                              ;; 0f:5f5b $a7
    mF_10                                              ;; 0f:5f5c $a5
    mDis_10                                            ;; 0f:5f5d $a3
    mD_10                                              ;; 0f:5f5e $a2
    mDis_10                                            ;; 0f:5f5f $a3
    mF_10                                              ;; 0f:5f60 $a5
    mDis_10                                            ;; 0f:5f61 $a3
    mD_5                                               ;; 0f:5f62 $52
    mWait_10                                           ;; 0f:5f63 $ae
    mD_10                                              ;; 0f:5f64 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5f65 $dc
    mAis_10                                            ;; 0f:5f66 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5f67 $d8
    mF_10                                              ;; 0f:5f68 $a5
    mAis_10                                            ;; 0f:5f69 $aa
    mGis_10                                            ;; 0f:5f6a $a8
    mG_10                                              ;; 0f:5f6b $a7
    mF_10                                              ;; 0f:5f6c $a5
    mG_4                                               ;; 0f:5f6d $47
    mF_10                                              ;; 0f:5f6e $a5
    mG_10                                              ;; 0f:5f6f $a7
    mGis_4                                             ;; 0f:5f70 $48
    mG_10                                              ;; 0f:5f71 $a7
    mGis_10                                            ;; 0f:5f72 $a8
    mAis_10                                            ;; 0f:5f73 $aa
    mCPlus_10                                          ;; 0f:5f74 $ac
    mAis_10                                            ;; 0f:5f75 $aa
    mGis_10                                            ;; 0f:5f76 $a8
    mG_10                                              ;; 0f:5f77 $a7
    mGis_10                                            ;; 0f:5f78 $a8
    mG_10                                              ;; 0f:5f79 $a7
    mF_10                                              ;; 0f:5f7a $a5
    mE_7                                               ;; 0f:5f7b $74
    mF_7                                               ;; 0f:5f7c $75
    mG_8                                               ;; 0f:5f7d $87
    mGis_4                                             ;; 0f:5f7e $48
    mG_10                                              ;; 0f:5f7f $a7
    mGis_10                                            ;; 0f:5f80 $a8
    mAis_4                                             ;; 0f:5f81 $4a
    mGis_10                                            ;; 0f:5f82 $a8
    mAis_10                                            ;; 0f:5f83 $aa
    mTEMPO $88                                         ;; 0f:5f84 $e7 $88
    mCPlus_7                                           ;; 0f:5f86 $7c
    mGis_7                                             ;; 0f:5f87 $78
    mF_8                                               ;; 0f:5f88 $85
    mD_7                                               ;; 0f:5f89 $72
    mF_7                                               ;; 0f:5f8a $75
    mGis_8                                             ;; 0f:5f8b $88
    mTEMPO $8a                                         ;; 0f:5f8c $e7 $8a
    mG_4                                               ;; 0f:5f8e $47
    mFis_10                                            ;; 0f:5f8f $a6
    mG_10                                              ;; 0f:5f90 $a7
    mB_7                                               ;; 0f:5f91 $7b
    mG_7                                               ;; 0f:5f92 $77
    mB_8                                               ;; 0f:5f93 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:5f94 $d8
    mD_2                                               ;; 0f:5f95 $22
    mRest_10                                           ;; 0f:5f96 $af
    mOCTAVE_MINUS_2                                    ;; 0f:5f97 $dd
    mTEMPO $82                                         ;; 0f:5f98 $e7 $82
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:5f9a $e0 $a8 $7a
    mDUTYCYCLE $80                                     ;; 0f:5f9d $e5 $80
    mG_10                                              ;; 0f:5f9f $a7
    mA_10                                              ;; 0f:5fa0 $a9
    mB_10                                              ;; 0f:5fa1 $ab
    mCPlus_10                                          ;; 0f:5fa2 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:5fa3 $d8
    mD_10                                              ;; 0f:5fa4 $a2
    mDis_10                                            ;; 0f:5fa5 $a3
    mF_10                                              ;; 0f:5fa6 $a5
    mJUMP song0f_channel2                              ;; 0f:5fa7 $e1 $69 $5e

song0f_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:5faa $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:5fad $e0 $c0 $7a
    mDUTYCYCLE $00                                     ;; 0f:5fb0 $e5 $00
    mSTEREOPAN $02                                     ;; 0f:5fb2 $e6 $02
    mRest_10                                           ;; 0f:5fb4 $af
    mOCTAVE_2                                          ;; 0f:5fb5 $d2
    mC_10                                              ;; 0f:5fb6 $a0
    mDis_10                                            ;; 0f:5fb7 $a3
    mC_10                                              ;; 0f:5fb8 $a0
    mD_10                                              ;; 0f:5fb9 $a2
    mC_10                                              ;; 0f:5fba $a0
    mDis_10                                            ;; 0f:5fbb $a3
    mC_10                                              ;; 0f:5fbc $a0
    mRest_10                                           ;; 0f:5fbd $af
    mOCTAVE_MINUS_1                                    ;; 0f:5fbe $dc
    mB_10                                              ;; 0f:5fbf $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5fc0 $d8
    mD_10                                              ;; 0f:5fc1 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5fc2 $dc
    mB_10                                              ;; 0f:5fc3 $ab
    mCPlus_10                                          ;; 0f:5fc4 $ac
    mB_10                                              ;; 0f:5fc5 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:5fc6 $d8
    mD_10                                              ;; 0f:5fc7 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5fc8 $dc
    mB_10                                              ;; 0f:5fc9 $ab
    mRest_10                                           ;; 0f:5fca $af
    mAis_10                                            ;; 0f:5fcb $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5fcc $d8
    mD_10                                              ;; 0f:5fcd $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5fce $dc
    mAis_10                                            ;; 0f:5fcf $aa
    mCPlus_10                                          ;; 0f:5fd0 $ac
    mAis_10                                            ;; 0f:5fd1 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5fd2 $d8
    mD_10                                              ;; 0f:5fd3 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5fd4 $dc
    mAis_10                                            ;; 0f:5fd5 $aa
    mRest_10                                           ;; 0f:5fd6 $af
    mA_10                                              ;; 0f:5fd7 $a9
    mCPlus_10                                          ;; 0f:5fd8 $ac
    mA_10                                              ;; 0f:5fd9 $a9
    mCPlus_10                                          ;; 0f:5fda $ac
    mA_10                                              ;; 0f:5fdb $a9
    mCPlus_10                                          ;; 0f:5fdc $ac
    mA_10                                              ;; 0f:5fdd $a9
    mSTEREOPAN $01                                     ;; 0f:5fde $e6 $01
    mRest_10                                           ;; 0f:5fe0 $af
    mGis_10                                            ;; 0f:5fe1 $a8
    mCPlus_10                                          ;; 0f:5fe2 $ac
    mGis_10                                            ;; 0f:5fe3 $a8
    mAis_10                                            ;; 0f:5fe4 $aa
    mGis_10                                            ;; 0f:5fe5 $a8
    mCPlus_10                                          ;; 0f:5fe6 $ac
    mGis_10                                            ;; 0f:5fe7 $a8
    mRest_10                                           ;; 0f:5fe8 $af
    mAis_10                                            ;; 0f:5fe9 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5fea $d8
    mD_10                                              ;; 0f:5feb $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5fec $dc
    mAis_10                                            ;; 0f:5fed $aa
    mCPlus_10                                          ;; 0f:5fee $ac
    mAis_10                                            ;; 0f:5fef $aa
    mOCTAVE_PLUS_1                                     ;; 0f:5ff0 $d8
    mD_10                                              ;; 0f:5ff1 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:5ff2 $dc
    mAis_10                                            ;; 0f:5ff3 $aa
    mRest_10                                           ;; 0f:5ff4 $af
    mOCTAVE_PLUS_1                                     ;; 0f:5ff5 $d8
    mDis_10                                            ;; 0f:5ff6 $a3
    mG_10                                              ;; 0f:5ff7 $a7
    mDis_10                                            ;; 0f:5ff8 $a3
    mF_10                                              ;; 0f:5ff9 $a5
    mDis_10                                            ;; 0f:5ffa $a3
    mG_10                                              ;; 0f:5ffb $a7
    mDis_10                                            ;; 0f:5ffc $a3
    mRest_10                                           ;; 0f:5ffd $af
    mD_10                                              ;; 0f:5ffe $a2
    mFis_10                                            ;; 0f:5fff $a6
    mD_10                                              ;; 0f:6000 $a2
    mE_10                                              ;; 0f:6001 $a4
    mD_10                                              ;; 0f:6002 $a2
    mFis_10                                            ;; 0f:6003 $a6
    mD_10                                              ;; 0f:6004 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6005 $dc
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:6006 $e0 $c4 $7a
    mSTEREOPAN $02                                     ;; 0f:6009 $e6 $02
    mB_10                                              ;; 0f:600b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:600c $d8
    mD_10                                              ;; 0f:600d $a2
    mC_10                                              ;; 0f:600e $a0
    mD_10                                              ;; 0f:600f $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6010 $dc
    mSTEREOPAN $01                                     ;; 0f:6011 $e6 $01
    mG_10                                              ;; 0f:6013 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6014 $d8
    mD_10                                              ;; 0f:6015 $a2
    mC_10                                              ;; 0f:6016 $a0
    mD_10                                              ;; 0f:6017 $a2
    mSTEREOPAN $03                                     ;; 0f:6018 $e6 $03
    mC_10                                              ;; 0f:601a $a0
    mE_10                                              ;; 0f:601b $a4
    mD_10                                              ;; 0f:601c $a2
    mE_10                                              ;; 0f:601d $a4
    mC_10                                              ;; 0f:601e $a0
    mE_10                                              ;; 0f:601f $a4
    mD_10                                              ;; 0f:6020 $a2
    mE_10                                              ;; 0f:6021 $a4
    mSTEREOPAN $02                                     ;; 0f:6022 $e6 $02
    mC_10                                              ;; 0f:6024 $a0
    mF_10                                              ;; 0f:6025 $a5
    mDis_10                                            ;; 0f:6026 $a3
    mF_10                                              ;; 0f:6027 $a5
    mSTEREOPAN $01                                     ;; 0f:6028 $e6 $01
    mC_10                                              ;; 0f:602a $a0
    mF_10                                              ;; 0f:602b $a5
    mDis_10                                            ;; 0f:602c $a3
    mF_10                                              ;; 0f:602d $a5
    mOCTAVE_MINUS_1                                    ;; 0f:602e $dc
    mSTEREOPAN $03                                     ;; 0f:602f $e6 $03
    mAis_10                                            ;; 0f:6031 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6032 $d8
    mD_10                                              ;; 0f:6033 $a2
    mC_10                                              ;; 0f:6034 $a0
    mD_10                                              ;; 0f:6035 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6036 $dc
    mAis_10                                            ;; 0f:6037 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6038 $d8
    mD_10                                              ;; 0f:6039 $a2
    mC_10                                              ;; 0f:603a $a0
    mD_10                                              ;; 0f:603b $a2
    mD_10                                              ;; 0f:603c $a2
    mOCTAVE_MINUS_1                                    ;; 0f:603d $dc
    mG_10                                              ;; 0f:603e $a7
    mOCTAVE_PLUS_1                                     ;; 0f:603f $d8
    mD_10                                              ;; 0f:6040 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6041 $dc
    mG_10                                              ;; 0f:6042 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6043 $d8
    mD_10                                              ;; 0f:6044 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6045 $dc
    mG_10                                              ;; 0f:6046 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6047 $d8
    mD_10                                              ;; 0f:6048 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6049 $dc
    mG_10                                              ;; 0f:604a $a7
    mOCTAVE_PLUS_1                                     ;; 0f:604b $d8
    mDis_10                                            ;; 0f:604c $a3
    mOCTAVE_MINUS_1                                    ;; 0f:604d $dc
    mG_10                                              ;; 0f:604e $a7
    mOCTAVE_PLUS_1                                     ;; 0f:604f $d8
    mDis_10                                            ;; 0f:6050 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:6051 $dc
    mG_10                                              ;; 0f:6052 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6053 $d8
    mDis_10                                            ;; 0f:6054 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:6055 $dc
    mG_10                                              ;; 0f:6056 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6057 $d8
    mDis_10                                            ;; 0f:6058 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:6059 $dc
    mG_10                                              ;; 0f:605a $a7
    mOCTAVE_PLUS_1                                     ;; 0f:605b $d8
    mF_10                                              ;; 0f:605c $a5
    mC_10                                              ;; 0f:605d $a0
    mF_10                                              ;; 0f:605e $a5
    mC_10                                              ;; 0f:605f $a0
    mF_10                                              ;; 0f:6060 $a5
    mC_10                                              ;; 0f:6061 $a0
    mF_10                                              ;; 0f:6062 $a5
    mC_10                                              ;; 0f:6063 $a0
    mFis_10                                            ;; 0f:6064 $a6
    mC_10                                              ;; 0f:6065 $a0
    mFis_10                                            ;; 0f:6066 $a6
    mC_10                                              ;; 0f:6067 $a0
    mFis_10                                            ;; 0f:6068 $a6
    mC_10                                              ;; 0f:6069 $a0
    mFis_10                                            ;; 0f:606a $a6
    mC_10                                              ;; 0f:606b $a0
    mOCTAVE_MINUS_1                                    ;; 0f:606c $dc
    mDUTYCYCLE $80                                     ;; 0f:606d $e5 $80
    mG_10                                              ;; 0f:606f $a7
    mGis_10                                            ;; 0f:6070 $a8
    mG_10                                              ;; 0f:6071 $a7
    mF_10                                              ;; 0f:6072 $a5
    mG_10                                              ;; 0f:6073 $a7
    mA_10                                              ;; 0f:6074 $a9
    mB_10                                              ;; 0f:6075 $ab
    mCPlus_10                                          ;; 0f:6076 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:6077 $d8
    mD_10                                              ;; 0f:6078 $a2
    mDis_10                                            ;; 0f:6079 $a3
    mD_10                                              ;; 0f:607a $a2
    mC_10                                              ;; 0f:607b $a0
    mD_11                                              ;; 0f:607c $b2
    mDis_11                                            ;; 0f:607d $b3
    mF_11                                              ;; 0f:607e $b5
    mG_11                                              ;; 0f:607f $b7
    mA_11                                              ;; 0f:6080 $b9
    mB_11                                              ;; 0f:6081 $bb
    mOCTAVE_PLUS_1                                     ;; 0f:6082 $d8
    mVOLUME_ENVELOPE data_0f_7aac                      ;; 0f:6083 $e0 $ac $7a
    mDUTYCYCLE $00                                     ;; 0f:6086 $e5 $00
    mAis_10                                            ;; 0f:6088 $aa
    mG_10                                              ;; 0f:6089 $a7
    mSTEREOPAN $02                                     ;; 0f:608a $e6 $02
    mDis_10                                            ;; 0f:608c $a3
    mG_10                                              ;; 0f:608d $a7
    mSTEREOPAN $03                                     ;; 0f:608e $e6 $03
    mCPlus_10                                          ;; 0f:6090 $ac
    mA_10                                              ;; 0f:6091 $a9
    mSTEREOPAN $01                                     ;; 0f:6092 $e6 $01
    mF_10                                              ;; 0f:6094 $a5
    mA_10                                              ;; 0f:6095 $a9
    mSTEREOPAN $03                                     ;; 0f:6096 $e6 $03
    mAis_10                                            ;; 0f:6098 $aa
    mG_10                                              ;; 0f:6099 $a7
    mSTEREOPAN $02                                     ;; 0f:609a $e6 $02
    mDis_10                                            ;; 0f:609c $a3
    mG_10                                              ;; 0f:609d $a7
    mSTEREOPAN $03                                     ;; 0f:609e $e6 $03
    mA_10                                              ;; 0f:60a0 $a9
    mF_10                                              ;; 0f:60a1 $a5
    mSTEREOPAN $01                                     ;; 0f:60a2 $e6 $01
    mC_10                                              ;; 0f:60a4 $a0
    mF_10                                              ;; 0f:60a5 $a5
    mSTEREOPAN $03                                     ;; 0f:60a6 $e6 $03
    mAis_10                                            ;; 0f:60a8 $aa
    mG_10                                              ;; 0f:60a9 $a7
    mSTEREOPAN $02                                     ;; 0f:60aa $e6 $02
    mDis_10                                            ;; 0f:60ac $a3
    mG_10                                              ;; 0f:60ad $a7
    mSTEREOPAN $03                                     ;; 0f:60ae $e6 $03
    mCPlus_10                                          ;; 0f:60b0 $ac
    mA_10                                              ;; 0f:60b1 $a9
    mSTEREOPAN $01                                     ;; 0f:60b2 $e6 $01
    mF_10                                              ;; 0f:60b4 $a5
    mA_10                                              ;; 0f:60b5 $a9
    mSTEREOPAN $03                                     ;; 0f:60b6 $e6 $03
    mAis_10                                            ;; 0f:60b8 $aa
    mG_10                                              ;; 0f:60b9 $a7
    mDis_10                                            ;; 0f:60ba $a3
    mG_10                                              ;; 0f:60bb $a7
    mA_10                                              ;; 0f:60bc $a9
    mF_10                                              ;; 0f:60bd $a5
    mC_10                                              ;; 0f:60be $a0
    mF_10                                              ;; 0f:60bf $a5
    mOCTAVE_MINUS_1                                    ;; 0f:60c0 $dc
    mCOUNTER $02                                       ;; 0f:60c1 $e3 $02
.data_0f_60c3:
    mSTEREOPAN $03                                     ;; 0f:60c3 $e6 $03
    mDis_10                                            ;; 0f:60c5 $a3
    mF_10                                              ;; 0f:60c6 $a5
    mDis_10                                            ;; 0f:60c7 $a3
    mD_10                                              ;; 0f:60c8 $a2
    mSTEREOPAN $02                                     ;; 0f:60c9 $e6 $02
    mDis_10                                            ;; 0f:60cb $a3
    mF_10                                              ;; 0f:60cc $a5
    mDis_10                                            ;; 0f:60cd $a3
    mD_10                                              ;; 0f:60ce $a2
    mDis_10                                            ;; 0f:60cf $a3
    mF_10                                              ;; 0f:60d0 $a5
    mDis_10                                            ;; 0f:60d1 $a3
    mD_10                                              ;; 0f:60d2 $a2
    mSTEREOPAN $03                                     ;; 0f:60d3 $e6 $03
    mDis_10                                            ;; 0f:60d5 $a3
    mF_10                                              ;; 0f:60d6 $a5
    mDis_10                                            ;; 0f:60d7 $a3
    mD_10                                              ;; 0f:60d8 $a2
    mDis_10                                            ;; 0f:60d9 $a3
    mF_10                                              ;; 0f:60da $a5
    mDis_10                                            ;; 0f:60db $a3
    mD_10                                              ;; 0f:60dc $a2
    mSTEREOPAN $01                                     ;; 0f:60dd $e6 $01
    mDis_10                                            ;; 0f:60df $a3
    mF_10                                              ;; 0f:60e0 $a5
    mDis_10                                            ;; 0f:60e1 $a3
    mD_10                                              ;; 0f:60e2 $a2
    mDis_10                                            ;; 0f:60e3 $a3
    mF_10                                              ;; 0f:60e4 $a5
    mDis_10                                            ;; 0f:60e5 $a3
    mD_10                                              ;; 0f:60e6 $a2
    mSTEREOPAN $03                                     ;; 0f:60e7 $e6 $03
    mC_10                                              ;; 0f:60e9 $a0
    mD_10                                              ;; 0f:60ea $a2
    mC_10                                              ;; 0f:60eb $a0
    mOCTAVE_MINUS_1                                    ;; 0f:60ec $dc
    mAis_10                                            ;; 0f:60ed $aa
    mCPlus_10                                          ;; 0f:60ee $ac
    mOCTAVE_PLUS_1                                     ;; 0f:60ef $d8
    mD_10                                              ;; 0f:60f0 $a2
    mDis_10                                            ;; 0f:60f1 $a3
    mD_10                                              ;; 0f:60f2 $a2
    mC_10                                              ;; 0f:60f3 $a0
    mRest_10                                           ;; 0f:60f4 $af
    mC_10                                              ;; 0f:60f5 $a0
    mD_10                                              ;; 0f:60f6 $a2
    mDis_10                                            ;; 0f:60f7 $a3
    mD_10                                              ;; 0f:60f8 $a2
    mC_10                                              ;; 0f:60f9 $a0
    mRest_10                                           ;; 0f:60fa $af
    mC_10                                              ;; 0f:60fb $a0
    mD_10                                              ;; 0f:60fc $a2
    mDis_10                                            ;; 0f:60fd $a3
    mC_10                                              ;; 0f:60fe $a0
    mJUMPIF $01, .data_0f_611a                         ;; 0f:60ff $eb $01 $1a $61
    mD_10                                              ;; 0f:6103 $a2
    mDis_10                                            ;; 0f:6104 $a3
    mF_10                                              ;; 0f:6105 $a5
    mDis_10                                            ;; 0f:6106 $a3
    mD_10                                              ;; 0f:6107 $a2
    mRest_10                                           ;; 0f:6108 $af
    mD_10                                              ;; 0f:6109 $a2
    mC_10                                              ;; 0f:610a $a0
    mD_10                                              ;; 0f:610b $a2
    mDis_10                                            ;; 0f:610c $a3
    mF_10                                              ;; 0f:610d $a5
    mG_10                                              ;; 0f:610e $a7
    mSTEREOPAN $01                                     ;; 0f:610f $e6 $01
    mGis_10                                            ;; 0f:6111 $a8
    mAis_10                                            ;; 0f:6112 $aa
    mCPlus_10                                          ;; 0f:6113 $ac
    mOCTAVE_PLUS_1                                     ;; 0f:6114 $d8
    mD_10                                              ;; 0f:6115 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6116 $dc
    mREPEAT .data_0f_60c3                              ;; 0f:6117 $e2 $c3 $60
.data_0f_611a:
    mSTEREOPAN $02                                     ;; 0f:611a $e6 $02
    mD_8                                               ;; 0f:611c $82
    mC_8                                               ;; 0f:611d $80
    mOCTAVE_MINUS_1                                    ;; 0f:611e $dc
    mAis_8                                             ;; 0f:611f $8a
    mGis_8                                             ;; 0f:6120 $88
    mOCTAVE_PLUS_1                                     ;; 0f:6121 $d8
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:6122 $e0 $a8 $7a
    mSTEREOPAN $03                                     ;; 0f:6125 $e6 $03
    mDUTYCYCLE $40                                     ;; 0f:6127 $e5 $40
    mF_10                                              ;; 0f:6129 $a5
    mD_10                                              ;; 0f:612a $a2
    mG_10                                              ;; 0f:612b $a7
    mDis_10                                            ;; 0f:612c $a3
    mGis_10                                            ;; 0f:612d $a8
    mF_10                                              ;; 0f:612e $a5
    mAis_10                                            ;; 0f:612f $aa
    mD_10                                              ;; 0f:6130 $a2
    mVOLUME_ENVELOPE data_0f_7aac                      ;; 0f:6131 $e0 $ac $7a
    mDUTYCYCLE $00                                     ;; 0f:6134 $e5 $00
    mDis_10                                            ;; 0f:6136 $a3
    mF_10                                              ;; 0f:6137 $a5
    mG_10                                              ;; 0f:6138 $a7
    mF_10                                              ;; 0f:6139 $a5
    mDis_8                                             ;; 0f:613a $83
    mSTEREOPAN $02                                     ;; 0f:613b $e6 $02
    mF_8                                               ;; 0f:613d $85
    mG_8                                               ;; 0f:613e $87
    mSTEREOPAN $03                                     ;; 0f:613f $e6 $03
    mC_10                                              ;; 0f:6141 $a0
    mGis_10                                            ;; 0f:6142 $a8
    mCPlus_10                                          ;; 0f:6143 $ac
    mAis_10                                            ;; 0f:6144 $aa
    mGis_10                                            ;; 0f:6145 $a8
    mG_10                                              ;; 0f:6146 $a7
    mF_10                                              ;; 0f:6147 $a5
    mG_10                                              ;; 0f:6148 $a7
    mGis_10                                            ;; 0f:6149 $a8
    mG_10                                              ;; 0f:614a $a7
    mF_8                                               ;; 0f:614b $85
    mSTEREOPAN $01                                     ;; 0f:614c $e6 $01
    mG_8                                               ;; 0f:614e $87
    mGis_8                                             ;; 0f:614f $88
    mSTEREOPAN $03                                     ;; 0f:6150 $e6 $03
    mD_10                                              ;; 0f:6152 $a2
    mAis_10                                            ;; 0f:6153 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6154 $d8
    mD_10                                              ;; 0f:6155 $a2
    mC_10                                              ;; 0f:6156 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6157 $dc
    mAis_10                                            ;; 0f:6158 $aa
    mGis_10                                            ;; 0f:6159 $a8
    mSTEREOPAN $02                                     ;; 0f:615a $e6 $02
    mG_10                                              ;; 0f:615c $a7
    mDis_10                                            ;; 0f:615d $a3
    mG_10                                              ;; 0f:615e $a7
    mAis_10                                            ;; 0f:615f $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6160 $d8
    mDis_5                                             ;; 0f:6161 $53
    mOCTAVE_MINUS_1                                    ;; 0f:6162 $dc
    mSTEREOPAN $01                                     ;; 0f:6163 $e6 $01
    mF_10                                              ;; 0f:6165 $a5
    mD_10                                              ;; 0f:6166 $a2
    mF_10                                              ;; 0f:6167 $a5
    mAis_10                                            ;; 0f:6168 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6169 $d8
    mD_5                                               ;; 0f:616a $52
    mOCTAVE_MINUS_1                                    ;; 0f:616b $dc
    mSTEREOPAN $03                                     ;; 0f:616c $e6 $03
    mF_10                                              ;; 0f:616e $a5
    mCis_10                                            ;; 0f:616f $a1
    mF_10                                              ;; 0f:6170 $a5
    mGis_10                                            ;; 0f:6171 $a8
    mCisPlus_10                                        ;; 0f:6172 $ad
    mCPlus_10                                          ;; 0f:6173 $ac
    mAis_10                                            ;; 0f:6174 $aa
    mGis_10                                            ;; 0f:6175 $a8
    mG_7                                               ;; 0f:6176 $77
    mGis_7                                             ;; 0f:6177 $78
    mAis_8                                             ;; 0f:6178 $8a
    mSTEREOPAN $02                                     ;; 0f:6179 $e6 $02
    mF_10                                              ;; 0f:617b $a5
    mG_10                                              ;; 0f:617c $a7
    mGis_10                                            ;; 0f:617d $a8
    mG_10                                              ;; 0f:617e $a7
    mF_5                                               ;; 0f:617f $55
    mSTEREOPAN $01                                     ;; 0f:6180 $e6 $01
    mG_10                                              ;; 0f:6182 $a7
    mGis_10                                            ;; 0f:6183 $a8
    mAis_10                                            ;; 0f:6184 $aa
    mGis_10                                            ;; 0f:6185 $a8
    mG_5                                               ;; 0f:6186 $57
    mSTEREOPAN $03                                     ;; 0f:6187 $e6 $03
    mGis_7                                             ;; 0f:6189 $78
    mF_7                                               ;; 0f:618a $75
    mD_8                                               ;; 0f:618b $82
    mOCTAVE_MINUS_1                                    ;; 0f:618c $dc
    mGis_7                                             ;; 0f:618d $78
    mOCTAVE_PLUS_1                                     ;; 0f:618e $d8
    mD_7                                               ;; 0f:618f $72
    mF_8                                               ;; 0f:6190 $85
    mSTEREOPAN $02                                     ;; 0f:6191 $e6 $02
    mD_8                                               ;; 0f:6193 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6194 $dc
    mSTEREOPAN $03                                     ;; 0f:6195 $e6 $03
    mB_10                                              ;; 0f:6197 $ab
    mRest_10                                           ;; 0f:6198 $af
    mB_10                                              ;; 0f:6199 $ab
    mRest_10                                           ;; 0f:619a $af
    mOCTAVE_PLUS_1                                     ;; 0f:619b $d8
    mSTEREOPAN $01                                     ;; 0f:619c $e6 $01
    mD_8                                               ;; 0f:619e $82
    mOCTAVE_MINUS_1                                    ;; 0f:619f $dc
    mSTEREOPAN $03                                     ;; 0f:61a0 $e6 $03
    mB_10                                              ;; 0f:61a2 $ab
    mRest_10                                           ;; 0f:61a3 $af
    mB_10                                              ;; 0f:61a4 $ab
    mRest_10                                           ;; 0f:61a5 $af
    mOCTAVE_PLUS_1                                     ;; 0f:61a6 $d8
    mSTEREOPAN $02                                     ;; 0f:61a7 $e6 $02
    mD_8                                               ;; 0f:61a9 $82
    mOCTAVE_MINUS_1                                    ;; 0f:61aa $dc
    mSTEREOPAN $03                                     ;; 0f:61ab $e6 $03
    mB_10                                              ;; 0f:61ad $ab
    mRest_10                                           ;; 0f:61ae $af
    mRest_8                                            ;; 0f:61af $8f
    mOCTAVE_PLUS_1                                     ;; 0f:61b0 $d8
    mD_8                                               ;; 0f:61b1 $82
    mF_8                                               ;; 0f:61b2 $85
    mG_8                                               ;; 0f:61b3 $87
    mDUTYCYCLE $80                                     ;; 0f:61b4 $e5 $80
    mDis_10                                            ;; 0f:61b6 $a3
    mC_10                                              ;; 0f:61b7 $a0
    mD_10                                              ;; 0f:61b8 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:61b9 $dc
    mB_10                                              ;; 0f:61ba $ab
    mCPlus_10                                          ;; 0f:61bb $ac
    mGis_10                                            ;; 0f:61bc $a8
    mB_10                                              ;; 0f:61bd $ab
    mG_10                                              ;; 0f:61be $a7
    mJUMP song0f_channel1                              ;; 0f:61bf $e1 $aa $5f

song0f_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:61c2 $e4 $4f $7a
    mWAVETABLE data_0f_7b0c                            ;; 0f:61c5 $e8 $0c $7b
    mVOLUME $20                                        ;; 0f:61c8 $e0 $20
    mSTEREOPAN $03                                     ;; 0f:61ca $e6 $03
    mOCTAVE_2                                          ;; 0f:61cc $d2
    mC_2                                               ;; 0f:61cd $20
    mOCTAVE_MINUS_1                                    ;; 0f:61ce $dc
    mB_2                                               ;; 0f:61cf $2b
    mAis_2                                             ;; 0f:61d0 $2a
    mA_2                                               ;; 0f:61d1 $29
    mGis_2                                             ;; 0f:61d2 $28
    mAis_2                                             ;; 0f:61d3 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:61d4 $d8
    mDis_2                                             ;; 0f:61d5 $23
    mD_2                                               ;; 0f:61d6 $22
    mOCTAVE_MINUS_1                                    ;; 0f:61d7 $dc
    mG_5                                               ;; 0f:61d8 $57
    mB_5                                               ;; 0f:61d9 $5b
    mCPlus_2                                           ;; 0f:61da $2c
    mF_5                                               ;; 0f:61db $55
    mA_5                                               ;; 0f:61dc $59
    mAis_2                                             ;; 0f:61dd $2a
    mSTEREOPAN $02                                     ;; 0f:61de $e6 $02
    mB_7                                               ;; 0f:61e0 $7b
    mRest_10                                           ;; 0f:61e1 $af
    mSTEREOPAN $01                                     ;; 0f:61e2 $e6 $01
    mB_7                                               ;; 0f:61e4 $7b
    mRest_10                                           ;; 0f:61e5 $af
    mSTEREOPAN $02                                     ;; 0f:61e6 $e6 $02
    mCPlus_7                                           ;; 0f:61e8 $7c
    mRest_10                                           ;; 0f:61e9 $af
    mSTEREOPAN $01                                     ;; 0f:61ea $e6 $01
    mCPlus_7                                           ;; 0f:61ec $7c
    mRest_10                                           ;; 0f:61ed $af
    mSTEREOPAN $02                                     ;; 0f:61ee $e6 $02
    mGis_7                                             ;; 0f:61f0 $78
    mRest_10                                           ;; 0f:61f1 $af
    mSTEREOPAN $01                                     ;; 0f:61f2 $e6 $01
    mGis_7                                             ;; 0f:61f4 $78
    mRest_10                                           ;; 0f:61f5 $af
    mOCTAVE_PLUS_1                                     ;; 0f:61f6 $d8
    mSTEREOPAN $02                                     ;; 0f:61f7 $e6 $02
    mD_7                                               ;; 0f:61f9 $72
    mRest_10                                           ;; 0f:61fa $af
    mSTEREOPAN $01                                     ;; 0f:61fb $e6 $01
    mD_7                                               ;; 0f:61fd $72
    mRest_10                                           ;; 0f:61fe $af
    mOCTAVE_MINUS_1                                    ;; 0f:61ff $dc
    mSTEREOPAN $03                                     ;; 0f:6200 $e6 $03
    mG_1                                               ;; 0f:6202 $17
    mRest_5                                            ;; 0f:6203 $5f
    mCPlus_0                                           ;; 0f:6204 $0c
    mRest_2                                            ;; 0f:6205 $2f
    mOCTAVE_PLUS_1                                     ;; 0f:6206 $d8
    mSTEREOPAN $02                                     ;; 0f:6207 $e6 $02
    mCPlus_7                                           ;; 0f:6209 $7c
    mSTEREOPAN $01                                     ;; 0f:620a $e6 $01
    mF_7                                               ;; 0f:620c $75
    mSTEREOPAN $03                                     ;; 0f:620d $e6 $03
    mG_8                                               ;; 0f:620f $87
    mCOUNTER $02                                       ;; 0f:6210 $e3 $02
.data_0f_6212:
    mC_10                                              ;; 0f:6212 $a0
    mWait_12                                           ;; 0f:6213 $ce
    mRest_12                                           ;; 0f:6214 $cf
    mC_10                                              ;; 0f:6215 $a0
    mWait_12                                           ;; 0f:6216 $ce
    mRest_12                                           ;; 0f:6217 $cf
    mC_5                                               ;; 0f:6218 $50
    mRest_8                                            ;; 0f:6219 $8f
    mC_10                                              ;; 0f:621a $a0
    mWait_12                                           ;; 0f:621b $ce
    mRest_12                                           ;; 0f:621c $cf
    mC_5                                               ;; 0f:621d $50
    mRest_8                                            ;; 0f:621e $8f
    mC_10                                              ;; 0f:621f $a0
    mWait_12                                           ;; 0f:6220 $ce
    mRest_12                                           ;; 0f:6221 $cf
    mC_7                                               ;; 0f:6222 $70
    mRest_10                                           ;; 0f:6223 $af
    mC_5                                               ;; 0f:6224 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6225 $dc
    mAis_5                                             ;; 0f:6226 $5a
    mSTEREOPAN $02                                     ;; 0f:6227 $e6 $02
    mGis_8                                             ;; 0f:6229 $88
    mOCTAVE_PLUS_1                                     ;; 0f:622a $d8
    mSTEREOPAN $03                                     ;; 0f:622b $e6 $03
    mGis_10                                            ;; 0f:622d $a8
    mRest_10                                           ;; 0f:622e $af
    mGis_10                                            ;; 0f:622f $a8
    mRest_10                                           ;; 0f:6230 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6231 $dc
    mSTEREOPAN $01                                     ;; 0f:6232 $e6 $01
    mGis_8                                             ;; 0f:6234 $88
    mOCTAVE_PLUS_1                                     ;; 0f:6235 $d8
    mSTEREOPAN $03                                     ;; 0f:6236 $e6 $03
    mGis_10                                            ;; 0f:6238 $a8
    mRest_10                                           ;; 0f:6239 $af
    mGis_10                                            ;; 0f:623a $a8
    mRest_10                                           ;; 0f:623b $af
    mSTEREOPAN $02                                     ;; 0f:623c $e6 $02
    mOCTAVE_MINUS_1                                    ;; 0f:623e $dc
    mGis_8                                             ;; 0f:623f $88
    mOCTAVE_PLUS_1                                     ;; 0f:6240 $d8
    mSTEREOPAN $03                                     ;; 0f:6241 $e6 $03
    mGis_10                                            ;; 0f:6243 $a8
    mRest_10                                           ;; 0f:6244 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6245 $dc
    mJUMPIF $01, .data_0f_625e                         ;; 0f:6246 $eb $01 $5e $62
    mAis_8                                             ;; 0f:624a $8a
    mOCTAVE_PLUS_1                                     ;; 0f:624b $d8
    mAis_10                                            ;; 0f:624c $aa
    mRest_10                                           ;; 0f:624d $af
    mOCTAVE_MINUS_1                                    ;; 0f:624e $dc
    mAis_8                                             ;; 0f:624f $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6250 $d8
    mAis_10                                            ;; 0f:6251 $aa
    mRest_10                                           ;; 0f:6252 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6253 $dc
    mSTEREOPAN $02                                     ;; 0f:6254 $e6 $02
    mAis_5                                             ;; 0f:6256 $5a
    mOCTAVE_PLUS_1                                     ;; 0f:6257 $d8
    mSTEREOPAN $03                                     ;; 0f:6258 $e6 $03
    mD_5                                               ;; 0f:625a $52
    mREPEAT .data_0f_6212                              ;; 0f:625b $e2 $12 $62
.data_0f_625e:
    mSTEREOPAN $01                                     ;; 0f:625e $e6 $01
    mAis_2                                             ;; 0f:6260 $2a
    mRest_8                                            ;; 0f:6261 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6262 $d8
    mSTEREOPAN $03                                     ;; 0f:6263 $e6 $03
    mAis_8                                             ;; 0f:6265 $8a
    mSTEREOPAN $02                                     ;; 0f:6266 $e6 $02
    mF_8                                               ;; 0f:6268 $85
    mOCTAVE_MINUS_1                                    ;; 0f:6269 $dc
    mSTEREOPAN $01                                     ;; 0f:626a $e6 $01
    mAis_8                                             ;; 0f:626c $8a
    mSTEREOPAN $03                                     ;; 0f:626d $e6 $03
    mGis_8                                             ;; 0f:626f $88
    mOCTAVE_PLUS_1                                     ;; 0f:6270 $d8
    mGis_10                                            ;; 0f:6271 $a8
    mRest_10                                           ;; 0f:6272 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6273 $dc
    mGis_8                                             ;; 0f:6274 $88
    mOCTAVE_PLUS_1                                     ;; 0f:6275 $d8
    mGis_10                                            ;; 0f:6276 $a8
    mRest_10                                           ;; 0f:6277 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6278 $dc
    mGis_8                                             ;; 0f:6279 $88
    mOCTAVE_PLUS_1                                     ;; 0f:627a $d8
    mGis_10                                            ;; 0f:627b $a8
    mRest_10                                           ;; 0f:627c $af
    mOCTAVE_MINUS_1                                    ;; 0f:627d $dc
    mGis_8                                             ;; 0f:627e $88
    mOCTAVE_PLUS_1                                     ;; 0f:627f $d8
    mGis_10                                            ;; 0f:6280 $a8
    mRest_10                                           ;; 0f:6281 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6282 $dc
    mAis_8                                             ;; 0f:6283 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6284 $d8
    mAis_10                                            ;; 0f:6285 $aa
    mRest_10                                           ;; 0f:6286 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6287 $dc
    mAis_8                                             ;; 0f:6288 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6289 $d8
    mAis_10                                            ;; 0f:628a $aa
    mRest_10                                           ;; 0f:628b $af
    mC_8                                               ;; 0f:628c $80
    mCPlus_10                                          ;; 0f:628d $ac
    mRest_10                                           ;; 0f:628e $af
    mD_8                                               ;; 0f:628f $82
    mOCTAVE_PLUS_1                                     ;; 0f:6290 $d8
    mD_10                                              ;; 0f:6291 $a2
    mRest_10                                           ;; 0f:6292 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6293 $dc
    mDis_10                                            ;; 0f:6294 $a3
    mWait_12                                           ;; 0f:6295 $ce
    mRest_12                                           ;; 0f:6296 $cf
    mDis_10                                            ;; 0f:6297 $a3
    mWait_12                                           ;; 0f:6298 $ce
    mRest_12                                           ;; 0f:6299 $cf
    mAis_5                                             ;; 0f:629a $5a
    mD_10                                              ;; 0f:629b $a2
    mWait_12                                           ;; 0f:629c $ce
    mRest_12                                           ;; 0f:629d $cf
    mD_10                                              ;; 0f:629e $a2
    mWait_12                                           ;; 0f:629f $ce
    mRest_12                                           ;; 0f:62a0 $cf
    mGis_5                                             ;; 0f:62a1 $58
    mCis_2                                             ;; 0f:62a2 $21
    mRest_8                                            ;; 0f:62a3 $8f
    mC_10                                              ;; 0f:62a4 $a0
    mWait_12                                           ;; 0f:62a5 $ce
    mRest_12                                           ;; 0f:62a6 $cf
    mC_5                                               ;; 0f:62a7 $50
    mOCTAVE_MINUS_1                                    ;; 0f:62a8 $dc
    mF_10                                              ;; 0f:62a9 $a5
    mWait_12                                           ;; 0f:62aa $ce
    mRest_12                                           ;; 0f:62ab $cf
    mF_10                                              ;; 0f:62ac $a5
    mWait_12                                           ;; 0f:62ad $ce
    mRest_12                                           ;; 0f:62ae $cf
    mOCTAVE_PLUS_1                                     ;; 0f:62af $d8
    mF_5                                               ;; 0f:62b0 $55
    mOCTAVE_MINUS_1                                    ;; 0f:62b1 $dc
    mDis_10                                            ;; 0f:62b2 $a3
    mWait_12                                           ;; 0f:62b3 $ce
    mRest_12                                           ;; 0f:62b4 $cf
    mDis_10                                            ;; 0f:62b5 $a3
    mWait_12                                           ;; 0f:62b6 $ce
    mRest_12                                           ;; 0f:62b7 $cf
    mOCTAVE_PLUS_1                                     ;; 0f:62b8 $d8
    mDis_5                                             ;; 0f:62b9 $53
    mD_4                                               ;; 0f:62ba $42
    mOCTAVE_MINUS_1                                    ;; 0f:62bb $dc
    mGis_4                                             ;; 0f:62bc $48
    mOCTAVE_PLUS_1                                     ;; 0f:62bd $d8
    mD_5                                               ;; 0f:62be $52
    mOCTAVE_MINUS_1                                    ;; 0f:62bf $dc
    mSTEREOPAN $02                                     ;; 0f:62c0 $e6 $02
    mG_8                                               ;; 0f:62c2 $87
    mOCTAVE_PLUS_1                                     ;; 0f:62c3 $d8
    mSTEREOPAN $03                                     ;; 0f:62c4 $e6 $03
    mG_10                                              ;; 0f:62c6 $a7
    mRest_10                                           ;; 0f:62c7 $af
    mG_10                                              ;; 0f:62c8 $a7
    mRest_10                                           ;; 0f:62c9 $af
    mOCTAVE_MINUS_1                                    ;; 0f:62ca $dc
    mSTEREOPAN $01                                     ;; 0f:62cb $e6 $01
    mG_8                                               ;; 0f:62cd $87
    mOCTAVE_PLUS_1                                     ;; 0f:62ce $d8
    mSTEREOPAN $03                                     ;; 0f:62cf $e6 $03
    mG_10                                              ;; 0f:62d1 $a7
    mRest_10                                           ;; 0f:62d2 $af
    mG_10                                              ;; 0f:62d3 $a7
    mRest_10                                           ;; 0f:62d4 $af
    mSTEREOPAN $02                                     ;; 0f:62d5 $e6 $02
    mOCTAVE_MINUS_1                                    ;; 0f:62d7 $dc
    mG_8                                               ;; 0f:62d8 $87
    mOCTAVE_PLUS_1                                     ;; 0f:62d9 $d8
    mSTEREOPAN $03                                     ;; 0f:62da $e6 $03
    mG_10                                              ;; 0f:62dc $a7
    mRest_10                                           ;; 0f:62dd $af
    mOCTAVE_MINUS_1                                    ;; 0f:62de $dc
    mG_5                                               ;; 0f:62df $57
    mOCTAVE_PLUS_1                                     ;; 0f:62e0 $d8
    mD_5                                               ;; 0f:62e1 $52
    mG_8                                               ;; 0f:62e2 $87
    mF_8                                               ;; 0f:62e3 $85
    mDis_8                                             ;; 0f:62e4 $83
    mD_8                                               ;; 0f:62e5 $82
    mJUMP song0f_channel3                              ;; 0f:62e6 $e1 $c2 $61

song11_channel2:
    mTEMPO $6c                                         ;; 0f:62e9 $e7 $6c
    mVIBRATO frequencyDeltaData                        ;; 0f:62eb $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:62ee $e0 $c0 $7a
    mDUTYCYCLE $00                                     ;; 0f:62f1 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:62f3 $e6 $03
    mOCTAVE_2                                          ;; 0f:62f5 $d2
    mB_10                                              ;; 0f:62f6 $ab
    mRest_7                                            ;; 0f:62f7 $7f
    mOCTAVE_PLUS_1                                     ;; 0f:62f8 $d8
    mFis_10                                            ;; 0f:62f9 $a6
    mRest_10                                           ;; 0f:62fa $af
    mDis_10                                            ;; 0f:62fb $a3
    mRest_10                                           ;; 0f:62fc $af
    mOCTAVE_MINUS_1                                    ;; 0f:62fd $dc
    mB_10                                              ;; 0f:62fe $ab
    mRest_7                                            ;; 0f:62ff $7f
    mOCTAVE_PLUS_1                                     ;; 0f:6300 $d8
    mFis_10                                            ;; 0f:6301 $a6
    mRest_10                                           ;; 0f:6302 $af
    mDis_10                                            ;; 0f:6303 $a3
    mRest_10                                           ;; 0f:6304 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6305 $dc
    mB_10                                              ;; 0f:6306 $ab
    mRest_7                                            ;; 0f:6307 $7f
    mOCTAVE_PLUS_1                                     ;; 0f:6308 $d8
    mDis_10                                            ;; 0f:6309 $a3
    mRest_7                                            ;; 0f:630a $7f
    mOCTAVE_MINUS_1                                    ;; 0f:630b $dc
    mFis_4                                             ;; 0f:630c $46
    mRest_8                                            ;; 0f:630d $8f
    mOCTAVE_PLUS_1                                     ;; 0f:630e $d8
    mFis_10                                            ;; 0f:630f $a6
    mRest_10                                           ;; 0f:6310 $af
    mGis_10                                            ;; 0f:6311 $a8
    mRest_10                                           ;; 0f:6312 $af
    mFis_10                                            ;; 0f:6313 $a6
    mRest_10                                           ;; 0f:6314 $af
    mDis_10                                            ;; 0f:6315 $a3
    mRest_10                                           ;; 0f:6316 $af
    mFis_10                                            ;; 0f:6317 $a6
    mRest_10                                           ;; 0f:6318 $af
    mGis_10                                            ;; 0f:6319 $a8
    mRest_10                                           ;; 0f:631a $af
    mFis_10                                            ;; 0f:631b $a6
    mRest_10                                           ;; 0f:631c $af
    mDis_10                                            ;; 0f:631d $a3
    mRest_10                                           ;; 0f:631e $af
    mOCTAVE_MINUS_1                                    ;; 0f:631f $dc
    mB_10                                              ;; 0f:6320 $ab
    mRest_10                                           ;; 0f:6321 $af
    mB_10                                              ;; 0f:6322 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6323 $d8
    mDis_10                                            ;; 0f:6324 $a3
    mOCTAVE_MINUS_1                                    ;; 0f:6325 $dc
    mB_10                                              ;; 0f:6326 $ab
    mRest_10                                           ;; 0f:6327 $af
    mOCTAVE_PLUS_1                                     ;; 0f:6328 $d8
    mDis_10                                            ;; 0f:6329 $a3
    mRest_10                                           ;; 0f:632a $af
    mFis_4                                             ;; 0f:632b $46
    mRest_8                                            ;; 0f:632c $8f
    mEND                                               ;; 0f:632d $ff

song11_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:632e $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac6                      ;; 0f:6331 $e0 $c6 $7a
    mDUTYCYCLE $00                                     ;; 0f:6334 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:6336 $e6 $03
    mOCTAVE_2                                          ;; 0f:6338 $d2
    mAis_10                                            ;; 0f:6339 $aa
    mRest_7                                            ;; 0f:633a $7f
    mOCTAVE_PLUS_1                                     ;; 0f:633b $d8
    mF_10                                              ;; 0f:633c $a5
    mRest_10                                           ;; 0f:633d $af
    mD_10                                              ;; 0f:633e $a2
    mRest_10                                           ;; 0f:633f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6340 $dc
    mAis_10                                            ;; 0f:6341 $aa
    mRest_7                                            ;; 0f:6342 $7f
    mOCTAVE_PLUS_1                                     ;; 0f:6343 $d8
    mF_10                                              ;; 0f:6344 $a5
    mRest_10                                           ;; 0f:6345 $af
    mD_10                                              ;; 0f:6346 $a2
    mRest_10                                           ;; 0f:6347 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6348 $dc
    mAis_10                                            ;; 0f:6349 $aa
    mRest_7                                            ;; 0f:634a $7f
    mOCTAVE_PLUS_1                                     ;; 0f:634b $d8
    mD_10                                              ;; 0f:634c $a2
    mRest_7                                            ;; 0f:634d $7f
    mOCTAVE_MINUS_1                                    ;; 0f:634e $dc
    mF_4                                               ;; 0f:634f $45
    mRest_8                                            ;; 0f:6350 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6351 $d8
    mF_10                                              ;; 0f:6352 $a5
    mRest_10                                           ;; 0f:6353 $af
    mG_10                                              ;; 0f:6354 $a7
    mRest_10                                           ;; 0f:6355 $af
    mF_10                                              ;; 0f:6356 $a5
    mRest_10                                           ;; 0f:6357 $af
    mD_10                                              ;; 0f:6358 $a2
    mRest_10                                           ;; 0f:6359 $af
    mF_10                                              ;; 0f:635a $a5
    mRest_10                                           ;; 0f:635b $af
    mG_10                                              ;; 0f:635c $a7
    mRest_10                                           ;; 0f:635d $af
    mF_10                                              ;; 0f:635e $a5
    mRest_10                                           ;; 0f:635f $af
    mD_10                                              ;; 0f:6360 $a2
    mRest_10                                           ;; 0f:6361 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6362 $dc
    mAis_10                                            ;; 0f:6363 $aa
    mRest_10                                           ;; 0f:6364 $af
    mAis_10                                            ;; 0f:6365 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6366 $d8
    mD_10                                              ;; 0f:6367 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6368 $dc
    mAis_10                                            ;; 0f:6369 $aa
    mRest_10                                           ;; 0f:636a $af
    mOCTAVE_PLUS_1                                     ;; 0f:636b $d8
    mD_10                                              ;; 0f:636c $a2
    mRest_10                                           ;; 0f:636d $af
    mF_4                                               ;; 0f:636e $45
    mRest_8                                            ;; 0f:636f $8f
    mEND                                               ;; 0f:6370 $ff

song11_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:6371 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:6374 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:6377 $e0 $40
    mOCTAVE_1                                          ;; 0f:6379 $d1
    mB_10                                              ;; 0f:637a $ab
    mRest_7                                            ;; 0f:637b $7f
    mRest_2                                            ;; 0f:637c $2f
    mFis_5                                             ;; 0f:637d $56
    mB_10                                              ;; 0f:637e $ab
    mRest_7                                            ;; 0f:637f $7f
    mRest_4                                            ;; 0f:6380 $4f
    mFis_10                                            ;; 0f:6381 $a6
    mRest_10                                           ;; 0f:6382 $af
    mGis_10                                            ;; 0f:6383 $a8
    mRest_10                                           ;; 0f:6384 $af
    mAis_10                                            ;; 0f:6385 $aa
    mRest_10                                           ;; 0f:6386 $af
    mOCTAVE_1                                          ;; 0f:6387 $d1
    mB_10                                              ;; 0f:6388 $ab
    mRest_7                                            ;; 0f:6389 $7f
    mRest_2                                            ;; 0f:638a $2f
    mFis_5                                             ;; 0f:638b $56
    mB_10                                              ;; 0f:638c $ab
    mRest_7                                            ;; 0f:638d $7f
    mRest_2                                            ;; 0f:638e $2f
    mOCTAVE_PLUS_1                                     ;; 0f:638f $d8
    mFis_10                                            ;; 0f:6390 $a6
    mE_10                                              ;; 0f:6391 $a4
    mDis_10                                            ;; 0f:6392 $a3
    mCis_10                                            ;; 0f:6393 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6394 $dc
    mB_10                                              ;; 0f:6395 $ab
    mEND                                               ;; 0f:6396 $ff

song10_channel2:
    mTEMPO $6b                                         ;; 0f:6397 $e7 $6b
    mVIBRATO frequencyDeltaData                        ;; 0f:6399 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:639c $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:639f $e5 $80
    mSTEREOPAN $03                                     ;; 0f:63a1 $e6 $03
    mOCTAVE_3                                          ;; 0f:63a3 $d3
    mA_10                                              ;; 0f:63a4 $a9
    mG_10                                              ;; 0f:63a5 $a7
    mFis_10                                            ;; 0f:63a6 $a6
    mA_10                                              ;; 0f:63a7 $a9
    mG_10                                              ;; 0f:63a8 $a7
    mFis_10                                            ;; 0f:63a9 $a6
    mE_10                                              ;; 0f:63aa $a4
    mD_10                                              ;; 0f:63ab $a2
    mCis_10                                            ;; 0f:63ac $a1
    mRest_10                                           ;; 0f:63ad $af
    mE_10                                              ;; 0f:63ae $a4
    mRest_10                                           ;; 0f:63af $af
    mD_5                                               ;; 0f:63b0 $52
    mEND                                               ;; 0f:63b1 $ff

song10_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:63b2 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:63b5 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:63b8 $e5 $80
    mSTEREOPAN $03                                     ;; 0f:63ba $e6 $03
    mRest_0                                            ;; 0f:63bc $0f
    mEND                                               ;; 0f:63bd $ff

song10_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:63be $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:63c1 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:63c4 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:63c6 $e6 $03
    mRest_0                                            ;; 0f:63c8 $0f
    mEND                                               ;; 0f:63c9 $ff
    db   $d0, $63, $a3, $64, $67, $66                  ;; 0f:63ca ??????

song12_channel2:
    mTEMPO $82                                         ;; 0f:63d0 $e7 $82
    mVIBRATO frequencyDeltaData                        ;; 0f:63d2 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:63d5 $e0 $c2 $7a
    mDUTYCYCLE $40                                     ;; 0f:63d8 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:63da $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:63dc $dc
    mRest_0                                            ;; 0f:63dd $0f
    mRest_1                                            ;; 0f:63de $1f
    mRest_8                                            ;; 0f:63df $8f
    mOCTAVE_2                                          ;; 0f:63e0 $d2
    mB_10                                              ;; 0f:63e1 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:63e2 $d8
    mCis_10                                            ;; 0f:63e3 $a1
.data_0f_63e4:
    mCOUNTER $02                                       ;; 0f:63e4 $e3 $02
.data_0f_63e6:
    mD_2                                               ;; 0f:63e6 $22
    mWait_8                                            ;; 0f:63e7 $8e
    mD_8                                               ;; 0f:63e8 $82
    mE_8                                               ;; 0f:63e9 $84
    mFis_8                                             ;; 0f:63ea $86
    mFis_7                                             ;; 0f:63eb $76
    mE_7                                               ;; 0f:63ec $74
    mD_8                                               ;; 0f:63ed $82
    mCis_4                                             ;; 0f:63ee $41
    mOCTAVE_MINUS_1                                    ;; 0f:63ef $dc
    mB_10                                              ;; 0f:63f0 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:63f1 $d8
    mCis_10                                            ;; 0f:63f2 $a1
    mD_2                                               ;; 0f:63f3 $22
    mWait_8                                            ;; 0f:63f4 $8e
    mD_8                                               ;; 0f:63f5 $82
    mE_8                                               ;; 0f:63f6 $84
    mD_8                                               ;; 0f:63f7 $82
    mJUMPIF $01, .data_0f_6428                         ;; 0f:63f8 $eb $01 $28 $64
    mCis_7                                             ;; 0f:63fc $71
    mOCTAVE_MINUS_1                                    ;; 0f:63fd $dc
    mB_7                                               ;; 0f:63fe $7b
    mA_8                                               ;; 0f:63ff $89
    mA_4                                               ;; 0f:6400 $49
    mB_10                                              ;; 0f:6401 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6402 $d8
    mCis_10                                            ;; 0f:6403 $a1
    mD_7                                               ;; 0f:6404 $72
    mCis_7                                             ;; 0f:6405 $71
    mOCTAVE_MINUS_1                                    ;; 0f:6406 $dc
    mB_8                                               ;; 0f:6407 $8b
    mB_4                                               ;; 0f:6408 $4b
    mOCTAVE_PLUS_1                                     ;; 0f:6409 $d8
    mCis_10                                            ;; 0f:640a $a1
    mD_10                                              ;; 0f:640b $a2
    mE_7                                               ;; 0f:640c $74
    mD_7                                               ;; 0f:640d $72
    mCis_8                                             ;; 0f:640e $81
    mCis_7                                             ;; 0f:640f $71
    mD_7                                               ;; 0f:6410 $72
    mE_8                                               ;; 0f:6411 $84
    mFis_4                                             ;; 0f:6412 $46
    mE_10                                              ;; 0f:6413 $a4
    mFis_10                                            ;; 0f:6414 $a6
    mG_4                                               ;; 0f:6415 $47
    mFis_10                                            ;; 0f:6416 $a6
    mG_10                                              ;; 0f:6417 $a7
    mA_4                                               ;; 0f:6418 $49
    mG_10                                              ;; 0f:6419 $a7
    mA_10                                              ;; 0f:641a $a9
    mAis_10                                            ;; 0f:641b $aa
    mFis_10                                            ;; 0f:641c $a6
    mCis_10                                            ;; 0f:641d $a1
    mFis_10                                            ;; 0f:641e $a6
    mCis_10                                            ;; 0f:641f $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6420 $dc
    mAis_10                                            ;; 0f:6421 $aa
    mB_10                                              ;; 0f:6422 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6423 $d8
    mCis_10                                            ;; 0f:6424 $a1
    mREPEAT .data_0f_63e6                              ;; 0f:6425 $e2 $e6 $63
.data_0f_6428:
    mCis_7                                             ;; 0f:6428 $71
    mOCTAVE_MINUS_1                                    ;; 0f:6429 $dc
    mB_7                                               ;; 0f:642a $7b
    mA_8                                               ;; 0f:642b $89
    mOCTAVE_PLUS_1                                     ;; 0f:642c $d8
    mA_4                                               ;; 0f:642d $49
    mFis_10                                            ;; 0f:642e $a6
    mG_10                                              ;; 0f:642f $a7
    mA_7                                               ;; 0f:6430 $79
    mG_7                                               ;; 0f:6431 $77
    mFis_8                                             ;; 0f:6432 $86
    mG_2                                               ;; 0f:6433 $27
    mFis_7                                             ;; 0f:6434 $76
    mCis_7                                             ;; 0f:6435 $71
    mE_8                                               ;; 0f:6436 $84
    mD_5                                               ;; 0f:6437 $52
    mCis_5                                             ;; 0f:6438 $51
    mOCTAVE_MINUS_1                                    ;; 0f:6439 $dc
    mB_4                                               ;; 0f:643a $4b
    mOCTAVE_PLUS_1                                     ;; 0f:643b $d8
    mCis_10                                            ;; 0f:643c $a1
    mD_10                                              ;; 0f:643d $a2
    mCis_5                                             ;; 0f:643e $51
    mOCTAVE_MINUS_1                                    ;; 0f:643f $dc
    mA_5                                               ;; 0f:6440 $59
    mB_2                                               ;; 0f:6441 $2b
    mWait_10                                           ;; 0f:6442 $ae
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:6443 $e0 $c4 $7a
    mDUTYCYCLE $80                                     ;; 0f:6446 $e5 $80
    mFis_10                                            ;; 0f:6448 $a6
    mG_10                                              ;; 0f:6449 $a7
    mA_10                                              ;; 0f:644a $a9
    mB_10                                              ;; 0f:644b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:644c $d8
    mCis_10                                            ;; 0f:644d $a1
    mD_10                                              ;; 0f:644e $a2
    mE_10                                              ;; 0f:644f $a4
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6450 $e0 $82 $7a
    mFis_4                                             ;; 0f:6453 $46
    mE_10                                              ;; 0f:6454 $a4
    mD_10                                              ;; 0f:6455 $a2
    mCis_7                                             ;; 0f:6456 $71
    mOCTAVE_MINUS_1                                    ;; 0f:6457 $dc
    mB_7                                               ;; 0f:6458 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:6459 $d8
    mCis_8                                             ;; 0f:645a $81
    mWait_2                                            ;; 0f:645b $2e
    mRest_10                                           ;; 0f:645c $af
    mOCTAVE_MINUS_1                                    ;; 0f:645d $dc
    mB_10                                              ;; 0f:645e $ab
    mOCTAVE_PLUS_1                                     ;; 0f:645f $d8
    mCis_10                                            ;; 0f:6460 $a1
    mD_10                                              ;; 0f:6461 $a2
    mE_10                                              ;; 0f:6462 $a4
    mD_10                                              ;; 0f:6463 $a2
    mCis_10                                            ;; 0f:6464 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6465 $dc
    mB_10                                              ;; 0f:6466 $ab
    mA_4                                               ;; 0f:6467 $49
    mOCTAVE_PLUS_1                                     ;; 0f:6468 $d8
    mA_5                                               ;; 0f:6469 $59
    mE_5                                               ;; 0f:646a $54
    mG_8                                               ;; 0f:646b $87
    mFis_1                                             ;; 0f:646c $16
    mRest_8                                            ;; 0f:646d $8f
    mDUTYCYCLE $40                                     ;; 0f:646e $e5 $40
    mFis_10                                            ;; 0f:6470 $a6
    mG_10                                              ;; 0f:6471 $a7
    mA_8                                               ;; 0f:6472 $89
    mG_8                                               ;; 0f:6473 $87
    mFis_8                                             ;; 0f:6474 $86
    mG_8                                               ;; 0f:6475 $87
    mA_7                                               ;; 0f:6476 $79
    mB_7                                               ;; 0f:6477 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:6478 $d8
    mC_8                                               ;; 0f:6479 $80
    mOCTAVE_MINUS_1                                    ;; 0f:647a $dc
    mB_5                                               ;; 0f:647b $5b
    mFis_8                                             ;; 0f:647c $86
    mB_5                                               ;; 0f:647d $5b
    mA_8                                               ;; 0f:647e $89
    mG_8                                               ;; 0f:647f $87
    mFis_8                                             ;; 0f:6480 $86
    mG_1                                               ;; 0f:6481 $17
    mRest_8                                            ;; 0f:6482 $8f
    mE_10                                              ;; 0f:6483 $a4
    mFis_10                                            ;; 0f:6484 $a6
    mG_5                                               ;; 0f:6485 $57
    mFis_5                                             ;; 0f:6486 $56
    mE_5                                               ;; 0f:6487 $54
    mD_5                                               ;; 0f:6488 $52
    mCis_7                                             ;; 0f:6489 $71
    mOCTAVE_MINUS_1                                    ;; 0f:648a $dc
    mFis_7                                             ;; 0f:648b $76
    mOCTAVE_PLUS_1                                     ;; 0f:648c $d8
    mCis_8                                             ;; 0f:648d $81
    mD_7                                               ;; 0f:648e $72
    mOCTAVE_MINUS_1                                    ;; 0f:648f $dc
    mG_7                                               ;; 0f:6490 $77
    mOCTAVE_PLUS_1                                     ;; 0f:6491 $d8
    mD_8                                               ;; 0f:6492 $82
    mE_7                                               ;; 0f:6493 $74
    mOCTAVE_MINUS_1                                    ;; 0f:6494 $dc
    mA_7                                               ;; 0f:6495 $79
    mOCTAVE_PLUS_1                                     ;; 0f:6496 $d8
    mE_8                                               ;; 0f:6497 $84
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:6498 $e0 $be $7a
    mFis_4                                             ;; 0f:649b $46
    mOCTAVE_MINUS_1                                    ;; 0f:649c $dc
    mB_10                                              ;; 0f:649d $ab
    mOCTAVE_PLUS_1                                     ;; 0f:649e $d8
    mCis_10                                            ;; 0f:649f $a1
    mJUMP .data_0f_63e4                                ;; 0f:64a0 $e1 $e4 $63

song12_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:64a3 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:64a6 $e0 $a8 $7a
    mDUTYCYCLE $40                                     ;; 0f:64a9 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:64ab $e6 $03
    mOCTAVE_2                                          ;; 0f:64ad $d2
    mD_10                                              ;; 0f:64ae $a2
    mOCTAVE_MINUS_1                                    ;; 0f:64af $dc
    mB_10                                              ;; 0f:64b0 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:64b1 $d8
    mE_10                                              ;; 0f:64b2 $a4
    mCis_10                                            ;; 0f:64b3 $a1
    mFis_10                                            ;; 0f:64b4 $a6
    mD_10                                              ;; 0f:64b5 $a2
    mG_10                                              ;; 0f:64b6 $a7
    mE_10                                              ;; 0f:64b7 $a4
    mFis_10                                            ;; 0f:64b8 $a6
    mD_10                                              ;; 0f:64b9 $a2
    mE_10                                              ;; 0f:64ba $a4
    mCis_10                                            ;; 0f:64bb $a1
    mD_10                                              ;; 0f:64bc $a2
    mOCTAVE_MINUS_1                                    ;; 0f:64bd $dc
    mB_10                                              ;; 0f:64be $ab
    mOCTAVE_PLUS_1                                     ;; 0f:64bf $d8
    mCis_10                                            ;; 0f:64c0 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:64c1 $dc
    mA_10                                              ;; 0f:64c2 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:64c3 $d8
    mD_10                                              ;; 0f:64c4 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:64c5 $dc
    mB_10                                              ;; 0f:64c6 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:64c7 $d8
    mE_10                                              ;; 0f:64c8 $a4
    mCis_10                                            ;; 0f:64c9 $a1
    mFis_10                                            ;; 0f:64ca $a6
    mD_10                                              ;; 0f:64cb $a2
    mG_10                                              ;; 0f:64cc $a7
    mE_10                                              ;; 0f:64cd $a4
    mFis_10                                            ;; 0f:64ce $a6
    mD_10                                              ;; 0f:64cf $a2
    mE_10                                              ;; 0f:64d0 $a4
    mCis_10                                            ;; 0f:64d1 $a1
    mD_10                                              ;; 0f:64d2 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:64d3 $dc
    mB_10                                              ;; 0f:64d4 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:64d5 $d8
    mSTEREOPAN $02                                     ;; 0f:64d6 $e6 $02
    mDUTYCYCLE $00                                     ;; 0f:64d8 $e5 $00
    mCis_10                                            ;; 0f:64da $a1
    mOCTAVE_MINUS_1                                    ;; 0f:64db $dc
    mA_10                                              ;; 0f:64dc $a9
.data_0f_64dd:
    mCOUNTER $02                                       ;; 0f:64dd $e3 $02
.data_0f_64df:
    mVOLUME_ENVELOPE data_0f_7aac                      ;; 0f:64df $e0 $ac $7a
    mDUTYCYCLE $00                                     ;; 0f:64e2 $e5 $00
    mSTEREOPAN $02                                     ;; 0f:64e4 $e6 $02
    mOCTAVE_2                                          ;; 0f:64e6 $d2
    mFis_8                                             ;; 0f:64e7 $86
    mG_8                                               ;; 0f:64e8 $87
    mFis_8                                             ;; 0f:64e9 $86
    mE_10                                              ;; 0f:64ea $a4
    mFis_7                                             ;; 0f:64eb $76
    mSTEREOPAN $03                                     ;; 0f:64ec $e6 $03
    mFis_8                                             ;; 0f:64ee $86
    mG_8                                               ;; 0f:64ef $87
    mA_8                                               ;; 0f:64f0 $89
    mA_7                                               ;; 0f:64f1 $79
    mG_7                                               ;; 0f:64f2 $77
    mFis_8                                             ;; 0f:64f3 $86
    mE_8                                               ;; 0f:64f4 $84
    mCis_8                                             ;; 0f:64f5 $81
    mE_8                                               ;; 0f:64f6 $84
    mSTEREOPAN $01                                     ;; 0f:64f7 $e6 $01
    mG_10                                              ;; 0f:64f9 $a7
    mA_10                                              ;; 0f:64fa $a9
    mB_8                                               ;; 0f:64fb $8b
    mA_8                                               ;; 0f:64fc $89
    mG_8                                               ;; 0f:64fd $87
    mA_10                                              ;; 0f:64fe $a9
    mB_5                                               ;; 0f:64ff $5b
    mWait_10                                           ;; 0f:6500 $ae
    mOCTAVE_PLUS_1                                     ;; 0f:6501 $d8
    mSTEREOPAN $03                                     ;; 0f:6502 $e6 $03
    mCis_8                                             ;; 0f:6504 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6505 $dc
    mB_8                                               ;; 0f:6506 $8b
    mJUMPIF $01, .data_0f_655d                         ;; 0f:6507 $eb $01 $5d $65
    mA_7                                               ;; 0f:650b $79
    mFis_7                                             ;; 0f:650c $76
    mE_8                                               ;; 0f:650d $84
    mE_8                                               ;; 0f:650e $84
    mCis_8                                             ;; 0f:650f $81
    mE_8                                               ;; 0f:6510 $84
    mFis_10                                            ;; 0f:6511 $a6
    mA_10                                              ;; 0f:6512 $a9
    mSTEREOPAN $02                                     ;; 0f:6513 $e6 $02
    mG_2                                               ;; 0f:6515 $27
    mWait_7                                            ;; 0f:6516 $7e
    mFis_7                                             ;; 0f:6517 $76
    mE_10                                              ;; 0f:6518 $a4
    mFis_10                                            ;; 0f:6519 $a6
    mSTEREOPAN $03                                     ;; 0f:651a $e6 $03
    mG_7                                               ;; 0f:651c $77
    mFis_7                                             ;; 0f:651d $76
    mE_8                                               ;; 0f:651e $84
    mE_7                                               ;; 0f:651f $74
    mFis_7                                             ;; 0f:6520 $76
    mG_8                                               ;; 0f:6521 $87
    mSTEREOPAN $01                                     ;; 0f:6522 $e6 $01
    mFis_10                                            ;; 0f:6524 $a6
    mCis_10                                            ;; 0f:6525 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6526 $dc
    mAis_10                                            ;; 0f:6527 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6528 $d8
    mFis_10                                            ;; 0f:6529 $a6
    mSTEREOPAN $03                                     ;; 0f:652a $e6 $03
    mCis_10                                            ;; 0f:652c $a1
    mOCTAVE_MINUS_1                                    ;; 0f:652d $dc
    mAis_10                                            ;; 0f:652e $aa
    mOCTAVE_PLUS_1                                     ;; 0f:652f $d8
    mFis_10                                            ;; 0f:6530 $a6
    mOCTAVE_MINUS_1                                    ;; 0f:6531 $dc
    mAis_10                                            ;; 0f:6532 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:6533 $d8
    mSTEREOPAN $02                                     ;; 0f:6534 $e6 $02
    mG_10                                              ;; 0f:6536 $a7
    mD_10                                              ;; 0f:6537 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6538 $dc
    mB_10                                              ;; 0f:6539 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:653a $d8
    mG_10                                              ;; 0f:653b $a7
    mSTEREOPAN $03                                     ;; 0f:653c $e6 $03
    mD_10                                              ;; 0f:653e $a2
    mOCTAVE_MINUS_1                                    ;; 0f:653f $dc
    mB_10                                              ;; 0f:6540 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6541 $d8
    mG_10                                              ;; 0f:6542 $a7
    mOCTAVE_MINUS_1                                    ;; 0f:6543 $dc
    mB_10                                              ;; 0f:6544 $ab
    mSTEREOPAN $01                                     ;; 0f:6545 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:6547 $d8
    mA_10                                              ;; 0f:6548 $a9
    mE_10                                              ;; 0f:6549 $a4
    mCis_10                                            ;; 0f:654a $a1
    mA_10                                              ;; 0f:654b $a9
    mSTEREOPAN $03                                     ;; 0f:654c $e6 $03
    mE_10                                              ;; 0f:654e $a4
    mCis_10                                            ;; 0f:654f $a1
    mA_10                                              ;; 0f:6550 $a9
    mCis_10                                            ;; 0f:6551 $a1
    mAis_10                                            ;; 0f:6552 $aa
    mCis_10                                            ;; 0f:6553 $a1
    mFis_10                                            ;; 0f:6554 $a6
    mCis_10                                            ;; 0f:6555 $a1
    mE_10                                              ;; 0f:6556 $a4
    mCis_10                                            ;; 0f:6557 $a1
    mFis_10                                            ;; 0f:6558 $a6
    mCis_10                                            ;; 0f:6559 $a1
    mREPEAT .data_0f_64df                              ;; 0f:655a $e2 $df $64
.data_0f_655d:
    mA_7                                               ;; 0f:655d $79
    mFis_7                                             ;; 0f:655e $76
    mE_8                                               ;; 0f:655f $84
    mOCTAVE_PLUS_1                                     ;; 0f:6560 $d8
    mCis_7                                             ;; 0f:6561 $71
    mOCTAVE_MINUS_1                                    ;; 0f:6562 $dc
    mB_7                                               ;; 0f:6563 $7b
    mA_8                                               ;; 0f:6564 $89
    mSTEREOPAN $01                                     ;; 0f:6565 $e6 $01
    mB_4                                               ;; 0f:6567 $4b
    mA_10                                              ;; 0f:6568 $a9
    mB_10                                              ;; 0f:6569 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:656a $d8
    mSTEREOPAN $03                                     ;; 0f:656b $e6 $03
    mCis_5                                             ;; 0f:656d $51
    mOCTAVE_MINUS_1                                    ;; 0f:656e $dc
    mB_5                                               ;; 0f:656f $5b
    mSTEREOPAN $02                                     ;; 0f:6570 $e6 $02
    mAis_4                                             ;; 0f:6572 $4a
    mGis_10                                            ;; 0f:6573 $a8
    mAis_10                                            ;; 0f:6574 $aa
    mSTEREOPAN $03                                     ;; 0f:6575 $e6 $03
    mFis_5                                             ;; 0f:6577 $56
    mE_5                                               ;; 0f:6578 $54
    mG_7                                               ;; 0f:6579 $77
    mD_7                                               ;; 0f:657a $72
    mE_10                                              ;; 0f:657b $a4
    mFis_10                                            ;; 0f:657c $a6
    mE_5                                               ;; 0f:657d $54
    mCis_5                                             ;; 0f:657e $51
    mD_2                                               ;; 0f:657f $22
    mWait_10                                           ;; 0f:6580 $ae
    mOCTAVE_MINUS_1                                    ;; 0f:6581 $dc
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:6582 $e0 $c4 $7a
    mDUTYCYCLE $80                                     ;; 0f:6585 $e5 $80
    mA_10                                              ;; 0f:6587 $a9
    mB_10                                              ;; 0f:6588 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6589 $d8
    mCis_10                                            ;; 0f:658a $a1
    mD_10                                              ;; 0f:658b $a2
    mE_10                                              ;; 0f:658c $a4
    mFis_10                                            ;; 0f:658d $a6
    mG_10                                              ;; 0f:658e $a7
    mCOUNTER $02                                       ;; 0f:658f $e3 $02
.data_0f_6591:
    mDUTYCYCLE $00                                     ;; 0f:6591 $e5 $00
    mSTEREOPAN $01                                     ;; 0f:6593 $e6 $01
    mD_8                                               ;; 0f:6595 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6596 $dc
    mSTEREOPAN $03                                     ;; 0f:6597 $e6 $03
    mB_10                                              ;; 0f:6599 $ab
    mRest_10                                           ;; 0f:659a $af
    mB_10                                              ;; 0f:659b $ab
    mRest_10                                           ;; 0f:659c $af
    mOCTAVE_PLUS_1                                     ;; 0f:659d $d8
    mSTEREOPAN $01                                     ;; 0f:659e $e6 $01
    mD_8                                               ;; 0f:65a0 $82
    mOCTAVE_MINUS_1                                    ;; 0f:65a1 $dc
    mSTEREOPAN $03                                     ;; 0f:65a2 $e6 $03
    mB_10                                              ;; 0f:65a4 $ab
    mRest_10                                           ;; 0f:65a5 $af
    mB_10                                              ;; 0f:65a6 $ab
    mRest_10                                           ;; 0f:65a7 $af
    mSTEREOPAN $01                                     ;; 0f:65a8 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:65aa $d8
    mD_8                                               ;; 0f:65ab $82
    mOCTAVE_MINUS_1                                    ;; 0f:65ac $dc
    mSTEREOPAN $03                                     ;; 0f:65ad $e6 $03
    mB_10                                              ;; 0f:65af $ab
    mRest_10                                           ;; 0f:65b0 $af
    mOCTAVE_PLUS_1                                     ;; 0f:65b1 $d8
    mREPEAT .data_0f_6591                              ;; 0f:65b2 $e2 $91 $65
    mSTEREOPAN $01                                     ;; 0f:65b5 $e6 $01
    mCis_8                                             ;; 0f:65b7 $81
    mOCTAVE_MINUS_1                                    ;; 0f:65b8 $dc
    mSTEREOPAN $03                                     ;; 0f:65b9 $e6 $03
    mA_10                                              ;; 0f:65bb $a9
    mRest_10                                           ;; 0f:65bc $af
    mA_10                                              ;; 0f:65bd $a9
    mRest_10                                           ;; 0f:65be $af
    mOCTAVE_PLUS_1                                     ;; 0f:65bf $d8
    mSTEREOPAN $01                                     ;; 0f:65c0 $e6 $01
    mCis_8                                             ;; 0f:65c2 $81
    mOCTAVE_MINUS_1                                    ;; 0f:65c3 $dc
    mSTEREOPAN $03                                     ;; 0f:65c4 $e6 $03
    mA_10                                              ;; 0f:65c6 $a9
    mRest_10                                           ;; 0f:65c7 $af
    mA_10                                              ;; 0f:65c8 $a9
    mRest_10                                           ;; 0f:65c9 $af
    mSTEREOPAN $01                                     ;; 0f:65ca $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:65cc $d8
    mCis_8                                             ;; 0f:65cd $81
    mOCTAVE_MINUS_1                                    ;; 0f:65ce $dc
    mSTEREOPAN $03                                     ;; 0f:65cf $e6 $03
    mA_10                                              ;; 0f:65d1 $a9
    mRest_10                                           ;; 0f:65d2 $af
    mVOLUME_ENVELOPE data_0f_7aac                      ;; 0f:65d3 $e0 $ac $7a
    mOCTAVE_PLUS_1                                     ;; 0f:65d6 $d8
    mA_10                                              ;; 0f:65d7 $a9
    mFis_10                                            ;; 0f:65d8 $a6
    mCis_10                                            ;; 0f:65d9 $a1
    mFis_10                                            ;; 0f:65da $a6
    mOCTAVE_PLUS_1                                     ;; 0f:65db $d8
    mCis_10                                            ;; 0f:65dc $a1
    mOCTAVE_MINUS_1                                    ;; 0f:65dd $dc
    mFis_10                                            ;; 0f:65de $a6
    mCis_10                                            ;; 0f:65df $a1
    mFis_10                                            ;; 0f:65e0 $a6
    mB_10                                              ;; 0f:65e1 $ab
    mFis_10                                            ;; 0f:65e2 $a6
    mCis_10                                            ;; 0f:65e3 $a1
    mFis_10                                            ;; 0f:65e4 $a6
    mA_10                                              ;; 0f:65e5 $a9
    mFis_10                                            ;; 0f:65e6 $a6
    mCis_10                                            ;; 0f:65e7 $a1
    mFis_10                                            ;; 0f:65e8 $a6
    mSTEREOPAN $01                                     ;; 0f:65e9 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:65eb $d8
    mC_8                                               ;; 0f:65ec $80
    mOCTAVE_MINUS_1                                    ;; 0f:65ed $dc
    mB_8                                               ;; 0f:65ee $8b
    mA_8                                               ;; 0f:65ef $89
    mB_8                                               ;; 0f:65f0 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:65f1 $d8
    mC_4                                               ;; 0f:65f2 $40
    mE_8                                               ;; 0f:65f3 $84
    mDis_5                                             ;; 0f:65f4 $53
    mOCTAVE_MINUS_1                                    ;; 0f:65f5 $dc
    mB_8                                               ;; 0f:65f6 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:65f7 $d8
    mDis_4                                             ;; 0f:65f8 $43
    mOCTAVE_MINUS_1                                    ;; 0f:65f9 $dc
    mA_5                                               ;; 0f:65fa $59
    mSTEREOPAN $02                                     ;; 0f:65fb $e6 $02
    mE_10                                              ;; 0f:65fd $a4
    mOCTAVE_MINUS_1                                    ;; 0f:65fe $dc
    mB_10                                              ;; 0f:65ff $ab
    mG_10                                              ;; 0f:6600 $a7
    mB_10                                              ;; 0f:6601 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6602 $d8
    mG_5                                               ;; 0f:6603 $57
    mSTEREOPAN $01                                     ;; 0f:6604 $e6 $01
    mD_10                                              ;; 0f:6606 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6607 $dc
    mB_10                                              ;; 0f:6608 $ab
    mG_10                                              ;; 0f:6609 $a7
    mB_10                                              ;; 0f:660a $ab
    mOCTAVE_PLUS_1                                     ;; 0f:660b $d8
    mG_5                                               ;; 0f:660c $57
    mSTEREOPAN $03                                     ;; 0f:660d $e6 $03
    mB_10                                              ;; 0f:660f $ab
    mG_10                                              ;; 0f:6610 $a7
    mE_10                                              ;; 0f:6611 $a4
    mG_10                                              ;; 0f:6612 $a7
    mB_10                                              ;; 0f:6613 $ab
    mG_10                                              ;; 0f:6614 $a7
    mE_10                                              ;; 0f:6615 $a4
    mG_10                                              ;; 0f:6616 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6617 $d8
    mCis_10                                            ;; 0f:6618 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6619 $dc
    mG_10                                              ;; 0f:661a $a7
    mE_10                                              ;; 0f:661b $a4
    mG_10                                              ;; 0f:661c $a7
    mB_10                                              ;; 0f:661d $ab
    mG_10                                              ;; 0f:661e $a7
    mE_10                                              ;; 0f:661f $a4
    mG_10                                              ;; 0f:6620 $a7
    mSTEREOPAN $02                                     ;; 0f:6621 $e6 $02
    mCis_10                                            ;; 0f:6623 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6624 $dc
    mAis_10                                            ;; 0f:6625 $aa
    mFis_10                                            ;; 0f:6626 $a6
    mOCTAVE_PLUS_1                                     ;; 0f:6627 $d8
    mSTEREOPAN $03                                     ;; 0f:6628 $e6 $03
    mCis_10                                            ;; 0f:662a $a1
    mOCTAVE_MINUS_1                                    ;; 0f:662b $dc
    mAis_10                                            ;; 0f:662c $aa
    mFis_10                                            ;; 0f:662d $a6
    mSTEREOPAN $01                                     ;; 0f:662e $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:6630 $d8
    mCis_10                                            ;; 0f:6631 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6632 $dc
    mFis_10                                            ;; 0f:6633 $a6
    mOCTAVE_PLUS_1                                     ;; 0f:6634 $d8
    mSTEREOPAN $02                                     ;; 0f:6635 $e6 $02
    mD_10                                              ;; 0f:6637 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6638 $dc
    mB_10                                              ;; 0f:6639 $ab
    mG_10                                              ;; 0f:663a $a7
    mSTEREOPAN $03                                     ;; 0f:663b $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:663d $d8
    mD_10                                              ;; 0f:663e $a2
    mOCTAVE_MINUS_1                                    ;; 0f:663f $dc
    mB_10                                              ;; 0f:6640 $ab
    mG_10                                              ;; 0f:6641 $a7
    mOCTAVE_PLUS_1                                     ;; 0f:6642 $d8
    mSTEREOPAN $01                                     ;; 0f:6643 $e6 $01
    mD_10                                              ;; 0f:6645 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:6646 $dc
    mG_10                                              ;; 0f:6647 $a7
    mSTEREOPAN $02                                     ;; 0f:6648 $e6 $02
    mOCTAVE_PLUS_1                                     ;; 0f:664a $d8
    mE_10                                              ;; 0f:664b $a4
    mCis_10                                            ;; 0f:664c $a1
    mOCTAVE_MINUS_1                                    ;; 0f:664d $dc
    mA_10                                              ;; 0f:664e $a9
    mOCTAVE_PLUS_1                                     ;; 0f:664f $d8
    mSTEREOPAN $03                                     ;; 0f:6650 $e6 $03
    mE_10                                              ;; 0f:6652 $a4
    mCis_10                                            ;; 0f:6653 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:6654 $dc
    mA_10                                              ;; 0f:6655 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:6656 $d8
    mSTEREOPAN $01                                     ;; 0f:6657 $e6 $01
    mE_10                                              ;; 0f:6659 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:665a $dc
    mA_10                                              ;; 0f:665b $a9
    mOCTAVE_PLUS_1                                     ;; 0f:665c $d8
    mSTEREOPAN $03                                     ;; 0f:665d $e6 $03
    mFis_5                                             ;; 0f:665f $56
    mOCTAVE_MINUS_1                                    ;; 0f:6660 $dc
    mAis_8                                             ;; 0f:6661 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6662 $d8
    mE_8                                               ;; 0f:6663 $84
    mJUMP .data_0f_64dd                                ;; 0f:6664 $e1 $dd $64

song12_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:6667 $e4 $4f $7a
    mWAVETABLE data_0f_7afc                            ;; 0f:666a $e8 $fc $7a
    mVOLUME $20                                        ;; 0f:666d $e0 $20
    mSTEREOPAN $03                                     ;; 0f:666f $e6 $03
    mOCTAVE_1                                          ;; 0f:6671 $d1
    mB_1                                               ;; 0f:6672 $1b
    mRest_8                                            ;; 0f:6673 $8f
    mA_8                                               ;; 0f:6674 $89
    mB_8                                               ;; 0f:6675 $8b
    mRest_2                                            ;; 0f:6676 $2f
    mA_10                                              ;; 0f:6677 $a9
    mRest_10                                           ;; 0f:6678 $af
    mA_10                                              ;; 0f:6679 $a9
    mRest_10                                           ;; 0f:667a $af
    mA_8                                               ;; 0f:667b $89
.data_0f_667c:
    mCOUNTER $02                                       ;; 0f:667c $e3 $02
.data_0f_667e:
    mSTEREOPAN $03                                     ;; 0f:667e $e6 $03
    mWAVETABLE data_0f_7b0c                            ;; 0f:6680 $e8 $0c $7b
    mB_8                                               ;; 0f:6683 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6684 $d8
    mB_10                                              ;; 0f:6685 $ab
    mRest_10                                           ;; 0f:6686 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6687 $dc
    mB_8                                               ;; 0f:6688 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6689 $d8
    mB_10                                              ;; 0f:668a $ab
    mRest_10                                           ;; 0f:668b $af
    mOCTAVE_MINUS_1                                    ;; 0f:668c $dc
    mB_8                                               ;; 0f:668d $8b
    mOCTAVE_PLUS_1                                     ;; 0f:668e $d8
    mB_10                                              ;; 0f:668f $ab
    mRest_10                                           ;; 0f:6690 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6691 $dc
    mB_8                                               ;; 0f:6692 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6693 $d8
    mB_10                                              ;; 0f:6694 $ab
    mRest_10                                           ;; 0f:6695 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6696 $dc
    mA_8                                               ;; 0f:6697 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6698 $d8
    mA_10                                              ;; 0f:6699 $a9
    mRest_10                                           ;; 0f:669a $af
    mOCTAVE_MINUS_1                                    ;; 0f:669b $dc
    mA_8                                               ;; 0f:669c $89
    mOCTAVE_PLUS_1                                     ;; 0f:669d $d8
    mA_10                                              ;; 0f:669e $a9
    mRest_10                                           ;; 0f:669f $af
    mOCTAVE_MINUS_1                                    ;; 0f:66a0 $dc
    mA_8                                               ;; 0f:66a1 $89
    mOCTAVE_PLUS_1                                     ;; 0f:66a2 $d8
    mA_10                                              ;; 0f:66a3 $a9
    mRest_10                                           ;; 0f:66a4 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66a5 $dc
    mA_8                                               ;; 0f:66a6 $89
    mOCTAVE_PLUS_1                                     ;; 0f:66a7 $d8
    mA_10                                              ;; 0f:66a8 $a9
    mRest_10                                           ;; 0f:66a9 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66aa $dc
    mG_8                                               ;; 0f:66ab $87
    mOCTAVE_PLUS_1                                     ;; 0f:66ac $d8
    mG_10                                              ;; 0f:66ad $a7
    mRest_10                                           ;; 0f:66ae $af
    mOCTAVE_MINUS_1                                    ;; 0f:66af $dc
    mG_8                                               ;; 0f:66b0 $87
    mOCTAVE_PLUS_1                                     ;; 0f:66b1 $d8
    mG_10                                              ;; 0f:66b2 $a7
    mRest_10                                           ;; 0f:66b3 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66b4 $dc
    mG_8                                               ;; 0f:66b5 $87
    mOCTAVE_PLUS_1                                     ;; 0f:66b6 $d8
    mG_10                                              ;; 0f:66b7 $a7
    mRest_10                                           ;; 0f:66b8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66b9 $dc
    mG_8                                               ;; 0f:66ba $87
    mOCTAVE_PLUS_1                                     ;; 0f:66bb $d8
    mG_10                                              ;; 0f:66bc $a7
    mRest_10                                           ;; 0f:66bd $af
    mJUMPIF $01, .data_0f_6719                         ;; 0f:66be $eb $01 $19 $67
    mOCTAVE_MINUS_1                                    ;; 0f:66c2 $dc
    mFis_8                                             ;; 0f:66c3 $86
    mOCTAVE_PLUS_1                                     ;; 0f:66c4 $d8
    mFis_10                                            ;; 0f:66c5 $a6
    mRest_10                                           ;; 0f:66c6 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66c7 $dc
    mFis_8                                             ;; 0f:66c8 $86
    mOCTAVE_PLUS_1                                     ;; 0f:66c9 $d8
    mFis_10                                            ;; 0f:66ca $a6
    mRest_10                                           ;; 0f:66cb $af
    mOCTAVE_MINUS_1                                    ;; 0f:66cc $dc
    mFis_8                                             ;; 0f:66cd $86
    mOCTAVE_PLUS_1                                     ;; 0f:66ce $d8
    mFis_10                                            ;; 0f:66cf $a6
    mRest_10                                           ;; 0f:66d0 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66d1 $dc
    mFis_8                                             ;; 0f:66d2 $86
    mOCTAVE_PLUS_1                                     ;; 0f:66d3 $d8
    mFis_10                                            ;; 0f:66d4 $a6
    mRest_10                                           ;; 0f:66d5 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66d6 $dc
    mE_8                                               ;; 0f:66d7 $84
    mOCTAVE_PLUS_1                                     ;; 0f:66d8 $d8
    mE_10                                              ;; 0f:66d9 $a4
    mRest_10                                           ;; 0f:66da $af
    mOCTAVE_MINUS_1                                    ;; 0f:66db $dc
    mE_8                                               ;; 0f:66dc $84
    mOCTAVE_PLUS_1                                     ;; 0f:66dd $d8
    mE_10                                              ;; 0f:66de $a4
    mRest_10                                           ;; 0f:66df $af
    mOCTAVE_MINUS_1                                    ;; 0f:66e0 $dc
    mE_8                                               ;; 0f:66e1 $84
    mOCTAVE_PLUS_1                                     ;; 0f:66e2 $d8
    mE_10                                              ;; 0f:66e3 $a4
    mRest_10                                           ;; 0f:66e4 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66e5 $dc
    mE_8                                               ;; 0f:66e6 $84
    mOCTAVE_PLUS_1                                     ;; 0f:66e7 $d8
    mE_10                                              ;; 0f:66e8 $a4
    mRest_10                                           ;; 0f:66e9 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66ea $dc
    mCis_8                                             ;; 0f:66eb $81
    mOCTAVE_PLUS_1                                     ;; 0f:66ec $d8
    mCis_10                                            ;; 0f:66ed $a1
    mRest_10                                           ;; 0f:66ee $af
    mOCTAVE_MINUS_1                                    ;; 0f:66ef $dc
    mCis_8                                             ;; 0f:66f0 $81
    mOCTAVE_PLUS_1                                     ;; 0f:66f1 $d8
    mCis_10                                            ;; 0f:66f2 $a1
    mRest_10                                           ;; 0f:66f3 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66f4 $dc
    mCis_8                                             ;; 0f:66f5 $81
    mOCTAVE_PLUS_1                                     ;; 0f:66f6 $d8
    mCis_10                                            ;; 0f:66f7 $a1
    mRest_10                                           ;; 0f:66f8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:66f9 $dc
    mCis_8                                             ;; 0f:66fa $81
    mOCTAVE_PLUS_1                                     ;; 0f:66fb $d8
    mCis_10                                            ;; 0f:66fc $a1
    mRest_10                                           ;; 0f:66fd $af
    mOCTAVE_MINUS_1                                    ;; 0f:66fe $dc
    mFis_5                                             ;; 0f:66ff $56
    mOCTAVE_PLUS_1                                     ;; 0f:6700 $d8
    mFis_5                                             ;; 0f:6701 $56
    mOCTAVE_MINUS_1                                    ;; 0f:6702 $dc
    mG_5                                               ;; 0f:6703 $57
    mOCTAVE_PLUS_1                                     ;; 0f:6704 $d8
    mG_5                                               ;; 0f:6705 $57
    mOCTAVE_MINUS_1                                    ;; 0f:6706 $dc
    mA_5                                               ;; 0f:6707 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6708 $d8
    mA_5                                               ;; 0f:6709 $59
    mOCTAVE_MINUS_1                                    ;; 0f:670a $dc
    mSTEREOPAN $01                                     ;; 0f:670b $e6 $01
    mAis_7                                             ;; 0f:670d $7a
    mOCTAVE_PLUS_1                                     ;; 0f:670e $d8
    mSTEREOPAN $02                                     ;; 0f:670f $e6 $02
    mFis_7                                             ;; 0f:6711 $76
    mOCTAVE_MINUS_1                                    ;; 0f:6712 $dc
    mSTEREOPAN $03                                     ;; 0f:6713 $e6 $03
    mFis_8                                             ;; 0f:6715 $86
    mREPEAT .data_0f_667e                              ;; 0f:6716 $e2 $7e $66
.data_0f_6719:
    mOCTAVE_MINUS_1                                    ;; 0f:6719 $dc
    mFis_8                                             ;; 0f:671a $86
    mOCTAVE_PLUS_1                                     ;; 0f:671b $d8
    mFis_10                                            ;; 0f:671c $a6
    mRest_10                                           ;; 0f:671d $af
    mOCTAVE_MINUS_1                                    ;; 0f:671e $dc
    mFis_8                                             ;; 0f:671f $86
    mOCTAVE_PLUS_1                                     ;; 0f:6720 $d8
    mFis_10                                            ;; 0f:6721 $a6
    mRest_10                                           ;; 0f:6722 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6723 $dc
    mFis_8                                             ;; 0f:6724 $86
    mOCTAVE_PLUS_1                                     ;; 0f:6725 $d8
    mFis_10                                            ;; 0f:6726 $a6
    mRest_10                                           ;; 0f:6727 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6728 $dc
    mFis_8                                             ;; 0f:6729 $86
    mOCTAVE_PLUS_1                                     ;; 0f:672a $d8
    mFis_10                                            ;; 0f:672b $a6
    mRest_10                                           ;; 0f:672c $af
    mOCTAVE_MINUS_1                                    ;; 0f:672d $dc
    mG_7                                               ;; 0f:672e $77
    mOCTAVE_PLUS_1                                     ;; 0f:672f $d8
    mG_7                                               ;; 0f:6730 $77
    mD_8                                               ;; 0f:6731 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6732 $dc
    mE_8                                               ;; 0f:6733 $84
    mOCTAVE_PLUS_1                                     ;; 0f:6734 $d8
    mE_10                                              ;; 0f:6735 $a4
    mRest_10                                           ;; 0f:6736 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6737 $dc
    mE_8                                               ;; 0f:6738 $84
    mOCTAVE_PLUS_1                                     ;; 0f:6739 $d8
    mE_10                                              ;; 0f:673a $a4
    mRest_10                                           ;; 0f:673b $af
    mOCTAVE_MINUS_1                                    ;; 0f:673c $dc
    mFis_7                                             ;; 0f:673d $76
    mOCTAVE_PLUS_1                                     ;; 0f:673e $d8
    mFis_7                                             ;; 0f:673f $76
    mCis_8                                             ;; 0f:6740 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6741 $dc
    mB_8                                               ;; 0f:6742 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6743 $d8
    mB_10                                              ;; 0f:6744 $ab
    mRest_10                                           ;; 0f:6745 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6746 $dc
    mA_8                                               ;; 0f:6747 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6748 $d8
    mA_10                                              ;; 0f:6749 $a9
    mRest_10                                           ;; 0f:674a $af
    mOCTAVE_MINUS_1                                    ;; 0f:674b $dc
    mG_8                                               ;; 0f:674c $87
    mOCTAVE_PLUS_1                                     ;; 0f:674d $d8
    mG_10                                              ;; 0f:674e $a7
    mRest_10                                           ;; 0f:674f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6750 $dc
    mG_8                                               ;; 0f:6751 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6752 $d8
    mG_10                                              ;; 0f:6753 $a7
    mRest_10                                           ;; 0f:6754 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6755 $dc
    mA_8                                               ;; 0f:6756 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6757 $d8
    mA_10                                              ;; 0f:6758 $a9
    mRest_10                                           ;; 0f:6759 $af
    mOCTAVE_MINUS_1                                    ;; 0f:675a $dc
    mA_8                                               ;; 0f:675b $89
    mOCTAVE_PLUS_1                                     ;; 0f:675c $d8
    mA_10                                              ;; 0f:675d $a9
    mRest_10                                           ;; 0f:675e $af
    mOCTAVE_MINUS_1                                    ;; 0f:675f $dc
    mB_8                                               ;; 0f:6760 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6761 $d8
    mB_10                                              ;; 0f:6762 $ab
    mRest_10                                           ;; 0f:6763 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6764 $dc
    mB_8                                               ;; 0f:6765 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6766 $d8
    mB_10                                              ;; 0f:6767 $ab
    mRest_10                                           ;; 0f:6768 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6769 $dc
    mSTEREOPAN $02                                     ;; 0f:676a $e6 $02
    mB_5                                               ;; 0f:676c $5b
    mSTEREOPAN $01                                     ;; 0f:676d $e6 $01
    mA_5                                               ;; 0f:676f $59
    mCOUNTER $02                                       ;; 0f:6770 $e3 $02
.data_0f_6772:
    mSTEREOPAN $02                                     ;; 0f:6772 $e6 $02
    mG_8                                               ;; 0f:6774 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6775 $d8
    mSTEREOPAN $03                                     ;; 0f:6776 $e6 $03
    mG_10                                              ;; 0f:6778 $a7
    mRest_10                                           ;; 0f:6779 $af
    mG_10                                              ;; 0f:677a $a7
    mRest_10                                           ;; 0f:677b $af
    mOCTAVE_MINUS_1                                    ;; 0f:677c $dc
    mSTEREOPAN $02                                     ;; 0f:677d $e6 $02
    mG_8                                               ;; 0f:677f $87
    mOCTAVE_PLUS_1                                     ;; 0f:6780 $d8
    mSTEREOPAN $03                                     ;; 0f:6781 $e6 $03
    mG_10                                              ;; 0f:6783 $a7
    mRest_10                                           ;; 0f:6784 $af
    mG_10                                              ;; 0f:6785 $a7
    mRest_10                                           ;; 0f:6786 $af
    mSTEREOPAN $02                                     ;; 0f:6787 $e6 $02
    mOCTAVE_MINUS_1                                    ;; 0f:6789 $dc
    mG_8                                               ;; 0f:678a $87
    mOCTAVE_PLUS_1                                     ;; 0f:678b $d8
    mSTEREOPAN $03                                     ;; 0f:678c $e6 $03
    mG_10                                              ;; 0f:678e $a7
    mRest_10                                           ;; 0f:678f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6790 $dc
    mREPEAT .data_0f_6772                              ;; 0f:6791 $e2 $72 $67
    mFis_8                                             ;; 0f:6794 $86
    mOCTAVE_PLUS_1                                     ;; 0f:6795 $d8
    mFis_10                                            ;; 0f:6796 $a6
    mRest_10                                           ;; 0f:6797 $af
    mFis_10                                            ;; 0f:6798 $a6
    mRest_10                                           ;; 0f:6799 $af
    mOCTAVE_MINUS_1                                    ;; 0f:679a $dc
    mFis_8                                             ;; 0f:679b $86
    mOCTAVE_PLUS_1                                     ;; 0f:679c $d8
    mFis_10                                            ;; 0f:679d $a6
    mRest_10                                           ;; 0f:679e $af
    mFis_10                                            ;; 0f:679f $a6
    mRest_10                                           ;; 0f:67a0 $af
    mOCTAVE_MINUS_1                                    ;; 0f:67a1 $dc
    mFis_8                                             ;; 0f:67a2 $86
    mOCTAVE_PLUS_1                                     ;; 0f:67a3 $d8
    mFis_10                                            ;; 0f:67a4 $a6
    mRest_10                                           ;; 0f:67a5 $af
    mSTEREOPAN $02                                     ;; 0f:67a6 $e6 $02
    mOCTAVE_MINUS_1                                    ;; 0f:67a8 $dc
    mFis_5                                             ;; 0f:67a9 $56
    mOCTAVE_PLUS_1                                     ;; 0f:67aa $d8
    mSTEREOPAN $01                                     ;; 0f:67ab $e6 $01
    mFis_5                                             ;; 0f:67ad $56
    mSTEREOPAN $02                                     ;; 0f:67ae $e6 $02
    mCis_5                                             ;; 0f:67b0 $51
    mOCTAVE_MINUS_1                                    ;; 0f:67b1 $dc
    mSTEREOPAN $01                                     ;; 0f:67b2 $e6 $01
    mFis_5                                             ;; 0f:67b4 $56
    mSTEREOPAN $03                                     ;; 0f:67b5 $e6 $03
    mA_8                                               ;; 0f:67b7 $89
    mOCTAVE_PLUS_1                                     ;; 0f:67b8 $d8
    mA_10                                              ;; 0f:67b9 $a9
    mRest_10                                           ;; 0f:67ba $af
    mOCTAVE_MINUS_1                                    ;; 0f:67bb $dc
    mA_8                                               ;; 0f:67bc $89
    mOCTAVE_PLUS_1                                     ;; 0f:67bd $d8
    mA_10                                              ;; 0f:67be $a9
    mRest_10                                           ;; 0f:67bf $af
    mOCTAVE_MINUS_1                                    ;; 0f:67c0 $dc
    mA_8                                               ;; 0f:67c1 $89
    mOCTAVE_PLUS_1                                     ;; 0f:67c2 $d8
    mA_10                                              ;; 0f:67c3 $a9
    mRest_10                                           ;; 0f:67c4 $af
    mOCTAVE_MINUS_1                                    ;; 0f:67c5 $dc
    mA_8                                               ;; 0f:67c6 $89
    mOCTAVE_PLUS_1                                     ;; 0f:67c7 $d8
    mA_10                                              ;; 0f:67c8 $a9
    mRest_10                                           ;; 0f:67c9 $af
    mOCTAVE_MINUS_1                                    ;; 0f:67ca $dc
    mB_8                                               ;; 0f:67cb $8b
    mOCTAVE_PLUS_1                                     ;; 0f:67cc $d8
    mB_10                                              ;; 0f:67cd $ab
    mRest_10                                           ;; 0f:67ce $af
    mOCTAVE_MINUS_1                                    ;; 0f:67cf $dc
    mB_8                                               ;; 0f:67d0 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:67d1 $d8
    mB_10                                              ;; 0f:67d2 $ab
    mRest_10                                           ;; 0f:67d3 $af
    mCis_8                                             ;; 0f:67d4 $81
    mOCTAVE_PLUS_1                                     ;; 0f:67d5 $d8
    mCis_10                                            ;; 0f:67d6 $a1
    mRest_10                                           ;; 0f:67d7 $af
    mOCTAVE_MINUS_1                                    ;; 0f:67d8 $dc
    mDis_8                                             ;; 0f:67d9 $83
    mOCTAVE_PLUS_1                                     ;; 0f:67da $d8
    mDis_10                                            ;; 0f:67db $a3
    mRest_10                                           ;; 0f:67dc $af
    mOCTAVE_MINUS_1                                    ;; 0f:67dd $dc
    mE_10                                              ;; 0f:67de $a4
    mRest_10                                           ;; 0f:67df $af
    mE_10                                              ;; 0f:67e0 $a4
    mRest_10                                           ;; 0f:67e1 $af
    mE_10                                              ;; 0f:67e2 $a4
    mRest_10                                           ;; 0f:67e3 $af
    mE_10                                              ;; 0f:67e4 $a4
    mRest_10                                           ;; 0f:67e5 $af
    mD_10                                              ;; 0f:67e6 $a2
    mRest_10                                           ;; 0f:67e7 $af
    mD_10                                              ;; 0f:67e8 $a2
    mRest_10                                           ;; 0f:67e9 $af
    mD_10                                              ;; 0f:67ea $a2
    mRest_10                                           ;; 0f:67eb $af
    mD_10                                              ;; 0f:67ec $a2
    mRest_10                                           ;; 0f:67ed $af
    mCis_0                                             ;; 0f:67ee $01
    mOCTAVE_MINUS_1                                    ;; 0f:67ef $dc
    mFis_10                                            ;; 0f:67f0 $a6
    mRest_10                                           ;; 0f:67f1 $af
    mFis_10                                            ;; 0f:67f2 $a6
    mRest_10                                           ;; 0f:67f3 $af
    mFis_10                                            ;; 0f:67f4 $a6
    mRest_10                                           ;; 0f:67f5 $af
    mFis_10                                            ;; 0f:67f6 $a6
    mRest_10                                           ;; 0f:67f7 $af
    mG_10                                              ;; 0f:67f8 $a7
    mRest_10                                           ;; 0f:67f9 $af
    mG_10                                              ;; 0f:67fa $a7
    mRest_10                                           ;; 0f:67fb $af
    mG_10                                              ;; 0f:67fc $a7
    mRest_10                                           ;; 0f:67fd $af
    mG_10                                              ;; 0f:67fe $a7
    mRest_10                                           ;; 0f:67ff $af
    mA_10                                              ;; 0f:6800 $a9
    mRest_10                                           ;; 0f:6801 $af
    mA_10                                              ;; 0f:6802 $a9
    mRest_10                                           ;; 0f:6803 $af
    mA_10                                              ;; 0f:6804 $a9
    mRest_10                                           ;; 0f:6805 $af
    mA_10                                              ;; 0f:6806 $a9
    mRest_10                                           ;; 0f:6807 $af
    mOCTAVE_PLUS_1                                     ;; 0f:6808 $d8
    mSTEREOPAN $02                                     ;; 0f:6809 $e6 $02
    mFis_5                                             ;; 0f:680b $56
    mOCTAVE_MINUS_1                                    ;; 0f:680c $dc
    mSTEREOPAN $01                                     ;; 0f:680d $e6 $01
    mFis_5                                             ;; 0f:680f $56
    mJUMP .data_0f_667c                                ;; 0f:6810 $e1 $7c $66
    db   $19, $68, $bd, $68, $ff, $69                  ;; 0f:6813 ??????

song13_channel2:
    mTEMPO $78                                         ;; 0f:6819 $e7 $78
.data_0f_681b:
    mVIBRATO frequencyDeltaData                        ;; 0f:681b $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:681e $e0 $be $7a
    mDUTYCYCLE $40                                     ;; 0f:6821 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:6823 $e6 $03
    mOCTAVE_2                                          ;; 0f:6825 $d2
    mA_5                                               ;; 0f:6826 $59
    mWait_10                                           ;; 0f:6827 $ae
    mE_10                                              ;; 0f:6828 $a4
    mA_10                                              ;; 0f:6829 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:682a $d8
    mC_10                                              ;; 0f:682b $a0
    mE_2                                               ;; 0f:682c $24
    mWait_7                                            ;; 0f:682d $7e
    mD_7                                               ;; 0f:682e $72
    mC_8                                               ;; 0f:682f $80
    mOCTAVE_MINUS_1                                    ;; 0f:6830 $dc
    mB_5                                               ;; 0f:6831 $5b
    mG_5                                               ;; 0f:6832 $57
    mB_7                                               ;; 0f:6833 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:6834 $d8
    mC_7                                               ;; 0f:6835 $70
    mOCTAVE_MINUS_1                                    ;; 0f:6836 $dc
    mB_8                                               ;; 0f:6837 $8b
    mE_2                                               ;; 0f:6838 $24
    mWait_0                                            ;; 0f:6839 $0e
    mA_5                                               ;; 0f:683a $59
    mWait_10                                           ;; 0f:683b $ae
    mE_10                                              ;; 0f:683c $a4
    mA_10                                              ;; 0f:683d $a9
    mOCTAVE_PLUS_1                                     ;; 0f:683e $d8
    mC_10                                              ;; 0f:683f $a0
    mE_2                                               ;; 0f:6840 $24
    mWait_7                                            ;; 0f:6841 $7e
    mD_7                                               ;; 0f:6842 $72
    mC_8                                               ;; 0f:6843 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6844 $dc
    mB_7                                               ;; 0f:6845 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:6846 $d8
    mC_7                                               ;; 0f:6847 $70
    mD_8                                               ;; 0f:6848 $82
    mE_4                                               ;; 0f:6849 $44
    mG_5                                               ;; 0f:684a $57
    mFis_10                                            ;; 0f:684b $a6
    mF_10                                              ;; 0f:684c $a5
    mE_5                                               ;; 0f:684d $54
    mGis_0                                             ;; 0f:684e $08
    mA_5                                               ;; 0f:684f $59
    mWait_10                                           ;; 0f:6850 $ae
    mG_10                                              ;; 0f:6851 $a7
    mF_10                                              ;; 0f:6852 $a5
    mE_10                                              ;; 0f:6853 $a4
    mD_2                                               ;; 0f:6854 $22
    mWait_5                                            ;; 0f:6855 $5e
    mE_5                                               ;; 0f:6856 $54
    mF_5                                               ;; 0f:6857 $55
    mA_5                                               ;; 0f:6858 $59
    mG_4                                               ;; 0f:6859 $47
    mE_5                                               ;; 0f:685a $54
    mF_10                                              ;; 0f:685b $a5
    mFis_10                                            ;; 0f:685c $a6
    mG_5                                               ;; 0f:685d $57
    mC_2                                               ;; 0f:685e $20
    mWait_8                                            ;; 0f:685f $8e
    mD_8                                               ;; 0f:6860 $82
    mC_10                                              ;; 0f:6861 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6862 $dc
    mB_7                                               ;; 0f:6863 $7b
    mA_2                                               ;; 0f:6864 $29
    mWait_8                                            ;; 0f:6865 $8e
    mOCTAVE_PLUS_1                                     ;; 0f:6866 $d8
    mC_8                                               ;; 0f:6867 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6868 $dc
    mB_8                                               ;; 0f:6869 $8b
    mA_8                                               ;; 0f:686a $89
    mG_4                                               ;; 0f:686b $47
    mB_5                                               ;; 0f:686c $5b
    mA_10                                              ;; 0f:686d $a9
    mGis_10                                            ;; 0f:686e $a8
    mG_5                                               ;; 0f:686f $57
    mA_0                                               ;; 0f:6870 $09
    mWait_2                                            ;; 0f:6871 $2e
    mWait_8                                            ;; 0f:6872 $8e
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6873 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:6876 $e5 $80
    mB_8                                               ;; 0f:6878 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6879 $d8
    mC_8                                               ;; 0f:687a $80
    mD_8                                               ;; 0f:687b $82
    mE_4                                               ;; 0f:687c $44
    mD_4                                               ;; 0f:687d $42
    mG_5                                               ;; 0f:687e $57
    mE_7                                               ;; 0f:687f $74
    mD_7                                               ;; 0f:6880 $72
    mC_4                                               ;; 0f:6881 $40
    mC_10                                              ;; 0f:6882 $a0
    mD_7                                               ;; 0f:6883 $72
    mOCTAVE_MINUS_1                                    ;; 0f:6884 $dc
    mB_4                                               ;; 0f:6885 $4b
    mOCTAVE_PLUS_1                                     ;; 0f:6886 $d8
    mG_4                                               ;; 0f:6887 $47
    mD_5                                               ;; 0f:6888 $52
    mWait_2                                            ;; 0f:6889 $2e
    mRest_8                                            ;; 0f:688a $8f
    mOCTAVE_MINUS_1                                    ;; 0f:688b $dc
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:688c $e0 $a8 $7a
    mB_10                                              ;; 0f:688f $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6890 $d8
    mC_10                                              ;; 0f:6891 $a0
    mD_10                                              ;; 0f:6892 $a2
    mC_10                                              ;; 0f:6893 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6894 $dc
    mB_10                                              ;; 0f:6895 $ab
    mG_10                                              ;; 0f:6896 $a7
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6897 $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:689a $e5 $40
    mA_7                                               ;; 0f:689c $79
    mB_7                                               ;; 0f:689d $7b
    mOCTAVE_PLUS_1                                     ;; 0f:689e $d8
    mC_8                                               ;; 0f:689f $80
    mOCTAVE_MINUS_1                                    ;; 0f:68a0 $dc
    mB_5                                               ;; 0f:68a1 $5b
    mG_5                                               ;; 0f:68a2 $57
    mOCTAVE_PLUS_1                                     ;; 0f:68a3 $d8
    mC_7                                               ;; 0f:68a4 $70
    mD_7                                               ;; 0f:68a5 $72
    mE_8                                               ;; 0f:68a6 $84
    mDis_7                                             ;; 0f:68a7 $73
    mE_7                                               ;; 0f:68a8 $74
    mFis_8                                             ;; 0f:68a9 $86
    mE_0                                               ;; 0f:68aa $04
    mWait_2                                            ;; 0f:68ab $2e
    mWait_10                                           ;; 0f:68ac $ae
    mVOLUME_ENVELOPE data_0f_7aa8                      ;; 0f:68ad $e0 $a8 $7a
    mD_10                                              ;; 0f:68b0 $a2
    mC_10                                              ;; 0f:68b1 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:68b2 $dc
    mB_10                                              ;; 0f:68b3 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:68b4 $d8
    mC_10                                              ;; 0f:68b5 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:68b6 $dc
    mB_10                                              ;; 0f:68b7 $ab
    mA_10                                              ;; 0f:68b8 $a9
    mGis_10                                            ;; 0f:68b9 $a8
    mJUMP .data_0f_681b                                ;; 0f:68ba $e1 $1b $68

song13_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:68bd $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:68c0 $e0 $c0 $7a
    mDUTYCYCLE $00                                     ;; 0f:68c3 $e5 $00
    mSTEREOPAN $02                                     ;; 0f:68c5 $e6 $02
    mOCTAVE_2                                          ;; 0f:68c7 $d2
    mC_4                                               ;; 0f:68c8 $40
    mWait_10                                           ;; 0f:68c9 $ae
    mE_10                                              ;; 0f:68ca $a4
    mA_5                                               ;; 0f:68cb $59
    mG_5                                               ;; 0f:68cc $57
    mA_2                                               ;; 0f:68cd $29
    mD_5                                               ;; 0f:68ce $52
    mOCTAVE_MINUS_1                                    ;; 0f:68cf $dc
    mB_5                                               ;; 0f:68d0 $5b
    mOCTAVE_PLUS_1                                     ;; 0f:68d1 $d8
    mE_4                                               ;; 0f:68d2 $44
    mD_8                                               ;; 0f:68d3 $82
    mC_5                                               ;; 0f:68d4 $50
    mOCTAVE_MINUS_1                                    ;; 0f:68d5 $dc
    mB_5                                               ;; 0f:68d6 $5b
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:68d7 $e0 $82 $7a
    mSTEREOPAN $03                                     ;; 0f:68da $e6 $03
    mDUTYCYCLE $40                                     ;; 0f:68dc $e5 $40
    mA_7                                               ;; 0f:68de $79
    mB_7                                               ;; 0f:68df $7b
    mOCTAVE_PLUS_1                                     ;; 0f:68e0 $d8
    mC_8                                               ;; 0f:68e1 $80
    mOCTAVE_MINUS_1                                    ;; 0f:68e2 $dc
    mB_7                                               ;; 0f:68e3 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:68e4 $d8
    mC_7                                               ;; 0f:68e5 $70
    mD_8                                               ;; 0f:68e6 $82
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:68e7 $e0 $c0 $7a
    mSTEREOPAN $01                                     ;; 0f:68ea $e6 $01
    mDUTYCYCLE $00                                     ;; 0f:68ec $e5 $00
    mC_4                                               ;; 0f:68ee $40
    mWait_10                                           ;; 0f:68ef $ae
    mE_10                                              ;; 0f:68f0 $a4
    mA_5                                               ;; 0f:68f1 $59
    mB_5                                               ;; 0f:68f2 $5b
    mOCTAVE_PLUS_1                                     ;; 0f:68f3 $d8
    mC_7                                               ;; 0f:68f4 $70
    mOCTAVE_MINUS_1                                    ;; 0f:68f5 $dc
    mB_7                                               ;; 0f:68f6 $7b
    mA_8                                               ;; 0f:68f7 $89
    mG_4                                               ;; 0f:68f8 $47
    mF_8                                               ;; 0f:68f9 $85
    mG_2                                               ;; 0f:68fa $27
    mWait_8                                            ;; 0f:68fb $8e
    mA_10                                              ;; 0f:68fc $a9
    mB_10                                              ;; 0f:68fd $ab
    mOCTAVE_PLUS_1                                     ;; 0f:68fe $d8
    mC_5                                               ;; 0f:68ff $50
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6900 $e0 $82 $7a
    mSTEREOPAN $03                                     ;; 0f:6903 $e6 $03
    mDUTYCYCLE $40                                     ;; 0f:6905 $e5 $40
    mD_5                                               ;; 0f:6907 $52
    mC_5                                               ;; 0f:6908 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6909 $dc
    mB_7                                               ;; 0f:690a $7b
    mOCTAVE_PLUS_1                                     ;; 0f:690b $d8
    mC_7                                               ;; 0f:690c $70
    mD_8                                               ;; 0f:690d $82
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:690e $e0 $c0 $7a
    mSTEREOPAN $02                                     ;; 0f:6911 $e6 $02
    mDUTYCYCLE $00                                     ;; 0f:6913 $e5 $00
    mC_5                                               ;; 0f:6915 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6916 $dc
    mA_5                                               ;; 0f:6917 $59
    mF_6                                               ;; 0f:6918 $65
    mG_11                                              ;; 0f:6919 $b7
    mGis_11                                            ;; 0f:691a $b8
    mA_5                                               ;; 0f:691b $59
    mB_2                                               ;; 0f:691c $2b
    mA_5                                               ;; 0f:691d $59
    mB_5                                               ;; 0f:691e $5b
    mOCTAVE_PLUS_1                                     ;; 0f:691f $d8
    mC_4                                               ;; 0f:6920 $40
    mOCTAVE_MINUS_1                                    ;; 0f:6921 $dc
    mG_5                                               ;; 0f:6922 $57
    mA_10                                              ;; 0f:6923 $a9
    mAis_10                                            ;; 0f:6924 $aa
    mB_5                                               ;; 0f:6925 $5b
    mE_7                                               ;; 0f:6926 $74
    mC_7                                               ;; 0f:6927 $70
    mD_8                                               ;; 0f:6928 $82
    mE_5                                               ;; 0f:6929 $54
    mWait_10                                           ;; 0f:692a $ae
    mD_7                                               ;; 0f:692b $72
    mSTEREOPAN $03                                     ;; 0f:692c $e6 $03
    mC_7                                               ;; 0f:692e $70
    mOCTAVE_MINUS_1                                    ;; 0f:692f $dc
    mB_7                                               ;; 0f:6930 $7b
    mA_5                                               ;; 0f:6931 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6932 $d8
    mF_8                                               ;; 0f:6933 $85
    mD_8                                               ;; 0f:6934 $82
    mC_8                                               ;; 0f:6935 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6936 $dc
    mB_7                                               ;; 0f:6937 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:6938 $d8
    mC_7                                               ;; 0f:6939 $70
    mD_4                                               ;; 0f:693a $42
    mOCTAVE_MINUS_1                                    ;; 0f:693b $dc
    mB_5                                               ;; 0f:693c $5b
    mSTEREOPAN $01                                     ;; 0f:693d $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:693f $d8
    mC_4                                               ;; 0f:6940 $40
    mD_4                                               ;; 0f:6941 $42
    mOCTAVE_MINUS_1                                    ;; 0f:6942 $dc
    mB_5                                               ;; 0f:6943 $5b
    mSTEREOPAN $03                                     ;; 0f:6944 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:6946 $d8
    mC_10                                              ;; 0f:6947 $a0
    mD_10                                              ;; 0f:6948 $a2
    mE_10                                              ;; 0f:6949 $a4
    mD_10                                              ;; 0f:694a $a2
    mC_10                                              ;; 0f:694b $a0
    mD_10                                              ;; 0f:694c $a2
    mE_10                                              ;; 0f:694d $a4
    mD_10                                              ;; 0f:694e $a2
    mC_8                                               ;; 0f:694f $80
    mD_8                                               ;; 0f:6950 $82
    mE_8                                               ;; 0f:6951 $84
    mF_8                                               ;; 0f:6952 $85
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:6953 $e0 $ae $7a
    mDUTYCYCLE $40                                     ;; 0f:6956 $e5 $40
    mC_10                                              ;; 0f:6958 $a0
    mD_10                                              ;; 0f:6959 $a2
    mC_10                                              ;; 0f:695a $a0
    mOCTAVE_MINUS_1                                    ;; 0f:695b $dc
    mB_10                                              ;; 0f:695c $ab
    mSTEREOPAN $02                                     ;; 0f:695d $e6 $02
    mA_10                                              ;; 0f:695f $a9
    mB_10                                              ;; 0f:6960 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6961 $d8
    mC_10                                              ;; 0f:6962 $a0
    mD_10                                              ;; 0f:6963 $a2
    mSTEREOPAN $03                                     ;; 0f:6964 $e6 $03
    mC_10                                              ;; 0f:6966 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6967 $dc
    mB_10                                              ;; 0f:6968 $ab
    mA_10                                              ;; 0f:6969 $a9
    mB_10                                              ;; 0f:696a $ab
    mOCTAVE_PLUS_1                                     ;; 0f:696b $d8
    mSTEREOPAN $01                                     ;; 0f:696c $e6 $01
    mC_10                                              ;; 0f:696e $a0
    mD_10                                              ;; 0f:696f $a2
    mC_10                                              ;; 0f:6970 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6971 $dc
    mB_10                                              ;; 0f:6972 $ab
    mSTEREOPAN $03                                     ;; 0f:6973 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:6975 $d8
    mC_10                                              ;; 0f:6976 $a0
    mD_10                                              ;; 0f:6977 $a2
    mC_10                                              ;; 0f:6978 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6979 $dc
    mB_10                                              ;; 0f:697a $ab
    mSTEREOPAN $02                                     ;; 0f:697b $e6 $02
    mA_10                                              ;; 0f:697d $a9
    mB_10                                              ;; 0f:697e $ab
    mOCTAVE_PLUS_1                                     ;; 0f:697f $d8
    mC_10                                              ;; 0f:6980 $a0
    mD_10                                              ;; 0f:6981 $a2
    mSTEREOPAN $03                                     ;; 0f:6982 $e6 $03
    mC_10                                              ;; 0f:6984 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6985 $dc
    mB_10                                              ;; 0f:6986 $ab
    mA_10                                              ;; 0f:6987 $a9
    mB_10                                              ;; 0f:6988 $ab
    mSTEREOPAN $01                                     ;; 0f:6989 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:698b $d8
    mC_10                                              ;; 0f:698c $a0
    mD_10                                              ;; 0f:698d $a2
    mC_10                                              ;; 0f:698e $a0
    mOCTAVE_MINUS_1                                    ;; 0f:698f $dc
    mA_10                                              ;; 0f:6990 $a9
    mSTEREOPAN $03                                     ;; 0f:6991 $e6 $03
    mB_10                                              ;; 0f:6993 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:6994 $d8
    mC_10                                              ;; 0f:6995 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:6996 $dc
    mB_10                                              ;; 0f:6997 $ab
    mA_10                                              ;; 0f:6998 $a9
    mSTEREOPAN $02                                     ;; 0f:6999 $e6 $02
    mG_10                                              ;; 0f:699b $a7
    mA_10                                              ;; 0f:699c $a9
    mB_10                                              ;; 0f:699d $ab
    mOCTAVE_PLUS_1                                     ;; 0f:699e $d8
    mC_10                                              ;; 0f:699f $a0
    mSTEREOPAN $03                                     ;; 0f:69a0 $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:69a2 $dc
    mB_10                                              ;; 0f:69a3 $ab
    mA_10                                              ;; 0f:69a4 $a9
    mG_10                                              ;; 0f:69a5 $a7
    mA_10                                              ;; 0f:69a6 $a9
    mSTEREOPAN $01                                     ;; 0f:69a7 $e6 $01
    mB_10                                              ;; 0f:69a9 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:69aa $d8
    mC_10                                              ;; 0f:69ab $a0
    mOCTAVE_MINUS_1                                    ;; 0f:69ac $dc
    mB_10                                              ;; 0f:69ad $ab
    mA_10                                              ;; 0f:69ae $a9
    mSTEREOPAN $03                                     ;; 0f:69af $e6 $03
    mB_10                                              ;; 0f:69b1 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:69b2 $d8
    mC_10                                              ;; 0f:69b3 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:69b4 $dc
    mB_10                                              ;; 0f:69b5 $ab
    mA_10                                              ;; 0f:69b6 $a9
    mSTEREOPAN $02                                     ;; 0f:69b7 $e6 $02
    mG_10                                              ;; 0f:69b9 $a7
    mA_10                                              ;; 0f:69ba $a9
    mB_10                                              ;; 0f:69bb $ab
    mOCTAVE_PLUS_1                                     ;; 0f:69bc $d8
    mC_10                                              ;; 0f:69bd $a0
    mOCTAVE_MINUS_1                                    ;; 0f:69be $dc
    mB_8                                               ;; 0f:69bf $8b
    mSTEREOPAN $03                                     ;; 0f:69c0 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:69c2 $d8
    mG_10                                              ;; 0f:69c3 $a7
    mA_10                                              ;; 0f:69c4 $a9
    mB_10                                              ;; 0f:69c5 $ab
    mA_10                                              ;; 0f:69c6 $a9
    mG_10                                              ;; 0f:69c7 $a7
    mD_10                                              ;; 0f:69c8 $a2
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:69c9 $e0 $c0 $7a
    mSTEREOPAN $01                                     ;; 0f:69cc $e6 $01
    mC_4                                               ;; 0f:69ce $40
    mF_8                                               ;; 0f:69cf $85
    mD_2                                               ;; 0f:69d0 $22
    mE_7                                               ;; 0f:69d1 $74
    mF_7                                               ;; 0f:69d2 $75
    mG_8                                               ;; 0f:69d3 $87
    mFis_7                                             ;; 0f:69d4 $76
    mGis_7                                             ;; 0f:69d5 $78
    mA_8                                               ;; 0f:69d6 $89
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:69d7 $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:69da $e5 $40
    mSTEREOPAN $03                                     ;; 0f:69dc $e6 $03
    mGis_7                                             ;; 0f:69de $78
    mA_7                                               ;; 0f:69df $79
    mB_8                                               ;; 0f:69e0 $8b
    mA_7                                               ;; 0f:69e1 $79
    mGis_7                                             ;; 0f:69e2 $78
    mFis_8                                             ;; 0f:69e3 $86
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:69e4 $e0 $ae $7a
    mE_10                                              ;; 0f:69e7 $a4
    mOCTAVE_MINUS_1                                    ;; 0f:69e8 $dc
    mGis_10                                            ;; 0f:69e9 $a8
    mB_10                                              ;; 0f:69ea $ab
    mOCTAVE_PLUS_1                                     ;; 0f:69eb $d8
    mE_10                                              ;; 0f:69ec $a4
    mFis_10                                            ;; 0f:69ed $a6
    mOCTAVE_MINUS_1                                    ;; 0f:69ee $dc
    mA_10                                              ;; 0f:69ef $a9
    mOCTAVE_PLUS_1                                     ;; 0f:69f0 $d8
    mD_10                                              ;; 0f:69f1 $a2
    mFis_10                                            ;; 0f:69f2 $a6
    mGis_10                                            ;; 0f:69f3 $a8
    mFis_10                                            ;; 0f:69f4 $a6
    mE_10                                              ;; 0f:69f5 $a4
    mD_10                                              ;; 0f:69f6 $a2
    mE_10                                              ;; 0f:69f7 $a4
    mD_10                                              ;; 0f:69f8 $a2
    mC_10                                              ;; 0f:69f9 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:69fa $dc
    mB_10                                              ;; 0f:69fb $ab
    mJUMP song13_channel1                              ;; 0f:69fc $e1 $bd $68

song13_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:69ff $e4 $4f $7a
    mWAVETABLE data_0f_7b0c                            ;; 0f:6a02 $e8 $0c $7b
    mVOLUME $20                                        ;; 0f:6a05 $e0 $20
    mSTEREOPAN $03                                     ;; 0f:6a07 $e6 $03
.data_0f_6a09:
    mCOUNTER $03                                       ;; 0f:6a09 $e3 $03
.data_0f_6a0b:
    mOCTAVE_1                                          ;; 0f:6a0b $d1
    mA_8                                               ;; 0f:6a0c $89
    mOCTAVE_PLUS_1                                     ;; 0f:6a0d $d8
    mA_10                                              ;; 0f:6a0e $a9
    mRest_10                                           ;; 0f:6a0f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a10 $dc
    mA_8                                               ;; 0f:6a11 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6a12 $d8
    mA_10                                              ;; 0f:6a13 $a9
    mRest_10                                           ;; 0f:6a14 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a15 $dc
    mA_8                                               ;; 0f:6a16 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6a17 $d8
    mA_10                                              ;; 0f:6a18 $a9
    mRest_10                                           ;; 0f:6a19 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a1a $dc
    mG_8                                               ;; 0f:6a1b $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a1c $d8
    mG_10                                              ;; 0f:6a1d $a7
    mRest_10                                           ;; 0f:6a1e $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a1f $dc
    mF_8                                               ;; 0f:6a20 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a21 $d8
    mF_10                                              ;; 0f:6a22 $a5
    mRest_10                                           ;; 0f:6a23 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a24 $dc
    mF_8                                               ;; 0f:6a25 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a26 $d8
    mF_10                                              ;; 0f:6a27 $a5
    mRest_10                                           ;; 0f:6a28 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a29 $dc
    mG_8                                               ;; 0f:6a2a $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a2b $d8
    mG_10                                              ;; 0f:6a2c $a7
    mRest_10                                           ;; 0f:6a2d $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a2e $dc
    mG_8                                               ;; 0f:6a2f $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a30 $d8
    mG_10                                              ;; 0f:6a31 $a7
    mRest_10                                           ;; 0f:6a32 $af
    mREPEAT .data_0f_6a0b                              ;; 0f:6a33 $e2 $0b $6a
    mC_8                                               ;; 0f:6a36 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a37 $d8
    mC_10                                              ;; 0f:6a38 $a0
    mRest_10                                           ;; 0f:6a39 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a3a $dc
    mC_8                                               ;; 0f:6a3b $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a3c $d8
    mC_10                                              ;; 0f:6a3d $a0
    mRest_10                                           ;; 0f:6a3e $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a3f $dc
    mC_8                                               ;; 0f:6a40 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a41 $d8
    mC_10                                              ;; 0f:6a42 $a0
    mRest_10                                           ;; 0f:6a43 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a44 $dc
    mC_8                                               ;; 0f:6a45 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a46 $d8
    mC_10                                              ;; 0f:6a47 $a0
    mRest_10                                           ;; 0f:6a48 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a49 $dc
    mE_10                                              ;; 0f:6a4a $a4
    mRest_10                                           ;; 0f:6a4b $af
    mE_10                                              ;; 0f:6a4c $a4
    mRest_10                                           ;; 0f:6a4d $af
    mE_10                                              ;; 0f:6a4e $a4
    mRest_10                                           ;; 0f:6a4f $af
    mE_10                                              ;; 0f:6a50 $a4
    mRest_10                                           ;; 0f:6a51 $af
    mE_7                                               ;; 0f:6a52 $74
    mFis_7                                             ;; 0f:6a53 $76
    mGis_8                                             ;; 0f:6a54 $88
    mOCTAVE_MINUS_1                                    ;; 0f:6a55 $dc
    mF_8                                               ;; 0f:6a56 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a57 $d8
    mF_10                                              ;; 0f:6a58 $a5
    mRest_10                                           ;; 0f:6a59 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a5a $dc
    mF_8                                               ;; 0f:6a5b $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a5c $d8
    mF_10                                              ;; 0f:6a5d $a5
    mRest_10                                           ;; 0f:6a5e $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a5f $dc
    mF_8                                               ;; 0f:6a60 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a61 $d8
    mF_10                                              ;; 0f:6a62 $a5
    mRest_10                                           ;; 0f:6a63 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a64 $dc
    mF_8                                               ;; 0f:6a65 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6a66 $d8
    mF_10                                              ;; 0f:6a67 $a5
    mRest_10                                           ;; 0f:6a68 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a69 $dc
    mG_8                                               ;; 0f:6a6a $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a6b $d8
    mG_10                                              ;; 0f:6a6c $a7
    mRest_10                                           ;; 0f:6a6d $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a6e $dc
    mG_8                                               ;; 0f:6a6f $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a70 $d8
    mG_10                                              ;; 0f:6a71 $a7
    mRest_10                                           ;; 0f:6a72 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a73 $dc
    mG_8                                               ;; 0f:6a74 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a75 $d8
    mG_10                                              ;; 0f:6a76 $a7
    mRest_10                                           ;; 0f:6a77 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a78 $dc
    mG_8                                               ;; 0f:6a79 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6a7a $d8
    mG_10                                              ;; 0f:6a7b $a7
    mRest_10                                           ;; 0f:6a7c $af
    mC_8                                               ;; 0f:6a7d $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a7e $d8
    mC_10                                              ;; 0f:6a7f $a0
    mRest_10                                           ;; 0f:6a80 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a81 $dc
    mC_8                                               ;; 0f:6a82 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a83 $d8
    mC_10                                              ;; 0f:6a84 $a0
    mRest_10                                           ;; 0f:6a85 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a86 $dc
    mC_8                                               ;; 0f:6a87 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6a88 $d8
    mC_10                                              ;; 0f:6a89 $a0
    mRest_10                                           ;; 0f:6a8a $af
    mOCTAVE_MINUS_2                                    ;; 0f:6a8b $dd
    mB_8                                               ;; 0f:6a8c $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6a8d $d8
    mB_10                                              ;; 0f:6a8e $ab
    mRest_10                                           ;; 0f:6a8f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a90 $dc
    mA_8                                               ;; 0f:6a91 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6a92 $d8
    mA_10                                              ;; 0f:6a93 $a9
    mRest_10                                           ;; 0f:6a94 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a95 $dc
    mA_8                                               ;; 0f:6a96 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6a97 $d8
    mA_10                                              ;; 0f:6a98 $a9
    mRest_10                                           ;; 0f:6a99 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6a9a $dc
    mSTEREOPAN $02                                     ;; 0f:6a9b $e6 $02
    mA_5                                               ;; 0f:6a9d $59
    mSTEREOPAN $01                                     ;; 0f:6a9e $e6 $01
    mG_5                                               ;; 0f:6aa0 $57
    mSTEREOPAN $03                                     ;; 0f:6aa1 $e6 $03
    mF_7                                               ;; 0f:6aa3 $75
    mOCTAVE_PLUS_1                                     ;; 0f:6aa4 $d8
    mF_7                                               ;; 0f:6aa5 $75
    mC_8                                               ;; 0f:6aa6 $80
    mRest_8                                            ;; 0f:6aa7 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6aa8 $dc
    mF_10                                              ;; 0f:6aa9 $a5
    mRest_10                                           ;; 0f:6aaa $af
    mF_10                                              ;; 0f:6aab $a5
    mRest_10                                           ;; 0f:6aac $af
    mF_10                                              ;; 0f:6aad $a5
    mRest_10                                           ;; 0f:6aae $af
    mG_7                                               ;; 0f:6aaf $77
    mOCTAVE_PLUS_1                                     ;; 0f:6ab0 $d8
    mG_7                                               ;; 0f:6ab1 $77
    mD_8                                               ;; 0f:6ab2 $82
    mRest_8                                            ;; 0f:6ab3 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6ab4 $dc
    mG_10                                              ;; 0f:6ab5 $a7
    mRest_10                                           ;; 0f:6ab6 $af
    mG_10                                              ;; 0f:6ab7 $a7
    mRest_10                                           ;; 0f:6ab8 $af
    mG_10                                              ;; 0f:6ab9 $a7
    mRest_10                                           ;; 0f:6aba $af
    mA_8                                               ;; 0f:6abb $89
    mOCTAVE_PLUS_1                                     ;; 0f:6abc $d8
    mA_10                                              ;; 0f:6abd $a9
    mRest_10                                           ;; 0f:6abe $af
    mOCTAVE_MINUS_1                                    ;; 0f:6abf $dc
    mA_8                                               ;; 0f:6ac0 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6ac1 $d8
    mA_10                                              ;; 0f:6ac2 $a9
    mRest_10                                           ;; 0f:6ac3 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6ac4 $dc
    mA_8                                               ;; 0f:6ac5 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6ac6 $d8
    mA_10                                              ;; 0f:6ac7 $a9
    mRest_10                                           ;; 0f:6ac8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6ac9 $dc
    mA_8                                               ;; 0f:6aca $89
    mOCTAVE_PLUS_1                                     ;; 0f:6acb $d8
    mA_10                                              ;; 0f:6acc $a9
    mRest_10                                           ;; 0f:6acd $af
    mOCTAVE_MINUS_1                                    ;; 0f:6ace $dc
    mA_8                                               ;; 0f:6acf $89
    mOCTAVE_PLUS_1                                     ;; 0f:6ad0 $d8
    mA_10                                              ;; 0f:6ad1 $a9
    mRest_10                                           ;; 0f:6ad2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6ad3 $dc
    mA_8                                               ;; 0f:6ad4 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6ad5 $d8
    mA_10                                              ;; 0f:6ad6 $a9
    mRest_10                                           ;; 0f:6ad7 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6ad8 $dc
    mSTEREOPAN $02                                     ;; 0f:6ad9 $e6 $02
    mA_5                                               ;; 0f:6adb $59
    mSTEREOPAN $01                                     ;; 0f:6adc $e6 $01
    mG_5                                               ;; 0f:6ade $57
    mSTEREOPAN $03                                     ;; 0f:6adf $e6 $03
    mF_10                                              ;; 0f:6ae1 $a5
    mRest_10                                           ;; 0f:6ae2 $af
    mF_10                                              ;; 0f:6ae3 $a5
    mRest_10                                           ;; 0f:6ae4 $af
    mF_10                                              ;; 0f:6ae5 $a5
    mRest_10                                           ;; 0f:6ae6 $af
    mOCTAVE_PLUS_1                                     ;; 0f:6ae7 $d8
    mF_4                                               ;; 0f:6ae8 $45
    mC_5                                               ;; 0f:6ae9 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6aea $dc
    mF_10                                              ;; 0f:6aeb $a5
    mRest_10                                           ;; 0f:6aec $af
    mF_10                                              ;; 0f:6aed $a5
    mRest_10                                           ;; 0f:6aee $af
    mF_10                                              ;; 0f:6aef $a5
    mRest_10                                           ;; 0f:6af0 $af
    mOCTAVE_PLUS_1                                     ;; 0f:6af1 $d8
    mF_4                                               ;; 0f:6af2 $45
    mC_5                                               ;; 0f:6af3 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6af4 $dc
    mE_10                                              ;; 0f:6af5 $a4
    mRest_10                                           ;; 0f:6af6 $af
    mE_10                                              ;; 0f:6af7 $a4
    mRest_10                                           ;; 0f:6af8 $af
    mE_10                                              ;; 0f:6af9 $a4
    mRest_10                                           ;; 0f:6afa $af
    mOCTAVE_PLUS_1                                     ;; 0f:6afb $d8
    mE_4                                               ;; 0f:6afc $44
    mOCTAVE_MINUS_1                                    ;; 0f:6afd $dc
    mB_5                                               ;; 0f:6afe $5b
    mE_10                                              ;; 0f:6aff $a4
    mRest_10                                           ;; 0f:6b00 $af
    mE_10                                              ;; 0f:6b01 $a4
    mRest_10                                           ;; 0f:6b02 $af
    mE_10                                              ;; 0f:6b03 $a4
    mRest_10                                           ;; 0f:6b04 $af
    mOCTAVE_PLUS_1                                     ;; 0f:6b05 $d8
    mE_4                                               ;; 0f:6b06 $44
    mOCTAVE_MINUS_1                                    ;; 0f:6b07 $dc
    mB_5                                               ;; 0f:6b08 $5b
    mF_8                                               ;; 0f:6b09 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6b0a $d8
    mF_10                                              ;; 0f:6b0b $a5
    mRest_10                                           ;; 0f:6b0c $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b0d $dc
    mF_8                                               ;; 0f:6b0e $85
    mOCTAVE_PLUS_1                                     ;; 0f:6b0f $d8
    mF_10                                              ;; 0f:6b10 $a5
    mRest_10                                           ;; 0f:6b11 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b12 $dc
    mG_8                                               ;; 0f:6b13 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6b14 $d8
    mG_10                                              ;; 0f:6b15 $a7
    mRest_10                                           ;; 0f:6b16 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b17 $dc
    mG_8                                               ;; 0f:6b18 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6b19 $d8
    mG_10                                              ;; 0f:6b1a $a7
    mRest_10                                           ;; 0f:6b1b $af
    mC_8                                               ;; 0f:6b1c $80
    mOCTAVE_PLUS_1                                     ;; 0f:6b1d $d8
    mC_10                                              ;; 0f:6b1e $a0
    mRest_10                                           ;; 0f:6b1f $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b20 $dc
    mC_8                                               ;; 0f:6b21 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6b22 $d8
    mC_10                                              ;; 0f:6b23 $a0
    mRest_10                                           ;; 0f:6b24 $af
    mOCTAVE_MINUS_2                                    ;; 0f:6b25 $dd
    mB_8                                               ;; 0f:6b26 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6b27 $d8
    mB_10                                              ;; 0f:6b28 $ab
    mRest_10                                           ;; 0f:6b29 $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b2a $dc
    mB_8                                               ;; 0f:6b2b $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6b2c $d8
    mB_10                                              ;; 0f:6b2d $ab
    mRest_10                                           ;; 0f:6b2e $af
    mE_10                                              ;; 0f:6b2f $a4
    mRest_10                                           ;; 0f:6b30 $af
    mE_10                                              ;; 0f:6b31 $a4
    mRest_10                                           ;; 0f:6b32 $af
    mE_10                                              ;; 0f:6b33 $a4
    mRest_10                                           ;; 0f:6b34 $af
    mE_10                                              ;; 0f:6b35 $a4
    mRest_10                                           ;; 0f:6b36 $af
    mD_10                                              ;; 0f:6b37 $a2
    mRest_10                                           ;; 0f:6b38 $af
    mD_10                                              ;; 0f:6b39 $a2
    mRest_10                                           ;; 0f:6b3a $af
    mD_10                                              ;; 0f:6b3b $a2
    mRest_10                                           ;; 0f:6b3c $af
    mD_10                                              ;; 0f:6b3d $a2
    mRest_10                                           ;; 0f:6b3e $af
    mOCTAVE_MINUS_1                                    ;; 0f:6b3f $dc
    mSTEREOPAN $02                                     ;; 0f:6b40 $e6 $02
    mE_5                                               ;; 0f:6b42 $54
    mOCTAVE_PLUS_1                                     ;; 0f:6b43 $d8
    mSTEREOPAN $03                                     ;; 0f:6b44 $e6 $03
    mE_5                                               ;; 0f:6b46 $54
    mOCTAVE_MINUS_1                                    ;; 0f:6b47 $dc
    mSTEREOPAN $01                                     ;; 0f:6b48 $e6 $01
    mB_5                                               ;; 0f:6b4a $5b
    mSTEREOPAN $03                                     ;; 0f:6b4b $e6 $03
    mE_5                                               ;; 0f:6b4d $54
    mJUMP .data_0f_6a09                                ;; 0f:6b4e $e1 $09 $6a
    db   $57, $6b, $83, $6c, $a9, $6d                  ;; 0f:6b51 ??????

song14_channel2:
    mTEMPO $3e                                         ;; 0f:6b57 $e7 $3e
    mVIBRATO frequencyDeltaData                        ;; 0f:6b59 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6b5c $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:6b5f $e5 $40
    mOCTAVE_2                                          ;; 0f:6b61 $d2
    mG_8                                               ;; 0f:6b62 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6b63 $d8
    mC_8                                               ;; 0f:6b64 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6b65 $dc
    mA_1                                               ;; 0f:6b66 $19
    mG_8                                               ;; 0f:6b67 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6b68 $d8
    mC_8                                               ;; 0f:6b69 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6b6a $dc
    mA_4                                               ;; 0f:6b6b $49
    mA_8                                               ;; 0f:6b6c $89
    mAis_8                                             ;; 0f:6b6d $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6b6e $d8
    mC_8                                               ;; 0f:6b6f $80
    mC_5                                               ;; 0f:6b70 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6b71 $dc
    mAis_5                                             ;; 0f:6b72 $5a
    mF_5                                               ;; 0f:6b73 $55
    mG_5                                               ;; 0f:6b74 $57
    mA_2                                               ;; 0f:6b75 $29
    mRest_8                                            ;; 0f:6b76 $8f
    mF_8                                               ;; 0f:6b77 $85
    mG_8                                               ;; 0f:6b78 $87
    mA_8                                               ;; 0f:6b79 $89
    mAis_5                                             ;; 0f:6b7a $5a
    mA_8                                               ;; 0f:6b7b $89
    mAis_8                                             ;; 0f:6b7c $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6b7d $d8
    mC_5                                               ;; 0f:6b7e $50
    mOCTAVE_MINUS_1                                    ;; 0f:6b7f $dc
    mA_5                                               ;; 0f:6b80 $59
    mRest_8                                            ;; 0f:6b81 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6b82 $d8
    mD_8                                               ;; 0f:6b83 $82
    mE_8                                               ;; 0f:6b84 $84
    mF_8                                               ;; 0f:6b85 $85
    mE_8                                               ;; 0f:6b86 $84
    mD_8                                               ;; 0f:6b87 $82
    mC_8                                               ;; 0f:6b88 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6b89 $dc
    mB_8                                               ;; 0f:6b8a $8b
    mOCTAVE_PLUS_1                                     ;; 0f:6b8b $d8
    mC_2                                               ;; 0f:6b8c $20
    mWait_8                                            ;; 0f:6b8d $8e
    mOCTAVE_MINUS_1                                    ;; 0f:6b8e $dc
    mA_8                                               ;; 0f:6b8f $89
    mAis_8                                             ;; 0f:6b90 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6b91 $d8
    mC_8                                               ;; 0f:6b92 $80
    mC_8                                               ;; 0f:6b93 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6b94 $dc
    mAis_8                                             ;; 0f:6b95 $8a
    mA_8                                               ;; 0f:6b96 $89
    mAis_8                                             ;; 0f:6b97 $8a
    mD_2                                               ;; 0f:6b98 $22
    mE_2                                               ;; 0f:6b99 $24
    mF_2                                               ;; 0f:6b9a $25
    mWait_2                                            ;; 0f:6b9b $2e
    mRest_2                                            ;; 0f:6b9c $2f
    mCOUNTER $02                                       ;; 0f:6b9d $e3 $02
.data_0f_6b9f:
    mDUTYCYCLE $80                                     ;; 0f:6b9f $e5 $80
    mA_5                                               ;; 0f:6ba1 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6ba2 $d8
    mC_5                                               ;; 0f:6ba3 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6ba4 $dc
    mAis_5                                             ;; 0f:6ba5 $5a
    mA_5                                               ;; 0f:6ba6 $59
    mF_5                                               ;; 0f:6ba7 $55
    mG_5                                               ;; 0f:6ba8 $57
    mA_2                                               ;; 0f:6ba9 $29
    mOCTAVE_PLUS_1                                     ;; 0f:6baa $d8
    mD_2                                               ;; 0f:6bab $22
    mRest_8                                            ;; 0f:6bac $8f
    mC_8                                               ;; 0f:6bad $80
    mOCTAVE_MINUS_1                                    ;; 0f:6bae $dc
    mAis_8                                             ;; 0f:6baf $8a
    mA_8                                               ;; 0f:6bb0 $89
    mG_2                                               ;; 0f:6bb1 $27
    mRest_8                                            ;; 0f:6bb2 $8f
    mG_8                                               ;; 0f:6bb3 $87
    mA_8                                               ;; 0f:6bb4 $89
    mAis_8                                             ;; 0f:6bb5 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6bb6 $d8
    mC_5                                               ;; 0f:6bb7 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6bb8 $dc
    mA_8                                               ;; 0f:6bb9 $89
    mAis_8                                             ;; 0f:6bba $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6bbb $d8
    mC_5                                               ;; 0f:6bbc $50
    mF_5                                               ;; 0f:6bbd $55
    mE_5                                               ;; 0f:6bbe $54
    mD_5                                               ;; 0f:6bbf $52
    mC_5                                               ;; 0f:6bc0 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6bc1 $dc
    mAis_5                                             ;; 0f:6bc2 $5a
    mJUMPIF $01, .data_0f_6bd4                         ;; 0f:6bc3 $eb $01 $d4 $6b
    mA_5                                               ;; 0f:6bc7 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6bc8 $d8
    mC_5                                               ;; 0f:6bc9 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6bca $dc
    mAis_8                                             ;; 0f:6bcb $8a
    mA_8                                               ;; 0f:6bcc $89
    mG_8                                               ;; 0f:6bcd $87
    mF_8                                               ;; 0f:6bce $85
    mA_2                                               ;; 0f:6bcf $29
    mG_2                                               ;; 0f:6bd0 $27
    mREPEAT .data_0f_6b9f                              ;; 0f:6bd1 $e2 $9f $6b
.data_0f_6bd4:
    mA_5                                               ;; 0f:6bd4 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6bd5 $d8
    mC_5                                               ;; 0f:6bd6 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6bd7 $dc
    mAis_8                                             ;; 0f:6bd8 $8a
    mA_8                                               ;; 0f:6bd9 $89
    mD_8                                               ;; 0f:6bda $82
    mE_8                                               ;; 0f:6bdb $84
    mF_2                                               ;; 0f:6bdc $25
    mRest_8                                            ;; 0f:6bdd $8f
    mDUTYCYCLE $40                                     ;; 0f:6bde $e5 $40
    mA_8                                               ;; 0f:6be0 $89
    mAis_8                                             ;; 0f:6be1 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6be2 $d8
    mC_8                                               ;; 0f:6be3 $80
    mCOUNTER $02                                       ;; 0f:6be4 $e3 $02
.data_0f_6be6:
    mD_2                                               ;; 0f:6be6 $22
    mWait_8                                            ;; 0f:6be7 $8e
    mOCTAVE_MINUS_1                                    ;; 0f:6be8 $dc
    mG_8                                               ;; 0f:6be9 $87
    mA_8                                               ;; 0f:6bea $89
    mAis_8                                             ;; 0f:6beb $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6bec $d8
    mC_2                                               ;; 0f:6bed $20
    mWait_8                                            ;; 0f:6bee $8e
    mOCTAVE_MINUS_1                                    ;; 0f:6bef $dc
    mF_8                                               ;; 0f:6bf0 $85
    mG_8                                               ;; 0f:6bf1 $87
    mA_8                                               ;; 0f:6bf2 $89
    mAis_2                                             ;; 0f:6bf3 $2a
    mWait_8                                            ;; 0f:6bf4 $8e
    mG_8                                               ;; 0f:6bf5 $87
    mOCTAVE_PLUS_1                                     ;; 0f:6bf6 $d8
    mC_8                                               ;; 0f:6bf7 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6bf8 $dc
    mG_8                                               ;; 0f:6bf9 $87
    mAis_5                                             ;; 0f:6bfa $5a
    mA_5                                               ;; 0f:6bfb $59
    mAis_5                                             ;; 0f:6bfc $5a
    mOCTAVE_PLUS_1                                     ;; 0f:6bfd $d8
    mC_5                                               ;; 0f:6bfe $50
    mD_2                                               ;; 0f:6bff $22
    mWait_8                                            ;; 0f:6c00 $8e
    mE_8                                               ;; 0f:6c01 $84
    mF_8                                               ;; 0f:6c02 $85
    mG_8                                               ;; 0f:6c03 $87
    mC_2                                               ;; 0f:6c04 $20
    mWait_8                                            ;; 0f:6c05 $8e
    mD_8                                               ;; 0f:6c06 $82
    mE_8                                               ;; 0f:6c07 $84
    mF_8                                               ;; 0f:6c08 $85
    mF_5                                               ;; 0f:6c09 $55
    mD_5                                               ;; 0f:6c0a $52
    mE_5                                               ;; 0f:6c0b $54
    mF_5                                               ;; 0f:6c0c $55
    mF_5                                               ;; 0f:6c0d $55
    mTEMPO $3a                                         ;; 0f:6c0e $e7 $3a
    mWait_5                                            ;; 0f:6c10 $5e
    mTEMPO $36                                         ;; 0f:6c11 $e7 $36
    mE_5                                               ;; 0f:6c13 $54
    mWait_8                                            ;; 0f:6c14 $8e
    mRest_8                                            ;; 0f:6c15 $8f
    mJUMPIF $01, .data_0f_6c54                         ;; 0f:6c16 $eb $01 $54 $6c
    mDUTYCYCLE $80                                     ;; 0f:6c1a $e5 $80
    mTEMPO $3e                                         ;; 0f:6c1c $e7 $3e
    mOCTAVE_MINUS_1                                    ;; 0f:6c1e $dc
    mA_5                                               ;; 0f:6c1f $59
    mOCTAVE_PLUS_1                                     ;; 0f:6c20 $d8
    mC_5                                               ;; 0f:6c21 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6c22 $dc
    mAis_5                                             ;; 0f:6c23 $5a
    mA_5                                               ;; 0f:6c24 $59
    mF_5                                               ;; 0f:6c25 $55
    mG_5                                               ;; 0f:6c26 $57
    mA_2                                               ;; 0f:6c27 $29
    mOCTAVE_PLUS_1                                     ;; 0f:6c28 $d8
    mD_2                                               ;; 0f:6c29 $22
    mRest_8                                            ;; 0f:6c2a $8f
    mC_8                                               ;; 0f:6c2b $80
    mOCTAVE_MINUS_1                                    ;; 0f:6c2c $dc
    mAis_8                                             ;; 0f:6c2d $8a
    mA_8                                               ;; 0f:6c2e $89
    mG_2                                               ;; 0f:6c2f $27
    mRest_8                                            ;; 0f:6c30 $8f
    mG_8                                               ;; 0f:6c31 $87
    mA_8                                               ;; 0f:6c32 $89
    mAis_8                                             ;; 0f:6c33 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6c34 $d8
    mC_5                                               ;; 0f:6c35 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6c36 $dc
    mA_8                                               ;; 0f:6c37 $89
    mAis_8                                             ;; 0f:6c38 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6c39 $d8
    mC_5                                               ;; 0f:6c3a $50
    mF_5                                               ;; 0f:6c3b $55
    mE_5                                               ;; 0f:6c3c $54
    mD_5                                               ;; 0f:6c3d $52
    mC_5                                               ;; 0f:6c3e $50
    mOCTAVE_MINUS_1                                    ;; 0f:6c3f $dc
    mAis_5                                             ;; 0f:6c40 $5a
    mA_5                                               ;; 0f:6c41 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6c42 $d8
    mC_5                                               ;; 0f:6c43 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6c44 $dc
    mAis_8                                             ;; 0f:6c45 $8a
    mA_8                                               ;; 0f:6c46 $89
    mD_8                                               ;; 0f:6c47 $82
    mE_8                                               ;; 0f:6c48 $84
    mF_2                                               ;; 0f:6c49 $25
    mRest_8                                            ;; 0f:6c4a $8f
    mDUTYCYCLE $40                                     ;; 0f:6c4b $e5 $40
    mA_8                                               ;; 0f:6c4d $89
    mAis_8                                             ;; 0f:6c4e $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6c4f $d8
    mC_8                                               ;; 0f:6c50 $80
    mREPEAT .data_0f_6be6                              ;; 0f:6c51 $e2 $e6 $6b
.data_0f_6c54:
    mTEMPO $3e                                         ;; 0f:6c54 $e7 $3e
    mDUTYCYCLE $80                                     ;; 0f:6c56 $e5 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6c58 $dc
    mA_5                                               ;; 0f:6c59 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6c5a $d8
    mC_5                                               ;; 0f:6c5b $50
    mOCTAVE_MINUS_1                                    ;; 0f:6c5c $dc
    mAis_5                                             ;; 0f:6c5d $5a
    mA_5                                               ;; 0f:6c5e $59
    mF_5                                               ;; 0f:6c5f $55
    mG_5                                               ;; 0f:6c60 $57
    mTEMPO $36                                         ;; 0f:6c61 $e7 $36
    mA_5                                               ;; 0f:6c63 $59
    mG_8                                               ;; 0f:6c64 $87
    mA_8                                               ;; 0f:6c65 $89
    mTEMPO $3e                                         ;; 0f:6c66 $e7 $3e
    mAis_2                                             ;; 0f:6c68 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6c69 $d8
    mC_2                                               ;; 0f:6c6a $20
    mD_2                                               ;; 0f:6c6b $22
    mTEMPO $39                                         ;; 0f:6c6c $e7 $39
    mE_5                                               ;; 0f:6c6e $54
    mTEMPO $36                                         ;; 0f:6c6f $e7 $36
    mE_5                                               ;; 0f:6c71 $54
    mTEMPO $3e                                         ;; 0f:6c72 $e7 $3e
    mF_0                                               ;; 0f:6c74 $05
    mRest_5                                            ;; 0f:6c75 $5f
    mTEMPO $38                                         ;; 0f:6c76 $e7 $38
    mRest_5                                            ;; 0f:6c78 $5f
    mTEMPO $33                                         ;; 0f:6c79 $e7 $33
    mRest_5                                            ;; 0f:6c7b $5f
    mTEMPO $2f                                         ;; 0f:6c7c $e7 $2f
    mRest_5                                            ;; 0f:6c7e $5f
    mTEMPO $2a                                         ;; 0f:6c7f $e7 $2a
    mF_0                                               ;; 0f:6c81 $05
    mEND                                               ;; 0f:6c82 $ff

song14_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:6c83 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6c86 $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:6c89 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:6c8b $e6 $03
    mRest_8                                            ;; 0f:6c8d $8f
    mOCTAVE_1                                          ;; 0f:6c8e $d1
    mA_8                                               ;; 0f:6c8f $89
    mOCTAVE_PLUS_1                                     ;; 0f:6c90 $d8
    mC_8                                               ;; 0f:6c91 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6c92 $dc
    mA_8                                               ;; 0f:6c93 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6c94 $d8
    mF_5                                               ;; 0f:6c95 $55
    mE_5                                               ;; 0f:6c96 $54
    mDis_5                                             ;; 0f:6c97 $53
    mC_5                                               ;; 0f:6c98 $50
    mWait_8                                            ;; 0f:6c99 $8e
    mF_8                                               ;; 0f:6c9a $85
    mG_8                                               ;; 0f:6c9b $87
    mA_8                                               ;; 0f:6c9c $89
    mD_2                                               ;; 0f:6c9d $22
    mOCTAVE_MINUS_1                                    ;; 0f:6c9e $dc
    mAis_2                                             ;; 0f:6c9f $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6ca0 $d8
    mC_2                                               ;; 0f:6ca1 $20
    mRest_8                                            ;; 0f:6ca2 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6ca3 $dc
    mA_4                                               ;; 0f:6ca4 $49
    mOCTAVE_PLUS_1                                     ;; 0f:6ca5 $d8
    mD_2                                               ;; 0f:6ca6 $22
    mE_5                                               ;; 0f:6ca7 $54
    mC_5                                               ;; 0f:6ca8 $50
    mRest_8                                            ;; 0f:6ca9 $8f
    mF_4                                               ;; 0f:6caa $45
    mGis_5                                             ;; 0f:6cab $58
    mA_8                                               ;; 0f:6cac $89
    mE_8                                               ;; 0f:6cad $84
    mRest_8                                            ;; 0f:6cae $8f
    mE_8                                               ;; 0f:6caf $84
    mA_8                                               ;; 0f:6cb0 $89
    mG_8                                               ;; 0f:6cb1 $87
    mFis_5                                             ;; 0f:6cb2 $56
    mG_8                                               ;; 0f:6cb3 $87
    mA_8                                               ;; 0f:6cb4 $89
    mD_5                                               ;; 0f:6cb5 $52
    mC_5                                               ;; 0f:6cb6 $50
    mOCTAVE_MINUS_1                                    ;; 0f:6cb7 $dc
    mAis_2                                             ;; 0f:6cb8 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6cb9 $d8
    mC_5                                               ;; 0f:6cba $50
    mOCTAVE_MINUS_1                                    ;; 0f:6cbb $dc
    mAis_5                                             ;; 0f:6cbc $5a
    mA_2                                               ;; 0f:6cbd $29
    mWait_2                                            ;; 0f:6cbe $2e
    mRest_2                                            ;; 0f:6cbf $2f
    mOCTAVE_PLUS_1                                     ;; 0f:6cc0 $d8
    mCOUNTER $02                                       ;; 0f:6cc1 $e3 $02
.data_0f_6cc3:
    mVOLUME_ENVELOPE data_0f_7ac6                      ;; 0f:6cc3 $e0 $c6 $7a
    mDUTYCYCLE $40                                     ;; 0f:6cc6 $e5 $40
    mF_2                                               ;; 0f:6cc8 $25
    mCis_2                                             ;; 0f:6cc9 $21
    mD_2                                               ;; 0f:6cca $22
    mDis_8                                             ;; 0f:6ccb $83
    mC_8                                               ;; 0f:6ccc $80
    mD_8                                               ;; 0f:6ccd $82
    mDis_8                                             ;; 0f:6cce $83
    mF_5                                               ;; 0f:6ccf $55
    mAis_5                                             ;; 0f:6cd0 $5a
    mE_5                                               ;; 0f:6cd1 $54
    mD_8                                               ;; 0f:6cd2 $82
    mC_8                                               ;; 0f:6cd3 $80
    mRest_8                                            ;; 0f:6cd4 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6cd5 $dc
    mAis_8                                             ;; 0f:6cd6 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6cd7 $d8
    mC_8                                               ;; 0f:6cd8 $80
    mD_8                                               ;; 0f:6cd9 $82
    mE_5                                               ;; 0f:6cda $54
    mF_8                                               ;; 0f:6cdb $85
    mG_8                                               ;; 0f:6cdc $87
    mA_8                                               ;; 0f:6cdd $89
    mG_8                                               ;; 0f:6cde $87
    mF_5                                               ;; 0f:6cdf $55
    mA_2                                               ;; 0f:6ce0 $29
    mF_0                                               ;; 0f:6ce1 $05
    mJUMPIF $01, .data_0f_6cf3                         ;; 0f:6ce2 $eb $01 $f3 $6c
    mE_5                                               ;; 0f:6ce6 $54
    mG_5                                               ;; 0f:6ce7 $57
    mD_5                                               ;; 0f:6ce8 $52
    mE_8                                               ;; 0f:6ce9 $84
    mD_8                                               ;; 0f:6cea $82
    mRest_8                                            ;; 0f:6ceb $8f
    mC_8                                               ;; 0f:6cec $80
    mF_8                                               ;; 0f:6ced $85
    mC_8                                               ;; 0f:6cee $80
    mE_2                                               ;; 0f:6cef $24
    mREPEAT .data_0f_6cc3                              ;; 0f:6cf0 $e2 $c3 $6c
.data_0f_6cf3:
    mRest_8                                            ;; 0f:6cf3 $8f
    mC_8                                               ;; 0f:6cf4 $80
    mE_8                                               ;; 0f:6cf5 $84
    mC_8                                               ;; 0f:6cf6 $80
    mD_5                                               ;; 0f:6cf7 $52
    mOCTAVE_MINUS_1                                    ;; 0f:6cf8 $dc
    mAis_5                                             ;; 0f:6cf9 $5a
    mA_2                                               ;; 0f:6cfa $29
    mRest_8                                            ;; 0f:6cfb $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6cfc $d8
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6cfd $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:6d00 $e5 $00
    mF_8                                               ;; 0f:6d02 $85
    mG_8                                               ;; 0f:6d03 $87
    mA_8                                               ;; 0f:6d04 $89
    mCOUNTER $02                                       ;; 0f:6d05 $e3 $02
.data_0f_6d07:
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:6d07 $e0 $c2 $7a
    mRest_8                                            ;; 0f:6d0a $8f
    mD_8                                               ;; 0f:6d0b $82
    mE_8                                               ;; 0f:6d0c $84
    mF_8                                               ;; 0f:6d0d $85
    mE_2                                               ;; 0f:6d0e $24
    mRest_8                                            ;; 0f:6d0f $8f
    mC_8                                               ;; 0f:6d10 $80
    mD_8                                               ;; 0f:6d11 $82
    mE_8                                               ;; 0f:6d12 $84
    mD_5                                               ;; 0f:6d13 $52
    mE_8                                               ;; 0f:6d14 $84
    mF_8                                               ;; 0f:6d15 $85
    mD_8                                               ;; 0f:6d16 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6d17 $dc
    mAis_8                                             ;; 0f:6d18 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6d19 $d8
    mC_8                                               ;; 0f:6d1a $80
    mD_8                                               ;; 0f:6d1b $82
    mC_5                                               ;; 0f:6d1c $50
    mE_8                                               ;; 0f:6d1d $84
    mC_8                                               ;; 0f:6d1e $80
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6d1f $e0 $82 $7a
    mD_5                                               ;; 0f:6d22 $52
    mC_5                                               ;; 0f:6d23 $50
    mG_5                                               ;; 0f:6d24 $57
    mA_5                                               ;; 0f:6d25 $59
    mVOLUME_ENVELOPE data_0f_7ac2                      ;; 0f:6d26 $e0 $c2 $7a
    mRest_8                                            ;; 0f:6d29 $8f
    mD_8                                               ;; 0f:6d2a $82
    mE_8                                               ;; 0f:6d2b $84
    mF_8                                               ;; 0f:6d2c $85
    mE_8                                               ;; 0f:6d2d $84
    mG_8                                               ;; 0f:6d2e $87
    mA_8                                               ;; 0f:6d2f $89
    mAis_8                                             ;; 0f:6d30 $8a
    mRest_8                                            ;; 0f:6d31 $8f
    mC_8                                               ;; 0f:6d32 $80
    mD_8                                               ;; 0f:6d33 $82
    mE_8                                               ;; 0f:6d34 $84
    mD_8                                               ;; 0f:6d35 $82
    mF_8                                               ;; 0f:6d36 $85
    mG_8                                               ;; 0f:6d37 $87
    mA_8                                               ;; 0f:6d38 $89
    mAis_2                                             ;; 0f:6d39 $2a
    mB_2                                               ;; 0f:6d3a $2b
    mRest_8                                            ;; 0f:6d3b $8f
    mAis_8                                             ;; 0f:6d3c $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6d3d $d8
    mC_8                                               ;; 0f:6d3e $80
    mD_8                                               ;; 0f:6d3f $82
    mOCTAVE_MINUS_1                                    ;; 0f:6d40 $dc
    mG_4                                               ;; 0f:6d41 $47
    mRest_8                                            ;; 0f:6d42 $8f
    mJUMPIF $01, .data_0f_6d7b                         ;; 0f:6d43 $eb $01 $7b $6d
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:6d47 $e0 $c4 $7a
    mDUTYCYCLE $40                                     ;; 0f:6d4a $e5 $40
    mF_2                                               ;; 0f:6d4c $25
    mCis_2                                             ;; 0f:6d4d $21
    mD_2                                               ;; 0f:6d4e $22
    mDis_8                                             ;; 0f:6d4f $83
    mC_8                                               ;; 0f:6d50 $80
    mD_8                                               ;; 0f:6d51 $82
    mDis_8                                             ;; 0f:6d52 $83
    mD_5                                               ;; 0f:6d53 $52
    mAis_5                                             ;; 0f:6d54 $5a
    mE_5                                               ;; 0f:6d55 $54
    mD_8                                               ;; 0f:6d56 $82
    mC_8                                               ;; 0f:6d57 $80
    mRest_8                                            ;; 0f:6d58 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6d59 $dc
    mAis_8                                             ;; 0f:6d5a $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6d5b $d8
    mC_8                                               ;; 0f:6d5c $80
    mD_8                                               ;; 0f:6d5d $82
    mE_5                                               ;; 0f:6d5e $54
    mF_8                                               ;; 0f:6d5f $85
    mG_8                                               ;; 0f:6d60 $87
    mA_8                                               ;; 0f:6d61 $89
    mG_8                                               ;; 0f:6d62 $87
    mF_5                                               ;; 0f:6d63 $55
    mA_2                                               ;; 0f:6d64 $29
    mF_0                                               ;; 0f:6d65 $05
    mRest_8                                            ;; 0f:6d66 $8f
    mC_8                                               ;; 0f:6d67 $80
    mE_8                                               ;; 0f:6d68 $84
    mC_8                                               ;; 0f:6d69 $80
    mD_5                                               ;; 0f:6d6a $52
    mOCTAVE_MINUS_1                                    ;; 0f:6d6b $dc
    mAis_5                                             ;; 0f:6d6c $5a
    mA_2                                               ;; 0f:6d6d $29
    mRest_8                                            ;; 0f:6d6e $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6d6f $d8
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6d70 $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:6d73 $e5 $00
    mF_8                                               ;; 0f:6d75 $85
    mG_8                                               ;; 0f:6d76 $87
    mA_8                                               ;; 0f:6d77 $89
    mREPEAT .data_0f_6d07                              ;; 0f:6d78 $e2 $07 $6d
.data_0f_6d7b:
    mDUTYCYCLE $40                                     ;; 0f:6d7b $e5 $40
    mF_2                                               ;; 0f:6d7d $25
    mCis_2                                             ;; 0f:6d7e $21
    mD_2                                               ;; 0f:6d7f $22
    mDis_5                                             ;; 0f:6d80 $53
    mRest_5                                            ;; 0f:6d81 $5f
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6d82 $e0 $82 $7a
    mRest_8                                            ;; 0f:6d85 $8f
    mD_8                                               ;; 0f:6d86 $82
    mE_8                                               ;; 0f:6d87 $84
    mF_8                                               ;; 0f:6d88 $85
    mRest_8                                            ;; 0f:6d89 $8f
    mE_8                                               ;; 0f:6d8a $84
    mF_8                                               ;; 0f:6d8b $85
    mG_8                                               ;; 0f:6d8c $87
    mRest_8                                            ;; 0f:6d8d $8f
    mF_8                                               ;; 0f:6d8e $85
    mG_8                                               ;; 0f:6d8f $87
    mA_8                                               ;; 0f:6d90 $89
    mG_8                                               ;; 0f:6d91 $87
    mAis_8                                             ;; 0f:6d92 $8a
    mA_8                                               ;; 0f:6d93 $89
    mG_8                                               ;; 0f:6d94 $87
    mRest_8                                            ;; 0f:6d95 $8f
    mA_8                                               ;; 0f:6d96 $89
    mAis_8                                             ;; 0f:6d97 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6d98 $d8
    mC_8                                               ;; 0f:6d99 $80
    mCis_5                                             ;; 0f:6d9a $51
    mC_8                                               ;; 0f:6d9b $80
    mOCTAVE_MINUS_1                                    ;; 0f:6d9c $dc
    mAis_8                                             ;; 0f:6d9d $8a
    mRest_8                                            ;; 0f:6d9e $8f
    mA_8                                               ;; 0f:6d9f $89
    mAis_8                                             ;; 0f:6da0 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6da1 $d8
    mC_8                                               ;; 0f:6da2 $80
    mCis_5                                             ;; 0f:6da3 $51
    mC_8                                               ;; 0f:6da4 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6da5 $dc
    mAis_8                                             ;; 0f:6da6 $8a
    mA_0                                               ;; 0f:6da7 $09
    mEND                                               ;; 0f:6da8 $ff

song14_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:6da9 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:6dac $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:6daf $e0 $40
    mOCTAVE_2                                          ;; 0f:6db1 $d2
    mF_0                                               ;; 0f:6db2 $05
    mDis_0                                             ;; 0f:6db3 $03
    mOCTAVE_MINUS_1                                    ;; 0f:6db4 $dc
    mAis_2                                             ;; 0f:6db5 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6db6 $d8
    mCis_2                                             ;; 0f:6db7 $21
    mOCTAVE_MINUS_1                                    ;; 0f:6db8 $dc
    mA_5                                               ;; 0f:6db9 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6dba $d8
    mE_5                                               ;; 0f:6dbb $54
    mD_5                                               ;; 0f:6dbc $52
    mC_5                                               ;; 0f:6dbd $50
    mOCTAVE_MINUS_1                                    ;; 0f:6dbe $dc
    mG_2                                               ;; 0f:6dbf $27
    mA_5                                               ;; 0f:6dc0 $59
    mOCTAVE_PLUS_1                                     ;; 0f:6dc1 $d8
    mE_5                                               ;; 0f:6dc2 $54
    mOCTAVE_MINUS_1                                    ;; 0f:6dc3 $dc
    mAis_2                                             ;; 0f:6dc4 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6dc5 $d8
    mE_5                                               ;; 0f:6dc6 $54
    mFis_8                                             ;; 0f:6dc7 $86
    mGis_8                                             ;; 0f:6dc8 $88
    mRest_5                                            ;; 0f:6dc9 $5f
    mA_5                                               ;; 0f:6dca $59
    mD_5                                               ;; 0f:6dcb $52
    mE_8                                               ;; 0f:6dcc $84
    mFis_8                                             ;; 0f:6dcd $86
    mOCTAVE_MINUS_1                                    ;; 0f:6dce $dc
    mG_5                                               ;; 0f:6dcf $57
    mA_5                                               ;; 0f:6dd0 $59
    mAis_2                                             ;; 0f:6dd1 $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6dd2 $d8
    mC_2                                               ;; 0f:6dd3 $20
    mRest_8                                            ;; 0f:6dd4 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6dd5 $dc
    mF_8                                               ;; 0f:6dd6 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6dd7 $d8
    mC_8                                               ;; 0f:6dd8 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6dd9 $dc
    mA_8                                               ;; 0f:6dda $89
    mOCTAVE_PLUS_1                                     ;; 0f:6ddb $d8
    mF_5                                               ;; 0f:6ddc $55
    mC_5                                               ;; 0f:6ddd $50
    mOCTAVE_MINUS_1                                    ;; 0f:6dde $dc
    mF_4                                               ;; 0f:6ddf $45
    mRest_8                                            ;; 0f:6de0 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:6de1 $d8
    mCOUNTER $02                                       ;; 0f:6de2 $e3 $02
.data_0f_6de4:
    mWAVETABLE wavePatternsData                        ;; 0f:6de4 $e8 $cc $7a
    mF_2                                               ;; 0f:6de7 $25
    mE_2                                               ;; 0f:6de8 $24
    mD_2                                               ;; 0f:6de9 $22
    mC_2                                               ;; 0f:6dea $20
    mOCTAVE_MINUS_1                                    ;; 0f:6deb $dc
    mAis_2                                             ;; 0f:6dec $2a
    mA_2                                               ;; 0f:6ded $29
    mG_5                                               ;; 0f:6dee $57
    mA_8                                               ;; 0f:6def $89
    mAis_8                                             ;; 0f:6df0 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6df1 $d8
    mC_2                                               ;; 0f:6df2 $20
    mF_2                                               ;; 0f:6df3 $25
    mDis_2                                             ;; 0f:6df4 $23
    mAis_0                                             ;; 0f:6df5 $0a
    mJUMPIF $01, .data_0f_6e06                         ;; 0f:6df6 $eb $01 $06 $6e
    mOCTAVE_MINUS_1                                    ;; 0f:6dfa $dc
    mA_2                                               ;; 0f:6dfb $29
    mG_2                                               ;; 0f:6dfc $27
    mOCTAVE_PLUS_1                                     ;; 0f:6dfd $d8
    mC_2                                               ;; 0f:6dfe $20
    mWait_8                                            ;; 0f:6dff $8e
    mAis_8                                             ;; 0f:6e00 $8a
    mA_8                                               ;; 0f:6e01 $89
    mG_8                                               ;; 0f:6e02 $87
    mREPEAT .data_0f_6de4                              ;; 0f:6e03 $e2 $e4 $6d
.data_0f_6e06:
    mOCTAVE_MINUS_1                                    ;; 0f:6e06 $dc
    mA_2                                               ;; 0f:6e07 $29
    mG_5                                               ;; 0f:6e08 $57
    mOCTAVE_PLUS_1                                     ;; 0f:6e09 $d8
    mC_5                                               ;; 0f:6e0a $50
    mRest_8                                            ;; 0f:6e0b $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6e0c $dc
    mF_8                                               ;; 0f:6e0d $85
    mOCTAVE_PLUS_1                                     ;; 0f:6e0e $d8
    mC_8                                               ;; 0f:6e0f $80
    mOCTAVE_MINUS_1                                    ;; 0f:6e10 $dc
    mA_8                                               ;; 0f:6e11 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6e12 $d8
    mWAVETABLE data_0f_7adc                            ;; 0f:6e13 $e8 $dc $7a
    mF_5                                               ;; 0f:6e16 $55
    mDis_5                                             ;; 0f:6e17 $53
    mCOUNTER $02                                       ;; 0f:6e18 $e3 $02
.data_0f_6e1a:
    mOCTAVE_MINUS_1                                    ;; 0f:6e1a $dc
    mAis_2                                             ;; 0f:6e1b $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6e1c $d8
    mC_2                                               ;; 0f:6e1d $20
    mOCTAVE_MINUS_1                                    ;; 0f:6e1e $dc
    mA_2                                               ;; 0f:6e1f $29
    mOCTAVE_PLUS_1                                     ;; 0f:6e20 $d8
    mD_2                                               ;; 0f:6e21 $22
    mOCTAVE_MINUS_1                                    ;; 0f:6e22 $dc
    mG_2                                               ;; 0f:6e23 $27
    mOCTAVE_PLUS_1                                     ;; 0f:6e24 $d8
    mC_2                                               ;; 0f:6e25 $20
    mOCTAVE_MINUS_1                                    ;; 0f:6e26 $dc
    mF_5                                               ;; 0f:6e27 $55
    mOCTAVE_PLUS_1                                     ;; 0f:6e28 $d8
    mF_5                                               ;; 0f:6e29 $55
    mDis_5                                             ;; 0f:6e2a $53
    mF_5                                               ;; 0f:6e2b $55
    mOCTAVE_MINUS_1                                    ;; 0f:6e2c $dc
    mAis_2                                             ;; 0f:6e2d $2a
    mOCTAVE_PLUS_1                                     ;; 0f:6e2e $d8
    mC_2                                               ;; 0f:6e2f $20
    mOCTAVE_MINUS_1                                    ;; 0f:6e30 $dc
    mA_2                                               ;; 0f:6e31 $29
    mOCTAVE_PLUS_1                                     ;; 0f:6e32 $d8
    mD_2                                               ;; 0f:6e33 $22
    mG_4                                               ;; 0f:6e34 $47
    mD_8                                               ;; 0f:6e35 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6e36 $dc
    mG_2                                               ;; 0f:6e37 $27
    mOCTAVE_PLUS_1                                     ;; 0f:6e38 $d8
    mC_2                                               ;; 0f:6e39 $20
    mWait_8                                            ;; 0f:6e3a $8e
    mAis_8                                             ;; 0f:6e3b $8a
    mA_8                                               ;; 0f:6e3c $89
    mG_8                                               ;; 0f:6e3d $87
    mJUMPIF $01, .data_0f_6e69                         ;; 0f:6e3e $eb $01 $69 $6e
    mWAVETABLE wavePatternsData                        ;; 0f:6e42 $e8 $cc $7a
    mF_2                                               ;; 0f:6e45 $25
    mE_2                                               ;; 0f:6e46 $24
    mD_2                                               ;; 0f:6e47 $22
    mC_2                                               ;; 0f:6e48 $20
    mOCTAVE_MINUS_1                                    ;; 0f:6e49 $dc
    mAis_2                                             ;; 0f:6e4a $2a
    mA_2                                               ;; 0f:6e4b $29
    mG_5                                               ;; 0f:6e4c $57
    mA_8                                               ;; 0f:6e4d $89
    mAis_8                                             ;; 0f:6e4e $8a
    mOCTAVE_PLUS_1                                     ;; 0f:6e4f $d8
    mC_2                                               ;; 0f:6e50 $20
    mF_2                                               ;; 0f:6e51 $25
    mDis_2                                             ;; 0f:6e52 $23
    mAis_0                                             ;; 0f:6e53 $0a
    mOCTAVE_MINUS_1                                    ;; 0f:6e54 $dc
    mA_2                                               ;; 0f:6e55 $29
    mG_5                                               ;; 0f:6e56 $57
    mOCTAVE_PLUS_1                                     ;; 0f:6e57 $d8
    mC_5                                               ;; 0f:6e58 $50
    mRest_8                                            ;; 0f:6e59 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:6e5a $dc
    mF_8                                               ;; 0f:6e5b $85
    mOCTAVE_PLUS_1                                     ;; 0f:6e5c $d8
    mC_8                                               ;; 0f:6e5d $80
    mOCTAVE_MINUS_1                                    ;; 0f:6e5e $dc
    mA_8                                               ;; 0f:6e5f $89
    mOCTAVE_PLUS_1                                     ;; 0f:6e60 $d8
    mWAVETABLE data_0f_7adc                            ;; 0f:6e61 $e8 $dc $7a
    mF_5                                               ;; 0f:6e64 $55
    mDis_5                                             ;; 0f:6e65 $53
    mREPEAT .data_0f_6e1a                              ;; 0f:6e66 $e2 $1a $6e
.data_0f_6e69:
    mWAVETABLE wavePatternsData                        ;; 0f:6e69 $e8 $cc $7a
    mF_2                                               ;; 0f:6e6c $25
    mE_2                                               ;; 0f:6e6d $24
    mD_2                                               ;; 0f:6e6e $22
    mC_5                                               ;; 0f:6e6f $50
    mRest_5                                            ;; 0f:6e70 $5f
    mWAVETABLE data_0f_7adc                            ;; 0f:6e71 $e8 $dc $7a
    mOCTAVE_MINUS_1                                    ;; 0f:6e74 $dc
    mAis_2                                             ;; 0f:6e75 $2a
    mA_2                                               ;; 0f:6e76 $29
    mG_2                                               ;; 0f:6e77 $27
    mOCTAVE_PLUS_1                                     ;; 0f:6e78 $d8
    mC_2                                               ;; 0f:6e79 $20
    mOCTAVE_MINUS_1                                    ;; 0f:6e7a $dc
    mF_2                                               ;; 0f:6e7b $25
    mAis_2                                             ;; 0f:6e7c $2a
    mF_2                                               ;; 0f:6e7d $25
    mAis_5                                             ;; 0f:6e7e $5a
    mA_8                                               ;; 0f:6e7f $89
    mG_8                                               ;; 0f:6e80 $87
    mF_2                                               ;; 0f:6e81 $25
    mRest_2                                            ;; 0f:6e82 $2f
    mEND                                               ;; 0f:6e83 $ff
    db   $8a, $6e, $5e, $6f, $31, $70                  ;; 0f:6e84 ??????

song15_channel2:
    mTEMPO $73                                         ;; 0f:6e8a $e7 $73
    mVIBRATO frequencyDeltaData                        ;; 0f:6e8c $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:6e8f $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:6e92 $e5 $80
    mSTEREOPAN $01                                     ;; 0f:6e94 $e6 $01
.data_0f_6e96:
    mCOUNTER $02                                       ;; 0f:6e96 $e3 $02
.data_0f_6e98:
    mOCTAVE_4                                          ;; 0f:6e98 $d4
    mC_8                                               ;; 0f:6e99 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6e9a $dc
    mF_8                                               ;; 0f:6e9b $85
    mGis_8                                             ;; 0f:6e9c $88
    mF_8                                               ;; 0f:6e9d $85
    mOCTAVE_PLUS_1                                     ;; 0f:6e9e $d8
    mCis_8                                             ;; 0f:6e9f $81
    mOCTAVE_MINUS_1                                    ;; 0f:6ea0 $dc
    mF_8                                               ;; 0f:6ea1 $85
    mGis_8                                             ;; 0f:6ea2 $88
    mF_8                                               ;; 0f:6ea3 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6ea4 $d8
    mDis_8                                             ;; 0f:6ea5 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6ea6 $dc
    mF_8                                               ;; 0f:6ea7 $85
    mGis_8                                             ;; 0f:6ea8 $88
    mF_8                                               ;; 0f:6ea9 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6eaa $d8
    mC_8                                               ;; 0f:6eab $80
    mOCTAVE_MINUS_1                                    ;; 0f:6eac $dc
    mF_8                                               ;; 0f:6ead $85
    mGis_8                                             ;; 0f:6eae $88
    mF_8                                               ;; 0f:6eaf $85
    mAis_8                                             ;; 0f:6eb0 $8a
    mDis_8                                             ;; 0f:6eb1 $83
    mG_8                                               ;; 0f:6eb2 $87
    mDis_8                                             ;; 0f:6eb3 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6eb4 $d8
    mC_8                                               ;; 0f:6eb5 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6eb6 $dc
    mF_8                                               ;; 0f:6eb7 $85
    mGis_8                                             ;; 0f:6eb8 $88
    mF_8                                               ;; 0f:6eb9 $85
    mAis_8                                             ;; 0f:6eba $8a
    mDis_8                                             ;; 0f:6ebb $83
    mG_8                                               ;; 0f:6ebc $87
    mDis_8                                             ;; 0f:6ebd $83
    mOCTAVE_PLUS_1                                     ;; 0f:6ebe $d8
    mC_8                                               ;; 0f:6ebf $80
    mOCTAVE_MINUS_1                                    ;; 0f:6ec0 $dc
    mDis_8                                             ;; 0f:6ec1 $83
    mG_8                                               ;; 0f:6ec2 $87
    mDis_8                                             ;; 0f:6ec3 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6ec4 $d8
    mD_8                                               ;; 0f:6ec5 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6ec6 $dc
    mDis_8                                             ;; 0f:6ec7 $83
    mG_8                                               ;; 0f:6ec8 $87
    mDis_8                                             ;; 0f:6ec9 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6eca $d8
    mDis_8                                             ;; 0f:6ecb $83
    mOCTAVE_MINUS_1                                    ;; 0f:6ecc $dc
    mDis_8                                             ;; 0f:6ecd $83
    mG_8                                               ;; 0f:6ece $87
    mDis_8                                             ;; 0f:6ecf $83
    mOCTAVE_PLUS_1                                     ;; 0f:6ed0 $d8
    mD_8                                               ;; 0f:6ed1 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6ed2 $dc
    mDis_8                                             ;; 0f:6ed3 $83
    mG_8                                               ;; 0f:6ed4 $87
    mDis_8                                             ;; 0f:6ed5 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6ed6 $d8
    mC_8                                               ;; 0f:6ed7 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6ed8 $dc
    mDis_8                                             ;; 0f:6ed9 $83
    mG_8                                               ;; 0f:6eda $87
    mDis_8                                             ;; 0f:6edb $83
    mREPEAT .data_0f_6e98                              ;; 0f:6edc $e2 $98 $6e
    mOCTAVE_PLUS_1                                     ;; 0f:6edf $d8
    mC_8                                               ;; 0f:6ee0 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6ee1 $dc
    mCis_8                                             ;; 0f:6ee2 $81
    mF_8                                               ;; 0f:6ee3 $85
    mCis_8                                             ;; 0f:6ee4 $81
    mAis_8                                             ;; 0f:6ee5 $8a
    mCis_8                                             ;; 0f:6ee6 $81
    mF_8                                               ;; 0f:6ee7 $85
    mCis_8                                             ;; 0f:6ee8 $81
    mGis_8                                             ;; 0f:6ee9 $88
    mCis_8                                             ;; 0f:6eea $81
    mF_8                                               ;; 0f:6eeb $85
    mCis_8                                             ;; 0f:6eec $81
    mG_8                                               ;; 0f:6eed $87
    mC_8                                               ;; 0f:6eee $80
    mE_8                                               ;; 0f:6eef $84
    mC_8                                               ;; 0f:6ef0 $80
    mGis_8                                             ;; 0f:6ef1 $88
    mD_8                                               ;; 0f:6ef2 $82
    mF_8                                               ;; 0f:6ef3 $85
    mD_8                                               ;; 0f:6ef4 $82
    mAis_8                                             ;; 0f:6ef5 $8a
    mE_8                                               ;; 0f:6ef6 $84
    mG_8                                               ;; 0f:6ef7 $87
    mE_8                                               ;; 0f:6ef8 $84
    mAis_8                                             ;; 0f:6ef9 $8a
    mC_8                                               ;; 0f:6efa $80
    mF_8                                               ;; 0f:6efb $85
    mC_8                                               ;; 0f:6efc $80
    mGis_8                                             ;; 0f:6efd $88
    mC_8                                               ;; 0f:6efe $80
    mF_8                                               ;; 0f:6eff $85
    mC_8                                               ;; 0f:6f00 $80
    mAis_8                                             ;; 0f:6f01 $8a
    mDis_8                                             ;; 0f:6f02 $83
    mG_8                                               ;; 0f:6f03 $87
    mDis_8                                             ;; 0f:6f04 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f05 $d8
    mC_8                                               ;; 0f:6f06 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f07 $dc
    mDis_8                                             ;; 0f:6f08 $83
    mGis_8                                             ;; 0f:6f09 $88
    mDis_8                                             ;; 0f:6f0a $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f0b $d8
    mCis_8                                             ;; 0f:6f0c $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f0d $dc
    mDis_8                                             ;; 0f:6f0e $83
    mGis_8                                             ;; 0f:6f0f $88
    mDis_8                                             ;; 0f:6f10 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f11 $d8
    mDis_8                                             ;; 0f:6f12 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6f13 $dc
    mA_8                                               ;; 0f:6f14 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6f15 $d8
    mC_8                                               ;; 0f:6f16 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f17 $dc
    mA_8                                               ;; 0f:6f18 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6f19 $d8
    mCis_8                                             ;; 0f:6f1a $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f1b $dc
    mF_8                                               ;; 0f:6f1c $85
    mAis_8                                             ;; 0f:6f1d $8a
    mF_8                                               ;; 0f:6f1e $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f1f $d8
    mDis_8                                             ;; 0f:6f20 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6f21 $dc
    mF_8                                               ;; 0f:6f22 $85
    mAis_8                                             ;; 0f:6f23 $8a
    mF_8                                               ;; 0f:6f24 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f25 $d8
    mCis_8                                             ;; 0f:6f26 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f27 $dc
    mF_8                                               ;; 0f:6f28 $85
    mAis_8                                             ;; 0f:6f29 $8a
    mF_8                                               ;; 0f:6f2a $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f2b $d8
    mCis_8                                             ;; 0f:6f2c $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f2d $dc
    mFis_8                                             ;; 0f:6f2e $86
    mAis_8                                             ;; 0f:6f2f $8a
    mFis_8                                             ;; 0f:6f30 $86
    mOCTAVE_PLUS_1                                     ;; 0f:6f31 $d8
    mDis_8                                             ;; 0f:6f32 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6f33 $dc
    mFis_8                                             ;; 0f:6f34 $86
    mAis_8                                             ;; 0f:6f35 $8a
    mFis_8                                             ;; 0f:6f36 $86
    mOCTAVE_PLUS_1                                     ;; 0f:6f37 $d8
    mCis_8                                             ;; 0f:6f38 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f39 $dc
    mFis_8                                             ;; 0f:6f3a $86
    mAis_8                                             ;; 0f:6f3b $8a
    mFis_8                                             ;; 0f:6f3c $86
    mOCTAVE_PLUS_1                                     ;; 0f:6f3d $d8
    mC_8                                               ;; 0f:6f3e $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f3f $dc
    mDis_8                                             ;; 0f:6f40 $83
    mGis_8                                             ;; 0f:6f41 $88
    mDis_8                                             ;; 0f:6f42 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f43 $d8
    mC_8                                               ;; 0f:6f44 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f45 $dc
    mDis_8                                             ;; 0f:6f46 $83
    mGis_8                                             ;; 0f:6f47 $88
    mDis_8                                             ;; 0f:6f48 $83
    mAis_8                                             ;; 0f:6f49 $8a
    mCis_8                                             ;; 0f:6f4a $81
    mFis_8                                             ;; 0f:6f4b $86
    mCis_8                                             ;; 0f:6f4c $81
    mA_8                                               ;; 0f:6f4d $89
    mC_8                                               ;; 0f:6f4e $80
    mF_8                                               ;; 0f:6f4f $85
    mC_8                                               ;; 0f:6f50 $80
    mAis_8                                             ;; 0f:6f51 $8a
    mC_8                                               ;; 0f:6f52 $80
    mF_8                                               ;; 0f:6f53 $85
    mC_8                                               ;; 0f:6f54 $80
    mOCTAVE_PLUS_1                                     ;; 0f:6f55 $d8
    mC_8                                               ;; 0f:6f56 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f57 $dc
    mC_8                                               ;; 0f:6f58 $80
    mF_8                                               ;; 0f:6f59 $85
    mC_8                                               ;; 0f:6f5a $80
    mJUMP .data_0f_6e96                                ;; 0f:6f5b $e1 $96 $6e

song15_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:6f5e $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:6f61 $e0 $c0 $7a
    mDUTYCYCLE $80                                     ;; 0f:6f64 $e5 $80
    mSTEREOPAN $02                                     ;; 0f:6f66 $e6 $02
    mRest_10                                           ;; 0f:6f68 $af
.data_0f_6f69:
    mCOUNTER $02                                       ;; 0f:6f69 $e3 $02
.data_0f_6f6b:
    mOCTAVE_4                                          ;; 0f:6f6b $d4
    mC_8                                               ;; 0f:6f6c $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f6d $dc
    mF_8                                               ;; 0f:6f6e $85
    mGis_8                                             ;; 0f:6f6f $88
    mF_8                                               ;; 0f:6f70 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f71 $d8
    mCis_8                                             ;; 0f:6f72 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6f73 $dc
    mF_8                                               ;; 0f:6f74 $85
    mGis_8                                             ;; 0f:6f75 $88
    mF_8                                               ;; 0f:6f76 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f77 $d8
    mDis_8                                             ;; 0f:6f78 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6f79 $dc
    mF_8                                               ;; 0f:6f7a $85
    mGis_8                                             ;; 0f:6f7b $88
    mF_8                                               ;; 0f:6f7c $85
    mOCTAVE_PLUS_1                                     ;; 0f:6f7d $d8
    mC_8                                               ;; 0f:6f7e $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f7f $dc
    mF_8                                               ;; 0f:6f80 $85
    mGis_8                                             ;; 0f:6f81 $88
    mF_8                                               ;; 0f:6f82 $85
    mAis_8                                             ;; 0f:6f83 $8a
    mDis_8                                             ;; 0f:6f84 $83
    mG_8                                               ;; 0f:6f85 $87
    mDis_8                                             ;; 0f:6f86 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f87 $d8
    mC_8                                               ;; 0f:6f88 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f89 $dc
    mF_8                                               ;; 0f:6f8a $85
    mGis_8                                             ;; 0f:6f8b $88
    mF_8                                               ;; 0f:6f8c $85
    mAis_8                                             ;; 0f:6f8d $8a
    mDis_8                                             ;; 0f:6f8e $83
    mG_8                                               ;; 0f:6f8f $87
    mDis_8                                             ;; 0f:6f90 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f91 $d8
    mC_8                                               ;; 0f:6f92 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6f93 $dc
    mDis_8                                             ;; 0f:6f94 $83
    mG_8                                               ;; 0f:6f95 $87
    mDis_8                                             ;; 0f:6f96 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f97 $d8
    mD_8                                               ;; 0f:6f98 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6f99 $dc
    mDis_8                                             ;; 0f:6f9a $83
    mG_8                                               ;; 0f:6f9b $87
    mDis_8                                             ;; 0f:6f9c $83
    mOCTAVE_PLUS_1                                     ;; 0f:6f9d $d8
    mDis_8                                             ;; 0f:6f9e $83
    mOCTAVE_MINUS_1                                    ;; 0f:6f9f $dc
    mDis_8                                             ;; 0f:6fa0 $83
    mG_8                                               ;; 0f:6fa1 $87
    mDis_8                                             ;; 0f:6fa2 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6fa3 $d8
    mD_8                                               ;; 0f:6fa4 $82
    mOCTAVE_MINUS_1                                    ;; 0f:6fa5 $dc
    mDis_8                                             ;; 0f:6fa6 $83
    mG_8                                               ;; 0f:6fa7 $87
    mDis_8                                             ;; 0f:6fa8 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6fa9 $d8
    mC_8                                               ;; 0f:6faa $80
    mOCTAVE_MINUS_1                                    ;; 0f:6fab $dc
    mDis_8                                             ;; 0f:6fac $83
    mG_8                                               ;; 0f:6fad $87
    mDis_8                                             ;; 0f:6fae $83
    mREPEAT .data_0f_6f6b                              ;; 0f:6faf $e2 $6b $6f
    mOCTAVE_PLUS_1                                     ;; 0f:6fb2 $d8
    mC_8                                               ;; 0f:6fb3 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6fb4 $dc
    mCis_8                                             ;; 0f:6fb5 $81
    mF_8                                               ;; 0f:6fb6 $85
    mCis_8                                             ;; 0f:6fb7 $81
    mAis_8                                             ;; 0f:6fb8 $8a
    mCis_8                                             ;; 0f:6fb9 $81
    mF_8                                               ;; 0f:6fba $85
    mCis_8                                             ;; 0f:6fbb $81
    mGis_8                                             ;; 0f:6fbc $88
    mCis_8                                             ;; 0f:6fbd $81
    mF_8                                               ;; 0f:6fbe $85
    mCis_8                                             ;; 0f:6fbf $81
    mG_8                                               ;; 0f:6fc0 $87
    mC_8                                               ;; 0f:6fc1 $80
    mE_8                                               ;; 0f:6fc2 $84
    mC_8                                               ;; 0f:6fc3 $80
    mGis_8                                             ;; 0f:6fc4 $88
    mD_8                                               ;; 0f:6fc5 $82
    mF_8                                               ;; 0f:6fc6 $85
    mD_8                                               ;; 0f:6fc7 $82
    mAis_8                                             ;; 0f:6fc8 $8a
    mE_8                                               ;; 0f:6fc9 $84
    mG_8                                               ;; 0f:6fca $87
    mE_8                                               ;; 0f:6fcb $84
    mAis_8                                             ;; 0f:6fcc $8a
    mC_8                                               ;; 0f:6fcd $80
    mF_8                                               ;; 0f:6fce $85
    mC_8                                               ;; 0f:6fcf $80
    mGis_8                                             ;; 0f:6fd0 $88
    mC_8                                               ;; 0f:6fd1 $80
    mF_8                                               ;; 0f:6fd2 $85
    mC_8                                               ;; 0f:6fd3 $80
    mAis_8                                             ;; 0f:6fd4 $8a
    mDis_8                                             ;; 0f:6fd5 $83
    mG_8                                               ;; 0f:6fd6 $87
    mDis_8                                             ;; 0f:6fd7 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6fd8 $d8
    mC_8                                               ;; 0f:6fd9 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6fda $dc
    mDis_8                                             ;; 0f:6fdb $83
    mGis_8                                             ;; 0f:6fdc $88
    mDis_8                                             ;; 0f:6fdd $83
    mOCTAVE_PLUS_1                                     ;; 0f:6fde $d8
    mCis_8                                             ;; 0f:6fdf $81
    mOCTAVE_MINUS_1                                    ;; 0f:6fe0 $dc
    mDis_8                                             ;; 0f:6fe1 $83
    mGis_8                                             ;; 0f:6fe2 $88
    mDis_8                                             ;; 0f:6fe3 $83
    mOCTAVE_PLUS_1                                     ;; 0f:6fe4 $d8
    mDis_8                                             ;; 0f:6fe5 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6fe6 $dc
    mA_8                                               ;; 0f:6fe7 $89
    mOCTAVE_PLUS_1                                     ;; 0f:6fe8 $d8
    mC_8                                               ;; 0f:6fe9 $80
    mOCTAVE_MINUS_1                                    ;; 0f:6fea $dc
    mA_8                                               ;; 0f:6feb $89
    mOCTAVE_PLUS_1                                     ;; 0f:6fec $d8
    mCis_8                                             ;; 0f:6fed $81
    mOCTAVE_MINUS_1                                    ;; 0f:6fee $dc
    mF_8                                               ;; 0f:6fef $85
    mAis_8                                             ;; 0f:6ff0 $8a
    mF_8                                               ;; 0f:6ff1 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6ff2 $d8
    mDis_8                                             ;; 0f:6ff3 $83
    mOCTAVE_MINUS_1                                    ;; 0f:6ff4 $dc
    mF_8                                               ;; 0f:6ff5 $85
    mAis_8                                             ;; 0f:6ff6 $8a
    mF_8                                               ;; 0f:6ff7 $85
    mOCTAVE_PLUS_1                                     ;; 0f:6ff8 $d8
    mCis_8                                             ;; 0f:6ff9 $81
    mOCTAVE_MINUS_1                                    ;; 0f:6ffa $dc
    mF_8                                               ;; 0f:6ffb $85
    mAis_8                                             ;; 0f:6ffc $8a
    mF_8                                               ;; 0f:6ffd $85
    mOCTAVE_PLUS_1                                     ;; 0f:6ffe $d8
    mCis_8                                             ;; 0f:6fff $81
    mOCTAVE_MINUS_1                                    ;; 0f:7000 $dc
    mFis_8                                             ;; 0f:7001 $86
    mAis_8                                             ;; 0f:7002 $8a
    mFis_8                                             ;; 0f:7003 $86
    mOCTAVE_PLUS_1                                     ;; 0f:7004 $d8
    mDis_8                                             ;; 0f:7005 $83
    mOCTAVE_MINUS_1                                    ;; 0f:7006 $dc
    mFis_8                                             ;; 0f:7007 $86
    mAis_8                                             ;; 0f:7008 $8a
    mFis_8                                             ;; 0f:7009 $86
    mOCTAVE_PLUS_1                                     ;; 0f:700a $d8
    mCis_8                                             ;; 0f:700b $81
    mOCTAVE_MINUS_1                                    ;; 0f:700c $dc
    mFis_8                                             ;; 0f:700d $86
    mAis_8                                             ;; 0f:700e $8a
    mFis_8                                             ;; 0f:700f $86
    mOCTAVE_PLUS_1                                     ;; 0f:7010 $d8
    mC_8                                               ;; 0f:7011 $80
    mOCTAVE_MINUS_1                                    ;; 0f:7012 $dc
    mDis_8                                             ;; 0f:7013 $83
    mGis_8                                             ;; 0f:7014 $88
    mDis_8                                             ;; 0f:7015 $83
    mOCTAVE_PLUS_1                                     ;; 0f:7016 $d8
    mC_8                                               ;; 0f:7017 $80
    mOCTAVE_MINUS_1                                    ;; 0f:7018 $dc
    mDis_8                                             ;; 0f:7019 $83
    mGis_8                                             ;; 0f:701a $88
    mDis_8                                             ;; 0f:701b $83
    mAis_8                                             ;; 0f:701c $8a
    mCis_8                                             ;; 0f:701d $81
    mFis_8                                             ;; 0f:701e $86
    mCis_8                                             ;; 0f:701f $81
    mA_8                                               ;; 0f:7020 $89
    mC_8                                               ;; 0f:7021 $80
    mF_8                                               ;; 0f:7022 $85
    mC_8                                               ;; 0f:7023 $80
    mAis_8                                             ;; 0f:7024 $8a
    mC_8                                               ;; 0f:7025 $80
    mF_8                                               ;; 0f:7026 $85
    mC_8                                               ;; 0f:7027 $80
    mOCTAVE_PLUS_1                                     ;; 0f:7028 $d8
    mC_8                                               ;; 0f:7029 $80
    mOCTAVE_MINUS_1                                    ;; 0f:702a $dc
    mC_8                                               ;; 0f:702b $80
    mF_8                                               ;; 0f:702c $85
    mC_8                                               ;; 0f:702d $80
    mJUMP .data_0f_6f69                                ;; 0f:702e $e1 $69 $6f

song15_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:7031 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:7034 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:7037 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:7039 $e6 $03
.data_0f_703b:
    mCOUNTER $02                                       ;; 0f:703b $e3 $02
.data_0f_703d:
    mOCTAVE_3                                          ;; 0f:703d $d3
    mCis_0                                             ;; 0f:703e $01
    mGis_2                                             ;; 0f:703f $28
    mCis_0                                             ;; 0f:7040 $01
    mGis_2                                             ;; 0f:7041 $28
    mC_0                                               ;; 0f:7042 $00
    mG_2                                               ;; 0f:7043 $27
    mJUMPIF $01, .data_0f_704d                         ;; 0f:7044 $eb $01 $4d $70
    mC_0                                               ;; 0f:7048 $00
    mG_2                                               ;; 0f:7049 $27
    mREPEAT .data_0f_703d                              ;; 0f:704a $e2 $3d $70
.data_0f_704d:
    mC_1                                               ;; 0f:704d $10
    mOCTAVE_PLUS_1                                     ;; 0f:704e $d8
    mC_5                                               ;; 0f:704f $50
    mOCTAVE_MINUS_1                                    ;; 0f:7050 $dc
    mG_5                                               ;; 0f:7051 $57
    mC_5                                               ;; 0f:7052 $50
    mOCTAVE_MINUS_1                                    ;; 0f:7053 $dc
    mAis_0                                             ;; 0f:7054 $0a
    mOCTAVE_PLUS_1                                     ;; 0f:7055 $d8
    mF_2                                               ;; 0f:7056 $25
    mC_2                                               ;; 0f:7057 $20
    mD_2                                               ;; 0f:7058 $22
    mE_2                                               ;; 0f:7059 $24
    mF_0                                               ;; 0f:705a $05
    mG_2                                               ;; 0f:705b $27
    mGis_0                                             ;; 0f:705c $08
    mA_2                                               ;; 0f:705d $29
    mAis_0                                             ;; 0f:705e $0a
    mGis_2                                             ;; 0f:705f $28
    mFis_0                                             ;; 0f:7060 $06
    mAis_2                                             ;; 0f:7061 $2a
    mGis_0                                             ;; 0f:7062 $08
    mFis_2                                             ;; 0f:7063 $26
    mF_2                                               ;; 0f:7064 $25
    mG_2                                               ;; 0f:7065 $27
    mA_2                                               ;; 0f:7066 $29
    mJUMP .data_0f_703b                                ;; 0f:7067 $e1 $3b $70
    db   $70, $70, $9f, $70, $f9, $70                  ;; 0f:706a ??????

song16_channel2:
    mTEMPO $3c                                         ;; 0f:7070 $e7 $3c
    mVIBRATO frequencyDeltaData                        ;; 0f:7072 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:7075 $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:7078 $e5 $80
.data_0f_707a:
    mOCTAVE_3                                          ;; 0f:707a $d3
    mE_1                                               ;; 0f:707b $14
    mA_5                                               ;; 0f:707c $59
    mD_2                                               ;; 0f:707d $22
    mWait_8                                            ;; 0f:707e $8e
    mOCTAVE_MINUS_1                                    ;; 0f:707f $dc
    mB_8                                               ;; 0f:7080 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7081 $d8
    mC_8                                               ;; 0f:7082 $80
    mD_8                                               ;; 0f:7083 $82
    mE_2                                               ;; 0f:7084 $24
    mA_5                                               ;; 0f:7085 $59
    mOCTAVE_PLUS_1                                     ;; 0f:7086 $d8
    mC_5                                               ;; 0f:7087 $50
    mOCTAVE_MINUS_1                                    ;; 0f:7088 $dc
    mB_2                                               ;; 0f:7089 $2b
    mG_2                                               ;; 0f:708a $27
    mE_2                                               ;; 0f:708b $24
    mWait_8                                            ;; 0f:708c $8e
    mE_8                                               ;; 0f:708d $84
    mD_8                                               ;; 0f:708e $82
    mC_8                                               ;; 0f:708f $80
    mD_5                                               ;; 0f:7090 $52
    mOCTAVE_MINUS_1                                    ;; 0f:7091 $dc
    mB_5                                               ;; 0f:7092 $5b
    mG_5                                               ;; 0f:7093 $57
    mB_5                                               ;; 0f:7094 $5b
    mA_0                                               ;; 0f:7095 $09
    mWait_2                                            ;; 0f:7096 $2e
    mRest_8                                            ;; 0f:7097 $8f
    mB_8                                               ;; 0f:7098 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7099 $d8
    mC_8                                               ;; 0f:709a $80
    mD_8                                               ;; 0f:709b $82
    mJUMP .data_0f_707a                                ;; 0f:709c $e1 $7a $70

song16_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:709f $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab2                      ;; 0f:70a2 $e0 $b2 $7a
    mDUTYCYCLE $40                                     ;; 0f:70a5 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:70a7 $e6 $03
.data_0f_70a9:
    mRest_8                                            ;; 0f:70a9 $8f
    mOCTAVE_2                                          ;; 0f:70aa $d2
    mC_8                                               ;; 0f:70ab $80
    mF_8                                               ;; 0f:70ac $85
    mC_8                                               ;; 0f:70ad $80
    mA_8                                               ;; 0f:70ae $89
    mC_8                                               ;; 0f:70af $80
    mF_8                                               ;; 0f:70b0 $85
    mC_8                                               ;; 0f:70b1 $80
    mRest_8                                            ;; 0f:70b2 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:70b3 $dc
    mB_8                                               ;; 0f:70b4 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70b5 $d8
    mE_8                                               ;; 0f:70b6 $84
    mOCTAVE_MINUS_1                                    ;; 0f:70b7 $dc
    mB_8                                               ;; 0f:70b8 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70b9 $d8
    mG_8                                               ;; 0f:70ba $87
    mOCTAVE_MINUS_1                                    ;; 0f:70bb $dc
    mB_8                                               ;; 0f:70bc $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70bd $d8
    mE_8                                               ;; 0f:70be $84
    mG_8                                               ;; 0f:70bf $87
    mRest_8                                            ;; 0f:70c0 $8f
    mC_8                                               ;; 0f:70c1 $80
    mF_8                                               ;; 0f:70c2 $85
    mC_8                                               ;; 0f:70c3 $80
    mOCTAVE_PLUS_1                                     ;; 0f:70c4 $d8
    mC_8                                               ;; 0f:70c5 $80
    mOCTAVE_MINUS_1                                    ;; 0f:70c6 $dc
    mF_8                                               ;; 0f:70c7 $85
    mA_8                                               ;; 0f:70c8 $89
    mF_8                                               ;; 0f:70c9 $85
    mRest_8                                            ;; 0f:70ca $8f
    mOCTAVE_MINUS_1                                    ;; 0f:70cb $dc
    mB_8                                               ;; 0f:70cc $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70cd $d8
    mE_8                                               ;; 0f:70ce $84
    mOCTAVE_MINUS_1                                    ;; 0f:70cf $dc
    mB_8                                               ;; 0f:70d0 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70d1 $d8
    mB_5                                               ;; 0f:70d2 $5b
    mG_5                                               ;; 0f:70d3 $57
    mRest_8                                            ;; 0f:70d4 $8f
    mC_8                                               ;; 0f:70d5 $80
    mF_8                                               ;; 0f:70d6 $85
    mC_8                                               ;; 0f:70d7 $80
    mA_5                                               ;; 0f:70d8 $59
    mB_8                                               ;; 0f:70d9 $8b
    mA_8                                               ;; 0f:70da $89
    mRest_8                                            ;; 0f:70db $8f
    mD_8                                               ;; 0f:70dc $82
    mG_8                                               ;; 0f:70dd $87
    mD_8                                               ;; 0f:70de $82
    mRest_8                                            ;; 0f:70df $8f
    mOCTAVE_MINUS_1                                    ;; 0f:70e0 $dc
    mB_8                                               ;; 0f:70e1 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:70e2 $d8
    mD_8                                               ;; 0f:70e3 $82
    mOCTAVE_MINUS_1                                    ;; 0f:70e4 $dc
    mB_8                                               ;; 0f:70e5 $8b
    mRest_8                                            ;; 0f:70e6 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:70e7 $d8
    mE_8                                               ;; 0f:70e8 $84
    mF_8                                               ;; 0f:70e9 $85
    mE_8                                               ;; 0f:70ea $84
    mRest_8                                            ;; 0f:70eb $8f
    mE_8                                               ;; 0f:70ec $84
    mF_8                                               ;; 0f:70ed $85
    mE_8                                               ;; 0f:70ee $84
    mRest_8                                            ;; 0f:70ef $8f
    mE_8                                               ;; 0f:70f0 $84
    mF_8                                               ;; 0f:70f1 $85
    mE_8                                               ;; 0f:70f2 $84
    mRest_5                                            ;; 0f:70f3 $5f
    mA_8                                               ;; 0f:70f4 $89
    mB_8                                               ;; 0f:70f5 $8b
    mJUMP .data_0f_70a9                                ;; 0f:70f6 $e1 $a9 $70

song16_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:70f9 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:70fc $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:70ff $e0 $40
    mSTEREOPAN $03                                     ;; 0f:7101 $e6 $03
.data_0f_7103:
    mOCTAVE_2                                          ;; 0f:7103 $d2
    mF_0                                               ;; 0f:7104 $05
    mE_0                                               ;; 0f:7105 $04
    mF_0                                               ;; 0f:7106 $05
    mE_0                                               ;; 0f:7107 $04
    mF_0                                               ;; 0f:7108 $05
    mG_2                                               ;; 0f:7109 $27
    mE_2                                               ;; 0f:710a $24
    mA_2                                               ;; 0f:710b $29
    mGis_2                                             ;; 0f:710c $28
    mG_2                                               ;; 0f:710d $27
    mFis_2                                             ;; 0f:710e $26
    mJUMP .data_0f_7103                                ;; 0f:710f $e1 $03 $71
    db   $18, $71, $aa, $71, $63, $72                  ;; 0f:7112 ??????

song17_channel2:
    mTEMPO $5d                                         ;; 0f:7118 $e7 $5d
    mVIBRATO frequencyDeltaData                        ;; 0f:711a $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aaa                      ;; 0f:711d $e0 $aa $7a
    mDUTYCYCLE $80                                     ;; 0f:7120 $e5 $80
    mRest_0                                            ;; 0f:7122 $0f
.data_0f_7123:
    mRest_8                                            ;; 0f:7123 $8f
    mOCTAVE_3                                          ;; 0f:7124 $d3
    mB_10                                              ;; 0f:7125 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7126 $d8
    mC_10                                              ;; 0f:7127 $a0
    mD_10                                              ;; 0f:7128 $a2
    mRest_10                                           ;; 0f:7129 $af
    mOCTAVE_MINUS_1                                    ;; 0f:712a $dc
    mB_10                                              ;; 0f:712b $ab
    mRest_10                                           ;; 0f:712c $af
    mOCTAVE_PLUS_1                                     ;; 0f:712d $d8
    mC_10                                              ;; 0f:712e $a0
    mRest_10                                           ;; 0f:712f $af
    mC_10                                              ;; 0f:7130 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:7131 $dc
    mB_10                                              ;; 0f:7132 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7133 $d8
    mC_10                                              ;; 0f:7134 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:7135 $dc
    mB_10                                              ;; 0f:7136 $ab
    mA_10                                              ;; 0f:7137 $a9
    mRest_10                                           ;; 0f:7138 $af
    mB_0                                               ;; 0f:7139 $0b
    mRest_8                                            ;; 0f:713a $8f
    mOCTAVE_PLUS_1                                     ;; 0f:713b $d8
    mD_10                                              ;; 0f:713c $a2
    mC_10                                              ;; 0f:713d $a0
    mD_10                                              ;; 0f:713e $a2
    mRest_10                                           ;; 0f:713f $af
    mG_10                                              ;; 0f:7140 $a7
    mRest_10                                           ;; 0f:7141 $af
    mF_10                                              ;; 0f:7142 $a5
    mRest_10                                           ;; 0f:7143 $af
    mF_10                                              ;; 0f:7144 $a5
    mG_10                                              ;; 0f:7145 $a7
    mE_10                                              ;; 0f:7146 $a4
    mD_10                                              ;; 0f:7147 $a2
    mC_10                                              ;; 0f:7148 $a0
    mRest_10                                           ;; 0f:7149 $af
    mD_2                                               ;; 0f:714a $22
    mWait_8                                            ;; 0f:714b $8e
    mOCTAVE_MINUS_1                                    ;; 0f:714c $dc
    mB_10                                              ;; 0f:714d $ab
    mRest_10                                           ;; 0f:714e $af
    mOCTAVE_PLUS_1                                     ;; 0f:714f $d8
    mC_10                                              ;; 0f:7150 $a0
    mRest_10                                           ;; 0f:7151 $af
    mD_10                                              ;; 0f:7152 $a2
    mRest_10                                           ;; 0f:7153 $af
    mE_10                                              ;; 0f:7154 $a4
    mRest_10                                           ;; 0f:7155 $af
    mE_10                                              ;; 0f:7156 $a4
    mDis_10                                            ;; 0f:7157 $a3
    mE_10                                              ;; 0f:7158 $a4
    mRest_10                                           ;; 0f:7159 $af
    mFis_10                                            ;; 0f:715a $a6
    mRest_10                                           ;; 0f:715b $af
    mG_5                                               ;; 0f:715c $57
    mRest_8                                            ;; 0f:715d $8f
    mE_10                                              ;; 0f:715e $a4
    mRest_10                                           ;; 0f:715f $af
    mD_10                                              ;; 0f:7160 $a2
    mRest_10                                           ;; 0f:7161 $af
    mD_10                                              ;; 0f:7162 $a2
    mCis_10                                            ;; 0f:7163 $a1
    mD_10                                              ;; 0f:7164 $a2
    mRest_10                                           ;; 0f:7165 $af
    mFis_10                                            ;; 0f:7166 $a6
    mRest_10                                           ;; 0f:7167 $af
    mG_5                                               ;; 0f:7168 $57
    mRest_8                                            ;; 0f:7169 $8f
    mD_10                                              ;; 0f:716a $a2
    mRest_10                                           ;; 0f:716b $af
    mC_10                                              ;; 0f:716c $a0
    mOCTAVE_MINUS_1                                    ;; 0f:716d $dc
    mB_10                                              ;; 0f:716e $ab
    mOCTAVE_PLUS_1                                     ;; 0f:716f $d8
    mC_10                                              ;; 0f:7170 $a0
    mD_10                                              ;; 0f:7171 $a2
    mE_8                                               ;; 0f:7172 $84
    mRest_8                                            ;; 0f:7173 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:7174 $dc
    mB_10                                              ;; 0f:7175 $ab
    mA_10                                              ;; 0f:7176 $a9
    mB_10                                              ;; 0f:7177 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7178 $d8
    mC_10                                              ;; 0f:7179 $a0
    mD_8                                               ;; 0f:717a $82
    mRest_8                                            ;; 0f:717b $8f
    mOCTAVE_MINUS_1                                    ;; 0f:717c $dc
    mA_10                                              ;; 0f:717d $a9
    mRest_10                                           ;; 0f:717e $af
    mA_10                                              ;; 0f:717f $a9
    mB_10                                              ;; 0f:7180 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7181 $d8
    mC_10                                              ;; 0f:7182 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:7183 $dc
    mB_10                                              ;; 0f:7184 $ab
    mA_10                                              ;; 0f:7185 $a9
    mRest_10                                           ;; 0f:7186 $af
    mB_10                                              ;; 0f:7187 $ab
    mRest_10                                           ;; 0f:7188 $af
    mB_10                                              ;; 0f:7189 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:718a $d8
    mC_10                                              ;; 0f:718b $a0
    mOCTAVE_MINUS_1                                    ;; 0f:718c $dc
    mB_10                                              ;; 0f:718d $ab
    mA_10                                              ;; 0f:718e $a9
    mG_10                                              ;; 0f:718f $a7
    mRest_10                                           ;; 0f:7190 $af
    mFis_8                                             ;; 0f:7191 $86
    mOCTAVE_PLUS_1                                     ;; 0f:7192 $d8
    mD_10                                              ;; 0f:7193 $a2
    mRest_7                                            ;; 0f:7194 $7f
    mOCTAVE_MINUS_1                                    ;; 0f:7195 $dc
    mFis_10                                            ;; 0f:7196 $a6
    mRest_10                                           ;; 0f:7197 $af
    mE_8                                               ;; 0f:7198 $84
    mOCTAVE_PLUS_1                                     ;; 0f:7199 $d8
    mC_10                                              ;; 0f:719a $a0
    mRest_7                                            ;; 0f:719b $7f
    mOCTAVE_MINUS_1                                    ;; 0f:719c $dc
    mE_10                                              ;; 0f:719d $a4
    mRest_10                                           ;; 0f:719e $af
    mFis_7                                             ;; 0f:719f $76
    mE_10                                              ;; 0f:71a0 $a4
    mFis_10                                            ;; 0f:71a1 $a6
    mRest_10                                           ;; 0f:71a2 $af
    mA_10                                              ;; 0f:71a3 $a9
    mRest_10                                           ;; 0f:71a4 $af
    mOCTAVE_PLUS_1                                     ;; 0f:71a5 $d8
    mD_2                                               ;; 0f:71a6 $22
    mJUMP .data_0f_7123                                ;; 0f:71a7 $e1 $23 $71

song17_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:71aa $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab4                      ;; 0f:71ad $e0 $b4 $7a
    mDUTYCYCLE $40                                     ;; 0f:71b0 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:71b2 $e6 $03
    mRest_0                                            ;; 0f:71b4 $0f
.data_0f_71b5:
    mSTEREOPAN $02                                     ;; 0f:71b5 $e6 $02
    mRest_8                                            ;; 0f:71b7 $8f
    mOCTAVE_2                                          ;; 0f:71b8 $d2
    mB_10                                              ;; 0f:71b9 $ab
    mA_10                                              ;; 0f:71ba $a9
    mB_10                                              ;; 0f:71bb $ab
    mRest_10                                           ;; 0f:71bc $af
    mG_10                                              ;; 0f:71bd $a7
    mRest_10                                           ;; 0f:71be $af
    mSTEREOPAN $03                                     ;; 0f:71bf $e6 $03
    mA_7                                               ;; 0f:71c1 $79
    mB_10                                              ;; 0f:71c2 $ab
    mA_10                                              ;; 0f:71c3 $a9
    mRest_10                                           ;; 0f:71c4 $af
    mF_10                                              ;; 0f:71c5 $a5
    mRest_10                                           ;; 0f:71c6 $af
    mSTEREOPAN $01                                     ;; 0f:71c7 $e6 $01
    mRest_8                                            ;; 0f:71c9 $8f
    mB_10                                              ;; 0f:71ca $ab
    mA_10                                              ;; 0f:71cb $a9
    mB_10                                              ;; 0f:71cc $ab
    mRest_10                                           ;; 0f:71cd $af
    mG_10                                              ;; 0f:71ce $a7
    mRest_10                                           ;; 0f:71cf $af
    mSTEREOPAN $03                                     ;; 0f:71d0 $e6 $03
    mA_7                                               ;; 0f:71d2 $79
    mB_10                                              ;; 0f:71d3 $ab
    mA_10                                              ;; 0f:71d4 $a9
    mRest_10                                           ;; 0f:71d5 $af
    mF_10                                              ;; 0f:71d6 $a5
    mRest_10                                           ;; 0f:71d7 $af
    mSTEREOPAN $02                                     ;; 0f:71d8 $e6 $02
    mRest_8                                            ;; 0f:71da $8f
    mB_10                                              ;; 0f:71db $ab
    mA_10                                              ;; 0f:71dc $a9
    mB_10                                              ;; 0f:71dd $ab
    mRest_10                                           ;; 0f:71de $af
    mG_10                                              ;; 0f:71df $a7
    mRest_10                                           ;; 0f:71e0 $af
    mSTEREOPAN $03                                     ;; 0f:71e1 $e6 $03
    mA_7                                               ;; 0f:71e3 $79
    mB_10                                              ;; 0f:71e4 $ab
    mA_10                                              ;; 0f:71e5 $a9
    mRest_10                                           ;; 0f:71e6 $af
    mF_10                                              ;; 0f:71e7 $a5
    mRest_10                                           ;; 0f:71e8 $af
    mSTEREOPAN $01                                     ;; 0f:71e9 $e6 $01
    mRest_8                                            ;; 0f:71eb $8f
    mB_10                                              ;; 0f:71ec $ab
    mA_10                                              ;; 0f:71ed $a9
    mB_10                                              ;; 0f:71ee $ab
    mRest_10                                           ;; 0f:71ef $af
    mG_10                                              ;; 0f:71f0 $a7
    mRest_10                                           ;; 0f:71f1 $af
    mSTEREOPAN $03                                     ;; 0f:71f2 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:71f4 $d8
    mG_5                                               ;; 0f:71f5 $57
    mA_10                                              ;; 0f:71f6 $a9
    mRest_10                                           ;; 0f:71f7 $af
    mB_10                                              ;; 0f:71f8 $ab
    mRest_10                                           ;; 0f:71f9 $af
    mOCTAVE_PLUS_1                                     ;; 0f:71fa $d8
    mC_10                                              ;; 0f:71fb $a0
    mRest_10                                           ;; 0f:71fc $af
    mC_10                                              ;; 0f:71fd $a0
    mOCTAVE_MINUS_1                                    ;; 0f:71fe $dc
    mB_10                                              ;; 0f:71ff $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7200 $d8
    mC_10                                              ;; 0f:7201 $a0
    mRest_10                                           ;; 0f:7202 $af
    mRest_10                                           ;; 0f:7203 $af
    mRest_7                                            ;; 0f:7204 $7f
    mOCTAVE_MINUS_1                                    ;; 0f:7205 $dc
    mSTEREOPAN $02                                     ;; 0f:7206 $e6 $02
    mE_10                                              ;; 0f:7208 $a4
    mFis_10                                            ;; 0f:7209 $a6
    mE_10                                              ;; 0f:720a $a4
    mRest_10                                           ;; 0f:720b $af
    mG_10                                              ;; 0f:720c $a7
    mRest_10                                           ;; 0f:720d $af
    mSTEREOPAN $03                                     ;; 0f:720e $e6 $03
    mB_10                                              ;; 0f:7210 $ab
    mRest_10                                           ;; 0f:7211 $af
    mB_10                                              ;; 0f:7212 $ab
    mAis_10                                            ;; 0f:7213 $aa
    mB_10                                              ;; 0f:7214 $ab
    mRest_10                                           ;; 0f:7215 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7216 $d8
    mRest_10                                           ;; 0f:7217 $af
    mRest_7                                            ;; 0f:7218 $7f
    mOCTAVE_MINUS_2                                    ;; 0f:7219 $dd
    mSTEREOPAN $01                                     ;; 0f:721a $e6 $01
    mB_10                                              ;; 0f:721c $ab
    mOCTAVE_PLUS_1                                     ;; 0f:721d $d8
    mC_10                                              ;; 0f:721e $a0
    mD_10                                              ;; 0f:721f $a2
    mRest_10                                           ;; 0f:7220 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7221 $dc
    mB_10                                              ;; 0f:7222 $ab
    mRest_10                                           ;; 0f:7223 $af
    mSTEREOPAN $03                                     ;; 0f:7224 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:7226 $d8
    mE_10                                              ;; 0f:7227 $a4
    mD_10                                              ;; 0f:7228 $a2
    mE_10                                              ;; 0f:7229 $a4
    mFis_10                                            ;; 0f:722a $a6
    mG_8                                               ;; 0f:722b $87
    mRest_8                                            ;; 0f:722c $8f
    mD_10                                              ;; 0f:722d $a2
    mC_10                                              ;; 0f:722e $a0
    mD_10                                              ;; 0f:722f $a2
    mE_10                                              ;; 0f:7230 $a4
    mFis_8                                             ;; 0f:7231 $86
    mRest_8                                            ;; 0f:7232 $8f
    mSTEREOPAN $01                                     ;; 0f:7233 $e6 $01
    mF_10                                              ;; 0f:7235 $a5
    mE_10                                              ;; 0f:7236 $a4
    mF_10                                              ;; 0f:7237 $a5
    mRest_7                                            ;; 0f:7238 $7f
    mSTEREOPAN $03                                     ;; 0f:7239 $e6 $03
    mF_10                                              ;; 0f:723b $a5
    mRest_10                                           ;; 0f:723c $af
    mSTEREOPAN $02                                     ;; 0f:723d $e6 $02
    mG_10                                              ;; 0f:723f $a7
    mFis_10                                            ;; 0f:7240 $a6
    mG_10                                              ;; 0f:7241 $a7
    mRest_7                                            ;; 0f:7242 $7f
    mOCTAVE_MINUS_1                                    ;; 0f:7243 $dc
    mSTEREOPAN $03                                     ;; 0f:7244 $e6 $03
    mB_10                                              ;; 0f:7246 $ab
    mRest_10                                           ;; 0f:7247 $af
    mSTEREOPAN $01                                     ;; 0f:7248 $e6 $01
    mA_8                                               ;; 0f:724a $89
    mRest_5                                            ;; 0f:724b $5f
    mSTEREOPAN $03                                     ;; 0f:724c $e6 $03
    mA_10                                              ;; 0f:724e $a9
    mRest_10                                           ;; 0f:724f $af
    mSTEREOPAN $02                                     ;; 0f:7250 $e6 $02
    mG_8                                               ;; 0f:7252 $87
    mRest_5                                            ;; 0f:7253 $5f
    mSTEREOPAN $03                                     ;; 0f:7254 $e6 $03
    mG_10                                              ;; 0f:7256 $a7
    mRest_10                                           ;; 0f:7257 $af
    mA_2                                               ;; 0f:7258 $29
    mRest_8                                            ;; 0f:7259 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:725a $d8
    mE_8                                               ;; 0f:725b $84
    mD_10                                              ;; 0f:725c $a2
    mRest_10                                           ;; 0f:725d $af
    mC_10                                              ;; 0f:725e $a0
    mRest_10                                           ;; 0f:725f $af
    mJUMP .data_0f_71b5                                ;; 0f:7260 $e1 $b5 $71

song17_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:7263 $e4 $4f $7a
    mWAVETABLE wavePatternsData                        ;; 0f:7266 $e8 $cc $7a
    mVOLUME $40                                        ;; 0f:7269 $e0 $40
    mOCTAVE_1                                          ;; 0f:726b $d1
    mG_10                                              ;; 0f:726c $a7
    mRest_10                                           ;; 0f:726d $af
    mOCTAVE_PLUS_1                                     ;; 0f:726e $d8
    mD_10                                              ;; 0f:726f $a2
    mRest_10                                           ;; 0f:7270 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7271 $dc
    mG_10                                              ;; 0f:7272 $a7
    mRest_10                                           ;; 0f:7273 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7274 $d8
    mD_10                                              ;; 0f:7275 $a2
    mRest_10                                           ;; 0f:7276 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7277 $dc
    mG_10                                              ;; 0f:7278 $a7
    mRest_10                                           ;; 0f:7279 $af
    mOCTAVE_PLUS_1                                     ;; 0f:727a $d8
    mD_10                                              ;; 0f:727b $a2
    mRest_10                                           ;; 0f:727c $af
    mOCTAVE_MINUS_1                                    ;; 0f:727d $dc
    mG_10                                              ;; 0f:727e $a7
    mRest_10                                           ;; 0f:727f $af
    mOCTAVE_PLUS_1                                     ;; 0f:7280 $d8
    mD_10                                              ;; 0f:7281 $a2
    mRest_10                                           ;; 0f:7282 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7283 $dc
.data_0f_7284:
    mSTEREOPAN $03                                     ;; 0f:7284 $e6 $03
    mG_10                                              ;; 0f:7286 $a7
    mRest_10                                           ;; 0f:7287 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7288 $d8
    mD_10                                              ;; 0f:7289 $a2
    mRest_10                                           ;; 0f:728a $af
    mOCTAVE_MINUS_1                                    ;; 0f:728b $dc
    mG_10                                              ;; 0f:728c $a7
    mRest_10                                           ;; 0f:728d $af
    mOCTAVE_PLUS_1                                     ;; 0f:728e $d8
    mD_10                                              ;; 0f:728f $a2
    mRest_10                                           ;; 0f:7290 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7291 $dc
    mF_10                                              ;; 0f:7292 $a5
    mRest_10                                           ;; 0f:7293 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7294 $d8
    mC_10                                              ;; 0f:7295 $a0
    mRest_10                                           ;; 0f:7296 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7297 $dc
    mF_10                                              ;; 0f:7298 $a5
    mRest_10                                           ;; 0f:7299 $af
    mOCTAVE_PLUS_1                                     ;; 0f:729a $d8
    mC_10                                              ;; 0f:729b $a0
    mRest_10                                           ;; 0f:729c $af
    mOCTAVE_MINUS_1                                    ;; 0f:729d $dc
    mG_10                                              ;; 0f:729e $a7
    mRest_10                                           ;; 0f:729f $af
    mOCTAVE_PLUS_1                                     ;; 0f:72a0 $d8
    mD_10                                              ;; 0f:72a1 $a2
    mRest_10                                           ;; 0f:72a2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72a3 $dc
    mG_10                                              ;; 0f:72a4 $a7
    mRest_10                                           ;; 0f:72a5 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72a6 $d8
    mD_10                                              ;; 0f:72a7 $a2
    mRest_10                                           ;; 0f:72a8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72a9 $dc
    mF_10                                              ;; 0f:72aa $a5
    mRest_10                                           ;; 0f:72ab $af
    mOCTAVE_PLUS_1                                     ;; 0f:72ac $d8
    mC_10                                              ;; 0f:72ad $a0
    mRest_10                                           ;; 0f:72ae $af
    mOCTAVE_MINUS_1                                    ;; 0f:72af $dc
    mF_10                                              ;; 0f:72b0 $a5
    mRest_10                                           ;; 0f:72b1 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72b2 $d8
    mC_10                                              ;; 0f:72b3 $a0
    mRest_10                                           ;; 0f:72b4 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72b5 $dc
    mG_10                                              ;; 0f:72b6 $a7
    mRest_10                                           ;; 0f:72b7 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72b8 $d8
    mD_10                                              ;; 0f:72b9 $a2
    mRest_10                                           ;; 0f:72ba $af
    mOCTAVE_MINUS_1                                    ;; 0f:72bb $dc
    mG_10                                              ;; 0f:72bc $a7
    mRest_10                                           ;; 0f:72bd $af
    mOCTAVE_PLUS_1                                     ;; 0f:72be $d8
    mD_10                                              ;; 0f:72bf $a2
    mRest_10                                           ;; 0f:72c0 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72c1 $dc
    mF_10                                              ;; 0f:72c2 $a5
    mRest_10                                           ;; 0f:72c3 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72c4 $d8
    mC_10                                              ;; 0f:72c5 $a0
    mRest_10                                           ;; 0f:72c6 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72c7 $dc
    mF_10                                              ;; 0f:72c8 $a5
    mRest_10                                           ;; 0f:72c9 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72ca $d8
    mC_10                                              ;; 0f:72cb $a0
    mRest_10                                           ;; 0f:72cc $af
    mOCTAVE_MINUS_1                                    ;; 0f:72cd $dc
    mG_10                                              ;; 0f:72ce $a7
    mRest_10                                           ;; 0f:72cf $af
    mOCTAVE_PLUS_1                                     ;; 0f:72d0 $d8
    mD_10                                              ;; 0f:72d1 $a2
    mRest_10                                           ;; 0f:72d2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72d3 $dc
    mG_10                                              ;; 0f:72d4 $a7
    mRest_10                                           ;; 0f:72d5 $af
    mOCTAVE_PLUS_1                                     ;; 0f:72d6 $d8
    mD_10                                              ;; 0f:72d7 $a2
    mRest_10                                           ;; 0f:72d8 $af
    mG_5                                               ;; 0f:72d9 $57
    mF_5                                               ;; 0f:72da $55
    mSTEREOPAN $02                                     ;; 0f:72db $e6 $02
    mC_10                                              ;; 0f:72dd $a0
    mRest_10                                           ;; 0f:72de $af
    mSTEREOPAN $01                                     ;; 0f:72df $e6 $01
    mC_10                                              ;; 0f:72e1 $a0
    mRest_4                                            ;; 0f:72e2 $4f
    mRest_10                                           ;; 0f:72e3 $af
    mSTEREOPAN $03                                     ;; 0f:72e4 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:72e6 $d8
    mC_10                                              ;; 0f:72e7 $a0
    mRest_10                                           ;; 0f:72e8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:72e9 $dc
    mG_10                                              ;; 0f:72ea $a7
    mRest_10                                           ;; 0f:72eb $af
    mOCTAVE_PLUS_1                                     ;; 0f:72ec $d8
    mC_10                                              ;; 0f:72ed $a0
    mRest_10                                           ;; 0f:72ee $af
    mSTEREOPAN $02                                     ;; 0f:72ef $e6 $02
    mOCTAVE_MINUS_2                                    ;; 0f:72f1 $dd
    mB_10                                              ;; 0f:72f2 $ab
    mRest_10                                           ;; 0f:72f3 $af
    mSTEREOPAN $01                                     ;; 0f:72f4 $e6 $01
    mB_10                                              ;; 0f:72f6 $ab
    mRest_4                                            ;; 0f:72f7 $4f
    mRest_10                                           ;; 0f:72f8 $af
    mSTEREOPAN $03                                     ;; 0f:72f9 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:72fb $d8
    mG_10                                              ;; 0f:72fc $a7
    mRest_10                                           ;; 0f:72fd $af
    mD_10                                              ;; 0f:72fe $a2
    mRest_10                                           ;; 0f:72ff $af
    mG_10                                              ;; 0f:7300 $a7
    mRest_10                                           ;; 0f:7301 $af
    mA_4                                               ;; 0f:7302 $49
    mSTEREOPAN $02                                     ;; 0f:7303 $e6 $02
    mE_10                                              ;; 0f:7305 $a4
    mRest_10                                           ;; 0f:7306 $af
    mSTEREOPAN $03                                     ;; 0f:7307 $e6 $03
    mG_4                                               ;; 0f:7309 $47
    mSTEREOPAN $01                                     ;; 0f:730a $e6 $01
    mD_10                                              ;; 0f:730c $a2
    mRest_10                                           ;; 0f:730d $af
    mSTEREOPAN $03                                     ;; 0f:730e $e6 $03
    mF_10                                              ;; 0f:7310 $a5
    mRest_10                                           ;; 0f:7311 $af
    mF_10                                              ;; 0f:7312 $a5
    mRest_10                                           ;; 0f:7313 $af
    mF_10                                              ;; 0f:7314 $a5
    mRest_10                                           ;; 0f:7315 $af
    mF_10                                              ;; 0f:7316 $a5
    mRest_10                                           ;; 0f:7317 $af
    mE_10                                              ;; 0f:7318 $a4
    mRest_10                                           ;; 0f:7319 $af
    mE_10                                              ;; 0f:731a $a4
    mRest_10                                           ;; 0f:731b $af
    mE_10                                              ;; 0f:731c $a4
    mRest_10                                           ;; 0f:731d $af
    mE_10                                              ;; 0f:731e $a4
    mRest_10                                           ;; 0f:731f $af
    mD_8                                               ;; 0f:7320 $82
    mRest_5                                            ;; 0f:7321 $5f
    mSTEREOPAN $02                                     ;; 0f:7322 $e6 $02
    mD_10                                              ;; 0f:7324 $a2
    mRest_10                                           ;; 0f:7325 $af
    mSTEREOPAN $03                                     ;; 0f:7326 $e6 $03
    mC_8                                               ;; 0f:7328 $80
    mRest_5                                            ;; 0f:7329 $5f
    mSTEREOPAN $01                                     ;; 0f:732a $e6 $01
    mC_10                                              ;; 0f:732c $a0
    mRest_10                                           ;; 0f:732d $af
    mSTEREOPAN $03                                     ;; 0f:732e $e6 $03
    mD_2                                               ;; 0f:7330 $22
    mRest_8                                            ;; 0f:7331 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:7332 $d8
    mSTEREOPAN $02                                     ;; 0f:7333 $e6 $02
    mC_8                                               ;; 0f:7335 $80
    mOCTAVE_MINUS_1                                    ;; 0f:7336 $dc
    mSTEREOPAN $03                                     ;; 0f:7337 $e6 $03
    mB_10                                              ;; 0f:7339 $ab
    mRest_10                                           ;; 0f:733a $af
    mSTEREOPAN $01                                     ;; 0f:733b $e6 $01
    mA_10                                              ;; 0f:733d $a9
    mRest_10                                           ;; 0f:733e $af
    mOCTAVE_MINUS_1                                    ;; 0f:733f $dc
    mJUMP .data_0f_7284                                ;; 0f:7340 $e1 $84 $72
    db   $49, $73, $1c, $74, $6f, $75                  ;; 0f:7343 ??????

song18_channel2:
    mTEMPO $7d                                         ;; 0f:7349 $e7 $7d
    mVIBRATO frequencyDeltaData                        ;; 0f:734b $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac4                      ;; 0f:734e $e0 $c4 $7a
    mDUTYCYCLE $40                                     ;; 0f:7351 $e5 $40
    mCOUNTER $03                                       ;; 0f:7353 $e3 $03
.data_0f_7355:
    mOCTAVE_2                                          ;; 0f:7355 $d2
    mE_10                                              ;; 0f:7356 $a4
    mCis_10                                            ;; 0f:7357 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7358 $dc
    mB_10                                              ;; 0f:7359 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:735a $d8
    mE_10                                              ;; 0f:735b $a4
    mCis_10                                            ;; 0f:735c $a1
    mOCTAVE_MINUS_1                                    ;; 0f:735d $dc
    mB_10                                              ;; 0f:735e $ab
    mOCTAVE_PLUS_1                                     ;; 0f:735f $d8
    mE_10                                              ;; 0f:7360 $a4
    mCis_10                                            ;; 0f:7361 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7362 $dc
    mB_10                                              ;; 0f:7363 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7364 $d8
    mE_10                                              ;; 0f:7365 $a4
    mCis_10                                            ;; 0f:7366 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7367 $dc
    mB_10                                              ;; 0f:7368 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7369 $d8
    mE_10                                              ;; 0f:736a $a4
    mCis_10                                            ;; 0f:736b $a1
    mOCTAVE_MINUS_1                                    ;; 0f:736c $dc
    mB_8                                               ;; 0f:736d $8b
    mREPEAT .data_0f_7355                              ;; 0f:736e $e2 $55 $73
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:7371 $e0 $c0 $7a
    mRest_2                                            ;; 0f:7374 $2f
    mRest_10                                           ;; 0f:7375 $af
    mOCTAVE_2                                          ;; 0f:7376 $d2
    mCis_10                                            ;; 0f:7377 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7378 $dc
    mB_10                                              ;; 0f:7379 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:737a $d8
    mCis_10                                            ;; 0f:737b $a1
    mE_10                                              ;; 0f:737c $a4
    mCis_10                                            ;; 0f:737d $a1
    mOCTAVE_MINUS_1                                    ;; 0f:737e $dc
    mB_10                                              ;; 0f:737f $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7380 $d8
    mCis_10                                            ;; 0f:7381 $a1
.data_0f_7382:
    mCOUNTER $02                                       ;; 0f:7382 $e3 $02
.data_0f_7384:
    mA_4                                               ;; 0f:7384 $49
    mGis_10                                            ;; 0f:7385 $a8
    mA_10                                              ;; 0f:7386 $a9
    mB_8                                               ;; 0f:7387 $8b
    mA_8                                               ;; 0f:7388 $89
    mGis_8                                             ;; 0f:7389 $88
    mA_8                                               ;; 0f:738a $89
    mGis_7                                             ;; 0f:738b $78
    mFis_5                                             ;; 0f:738c $56
    mWait_10                                           ;; 0f:738d $ae
    mWait_10                                           ;; 0f:738e $ae
    mOCTAVE_MINUS_1                                    ;; 0f:738f $dc
    mB_10                                              ;; 0f:7390 $ab
    mA_10                                              ;; 0f:7391 $a9
    mB_10                                              ;; 0f:7392 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7393 $d8
    mD_10                                              ;; 0f:7394 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:7395 $dc
    mB_10                                              ;; 0f:7396 $ab
    mA_10                                              ;; 0f:7397 $a9
    mB_10                                              ;; 0f:7398 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7399 $d8
    mGis_4                                             ;; 0f:739a $48
    mFis_10                                            ;; 0f:739b $a6
    mGis_10                                            ;; 0f:739c $a8
    mA_8                                               ;; 0f:739d $89
    mGis_8                                             ;; 0f:739e $88
    mFis_8                                             ;; 0f:739f $86
    mGis_8                                             ;; 0f:73a0 $88
    mFis_7                                             ;; 0f:73a1 $76
    mE_5                                               ;; 0f:73a2 $54
    mWait_10                                           ;; 0f:73a3 $ae
    mWait_8                                            ;; 0f:73a4 $8e
    mCis_8                                             ;; 0f:73a5 $81
    mD_8                                               ;; 0f:73a6 $82
    mE_8                                               ;; 0f:73a7 $84
    mFis_7                                             ;; 0f:73a8 $76
    mGis_7                                             ;; 0f:73a9 $78
    mFis_8                                             ;; 0f:73aa $86
    mA_4                                               ;; 0f:73ab $49
    mGis_10                                            ;; 0f:73ac $a8
    mFis_10                                            ;; 0f:73ad $a6
    mE_7                                               ;; 0f:73ae $74
    mFis_7                                             ;; 0f:73af $76
    mE_8                                               ;; 0f:73b0 $84
    mB_7                                               ;; 0f:73b1 $7b
    mA_7                                               ;; 0f:73b2 $79
    mGis_8                                             ;; 0f:73b3 $88
    mJUMPIF $01, .data_0f_73c8                         ;; 0f:73b4 $eb $01 $c8 $73
    mFis_2                                             ;; 0f:73b8 $26
    mRest_10                                           ;; 0f:73b9 $af
    mCis_10                                            ;; 0f:73ba $a1
    mOCTAVE_MINUS_1                                    ;; 0f:73bb $dc
    mB_10                                              ;; 0f:73bc $ab
    mOCTAVE_PLUS_1                                     ;; 0f:73bd $d8
    mCis_10                                            ;; 0f:73be $a1
    mE_10                                              ;; 0f:73bf $a4
    mCis_10                                            ;; 0f:73c0 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:73c1 $dc
    mB_10                                              ;; 0f:73c2 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:73c3 $d8
    mCis_10                                            ;; 0f:73c4 $a1
    mREPEAT .data_0f_7384                              ;; 0f:73c5 $e2 $84 $73
.data_0f_73c8:
    mFis_2                                             ;; 0f:73c8 $26
    mWait_8                                            ;; 0f:73c9 $8e
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:73ca $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:73cd $e5 $80
    mA_8                                               ;; 0f:73cf $89
    mB_8                                               ;; 0f:73d0 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:73d1 $d8
    mCis_8                                             ;; 0f:73d2 $81
    mD_2                                               ;; 0f:73d3 $22
    mRest_8                                            ;; 0f:73d4 $8f
    mD_8                                               ;; 0f:73d5 $82
    mE_8                                               ;; 0f:73d6 $84
    mFis_8                                             ;; 0f:73d7 $86
    mE_7                                               ;; 0f:73d8 $74
    mOCTAVE_MINUS_1                                    ;; 0f:73d9 $dc
    mB_7                                               ;; 0f:73da $7b
    mOCTAVE_PLUS_1                                     ;; 0f:73db $d8
    mD_8                                               ;; 0f:73dc $82
    mCis_2                                             ;; 0f:73dd $21
    mOCTAVE_MINUS_1                                    ;; 0f:73de $dc
    mB_7                                               ;; 0f:73df $7b
    mOCTAVE_PLUS_1                                     ;; 0f:73e0 $d8
    mCis_7                                             ;; 0f:73e1 $71
    mD_8                                               ;; 0f:73e2 $82
    mCis_5                                             ;; 0f:73e3 $51
    mOCTAVE_MINUS_1                                    ;; 0f:73e4 $dc
    mB_5                                               ;; 0f:73e5 $5b
    mA_5                                               ;; 0f:73e6 $59
    mB_5                                               ;; 0f:73e7 $5b
    mOCTAVE_PLUS_1                                     ;; 0f:73e8 $d8
    mCis_5                                             ;; 0f:73e9 $51
    mE_5                                               ;; 0f:73ea $54
    mD_2                                               ;; 0f:73eb $22
    mRest_8                                            ;; 0f:73ec $8f
    mD_8                                               ;; 0f:73ed $82
    mE_8                                               ;; 0f:73ee $84
    mFis_8                                             ;; 0f:73ef $86
    mE_7                                               ;; 0f:73f0 $74
    mOCTAVE_MINUS_1                                    ;; 0f:73f1 $dc
    mB_7                                               ;; 0f:73f2 $7b
    mOCTAVE_PLUS_1                                     ;; 0f:73f3 $d8
    mD_8                                               ;; 0f:73f4 $82
    mCis_2                                             ;; 0f:73f5 $21
    mOCTAVE_MINUS_1                                    ;; 0f:73f6 $dc
    mB_2                                               ;; 0f:73f7 $2b
    mWait_8                                            ;; 0f:73f8 $8e
    mAis_8                                             ;; 0f:73f9 $8a
    mB_8                                               ;; 0f:73fa $8b
    mOCTAVE_PLUS_1                                     ;; 0f:73fb $d8
    mCis_8                                             ;; 0f:73fc $81
    mD_5                                               ;; 0f:73fd $52
    mCis_5                                             ;; 0f:73fe $51
    mOCTAVE_MINUS_1                                    ;; 0f:73ff $dc
    mB_5                                               ;; 0f:7400 $5b
    mA_5                                               ;; 0f:7401 $59
    mGis_2                                             ;; 0f:7402 $28
    mWait_8                                            ;; 0f:7403 $8e
    mFis_8                                             ;; 0f:7404 $86
    mF_8                                               ;; 0f:7405 $85
    mFis_8                                             ;; 0f:7406 $86
    mGis_2                                             ;; 0f:7407 $28
    mRest_10                                           ;; 0f:7408 $af
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:7409 $e0 $c0 $7a
    mDUTYCYCLE $40                                     ;; 0f:740c $e5 $40
    mCis_10                                            ;; 0f:740e $a1
    mOCTAVE_MINUS_1                                    ;; 0f:740f $dc
    mB_10                                              ;; 0f:7410 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7411 $d8
    mCis_10                                            ;; 0f:7412 $a1
    mE_10                                              ;; 0f:7413 $a4
    mCis_10                                            ;; 0f:7414 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7415 $dc
    mB_10                                              ;; 0f:7416 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7417 $d8
    mCis_10                                            ;; 0f:7418 $a1
    mJUMP .data_0f_7382                                ;; 0f:7419 $e1 $82 $73

song18_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:741c $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7aca                      ;; 0f:741f $e0 $ca $7a
    mDUTYCYCLE $40                                     ;; 0f:7422 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:7424 $e6 $03
    mCOUNTER $03                                       ;; 0f:7426 $e3 $03
.data_0f_7428:
    mOCTAVE_2                                          ;; 0f:7428 $d2
    mE_10                                              ;; 0f:7429 $a4
    mCis_10                                            ;; 0f:742a $a1
    mOCTAVE_MINUS_1                                    ;; 0f:742b $dc
    mB_10                                              ;; 0f:742c $ab
    mOCTAVE_PLUS_1                                     ;; 0f:742d $d8
    mE_10                                              ;; 0f:742e $a4
    mCis_10                                            ;; 0f:742f $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7430 $dc
    mB_10                                              ;; 0f:7431 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7432 $d8
    mE_10                                              ;; 0f:7433 $a4
    mCis_10                                            ;; 0f:7434 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7435 $dc
    mB_10                                              ;; 0f:7436 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7437 $d8
    mE_10                                              ;; 0f:7438 $a4
    mCis_10                                            ;; 0f:7439 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:743a $dc
    mB_10                                              ;; 0f:743b $ab
    mOCTAVE_PLUS_1                                     ;; 0f:743c $d8
    mE_10                                              ;; 0f:743d $a4
    mCis_10                                            ;; 0f:743e $a1
    mOCTAVE_MINUS_1                                    ;; 0f:743f $dc
    mB_8                                               ;; 0f:7440 $8b
    mREPEAT .data_0f_7428                              ;; 0f:7441 $e2 $28 $74
    mVOLUME_ENVELOPE data_0f_7ac6                      ;; 0f:7444 $e0 $c6 $7a
    mFis_10                                            ;; 0f:7447 $a6
    mGis_10                                            ;; 0f:7448 $a8
    mA_10                                              ;; 0f:7449 $a9
    mB_10                                              ;; 0f:744a $ab
    mOCTAVE_PLUS_1                                     ;; 0f:744b $d8
    mCis_10                                            ;; 0f:744c $a1
    mD_10                                              ;; 0f:744d $a2
    mE_10                                              ;; 0f:744e $a4
    mFis_10                                            ;; 0f:744f $a6
    mGis_2                                             ;; 0f:7450 $28
.data_0f_7451:
    mCOUNTER $02                                       ;; 0f:7451 $e3 $02
.data_0f_7453:
    mSTEREOPAN $02                                     ;; 0f:7453 $e6 $02
    mDUTYCYCLE $00                                     ;; 0f:7455 $e5 $00
    mFis_4                                             ;; 0f:7457 $46
    mCis_8                                             ;; 0f:7458 $81
    mGis_8                                             ;; 0f:7459 $88
    mFis_8                                             ;; 0f:745a $86
    mE_8                                               ;; 0f:745b $84
    mFis_8                                             ;; 0f:745c $86
    mD_2                                               ;; 0f:745d $22
    mWait_10                                           ;; 0f:745e $ae
    mOCTAVE_MINUS_1                                    ;; 0f:745f $dc
    mSTEREOPAN $03                                     ;; 0f:7460 $e6 $03
    mFis_10                                            ;; 0f:7462 $a6
    mE_10                                              ;; 0f:7463 $a4
    mFis_10                                            ;; 0f:7464 $a6
    mA_10                                              ;; 0f:7465 $a9
    mFis_10                                            ;; 0f:7466 $a6
    mE_10                                              ;; 0f:7467 $a4
    mFis_10                                            ;; 0f:7468 $a6
    mSTEREOPAN $01                                     ;; 0f:7469 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:746b $d8
    mE_4                                               ;; 0f:746c $44
    mOCTAVE_MINUS_1                                    ;; 0f:746d $dc
    mB_8                                               ;; 0f:746e $8b
    mOCTAVE_PLUS_1                                     ;; 0f:746f $d8
    mFis_8                                             ;; 0f:7470 $86
    mE_8                                               ;; 0f:7471 $84
    mD_8                                               ;; 0f:7472 $82
    mE_8                                               ;; 0f:7473 $84
    mCis_2                                             ;; 0f:7474 $21
    mWait_8                                            ;; 0f:7475 $8e
    mOCTAVE_MINUS_1                                    ;; 0f:7476 $dc
    mSTEREOPAN $03                                     ;; 0f:7477 $e6 $03
    mA_8                                               ;; 0f:7479 $89
    mB_8                                               ;; 0f:747a $8b
    mOCTAVE_PLUS_1                                     ;; 0f:747b $d8
    mCis_8                                             ;; 0f:747c $81
    mD_7                                               ;; 0f:747d $72
    mE_5                                               ;; 0f:747e $54
    mWait_10                                           ;; 0f:747f $ae
    mD_2                                               ;; 0f:7480 $22
    mSTEREOPAN $02                                     ;; 0f:7481 $e6 $02
    mOCTAVE_MINUS_1                                    ;; 0f:7483 $dc
    mGis_7                                             ;; 0f:7484 $78
    mA_7                                               ;; 0f:7485 $79
    mGis_8                                             ;; 0f:7486 $88
    mOCTAVE_PLUS_1                                     ;; 0f:7487 $d8
    mSTEREOPAN $01                                     ;; 0f:7488 $e6 $01
    mGis_7                                             ;; 0f:748a $78
    mFis_7                                             ;; 0f:748b $76
    mE_8                                               ;; 0f:748c $84
    mJUMPIF $01, .data_0f_74ad                         ;; 0f:748d $eb $01 $ad $74
    mSTEREOPAN $03                                     ;; 0f:7491 $e6 $03
    mD_10                                              ;; 0f:7493 $a2
    mCis_10                                            ;; 0f:7494 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7495 $dc
    mB_10                                              ;; 0f:7496 $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7497 $d8
    mSTEREOPAN $02                                     ;; 0f:7498 $e6 $02
    mCis_10                                            ;; 0f:749a $a1
    mOCTAVE_MINUS_1                                    ;; 0f:749b $dc
    mB_10                                              ;; 0f:749c $ab
    mA_10                                              ;; 0f:749d $a9
    mSTEREOPAN $01                                     ;; 0f:749e $e6 $01
    mB_10                                              ;; 0f:74a0 $ab
    mA_10                                              ;; 0f:74a1 $a9
    mGis_5                                             ;; 0f:74a2 $58
    mSTEREOPAN $03                                     ;; 0f:74a3 $e6 $03
    mB_10                                              ;; 0f:74a5 $ab
    mGis_10                                            ;; 0f:74a6 $a8
    mE_10                                              ;; 0f:74a7 $a4
    mGis_10                                            ;; 0f:74a8 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:74a9 $d8
    mREPEAT .data_0f_7453                              ;; 0f:74aa $e2 $53 $74
.data_0f_74ad:
    mDUTYCYCLE $40                                     ;; 0f:74ad $e5 $40
    mSTEREOPAN $03                                     ;; 0f:74af $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:74b1 $dc
    mA_10                                              ;; 0f:74b2 $a9
    mFis_10                                            ;; 0f:74b3 $a6
    mD_10                                              ;; 0f:74b4 $a2
    mSTEREOPAN $02                                     ;; 0f:74b5 $e6 $02
    mA_10                                              ;; 0f:74b7 $a9
    mFis_10                                            ;; 0f:74b8 $a6
    mA_10                                              ;; 0f:74b9 $a9
    mSTEREOPAN $01                                     ;; 0f:74ba $e6 $01
    mB_10                                              ;; 0f:74bc $ab
    mGis_10                                            ;; 0f:74bd $a8
    mA_8                                               ;; 0f:74be $89
    mOCTAVE_PLUS_1                                     ;; 0f:74bf $d8
    mSTEREOPAN $03                                     ;; 0f:74c0 $e6 $03
    mFis_8                                             ;; 0f:74c2 $86
    mGis_8                                             ;; 0f:74c3 $88
    mA_8                                               ;; 0f:74c4 $89
    mSTEREOPAN $02                                     ;; 0f:74c5 $e6 $02
    mB_7                                               ;; 0f:74c7 $7b
    mA_7                                               ;; 0f:74c8 $79
    mGis_8                                             ;; 0f:74c9 $88
    mFis_5                                             ;; 0f:74ca $56
    mGis_8                                             ;; 0f:74cb $88
    mA_8                                               ;; 0f:74cc $89
    mSTEREOPAN $03                                     ;; 0f:74cd $e6 $03
    mGis_4                                             ;; 0f:74cf $48
    mFis_8                                             ;; 0f:74d0 $86
    mE_2                                               ;; 0f:74d1 $24
    mSTEREOPAN $01                                     ;; 0f:74d2 $e6 $01
    mD_7                                               ;; 0f:74d4 $72
    mE_7                                               ;; 0f:74d5 $74
    mFis_8                                             ;; 0f:74d6 $86
    mF_8                                               ;; 0f:74d7 $85
    mCis_8                                             ;; 0f:74d8 $81
    mDis_8                                             ;; 0f:74d9 $83
    mF_8                                               ;; 0f:74da $85
    mSTEREOPAN $03                                     ;; 0f:74db $e6 $03
    mCis_10                                            ;; 0f:74dd $a1
    mOCTAVE_MINUS_1                                    ;; 0f:74de $dc
    mA_10                                              ;; 0f:74df $a9
    mSTEREOPAN $01                                     ;; 0f:74e0 $e6 $01
    mFis_10                                            ;; 0f:74e2 $a6
    mA_10                                              ;; 0f:74e3 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:74e4 $d8
    mSTEREOPAN $03                                     ;; 0f:74e5 $e6 $03
    mD_10                                              ;; 0f:74e7 $a2
    mOCTAVE_MINUS_1                                    ;; 0f:74e8 $dc
    mB_10                                              ;; 0f:74e9 $ab
    mSTEREOPAN $02                                     ;; 0f:74ea $e6 $02
    mGis_10                                            ;; 0f:74ec $a8
    mB_10                                              ;; 0f:74ed $ab
    mOCTAVE_PLUS_1                                     ;; 0f:74ee $d8
    mSTEREOPAN $03                                     ;; 0f:74ef $e6 $03
    mE_10                                              ;; 0f:74f1 $a4
    mCis_10                                            ;; 0f:74f2 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:74f3 $dc
    mSTEREOPAN $01                                     ;; 0f:74f4 $e6 $01
    mA_10                                              ;; 0f:74f6 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:74f7 $d8
    mCis_10                                            ;; 0f:74f8 $a1
    mSTEREOPAN $03                                     ;; 0f:74f9 $e6 $03
    mFis_10                                            ;; 0f:74fb $a6
    mCis_10                                            ;; 0f:74fc $a1
    mOCTAVE_MINUS_1                                    ;; 0f:74fd $dc
    mSTEREOPAN $02                                     ;; 0f:74fe $e6 $02
    mAis_10                                            ;; 0f:7500 $aa
    mOCTAVE_PLUS_1                                     ;; 0f:7501 $d8
    mCis_10                                            ;; 0f:7502 $a1
    mSTEREOPAN $01                                     ;; 0f:7503 $e6 $01
    mB_7                                               ;; 0f:7505 $7b
    mA_7                                               ;; 0f:7506 $79
    mGis_8                                             ;; 0f:7507 $88
    mFis_5                                             ;; 0f:7508 $56
    mGis_8                                             ;; 0f:7509 $88
    mA_8                                               ;; 0f:750a $89
    mSTEREOPAN $03                                     ;; 0f:750b $e6 $03
    mGis_4                                             ;; 0f:750d $48
    mFis_8                                             ;; 0f:750e $86
    mE_2                                               ;; 0f:750f $24
    mSTEREOPAN $02                                     ;; 0f:7510 $e6 $02
    mD_7                                               ;; 0f:7512 $72
    mFis_7                                             ;; 0f:7513 $76
    mE_8                                               ;; 0f:7514 $84
    mD_8                                               ;; 0f:7515 $82
    mCis_8                                             ;; 0f:7516 $81
    mD_8                                               ;; 0f:7517 $82
    mE_8                                               ;; 0f:7518 $84
    mSTEREOPAN $03                                     ;; 0f:7519 $e6 $03
    mFis_10                                            ;; 0f:751b $a6
    mD_10                                              ;; 0f:751c $a2
    mOCTAVE_MINUS_1                                    ;; 0f:751d $dc
    mB_10                                              ;; 0f:751e $ab
    mOCTAVE_PLUS_1                                     ;; 0f:751f $d8
    mD_10                                              ;; 0f:7520 $a2
    mSTEREOPAN $01                                     ;; 0f:7521 $e6 $01
    mE_10                                              ;; 0f:7523 $a4
    mCis_10                                            ;; 0f:7524 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7525 $dc
    mA_10                                              ;; 0f:7526 $a9
    mOCTAVE_PLUS_1                                     ;; 0f:7527 $d8
    mCis_10                                            ;; 0f:7528 $a1
    mSTEREOPAN $03                                     ;; 0f:7529 $e6 $03
    mD_10                                              ;; 0f:752b $a2
    mOCTAVE_MINUS_1                                    ;; 0f:752c $dc
    mB_10                                              ;; 0f:752d $ab
    mGis_10                                            ;; 0f:752e $a8
    mB_10                                              ;; 0f:752f $ab
    mOCTAVE_PLUS_1                                     ;; 0f:7530 $d8
    mSTEREOPAN $02                                     ;; 0f:7531 $e6 $02
    mCis_10                                            ;; 0f:7533 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7534 $dc
    mA_10                                              ;; 0f:7535 $a9
    mFis_10                                            ;; 0f:7536 $a6
    mA_10                                              ;; 0f:7537 $a9
    mSTEREOPAN $03                                     ;; 0f:7538 $e6 $03
    mOCTAVE_PLUS_1                                     ;; 0f:753a $d8
    mDis_10                                            ;; 0f:753b $a3
    mC_10                                              ;; 0f:753c $a0
    mOCTAVE_MINUS_1                                    ;; 0f:753d $dc
    mGis_10                                            ;; 0f:753e $a8
    mOCTAVE_PLUS_1                                     ;; 0f:753f $d8
    mSTEREOPAN $01                                     ;; 0f:7540 $e6 $01
    mDis_10                                            ;; 0f:7542 $a3
    mC_10                                              ;; 0f:7543 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:7544 $dc
    mGis_10                                            ;; 0f:7545 $a8
    mOCTAVE_PLUS_1                                     ;; 0f:7546 $d8
    mSTEREOPAN $02                                     ;; 0f:7547 $e6 $02
    mDis_10                                            ;; 0f:7549 $a3
    mC_10                                              ;; 0f:754a $a0
    mOCTAVE_MINUS_1                                    ;; 0f:754b $dc
    mGis_10                                            ;; 0f:754c $a8
    mOCTAVE_PLUS_1                                     ;; 0f:754d $d8
    mSTEREOPAN $03                                     ;; 0f:754e $e6 $03
    mDis_10                                            ;; 0f:7550 $a3
    mC_10                                              ;; 0f:7551 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:7552 $dc
    mGis_10                                            ;; 0f:7553 $a8
    mSTEREOPAN $01                                     ;; 0f:7554 $e6 $01
    mOCTAVE_PLUS_1                                     ;; 0f:7556 $d8
    mCis_10                                            ;; 0f:7557 $a1
    mOCTAVE_MINUS_1                                    ;; 0f:7558 $dc
    mAis_10                                            ;; 0f:7559 $aa
    mFis_10                                            ;; 0f:755a $a6
    mAis_10                                            ;; 0f:755b $aa
    mSTEREOPAN $02                                     ;; 0f:755c $e6 $02
    mGis_10                                            ;; 0f:755e $a8
    mB_10                                              ;; 0f:755f $ab
    mA_10                                              ;; 0f:7560 $a9
    mGis_10                                            ;; 0f:7561 $a8
    mSTEREOPAN $01                                     ;; 0f:7562 $e6 $01
    mFis_10                                            ;; 0f:7564 $a6
    mA_10                                              ;; 0f:7565 $a9
    mGis_10                                            ;; 0f:7566 $a8
    mFis_10                                            ;; 0f:7567 $a6
    mSTEREOPAN $03                                     ;; 0f:7568 $e6 $03
    mGis_2                                             ;; 0f:756a $28
    mOCTAVE_PLUS_1                                     ;; 0f:756b $d8
    mJUMP .data_0f_7451                                ;; 0f:756c $e1 $51 $74

song18_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:756f $e4 $4f $7a
    mWAVETABLE data_0f_7afc                            ;; 0f:7572 $e8 $fc $7a
    mVOLUME $20                                        ;; 0f:7575 $e0 $20
    mSTEREOPAN $03                                     ;; 0f:7577 $e6 $03
    mOCTAVE_1                                          ;; 0f:7579 $d1
    mFis_10                                            ;; 0f:757a $a6
    mRest_10                                           ;; 0f:757b $af
    mFis_10                                            ;; 0f:757c $a6
    mRest_10                                           ;; 0f:757d $af
    mFis_10                                            ;; 0f:757e $a6
    mRest_10                                           ;; 0f:757f $af
    mFis_10                                            ;; 0f:7580 $a6
    mRest_10                                           ;; 0f:7581 $af
    mFis_10                                            ;; 0f:7582 $a6
    mRest_10                                           ;; 0f:7583 $af
    mFis_10                                            ;; 0f:7584 $a6
    mRest_10                                           ;; 0f:7585 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7586 $d8
    mSTEREOPAN $02                                     ;; 0f:7587 $e6 $02
    mCis_5                                             ;; 0f:7589 $51
    mSTEREOPAN $03                                     ;; 0f:758a $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:758c $dc
    mFis_10                                            ;; 0f:758d $a6
    mRest_10                                           ;; 0f:758e $af
    mFis_10                                            ;; 0f:758f $a6
    mRest_10                                           ;; 0f:7590 $af
    mFis_10                                            ;; 0f:7591 $a6
    mRest_10                                           ;; 0f:7592 $af
    mFis_10                                            ;; 0f:7593 $a6
    mRest_10                                           ;; 0f:7594 $af
    mFis_10                                            ;; 0f:7595 $a6
    mRest_10                                           ;; 0f:7596 $af
    mFis_10                                            ;; 0f:7597 $a6
    mRest_10                                           ;; 0f:7598 $af
    mOCTAVE_PLUS_1                                     ;; 0f:7599 $d8
    mSTEREOPAN $01                                     ;; 0f:759a $e6 $01
    mCis_5                                             ;; 0f:759c $51
    mSTEREOPAN $03                                     ;; 0f:759d $e6 $03
    mOCTAVE_MINUS_1                                    ;; 0f:759f $dc
    mD_10                                              ;; 0f:75a0 $a2
    mRest_10                                           ;; 0f:75a1 $af
    mD_10                                              ;; 0f:75a2 $a2
    mRest_10                                           ;; 0f:75a3 $af
    mD_10                                              ;; 0f:75a4 $a2
    mRest_10                                           ;; 0f:75a5 $af
    mD_10                                              ;; 0f:75a6 $a2
    mRest_10                                           ;; 0f:75a7 $af
    mD_10                                              ;; 0f:75a8 $a2
    mRest_10                                           ;; 0f:75a9 $af
    mD_10                                              ;; 0f:75aa $a2
    mRest_10                                           ;; 0f:75ab $af
    mSTEREOPAN $02                                     ;; 0f:75ac $e6 $02
    mA_5                                               ;; 0f:75ae $59
    mSTEREOPAN $03                                     ;; 0f:75af $e6 $03
    mE_5                                               ;; 0f:75b1 $54
    mD_5                                               ;; 0f:75b2 $52
    mCis_4                                             ;; 0f:75b3 $41
    mRest_8                                            ;; 0f:75b4 $8f
.data_0f_75b5:
    mCOUNTER $02                                       ;; 0f:75b5 $e3 $02
.data_0f_75b7:
    mWAVETABLE data_0f_7b0c                            ;; 0f:75b7 $e8 $0c $7b
    mFis_8                                             ;; 0f:75ba $86
    mOCTAVE_PLUS_1                                     ;; 0f:75bb $d8
    mFis_10                                            ;; 0f:75bc $a6
    mRest_10                                           ;; 0f:75bd $af
    mOCTAVE_MINUS_1                                    ;; 0f:75be $dc
    mFis_8                                             ;; 0f:75bf $86
    mOCTAVE_PLUS_1                                     ;; 0f:75c0 $d8
    mFis_10                                            ;; 0f:75c1 $a6
    mRest_10                                           ;; 0f:75c2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75c3 $dc
    mFis_8                                             ;; 0f:75c4 $86
    mOCTAVE_PLUS_1                                     ;; 0f:75c5 $d8
    mFis_10                                            ;; 0f:75c6 $a6
    mRest_10                                           ;; 0f:75c7 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75c8 $dc
    mFis_8                                             ;; 0f:75c9 $86
    mOCTAVE_PLUS_1                                     ;; 0f:75ca $d8
    mFis_10                                            ;; 0f:75cb $a6
    mRest_10                                           ;; 0f:75cc $af
    mOCTAVE_MINUS_1                                    ;; 0f:75cd $dc
    mB_8                                               ;; 0f:75ce $8b
    mOCTAVE_PLUS_1                                     ;; 0f:75cf $d8
    mB_10                                              ;; 0f:75d0 $ab
    mRest_10                                           ;; 0f:75d1 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75d2 $dc
    mB_8                                               ;; 0f:75d3 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:75d4 $d8
    mB_10                                              ;; 0f:75d5 $ab
    mRest_10                                           ;; 0f:75d6 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75d7 $dc
    mSTEREOPAN $02                                     ;; 0f:75d8 $e6 $02
    mB_5                                               ;; 0f:75da $5b
    mSTEREOPAN $01                                     ;; 0f:75db $e6 $01
    mFis_5                                             ;; 0f:75dd $56
    mSTEREOPAN $03                                     ;; 0f:75de $e6 $03
    mE_8                                               ;; 0f:75e0 $84
    mOCTAVE_PLUS_1                                     ;; 0f:75e1 $d8
    mE_10                                              ;; 0f:75e2 $a4
    mRest_10                                           ;; 0f:75e3 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75e4 $dc
    mE_8                                               ;; 0f:75e5 $84
    mOCTAVE_PLUS_1                                     ;; 0f:75e6 $d8
    mE_10                                              ;; 0f:75e7 $a4
    mRest_10                                           ;; 0f:75e8 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75e9 $dc
    mE_8                                               ;; 0f:75ea $84
    mOCTAVE_PLUS_1                                     ;; 0f:75eb $d8
    mE_10                                              ;; 0f:75ec $a4
    mRest_10                                           ;; 0f:75ed $af
    mOCTAVE_MINUS_1                                    ;; 0f:75ee $dc
    mE_8                                               ;; 0f:75ef $84
    mOCTAVE_PLUS_1                                     ;; 0f:75f0 $d8
    mE_10                                              ;; 0f:75f1 $a4
    mRest_10                                           ;; 0f:75f2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75f3 $dc
    mA_8                                               ;; 0f:75f4 $89
    mOCTAVE_PLUS_1                                     ;; 0f:75f5 $d8
    mA_10                                              ;; 0f:75f6 $a9
    mRest_10                                           ;; 0f:75f7 $af
    mOCTAVE_MINUS_1                                    ;; 0f:75f8 $dc
    mA_8                                               ;; 0f:75f9 $89
    mOCTAVE_PLUS_1                                     ;; 0f:75fa $d8
    mA_10                                              ;; 0f:75fb $a9
    mRest_10                                           ;; 0f:75fc $af
    mOCTAVE_MINUS_1                                    ;; 0f:75fd $dc
    mSTEREOPAN $01                                     ;; 0f:75fe $e6 $01
    mA_5                                               ;; 0f:7600 $59
    mSTEREOPAN $02                                     ;; 0f:7601 $e6 $02
    mG_5                                               ;; 0f:7603 $57
    mSTEREOPAN $03                                     ;; 0f:7604 $e6 $03
    mD_8                                               ;; 0f:7606 $82
    mOCTAVE_PLUS_1                                     ;; 0f:7607 $d8
    mD_10                                              ;; 0f:7608 $a2
    mRest_10                                           ;; 0f:7609 $af
    mOCTAVE_MINUS_1                                    ;; 0f:760a $dc
    mD_8                                               ;; 0f:760b $82
    mOCTAVE_PLUS_1                                     ;; 0f:760c $d8
    mD_10                                              ;; 0f:760d $a2
    mRest_10                                           ;; 0f:760e $af
    mOCTAVE_MINUS_1                                    ;; 0f:760f $dc
    mD_8                                               ;; 0f:7610 $82
    mOCTAVE_PLUS_1                                     ;; 0f:7611 $d8
    mD_10                                              ;; 0f:7612 $a2
    mRest_10                                           ;; 0f:7613 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7614 $dc
    mD_8                                               ;; 0f:7615 $82
    mOCTAVE_PLUS_1                                     ;; 0f:7616 $d8
    mD_10                                              ;; 0f:7617 $a2
    mRest_10                                           ;; 0f:7618 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7619 $dc
    mE_8                                               ;; 0f:761a $84
    mOCTAVE_PLUS_1                                     ;; 0f:761b $d8
    mE_10                                              ;; 0f:761c $a4
    mRest_10                                           ;; 0f:761d $af
    mOCTAVE_MINUS_1                                    ;; 0f:761e $dc
    mE_8                                               ;; 0f:761f $84
    mOCTAVE_PLUS_1                                     ;; 0f:7620 $d8
    mE_10                                              ;; 0f:7621 $a4
    mRest_10                                           ;; 0f:7622 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7623 $dc
    mE_8                                               ;; 0f:7624 $84
    mOCTAVE_PLUS_1                                     ;; 0f:7625 $d8
    mE_10                                              ;; 0f:7626 $a4
    mRest_10                                           ;; 0f:7627 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7628 $dc
    mE_8                                               ;; 0f:7629 $84
    mOCTAVE_PLUS_1                                     ;; 0f:762a $d8
    mE_10                                              ;; 0f:762b $a4
    mRest_10                                           ;; 0f:762c $af
    mJUMPIF $01, .data_0f_763e                         ;; 0f:762d $eb $01 $3e $76
    mOCTAVE_MINUS_1                                    ;; 0f:7631 $dc
    mD_7                                               ;; 0f:7632 $72
    mOCTAVE_PLUS_1                                     ;; 0f:7633 $d8
    mD_7                                               ;; 0f:7634 $72
    mOCTAVE_MINUS_1                                    ;; 0f:7635 $dc
    mA_8                                               ;; 0f:7636 $89
    mOCTAVE_PLUS_1                                     ;; 0f:7637 $d8
    mCis_4                                             ;; 0f:7638 $41
    mRest_8                                            ;; 0f:7639 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:763a $dc
    mREPEAT .data_0f_75b7                              ;; 0f:763b $e2 $b7 $75
.data_0f_763e:
    mOCTAVE_MINUS_1                                    ;; 0f:763e $dc
    mD_10                                              ;; 0f:763f $a2
    mRest_10                                           ;; 0f:7640 $af
    mD_10                                              ;; 0f:7641 $a2
    mRest_10                                           ;; 0f:7642 $af
    mRest_10                                           ;; 0f:7643 $af
    mE_7                                               ;; 0f:7644 $74
    mFis_4                                             ;; 0f:7645 $46
    mRest_8                                            ;; 0f:7646 $8f
    mB_8                                               ;; 0f:7647 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7648 $d8
    mB_10                                              ;; 0f:7649 $ab
    mRest_10                                           ;; 0f:764a $af
    mOCTAVE_MINUS_1                                    ;; 0f:764b $dc
    mB_8                                               ;; 0f:764c $8b
    mOCTAVE_PLUS_1                                     ;; 0f:764d $d8
    mB_10                                              ;; 0f:764e $ab
    mRest_10                                           ;; 0f:764f $af
    mOCTAVE_MINUS_1                                    ;; 0f:7650 $dc
    mB_8                                               ;; 0f:7651 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7652 $d8
    mB_10                                              ;; 0f:7653 $ab
    mRest_10                                           ;; 0f:7654 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7655 $dc
    mB_8                                               ;; 0f:7656 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7657 $d8
    mB_10                                              ;; 0f:7658 $ab
    mRest_10                                           ;; 0f:7659 $af
    mOCTAVE_MINUS_1                                    ;; 0f:765a $dc
    mE_8                                               ;; 0f:765b $84
    mOCTAVE_PLUS_1                                     ;; 0f:765c $d8
    mE_10                                              ;; 0f:765d $a4
    mRest_10                                           ;; 0f:765e $af
    mOCTAVE_MINUS_1                                    ;; 0f:765f $dc
    mE_8                                               ;; 0f:7660 $84
    mOCTAVE_PLUS_1                                     ;; 0f:7661 $d8
    mE_10                                              ;; 0f:7662 $a4
    mRest_10                                           ;; 0f:7663 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7664 $dc
    mA_5                                               ;; 0f:7665 $59
    mG_5                                               ;; 0f:7666 $57
    mD_8                                               ;; 0f:7667 $82
    mOCTAVE_PLUS_1                                     ;; 0f:7668 $d8
    mD_10                                              ;; 0f:7669 $a2
    mRest_10                                           ;; 0f:766a $af
    mOCTAVE_MINUS_1                                    ;; 0f:766b $dc
    mD_8                                               ;; 0f:766c $82
    mOCTAVE_PLUS_1                                     ;; 0f:766d $d8
    mD_10                                              ;; 0f:766e $a2
    mRest_10                                           ;; 0f:766f $af
    mOCTAVE_MINUS_1                                    ;; 0f:7670 $dc
    mCis_8                                             ;; 0f:7671 $81
    mOCTAVE_PLUS_1                                     ;; 0f:7672 $d8
    mCis_10                                            ;; 0f:7673 $a1
    mRest_10                                           ;; 0f:7674 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7675 $dc
    mCis_8                                             ;; 0f:7676 $81
    mOCTAVE_PLUS_1                                     ;; 0f:7677 $d8
    mCis_10                                            ;; 0f:7678 $a1
    mRest_10                                           ;; 0f:7679 $af
    mOCTAVE_MINUS_1                                    ;; 0f:767a $dc
    mFis_5                                             ;; 0f:767b $56
    mGis_5                                             ;; 0f:767c $58
    mA_5                                               ;; 0f:767d $59
    mAis_5                                             ;; 0f:767e $5a
    mB_8                                               ;; 0f:767f $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7680 $d8
    mB_10                                              ;; 0f:7681 $ab
    mRest_10                                           ;; 0f:7682 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7683 $dc
    mB_8                                               ;; 0f:7684 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:7685 $d8
    mB_10                                              ;; 0f:7686 $ab
    mRest_10                                           ;; 0f:7687 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7688 $dc
    mB_8                                               ;; 0f:7689 $8b
    mOCTAVE_PLUS_1                                     ;; 0f:768a $d8
    mB_10                                              ;; 0f:768b $ab
    mRest_10                                           ;; 0f:768c $af
    mOCTAVE_MINUS_1                                    ;; 0f:768d $dc
    mB_8                                               ;; 0f:768e $8b
    mOCTAVE_PLUS_1                                     ;; 0f:768f $d8
    mB_10                                              ;; 0f:7690 $ab
    mRest_10                                           ;; 0f:7691 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7692 $dc
    mE_8                                               ;; 0f:7693 $84
    mOCTAVE_PLUS_1                                     ;; 0f:7694 $d8
    mE_10                                              ;; 0f:7695 $a4
    mRest_10                                           ;; 0f:7696 $af
    mOCTAVE_MINUS_1                                    ;; 0f:7697 $dc
    mE_8                                               ;; 0f:7698 $84
    mOCTAVE_PLUS_1                                     ;; 0f:7699 $d8
    mE_10                                              ;; 0f:769a $a4
    mRest_10                                           ;; 0f:769b $af
    mOCTAVE_MINUS_1                                    ;; 0f:769c $dc
    mA_5                                               ;; 0f:769d $59
    mG_5                                               ;; 0f:769e $57
    mD_8                                               ;; 0f:769f $82
    mOCTAVE_PLUS_1                                     ;; 0f:76a0 $d8
    mD_10                                              ;; 0f:76a1 $a2
    mRest_10                                           ;; 0f:76a2 $af
    mOCTAVE_MINUS_1                                    ;; 0f:76a3 $dc
    mD_8                                               ;; 0f:76a4 $82
    mOCTAVE_PLUS_1                                     ;; 0f:76a5 $d8
    mD_10                                              ;; 0f:76a6 $a2
    mRest_10                                           ;; 0f:76a7 $af
    mOCTAVE_MINUS_1                                    ;; 0f:76a8 $dc
    mD_8                                               ;; 0f:76a9 $82
    mOCTAVE_PLUS_1                                     ;; 0f:76aa $d8
    mFis_8                                             ;; 0f:76ab $86
    mD_8                                               ;; 0f:76ac $82
    mCis_8                                             ;; 0f:76ad $81
    mOCTAVE_MINUS_1                                    ;; 0f:76ae $dc
    mB_5                                               ;; 0f:76af $5b
    mA_5                                               ;; 0f:76b0 $59
    mGis_5                                             ;; 0f:76b1 $58
    mFis_5                                             ;; 0f:76b2 $56
    mGis_10                                            ;; 0f:76b3 $a8
    mRest_10                                           ;; 0f:76b4 $af
    mGis_10                                            ;; 0f:76b5 $a8
    mRest_10                                           ;; 0f:76b6 $af
    mGis_10                                            ;; 0f:76b7 $a8
    mRest_10                                           ;; 0f:76b8 $af
    mGis_10                                            ;; 0f:76b9 $a8
    mRest_10                                           ;; 0f:76ba $af
    mGis_10                                            ;; 0f:76bb $a8
    mRest_10                                           ;; 0f:76bc $af
    mGis_10                                            ;; 0f:76bd $a8
    mRest_10                                           ;; 0f:76be $af
    mGis_10                                            ;; 0f:76bf $a8
    mRest_10                                           ;; 0f:76c0 $af
    mGis_10                                            ;; 0f:76c1 $a8
    mRest_10                                           ;; 0f:76c2 $af
    mCis_7                                             ;; 0f:76c3 $71
    mOCTAVE_PLUS_1                                     ;; 0f:76c4 $d8
    mCis_7                                             ;; 0f:76c5 $71
    mOCTAVE_MINUS_1                                    ;; 0f:76c6 $dc
    mGis_8                                             ;; 0f:76c7 $88
    mCis_4                                             ;; 0f:76c8 $41
    mRest_8                                            ;; 0f:76c9 $8f
    mJUMP .data_0f_75b5                                ;; 0f:76ca $e1 $b5 $75
    db   $d3, $76, $1c, $77, $62, $77                  ;; 0f:76cd ??????

song19_channel2:
    mTEMPO $7b                                         ;; 0f:76d3 $e7 $7b
    mVIBRATO frequencyDeltaData                        ;; 0f:76d5 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab0                      ;; 0f:76d8 $e0 $b0 $7a
    mDUTYCYCLE $00                                     ;; 0f:76db $e5 $00
    mCOUNTER $04                                       ;; 0f:76dd $e3 $04
.data_0f_76df:
    mOCTAVE_2                                          ;; 0f:76df $d2
    mDis_10                                            ;; 0f:76e0 $a3
    mD_10                                              ;; 0f:76e1 $a2
    mCis_10                                            ;; 0f:76e2 $a1
    mC_10                                              ;; 0f:76e3 $a0
    mDis_10                                            ;; 0f:76e4 $a3
    mD_10                                              ;; 0f:76e5 $a2
    mCis_10                                            ;; 0f:76e6 $a1
    mC_10                                              ;; 0f:76e7 $a0
    mDis_10                                            ;; 0f:76e8 $a3
    mD_10                                              ;; 0f:76e9 $a2
    mCis_10                                            ;; 0f:76ea $a1
    mC_10                                              ;; 0f:76eb $a0
    mDis_10                                            ;; 0f:76ec $a3
    mD_10                                              ;; 0f:76ed $a2
    mCis_10                                            ;; 0f:76ee $a1
    mC_10                                              ;; 0f:76ef $a0
    mREPEAT .data_0f_76df                              ;; 0f:76f0 $e2 $df $76
    mTEMPO $82                                         ;; 0f:76f3 $e7 $82
    mVOLUME_ENVELOPE data_0f_7abe                      ;; 0f:76f5 $e0 $be $7a
    mDUTYCYCLE $40                                     ;; 0f:76f8 $e5 $40
    mOCTAVE_PLUS_1                                     ;; 0f:76fa $d8
    mDis_12                                            ;; 0f:76fb $c3
    mRest_12                                           ;; 0f:76fc $cf
    mDis_12                                            ;; 0f:76fd $c3
    mRest_12                                           ;; 0f:76fe $cf
    mDis_12                                            ;; 0f:76ff $c3
    mRest_12                                           ;; 0f:7700 $cf
    mRest_2                                            ;; 0f:7701 $2f
    mRest_10                                           ;; 0f:7702 $af
    mDis_5                                             ;; 0f:7703 $53
    mRest_5                                            ;; 0f:7704 $5f
    mDis_5                                             ;; 0f:7705 $53
    mRest_8                                            ;; 0f:7706 $8f
    mDis_8                                             ;; 0f:7707 $83
    mRest_8                                            ;; 0f:7708 $8f
    mDis_8                                             ;; 0f:7709 $83
    mDis_12                                            ;; 0f:770a $c3
    mRest_12                                           ;; 0f:770b $cf
    mDis_12                                            ;; 0f:770c $c3
    mRest_12                                           ;; 0f:770d $cf
    mDis_12                                            ;; 0f:770e $c3
    mRest_12                                           ;; 0f:770f $cf
    mRest_2                                            ;; 0f:7710 $2f
    mRest_10                                           ;; 0f:7711 $af
    mDis_5                                             ;; 0f:7712 $53
    mRest_5                                            ;; 0f:7713 $5f
    mDis_5                                             ;; 0f:7714 $53
    mRest_8                                            ;; 0f:7715 $8f
    mDis_8                                             ;; 0f:7716 $83
    mRest_8                                            ;; 0f:7717 $8f
    mDis_8                                             ;; 0f:7718 $83
    mJUMP song19_channel2                              ;; 0f:7719 $e1 $d3 $76

song19_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:771c $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab4                      ;; 0f:771f $e0 $b4 $7a
    mDUTYCYCLE $00                                     ;; 0f:7722 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:7724 $e6 $03
    mCOUNTER $08                                       ;; 0f:7726 $e3 $08
.data_0f_7728:
    mSTEREOPAN $03                                     ;; 0f:7728 $e6 $03
    mOCTAVE_2                                          ;; 0f:772a $d2
    mB_10                                              ;; 0f:772b $ab
    mAis_10                                            ;; 0f:772c $aa
    mSTEREOPAN $02                                     ;; 0f:772d $e6 $02
    mA_10                                              ;; 0f:772f $a9
    mGis_10                                            ;; 0f:7730 $a8
    mSTEREOPAN $03                                     ;; 0f:7731 $e6 $03
    mB_10                                              ;; 0f:7733 $ab
    mAis_10                                            ;; 0f:7734 $aa
    mSTEREOPAN $01                                     ;; 0f:7735 $e6 $01
    mA_10                                              ;; 0f:7737 $a9
    mGis_10                                            ;; 0f:7738 $a8
    mREPEAT .data_0f_7728                              ;; 0f:7739 $e2 $28 $77
    mCOUNTER $04                                       ;; 0f:773c $e3 $04
.data_0f_773e:
    mVOLUME_ENVELOPE data_0f_7aae                      ;; 0f:773e $e0 $ae $7a
    mDUTYCYCLE $40                                     ;; 0f:7741 $e5 $40
    mSTEREOPAN $02                                     ;; 0f:7743 $e6 $02
    mOCTAVE_2                                          ;; 0f:7745 $d2
    mB_10                                              ;; 0f:7746 $ab
    mAis_10                                            ;; 0f:7747 $aa
    mA_10                                              ;; 0f:7748 $a9
    mGis_10                                            ;; 0f:7749 $a8
    mSTEREOPAN $01                                     ;; 0f:774a $e6 $01
    mB_10                                              ;; 0f:774c $ab
    mAis_10                                            ;; 0f:774d $aa
    mA_10                                              ;; 0f:774e $a9
    mGis_10                                            ;; 0f:774f $a8
    mSTEREOPAN $02                                     ;; 0f:7750 $e6 $02
    mG_10                                              ;; 0f:7752 $a7
    mGis_10                                            ;; 0f:7753 $a8
    mA_10                                              ;; 0f:7754 $a9
    mAis_10                                            ;; 0f:7755 $aa
    mSTEREOPAN $01                                     ;; 0f:7756 $e6 $01
    mG_10                                              ;; 0f:7758 $a7
    mGis_10                                            ;; 0f:7759 $a8
    mA_10                                              ;; 0f:775a $a9
    mAis_10                                            ;; 0f:775b $aa
    mREPEAT .data_0f_773e                              ;; 0f:775c $e2 $3e $77
    mJUMP song19_channel1                              ;; 0f:775f $e1 $1c $77

song19_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:7762 $e4 $4f $7a
.data_0f_7765:
    mWAVETABLE data_0f_7afc                            ;; 0f:7765 $e8 $fc $7a
    mVOLUME $20                                        ;; 0f:7768 $e0 $20
    mSTEREOPAN $03                                     ;; 0f:776a $e6 $03
    mCOUNTER $02                                       ;; 0f:776c $e3 $02
.data_0f_776e:
    mOCTAVE_1                                          ;; 0f:776e $d1
    mG_2                                               ;; 0f:776f $27
    mFis_2                                             ;; 0f:7770 $26
    mF_2                                               ;; 0f:7771 $25
    mE_2                                               ;; 0f:7772 $24
    mREPEAT .data_0f_776e                              ;; 0f:7773 $e2 $6e $77
    mCOUNTER $02                                       ;; 0f:7776 $e3 $02
.data_0f_7778:
    mWAVETABLE data_0f_7b0c                            ;; 0f:7778 $e8 $0c $7b
    mOCTAVE_1                                          ;; 0f:777b $d1
    mG_10                                              ;; 0f:777c $a7
    mRest_10                                           ;; 0f:777d $af
    mG_10                                              ;; 0f:777e $a7
    mRest_10                                           ;; 0f:777f $af
    mG_10                                              ;; 0f:7780 $a7
    mRest_10                                           ;; 0f:7781 $af
    mG_10                                              ;; 0f:7782 $a7
    mRest_10                                           ;; 0f:7783 $af
    mFis_10                                            ;; 0f:7784 $a6
    mRest_10                                           ;; 0f:7785 $af
    mFis_10                                            ;; 0f:7786 $a6
    mRest_10                                           ;; 0f:7787 $af
    mFis_10                                            ;; 0f:7788 $a6
    mRest_10                                           ;; 0f:7789 $af
    mFis_10                                            ;; 0f:778a $a6
    mRest_10                                           ;; 0f:778b $af
    mF_10                                              ;; 0f:778c $a5
    mRest_10                                           ;; 0f:778d $af
    mF_10                                              ;; 0f:778e $a5
    mRest_10                                           ;; 0f:778f $af
    mF_10                                              ;; 0f:7790 $a5
    mRest_10                                           ;; 0f:7791 $af
    mF_10                                              ;; 0f:7792 $a5
    mRest_10                                           ;; 0f:7793 $af
    mE_10                                              ;; 0f:7794 $a4
    mRest_10                                           ;; 0f:7795 $af
    mE_10                                              ;; 0f:7796 $a4
    mRest_10                                           ;; 0f:7797 $af
    mE_10                                              ;; 0f:7798 $a4
    mRest_10                                           ;; 0f:7799 $af
    mE_10                                              ;; 0f:779a $a4
    mRest_10                                           ;; 0f:779b $af
    mREPEAT .data_0f_7778                              ;; 0f:779c $e2 $78 $77
    mJUMP .data_0f_7765                                ;; 0f:779f $e1 $65 $77
    db   $a8, $77, $11, $78, $a3, $78                  ;; 0f:77a2 ??????

song1a_channel2:
    mTEMPO $3c                                         ;; 0f:77a8 $e7 $3c
    mVIBRATO frequencyDeltaData                        ;; 0f:77aa $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:77ad $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:77b0 $e5 $80
    mOCTAVE_3                                          ;; 0f:77b2 $d3
    mD_10                                              ;; 0f:77b3 $a2
    mE_10                                              ;; 0f:77b4 $a4
    mF_10                                              ;; 0f:77b5 $a5
    mG_10                                              ;; 0f:77b6 $a7
.data_0f_77b7:
    mA_2                                               ;; 0f:77b7 $29
    mWait_8                                            ;; 0f:77b8 $8e
    mOCTAVE_PLUS_1                                     ;; 0f:77b9 $d8
    mC_8                                               ;; 0f:77ba $80
    mOCTAVE_MINUS_1                                    ;; 0f:77bb $dc
    mB_7                                               ;; 0f:77bc $7b
    mG_10                                              ;; 0f:77bd $a7
    mA_2                                               ;; 0f:77be $29
    mWait_8                                            ;; 0f:77bf $8e
    mOCTAVE_PLUS_1                                     ;; 0f:77c0 $d8
    mC_8                                               ;; 0f:77c1 $80
    mOCTAVE_MINUS_1                                    ;; 0f:77c2 $dc
    mB_7                                               ;; 0f:77c3 $7b
    mG_10                                              ;; 0f:77c4 $a7
    mA_4                                               ;; 0f:77c5 $49
    mG_10                                              ;; 0f:77c6 $a7
    mF_10                                              ;; 0f:77c7 $a5
    mE_2                                               ;; 0f:77c8 $24
    mWait_2                                            ;; 0f:77c9 $2e
    mD_8                                               ;; 0f:77ca $82
    mE_8                                               ;; 0f:77cb $84
    mF_8                                               ;; 0f:77cc $85
    mD_8                                               ;; 0f:77cd $82
    mE_2                                               ;; 0f:77ce $24
    mWait_8                                            ;; 0f:77cf $8e
    mG_8                                               ;; 0f:77d0 $87
    mE_8                                               ;; 0f:77d1 $84
    mC_8                                               ;; 0f:77d2 $80
    mOCTAVE_MINUS_1                                    ;; 0f:77d3 $dc
    mAis_4                                             ;; 0f:77d4 $4a
    mOCTAVE_PLUS_1                                     ;; 0f:77d5 $d8
    mC_8                                               ;; 0f:77d6 $80
    mD_8                                               ;; 0f:77d7 $82
    mE_8                                               ;; 0f:77d8 $84
    mF_8                                               ;; 0f:77d9 $85
    mG_8                                               ;; 0f:77da $87
    mA_2                                               ;; 0f:77db $29
    mWait_8                                            ;; 0f:77dc $8e
    mG_8                                               ;; 0f:77dd $87
    mF_8                                               ;; 0f:77de $85
    mA_8                                               ;; 0f:77df $89
    mE_1                                               ;; 0f:77e0 $14
    mD_10                                              ;; 0f:77e1 $a2
    mE_10                                              ;; 0f:77e2 $a4
    mF_10                                              ;; 0f:77e3 $a5
    mG_10                                              ;; 0f:77e4 $a7
    mA_2                                               ;; 0f:77e5 $29
    mWait_8                                            ;; 0f:77e6 $8e
    mOCTAVE_PLUS_1                                     ;; 0f:77e7 $d8
    mC_8                                               ;; 0f:77e8 $80
    mOCTAVE_MINUS_1                                    ;; 0f:77e9 $dc
    mB_7                                               ;; 0f:77ea $7b
    mG_10                                              ;; 0f:77eb $a7
    mA_2                                               ;; 0f:77ec $29
    mWait_8                                            ;; 0f:77ed $8e
    mOCTAVE_PLUS_1                                     ;; 0f:77ee $d8
    mC_8                                               ;; 0f:77ef $80
    mOCTAVE_MINUS_1                                    ;; 0f:77f0 $dc
    mB_7                                               ;; 0f:77f1 $7b
    mG_10                                              ;; 0f:77f2 $a7
    mA_4                                               ;; 0f:77f3 $49
    mG_10                                              ;; 0f:77f4 $a7
    mF_10                                              ;; 0f:77f5 $a5
    mE_2                                               ;; 0f:77f6 $24
    mWait_2                                            ;; 0f:77f7 $2e
    mD_8                                               ;; 0f:77f8 $82
    mE_8                                               ;; 0f:77f9 $84
    mF_8                                               ;; 0f:77fa $85
    mD_8                                               ;; 0f:77fb $82
    mE_2                                               ;; 0f:77fc $24
    mWait_8                                            ;; 0f:77fd $8e
    mG_8                                               ;; 0f:77fe $87
    mE_8                                               ;; 0f:77ff $84
    mC_8                                               ;; 0f:7800 $80
    mD_4                                               ;; 0f:7801 $42
    mD_8                                               ;; 0f:7802 $82
    mE_8                                               ;; 0f:7803 $84
    mD_8                                               ;; 0f:7804 $82
    mC_8                                               ;; 0f:7805 $80
    mE_8                                               ;; 0f:7806 $84
    mD_0                                               ;; 0f:7807 $02
    mWait_2                                            ;; 0f:7808 $2e
    mRest_5                                            ;; 0f:7809 $5f
    mD_10                                              ;; 0f:780a $a2
    mE_10                                              ;; 0f:780b $a4
    mF_10                                              ;; 0f:780c $a5
    mG_10                                              ;; 0f:780d $a7
    mJUMP .data_0f_77b7                                ;; 0f:780e $e1 $b7 $77

song1a_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:7811 $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ab0                      ;; 0f:7814 $e0 $b0 $7a
    mDUTYCYCLE $00                                     ;; 0f:7817 $e5 $00
    mSTEREOPAN $03                                     ;; 0f:7819 $e6 $03
    mRest_5                                            ;; 0f:781b $5f
.data_0f_781c:
    mRest_8                                            ;; 0f:781c $8f
    mOCTAVE_2                                          ;; 0f:781d $d2
    mF_8                                               ;; 0f:781e $85
    mE_8                                               ;; 0f:781f $84
    mF_8                                               ;; 0f:7820 $85
    mD_8                                               ;; 0f:7821 $82
    mF_8                                               ;; 0f:7822 $85
    mG_8                                               ;; 0f:7823 $87
    mD_8                                               ;; 0f:7824 $82
    mRest_8                                            ;; 0f:7825 $8f
    mF_8                                               ;; 0f:7826 $85
    mE_8                                               ;; 0f:7827 $84
    mF_8                                               ;; 0f:7828 $85
    mD_8                                               ;; 0f:7829 $82
    mF_8                                               ;; 0f:782a $85
    mG_8                                               ;; 0f:782b $87
    mD_8                                               ;; 0f:782c $82
    mRest_8                                            ;; 0f:782d $8f
    mD_8                                               ;; 0f:782e $82
    mC_8                                               ;; 0f:782f $80
    mD_8                                               ;; 0f:7830 $82
    mE_8                                               ;; 0f:7831 $84
    mD_8                                               ;; 0f:7832 $82
    mC_7                                               ;; 0f:7833 $70
    mE_10                                              ;; 0f:7834 $a4
    mWait_8                                            ;; 0f:7835 $8e
    mD_8                                               ;; 0f:7836 $82
    mE_8                                               ;; 0f:7837 $84
    mD_8                                               ;; 0f:7838 $82
    mF_8                                               ;; 0f:7839 $85
    mG_8                                               ;; 0f:783a $87
    mA_5                                               ;; 0f:783b $59
    mRest_8                                            ;; 0f:783c $8f
    mOCTAVE_MINUS_1                                    ;; 0f:783d $dc
    mA_8                                               ;; 0f:783e $89
    mOCTAVE_PLUS_1                                     ;; 0f:783f $d8
    mC_8                                               ;; 0f:7840 $80
    mOCTAVE_MINUS_1                                    ;; 0f:7841 $dc
    mA_8                                               ;; 0f:7842 $89
    mOCTAVE_PLUS_1                                     ;; 0f:7843 $d8
    mE_5                                               ;; 0f:7844 $54
    mA_5                                               ;; 0f:7845 $59
    mD_8                                               ;; 0f:7846 $82
    mC_8                                               ;; 0f:7847 $80
    mD_8                                               ;; 0f:7848 $82
    mE_8                                               ;; 0f:7849 $84
    mF_8                                               ;; 0f:784a $85
    mG_8                                               ;; 0f:784b $87
    mA_8                                               ;; 0f:784c $89
    mAis_8                                             ;; 0f:784d $8a
    mRest_8                                            ;; 0f:784e $8f
    mC_8                                               ;; 0f:784f $80
    mA_8                                               ;; 0f:7850 $89
    mF_8                                               ;; 0f:7851 $85
    mOCTAVE_PLUS_1                                     ;; 0f:7852 $d8
    mC_8                                               ;; 0f:7853 $80
    mOCTAVE_MINUS_1                                    ;; 0f:7854 $dc
    mAis_8                                             ;; 0f:7855 $8a
    mA_5                                               ;; 0f:7856 $59
    mRest_8                                            ;; 0f:7857 $8f
    mCis_8                                             ;; 0f:7858 $81
    mE_8                                               ;; 0f:7859 $84
    mD_8                                               ;; 0f:785a $82
    mCis_2                                             ;; 0f:785b $21
    mRest_8                                            ;; 0f:785c $8f
    mF_8                                               ;; 0f:785d $85
    mE_8                                               ;; 0f:785e $84
    mF_8                                               ;; 0f:785f $85
    mD_8                                               ;; 0f:7860 $82
    mF_8                                               ;; 0f:7861 $85
    mG_8                                               ;; 0f:7862 $87
    mD_8                                               ;; 0f:7863 $82
    mRest_8                                            ;; 0f:7864 $8f
    mF_8                                               ;; 0f:7865 $85
    mE_8                                               ;; 0f:7866 $84
    mF_8                                               ;; 0f:7867 $85
    mD_8                                               ;; 0f:7868 $82
    mF_8                                               ;; 0f:7869 $85
    mG_8                                               ;; 0f:786a $87
    mD_8                                               ;; 0f:786b $82
    mRest_8                                            ;; 0f:786c $8f
    mD_8                                               ;; 0f:786d $82
    mC_8                                               ;; 0f:786e $80
    mD_8                                               ;; 0f:786f $82
    mE_8                                               ;; 0f:7870 $84
    mD_8                                               ;; 0f:7871 $82
    mC_7                                               ;; 0f:7872 $70
    mE_10                                              ;; 0f:7873 $a4
    mWait_8                                            ;; 0f:7874 $8e
    mD_8                                               ;; 0f:7875 $82
    mE_8                                               ;; 0f:7876 $84
    mD_8                                               ;; 0f:7877 $82
    mF_8                                               ;; 0f:7878 $85
    mG_8                                               ;; 0f:7879 $87
    mA_5                                               ;; 0f:787a $59
    mRest_8                                            ;; 0f:787b $8f
    mOCTAVE_MINUS_1                                    ;; 0f:787c $dc
    mA_8                                               ;; 0f:787d $89
    mOCTAVE_PLUS_1                                     ;; 0f:787e $d8
    mC_8                                               ;; 0f:787f $80
    mOCTAVE_MINUS_1                                    ;; 0f:7880 $dc
    mA_8                                               ;; 0f:7881 $89
    mOCTAVE_PLUS_1                                     ;; 0f:7882 $d8
    mE_5                                               ;; 0f:7883 $54
    mA_5                                               ;; 0f:7884 $59
    mRest_8                                            ;; 0f:7885 $8f
    mOCTAVE_MINUS_1                                    ;; 0f:7886 $dc
    mAis_8                                             ;; 0f:7887 $8a
    mOCTAVE_PLUS_1                                     ;; 0f:7888 $d8
    mC_8                                               ;; 0f:7889 $80
    mOCTAVE_MINUS_1                                    ;; 0f:788a $dc
    mAis_8                                             ;; 0f:788b $8a
    mOCTAVE_PLUS_1                                     ;; 0f:788c $d8
    mC_5                                               ;; 0f:788d $50
    mOCTAVE_MINUS_1                                    ;; 0f:788e $dc
    mA_5                                               ;; 0f:788f $59
    mRest_8                                            ;; 0f:7890 $8f
    mOCTAVE_PLUS_1                                     ;; 0f:7891 $d8
    mF_8                                               ;; 0f:7892 $85
    mE_8                                               ;; 0f:7893 $84
    mF_8                                               ;; 0f:7894 $85
    mD_8                                               ;; 0f:7895 $82
    mF_8                                               ;; 0f:7896 $85
    mE_8                                               ;; 0f:7897 $84
    mF_8                                               ;; 0f:7898 $85
    mRest_8                                            ;; 0f:7899 $8f
    mD_8                                               ;; 0f:789a $82
    mC_8                                               ;; 0f:789b $80
    mD_8                                               ;; 0f:789c $82
    mE_8                                               ;; 0f:789d $84
    mF_8                                               ;; 0f:789e $85
    mE_5                                               ;; 0f:789f $54
    mJUMP .data_0f_781c                                ;; 0f:78a0 $e1 $1c $78

song1a_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:78a3 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:78a6 $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:78a9 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:78ab $e6 $03
    mRest_5                                            ;; 0f:78ad $5f
.data_0f_78ae:
    mOCTAVE_2                                          ;; 0f:78ae $d2
    mD_1                                               ;; 0f:78af $12
    mWait_8                                            ;; 0f:78b0 $8e
    mOCTAVE_MINUS_1                                    ;; 0f:78b1 $dc
    mA_8                                               ;; 0f:78b2 $89
    mOCTAVE_PLUS_1                                     ;; 0f:78b3 $d8
    mD_1                                               ;; 0f:78b4 $12
    mWait_8                                            ;; 0f:78b5 $8e
    mC_8                                               ;; 0f:78b6 $80
    mOCTAVE_MINUS_1                                    ;; 0f:78b7 $dc
    mAis_1                                             ;; 0f:78b8 $1a
    mWait_8                                            ;; 0f:78b9 $8e
    mOCTAVE_PLUS_1                                     ;; 0f:78ba $d8
    mF_8                                               ;; 0f:78bb $85
    mOCTAVE_MINUS_1                                    ;; 0f:78bc $dc
    mAis_1                                             ;; 0f:78bd $1a
    mWait_8                                            ;; 0f:78be $8e
    mOCTAVE_PLUS_1                                     ;; 0f:78bf $d8
    mF_8                                               ;; 0f:78c0 $85
    mOCTAVE_MINUS_1                                    ;; 0f:78c1 $dc
    mA_1                                               ;; 0f:78c2 $19
    mOCTAVE_PLUS_1                                     ;; 0f:78c3 $d8
    mE_5                                               ;; 0f:78c4 $54
    mOCTAVE_MINUS_1                                    ;; 0f:78c5 $dc
    mG_2                                               ;; 0f:78c6 $27
    mOCTAVE_PLUS_1                                     ;; 0f:78c7 $d8
    mC_5                                               ;; 0f:78c8 $50
    mD_8                                               ;; 0f:78c9 $82
    mE_8                                               ;; 0f:78ca $84
    mF_4                                               ;; 0f:78cb $45
    mC_8                                               ;; 0f:78cc $80
    mOCTAVE_MINUS_1                                    ;; 0f:78cd $dc
    mF_2                                               ;; 0f:78ce $25
    mA_0                                               ;; 0f:78cf $09
    mOCTAVE_PLUS_1                                     ;; 0f:78d0 $d8
    mD_1                                               ;; 0f:78d1 $12
    mWait_8                                            ;; 0f:78d2 $8e
    mOCTAVE_MINUS_1                                    ;; 0f:78d3 $dc
    mA_8                                               ;; 0f:78d4 $89
    mOCTAVE_PLUS_1                                     ;; 0f:78d5 $d8
    mD_1                                               ;; 0f:78d6 $12
    mWait_8                                            ;; 0f:78d7 $8e
    mC_8                                               ;; 0f:78d8 $80
    mOCTAVE_MINUS_1                                    ;; 0f:78d9 $dc
    mAis_1                                             ;; 0f:78da $1a
    mWait_8                                            ;; 0f:78db $8e
    mOCTAVE_PLUS_1                                     ;; 0f:78dc $d8
    mF_8                                               ;; 0f:78dd $85
    mOCTAVE_MINUS_1                                    ;; 0f:78de $dc
    mAis_1                                             ;; 0f:78df $1a
    mWait_8                                            ;; 0f:78e0 $8e
    mOCTAVE_PLUS_1                                     ;; 0f:78e1 $d8
    mF_8                                               ;; 0f:78e2 $85
    mOCTAVE_MINUS_1                                    ;; 0f:78e3 $dc
    mA_1                                               ;; 0f:78e4 $19
    mOCTAVE_PLUS_1                                     ;; 0f:78e5 $d8
    mE_5                                               ;; 0f:78e6 $54
    mOCTAVE_MINUS_1                                    ;; 0f:78e7 $dc
    mG_2                                               ;; 0f:78e8 $27
    mA_2                                               ;; 0f:78e9 $29
    mOCTAVE_PLUS_1                                     ;; 0f:78ea $d8
    mD_1                                               ;; 0f:78eb $12
    mC_5                                               ;; 0f:78ec $50
    mOCTAVE_MINUS_1                                    ;; 0f:78ed $dc
    mAis_2                                             ;; 0f:78ee $2a
    mOCTAVE_PLUS_1                                     ;; 0f:78ef $d8
    mC_2                                               ;; 0f:78f0 $20
    mJUMP .data_0f_78ae                                ;; 0f:78f1 $e1 $ae $78
    db   $fa, $78, $24, $79, $48, $79                  ;; 0f:78f4 ??????

song1b_channel2:
    mTEMPO $6f                                         ;; 0f:78fa $e7 $6f
    mVIBRATO frequencyDeltaData                        ;; 0f:78fc $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:78ff $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:7902 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:7904 $e6 $03
    mOCTAVE_3                                          ;; 0f:7906 $d3
    mC_11                                              ;; 0f:7907 $b0
    mRest_11                                           ;; 0f:7908 $bf
    mOCTAVE_MINUS_1                                    ;; 0f:7909 $dc
    mAis_11                                            ;; 0f:790a $ba
    mRest_11                                           ;; 0f:790b $bf
    mOCTAVE_PLUS_1                                     ;; 0f:790c $d8
    mC_11                                              ;; 0f:790d $b0
    mRest_11                                           ;; 0f:790e $bf
    mD_11                                              ;; 0f:790f $b2
    mRest_11                                           ;; 0f:7910 $bf
    mC_11                                              ;; 0f:7911 $b0
    mRest_11                                           ;; 0f:7912 $bf
    mD_11                                              ;; 0f:7913 $b2
    mRest_11                                           ;; 0f:7914 $bf
    mTEMPO $6c                                         ;; 0f:7915 $e7 $6c
    mDis_8                                             ;; 0f:7917 $83
    mRest_11                                           ;; 0f:7918 $bf
    mDis_11                                            ;; 0f:7919 $b3
    mRest_11                                           ;; 0f:791a $bf
    mF_11                                              ;; 0f:791b $b5
    mRest_11                                           ;; 0f:791c $bf
    mDis_11                                            ;; 0f:791d $b3
    mRest_11                                           ;; 0f:791e $bf
    mCis_11                                            ;; 0f:791f $b1
    mRest_11                                           ;; 0f:7920 $bf
    mDis_4                                             ;; 0f:7921 $43
    mRest_10                                           ;; 0f:7922 $af
    mEND                                               ;; 0f:7923 $ff

song1b_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:7924 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:7927 $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:792a $e5 $00
    mSTEREOPAN $03                                     ;; 0f:792c $e6 $03
    mOCTAVE_2                                          ;; 0f:792e $d2
    mDis_11                                            ;; 0f:792f $b3
    mRest_11                                           ;; 0f:7930 $bf
    mD_11                                              ;; 0f:7931 $b2
    mRest_11                                           ;; 0f:7932 $bf
    mDis_11                                            ;; 0f:7933 $b3
    mRest_11                                           ;; 0f:7934 $bf
    mF_11                                              ;; 0f:7935 $b5
    mRest_11                                           ;; 0f:7936 $bf
    mDis_11                                            ;; 0f:7937 $b3
    mRest_11                                           ;; 0f:7938 $bf
    mF_11                                              ;; 0f:7939 $b5
    mRest_11                                           ;; 0f:793a $bf
    mFis_8                                             ;; 0f:793b $86
    mRest_11                                           ;; 0f:793c $bf
    mFis_11                                            ;; 0f:793d $b6
    mRest_11                                           ;; 0f:793e $bf
    mGis_11                                            ;; 0f:793f $b8
    mRest_11                                           ;; 0f:7940 $bf
    mFis_11                                            ;; 0f:7941 $b6
    mRest_11                                           ;; 0f:7942 $bf
    mF_11                                              ;; 0f:7943 $b5
    mRest_11                                           ;; 0f:7944 $bf
    mG_4                                               ;; 0f:7945 $47
    mRest_10                                           ;; 0f:7946 $af
    mEND                                               ;; 0f:7947 $ff

song1b_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:7948 $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:794b $e8 $dc $7a
    mVOLUME $40                                        ;; 0f:794e $e0 $40
    mSTEREOPAN $03                                     ;; 0f:7950 $e6 $03
    mOCTAVE_2                                          ;; 0f:7952 $d2
    mGis_11                                            ;; 0f:7953 $b8
    mRest_11                                           ;; 0f:7954 $bf
    mG_11                                              ;; 0f:7955 $b7
    mRest_11                                           ;; 0f:7956 $bf
    mGis_11                                            ;; 0f:7957 $b8
    mRest_11                                           ;; 0f:7958 $bf
    mAis_11                                            ;; 0f:7959 $ba
    mRest_11                                           ;; 0f:795a $bf
    mGis_11                                            ;; 0f:795b $b8
    mRest_11                                           ;; 0f:795c $bf
    mAis_11                                            ;; 0f:795d $ba
    mRest_11                                           ;; 0f:795e $bf
    mB_5                                               ;; 0f:795f $5b
    mOCTAVE_PLUS_1                                     ;; 0f:7960 $d8
    mCis_5                                             ;; 0f:7961 $51
    mDis_4                                             ;; 0f:7962 $43
    mRest_10                                           ;; 0f:7963 $af
    mEND                                               ;; 0f:7964 $ff
    db   $6b, $79, $84, $79, $9a, $79                  ;; 0f:7965 ??????

song1c_channel2:
    mTEMPO $7d                                         ;; 0f:796b $e7 $7d
    mVIBRATO frequencyDeltaData                        ;; 0f:796d $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:7970 $e0 $82 $7a
    mDUTYCYCLE $40                                     ;; 0f:7973 $e5 $40
    mSTEREOPAN $03                                     ;; 0f:7975 $e6 $03
    mOCTAVE_2                                          ;; 0f:7977 $d2
    mF_5                                               ;; 0f:7978 $55
    mE_8                                               ;; 0f:7979 $84
    mF_8                                               ;; 0f:797a $85
    mFis_5                                             ;; 0f:797b $56
    mB_5                                               ;; 0f:797c $5b
    mAis_4                                             ;; 0f:797d $4a
    mA_10                                              ;; 0f:797e $a9
    mGis_10                                            ;; 0f:797f $a8
    mG_2                                               ;; 0f:7980 $27
    mWait_2                                            ;; 0f:7981 $2e
    mRest_2                                            ;; 0f:7982 $2f
    mEND                                               ;; 0f:7983 $ff

song1c_channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:7984 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:7987 $e0 $82 $7a
    mDUTYCYCLE $00                                     ;; 0f:798a $e5 $00
    mSTEREOPAN $03                                     ;; 0f:798c $e6 $03
    mOCTAVE_2                                          ;; 0f:798e $d2
    mD_5                                               ;; 0f:798f $52
    mCis_8                                             ;; 0f:7990 $81
    mD_8                                               ;; 0f:7991 $82
    mDis_2                                             ;; 0f:7992 $23
    mE_4                                               ;; 0f:7993 $44
    mDis_10                                            ;; 0f:7994 $a3
    mD_10                                              ;; 0f:7995 $a2
    mCis_2                                             ;; 0f:7996 $21
    mWait_2                                            ;; 0f:7997 $2e
    mRest_2                                            ;; 0f:7998 $2f
    mEND                                               ;; 0f:7999 $ff

song1c_channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:799a $e4 $4f $7a
    mWAVETABLE data_0f_7aec                            ;; 0f:799d $e8 $ec $7a
    mVOLUME $40                                        ;; 0f:79a0 $e0 $40
    mSTEREOPAN $03                                     ;; 0f:79a2 $e6 $03
    mOCTAVE_1                                          ;; 0f:79a4 $d1
    mB_2                                               ;; 0f:79a5 $2b
    mOCTAVE_PLUS_1                                     ;; 0f:79a6 $d8
    mC_2                                               ;; 0f:79a7 $20
    mCis_4                                             ;; 0f:79a8 $41
    mC_10                                              ;; 0f:79a9 $a0
    mOCTAVE_MINUS_1                                    ;; 0f:79aa $dc
    mB_10                                              ;; 0f:79ab $ab
    mAis_2                                             ;; 0f:79ac $2a
    mWait_2                                            ;; 0f:79ad $2e
    mRest_2                                            ;; 0f:79ae $2f
    mEND                                               ;; 0f:79af $ff
    db   $b6, $79, $ea, $79, $1d, $7a                  ;; 0f:79b0 ??????

song1d_Channel2:
    mTEMPO $4b                                         ;; 0f:79b6 $e7 $4b
    mVIBRATO frequencyDeltaData                        ;; 0f:79b8 $e4 $4f $7a
    mVOLUME_ENVELOPE volumeEnvelopeData                ;; 0f:79bb $e0 $82 $7a
    mDUTYCYCLE $80                                     ;; 0f:79be $e5 $80
    mSTEREOPAN $01                                     ;; 0f:79c0 $e6 $01
.data_0f_79c2:
    mOCTAVE_3                                          ;; 0f:79c2 $d3
    mB_9                                               ;; 0f:79c3 $9b
    mDis_9                                             ;; 0f:79c4 $93
    mG_9                                               ;; 0f:79c5 $97
    mB_9                                               ;; 0f:79c6 $9b
    mDis_9                                             ;; 0f:79c7 $93
    mG_9                                               ;; 0f:79c8 $97
    mOCTAVE_PLUS_1                                     ;; 0f:79c9 $d8
    mC_9                                               ;; 0f:79ca $90
    mOCTAVE_MINUS_1                                    ;; 0f:79cb $dc
    mE_9                                               ;; 0f:79cc $94
    mGis_9                                             ;; 0f:79cd $98
    mOCTAVE_PLUS_1                                     ;; 0f:79ce $d8
    mC_9                                               ;; 0f:79cf $90
    mOCTAVE_MINUS_1                                    ;; 0f:79d0 $dc
    mE_9                                               ;; 0f:79d1 $94
    mGis_9                                             ;; 0f:79d2 $98
    mOCTAVE_PLUS_1                                     ;; 0f:79d3 $d8
    mCis_9                                             ;; 0f:79d4 $91
    mOCTAVE_MINUS_1                                    ;; 0f:79d5 $dc
    mF_9                                               ;; 0f:79d6 $95
    mA_9                                               ;; 0f:79d7 $99
    mOCTAVE_PLUS_1                                     ;; 0f:79d8 $d8
    mCis_9                                             ;; 0f:79d9 $91
    mOCTAVE_MINUS_1                                    ;; 0f:79da $dc
    mF_9                                               ;; 0f:79db $95
    mA_9                                               ;; 0f:79dc $99
    mOCTAVE_PLUS_1                                     ;; 0f:79dd $d8
    mC_9                                               ;; 0f:79de $90
    mOCTAVE_MINUS_1                                    ;; 0f:79df $dc
    mE_9                                               ;; 0f:79e0 $94
    mGis_9                                             ;; 0f:79e1 $98
    mOCTAVE_PLUS_1                                     ;; 0f:79e2 $d8
    mC_9                                               ;; 0f:79e3 $90
    mOCTAVE_MINUS_1                                    ;; 0f:79e4 $dc
    mE_9                                               ;; 0f:79e5 $94
    mGis_9                                             ;; 0f:79e6 $98
    mJUMP .data_0f_79c2                                ;; 0f:79e7 $e1 $c2 $79

song1d_Channel1:
    mVIBRATO frequencyDeltaData                        ;; 0f:79ea $e4 $4f $7a
    mVOLUME_ENVELOPE data_0f_7ac0                      ;; 0f:79ed $e0 $c0 $7a
    mDUTYCYCLE $80                                     ;; 0f:79f0 $e5 $80
    mSTEREOPAN $02                                     ;; 0f:79f2 $e6 $02
    mRest_11                                           ;; 0f:79f4 $bf
.data_0f_79f5:
    mOCTAVE_3                                          ;; 0f:79f5 $d3
    mB_9                                               ;; 0f:79f6 $9b
    mDis_9                                             ;; 0f:79f7 $93
    mG_9                                               ;; 0f:79f8 $97
    mB_9                                               ;; 0f:79f9 $9b
    mDis_9                                             ;; 0f:79fa $93
    mG_9                                               ;; 0f:79fb $97
    mOCTAVE_PLUS_1                                     ;; 0f:79fc $d8
    mC_9                                               ;; 0f:79fd $90
    mOCTAVE_MINUS_1                                    ;; 0f:79fe $dc
    mE_9                                               ;; 0f:79ff $94
    mGis_9                                             ;; 0f:7a00 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a01 $d8
    mC_9                                               ;; 0f:7a02 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a03 $dc
    mE_9                                               ;; 0f:7a04 $94
    mGis_9                                             ;; 0f:7a05 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a06 $d8
    mCis_9                                             ;; 0f:7a07 $91
    mOCTAVE_MINUS_1                                    ;; 0f:7a08 $dc
    mF_9                                               ;; 0f:7a09 $95
    mA_9                                               ;; 0f:7a0a $99
    mOCTAVE_PLUS_1                                     ;; 0f:7a0b $d8
    mCis_9                                             ;; 0f:7a0c $91
    mOCTAVE_MINUS_1                                    ;; 0f:7a0d $dc
    mF_9                                               ;; 0f:7a0e $95
    mA_9                                               ;; 0f:7a0f $99
    mOCTAVE_PLUS_1                                     ;; 0f:7a10 $d8
    mC_9                                               ;; 0f:7a11 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a12 $dc
    mE_9                                               ;; 0f:7a13 $94
    mGis_9                                             ;; 0f:7a14 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a15 $d8
    mC_9                                               ;; 0f:7a16 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a17 $dc
    mE_9                                               ;; 0f:7a18 $94
    mGis_9                                             ;; 0f:7a19 $98
    mJUMP .data_0f_79f5                                ;; 0f:7a1a $e1 $f5 $79

song1d_Channel3:
    mVIBRATO frequencyDeltaData                        ;; 0f:7a1d $e4 $4f $7a
    mWAVETABLE data_0f_7adc                            ;; 0f:7a20 $e8 $dc $7a
    mVOLUME $60                                        ;; 0f:7a23 $e0 $60
    mSTEREOPAN $03                                     ;; 0f:7a25 $e6 $03
.data_0f_7a27:
    mOCTAVE_4                                          ;; 0f:7a27 $d4
    mB_9                                               ;; 0f:7a28 $9b
    mDis_9                                             ;; 0f:7a29 $93
    mG_9                                               ;; 0f:7a2a $97
    mB_9                                               ;; 0f:7a2b $9b
    mDis_9                                             ;; 0f:7a2c $93
    mG_9                                               ;; 0f:7a2d $97
    mOCTAVE_PLUS_1                                     ;; 0f:7a2e $d8
    mC_9                                               ;; 0f:7a2f $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a30 $dc
    mE_9                                               ;; 0f:7a31 $94
    mGis_9                                             ;; 0f:7a32 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a33 $d8
    mC_9                                               ;; 0f:7a34 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a35 $dc
    mE_9                                               ;; 0f:7a36 $94
    mGis_9                                             ;; 0f:7a37 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a38 $d8
    mCis_9                                             ;; 0f:7a39 $91
    mOCTAVE_MINUS_1                                    ;; 0f:7a3a $dc
    mF_9                                               ;; 0f:7a3b $95
    mA_9                                               ;; 0f:7a3c $99
    mOCTAVE_PLUS_1                                     ;; 0f:7a3d $d8
    mCis_9                                             ;; 0f:7a3e $91
    mOCTAVE_MINUS_1                                    ;; 0f:7a3f $dc
    mF_9                                               ;; 0f:7a40 $95
    mA_9                                               ;; 0f:7a41 $99
    mOCTAVE_PLUS_1                                     ;; 0f:7a42 $d8
    mC_9                                               ;; 0f:7a43 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a44 $dc
    mE_9                                               ;; 0f:7a45 $94
    mGis_9                                             ;; 0f:7a46 $98
    mOCTAVE_PLUS_1                                     ;; 0f:7a47 $d8
    mC_9                                               ;; 0f:7a48 $90
    mOCTAVE_MINUS_1                                    ;; 0f:7a49 $dc
    mE_9                                               ;; 0f:7a4a $94
    mGis_9                                             ;; 0f:7a4b $98
    mJUMP .data_0f_7a27                                ;; 0f:7a4c $e1 $27 $7a

; First byte is duration. If this is 00 then restart at the address in the next two bytes.
; Second byte is a signed offset applied to the frequency to create vibrato
frequencyDeltaData:
    db   $0a, $00, $01, $01, $01, $02, $01, $01        ;; 0f:7a4f ........
    db   $01, $00, $00, $51, $7a                       ;; 0f:7a57 .....
; (Unused)
.second:
    db   $02, $00, $02, $0a, $00, $5c, $7a             ;; 0f:7a5c ???????
.third:
    db   $04, $00, $01, $02, $01, $ff, $00, $65        ;; 0f:7a63 ........
    db   $7a                                           ;; 0f:7a6b .
; (Unused)
.fourth:
    db   $05, $00, $02, $01, $02, $00, $00, $6e        ;; 0f:7a6c ????????
    db   $7a                                           ;; 0f:7a74 ?
.fifth:
    db   $0a, $00, $01, $02, $01, $04, $01, $02        ;; 0f:7a75 ........
    db   $01, $00, $00, $77, $7a                       ;; 0f:7a7d .....

; First byte is duration, second byte is fed into NR12/NR22 volume envelope register
; If this is 00 then the code would restart at the address in the next two bytes, but this is not used.
;@data format=bb amount=37
volumeEnvelopeData:
    db   $0a, $8c                                      ;; 0f:7a82 .. $00
    db   $63, $f7                                      ;; 0f:7a84 .. $01
    db   $ff, $0a                                      ;; 0f:7a86 ?? $02
    db   $6c, $63                                      ;; 0f:7a88 ?? $03
    db   $35, $ff                                      ;; 0f:7a8a ?? $04

data_0f_7a8c:
    db   $63, $c2                                      ;; 0f:7a8c ?? $05
    db   $63, $10                                      ;; 0f:7a8e ?? $06
    db   $63, $b2                                      ;; 0f:7a90 ?? $07
    db   $63, $10                                      ;; 0f:7a92 ?? $08

data_0f_7a94:
    db   $63, $a2                                      ;; 0f:7a94 ?? $09
    db   $63, $10                                      ;; 0f:7a96 ?? $0a
    db   $05, $92                                      ;; 0f:7a98 ?? $0b
    db   $63, $10                                      ;; 0f:7a9a ?? $0c
    db   $05, $82                                      ;; 0f:7a9c ?? $0d
    db   $63, $10                                      ;; 0f:7a9e ?? $0e

data_0f_7aa0:
    db   $63, $72                                      ;; 0f:7aa0 ?? $0f
    db   $63, $10                                      ;; 0f:7aa2 ?? $10
    db   $63, $62                                      ;; 0f:7aa4 ?? $11
    db   $63, $10                                      ;; 0f:7aa6 ?? $12

data_0f_7aa8:
    db   $63, $c4                                      ;; 0f:7aa8 .. $13

data_0f_7aaa:
    db   $63, $b4                                      ;; 0f:7aaa ?? $14

data_0f_7aac:
    db   $63, $a4                                      ;; 0f:7aac ?? $15

data_0f_7aae:
    db   $63, $94                                      ;; 0f:7aae .. $16

data_0f_7ab0:
    db   $63, $84                                      ;; 0f:7ab0 .. $17

data_0f_7ab2:
    db   $63, $74                                      ;; 0f:7ab2 .. $18

data_0f_7ab4:
    db   $63, $64                                      ;; 0f:7ab4 .. $19
    db   $63, $54                                      ;; 0f:7ab6 ?? $1a
    db   $63, $44                                      ;; 0f:7ab8 ?? $1b
    db   $63, $34                                      ;; 0f:7aba ?? $1c
    db   $63, $24                                      ;; 0f:7abc ?? $1d

data_0f_7abe:
    db   $63, $c7                                      ;; 0f:7abe .. $1e

data_0f_7ac0:
    db   $63, $b7                                      ;; 0f:7ac0 .. $1f

data_0f_7ac2:
    db   $63, $a7                                      ;; 0f:7ac2 .. $20

data_0f_7ac4:
    db   $63, $97                                      ;; 0f:7ac4 ?? $21

data_0f_7ac6:
    db   $63, $87                                      ;; 0f:7ac6 ?? $22

data_0f_7ac8:
    db   $63, $77                                      ;; 0f:7ac8 .. $23

data_0f_7aca:
    db   $63, $67                                      ;; 0f:7aca ?? $24

; Wave table patterns. A lot can be done with the wave table, but FFA just makes it another square wave.
; 7acc: 50% duty cycle
; 7adc: 25% duty cycle
; 7aec: 12.5% duty cycle
; 7afc: 50% duty cycle lower volume
; 7b0c: 25% duty cycle lower volume
; 7b1c: 12.5% duty cycle lower volume
; 7b2c: Weird tone (Unused.)
;@data format=bbbbbbbbbbbbbbbb amount=7
wavePatternsData:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7acc ................ $00

data_0f_7adc:
    db   $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7adc ................ $01

data_0f_7aec:
    db   $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7aec ................ $02

data_0f_7afc:
    db   $bb, $bb, $bb, $bb, $bb, $bb, $bb, $bb, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7afc ................ $03

data_0f_7b0c:
    db   $bb, $bb, $bb, $bb, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7b0c ................ $04

data_0f_7b1c:
    db   $bb, $bb, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7b1c ???????????????? $05
    db   $ff, $cc, $99, $66, $99, $cc, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 0f:7b2c ???????????????? $06

;@data format=p amount=37
soundEffectDataChannel1:
    dw   soundEffect00_Channel1                        ;; 0f:7b3c .. $00
    dw   soundEffect01_Channel1                        ;; 0f:7b3e .. $01
    dw   soundEffectChannelUnused                      ;; 0f:7b40 ?? $02
    dw   soundEffectChannelUnused                      ;; 0f:7b42 ?? $03
    dw   soundEffect04_Channel1                        ;; 0f:7b44 .. $04
    dw   soundEffect05_Channel1                        ;; 0f:7b46 ?? $05
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
    dw   soundEffect00_Channel4                        ;; 0f:7b86 .. $00
    dw   soundEffect01_Channel4                        ;; 0f:7b88 .. $01
    dw   soundEffect02_Channel1                        ;; 0f:7b8a ?? $02
    dw   soundEffect03_Channel4                        ;; 0f:7b8c ?? $03
    dw   soundEffectChannelUnused                      ;; 0f:7b8e .. $04
    dw   soundEffect05_Channel4                        ;; 0f:7b90 ?? $05
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
    dw   soundEffect24_Channel4                        ;; 0f:7bce ?? $24

soundEffectChannelUnused:
    db   $00                                           ;; 0f:7bd0 .

soundEffect00_Channel1:
    db   $08, $23, $40, $f1, $5a, $84, $07, $25        ;; 0f:7bd1 ........
    db   $80, $51, $ff, $85, $00                       ;; 0f:7bd9 .....

soundEffect00_Channel4:
    db   $05, $8a, $4e, $07, $7a, $24, $00             ;; 0f:7bde .......

soundEffect01_Channel1:
    db   $05, $23, $40, $f1, $5a, $84, $02, $23        ;; 0f:7be5 ........
    db   $00, $21, $ff, $85, $00                       ;; 0f:7bed .....

soundEffect01_Channel4:
    db   $02, $8a, $2f, $04, $7a, $32, $00             ;; 0f:7bf2 .......

soundEffect02_Channel1:
    db   $2a, $f8, $56, $00                            ;; 0f:7bf9 ????

soundEffect03_Channel4:
    db   $05, $f4, $62, $03, $c7, $32, $07, $f3        ;; 0f:7bfd ????????
    db   $37, $05, $f4, $71, $05, $d7, $30, $2b        ;; 0f:7c05 ????????
    db   $f3, $37, $00                                 ;; 0f:7c0d ???

soundEffect04_Channel1:
    db   $31, $47, $80, $f5, $a0, $86, $15, $00        ;; 0f:7c10 ........
    db   $40, $d2, $d9, $87, $00                       ;; 0f:7c18 .....

soundEffect05_Channel1:
    db   $03, $00, $80, $72, $7a, $87, $03, $00        ;; 0f:7c1d ????????
    db   $80, $92, $8a, $87, $03, $00, $80, $b2        ;; 0f:7c25 ????????
    db   $9a, $87, $03, $00, $80, $d2, $b0, $87        ;; 0f:7c2d ????????
    db   $08, $00, $80, $f2, $cc, $87, $00             ;; 0f:7c35 ???????

soundEffect05_Channel4:
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

soundEffect24_Channel4:
    db   $3a, $f0, $8a                                 ;; 0f:7eb0 ???
