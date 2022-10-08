;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank04", ROMX[$4000], BANK[$04]
;@call_to_bank_jumptable amount=7
    call_to_bank_target call_04_4090                   ;; 04:4000 pP
    call_to_bank_target spawnBoss                      ;; 04:4002 pP
    call_to_bank_target call_04_4425                   ;; 04:4004 ??
    call_to_bank_target call_04_45fa                   ;; 04:4006 pP
    call_to_bank_target call_04_4735                   ;; 04:4008 ??
    call_to_bank_target bossCollisionHandling          ;; 04:400a pP
    call_to_bank_target call_04_400e                   ;; 04:400c pP

call_04_400e:
    push BC                                            ;; 04:400e $c5
    call getObjectCollisionFlags                       ;; 04:400f $cd $6d $0c
    pop  BC                                            ;; 04:4012 $c1
    and  A, $40                                        ;; 04:4013 $e6 $40
    ld   B, A                                          ;; 04:4015 $47
    push BC                                            ;; 04:4016 $c5
    call GetObjectY                                    ;; 04:4017 $cd $3e $0c
    pop  BC                                            ;; 04:401a $c1
    add  A, $38                                        ;; 04:401b $c6 $38
    bit  7, A                                          ;; 04:401d $cb $7f
    jr   NZ, .jr_04_4025                               ;; 04:401f $20 $04
    set  2, B                                          ;; 04:4021 $cb $d0
    jr   .jr_04_4027                                   ;; 04:4023 $18 $02
.jr_04_4025:
    set  3, B                                          ;; 04:4025 $cb $d8
.jr_04_4027:
    ld   E, A                                          ;; 04:4027 $5f
    ld   L, $40                                        ;; 04:4028 $2e $40
    ld   H, $c0                                        ;; 04:402a $26 $c0
    bit  6, B                                          ;; 04:402c $cb $70
    jr   NZ, .jr_04_4034                               ;; 04:402e $20 $04
    ld   L, $48                                        ;; 04:4030 $2e $48
    ld   H, $b8                                        ;; 04:4032 $26 $b8
.jr_04_4034:
    sub  A, L                                          ;; 04:4034 $95
    ld   D, A                                          ;; 04:4035 $57
    ld   A, H                                          ;; 04:4036 $7c
    sub  A, E                                          ;; 04:4037 $93
    bit  2, B                                          ;; 04:4038 $cb $50
    jr   NZ, .jr_04_403d                               ;; 04:403a $20 $01
    ld   D, A                                          ;; 04:403c $57
.jr_04_403d:
    push DE                                            ;; 04:403d $d5
    push BC                                            ;; 04:403e $c5
    call GetObjectX                                    ;; 04:403f $cd $2d $0c
    pop  BC                                            ;; 04:4042 $c1
    pop  DE                                            ;; 04:4043 $d1
    add  A, $30                                        ;; 04:4044 $c6 $30
    bit  7, A                                          ;; 04:4046 $cb $7f
    jr   Z, .jr_04_404e                                ;; 04:4048 $28 $04
    set  0, B                                          ;; 04:404a $cb $c0
    jr   .jr_04_4050                                   ;; 04:404c $18 $02
.jr_04_404e:
    set  1, B                                          ;; 04:404e $cb $c8
.jr_04_4050:
    ld   E, A                                          ;; 04:4050 $5f
    ld   L, $30                                        ;; 04:4051 $2e $30
    ld   H, $d0                                        ;; 04:4053 $26 $d0
    bit  6, B                                          ;; 04:4055 $cb $70
    jr   NZ, .jr_04_405d                               ;; 04:4057 $20 $04
    ld   L, $38                                        ;; 04:4059 $2e $38
    ld   H, $c8                                        ;; 04:405b $26 $c8
.jr_04_405d:
    sub  A, L                                          ;; 04:405d $95
    ld   L, A                                          ;; 04:405e $6f
    ld   A, H                                          ;; 04:405f $7c
    sub  A, E                                          ;; 04:4060 $93
    ld   E, A                                          ;; 04:4061 $5f
    bit  0, B                                          ;; 04:4062 $cb $40
    jr   NZ, .jr_04_4067                               ;; 04:4064 $20 $01
    ld   E, L                                          ;; 04:4066 $5d
.jr_04_4067:
    ld   A, D                                          ;; 04:4067 $7a
    or   A, E                                          ;; 04:4068 $b3
    bit  7, A                                          ;; 04:4069 $cb $7f
    jr   NZ, .jr_04_4080                               ;; 04:406b $20 $13
    ld   A, D                                          ;; 04:406d $7a
    cp   A, E                                          ;; 04:406e $bb
    jr   C, .jr_04_407a                                ;; 04:406f $38 $09
    jr   Z, .jr_04_407e                                ;; 04:4071 $28 $0b
    ld   A, E                                          ;; 04:4073 $7b
    res  3, B                                          ;; 04:4074 $cb $98
    res  2, B                                          ;; 04:4076 $cb $90
    jr   .jr_04_407e                                   ;; 04:4078 $18 $04
.jr_04_407a:
    res  1, B                                          ;; 04:407a $cb $88
    res  0, B                                          ;; 04:407c $cb $80
.jr_04_407e:
    or   A, A                                          ;; 04:407e $b7
    ret                                                ;; 04:407f $c9
.jr_04_4080:
    ld   A, D                                          ;; 04:4080 $7a
    bit  7, E                                          ;; 04:4081 $cb $7b
    jr   Z, .jr_04_408e                                ;; 04:4083 $28 $09
    ld   A, E                                          ;; 04:4085 $7b
    bit  7, D                                          ;; 04:4086 $cb $7a
    jr   Z, .jr_04_408e                                ;; 04:4088 $28 $04
    cp   A, D                                          ;; 04:408a $ba
    jr   Z, .jr_04_408e                                ;; 04:408b $28 $01
    ld   A, D                                          ;; 04:408d $7a
.jr_04_408e:
    or   A, A                                          ;; 04:408e $b7
    ret                                                ;; 04:408f $c9

call_04_4090:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:4090 $fa $39 $d4
    ld   D, A                                          ;; 04:4093 $57
    ld   A, [wCurrentBossDataPointer]                  ;; 04:4094 $fa $38 $d4
    ld   E, A                                          ;; 04:4097 $5f
    ld   HL, $00                                       ;; 04:4098 $21 $00 $00
    add  HL, DE                                        ;; 04:409b $19
    ld   A, [HL]                                       ;; 04:409c $7e
    ld   [wbossSpeedTimer], A                          ;; 04:409d $ea $e9 $d3
    call call_04_40a4                                  ;; 04:40a0 $cd $a4 $40
    ret                                                ;; 04:40a3 $c9

call_04_40a4:
    push DE                                            ;; 04:40a4 $d5
    ld   A, [wD3EE]                                    ;; 04:40a5 $fa $ee $d3
    ld   L, A                                          ;; 04:40a8 $6f
    ld   H, $00                                        ;; 04:40a9 $26 $00
    add  HL, HL                                        ;; 04:40ab $29
    ld   A, [wD43F]                                    ;; 04:40ac $fa $3f $d4
    ld   D, A                                          ;; 04:40af $57
    ld   A, [wD43E]                                    ;; 04:40b0 $fa $3e $d4
    ld   E, A                                          ;; 04:40b3 $5f
    add  HL, DE                                        ;; 04:40b4 $19
    ld   A, [HL+]                                      ;; 04:40b5 $2a
    cp   A, $ff                                        ;; 04:40b6 $fe $ff
    call Z, call_04_4209                               ;; 04:40b8 $cc $09 $42
    jr   Z, .jr_04_40f1                                ;; 04:40bb $28 $34
    ld   DE, wbossObjectsRuntimeData                   ;; 04:40bd $11 $42 $d4
    call call_04_419e                                  ;; 04:40c0 $cd $9e $41
    push AF                                            ;; 04:40c3 $f5
    ld   A, [HL+]                                      ;; 04:40c4 $2a
    ld   C, A                                          ;; 04:40c5 $4f
    sra  A                                             ;; 04:40c6 $cb $2f
    sra  A                                             ;; 04:40c8 $cb $2f
    sra  A                                             ;; 04:40ca $cb $2f
    sra  A                                             ;; 04:40cc $cb $2f
    add  A, E                                          ;; 04:40ce $83
    ld   E, A                                          ;; 04:40cf $5f
    ld   A, C                                          ;; 04:40d0 $79
    swap A                                             ;; 04:40d1 $cb $37
    sra  A                                             ;; 04:40d3 $cb $2f
    sra  A                                             ;; 04:40d5 $cb $2f
    sra  A                                             ;; 04:40d7 $cb $2f
    sra  A                                             ;; 04:40d9 $cb $2f
    add  A, D                                          ;; 04:40db $82
    ld   D, A                                          ;; 04:40dc $57
    call call_04_4188                                  ;; 04:40dd $cd $88 $41
    ld   A, [wD3E8]                                    ;; 04:40e0 $fa $e8 $d3
    ld   C, A                                          ;; 04:40e3 $4f
    pop  AF                                            ;; 04:40e4 $f1
    call updateObjectPosition                          ;; 04:40e5 $cd $11 $06
    pop  DE                                            ;; 04:40e8 $d1
    call call_04_40f3                                  ;; 04:40e9 $cd $f3 $40
    ld   HL, wD3EE                                     ;; 04:40ec $21 $ee $d3
    inc  [HL]                                          ;; 04:40ef $34
    ret                                                ;; 04:40f0 $c9
.jr_04_40f1:
    pop  DE                                            ;; 04:40f1 $d1
    ret                                                ;; 04:40f2 $c9

call_04_40f3:
    ld   HL, $04                                       ;; 04:40f3 $21 $04 $00
    add  HL, DE                                        ;; 04:40f6 $19
    ld   A, [HL]                                       ;; 04:40f7 $7e
    dec  A                                             ;; 04:40f8 $3d
    push AF                                            ;; 04:40f9 $f5
    ld   L, A                                          ;; 04:40fa $6f
    ld   A, [wD3EF]                                    ;; 04:40fb $fa $ef $d3
    ld   H, $00                                        ;; 04:40fe $26 $00
    ld   E, L                                          ;; 04:4100 $5d
    ld   D, H                                          ;; 04:4101 $54
    add  HL, DE                                        ;; 04:4102 $19
    add  HL, DE                                        ;; 04:4103 $19
    call MultiplyHL_by_A                               ;; 04:4104 $cd $7b $2b
    ld   A, [wD441]                                    ;; 04:4107 $fa $41 $d4
    ld   D, A                                          ;; 04:410a $57
    ld   A, [wD440]                                    ;; 04:410b $fa $40 $d4
    ld   E, A                                          ;; 04:410e $5f
    add  HL, DE                                        ;; 04:410f $19
    ld   A, [HL]                                       ;; 04:4110 $7e
    cp   A, $ff                                        ;; 04:4111 $fe $ff
    call Z, call_04_4148                               ;; 04:4113 $cc $48 $41
    pop  AF                                            ;; 04:4116 $f1
    ld   B, A                                          ;; 04:4117 $47
    ld   DE, wbossObjectsRuntimeData                   ;; 04:4118 $11 $42 $d4
.jr_04_411b:
    push BC                                            ;; 04:411b $c5
    ld   B, [HL]                                       ;; 04:411c $46
    inc  HL                                            ;; 04:411d $23
    ld   A, $06                                        ;; 04:411e $3e $06
    add  A, E                                          ;; 04:4120 $83
    ld   E, A                                          ;; 04:4121 $5f
    ld   A, $00                                        ;; 04:4122 $3e $00
    adc  A, D                                          ;; 04:4124 $8a
    ld   D, A                                          ;; 04:4125 $57
    ld   A, [DE]                                       ;; 04:4126 $1a
    ld   C, A                                          ;; 04:4127 $4f
    push DE                                            ;; 04:4128 $d5
    push HL                                            ;; 04:4129 $e5
    ld   L, C                                          ;; 04:412a $69
    ld   A, B                                          ;; 04:412b $78
    call call_04_419e                                  ;; 04:412c $cd $9e $41
    ld   C, L                                          ;; 04:412f $4d
    pop  HL                                            ;; 04:4130 $e1
    push AF                                            ;; 04:4131 $f5
    ld   A, [HL+]                                      ;; 04:4132 $2a
    add  A, E                                          ;; 04:4133 $83
    ld   E, A                                          ;; 04:4134 $5f
    ld   A, [HL+]                                      ;; 04:4135 $2a
    add  A, D                                          ;; 04:4136 $82
    ld   D, A                                          ;; 04:4137 $57
    pop  AF                                            ;; 04:4138 $f1
    push HL                                            ;; 04:4139 $e5
    call updateObjectPosition                          ;; 04:413a $cd $11 $06
    pop  HL                                            ;; 04:413d $e1
    pop  DE                                            ;; 04:413e $d1
    pop  BC                                            ;; 04:413f $c1
    dec  B                                             ;; 04:4140 $05
    jr   NZ, .jr_04_411b                               ;; 04:4141 $20 $d8
    ld   HL, wD3EF                                     ;; 04:4143 $21 $ef $d3
    inc  [HL]                                          ;; 04:4146 $34
    ret                                                ;; 04:4147 $c9

call_04_4148:
    ld   A, $00                                        ;; 04:4148 $3e $00
    ld   [wD3EF], A                                    ;; 04:414a $ea $ef $d3
    ld   A, [wD441]                                    ;; 04:414d $fa $41 $d4
    ld   H, A                                          ;; 04:4150 $67
    ld   A, [wD440]                                    ;; 04:4151 $fa $40 $d4
    ld   L, A                                          ;; 04:4154 $6f
    ret                                                ;; 04:4155 $c9

call_04_4156:
    push HL                                            ;; 04:4156 $e5
    push AF                                            ;; 04:4157 $f5
    ld   HL, $04                                       ;; 04:4158 $21 $04 $00
    add  HL, DE                                        ;; 04:415b $19
    ld   A, [HL]                                       ;; 04:415c $7e
    ld   E, A                                          ;; 04:415d $5f
    ld   D, $00                                        ;; 04:415e $16 $00
    ld   HL, wD3F6                                     ;; 04:4160 $21 $f6 $d3
    add  HL, DE                                        ;; 04:4163 $19
    add  HL, DE                                        ;; 04:4164 $19
    ld   E, [HL]                                       ;; 04:4165 $5e
    inc  HL                                            ;; 04:4166 $23
    ld   D, [HL]                                       ;; 04:4167 $56
    pop  AF                                            ;; 04:4168 $f1
    pop  HL                                            ;; 04:4169 $e1
    ret                                                ;; 04:416a $c9

call_04_416b:
    push HL                                            ;; 04:416b $e5
    push AF                                            ;; 04:416c $f5
    ld   HL, $04                                       ;; 04:416d $21 $04 $00
    add  HL, DE                                        ;; 04:4170 $19
    ld   A, [HL]                                       ;; 04:4171 $7e
    ld   E, A                                          ;; 04:4172 $5f
    inc  A                                             ;; 04:4173 $3c
    cp   A, $20                                        ;; 04:4174 $fe $20
    jr   C, .jr_04_417a                                ;; 04:4176 $38 $02
    ld   A, $00                                        ;; 04:4178 $3e $00
.jr_04_417a:
    ld   [HL], A                                       ;; 04:417a $77
    ld   D, $00                                        ;; 04:417b $16 $00
    ld   HL, wD3F6                                     ;; 04:417d $21 $f6 $d3
    add  HL, DE                                        ;; 04:4180 $19
    add  HL, DE                                        ;; 04:4181 $19
    ld   E, [HL]                                       ;; 04:4182 $5e
    inc  HL                                            ;; 04:4183 $23
    ld   D, [HL]                                       ;; 04:4184 $56
    pop  AF                                            ;; 04:4185 $f1
    pop  HL                                            ;; 04:4186 $e1
    ret                                                ;; 04:4187 $c9

call_04_4188:
    push HL                                            ;; 04:4188 $e5
    push AF                                            ;; 04:4189 $f5
    push DE                                            ;; 04:418a $d5
    ld   HL, wbossObjectsRuntimeData._04               ;; 04:418b $21 $46 $d4
    ld   A, [HL]                                       ;; 04:418e $7e
    add  A, A                                          ;; 04:418f $87
    ld   E, A                                          ;; 04:4190 $5f
    ld   D, $00                                        ;; 04:4191 $16 $00
    ld   HL, wD3F6                                     ;; 04:4193 $21 $f6 $d3
    add  HL, DE                                        ;; 04:4196 $19
    pop  DE                                            ;; 04:4197 $d1
    ld   [HL], E                                       ;; 04:4198 $73
    inc  HL                                            ;; 04:4199 $23
    ld   [HL], D                                       ;; 04:419a $72
    pop  AF                                            ;; 04:419b $f1
    pop  HL                                            ;; 04:419c $e1
    ret                                                ;; 04:419d $c9

call_04_419e:
    ld   C, A                                          ;; 04:419e $4f
    and  A, $3c                                        ;; 04:419f $e6 $3c
    srl  A                                             ;; 04:41a1 $cb $3f
    srl  A                                             ;; 04:41a3 $cb $3f
    ld   B, A                                          ;; 04:41a5 $47
    ld   A, [wBossIframes]                             ;; 04:41a6 $fa $eb $d3
    cp   A, $00                                        ;; 04:41a9 $fe $00
    jr   Z, .jr_04_41ad                                ;; 04:41ab $28 $00
.jr_04_41ad:
    ld   A, C                                          ;; 04:41ad $79
    and  A, $c0                                        ;; 04:41ae $e6 $c0
    swap A                                             ;; 04:41b0 $cb $37
    srl  A                                             ;; 04:41b2 $cb $3f
    srl  A                                             ;; 04:41b4 $cb $3f
    push HL                                            ;; 04:41b6 $e5
    push BC                                            ;; 04:41b7 $c5
    ld   HL, .data_04_41c5                             ;; 04:41b8 $21 $c5 $41
    call callJumptable                                 ;; 04:41bb $cd $70 $2b
    pop  BC                                            ;; 04:41be $c1
    pop  HL                                            ;; 04:41bf $e1
    ld   A, C                                          ;; 04:41c0 $79
    call getA_And3Power2                               ;; 04:41c1 $cd $9a $29
    ret                                                ;; 04:41c4 $c9
;@jumptable amount=4
.data_04_41c5:
    dw   call_04_41cd                                  ;; 04:41c5 pP
    dw   spawProjectileBoss                            ;; 04:41c7 ??
    dw   runBossDeathScript                            ;; 04:41c9 pP
    dw   call_04_4205                                  ;; 04:41cb ??

call_04_41cd:
    call call_04_4156                                  ;; 04:41cd $cd $56 $41
    ret                                                ;; 04:41d0 $c9

spawProjectileBoss:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:41d1 $fa $39 $d4
    ld   H, A                                          ;; 04:41d4 $67
    ld   A, [wCurrentBossDataPointer]                  ;; 04:41d5 $fa $38 $d4
    ld   L, A                                          ;; 04:41d8 $6f
    ld   BC, $05                                       ;; 04:41d9 $01 $05 $00
    add  HL, BC                                        ;; 04:41dc $09
    ld   A, [HL]                                       ;; 04:41dd $7e
    push DE                                            ;; 04:41de $d5
    call spawnProjectile_trampoline                    ;; 04:41df $cd $ec $2b
    pop  DE                                            ;; 04:41e2 $d1
    call call_04_4156                                  ;; 04:41e3 $cd $56 $41
    ret                                                ;; 04:41e6 $c9

runBossDeathScript:
    push DE                                            ;; 04:41e7 $d5
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:41e8 $fa $39 $d4
    ld   H, A                                          ;; 04:41eb $67
    ld   A, [wCurrentBossDataPointer]                  ;; 04:41ec $fa $38 $d4
    ld   L, A                                          ;; 04:41ef $6f
    ld   DE, $06                                       ;; 04:41f0 $11 $06 $00
    add  HL, DE                                        ;; 04:41f3 $19
    ld   A, [HL+]                                      ;; 04:41f4 $2a
    ld   H, [HL]                                       ;; 04:41f5 $66
    ld   L, A                                          ;; 04:41f6 $6f
    ld   A, C                                          ;; 04:41f7 $79
    call getA_And3Power2                               ;; 04:41f8 $cd $9a $29
    ld   C, $20                                        ;; 04:41fb $0e $20
    call runScriptByIndex                              ;; 04:41fd $cd $ad $31
    pop  DE                                            ;; 04:4200 $d1
    call call_04_4156                                  ;; 04:4201 $cd $56 $41
    ret                                                ;; 04:4204 $c9

call_04_4205:
    call call_04_416b                                  ;; 04:4205 $cd $6b $41
    ret                                                ;; 04:4208 $c9

call_04_4209:
    ld   HL, wD3F0                                     ;; 04:4209 $21 $f0 $d3
    dec  [HL]                                          ;; 04:420c $35
    call Z, call_04_4222                               ;; 04:420d $cc $22 $42
    ld   A, $00                                        ;; 04:4210 $3e $00
    ld   [wD3EE], A                                    ;; 04:4212 $ea $ee $d3
    ld   [wD3EF], A                                    ;; 04:4215 $ea $ef $d3
    ld   A, [wD43F]                                    ;; 04:4218 $fa $3f $d4
    ld   H, A                                          ;; 04:421b $67
    ld   A, [wD43E]                                    ;; 04:421c $fa $3e $d4
    ld   L, A                                          ;; 04:421f $6f
    ld   A, [HL+]                                      ;; 04:4220 $2a
    ret                                                ;; 04:4221 $c9

call_04_4222:
    ld   A, [wD3ED]                                    ;; 04:4222 $fa $ed $d3
    ld   L, A                                          ;; 04:4225 $6f
    add  A, A                                          ;; 04:4226 $87
    add  A, A                                          ;; 04:4227 $87
    add  A, L                                          ;; 04:4228 $85
    ld   L, A                                          ;; 04:4229 $6f
    ld   H, $00                                        ;; 04:422a $26 $00
    ld   A, [wD43D]                                    ;; 04:422c $fa $3d $d4
    ld   D, A                                          ;; 04:422f $57
    ld   A, [wD43C]                                    ;; 04:4230 $fa $3c $d4
    ld   E, A                                          ;; 04:4233 $5f
    add  HL, DE                                        ;; 04:4234 $19
    ld   A, [HL+]                                      ;; 04:4235 $2a
    cp   A, $ff                                        ;; 04:4236 $fe $ff
    call Z, call_04_425f                               ;; 04:4238 $cc $5f $42
    ret  Z                                             ;; 04:423b $c8
    call call_04_4240                                  ;; 04:423c $cd $40 $42
    ret                                                ;; 04:423f $c9

call_04_4240:
    ld   [wD3F0], A                                    ;; 04:4240 $ea $f0 $d3
    ld   E, [HL]                                       ;; 04:4243 $5e
    inc  HL                                            ;; 04:4244 $23
    ld   D, [HL]                                       ;; 04:4245 $56
    inc  HL                                            ;; 04:4246 $23
    ld   A, D                                          ;; 04:4247 $7a
    ld   [wD43F], A                                    ;; 04:4248 $ea $3f $d4
    ld   A, E                                          ;; 04:424b $7b
    ld   [wD43E], A                                    ;; 04:424c $ea $3e $d4
    ld   A, [HL+]                                      ;; 04:424f $2a
    ld   H, [HL]                                       ;; 04:4250 $66
    ld   L, A                                          ;; 04:4251 $6f
    ld   A, H                                          ;; 04:4252 $7c
    ld   [wD441], A                                    ;; 04:4253 $ea $41 $d4
    ld   A, L                                          ;; 04:4256 $7d
    ld   [wD440], A                                    ;; 04:4257 $ea $40 $d4
    ld   HL, wD3ED                                     ;; 04:425a $21 $ed $d3
    inc  [HL]                                          ;; 04:425d $34
    ret                                                ;; 04:425e $c9

call_04_425f:
    ld   A, [wCurrentBossHP.high]                      ;; 04:425f $fa $f5 $d3
    bit  7, A                                          ;; 04:4262 $cb $7f
    jr   NZ, .dead                                     ;; 04:4264 $20 $46
    ld   A, [wD3EC]                                    ;; 04:4266 $fa $ec $d3
    ld   L, A                                          ;; 04:4269 $6f
    add  A, A                                          ;; 04:426a $87
    add  A, A                                          ;; 04:426b $87
    add  A, L                                          ;; 04:426c $85
    ld   L, A                                          ;; 04:426d $6f
    ld   H, $00                                        ;; 04:426e $26 $00
    add  HL, HL                                        ;; 04:4270 $29
    ld   A, [wCurrentBossPatternPointer.high]          ;; 04:4271 $fa $3b $d4
    ld   D, A                                          ;; 04:4274 $57
    ld   A, [wCurrentBossPatternPointer]               ;; 04:4275 $fa $3a $d4
    ld   E, A                                          ;; 04:4278 $5f
    add  HL, DE                                        ;; 04:4279 $19
    ld   E, [HL]                                       ;; 04:427a $5e
    inc  HL                                            ;; 04:427b $23
    ld   D, [HL]                                       ;; 04:427c $56
    dec  HL                                            ;; 04:427d $2b
    ld   A, D                                          ;; 04:427e $7a
    and  A, E                                          ;; 04:427f $a3
    cp   A, $ff                                        ;; 04:4280 $fe $ff
    call Z, initBossMovement                           ;; 04:4282 $cc $c5 $42
    push HL                                            ;; 04:4285 $e5
    ld   DE, $08                                       ;; 04:4286 $11 $08 $00
    add  HL, DE                                        ;; 04:4289 $19
    ld   A, [HL+]                                      ;; 04:428a $2a
    inc  A                                             ;; 04:428b $3c
    add  A, A                                          ;; 04:428c $87
    add  A, A                                          ;; 04:428d $87
    add  A, A                                          ;; 04:428e $87
    ld   E, A                                          ;; 04:428f $5f
    ld   A, [HL+]                                      ;; 04:4290 $2a
    inc  A                                             ;; 04:4291 $3c
    inc  A                                             ;; 04:4292 $3c
    add  A, A                                          ;; 04:4293 $87
    add  A, A                                          ;; 04:4294 $87
    add  A, A                                          ;; 04:4295 $87
    ld   D, A                                          ;; 04:4296 $57
    call call_04_4188                                  ;; 04:4297 $cd $88 $41
    call getRandomByte                                 ;; 04:429a $cd $1e $2b
    and  A, $03                                        ;; 04:429d $e6 $03
    add  A, A                                          ;; 04:429f $87
    ld   L, A                                          ;; 04:42a0 $6f
    ld   H, $00                                        ;; 04:42a1 $26 $00
    pop  DE                                            ;; 04:42a3 $d1
    add  HL, DE                                        ;; 04:42a4 $19
    ld   A, [HL+]                                      ;; 04:42a5 $2a
    ld   H, [HL]                                       ;; 04:42a6 $66
    ld   L, A                                          ;; 04:42a7 $6f
    call call_04_42b0                                  ;; 04:42a8 $cd $b0 $42
    ret                                                ;; 04:42ab $c9
.dead:
    call processBossDeath                              ;; 04:42ac $cd $75 $45
    ret                                                ;; 04:42af $c9

call_04_42b0:
    push HL                                            ;; 04:42b0 $e5
    ld   A, H                                          ;; 04:42b1 $7c
    ld   [wD43D], A                                    ;; 04:42b2 $ea $3d $d4
    ld   A, L                                          ;; 04:42b5 $7d
    ld   [wD43C], A                                    ;; 04:42b6 $ea $3c $d4
    ld   HL, wD3EC                                     ;; 04:42b9 $21 $ec $d3
    inc  [HL]                                          ;; 04:42bc $34
    ld   A, $00                                        ;; 04:42bd $3e $00
    ld   [wD3ED], A                                    ;; 04:42bf $ea $ed $d3
    pop  HL                                            ;; 04:42c2 $e1
    ld   A, [HL+]                                      ;; 04:42c3 $2a
    ret                                                ;; 04:42c4 $c9

initBossMovement:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:42c5 $fa $39 $d4
    ld   D, A                                          ;; 04:42c8 $57
    ld   A, [wCurrentBossDataPointer]                  ;; 04:42c9 $fa $38 $d4
    ld   E, A                                          ;; 04:42cc $5f
    ld   HL, $12                                       ;; 04:42cd $21 $12 $00
    add  HL, DE                                        ;; 04:42d0 $19
    ld   A, [HL+]                                      ;; 04:42d1 $2a
    ld   H, [HL]                                       ;; 04:42d2 $66
    ld   L, A                                          ;; 04:42d3 $6f
    call setBossMovement                               ;; 04:42d4 $cd $d8 $42
    ret                                                ;; 04:42d7 $c9

setBossMovement:
    ld   A, H                                          ;; 04:42d8 $7c
    ld   [wCurrentBossPatternPointer.high], A          ;; 04:42d9 $ea $3b $d4
    ld   A, L                                          ;; 04:42dc $7d
    ld   [wCurrentBossPatternPointer], A               ;; 04:42dd $ea $3a $d4
    ld   A, $00                                        ;; 04:42e0 $3e $00
    ld   [wD3EC], A                                    ;; 04:42e2 $ea $ec $d3
    ret                                                ;; 04:42e5 $c9

call_04_42e6:
    ld   B, $0e                                        ;; 04:42e6 $06 $0e
    ld   HL, wbossObjectsRuntimeData                   ;; 04:42e8 $21 $42 $d4
    ld   DE, $06                                       ;; 04:42eb $11 $06 $00
.jr_04_42ee:
    cp   A, [HL]                                       ;; 04:42ee $be
    ret  Z                                             ;; 04:42ef $c8
    add  HL, DE                                        ;; 04:42f0 $19
    dec  B                                             ;; 04:42f1 $05
    jr   NZ, .jr_04_42ee                               ;; 04:42f2 $20 $fa
    xor  A, A                                          ;; 04:42f4 $af
    inc  A                                             ;; 04:42f5 $3c
    ret                                                ;; 04:42f6 $c9

spawnBoss:
    ld   L, A                                          ;; 04:42f7 $6f
    ld   H, $00                                        ;; 04:42f8 $26 $00
    ld   E, L                                          ;; 04:42fa $5d
    ld   D, H                                          ;; 04:42fb $54
    add  HL, DE                                        ;; 04:42fc $19
    add  HL, DE                                        ;; 04:42fd $19
    add  HL, HL                                        ;; 04:42fe $29
    add  HL, HL                                        ;; 04:42ff $29
    add  HL, HL                                        ;; 04:4300 $29
    ld   DE, bossDataTable                             ;; 04:4301 $11 $39 $47
    add  HL, DE                                        ;; 04:4304 $19
    ld   A, H                                          ;; 04:4305 $7c
    ld   [wCurrentBossDataPointer.high], A             ;; 04:4306 $ea $39 $d4
    ld   A, L                                          ;; 04:4309 $7d
    ld   [wCurrentBossDataPointer], A                  ;; 04:430a $ea $38 $d4
    ld   D, H                                          ;; 04:430d $54
    ld   E, L                                          ;; 04:430e $5d
    call bossLoadProjectile                            ;; 04:430f $cd $73 $43
    call bossCreateObjects                             ;; 04:4312 $cd $cd $43
    call call_04_43ff                                  ;; 04:4315 $cd $ff $43
    call rollBossHP                                    ;; 04:4318 $cd $34 $43
    ld   HL, $14                                       ;; 04:431b $21 $14 $00
    add  HL, DE                                        ;; 04:431e $19
    ld   A, [HL+]                                      ;; 04:431f $2a
    ld   H, [HL]                                       ;; 04:4320 $66
    ld   L, A                                          ;; 04:4321 $6f
    ld   A, $01                                        ;; 04:4322 $3e $01
    ld   [wD3F0], A                                    ;; 04:4324 $ea $f0 $d3
    ld   [wbossSpeedTimer], A                          ;; 04:4327 $ea $e9 $d3
    call setBossMovement                               ;; 04:432a $cd $d8 $42
    call call_04_425f                                  ;; 04:432d $cd $5f $42
    call call_04_4209                                  ;; 04:4330 $cd $09 $42
    ret                                                ;; 04:4333 $c9

rollBossHP:
    push DE                                            ;; 04:4334 $d5
    call getRandomByte                                 ;; 04:4335 $cd $1e $2b
    pop  DE                                            ;; 04:4338 $d1
    push DE                                            ;; 04:4339 $d5
    ld   HL, $01                                       ;; 04:433a $21 $01 $00
    add  HL, DE                                        ;; 04:433d $19
    ld   L, [HL]                                       ;; 04:433e $6e
    ld   H, $00                                        ;; 04:433f $26 $00
    ld   C, L                                          ;; 04:4341 $4d
    srl  A                                             ;; 04:4342 $cb $3f
    srl  A                                             ;; 04:4344 $cb $3f
    srl  A                                             ;; 04:4346 $cb $3f
    srl  A                                             ;; 04:4348 $cb $3f
    cpl                                                ;; 04:434a $2f
    inc  A                                             ;; 04:434b $3c
    jr   Z, .jr_04_4353                                ;; 04:434c $28 $05
    call MultiplyHL_by_A                               ;; 04:434e $cd $7b $2b
    ld   A, L                                          ;; 04:4351 $7d
    ld   C, H                                          ;; 04:4352 $4c
.jr_04_4353:
    ld   B, $00                                        ;; 04:4353 $06 $00
    add  A, A                                          ;; 04:4355 $87
    rl   C                                             ;; 04:4356 $cb $11
    rl   B                                             ;; 04:4358 $cb $10
    add  A, A                                          ;; 04:435a $87
    rl   C                                             ;; 04:435b $cb $11
    rl   B                                             ;; 04:435d $cb $10
    add  A, A                                          ;; 04:435f $87
    rl   C                                             ;; 04:4360 $cb $11
    rl   B                                             ;; 04:4362 $cb $10
    add  A, A                                          ;; 04:4364 $87
    rl   C                                             ;; 04:4365 $cb $11
    rl   B                                             ;; 04:4367 $cb $10
    ld   A, B                                          ;; 04:4369 $78
    ld   [wCurrentBossHP.high], A                      ;; 04:436a $ea $f5 $d3
    ld   A, C                                          ;; 04:436d $79
    ld   [wCurrentBossHP], A                           ;; 04:436e $ea $f4 $d3
    pop  DE                                            ;; 04:4371 $d1
    ret                                                ;; 04:4372 $c9

bossLoadProjectile:
    ld   HL, $05                                       ;; 04:4373 $21 $05 $00
    add  HL, DE                                        ;; 04:4376 $19
    ld   A, [HL]                                       ;; 04:4377 $7e
    push DE                                            ;; 04:4378 $d5
    call call_00_2bdd                                  ;; 04:4379 $cd $dd $2b
    pop  DE                                            ;; 04:437c $d1
    push DE                                            ;; 04:437d $d5
    ld   HL, $08                                       ;; 04:437e $21 $08 $00
    add  HL, DE                                        ;; 04:4381 $19
    ld   A, [HL+]                                      ;; 04:4382 $2a
    swap A                                             ;; 04:4383 $cb $37
    ld   E, A                                          ;; 04:4385 $5f
    and  A, $0f                                        ;; 04:4386 $e6 $0f
    or   A, $80                                        ;; 04:4388 $f6 $80
    ld   D, A                                          ;; 04:438a $57
    ld   A, E                                          ;; 04:438b $7b
    and  A, $f0                                        ;; 04:438c $e6 $f0
    ld   E, A                                          ;; 04:438e $5f
    push DE                                            ;; 04:438f $d5
    ld   A, [HL+]                                      ;; 04:4390 $2a
    ld   E, A                                          ;; 04:4391 $5f
    ld   C, [HL]                                       ;; 04:4392 $4e
    inc  HL                                            ;; 04:4393 $23
    ld   B, [HL]                                       ;; 04:4394 $46
    inc  HL                                            ;; 04:4395 $23
    ld   A, [HL+]                                      ;; 04:4396 $2a
    ld   H, [HL]                                       ;; 04:4397 $66
    ld   L, A                                          ;; 04:4398 $6f
    ld   A, E                                          ;; 04:4399 $7b
    add  A, A                                          ;; 04:439a $87
    pop  DE                                            ;; 04:439b $d1
.jr_04_439c:
    push AF                                            ;; 04:439c $f5
    ld   A, [HL+]                                      ;; 04:439d $2a
    push HL                                            ;; 04:439e $e5
    swap A                                             ;; 04:439f $cb $37
    ld   L, A                                          ;; 04:43a1 $6f
    and  A, $0f                                        ;; 04:43a2 $e6 $0f
    ld   H, A                                          ;; 04:43a4 $67
    ld   A, L                                          ;; 04:43a5 $7d
    and  A, $f0                                        ;; 04:43a6 $e6 $f0
    ld   L, A                                          ;; 04:43a8 $6f
    add  HL, BC                                        ;; 04:43a9 $09
    push BC                                            ;; 04:43aa $c5
    push DE                                            ;; 04:43ab $d5
    ld   A, B                                          ;; 04:43ac $78
    swap A                                             ;; 04:43ad $cb $37
    srl  A                                             ;; 04:43af $cb $3f
    srl  A                                             ;; 04:43b1 $cb $3f
    and  A, $03                                        ;; 04:43b3 $e6 $03
    add  A, $08                                        ;; 04:43b5 $c6 $08
    res  7, H                                          ;; 04:43b7 $cb $bc
    set  6, H                                          ;; 04:43b9 $cb $f4
    call addTileGraphicCopyRequest                     ;; 04:43bb $cd $f5 $2d
    pop  DE                                            ;; 04:43be $d1
    ld   HL, $10                                       ;; 04:43bf $21 $10 $00
    add  HL, DE                                        ;; 04:43c2 $19
    ld   E, L                                          ;; 04:43c3 $5d
    ld   D, H                                          ;; 04:43c4 $54
    pop  BC                                            ;; 04:43c5 $c1
    pop  HL                                            ;; 04:43c6 $e1
    pop  AF                                            ;; 04:43c7 $f1
    dec  A                                             ;; 04:43c8 $3d
    jr   NZ, .jr_04_439c                               ;; 04:43c9 $20 $d1
    pop  DE                                            ;; 04:43cb $d1
    ret                                                ;; 04:43cc $c9

bossCreateObjects:
    push DE                                            ;; 04:43cd $d5
    ld   HL, $04                                       ;; 04:43ce $21 $04 $00
    add  HL, DE                                        ;; 04:43d1 $19
    ld   B, [HL]                                       ;; 04:43d2 $46
    ld   HL, $0e                                       ;; 04:43d3 $21 $0e $00
    add  HL, DE                                        ;; 04:43d6 $19
    ld   E, [HL]                                       ;; 04:43d7 $5e
    inc  HL                                            ;; 04:43d8 $23
    ld   D, [HL]                                       ;; 04:43d9 $56
    ld   C, $20                                        ;; 04:43da $0e $20
    ld   HL, wbossObjectsRuntimeData                   ;; 04:43dc $21 $42 $d4
.jr_04_43df:
    push BC                                            ;; 04:43df $c5
    push DE                                            ;; 04:43e0 $d5
    push HL                                            ;; 04:43e1 $e5
    ld   H, D                                          ;; 04:43e2 $62
    ld   L, E                                          ;; 04:43e3 $6b
    ld   DE, $fefe                                     ;; 04:43e4 $11 $fe $fe
    ld   A, $00                                        ;; 04:43e7 $3e $00
    call createObject                                  ;; 04:43e9 $cd $74 $0a
    pop  HL                                            ;; 04:43ec $e1
    ld   [HL], A                                       ;; 04:43ed $77
    ld   DE, $06                                       ;; 04:43ee $11 $06 $00
    add  HL, DE                                        ;; 04:43f1 $19
    pop  DE                                            ;; 04:43f2 $d1
    pop  BC                                            ;; 04:43f3 $c1
    dec  B                                             ;; 04:43f4 $05
    jr   NZ, .jr_04_43df                               ;; 04:43f5 $20 $e8
    pop  DE                                            ;; 04:43f7 $d1
    ld   A, [wbossObjectsRuntimeData]                  ;; 04:43f8 $fa $42 $d4
    ld   [wD3E8], A                                    ;; 04:43fb $ea $e8 $d3
    ret                                                ;; 04:43fe $c9

call_04_43ff:
    push DE                                            ;; 04:43ff $d5
    ld   HL, $04                                       ;; 04:4400 $21 $04 $00
    add  HL, DE                                        ;; 04:4403 $19
    ld   B, [HL]                                       ;; 04:4404 $46
    ld   HL, $10                                       ;; 04:4405 $21 $10 $00
    add  HL, DE                                        ;; 04:4408 $19
    ld   E, [HL]                                       ;; 04:4409 $5e
    inc  HL                                            ;; 04:440a $23
    ld   D, [HL]                                       ;; 04:440b $56
    ld   HL, wbossObjectsRuntimeData                   ;; 04:440c $21 $42 $d4
.jr_04_440f:
    inc  HL                                            ;; 04:440f $23
    ld   [HL], E                                       ;; 04:4410 $73
    inc  HL                                            ;; 04:4411 $23
    ld   [HL], D                                       ;; 04:4412 $72
    inc  HL                                            ;; 04:4413 $23
    xor  A, A                                          ;; 04:4414 $af
    ld   [HL+], A                                      ;; 04:4415 $22
    ld   [HL+], A                                      ;; 04:4416 $22
    ld   [HL+], A                                      ;; 04:4417 $22
    push HL                                            ;; 04:4418 $e5
    ld   HL, $08                                       ;; 04:4419 $21 $08 $00
    add  HL, DE                                        ;; 04:441c $19
    ld   D, H                                          ;; 04:441d $54
    ld   E, L                                          ;; 04:441e $5d
    pop  HL                                            ;; 04:441f $e1
    dec  B                                             ;; 04:4420 $05
    jr   NZ, .jr_04_440f                               ;; 04:4421 $20 $ec
    pop  DE                                            ;; 04:4423 $d1
    ret                                                ;; 04:4424 $c9

call_04_4425:
    ld   A, $ff                                        ;; 04:4425 $3e $ff
    ld   [wD3E8], A                                    ;; 04:4427 $ea $e8 $d3
    ld   HL, wbossObjectsRuntimeData                   ;; 04:442a $21 $42 $d4
    ld   B, $0e                                        ;; 04:442d $06 $0e
.jr_04_442f:
    ld   A, [HL]                                       ;; 04:442f $7e
    cp   A, $ff                                        ;; 04:4430 $fe $ff
    jr   Z, .jr_04_443e                                ;; 04:4432 $28 $0a
    push HL                                            ;; 04:4434 $e5
    push BC                                            ;; 04:4435 $c5
    ld   C, A                                          ;; 04:4436 $4f
    call call_00_0ae3                                  ;; 04:4437 $cd $e3 $0a
    pop  BC                                            ;; 04:443a $c1
    pop  HL                                            ;; 04:443b $e1
    ld   [HL], $ff                                     ;; 04:443c $36 $ff
.jr_04_443e:
    ld   DE, $06                                       ;; 04:443e $11 $06 $00
    add  HL, DE                                        ;; 04:4441 $19
    dec  B                                             ;; 04:4442 $05
    jr   NZ, .jr_04_442f                               ;; 04:4443 $20 $ea
    ret                                                ;; 04:4445 $c9

bossCollisionHandling:
    cp   A, $c9                                        ;; 04:4446 $fe $c9
    jr   Z, .player                                    ;; 04:4448 $28 $14
    and  A, $f0                                        ;; 04:444a $e6 $f0
    cp   A, $40                                        ;; 04:444c $fe $40
    jp   Z, .weapon                                    ;; 04:444e $ca $80 $44
    cp   A, $50                                        ;; 04:4451 $fe $50
    jp   Z, .spell                                     ;; 04:4453 $ca $d3 $44
    cp   A, $30                                        ;; 04:4456 $fe $30
    jp   Z, .followerAttack                            ;; 04:4458 $ca $0e $45
.jp_04_445b:
    ld   A, $00                                        ;; 04:445b $3e $00
    ret                                                ;; 04:445d $c9
.player:
    ld   A, [wBossIframes]                             ;; 04:445e $fa $eb $d3
    cp   A, $00                                        ;; 04:4461 $fe $00
    jr   NZ, .jp_04_445b                               ;; 04:4463 $20 $f6
    ld   A, C                                          ;; 04:4465 $79
    call call_04_42e6                                  ;; 04:4466 $cd $e6 $42
    ld   DE, $01                                       ;; 04:4469 $11 $01 $00
    add  HL, DE                                        ;; 04:446c $19
    ld   E, [HL]                                       ;; 04:446d $5e
    inc  HL                                            ;; 04:446e $23
    ld   D, [HL]                                       ;; 04:446f $56
    ld   HL, $03                                       ;; 04:4470 $21 $03 $00
    add  HL, DE                                        ;; 04:4473 $19
    ld   B, [HL]                                       ;; 04:4474 $46
    ld   HL, $06                                       ;; 04:4475 $21 $06 $00
    add  HL, DE                                        ;; 04:4478 $19
    ld   C, [HL]                                       ;; 04:4479 $4e
    call playerHit_trampoline                          ;; 04:447a $cd $56 $02
    ld   A, $c9                                        ;; 04:447d $3e $c9
    ret                                                ;; 04:447f $c9
.weapon:
    call call_04_461c                                  ;; 04:4480 $cd $1c $46
    jp   NZ, .jp_04_445b                               ;; 04:4483 $c2 $5b $44
    push BC                                            ;; 04:4486 $c5
    push HL                                            ;; 04:4487 $e5
    call getPlayerAttackElements                       ;; 04:4488 $cd $c0 $3d
    pop  DE                                            ;; 04:448b $d1
    call call_04_4655                                  ;; 04:448c $cd $55 $46
    pop  BC                                            ;; 04:448f $c1
    jp   NZ, bossCollisionHandling.immune              ;; 04:4490 $c2 $54 $45
    push BC                                            ;; 04:4493 $c5
    push DE                                            ;; 04:4494 $d5
    ld   BC, $04                                       ;; 04:4495 $01 $04 $00
    call bonusDamageIfVulnerableBoss                   ;; 04:4498 $cd $6e $46
    push DE                                            ;; 04:449b $d5
    call getTotalAP                                    ;; 04:449c $cd $0e $3d
    call specialAttack2Power75inHLBoss                 ;; 04:449f $cd $85 $46
    pop  DE                                            ;; 04:44a2 $d1
    call call_04_469b                                  ;; 04:44a3 $cd $9b $46
    pop  DE                                            ;; 04:44a6 $d1
    pop  BC                                            ;; 04:44a7 $c1
    jp   Z, bossCollisionHandling.immune               ;; 04:44a8 $ca $54 $45
    push BC                                            ;; 04:44ab $c5
    push DE                                            ;; 04:44ac $d5
    push HL                                            ;; 04:44ad $e5
    call getEquippedWeaponMinusOne                     ;; 04:44ae $cd $05 $3f
    cp   A, $08                                        ;; 04:44b1 $fe $08
    jr   NZ, bossCollisionHandling.finishedBloodSwordHeal ;; 04:44b3 $20 $0d
    pop  HL                                            ;; 04:44b5 $e1
    push HL                                            ;; 04:44b6 $e5
    srl  H                                             ;; 04:44b7 $cb $3c
    rr   L                                             ;; 04:44b9 $cb $1d
    srl  H                                             ;; 04:44bb $cb $3c
    rr   L                                             ;; 04:44bd $cb $1d
    call addHP                                         ;; 04:44bf $cd $f6 $3d
.finishedBloodSwordHeal:
    pop  HL                                            ;; 04:44c2 $e1
    pop  DE                                            ;; 04:44c3 $d1
    pop  BC                                            ;; 04:44c4 $c1
    set  7, H                                          ;; 04:44c5 $cb $fc
    ld   A, H                                          ;; 04:44c7 $7c
    ld   [wD3F3], A                                    ;; 04:44c8 $ea $f3 $d3
    ld   A, L                                          ;; 04:44cb $7d
    ld   [wD3F2], A                                    ;; 04:44cc $ea $f2 $d3
    call processHitBoss                                ;; 04:44cf $cd $28 $47
    ret                                                ;; 04:44d2 $c9
.spell:
    call call_04_461c                                  ;; 04:44d3 $cd $1c $46
    jp   NZ, .jp_04_445b                               ;; 04:44d6 $c2 $5b $44
    push BC                                            ;; 04:44d9 $c5
    push HL                                            ;; 04:44da $e5
    call getPlayerAttackElements                       ;; 04:44db $cd $c0 $3d
    pop  DE                                            ;; 04:44de $d1
    call call_04_4655                                  ;; 04:44df $cd $55 $46
    pop  BC                                            ;; 04:44e2 $c1
    jr   Z, .jr_04_44eb                                ;; 04:44e3 $28 $06
    cp   A, $12                                        ;; 04:44e5 $fe $12
    jr   Z, .jr_04_4567                                ;; 04:44e7 $28 $7e
    jr   bossCollisionHandling.immune                  ;; 04:44e9 $18 $69
.jr_04_44eb:
    push BC                                            ;; 04:44eb $c5
    push DE                                            ;; 04:44ec $d5
    ld   BC, $05                                       ;; 04:44ed $01 $05 $00
    call bonusDamageIfVulnerableBoss                   ;; 04:44f0 $cd $6e $46
    push DE                                            ;; 04:44f3 $d5
    call getTotalMagicPower                            ;; 04:44f4 $cd $af $3d
    call specialAttack2Power75inHLBoss                 ;; 04:44f7 $cd $85 $46
    pop  DE                                            ;; 04:44fa $d1
    call call_04_46c6                                  ;; 04:44fb $cd $c6 $46
    pop  DE                                            ;; 04:44fe $d1
    pop  BC                                            ;; 04:44ff $c1
    jr   Z, bossCollisionHandling.immune               ;; 04:4500 $28 $52
    ld   A, H                                          ;; 04:4502 $7c
    ld   [wD3F3], A                                    ;; 04:4503 $ea $f3 $d3
    ld   A, L                                          ;; 04:4506 $7d
    ld   [wD3F2], A                                    ;; 04:4507 $ea $f2 $d3
    call processHitBoss                                ;; 04:450a $cd $28 $47
    ret                                                ;; 04:450d $c9
.followerAttack:
    call call_04_4636                                  ;; 04:450e $cd $36 $46
    jp   NZ, .jp_04_445b                               ;; 04:4511 $c2 $5b $44
    push BC                                            ;; 04:4514 $c5
    push HL                                            ;; 04:4515 $e5
    ld   A, B                                          ;; 04:4516 $78
    call call_00_2c0f                                  ;; 04:4517 $cd $0f $2c
    pop  DE                                            ;; 04:451a $d1
    call call_04_4655                                  ;; 04:451b $cd $55 $46
    pop  BC                                            ;; 04:451e $c1
    jr   NZ, bossCollisionHandling.immune              ;; 04:451f $20 $33
    push BC                                            ;; 04:4521 $c5
    push DE                                            ;; 04:4522 $d5
    ld   A, B                                          ;; 04:4523 $78
    push AF                                            ;; 04:4524 $f5
    call call_04_4668                                  ;; 04:4525 $cd $68 $46
    pop  AF                                            ;; 04:4528 $f1
    push DE                                            ;; 04:4529 $d5
    call call_00_2c15                                  ;; 04:452a $cd $15 $2c
    call specialAttack2Power75inHLBoss                 ;; 04:452d $cd $85 $46
    pop  DE                                            ;; 04:4530 $d1
    ld   D, $00                                        ;; 04:4531 $16 $00
    call sub_HL_DE                                     ;; 04:4533 $cd $ab $2b
    pop  DE                                            ;; 04:4536 $d1
    pop  BC                                            ;; 04:4537 $c1
    jr   C, bossCollisionHandling.immune               ;; 04:4538 $38 $1a
    push BC                                            ;; 04:453a $c5
    push DE                                            ;; 04:453b $d5
    ld   D, H                                          ;; 04:453c $54
    ld   E, L                                          ;; 04:453d $5d
    call add25rndHLtoDE_4                              ;; 04:453e $cd $f6 $46
    pop  DE                                            ;; 04:4541 $d1
    pop  BC                                            ;; 04:4542 $c1
    jp   Z, bossCollisionHandling.immune               ;; 04:4543 $ca $54 $45
    set  7, H                                          ;; 04:4546 $cb $fc
    ld   A, H                                          ;; 04:4548 $7c
    ld   [wD3F3], A                                    ;; 04:4549 $ea $f3 $d3
    ld   A, L                                          ;; 04:454c $7d
    ld   [wD3F2], A                                    ;; 04:454d $ea $f2 $d3
    call processHitBoss                                ;; 04:4550 $cd $28 $47
    ret                                                ;; 04:4553 $c9
.immune:
    ld   HL, $00                                       ;; 04:4554 $21 $00 $00
    ld   A, H                                          ;; 04:4557 $7c
    ld   [wD3F3], A                                    ;; 04:4558 $ea $f3 $d3
    ld   A, L                                          ;; 04:455b $7d
    ld   [wD3F2], A                                    ;; 04:455c $ea $f2 $d3
    ld   A, $15                                        ;; 04:455f $3e $15
    call playSFX                                       ;; 04:4561 $cd $7d $29
    ld   A, $40                                        ;; 04:4564 $3e $40
    ret                                                ;; 04:4566 $c9
.jr_04_4567:
    ld   HL, $00                                       ;; 04:4567 $21 $00 $00
    ld   A, H                                          ;; 04:456a $7c
    ld   [wD3F3], A                                    ;; 04:456b $ea $f3 $d3
    ld   A, L                                          ;; 04:456e $7d
    ld   [wD3F2], A                                    ;; 04:456f $ea $f2 $d3
    ld   A, $00                                        ;; 04:4572 $3e $00
    ret                                                ;; 04:4574 $c9

processBossDeath:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:4575 $fa $39 $d4
    ld   D, A                                          ;; 04:4578 $57
    ld   A, [wCurrentBossDataPointer]                  ;; 04:4579 $fa $38 $d4
    ld   E, A                                          ;; 04:457c $5f
    ld   HL, $02                                       ;; 04:457d $21 $02 $00
    add  HL, DE                                        ;; 04:4580 $19
    ld   A, [HL+]                                      ;; 04:4581 $2a
    push HL                                            ;; 04:4582 $e5
    call add12_5rnd_bank4                              ;; 04:4583 $cd $ae $45
    call addXP                                         ;; 04:4586 $cd $16 $3d
    pop  HL                                            ;; 04:4589 $e1
    ld   A, [HL]                                       ;; 04:458a $7e
    call add12_5rnd_bank4                              ;; 04:458b $cd $ae $45
    call addMoney                                      ;; 04:458e $cd $72 $3d
    call call_04_4425                                  ;; 04:4591 $cd $25 $44
    ld   A, $d0                                        ;; 04:4594 $3e $d0
    ld   [wVideoOBP1], A                               ;; 04:4596 $ea $ac $c0
    xor  A, A                                          ;; 04:4599 $af
    ret                                                ;; 04:459a $c9
    db   $f5, $cd, $1e, $2b, $6f, $26, $00, $f1        ;; 04:459b ????????
    db   $cd, $7b, $2b, $cb, $3c, $cb, $3c, $6c        ;; 04:45a3 ????????
    db   $26, $00, $c9                                 ;; 04:45ab ???

; HL = A + ((A * RND()) >> 11)
; Add 12.5% randomness to A and store in HL
add12_5rnd_bank4:
    push AF                                            ;; 04:45ae $f5
    call getRandomByte                                 ;; 04:45af $cd $1e $2b
    ld   L, A                                          ;; 04:45b2 $6f
    ld   H, $00                                        ;; 04:45b3 $26 $00
    pop  AF                                            ;; 04:45b5 $f1
    push AF                                            ;; 04:45b6 $f5
    call MultiplyHL_by_A                               ;; 04:45b7 $cd $7b $2b
    srl  H                                             ;; 04:45ba $cb $3c
    srl  H                                             ;; 04:45bc $cb $3c
    srl  H                                             ;; 04:45be $cb $3c
    ld   L, H                                          ;; 04:45c0 $6c
    ld   H, $00                                        ;; 04:45c1 $26 $00
    pop  AF                                            ;; 04:45c3 $f1
    ld   E, A                                          ;; 04:45c4 $5f
    ld   D, $00                                        ;; 04:45c5 $16 $00
    add  HL, DE                                        ;; 04:45c7 $19
    ret                                                ;; 04:45c8 $c9

call_04_45c9:
    ld   A, [wD3E8]                                    ;; 04:45c9 $fa $e8 $d3
    ld   C, A                                          ;; 04:45cc $4f
    push BC                                            ;; 04:45cd $c5
    call GetObjectY                                    ;; 04:45ce $cd $3e $0c
    ld   D, A                                          ;; 04:45d1 $57
    pop  BC                                            ;; 04:45d2 $c1
    push DE                                            ;; 04:45d3 $d5
    call GetObjectX                                    ;; 04:45d4 $cd $2d $0c
    pop  DE                                            ;; 04:45d7 $d1
    ld   E, A                                          ;; 04:45d8 $5f
    call call_04_4188                                  ;; 04:45d9 $cd $88 $41
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:45dc $fa $39 $d4
    ld   D, A                                          ;; 04:45df $57
    ld   A, [wCurrentBossDataPointer]                  ;; 04:45e0 $fa $38 $d4
    ld   E, A                                          ;; 04:45e3 $5f
    ld   HL, $16                                       ;; 04:45e4 $21 $16 $00
    add  HL, DE                                        ;; 04:45e7 $19
    ld   A, [HL+]                                      ;; 04:45e8 $2a
    ld   H, [HL]                                       ;; 04:45e9 $66
    ld   L, A                                          ;; 04:45ea $6f
    ld   A, $01                                        ;; 04:45eb $3e $01
    ld   [wD3F0], A                                    ;; 04:45ed $ea $f0 $d3
    ld   [wbossSpeedTimer], A                          ;; 04:45f0 $ea $e9 $d3
    call call_04_42b0                                  ;; 04:45f3 $cd $b0 $42
    call call_04_4209                                  ;; 04:45f6 $cd $09 $42
    ret                                                ;; 04:45f9 $c9

call_04_45fa:
    ld   A, [wD3F3]                                    ;; 04:45fa $fa $f3 $d3
    ld   H, A                                          ;; 04:45fd $67
    ld   A, [wD3F2]                                    ;; 04:45fe $fa $f2 $d3
    ld   L, A                                          ;; 04:4601 $6f
    res  7, H                                          ;; 04:4602 $cb $bc
    ld   BC, $00                                       ;; 04:4604 $01 $00 $00
    ld   A, B                                          ;; 04:4607 $78
    ld   [wD3F3], A                                    ;; 04:4608 $ea $f3 $d3
    ld   A, C                                          ;; 04:460b $79
    ld   [wD3F2], A                                    ;; 04:460c $ea $f2 $d3
    ld   A, H                                          ;; 04:460f $7c
    or   A, L                                          ;; 04:4610 $b5
    ret  Z                                             ;; 04:4611 $c8
    call subHPBoss                                     ;; 04:4612 $cd $0b $47
    jr   Z, .jr_04_4618                                ;; 04:4615 $28 $01
    ret  NC                                            ;; 04:4617 $d0
.jr_04_4618:
    call call_04_45c9                                  ;; 04:4618 $cd $c9 $45
    ret                                                ;; 04:461b $c9

call_04_461c:
    ld   A, [wBossIframes]                             ;; 04:461c $fa $eb $d3
    cp   A, $00                                        ;; 04:461f $fe $00
    jr   NZ, .jr_04_4633                               ;; 04:4621 $20 $10
    ld   A, [wCF5B]                                    ;; 04:4623 $fa $5b $cf
    cp   A, D                                          ;; 04:4626 $ba
    jr   C, .jr_04_4633                                ;; 04:4627 $38 $0a
    cp   A, E                                          ;; 04:4629 $bb
    jr   C, .jr_04_4633                                ;; 04:462a $38 $07
    push BC                                            ;; 04:462c $c5
    ld   A, C                                          ;; 04:462d $79
    call call_04_42e6                                  ;; 04:462e $cd $e6 $42
    pop  BC                                            ;; 04:4631 $c1
    ret                                                ;; 04:4632 $c9
.jr_04_4633:
    xor  A, A                                          ;; 04:4633 $af
    inc  A                                             ;; 04:4634 $3c
    ret                                                ;; 04:4635 $c9

call_04_4636:
    ld   A, [wBossIframes]                             ;; 04:4636 $fa $eb $d3
    cp   A, $00                                        ;; 04:4639 $fe $00
    jr   NZ, .jr_04_4652                               ;; 04:463b $20 $15
    push DE                                            ;; 04:463d $d5
    push BC                                            ;; 04:463e $c5
    ld   A, B                                          ;; 04:463f $78
    call call_00_2c09                                  ;; 04:4640 $cd $09 $2c
    pop  BC                                            ;; 04:4643 $c1
    pop  DE                                            ;; 04:4644 $d1
    cp   A, D                                          ;; 04:4645 $ba
    jr   C, .jr_04_4652                                ;; 04:4646 $38 $0a
    cp   A, E                                          ;; 04:4648 $bb
    jr   C, .jr_04_4652                                ;; 04:4649 $38 $07
    push BC                                            ;; 04:464b $c5
    ld   A, C                                          ;; 04:464c $79
    call call_04_42e6                                  ;; 04:464d $cd $e6 $42
    pop  BC                                            ;; 04:4650 $c1
    ret                                                ;; 04:4651 $c9
.jr_04_4652:
    xor  A, A                                          ;; 04:4652 $af
    inc  A                                             ;; 04:4653 $3c
    ret                                                ;; 04:4654 $c9

call_04_4655:
    ld   HL, $01                                       ;; 04:4655 $21 $01 $00
    add  HL, DE                                        ;; 04:4658 $19
    ld   C, [HL]                                       ;; 04:4659 $4e
    inc  HL                                            ;; 04:465a $23
    ld   B, [HL]                                       ;; 04:465b $46
    ld   HL, $01                                       ;; 04:465c $21 $01 $00
    add  HL, BC                                        ;; 04:465f $09
    ld   L, [HL]                                       ;; 04:4660 $6e
    ld   H, B                                          ;; 04:4661 $60
    ld   B, A                                          ;; 04:4662 $47
    ld   A, L                                          ;; 04:4663 $7d
    ld   L, C                                          ;; 04:4664 $69
    and  A, B                                          ;; 04:4665 $a0
    ld   A, B                                          ;; 04:4666 $78
    ret                                                ;; 04:4667 $c9

call_04_4668:
    ld   DE, $04                                       ;; 04:4668 $11 $04 $00
    add  HL, DE                                        ;; 04:466b $19
    ld   E, [HL]                                       ;; 04:466c $5e
    ret                                                ;; 04:466d $c9

bonusDamageIfVulnerableBoss:
    push HL                                            ;; 04:466e $e5
    add  HL, BC                                        ;; 04:466f $09
    ld   A, [HL]                                       ;; 04:4670 $7e
    push AF                                            ;; 04:4671 $f5
    call getEquippedWeaponBonusTypes_wrapped           ;; 04:4672 $cd $e9 $3d
    ld   D, A                                          ;; 04:4675 $57
    pop  AF                                            ;; 04:4676 $f1
    ld   E, A                                          ;; 04:4677 $5f
    pop  BC                                            ;; 04:4678 $c1
    ld   HL, $02                                       ;; 04:4679 $21 $02 $00
    add  HL, BC                                        ;; 04:467c $09
    ld   A, [HL]                                       ;; 04:467d $7e
    and  A, D                                          ;; 04:467e $a2
    ret  Z                                             ;; 04:467f $c8
    srl  E                                             ;; 04:4680 $cb $3b
    srl  E                                             ;; 04:4682 $cb $3b
    ret                                                ;; 04:4684 $c9

specialAttack2Power75inHLBoss:
    ld   L, A                                          ;; 04:4685 $6f
    ld   H, $00                                        ;; 04:4686 $26 $00
    ld   A, [wMainGameState]                           ;; 04:4688 $fa $a0 $c0
    cp   A, $05                                        ;; 04:468b $fe $05
    ret  NZ                                            ;; 04:468d $c0
    ld   D, H                                          ;; 04:468e $54
    ld   E, L                                          ;; 04:468f $5d
    add  HL, DE                                        ;; 04:4690 $19
    add  HL, DE                                        ;; 04:4691 $19
    srl  H                                             ;; 04:4692 $cb $3c
    rr   L                                             ;; 04:4694 $cb $1d
    srl  H                                             ;; 04:4696 $cb $3c
    rr   L                                             ;; 04:4698 $cb $1d
    ret                                                ;; 04:469a $c9

call_04_469b:
    ld   D, $00                                        ;; 04:469b $16 $00
    call sub_HL_DE                                     ;; 04:469d $cd $ab $2b
    jr   C, .jr_04_46c1                                ;; 04:46a0 $38 $1f
    ret  Z                                             ;; 04:46a2 $c8
    push HL                                            ;; 04:46a3 $e5
    ld   A, [wCF63]                                    ;; 04:46a4 $fa $63 $cf
    push HL                                            ;; 04:46a7 $e5
    call MultiplyHL_by_A                               ;; 04:46a8 $cd $7b $2b
    ld   D, $00                                        ;; 04:46ab $16 $00
    rl   L                                             ;; 04:46ad $cb $15
    rl   H                                             ;; 04:46af $cb $14
    rl   D                                             ;; 04:46b1 $cb $12
    rl   L                                             ;; 04:46b3 $cb $15
    rl   H                                             ;; 04:46b5 $cb $14
    rl   D                                             ;; 04:46b7 $cb $12
    ld   E, H                                          ;; 04:46b9 $5c
    pop  HL                                            ;; 04:46ba $e1
    add  HL, DE                                        ;; 04:46bb $19
    pop  DE                                            ;; 04:46bc $d1
    call add25rndHLtoDE_4                              ;; 04:46bd $cd $f6 $46
    ret                                                ;; 04:46c0 $c9
.jr_04_46c1:
    ld   HL, $00                                       ;; 04:46c1 $21 $00 $00
    xor  A, A                                          ;; 04:46c4 $af
    ret                                                ;; 04:46c5 $c9

call_04_46c6:
    ld   D, $00                                        ;; 04:46c6 $16 $00
    call sub_HL_DE                                     ;; 04:46c8 $cd $ab $2b
    jr   C, .jr_04_46f1                                ;; 04:46cb $38 $24
    ret  Z                                             ;; 04:46cd $c8
    push HL                                            ;; 04:46ce $e5
    ld   A, [wCF63]                                    ;; 04:46cf $fa $63 $cf
    cp   A, $40                                        ;; 04:46d2 $fe $40
    jr   NZ, .jr_04_46d7                               ;; 04:46d4 $20 $01
    add  HL, HL                                        ;; 04:46d6 $29
.jr_04_46d7:
    push HL                                            ;; 04:46d7 $e5
    call MultiplyHL_by_A                               ;; 04:46d8 $cd $7b $2b
    ld   D, $00                                        ;; 04:46db $16 $00
    rl   L                                             ;; 04:46dd $cb $15
    rl   H                                             ;; 04:46df $cb $14
    rl   D                                             ;; 04:46e1 $cb $12
    rl   L                                             ;; 04:46e3 $cb $15
    rl   H                                             ;; 04:46e5 $cb $14
    rl   D                                             ;; 04:46e7 $cb $12
    ld   E, H                                          ;; 04:46e9 $5c
    pop  HL                                            ;; 04:46ea $e1
    add  HL, DE                                        ;; 04:46eb $19
    pop  DE                                            ;; 04:46ec $d1
    call add25rndHLtoDE_4                              ;; 04:46ed $cd $f6 $46
    ret                                                ;; 04:46f0 $c9
.jr_04_46f1:
    ld   HL, $00                                       ;; 04:46f1 $21 $00 $00
    xor  A, A                                          ;; 04:46f4 $af
    ret                                                ;; 04:46f5 $c9

; HL = DE + ((HL * RND()) >> 10)
; Add 25% HL randomness to DE and store in HL
add25rndHLtoDE_4:
    push HL                                            ;; 04:46f6 $e5
    push DE                                            ;; 04:46f7 $d5
    call getRandomByte                                 ;; 04:46f8 $cd $1e $2b
    pop  HL                                            ;; 04:46fb $e1
    call MultiplyHL_by_A                               ;; 04:46fc $cd $7b $2b
    srl  H                                             ;; 04:46ff $cb $3c
    srl  H                                             ;; 04:4701 $cb $3c
    ld   L, H                                          ;; 04:4703 $6c
    ld   H, $00                                        ;; 04:4704 $26 $00
    pop  DE                                            ;; 04:4706 $d1
    add  HL, DE                                        ;; 04:4707 $19
    ld   A, H                                          ;; 04:4708 $7c
    or   A, L                                          ;; 04:4709 $b5
    ret                                                ;; 04:470a $c9

subHPBoss:
    ld   D, H                                          ;; 04:470b $54
    ld   E, L                                          ;; 04:470c $5d
    ld   A, [wCurrentBossHP.high]                      ;; 04:470d $fa $f5 $d3
    ld   H, A                                          ;; 04:4710 $67
    ld   A, [wCurrentBossHP]                           ;; 04:4711 $fa $f4 $d3
    ld   L, A                                          ;; 04:4714 $6f
    call sub_HL_DE                                     ;; 04:4715 $cd $ab $2b
    jr   Z, .jr_04_471c                                ;; 04:4718 $28 $02
    jr   NC, .jr_04_471f                               ;; 04:471a $30 $03
.jr_04_471c:
    ld   HL, rIE                                       ;; 04:471c $21 $ff $ff
.jr_04_471f:
    ld   A, H                                          ;; 04:471f $7c
    ld   [wCurrentBossHP.high], A                      ;; 04:4720 $ea $f5 $d3
    ld   A, L                                          ;; 04:4723 $7d
    ld   [wCurrentBossHP], A                           ;; 04:4724 $ea $f4 $d3
    ret                                                ;; 04:4727 $c9

processHitBoss:
    ld   A, $18                                        ;; 04:4728 $3e $18
    ld   [wBossIframes], A                             ;; 04:472a $ea $eb $d3
    ld   A, $0d                                        ;; 04:472d $3e $0d
    call playSFX                                       ;; 04:472f $cd $7d $29
    ld   A, $40                                        ;; 04:4732 $3e $40
    ret                                                ;; 04:4734 $c9

call_04_4735:
    call call_00_0695                                  ;; 04:4735 $cd $95 $06
    ret                                                ;; 04:4738 $c9

INCLUDE "data/boss.asm"
