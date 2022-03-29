;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank01", ROMX[$4000], BANK[$01]

;@call_to_bank_jumptable amount=40
data_01_4000:
    call_to_bank_target call_01_499e                   ;; 01:4000 ..
    call_to_bank_target call_01_48be                   ;; 01:4002 ..
    call_to_bank_target call_01_4996                   ;; 01:4004 ..
    call_to_bank_target call_01_498e                   ;; 01:4006 ..
    call_to_bank_target call_01_5090                   ;; 01:4008 ..
    call_to_bank_target call_01_4f7b                   ;; 01:400a ..
    call_to_bank_target call_01_4d0b                   ;; 01:400c ??
    call_to_bank_target call_01_50ac                   ;; 01:400e ..
    call_to_bank_target call_01_50f9                   ;; 01:4010 ..
    call_to_bank_target call_01_5136                   ;; 01:4012 ??
    call_to_bank_target call_01_5156                   ;; 01:4014 ??
    call_to_bank_target call_01_5176                   ;; 01:4016 ??
    call_to_bank_target call_01_5196                   ;; 01:4018 ..
    call_to_bank_target call_01_51bb                   ;; 01:401a ..
    call_to_bank_target call_01_51d5                   ;; 01:401c ??
    call_to_bank_target call_01_4130                   ;; 01:401e ..
    call_to_bank_target call_01_414c                   ;; 01:4020 ..
    call_to_bank_target call_01_4164                   ;; 01:4022 ..
    call_to_bank_target call_01_4180                   ;; 01:4024 ..
    call_to_bank_target call_01_40ca                   ;; 01:4026 ..
    call_to_bank_target call_01_40d8                   ;; 01:4028 ..
    call_to_bank_target call_01_40f3                   ;; 01:402a ..
    call_to_bank_target call_01_4059                   ;; 01:402c ??
    call_to_bank_target call_01_40a0                   ;; 01:402e ??
    call_to_bank_target call_01_44d8                   ;; 01:4030 ..
    call_to_bank_target call_01_471d                   ;; 01:4032 ..
    call_to_bank_target call_01_7647                   ;; 01:4034 ..
    call_to_bank_target call_01_7639                   ;; 01:4036 ..
    call_to_bank_target call_01_76ab                   ;; 01:4038 ..
    call_to_bank_target call_01_52b3                   ;; 01:403a ..
    call_to_bank_target call_01_5d64                   ;; 01:403c ..
    call_to_bank_target call_01_5d82                   ;; 01:403e ..
    call_to_bank_target call_01_5a6b                   ;; 01:4040 ..
    call_to_bank_target call_01_5a77                   ;; 01:4042 ..
    call_to_bank_target call_01_5a83                   ;; 01:4044 ..
    call_to_bank_target call_01_5a8c                   ;; 01:4046 ??
    call_to_bank_target call_01_5d98                   ;; 01:4048 ..
    call_to_bank_target call_01_5cc6                   ;; 01:404a ..
    call_to_bank_target call_01_5db6                   ;; 01:404c ??
    call_to_bank_target call_01_51e1                   ;; 01:404e ..

data_01_4050:
    db   $0e, $fc, $03, $e4, $7e, $fc, $01, $e4        ;; 01:4050 ????????
    db   $ff                                           ;; 01:4058 ?

call_01_4059:
    ld   A, $ff                                        ;; 01:4059 $3e $ff
    ld   [wVideoBGP], A                                ;; 01:405b $ea $aa $c0
    ld   A, [wVideoLCDC]                               ;; 01:405e $fa $a5 $c0
    and  A, $fc                                        ;; 01:4061 $e6 $fc
    xor  A, $01                                        ;; 01:4063 $ee $01
    ld   [wVideoLCDC], A                               ;; 01:4065 $ea $a5 $c0
    ld   HL, data_01_4050                              ;; 01:4068 $21 $50 $40
    ld   B, $09                                        ;; 01:406b $06 $09
    call call_00_02f3                                  ;; 01:406d $cd $f3 $02
    ld   HL, $4260                                     ;; 01:4070 $21 $60 $42
    ld   DE, $8f00                                     ;; 01:4073 $11 $00 $8f
    ld   A, $0c                                        ;; 01:4076 $3e $0c
    call addTileGraphicCopyRequest                     ;; 01:4078 $cd $f5 $2d
    ld   C, $f0                                        ;; 01:407b $0e $f0
    ld   DE, $00                                       ;; 01:407d $11 $00 $00
    ld   B, $14                                        ;; 01:4080 $06 $14
.jr_01_4082:
    push BC                                            ;; 01:4082 $c5
    push DE                                            ;; 01:4083 $d5
    ld   A, C                                          ;; 01:4084 $79
    call call_00_3866                                  ;; 01:4085 $cd $66 $38
    pop  DE                                            ;; 01:4088 $d1
    pop  BC                                            ;; 01:4089 $c1
    inc  E                                             ;; 01:408a $1c
    dec  B                                             ;; 01:408b $05
    jr   NZ, .jr_01_4082                               ;; 01:408c $20 $f4
    ld   DE, $100                                      ;; 01:408e $11 $00 $01
    ld   B, $14                                        ;; 01:4091 $06 $14
.jr_01_4093:
    push BC                                            ;; 01:4093 $c5
    push DE                                            ;; 01:4094 $d5
    ld   A, C                                          ;; 01:4095 $79
    call call_00_3866                                  ;; 01:4096 $cd $66 $38
    pop  DE                                            ;; 01:4099 $d1
    pop  BC                                            ;; 01:409a $c1
    inc  E                                             ;; 01:409b $1c
    dec  B                                             ;; 01:409c $05
    jr   NZ, .jr_01_4093                               ;; 01:409d $20 $f4
    ret                                                ;; 01:409f $c9

call_01_40a0:
    ld   A, $e4                                        ;; 01:40a0 $3e $e4
    ld   [wVideoBGP], A                                ;; 01:40a2 $ea $aa $c0
    ld   A, [wVideoLCDC]                               ;; 01:40a5 $fa $a5 $c0
    or   A, $03                                        ;; 01:40a8 $f6 $03
    ld   [wVideoLCDC], A                               ;; 01:40aa $ea $a5 $c0
    call call_00_0313                                  ;; 01:40ad $cd $13 $03
    ret                                                ;; 01:40b0 $c9

data_01_40b1:
    db   $00, $fc, $03, $40, $10, $fc, $03, $90        ;; 01:40b1 ........
    db   $20, $fc, $03, $e4, $60, $fc, $03, $90        ;; 01:40b9 ........
    db   $70, $fc, $03, $40, $80, $fc, $03, $00        ;; 01:40c1 ........
    db   $ff                                           ;; 01:40c9 .

call_01_40ca:
    ld   HL, data_01_40b1                              ;; 01:40ca $21 $b1 $40
    ld   B, $19                                        ;; 01:40cd $06 $19
    call call_00_02f3                                  ;; 01:40cf $cd $f3 $02
    ld   A, $00                                        ;; 01:40d2 $3e $00
    ld   [wVideoBGP], A                                ;; 01:40d4 $ea $aa $c0
    ret                                                ;; 01:40d7 $c9

call_01_40d8:
    ld   A, [wVideoSCY]                                ;; 01:40d8 $fa $a7 $c0
    add  A, $09                                        ;; 01:40db $c6 $09
    cpl                                                ;; 01:40dd $2f
    and  A, $0f                                        ;; 01:40de $e6 $0f
    ld   C, A                                          ;; 01:40e0 $4f
    ld   HL, wD3A0                                     ;; 01:40e1 $21 $a0 $d3
    ld   B, $06                                        ;; 01:40e4 $06 $06
    ld   DE, $04                                       ;; 01:40e6 $11 $04 $00
.jr_01_40e9:
    ld   A, [HL]                                       ;; 01:40e9 $7e
    and  A, $f0                                        ;; 01:40ea $e6 $f0
    or   A, C                                          ;; 01:40ec $b1
    ld   [HL], A                                       ;; 01:40ed $77
    add  HL, DE                                        ;; 01:40ee $19
    dec  B                                             ;; 01:40ef $05
    jr   NZ, .jr_01_40e9                               ;; 01:40f0 $20 $f7
    ret                                                ;; 01:40f2 $c9

call_01_40f3:
    call call_00_0313                                  ;; 01:40f3 $cd $13 $03
    ld   A, $e4                                        ;; 01:40f6 $3e $e4
    ld   [wVideoBGP], A                                ;; 01:40f8 $ea $aa $c0
    ret                                                ;; 01:40fb $c9

data_01_40fc:
    db   $00, $fc, $03, $e4, $7c, $fc, $00, $e4        ;; 01:40fc ........
    db   $7e, $fc, $01, $e4, $ff                       ;; 01:4104 .....

data_01_4109:
    db   $3c, $fc, $03, $e4, $40, $fc, $00, $e4        ;; 01:4109 ........
    db   $7e, $fc, $01, $e4, $ff                       ;; 01:4111 .....

data_01_4116:
    db   $00, $fc, $03, $3f, $7c, $fc, $00, $3f        ;; 01:4116 ????????
    db   $7e, $fc, $01, $3f, $ff, $3c, $fc, $03        ;; 01:411e ????????
    db   $3f, $40, $fc, $00, $3f, $7e, $fc, $01        ;; 01:4126 ????????
    db   $3f, $ff                                      ;; 01:412e ??

call_01_4130:
    ld   D, H                                          ;; 01:4130 $54
    ld   E, L                                          ;; 01:4131 $5d
    ld   A, [wD499]                                    ;; 01:4132 $fa $99 $d4
    ld   HL, .data_01_413c                             ;; 01:4135 $21 $3c $41
    call callJumptable                                 ;; 01:4138 $cd $70 $2b
    ret                                                ;; 01:413b $c9
.data_01_413c:
    dw   data_01_419c                                  ;; 01:413c ..
    dw   data_01_4477                                  ;; 01:413e ..
    dw   data_01_41d6                                  ;; 01:4140 ..
    dw   data_01_4387                                  ;; 01:4142 ..
    dw   data_01_4477                                  ;; 01:4144 ..
    dw   data_01_43a3                                  ;; 01:4146 ..
    dw   data_01_4205                                  ;; 01:4148 ..
    dw   data_01_448c                                  ;; 01:414a ..

call_01_414c:
    ld   D, H                                          ;; 01:414c $54
    ld   E, L                                          ;; 01:414d $5d
    ld   A, [wD499]                                    ;; 01:414e $fa $99 $d4
    ld   HL, .data_01_4158                             ;; 01:4151 $21 $58 $41
    call callJumptable                                 ;; 01:4154 $cd $70 $2b
    ret                                                ;; 01:4157 $c9
.data_01_4158:
    dw   data_01_41ca                                  ;; 01:4158 ..
    dw   data_01_4477                                  ;; 01:415a ..
    dw   data_01_4387                                  ;; 01:415c ..
    dw   data_01_4477                                  ;; 01:415e ..
    dw   data_01_43ee                                  ;; 01:4160 ..
    dw   data_01_448c                                  ;; 01:4162 ..

call_01_4164:
    ld   D, H                                          ;; 01:4164 $54
    ld   E, L                                          ;; 01:4165 $5d
    ld   A, [wD499]                                    ;; 01:4166 $fa $99 $d4
    ld   HL, .data_01_4170                             ;; 01:4169 $21 $70 $41
    call callJumptable                                 ;; 01:416c $cd $70 $2b
    ret                                                ;; 01:416f $c9
.data_01_4170:
    dw   data_01_419c                                  ;; 01:4170 ..
    dw   data_01_4477                                  ;; 01:4172 ..
    dw   data_01_41d6                                  ;; 01:4174 ..
    dw   data_01_422b                                  ;; 01:4176 ..
    dw   data_01_4477                                  ;; 01:4178 ..
    dw   data_01_4422                                  ;; 01:417a ..
    dw   data_01_4205                                  ;; 01:417c ..
    dw   data_01_448c                                  ;; 01:417e ..

call_01_4180:
    ld   D, H                                          ;; 01:4180 $54
    ld   E, L                                          ;; 01:4181 $5d
    ld   A, [wD499]                                    ;; 01:4182 $fa $99 $d4
    ld   HL, .data_01_418c                             ;; 01:4185 $21 $8c $41
    call callJumptable                                 ;; 01:4188 $cd $70 $2b
    ret                                                ;; 01:418b $c9
.data_01_418c:
    dw   data_01_419c                                  ;; 01:418c ..
    dw   data_01_4477                                  ;; 01:418e ..
    dw   data_01_41d6                                  ;; 01:4190 ..
    dw   data_01_433e                                  ;; 01:4192 ..
    dw   data_01_4477                                  ;; 01:4194 ..
    dw   data_01_4456                                  ;; 01:4196 ..
    dw   data_01_4205                                  ;; 01:4198 ..
    dw   data_01_448c                                  ;; 01:419a ..

data_01_419c:
    push DE                                            ;; 01:419c $d5
    ld   A, $00                                        ;; 01:419d $3e $00
    ld   [wD49A], A                                    ;; 01:419f $ea $9a $d4
    ld   HL, wD499                                     ;; 01:41a2 $21 $99 $d4
    inc  [HL]                                          ;; 01:41a5 $34
    ld   HL, data_01_40fc                              ;; 01:41a6 $21 $fc $40
    ld   A, [wC4D4]                                    ;; 01:41a9 $fa $d4 $c4
    bit  1, A                                          ;; 01:41ac $cb $4f
    jr   Z, .jr_01_41b3                                ;; 01:41ae $28 $03
    ld   HL, data_01_4116                              ;; 01:41b0 $21 $16 $41
.jr_01_41b3:
    ld   B, $0d                                        ;; 01:41b3 $06 $0d
    call call_00_02f3                                  ;; 01:41b5 $cd $f3 $02
    ld   A, [wVideoLCDC]                               ;; 01:41b8 $fa $a5 $c0
    ld   [wD49C], A                                    ;; 01:41bb $ea $9c $d4
    and  A, $fc                                        ;; 01:41be $e6 $fc
    ld   [wVideoLCDC], A                               ;; 01:41c0 $ea $a5 $c0
    ld   A, $24                                        ;; 01:41c3 $3e $24
    call playSFX                                       ;; 01:41c5 $cd $7d $29
    pop  HL                                            ;; 01:41c8 $e1
    ret                                                ;; 01:41c9 $c9

data_01_41ca:
    push DE                                            ;; 01:41ca $d5
    ld   A, $00                                        ;; 01:41cb $3e $00
    ld   [wD49A], A                                    ;; 01:41cd $ea $9a $d4
    ld   HL, wD499                                     ;; 01:41d0 $21 $99 $d4
    inc  [HL]                                          ;; 01:41d3 $34
    pop  HL                                            ;; 01:41d4 $e1
    ret                                                ;; 01:41d5 $c9

data_01_41d6:
    push DE                                            ;; 01:41d6 $d5
    ld   HL, wD3A0                                     ;; 01:41d7 $21 $a0 $d3
    ld   A, [HL]                                       ;; 01:41da $7e
    add  A, $02                                        ;; 01:41db $c6 $02
    ld   C, A                                          ;; 01:41dd $4f
    ld   [HL+], A                                      ;; 01:41de $22
    inc  HL                                            ;; 01:41df $23
    inc  HL                                            ;; 01:41e0 $23
    inc  HL                                            ;; 01:41e1 $23
    ld   A, [HL]                                       ;; 01:41e2 $7e
    sub  A, $02                                        ;; 01:41e3 $d6 $02
    cp   A, C                                          ;; 01:41e5 $b9
    jr   C, .jr_01_41f1                                ;; 01:41e6 $38 $09
    jr   Z, .jr_01_41f1                                ;; 01:41e8 $28 $07
    ld   [HL], A                                       ;; 01:41ea $77
    ld   HL, wD49A                                     ;; 01:41eb $21 $9a $d4
    inc  [HL]                                          ;; 01:41ee $34
    pop  HL                                            ;; 01:41ef $e1
    ret                                                ;; 01:41f0 $c9
.jr_01_41f1:
    call call_00_0313                                  ;; 01:41f1 $cd $13 $03
    ld   A, [wVideoLCDC]                               ;; 01:41f4 $fa $a5 $c0
    and  A, $fc                                        ;; 01:41f7 $e6 $fc
    ld   HL, rLCDC                                     ;; 01:41f9 $21 $40 $ff
    call storeBatHLinVRAM                              ;; 01:41fc $cd $5e $1d
    ld   HL, wD499                                     ;; 01:41ff $21 $99 $d4
    inc  [HL]                                          ;; 01:4202 $34
    pop  HL                                            ;; 01:4203 $e1
    ret                                                ;; 01:4204 $c9

data_01_4205:
    push DE                                            ;; 01:4205 $d5
    ld   HL, wD49A                                     ;; 01:4206 $21 $9a $d4
    dec  [HL]                                          ;; 01:4209 $35
    jr   Z, .jr_01_421c                                ;; 01:420a $28 $10
    ld   HL, wD3A0                                     ;; 01:420c $21 $a0 $d3
    ld   A, [HL]                                       ;; 01:420f $7e
    sub  A, $02                                        ;; 01:4210 $d6 $02
    ld   [HL+], A                                      ;; 01:4212 $22
    inc  HL                                            ;; 01:4213 $23
    inc  HL                                            ;; 01:4214 $23
    inc  HL                                            ;; 01:4215 $23
    ld   A, [HL]                                       ;; 01:4216 $7e
    add  A, $02                                        ;; 01:4217 $c6 $02
    ld   [HL], A                                       ;; 01:4219 $77
    pop  HL                                            ;; 01:421a $e1
    ret                                                ;; 01:421b $c9
.jr_01_421c:
    call call_00_0313                                  ;; 01:421c $cd $13 $03
    ld   A, [wD49C]                                    ;; 01:421f $fa $9c $d4
    ld   [wVideoLCDC], A                               ;; 01:4222 $ea $a5 $c0
    ld   HL, wD499                                     ;; 01:4225 $21 $99 $d4
    inc  [HL]                                          ;; 01:4228 $34
    pop  HL                                            ;; 01:4229 $e1
    ret                                                ;; 01:422a $c9

data_01_422b:
    push DE                                            ;; 01:422b $d5
    ld   HL, wRoomTiles                                ;; 01:422c $21 $50 $c3
    ld   DE, wC3A0                                     ;; 01:422f $11 $a0 $c3
    ld   B, $50                                        ;; 01:4232 $06 $50
    call copyHLtoDE                                    ;; 01:4234 $cd $49 $2b
    ld   A, [wC3F4]                                    ;; 01:4237 $fa $f4 $c3
    ld   [wD4A4], A                                    ;; 01:423a $ea $a4 $d4
    call call_00_21b0                                  ;; 01:423d $cd $b0 $21
    cp   A, $00                                        ;; 01:4240 $fe $00
    jr   Z, .jr_01_4249                                ;; 01:4242 $28 $05
    call call_01_4279                                  ;; 01:4244 $cd $79 $42
    jr   .jr_01_424c                                   ;; 01:4247 $18 $03
.jr_01_4249:
    call call_01_4252                                  ;; 01:4249 $cd $52 $42
.jr_01_424c:
    ld   HL, wD499                                     ;; 01:424c $21 $99 $d4
    inc  [HL]                                          ;; 01:424f $34

data_01_4250:
    pop  HL                                            ;; 01:4250 $e1
    ret                                                ;; 01:4251 $c9

call_01_4252:
    call call_01_4331                                  ;; 01:4252 $cd $31 $43
    ld   A, [wD49D]                                    ;; 01:4255 $fa $9d $d4
    ld   E, A                                          ;; 01:4258 $5f
    ld   A, $00                                        ;; 01:4259 $3e $00
    ld   [wD49F], A                                    ;; 01:425b $ea $9f $d4
    ld   D, A                                          ;; 01:425e $57
    ld   A, $07                                        ;; 01:425f $3e $07
    call loadMap                                       ;; 01:4261 $cd $dc $26
    call call_00_04a4                                  ;; 01:4264 $cd $a4 $04
    ld   A, [wD49E]                                    ;; 01:4267 $fa $9e $d4
    ld   C, A                                          ;; 01:426a $4f
    ld   A, [wD49D]                                    ;; 01:426b $fa $9d $d4
    cp   A, $00                                        ;; 01:426e $fe $00
    jr   Z, .jr_01_4274                                ;; 01:4270 $28 $02
    ld   A, $44                                        ;; 01:4272 $3e $44
.jr_01_4274:
    add  A, C                                          ;; 01:4274 $81
    call call_01_42d1                                  ;; 01:4275 $cd $d1 $42
    ret                                                ;; 01:4278 $c9

call_01_4279:
    call call_01_4331                                  ;; 01:4279 $cd $31 $43
    ld   A, [wMapTablePointerHigh]                     ;; 01:427c $fa $f3 $c3
    ld   H, A                                          ;; 01:427f $67
    ld   A, [wMapTablePointerLow]                      ;; 01:4280 $fa $f2 $c3
    ld   L, A                                          ;; 01:4283 $6f
    ld   A, H                                          ;; 01:4284 $7c
    ld   [wD4A2], A                                    ;; 01:4285 $ea $a2 $d4
    ld   A, L                                          ;; 01:4288 $7d
    ld   [wD4A1], A                                    ;; 01:4289 $ea $a1 $d4
    ld   A, [wMapWidth]                                ;; 01:428c $fa $fb $c3
    ld   [wD49F], A                                    ;; 01:428f $ea $9f $d4
    ld   A, [wMapTableBankNr]                          ;; 01:4292 $fa $f0 $c3
    ld   [wD4A0], A                                    ;; 01:4295 $ea $a0 $d4
    ld   A, [wD49D]                                    ;; 01:4298 $fa $9d $d4
    ld   E, A                                          ;; 01:429b $5f
    ld   D, $00                                        ;; 01:429c $16 $00
    ld   A, $07                                        ;; 01:429e $3e $07
    call loadMap                                       ;; 01:42a0 $cd $dc $26
    call call_00_04a4                                  ;; 01:42a3 $cd $a4 $04
    ld   A, [wD49E]                                    ;; 01:42a6 $fa $9e $d4
    add  A, $44                                        ;; 01:42a9 $c6 $44
    call call_01_42d1                                  ;; 01:42ab $cd $d1 $42
    call call_01_42b2                                  ;; 01:42ae $cd $b2 $42
    ret                                                ;; 01:42b1 $c9

call_01_42b2:
    ld   HL, data_01_4000                              ;; 01:42b2 $21 $00 $40
    ld   DE, $8900                                     ;; 01:42b5 $11 $00 $89
    ld   C, $0b                                        ;; 01:42b8 $0e $0b
    ld   B, $10                                        ;; 01:42ba $06 $10
.jr_01_42bc:
    push BC                                            ;; 01:42bc $c5
    push HL                                            ;; 01:42bd $e5
    push DE                                            ;; 01:42be $d5
    ld   A, C                                          ;; 01:42bf $79
    call addTileGraphicCopyRequest                     ;; 01:42c0 $cd $f5 $2d
    pop  HL                                            ;; 01:42c3 $e1
    ld   BC, $10                                       ;; 01:42c4 $01 $10 $00
    add  HL, BC                                        ;; 01:42c7 $09
    ld   D, H                                          ;; 01:42c8 $54
    ld   E, L                                          ;; 01:42c9 $5d
    pop  HL                                            ;; 01:42ca $e1
    add  HL, BC                                        ;; 01:42cb $09
    pop  BC                                            ;; 01:42cc $c1
    dec  B                                             ;; 01:42cd $05
    jr   NZ, .jr_01_42bc                               ;; 01:42ce $20 $ec
    ret                                                ;; 01:42d0 $c9

call_01_42d1:
    push AF                                            ;; 01:42d1 $f5
    ld   HL, .data_01_4325                             ;; 01:42d2 $21 $25 $43
    ld   C, $00                                        ;; 01:42d5 $0e $00
    call call_00_0cba                                  ;; 01:42d7 $cd $ba $0c
    pop  AF                                            ;; 01:42da $f1
    ld   C, A                                          ;; 01:42db $4f
    and  A, $0f                                        ;; 01:42dc $e6 $0f
    add  A, $02                                        ;; 01:42de $c6 $02
    add  A, A                                          ;; 01:42e0 $87
    add  A, A                                          ;; 01:42e1 $87
    add  A, A                                          ;; 01:42e2 $87
    ld   D, A                                          ;; 01:42e3 $57
    ld   A, C                                          ;; 01:42e4 $79
    swap A                                             ;; 01:42e5 $cb $37
    and  A, $0f                                        ;; 01:42e7 $e6 $0f
    add  A, $03                                        ;; 01:42e9 $c6 $03
    add  A, A                                          ;; 01:42eb $87
    add  A, A                                          ;; 01:42ec $87
    add  A, A                                          ;; 01:42ed $87
    ld   E, A                                          ;; 01:42ee $5f
    ld   C, $00                                        ;; 01:42ef $0e $00
    ld   B, $00                                        ;; 01:42f1 $06 $00
    ld   A, $00                                        ;; 01:42f3 $3e $00
    call updateObjectPosition                          ;; 01:42f5 $cd $11 $06
    ld   HL, $4260                                     ;; 01:42f8 $21 $60 $42
    ld   DE, $8080                                     ;; 01:42fb $11 $80 $80
    ld   A, $0c                                        ;; 01:42fe $3e $0c
    call addTileGraphicCopyRequest                     ;; 01:4300 $cd $f5 $2d
    ld   HL, data_01_4250                              ;; 01:4303 $21 $50 $42
    ld   DE, $8090                                     ;; 01:4306 $11 $90 $80
    ld   A, $0c                                        ;; 01:4309 $3e $0c
    call addTileGraphicCopyRequest                     ;; 01:430b $cd $f5 $2d
    ld   HL, data_01_4250                              ;; 01:430e $21 $50 $42
    ld   DE, $80a0                                     ;; 01:4311 $11 $a0 $80
    ld   A, $0c                                        ;; 01:4314 $3e $0c
    call addTileGraphicCopyRequest                     ;; 01:4316 $cd $f5 $2d
    ld   HL, data_01_4250                              ;; 01:4319 $21 $50 $42
    ld   DE, $80b0                                     ;; 01:431c $11 $b0 $80
    ld   A, $0c                                        ;; 01:431f $3e $0c
    call addTileGraphicCopyRequest                     ;; 01:4321 $cd $f5 $2d
    ret                                                ;; 01:4324 $c9
.data_01_4325:
    db   $00, $08, $0a, $00, $08, $0a, $00, $08        ;; 01:4325 ????????
    db   $0a, $00, $08, $0a                            ;; 01:432d ?...

call_01_4331:
    call call_00_220a                                  ;; 01:4331 $cd $0a $22
    ld   [wD49D], A                                    ;; 01:4334 $ea $9d $d4
    call LoadRoomXY_to_A                               ;; 01:4337 $cd $0e $22
    ld   [wD49E], A                                    ;; 01:433a $ea $9e $d4
    ret                                                ;; 01:433d $c9

data_01_433e:
    push DE                                            ;; 01:433e $d5
    ld   A, [wD49E]                                    ;; 01:433f $fa $9e $d4
    ld   E, A                                          ;; 01:4342 $5f
    and  A, $0f                                        ;; 01:4343 $e6 $0f
    ld   D, A                                          ;; 01:4345 $57
    ld   A, E                                          ;; 01:4346 $7b
    swap A                                             ;; 01:4347 $cb $37
    and  A, $0f                                        ;; 01:4349 $e6 $0f
    ld   E, A                                          ;; 01:434b $5f
    ld   A, [wD49D]                                    ;; 01:434c $fa $9d $d4
    call loadMap                                       ;; 01:434f $cd $dc $26
    ld   HL, wC3A0                                     ;; 01:4352 $21 $a0 $c3
    ld   DE, wRoomTiles                                ;; 01:4355 $11 $50 $c3
    ld   B, $50                                        ;; 01:4358 $06 $50
    call copyHLtoDE                                    ;; 01:435a $cd $49 $2b
    ld   HL, wRoomTiles                                ;; 01:435d $21 $50 $c3
    call call_00_1b74                                  ;; 01:4360 $cd $74 $1b
    ld   A, [wD4A4]                                    ;; 01:4363 $fa $a4 $d4
    ld   [wC3F4], A                                    ;; 01:4366 $ea $f4 $c3
    call call_00_04a4                                  ;; 01:4369 $cd $a4 $04
    ld   HL, wD499                                     ;; 01:436c $21 $99 $d4
    inc  [HL]                                          ;; 01:436f $34
    ld   DE, $00                                       ;; 01:4370 $11 $00 $00
    ld   HL, $1014                                     ;; 01:4373 $21 $14 $10
    call call_00_0435                                  ;; 01:4376 $cd $35 $04
    ld   DE, $f8                                       ;; 01:4379 $11 $f8 $00
    ld   C, $00                                        ;; 01:437c $0e $00
    ld   B, $00                                        ;; 01:437e $06 $00
    ld   A, $00                                        ;; 01:4380 $3e $00
    call updateObjectPosition                          ;; 01:4382 $cd $11 $06
    pop  HL                                            ;; 01:4385 $e1
    ret                                                ;; 01:4386 $c9

data_01_4387:
    push DE                                            ;; 01:4387 $d5
    ld   A, C                                          ;; 01:4388 $79
    ld   C, B                                          ;; 01:4389 $48
    ld   E, A                                          ;; 01:438a $5f
    and  A, $0f                                        ;; 01:438b $e6 $0f
    ld   D, A                                          ;; 01:438d $57
    ld   A, E                                          ;; 01:438e $7b
    swap A                                             ;; 01:438f $cb $37
    and  A, $0f                                        ;; 01:4391 $e6 $0f
    ld   E, A                                          ;; 01:4393 $5f
    ld   A, C                                          ;; 01:4394 $79
    call loadMap                                       ;; 01:4395 $cd $dc $26
    call call_00_04a4                                  ;; 01:4398 $cd $a4 $04
    ld   HL, wD499                                     ;; 01:439b $21 $99 $d4
    inc  [HL]                                          ;; 01:439e $34
    pop  HL                                            ;; 01:439f $e1
    inc  HL                                            ;; 01:43a0 $23
    inc  HL                                            ;; 01:43a1 $23
    ret                                                ;; 01:43a2 $c9

data_01_43a3:
    push DE                                            ;; 01:43a3 $d5
    push BC                                            ;; 01:43a4 $c5
    call call_00_0375                                  ;; 01:43a5 $cd $75 $03
    pop  BC                                            ;; 01:43a8 $c1
    push BC                                            ;; 01:43a9 $c5
    call call_01_44a5                                  ;; 01:43aa $cd $a5 $44
    call call_00_28c2                                  ;; 01:43ad $cd $c2 $28
    pop  HL                                            ;; 01:43b0 $e1
    jr   NZ, .jr_01_43cc                               ;; 01:43b1 $20 $19
    ld   C, $00                                        ;; 01:43b3 $0e $00
    push HL                                            ;; 01:43b5 $e5
    call call_00_289b                                  ;; 01:43b6 $cd $9b $28
    pop  HL                                            ;; 01:43b9 $e1
    jr   NZ, .jr_01_43cc                               ;; 01:43ba $20 $10
    ld   A, H                                          ;; 01:43bc $7c
    inc  A                                             ;; 01:43bd $3c
    add  A, A                                          ;; 01:43be $87
    add  A, A                                          ;; 01:43bf $87
    add  A, A                                          ;; 01:43c0 $87
    ld   E, A                                          ;; 01:43c1 $5f
    ld   A, L                                          ;; 01:43c2 $7d
    inc  A                                             ;; 01:43c3 $3c
    inc  A                                             ;; 01:43c4 $3c
    add  A, A                                          ;; 01:43c5 $87
    add  A, A                                          ;; 01:43c6 $87
    add  A, A                                          ;; 01:43c7 $87
    ld   D, A                                          ;; 01:43c8 $57
    call call_00_28aa                                  ;; 01:43c9 $cd $aa $28
.jr_01_43cc:
    ld   HL, data_01_4109                              ;; 01:43cc $21 $09 $41
    ld   A, [wC4D4]                                    ;; 01:43cf $fa $d4 $c4
    bit  1, A                                          ;; 01:43d2 $cb $4f
    jr   Z, .jr_01_43d9                                ;; 01:43d4 $28 $03
    ld   HL, data_01_4116                              ;; 01:43d6 $21 $16 $41
.jr_01_43d9:
    ld   B, $0d                                        ;; 01:43d9 $06 $0d
    call call_00_02f3                                  ;; 01:43db $cd $f3 $02
    ld   HL, wD499                                     ;; 01:43de $21 $99 $d4
    inc  [HL]                                          ;; 01:43e1 $34
    ld   A, $23                                        ;; 01:43e2 $3e $23
    call playSFX                                       ;; 01:43e4 $cd $7d $29
    call call_00_2ef7                                  ;; 01:43e7 $cd $f7 $2e
    pop  HL                                            ;; 01:43ea $e1
    inc  HL                                            ;; 01:43eb $23
    inc  HL                                            ;; 01:43ec $23
    ret                                                ;; 01:43ed $c9

data_01_43ee:
    push DE                                            ;; 01:43ee $d5
    push BC                                            ;; 01:43ef $c5
    call call_00_0375                                  ;; 01:43f0 $cd $75 $03
    pop  BC                                            ;; 01:43f3 $c1
    push BC                                            ;; 01:43f4 $c5
    call call_01_44a5                                  ;; 01:43f5 $cd $a5 $44
    call call_00_28c2                                  ;; 01:43f8 $cd $c2 $28
    pop  HL                                            ;; 01:43fb $e1
    jr   NZ, .jr_01_4417                               ;; 01:43fc $20 $19
    ld   C, $00                                        ;; 01:43fe $0e $00
    push HL                                            ;; 01:4400 $e5
    call call_00_289b                                  ;; 01:4401 $cd $9b $28
    pop  HL                                            ;; 01:4404 $e1
    jr   NZ, .jr_01_4417                               ;; 01:4405 $20 $10
    ld   A, H                                          ;; 01:4407 $7c
    inc  A                                             ;; 01:4408 $3c
    add  A, A                                          ;; 01:4409 $87
    add  A, A                                          ;; 01:440a $87
    add  A, A                                          ;; 01:440b $87
    ld   E, A                                          ;; 01:440c $5f
    ld   A, L                                          ;; 01:440d $7d
    inc  A                                             ;; 01:440e $3c
    inc  A                                             ;; 01:440f $3c
    add  A, A                                          ;; 01:4410 $87
    add  A, A                                          ;; 01:4411 $87
    add  A, A                                          ;; 01:4412 $87
    ld   D, A                                          ;; 01:4413 $57
    call call_00_28aa                                  ;; 01:4414 $cd $aa $28
.jr_01_4417:
    call call_00_2ef7                                  ;; 01:4417 $cd $f7 $2e
    ld   HL, wD499                                     ;; 01:441a $21 $99 $d4
    inc  [HL]                                          ;; 01:441d $34
    pop  HL                                            ;; 01:441e $e1
    inc  HL                                            ;; 01:441f $23
    inc  HL                                            ;; 01:4420 $23
    ret                                                ;; 01:4421 $c9

data_01_4422:
    push DE                                            ;; 01:4422 $d5
    ld   A, [wD49F]                                    ;; 01:4423 $fa $9f $d4
    cp   A, $00                                        ;; 01:4426 $fe $00
    jr   Z, .jr_01_442d                                ;; 01:4428 $28 $03
    call call_00_0de6                                  ;; 01:442a $cd $e6 $0d
.jr_01_442d:
    ld   HL, data_01_4109                              ;; 01:442d $21 $09 $41
    ld   A, [wC4D4]                                    ;; 01:4430 $fa $d4 $c4
    bit  1, A                                          ;; 01:4433 $cb $4f
    jr   Z, .jr_01_443a                                ;; 01:4435 $28 $03
    ld   HL, data_01_4116                              ;; 01:4437 $21 $16 $41
.jr_01_443a:
    ld   B, $0d                                        ;; 01:443a $06 $0d
    call call_00_02f3                                  ;; 01:443c $cd $f3 $02
    ld   HL, wD499                                     ;; 01:443f $21 $99 $d4
    inc  [HL]                                          ;; 01:4442 $34
    ld   A, $23                                        ;; 01:4443 $3e $23
    call playSFX                                       ;; 01:4445 $cd $7d $29
    ld   DE, $00                                       ;; 01:4448 $11 $00 $00
    ld   HL, $1014                                     ;; 01:444b $21 $14 $10
    call call_00_042f                                  ;; 01:444e $cd $2f $04
    call call_00_2ef7                                  ;; 01:4451 $cd $f7 $2e
    pop  HL                                            ;; 01:4454 $e1
    ret                                                ;; 01:4455 $c9

data_01_4456:
    push DE                                            ;; 01:4456 $d5
    ld   HL, data_01_4109                              ;; 01:4457 $21 $09 $41
    ld   A, [wC4D4]                                    ;; 01:445a $fa $d4 $c4
    bit  1, A                                          ;; 01:445d $cb $4f
    jr   Z, .jr_01_4464                                ;; 01:445f $28 $03
    ld   HL, data_01_4116                              ;; 01:4461 $21 $16 $41
.jr_01_4464:
    ld   B, $0d                                        ;; 01:4464 $06 $0d
    call call_00_02f3                                  ;; 01:4466 $cd $f3 $02
    ld   HL, wD499                                     ;; 01:4469 $21 $99 $d4
    inc  [HL]                                          ;; 01:446c $34
    ld   A, $23                                        ;; 01:446d $3e $23
    call playSFX                                       ;; 01:446f $cd $7d $29
    call call_00_2ef7                                  ;; 01:4472 $cd $f7 $2e
    pop  HL                                            ;; 01:4475 $e1
    ret                                                ;; 01:4476 $c9

data_01_4477:
    push DE                                            ;; 01:4477 $d5
    ld   A, [wTileCopyRequestCount]                    ;; 01:4478 $fa $e0 $c8
    cp   A, $00                                        ;; 01:447b $fe $00
    jr   NZ, .jr_01_448a                               ;; 01:447d $20 $0b
    ld   A, [wBackgroundRenderRequestCount]            ;; 01:447f $fa $e8 $ce
    cp   A, $00                                        ;; 01:4482 $fe $00
    jr   NZ, .jr_01_448a                               ;; 01:4484 $20 $04
    ld   HL, wD499                                     ;; 01:4486 $21 $99 $d4
    inc  [HL]                                          ;; 01:4489 $34
.jr_01_448a:
    pop  HL                                            ;; 01:448a $e1
    ret                                                ;; 01:448b $c9

data_01_448c:
    push DE                                            ;; 01:448c $d5
    call call_00_02cf                                  ;; 01:448d $cd $cf $02
    cp   A, $00                                        ;; 01:4490 $fe $00
    jr   NZ, .jr_01_449b                               ;; 01:4492 $20 $07
    ld   A, $c9                                        ;; 01:4494 $3e $c9
    call call_00_02bd                                  ;; 01:4496 $cd $bd $02
    ld   A, $00                                        ;; 01:4499 $3e $00
.jr_01_449b:
    call call_00_3e8f                                  ;; 01:449b $cd $8f $3e
    ld   A, $00                                        ;; 01:449e $3e $00
    ld   [wD499], A                                    ;; 01:44a0 $ea $99 $d4
    pop  HL                                            ;; 01:44a3 $e1
    ret                                                ;; 01:44a4 $c9

call_01_44a5:
    ld   A, B                                          ;; 01:44a5 $78
    add  A, A                                          ;; 01:44a6 $87
    add  A, A                                          ;; 01:44a7 $87
    add  A, A                                          ;; 01:44a8 $87
    add  A, $08                                        ;; 01:44a9 $c6 $08
    ld   E, A                                          ;; 01:44ab $5f
    ld   A, C                                          ;; 01:44ac $79
    push HL                                            ;; 01:44ad $e5
    add  A, A                                          ;; 01:44ae $87
    add  A, A                                          ;; 01:44af $87
    add  A, A                                          ;; 01:44b0 $87
    add  A, $10                                        ;; 01:44b1 $c6 $10
    ld   D, A                                          ;; 01:44b3 $57
    ld   A, [wC0A1]                                    ;; 01:44b4 $fa $a1 $c0
    push AF                                            ;; 01:44b7 $f5
    set  3, A                                          ;; 01:44b8 $cb $df
    ld   [wC0A1], A                                    ;; 01:44ba $ea $a1 $c0
    push DE                                            ;; 01:44bd $d5
    call call_00_02ab                                  ;; 01:44be $cd $ab $02
    ld   B, $00                                        ;; 01:44c1 $06 $00
    and  A, $0f                                        ;; 01:44c3 $e6 $0f
    push AF                                            ;; 01:44c5 $f5
    call call_00_0232                                  ;; 01:44c6 $cd $32 $02
    pop  AF                                            ;; 01:44c9 $f1
    pop  DE                                            ;; 01:44ca $d1
    ld   B, $00                                        ;; 01:44cb $06 $00
    or   A, $10                                        ;; 01:44cd $f6 $10
    call call_00_023e                                  ;; 01:44cf $cd $3e $02
    pop  AF                                            ;; 01:44d2 $f1
    ld   [wC0A1], A                                    ;; 01:44d3 $ea $a1 $c0
    pop  HL                                            ;; 01:44d6 $e1
    ret                                                ;; 01:44d7 $c9

call_01_44d8:
    ld   E, A                                          ;; 01:44d8 $5f
    ld   A, [wTileCopyRequestCount]                    ;; 01:44d9 $fa $e0 $c8
    cp   A, $00                                        ;; 01:44dc $fe $00
    ret  NZ                                            ;; 01:44de $c0
    ld   A, [wBackgroundRenderRequestCount]            ;; 01:44df $fa $e8 $ce
    cp   A, $00                                        ;; 01:44e2 $fe $00
    ret  NZ                                            ;; 01:44e4 $c0
    ld   A, [wC341]                                    ;; 01:44e5 $fa $41 $c3
    cp   A, $00                                        ;; 01:44e8 $fe $00
    jr   NZ, .jr_01_450a                               ;; 01:44ea $20 $1e
    ld   A, E                                          ;; 01:44ec $7b
    cp   A, $00                                        ;; 01:44ed $fe $00
    ret  Z                                             ;; 01:44ef $c8
    ld   [wC341], A                                    ;; 01:44f0 $ea $41 $c3
    xor  A, A                                          ;; 01:44f3 $af
    ld   [wC348], A                                    ;; 01:44f4 $ea $48 $c3
    ld   A, [wC0A2]                                    ;; 01:44f7 $fa $a2 $c0
    swap A                                             ;; 01:44fa $cb $37
    set  0, A                                          ;; 01:44fc $cb $c7
    set  1, A                                          ;; 01:44fe $cb $cf
    set  3, A                                          ;; 01:4500 $cb $df
    set  2, A                                          ;; 01:4502 $cb $d7
    ld   [wC0A2], A                                    ;; 01:4504 $ea $a2 $c0
    ld   [wC0A1], A                                    ;; 01:4507 $ea $a1 $c0
.jr_01_450a:
    ld   A, E                                          ;; 01:450a $7b
    push DE                                            ;; 01:450b $d5
    bit  0, A                                          ;; 01:450c $cb $47
    jr   NZ, .jr_01_4541                               ;; 01:450e $20 $31
    bit  1, A                                          ;; 01:4510 $cb $4f
    jp   NZ, .jp_01_4597                               ;; 01:4512 $c2 $97 $45
    bit  2, A                                          ;; 01:4515 $cb $57
    jp   NZ, .jp_01_45e7                               ;; 01:4517 $c2 $e7 $45
    bit  3, A                                          ;; 01:451a $cb $5f
    jp   NZ, .jp_01_463a                               ;; 01:451c $c2 $3a $46
    pop  DE                                            ;; 01:451f $d1
    ld   A, [wC0A2]                                    ;; 01:4520 $fa $a2 $c0
    res  0, A                                          ;; 01:4523 $cb $87
    res  1, A                                          ;; 01:4525 $cb $8f
    res  3, A                                          ;; 01:4527 $cb $9f
    res  2, A                                          ;; 01:4529 $cb $97
    swap A                                             ;; 01:452b $cb $37
    ld   [wC0A2], A                                    ;; 01:452d $ea $a2 $c0
    ld   [wC0A1], A                                    ;; 01:4530 $ea $a1 $c0
    call call_00_2926                                  ;; 01:4533 $cd $26 $29
    ld   A, $ff                                        ;; 01:4536 $3e $ff
    ld   [wD394], A                                    ;; 01:4538 $ea $94 $d3
    ld   A, $00                                        ;; 01:453b $3e $00
    ld   [wC341], A                                    ;; 01:453d $ea $41 $c3
    ret                                                ;; 01:4540 $c9
.jr_01_4541:
    ld   A, [wC348]                                    ;; 01:4541 $fa $48 $c3
    cp   A, $00                                        ;; 01:4544 $fe $00
    jr   NZ, .jr_01_4569                               ;; 01:4546 $20 $21
    ld   A, D                                          ;; 01:4548 $7a
    call call_00_044d                                  ;; 01:4549 $cd $4d $04
    ld   A, [wC344]                                    ;; 01:454c $fa $44 $c3
    ld   E, A                                          ;; 01:454f $5f
    ld   A, [wC345]                                    ;; 01:4550 $fa $45 $c3
    ld   D, A                                          ;; 01:4553 $57
    and  A, E                                          ;; 01:4554 $a3
    inc  A                                             ;; 01:4555 $3c
    ld   A, $12                                        ;; 01:4556 $3e $12
    jr   Z, .jr_01_455c                                ;; 01:4558 $28 $02
    or   A, $80                                        ;; 01:455a $f6 $80
.jr_01_455c:
    call call_00_2617                                  ;; 01:455c $cd $17 $26
    ld   A, $ff                                        ;; 01:455f $3e $ff
    ld   [wC344], A                                    ;; 01:4561 $ea $44 $c3
    ld   [wC345], A                                    ;; 01:4564 $ea $45 $c3
    ld   A, $00                                        ;; 01:4567 $3e $00
.jr_01_4569:
    and  A, $0f                                        ;; 01:4569 $e6 $0f
    jr   NZ, .jr_01_4587                               ;; 01:456b $20 $1a
    ld   A, [wC348]                                    ;; 01:456d $fa $48 $c3
    swap A                                             ;; 01:4570 $cb $37
    and  A, $0f                                        ;; 01:4572 $e6 $0f
    sub  A, $0a                                        ;; 01:4574 $d6 $0a
    cpl                                                ;; 01:4576 $2f
    ld   E, A                                          ;; 01:4577 $5f
    ld   D, $ff                                        ;; 01:4578 $16 $ff
    call call_01_4690                                  ;; 01:457a $cd $90 $46
    ld   A, [wBackgroundDrawPositionX]                 ;; 01:457d $fa $42 $c3
    dec  A                                             ;; 01:4580 $3d
    dec  A                                             ;; 01:4581 $3d
    and  A, $1f                                        ;; 01:4582 $e6 $1f
    ld   [wBackgroundDrawPositionX], A                 ;; 01:4584 $ea $42 $c3
.jr_01_4587:
    ld   A, $b1                                        ;; 01:4587 $3e $b1
    call call_00_0429                                  ;; 01:4589 $cd $29 $04
    pop  DE                                            ;; 01:458c $d1
    ld   A, D                                          ;; 01:458d $7a
    cpl                                                ;; 01:458e $2f
    inc  A                                             ;; 01:458f $3c
    ld   E, A                                          ;; 01:4590 $5f
    ld   D, $00                                        ;; 01:4591 $16 $00
    call call_01_46c4                                  ;; 01:4593 $cd $c4 $46
    ret                                                ;; 01:4596 $c9
.jp_01_4597:
    ld   A, [wC348]                                    ;; 01:4597 $fa $48 $c3
    cp   A, $00                                        ;; 01:459a $fe $00
    jr   NZ, .jr_01_45bf                               ;; 01:459c $20 $21
    ld   A, D                                          ;; 01:459e $7a
    call call_00_044d                                  ;; 01:459f $cd $4d $04
    ld   A, [wC344]                                    ;; 01:45a2 $fa $44 $c3
    ld   E, A                                          ;; 01:45a5 $5f
    ld   A, [wC345]                                    ;; 01:45a6 $fa $45 $c3
    ld   D, A                                          ;; 01:45a9 $57
    and  A, E                                          ;; 01:45aa $a3
    inc  A                                             ;; 01:45ab $3c
    ld   A, $11                                        ;; 01:45ac $3e $11
    jr   Z, .jr_01_45b2                                ;; 01:45ae $28 $02
    or   A, $80                                        ;; 01:45b0 $f6 $80
.jr_01_45b2:
    call call_00_2617                                  ;; 01:45b2 $cd $17 $26
    ld   A, $ff                                        ;; 01:45b5 $3e $ff
    ld   [wC344], A                                    ;; 01:45b7 $ea $44 $c3
    ld   [wC345], A                                    ;; 01:45ba $ea $45 $c3
    ld   A, $00                                        ;; 01:45bd $3e $00
.jr_01_45bf:
    and  A, $0f                                        ;; 01:45bf $e6 $0f
    jr   NZ, .jr_01_45da                               ;; 01:45c1 $20 $17
    ld   A, [wC348]                                    ;; 01:45c3 $fa $48 $c3
    swap A                                             ;; 01:45c6 $cb $37
    and  A, $0f                                        ;; 01:45c8 $e6 $0f
    ld   E, A                                          ;; 01:45ca $5f
    ld   D, $0a                                        ;; 01:45cb $16 $0a
    call call_01_4690                                  ;; 01:45cd $cd $90 $46
    ld   A, [wBackgroundDrawPositionX]                 ;; 01:45d0 $fa $42 $c3
    inc  A                                             ;; 01:45d3 $3c
    inc  A                                             ;; 01:45d4 $3c
    and  A, $1f                                        ;; 01:45d5 $e6 $1f
    ld   [wBackgroundDrawPositionX], A                 ;; 01:45d7 $ea $42 $c3
.jr_01_45da:
    ld   A, $b2                                        ;; 01:45da $3e $b2
    call call_00_0429                                  ;; 01:45dc $cd $29 $04
    pop  DE                                            ;; 01:45df $d1
    ld   E, D                                          ;; 01:45e0 $5a
    ld   D, $00                                        ;; 01:45e1 $16 $00
    call call_01_46c4                                  ;; 01:45e3 $cd $c4 $46
    ret                                                ;; 01:45e6 $c9
.jp_01_45e7:
    ld   A, [wC348]                                    ;; 01:45e7 $fa $48 $c3
    cp   A, $00                                        ;; 01:45ea $fe $00
    jr   NZ, .jr_01_460f                               ;; 01:45ec $20 $21
    ld   A, D                                          ;; 01:45ee $7a
    call call_00_044d                                  ;; 01:45ef $cd $4d $04
    ld   A, [wC344]                                    ;; 01:45f2 $fa $44 $c3
    ld   E, A                                          ;; 01:45f5 $5f
    ld   A, [wC345]                                    ;; 01:45f6 $fa $45 $c3
    ld   D, A                                          ;; 01:45f9 $57
    and  A, E                                          ;; 01:45fa $a3
    inc  A                                             ;; 01:45fb $3c
    ld   A, $18                                        ;; 01:45fc $3e $18
    jr   Z, .jr_01_4602                                ;; 01:45fe $28 $02
    or   A, $80                                        ;; 01:4600 $f6 $80
.jr_01_4602:
    call call_00_2617                                  ;; 01:4602 $cd $17 $26
    ld   A, $ff                                        ;; 01:4605 $3e $ff
    ld   [wC344], A                                    ;; 01:4607 $ea $44 $c3
    ld   [wC345], A                                    ;; 01:460a $ea $45 $c3
    ld   A, $00                                        ;; 01:460d $3e $00
.jr_01_460f:
    and  A, $0f                                        ;; 01:460f $e6 $0f
    jr   NZ, .jr_01_462e                               ;; 01:4611 $20 $1b
    ld   A, [wC348]                                    ;; 01:4613 $fa $48 $c3
    swap A                                             ;; 01:4616 $cb $37
    and  A, $0f                                        ;; 01:4618 $e6 $0f
    ld   E, A                                          ;; 01:461a $5f
    ld   A, [wC340]                                    ;; 01:461b $fa $40 $c3
    srl  A                                             ;; 01:461e $cb $3f
    ld   D, A                                          ;; 01:4620 $57
    call call_01_46aa                                  ;; 01:4621 $cd $aa $46
    ld   A, [wBackgroundDrawPositionY]                 ;; 01:4624 $fa $43 $c3
    inc  A                                             ;; 01:4627 $3c
    inc  A                                             ;; 01:4628 $3c
    and  A, $1f                                        ;; 01:4629 $e6 $1f
    ld   [wBackgroundDrawPositionY], A                 ;; 01:462b $ea $43 $c3
.jr_01_462e:
    ld   A, $b4                                        ;; 01:462e $3e $b4
    call call_00_0429                                  ;; 01:4630 $cd $29 $04
    pop  DE                                            ;; 01:4633 $d1
    ld   E, $00                                        ;; 01:4634 $1e $00
    call call_01_46c4                                  ;; 01:4636 $cd $c4 $46
    ret                                                ;; 01:4639 $c9
.jp_01_463a:
    ld   A, [wC348]                                    ;; 01:463a $fa $48 $c3
    cp   A, $00                                        ;; 01:463d $fe $00
    jr   NZ, .jr_01_4662                               ;; 01:463f $20 $21
    ld   A, D                                          ;; 01:4641 $7a
    call call_00_044d                                  ;; 01:4642 $cd $4d $04
    ld   A, [wC344]                                    ;; 01:4645 $fa $44 $c3
    ld   E, A                                          ;; 01:4648 $5f
    ld   A, [wC345]                                    ;; 01:4649 $fa $45 $c3
    ld   D, A                                          ;; 01:464c $57
    and  A, E                                          ;; 01:464d $a3
    inc  A                                             ;; 01:464e $3c
    ld   A, $14                                        ;; 01:464f $3e $14
    jr   Z, .jr_01_4655                                ;; 01:4651 $28 $02
    or   A, $80                                        ;; 01:4653 $f6 $80
.jr_01_4655:
    call call_00_2617                                  ;; 01:4655 $cd $17 $26
    ld   A, $ff                                        ;; 01:4658 $3e $ff
    ld   [wC344], A                                    ;; 01:465a $ea $44 $c3
    ld   [wC345], A                                    ;; 01:465d $ea $45 $c3
    ld   A, $00                                        ;; 01:4660 $3e $00
.jr_01_4662:
    and  A, $0f                                        ;; 01:4662 $e6 $0f
    jr   NZ, .jr_01_4680                               ;; 01:4664 $20 $1a
    ld   A, [wC348]                                    ;; 01:4666 $fa $48 $c3
    swap A                                             ;; 01:4669 $cb $37
    and  A, $0f                                        ;; 01:466b $e6 $0f
    sub  A, $08                                        ;; 01:466d $d6 $08
    cpl                                                ;; 01:466f $2f
    ld   E, A                                          ;; 01:4670 $5f
    ld   D, $ff                                        ;; 01:4671 $16 $ff
    call call_01_46aa                                  ;; 01:4673 $cd $aa $46
    ld   A, [wBackgroundDrawPositionY]                 ;; 01:4676 $fa $43 $c3
    dec  A                                             ;; 01:4679 $3d
    dec  A                                             ;; 01:467a $3d
    and  A, $1f                                        ;; 01:467b $e6 $1f
    ld   [wBackgroundDrawPositionY], A                 ;; 01:467d $ea $43 $c3
.jr_01_4680:
    ld   A, $b8                                        ;; 01:4680 $3e $b8
    call call_00_0429                                  ;; 01:4682 $cd $29 $04
    pop  DE                                            ;; 01:4685 $d1
    ld   A, D                                          ;; 01:4686 $7a
    cpl                                                ;; 01:4687 $2f
    inc  A                                             ;; 01:4688 $3c
    ld   D, A                                          ;; 01:4689 $57
    ld   E, $00                                        ;; 01:468a $1e $00
    call call_01_46c4                                  ;; 01:468c $cd $c4 $46
    ret                                                ;; 01:468f $c9

call_01_4690:
    ld   B, $00                                        ;; 01:4690 $06 $00
.jr_01_4692:
    push BC                                            ;; 01:4692 $c5
    push DE                                            ;; 01:4693 $d5
    ld   D, B                                          ;; 01:4694 $50
    call call_00_2426                                  ;; 01:4695 $cd $26 $24
    pop  DE                                            ;; 01:4698 $d1
    pop  BC                                            ;; 01:4699 $c1
    push BC                                            ;; 01:469a $c5
    push DE                                            ;; 01:469b $d5
    ld   E, D                                          ;; 01:469c $5a
    ld   D, B                                          ;; 01:469d $50
    call call_00_051d                                  ;; 01:469e $cd $1d $05
    pop  DE                                            ;; 01:46a1 $d1
    pop  BC                                            ;; 01:46a2 $c1
    inc  B                                             ;; 01:46a3 $04
    ld   A, B                                          ;; 01:46a4 $78
    cp   A, $08                                        ;; 01:46a5 $fe $08
    jr   C, .jr_01_4692                                ;; 01:46a7 $38 $e9
    ret                                                ;; 01:46a9 $c9

call_01_46aa:
    ld   B, $00                                        ;; 01:46aa $06 $00
.jr_01_46ac:
    push BC                                            ;; 01:46ac $c5
    push DE                                            ;; 01:46ad $d5
    ld   D, E                                          ;; 01:46ae $53
    ld   E, B                                          ;; 01:46af $58
    call call_00_2426                                  ;; 01:46b0 $cd $26 $24
    pop  DE                                            ;; 01:46b3 $d1
    pop  BC                                            ;; 01:46b4 $c1
    push BC                                            ;; 01:46b5 $c5
    push DE                                            ;; 01:46b6 $d5
    ld   E, B                                          ;; 01:46b7 $58
    call call_00_051d                                  ;; 01:46b8 $cd $1d $05
    pop  DE                                            ;; 01:46bb $d1
    pop  BC                                            ;; 01:46bc $c1
    inc  B                                             ;; 01:46bd $04
    ld   A, B                                          ;; 01:46be $78
    cp   A, $0a                                        ;; 01:46bf $fe $0a
    jr   C, .jr_01_46ac                                ;; 01:46c1 $38 $e9
    ret                                                ;; 01:46c3 $c9

call_01_46c4:
    ld   A, [wVideoSCX]                                ;; 01:46c4 $fa $a6 $c0
    add  A, E                                          ;; 01:46c7 $83
    ld   [wVideoSCX], A                                ;; 01:46c8 $ea $a6 $c0
    ld   A, [wVideoSCY]                                ;; 01:46cb $fa $a7 $c0
    add  A, D                                          ;; 01:46ce $82
    ld   [wVideoSCY], A                                ;; 01:46cf $ea $a7 $c0
    ld   A, E                                          ;; 01:46d2 $7b
    add  A, D                                          ;; 01:46d3 $82
    bit  7, A                                          ;; 01:46d4 $cb $7f
    jr   Z, .jr_01_46da                                ;; 01:46d6 $28 $02
    cpl                                                ;; 01:46d8 $2f
    inc  A                                             ;; 01:46d9 $3c
.jr_01_46da:
    ld   C, A                                          ;; 01:46da $4f
    ld   A, [wC348]                                    ;; 01:46db $fa $48 $c3
    add  A, C                                          ;; 01:46de $81
    ld   [wC348], A                                    ;; 01:46df $ea $48 $c3
    ld   C, $a0                                        ;; 01:46e2 $0e $a0
    xor  A, A                                          ;; 01:46e4 $af
    cp   A, E                                          ;; 01:46e5 $bb
    jr   NZ, .jr_01_46ef                               ;; 01:46e6 $20 $07
    ld   A, [wC340]                                    ;; 01:46e8 $fa $40 $c3
    add  A, A                                          ;; 01:46eb $87
    add  A, A                                          ;; 01:46ec $87
    add  A, A                                          ;; 01:46ed $87
    ld   C, A                                          ;; 01:46ee $4f
.jr_01_46ef:
    ld   A, [wC348]                                    ;; 01:46ef $fa $48 $c3
    cp   A, C                                          ;; 01:46f2 $b9
    ret  C                                             ;; 01:46f3 $d8
    ld   A, $00                                        ;; 01:46f4 $3e $00
    call call_00_044d                                  ;; 01:46f6 $cd $4d $04
    call call_00_2ef1                                  ;; 01:46f9 $cd $f1 $2e
    ld   A, [wC0A2]                                    ;; 01:46fc $fa $a2 $c0
    res  0, A                                          ;; 01:46ff $cb $87
    res  1, A                                          ;; 01:4701 $cb $8f
    res  3, A                                          ;; 01:4703 $cb $9f
    res  2, A                                          ;; 01:4705 $cb $97
    swap A                                             ;; 01:4707 $cb $37
    ld   [wC0A2], A                                    ;; 01:4709 $ea $a2 $c0
    ld   [wC0A1], A                                    ;; 01:470c $ea $a1 $c0
    call call_00_2926                                  ;; 01:470f $cd $26 $29
    ld   A, $ff                                        ;; 01:4712 $3e $ff
    ld   [wD394], A                                    ;; 01:4714 $ea $94 $d3
    ld   A, $00                                        ;; 01:4717 $3e $00
    ld   [wC341], A                                    ;; 01:4719 $ea $41 $c3
    ret                                                ;; 01:471c $c9

call_01_471d:
    ld   A, $00                                        ;; 01:471d $3e $00
    ld   [wVideoSCX], A                                ;; 01:471f $ea $a6 $c0
    ld   [wVideoSCY], A                                ;; 01:4722 $ea $a7 $c0
    ld   [wBackgroundDrawPositionX], A                 ;; 01:4725 $ea $42 $c3
    ld   [wBackgroundDrawPositionY], A                 ;; 01:4728 $ea $43 $c3
    dec  A                                             ;; 01:472b $3d
    ld   [wC344], A                                    ;; 01:472c $ea $44 $c3
    ld   [wC345], A                                    ;; 01:472f $ea $45 $c3
    ld   D, $00                                        ;; 01:4732 $16 $00
    ld   C, $08                                        ;; 01:4734 $0e $08
.jr_01_4736:
    ld   E, $00                                        ;; 01:4736 $1e $00
    ld   B, $0a                                        ;; 01:4738 $06 $0a
.jr_01_473a:
    push BC                                            ;; 01:473a $c5
    push DE                                            ;; 01:473b $d5
    call call_00_2426                                  ;; 01:473c $cd $26 $24
    pop  DE                                            ;; 01:473f $d1
    push DE                                            ;; 01:4740 $d5
    call call_00_051d                                  ;; 01:4741 $cd $1d $05
    pop  DE                                            ;; 01:4744 $d1
    pop  BC                                            ;; 01:4745 $c1
    inc  E                                             ;; 01:4746 $1c
    dec  B                                             ;; 01:4747 $05
    jr   NZ, .jr_01_473a                               ;; 01:4748 $20 $f0
    inc  D                                             ;; 01:474a $14
    dec  C                                             ;; 01:474b $0d
    jr   NZ, .jr_01_4736                               ;; 01:474c $20 $e8
    call call_00_2926                                  ;; 01:474e $cd $26 $29
    ret                                                ;; 01:4751 $c9

data_01_4752:
    db   $20, $02, $00, $00, $00, $02, $00, $00        ;; 01:4752 ........
    db   $02, $00, $00, $02                            ;; 01:475a ....

data_01_475e:
    db   $0c, $0e, $0d, $0f, $0c, $0e, $0d, $0f        ;; 01:475e ........
    db   $06, $08, $07, $09, $00, $02, $01, $03        ;; 01:4766 ........
    db   $10, $12, $11, $13, $10, $12, $11, $13        ;; 01:476e ........
    db   $06, $0a, $07, $0b, $00, $04, $01, $05        ;; 01:4776 ........
    db   $48, $4a, $49, $4b, $48, $4a, $49, $4b        ;; 01:477e ........
    db   $48, $4a, $49, $4b, $48, $4a, $49, $4b        ;; 01:4786 ........
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:478e ........
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:4796 ........
    db   $24, $26, $25, $27, $24, $26, $25, $27        ;; 01:479e ........
    db   $1c, $1e, $1d, $1f, $14, $16, $15, $17        ;; 01:47a6 ........
    db   $28, $2a, $29, $2b, $28, $2a, $29, $2b        ;; 01:47ae ........
    db   $20, $22, $21, $23, $18, $1a, $19, $1b        ;; 01:47b6 ........
    db   $34, $36, $35, $37, $34, $36, $35, $37        ;; 01:47be ????????
    db   $30, $32, $31, $33, $2c, $2e, $2d, $2f        ;; 01:47c6 ????????
    db   $10, $12, $11, $13, $10, $12, $11, $13        ;; 01:47ce ????????
    db   $42, $44, $43, $45, $18, $3c, $19, $3d        ;; 01:47d6 ????????
    db   $10, $12, $11, $13, $10, $12, $11, $13        ;; 01:47de ????????
    db   $42, $44, $43, $45, $3e, $40, $3f, $41        ;; 01:47e6 ????????
    db   $28, $2a, $29, $2b, $28, $2a, $29, $2b        ;; 01:47ee ????????
    db   $20, $22, $21, $23, $18, $1a, $19, $1b        ;; 01:47f6 ????????
    db   $94, $96, $95, $97, $94, $96, $95, $97        ;; 01:47fe ????????
    db   $90, $92, $91, $93, $8c, $8e, $8d, $8f        ;; 01:4806 ????????
    db   $38, $3a, $39, $3b, $38, $3a, $39, $3b        ;; 01:480e ....????
    db   $38, $3a, $39, $3b, $38, $3a, $39, $3b        ;; 01:4816 ????....
    db   $ac, $ae, $ad, $af, $ac, $ae, $ad, $af        ;; 01:481e ????????
    db   $a4, $a6, $a5, $a7, $9c, $9e, $9d, $9f        ;; 01:4826 ????????
    db   $b0, $b2, $b1, $b3, $b0, $b2, $b1, $b3        ;; 01:482e ????????
    db   $a8, $aa, $a9, $ab, $a0, $a2, $a1, $a3        ;; 01:4836 ????????
    db   $98, $9a, $99, $9b, $98, $9a, $99, $9b        ;; 01:483e ????????
    db   $98, $9a, $99, $9b, $98, $9a, $99, $9b        ;; 01:4846 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:484e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:4856 ????????
    db   $6c, $6e, $6d, $6f, $6c, $6e, $6d, $6f        ;; 01:485e ????????
    db   $64, $66, $65, $67, $5c, $5e, $5d, $5f        ;; 01:4866 ????????
    db   $70, $72, $71, $73, $70, $72, $71, $73        ;; 01:486e ????????
    db   $68, $6a, $69, $6b, $60, $62, $61, $63        ;; 01:4876 ????????
    db   $84, $86, $85, $87, $84, $86, $85, $87        ;; 01:487e ????????
    db   $7c, $7e, $7d, $7f, $74, $76, $75, $77        ;; 01:4886 ????????
    db   $88, $8a, $89, $8b, $88, $8a, $89, $8b        ;; 01:488e ????????
    db   $80, $82, $81, $83, $78, $7a, $79, $7b        ;; 01:4896 ????????
    db   $c4, $c6, $c5, $c7, $c4, $c6, $c5, $c7        ;; 01:489e ????????
    db   $bc, $be, $bd, $bf, $b4, $b6, $b5, $b7        ;; 01:48a6 ????????
    db   $c8, $ca, $c9, $cb, $c8, $ca, $c9, $cb        ;; 01:48ae ????????
    db   $c0, $c2, $c1, $c3, $b8, $ba, $b9, $bb        ;; 01:48b6 ????????

call_01_48be:
    ld   C, A                                          ;; 01:48be $4f
    ld   A, [wC4D4]                                    ;; 01:48bf $fa $d4 $c4
    and  A, $fc                                        ;; 01:48c2 $e6 $fc
    call NZ, call_01_495d                              ;; 01:48c4 $c4 $5d $49
    ld   A, C                                          ;; 01:48c7 $79
    push AF                                            ;; 01:48c8 $f5
    push BC                                            ;; 01:48c9 $c5
    call call_00_02ab                                  ;; 01:48ca $cd $ab $02
    ld   L, A                                          ;; 01:48cd $6f
    pop  BC                                            ;; 01:48ce $c1
    ld   A, C                                          ;; 01:48cf $79
    and  A, $0f                                        ;; 01:48d0 $e6 $0f
    jr   Z, .jr_01_48d8                                ;; 01:48d2 $28 $04
    bit  7, L                                          ;; 01:48d4 $cb $7d
    jr   Z, .jr_01_48d9                                ;; 01:48d6 $28 $01
.jr_01_48d8:
    ld   C, L                                          ;; 01:48d8 $4d
.jr_01_48d9:
    ld   A, C                                          ;; 01:48d9 $79
    bit  5, A                                          ;; 01:48da $cb $6f
    jr   Z, .jr_01_48e1                                ;; 01:48dc $28 $03
    call call_00_29e4                                  ;; 01:48de $cd $e4 $29
.jr_01_48e1:
    ld   C, A                                          ;; 01:48e1 $4f
    ld   A, [wC0A1]                                    ;; 01:48e2 $fa $a1 $c0
    bit  3, A                                          ;; 01:48e5 $cb $5f
    jr   NZ, .jr_01_48fd                               ;; 01:48e7 $20 $14
    push BC                                            ;; 01:48e9 $c5
    call call_00_0169                                  ;; 01:48ea $cd $69 $01
    inc  D                                             ;; 01:48ed $14
    inc  E                                             ;; 01:48ee $1c
    call call_00_16af                                  ;; 01:48ef $cd $af $16
    ld   DE, $800                                      ;; 01:48f2 $11 $00 $08
    call HLandDE                                       ;; 01:48f5 $cd $b2 $29
    pop  BC                                            ;; 01:48f8 $c1
    jr   Z, .jr_01_48fd                                ;; 01:48f9 $28 $02
    ld   C, $04                                        ;; 01:48fb $0e $04
.jr_01_48fd:
    ld   A, C                                          ;; 01:48fd $79
    rrca                                               ;; 01:48fe $0f
    jr   C, .jr_01_490c                                ;; 01:48ff $38 $0b
    rrca                                               ;; 01:4901 $0f
    jr   C, .jr_01_4910                                ;; 01:4902 $38 $0c
    rrca                                               ;; 01:4904 $0f
    jr   C, .jr_01_4914                                ;; 01:4905 $38 $0d
    rrca                                               ;; 01:4907 $0f
    jr   C, .jr_01_4918                                ;; 01:4908 $38 $0e
    jr   .jr_01_4954                                   ;; 01:490a $18 $48
.jr_01_490c:
    ld   A, $00                                        ;; 01:490c $3e $00
    jr   .jr_01_491a                                   ;; 01:490e $18 $0a
.jr_01_4910:
    ld   A, $04                                        ;; 01:4910 $3e $04
    jr   .jr_01_491a                                   ;; 01:4912 $18 $06
.jr_01_4914:
    ld   A, $08                                        ;; 01:4914 $3e $08
    jr   .jr_01_491a                                   ;; 01:4916 $18 $02
.jr_01_4918:
    ld   A, $0c                                        ;; 01:4918 $3e $0c
.jr_01_491a:
    add  A, B                                          ;; 01:491a $80
    ld   E, A                                          ;; 01:491b $5f
    ld   A, [wD394]                                    ;; 01:491c $fa $94 $d3
    cp   A, $ff                                        ;; 01:491f $fe $ff
    jr   NZ, .jr_01_492c                               ;; 01:4921 $20 $09
    ld   A, [wTileCopyRequestCount]                    ;; 01:4923 $fa $e0 $c8
    cp   A, $00                                        ;; 01:4926 $fe $00
    jr   NZ, .jr_01_4954                               ;; 01:4928 $20 $2a
    ld   A, $ff                                        ;; 01:492a $3e $ff
.jr_01_492c:
    cp   A, E                                          ;; 01:492c $bb
    jr   Z, .jr_01_4954                                ;; 01:492d $28 $25
    ld   A, E                                          ;; 01:492f $7b
    ld   [wD394], A                                    ;; 01:4930 $ea $94 $d3
    and  A, $03                                        ;; 01:4933 $e6 $03
    ld   H, A                                          ;; 01:4935 $67
    ld   A, E                                          ;; 01:4936 $7b
    and  A, $fc                                        ;; 01:4937 $e6 $fc
    ld   L, A                                          ;; 01:4939 $6f
    ld   DE, data_01_475e                              ;; 01:493a $11 $5e $47
    add  HL, DE                                        ;; 01:493d $19
    ld   DE, $5a40                                     ;; 01:493e $11 $40 $5a
    ld   C, $04                                        ;; 01:4941 $0e $04
    ld   B, $00                                        ;; 01:4943 $06 $00
    xor  A, A                                          ;; 01:4945 $af
    call call_00_1a76                                  ;; 01:4946 $cd $76 $1a
    ld   DE, $5a40                                     ;; 01:4949 $11 $40 $5a
    ld   C, $04                                        ;; 01:494c $0e $04
    ld   B, $20                                        ;; 01:494e $06 $20
    xor  A, A                                          ;; 01:4950 $af
    call call_00_1a76                                  ;; 01:4951 $cd $76 $1a
.jr_01_4954:
    ld   C, $04                                        ;; 01:4954 $0e $04
    ld   B, $00                                        ;; 01:4956 $06 $00
    pop  AF                                            ;; 01:4958 $f1
    call call_00_0695                                  ;; 01:4959 $cd $95 $06
    ret                                                ;; 01:495c $c9

call_01_495d:
    ld   L, A                                          ;; 01:495d $6f
    bit  4, L                                          ;; 01:495e $cb $65
    call NZ, call_01_4985                              ;; 01:4960 $c4 $85 $49
    bit  5, L                                          ;; 01:4963 $cb $6d
    call NZ, call_01_4988                              ;; 01:4965 $c4 $88 $49
    bit  6, L                                          ;; 01:4968 $cb $75
    call NZ, call_01_498b                              ;; 01:496a $c4 $8b $49
    bit  3, L                                          ;; 01:496d $cb $5d
    jr   Z, .jr_01_4979                                ;; 01:496f $28 $08
    ld   A, B                                          ;; 01:4971 $78
    cp   A, $40                                        ;; 01:4972 $fe $40
    jr   NC, .jr_01_4979                               ;; 01:4974 $30 $03
    add  A, $c0                                        ;; 01:4976 $c6 $c0
    ld   B, A                                          ;; 01:4978 $47
.jr_01_4979:
    ld   A, [wC0A1]                                    ;; 01:4979 $fa $a1 $c0
    bit  3, A                                          ;; 01:497c $cb $5f
    ret  NZ                                            ;; 01:497e $c0
    bit  2, L                                          ;; 01:497f $cb $55
    ret  Z                                             ;; 01:4981 $c8
    res  4, C                                          ;; 01:4982 $cb $a1
    ret                                                ;; 01:4984 $c9

call_01_4985:
    ld   B, $a0                                        ;; 01:4985 $06 $a0
    ret                                                ;; 01:4987 $c9

call_01_4988:
    ld   B, $20                                        ;; 01:4988 $06 $20
    ret                                                ;; 01:498a $c9

call_01_498b:
    ld   B, $b0                                        ;; 01:498b $06 $b0
    ret                                                ;; 01:498d $c9

call_01_498e:
    ld   B, $00                                        ;; 01:498e $06 $00
    ld   C, $04                                        ;; 01:4990 $0e $04
    call updateObjectPosition                          ;; 01:4992 $cd $11 $06
    ret                                                ;; 01:4995 $c9

call_01_4996:
    ld   B, $00                                        ;; 01:4996 $06 $00
    ld   C, $04                                        ;; 01:4998 $0e $04
    call call_00_0695                                  ;; 01:499a $cd $95 $06
    ret                                                ;; 01:499d $c9

call_01_499e:
    call trampolineUpdateJoypadInput                   ;; 01:499e $cd $d1 $1e
    ld   D, A                                          ;; 01:49a1 $57
    ld   E, B                                          ;; 01:49a2 $58
    ld   HL, .data_01_49ad                             ;; 01:49a3 $21 $ad $49
    ld   A, [wC0A0]                                    ;; 01:49a6 $fa $a0 $c0
    call callJumptable                                 ;; 01:49a9 $cd $70 $2b
    ret                                                ;; 01:49ac $c9
;@jumptable amount=18
.data_01_49ad:
    dw   call_01_49d1                                  ;; 01:49ad ..
    dw   call_01_49d1                                  ;; 01:49af ??
    dw   call_01_4ea9                                  ;; 01:49b1 ..
    dw   call_01_4d8f                                  ;; 01:49b3 ??
    dw   call_01_4c5d                                  ;; 01:49b5 ??
    dw   call_01_4dcb                                  ;; 01:49b7 ??
    dw   call_01_4c3e                                  ;; 01:49b9 ??
    dw   call_01_49d1                                  ;; 01:49bb ??
    dw   call_01_4ee2                                  ;; 01:49bd ..
    dw   call_01_4efb                                  ;; 01:49bf ..
    dw   call_01_4f14                                  ;; 01:49c1 ..
    dw   call_01_4f2f                                  ;; 01:49c3 ..
    dw   call_01_4b94                                  ;; 01:49c5 ??
    dw   call_01_4bd4                                  ;; 01:49c7 ??
    dw   call_01_4c09                                  ;; 01:49c9 ??
    dw   call_00_309f                                  ;; 01:49cb ..
    dw   call_00_3254                                  ;; 01:49cd ..
    dw   call_00_3159                                  ;; 01:49cf ..

call_01_49d1:
    push DE                                            ;; 01:49d1 $d5
    call call_00_27ce                                  ;; 01:49d2 $cd $ce $27
    pop  DE                                            ;; 01:49d5 $d1
    ld   A, D                                          ;; 01:49d6 $7a
    and  A, $0f                                        ;; 01:49d7 $e6 $0f
    or   A, $90                                        ;; 01:49d9 $f6 $90
    ld   C, A                                          ;; 01:49db $4f
    ld   B, $00                                        ;; 01:49dc $06 $00
    ld   A, [wC0A1]                                    ;; 01:49de $fa $a1 $c0
    bit  3, A                                          ;; 01:49e1 $cb $5f
    jr   NZ, .jr_01_49f2                               ;; 01:49e3 $20 $0d
    push DE                                            ;; 01:49e5 $d5
    push BC                                            ;; 01:49e6 $c5
    ld   C, $04                                        ;; 01:49e7 $0e $04
    call call_00_0cd3                                  ;; 01:49e9 $cd $d3 $0c
    pop  BC                                            ;; 01:49ec $c1
    pop  DE                                            ;; 01:49ed $d1
    cp   A, $00                                        ;; 01:49ee $fe $00
    jr   NZ, .jr_01_4a09                               ;; 01:49f0 $20 $17
.jr_01_49f2:
    push DE                                            ;; 01:49f2 $d5
    push BC                                            ;; 01:49f3 $c5
    ld   C, $04                                        ;; 01:49f4 $0e $04
    call call_00_0c0c                                  ;; 01:49f6 $cd $0c $0c
    pop  BC                                            ;; 01:49f9 $c1
    pop  DE                                            ;; 01:49fa $d1
    jr   Z, .jr_01_49ff                                ;; 01:49fb $28 $02
    ld   B, $10                                        ;; 01:49fd $06 $10
.jr_01_49ff:
    ld   A, [wC4D2]                                    ;; 01:49ff $fa $d2 $c4
    cp   A, $00                                        ;; 01:4a02 $fe $00
    call NZ, call_01_4b38                              ;; 01:4a04 $c4 $38 $4b
    jr   .jr_01_4a16                                   ;; 01:4a07 $18 $0d
.jr_01_4a09:
    push AF                                            ;; 01:4a09 $f5
    ld   A, [wC4D2]                                    ;; 01:4a0a $fa $d2 $c4
    cp   A, $00                                        ;; 01:4a0d $fe $00
    call NZ, call_01_4b38                              ;; 01:4a0f $c4 $38 $4b
    pop  AF                                            ;; 01:4a12 $f1
    and  A, $0f                                        ;; 01:4a13 $e6 $0f
    ld   D, A                                          ;; 01:4a15 $57
.jr_01_4a16:
    push DE                                            ;; 01:4a16 $d5
    push BC                                            ;; 01:4a17 $c5
    call call_00_2ed3                                  ;; 01:4a18 $cd $d3 $2e
    pop  BC                                            ;; 01:4a1b $c1
    pop  DE                                            ;; 01:4a1c $d1
    jr   NZ, jp_01_4a38                                ;; 01:4a1d $20 $19
    bit  7, E                                          ;; 01:4a1f $cb $7b
    jp   NZ, call_01_51d5                              ;; 01:4a21 $c2 $d5 $51
    bit  6, E                                          ;; 01:4a24 $cb $73
    jp   NZ, jp_01_51db                                ;; 01:4a26 $c2 $db $51
    ld   A, [wC4D4]                                    ;; 01:4a29 $fa $d4 $c4
    bit  3, A                                          ;; 01:4a2c $cb $5f
    jr   NZ, jp_01_4a38                                ;; 01:4a2e $20 $08
    bit  4, E                                          ;; 01:4a30 $cb $63
    jr   NZ, jr_01_4a4f                                ;; 01:4a32 $20 $1b
    bit  5, E                                          ;; 01:4a34 $cb $6b
    jr   NZ, jr_01_4a4f                                ;; 01:4a36 $20 $17

jp_01_4a38:
    bit  0, D                                          ;; 01:4a38 $cb $42
    jr   NZ, jr_01_4a6c                                ;; 01:4a3a $20 $30
    bit  1, D                                          ;; 01:4a3c $cb $4a
    jr   NZ, jr_01_4a9a                                ;; 01:4a3e $20 $5a
    bit  2, D                                          ;; 01:4a40 $cb $52
    jp   NZ, jp_01_4ac4                                ;; 01:4a42 $c2 $c4 $4a
    bit  3, D                                          ;; 01:4a45 $cb $5a
    jp   NZ, jp_01_4aee                                ;; 01:4a47 $c2 $ee $4a
    xor  A, A                                          ;; 01:4a4a $af
    call call_01_48be                                  ;; 01:4a4b $cd $be $48
    ret                                                ;; 01:4a4e $c9

jr_01_4a4f:
    push DE                                            ;; 01:4a4f $d5
    ld   A, C                                          ;; 01:4a50 $79
    and  A, $0f                                        ;; 01:4a51 $e6 $0f
    call call_01_48be                                  ;; 01:4a53 $cd $be $48
    pop  DE                                            ;; 01:4a56 $d1
    ld   A, $02                                        ;; 01:4a57 $3e $02
    ld   [wC0A0], A                                    ;; 01:4a59 $ea $a0 $c0
    call call_00_2ee5                                  ;; 01:4a5c $cd $e5 $2e
    ret  NZ                                            ;; 01:4a5f $c0
    ld   A, [wC0A0]                                    ;; 01:4a60 $fa $a0 $c0
    cp   A, $02                                        ;; 01:4a63 $fe $02
    ret  NZ                                            ;; 01:4a65 $c0
    ld   A, $00                                        ;; 01:4a66 $3e $00
    ld   [wC0A0], A                                    ;; 01:4a68 $ea $a0 $c0
    ret                                                ;; 01:4a6b $c9

jr_01_4a6c:
    push BC                                            ;; 01:4a6c $c5
    ld   C, $04                                        ;; 01:4a6d $0e $04
    call call_00_036f                                  ;; 01:4a6f $cd $6f $03
    ld   A, B                                          ;; 01:4a72 $78
    pop  BC                                            ;; 01:4a73 $c1
    jp   NZ, jp_01_4b18                                ;; 01:4a74 $c2 $18 $4b
    bit  0, A                                          ;; 01:4a77 $cb $47
    jp   Z, jp_01_4b18                                 ;; 01:4a79 $ca $18 $4b
    ld   A, [wC4D2]                                    ;; 01:4a7c $fa $d2 $c4
    cp   A, $34                                        ;; 01:4a7f $fe $34
    jp   NC, jp_01_4b1d                                ;; 01:4a81 $d2 $1d $4b
    ld   A, [wC0A1]                                    ;; 01:4a84 $fa $a1 $c0
    bit  1, A                                          ;; 01:4a87 $cb $4f
    jp   NZ, jp_01_4b1d                                ;; 01:4a89 $c2 $1d $4b
    ld   A, $01                                        ;; 01:4a8c $3e $01
    call call_00_02b1                                  ;; 01:4a8e $cd $b1 $02
    ld   A, $09                                        ;; 01:4a91 $3e $09
    ld   [wC0A0], A                                    ;; 01:4a93 $ea $a0 $c0
    call call_01_4b24                                  ;; 01:4a96 $cd $24 $4b
    ret                                                ;; 01:4a99 $c9

jr_01_4a9a:
    push BC                                            ;; 01:4a9a $c5
    ld   C, $04                                        ;; 01:4a9b $0e $04
    call call_00_036f                                  ;; 01:4a9d $cd $6f $03
    ld   A, B                                          ;; 01:4aa0 $78
    pop  BC                                            ;; 01:4aa1 $c1
    jr   NZ, jp_01_4b18                                ;; 01:4aa2 $20 $74
    bit  1, A                                          ;; 01:4aa4 $cb $4f
    jr   Z, jp_01_4b18                                 ;; 01:4aa6 $28 $70
    ld   A, [wC4D2]                                    ;; 01:4aa8 $fa $d2 $c4
    cp   A, $34                                        ;; 01:4aab $fe $34
    jr   NC, jp_01_4b1d                                ;; 01:4aad $30 $6e
    ld   A, [wC0A1]                                    ;; 01:4aaf $fa $a1 $c0
    bit  1, A                                          ;; 01:4ab2 $cb $4f
    jr   NZ, jp_01_4b1d                                ;; 01:4ab4 $20 $67
    ld   A, $02                                        ;; 01:4ab6 $3e $02
    call call_00_02b1                                  ;; 01:4ab8 $cd $b1 $02
    ld   A, $08                                        ;; 01:4abb $3e $08
    ld   [wC0A0], A                                    ;; 01:4abd $ea $a0 $c0
    call call_01_4b24                                  ;; 01:4ac0 $cd $24 $4b
    ret                                                ;; 01:4ac3 $c9

jp_01_4ac4:
    push BC                                            ;; 01:4ac4 $c5
    ld   C, $04                                        ;; 01:4ac5 $0e $04
    call call_00_036f                                  ;; 01:4ac7 $cd $6f $03
    ld   A, B                                          ;; 01:4aca $78
    pop  BC                                            ;; 01:4acb $c1
    jr   NZ, jp_01_4b18                                ;; 01:4acc $20 $4a
    bit  2, A                                          ;; 01:4ace $cb $57
    jr   Z, jp_01_4b18                                 ;; 01:4ad0 $28 $46
    ld   A, [wC4D2]                                    ;; 01:4ad2 $fa $d2 $c4
    cp   A, $34                                        ;; 01:4ad5 $fe $34
    jr   NC, jp_01_4b1d                                ;; 01:4ad7 $30 $44
    ld   A, [wC0A1]                                    ;; 01:4ad9 $fa $a1 $c0
    bit  1, A                                          ;; 01:4adc $cb $4f
    jr   NZ, jp_01_4b1d                                ;; 01:4ade $20 $3d
    ld   A, $04                                        ;; 01:4ae0 $3e $04
    call call_00_02b1                                  ;; 01:4ae2 $cd $b1 $02
    ld   A, $0b                                        ;; 01:4ae5 $3e $0b
    ld   [wC0A0], A                                    ;; 01:4ae7 $ea $a0 $c0
    call call_01_4b24                                  ;; 01:4aea $cd $24 $4b
    ret                                                ;; 01:4aed $c9

jp_01_4aee:
    push BC                                            ;; 01:4aee $c5
    ld   C, $04                                        ;; 01:4aef $0e $04
    call call_00_036f                                  ;; 01:4af1 $cd $6f $03
    ld   A, B                                          ;; 01:4af4 $78
    pop  BC                                            ;; 01:4af5 $c1
    jr   NZ, jp_01_4b18                                ;; 01:4af6 $20 $20
    bit  3, A                                          ;; 01:4af8 $cb $5f
    jr   Z, jp_01_4b18                                 ;; 01:4afa $28 $1c
    ld   A, [wC4D2]                                    ;; 01:4afc $fa $d2 $c4
    cp   A, $34                                        ;; 01:4aff $fe $34
    jr   NC, jp_01_4b1d                                ;; 01:4b01 $30 $1a
    ld   A, [wC0A1]                                    ;; 01:4b03 $fa $a1 $c0
    bit  1, A                                          ;; 01:4b06 $cb $4f
    jr   NZ, jp_01_4b1d                                ;; 01:4b08 $20 $13
    ld   A, $08                                        ;; 01:4b0a $3e $08
    call call_00_02b1                                  ;; 01:4b0c $cd $b1 $02
    ld   A, $0a                                        ;; 01:4b0f $3e $0a
    ld   [wC0A0], A                                    ;; 01:4b11 $ea $a0 $c0
    call call_01_4b24                                  ;; 01:4b14 $cd $24 $4b
    ret                                                ;; 01:4b17 $c9

jp_01_4b18:
    ld   A, C                                          ;; 01:4b18 $79
    call call_01_48be                                  ;; 01:4b19 $cd $be $48
    ret                                                ;; 01:4b1c $c9

jp_01_4b1d:
    ld   A, C                                          ;; 01:4b1d $79
    and  A, $0f                                        ;; 01:4b1e $e6 $0f
    call call_01_48be                                  ;; 01:4b20 $cd $be $48
    ret                                                ;; 01:4b23 $c9

call_01_4b24:
    ld   A, [wD3E8]                                    ;; 01:4b24 $fa $e8 $d3
    cp   A, $ff                                        ;; 01:4b27 $fe $ff
    jr   Z, .jr_01_4b31                                ;; 01:4b29 $28 $06
    call call_00_04e8                                  ;; 01:4b2b $cd $e8 $04
    call call_00_2926                                  ;; 01:4b2e $cd $26 $29
.jr_01_4b31:
    call call_00_2ef7                                  ;; 01:4b31 $cd $f7 $2e
    call call_00_2483                                  ;; 01:4b34 $cd $83 $24
    ret                                                ;; 01:4b37 $c9

call_01_4b38:
    cp   A, $34                                        ;; 01:4b38 $fe $34
    jr   C, .jr_01_4b4f                                ;; 01:4b3a $38 $13
    jr   Z, .jr_01_4b72                                ;; 01:4b3c $28 $34
    push DE                                            ;; 01:4b3e $d5
    push BC                                            ;; 01:4b3f $c5
    ld   C, $04                                        ;; 01:4b40 $0e $04
    call getObjectDirection                            ;; 01:4b42 $cd $99 $0c
    pop  BC                                            ;; 01:4b45 $c1
    pop  DE                                            ;; 01:4b46 $d1
    and  A, $0f                                        ;; 01:4b47 $e6 $0f
    ld   D, A                                          ;; 01:4b49 $57
    or   A, $b0                                        ;; 01:4b4a $f6 $b0
    ld   C, A                                          ;; 01:4b4c $4f
    ld   B, $20                                        ;; 01:4b4d $06 $20
.jr_01_4b4f:
    bit  3, A                                          ;; 01:4b4f $cb $5f
    jr   Z, .jr_01_4b55                                ;; 01:4b51 $28 $02
    ld   B, $30                                        ;; 01:4b53 $06 $30
.jr_01_4b55:
    ld   HL, wC4D2                                     ;; 01:4b55 $21 $d2 $c4
    dec  [HL]                                          ;; 01:4b58 $35
    ret  NZ                                            ;; 01:4b59 $c0
    push DE                                            ;; 01:4b5a $d5
    push BC                                            ;; 01:4b5b $c5
    ld   C, $04                                        ;; 01:4b5c $0e $04
    call call_00_29ba                                  ;; 01:4b5e $cd $ba $29
    ld   A, $01                                        ;; 01:4b61 $3e $01
    ld   C, $04                                        ;; 01:4b63 $0e $04
    call setObjectDirection                            ;; 01:4b65 $cd $5d $0c
    ld   A, $c9                                        ;; 01:4b68 $3e $c9
    ld   C, $04                                        ;; 01:4b6a $0e $04
    call call_00_0c86                                  ;; 01:4b6c $cd $86 $0c
    pop  BC                                            ;; 01:4b6f $c1
    pop  DE                                            ;; 01:4b70 $d1
    ret                                                ;; 01:4b71 $c9
.jr_01_4b72:
    push DE                                            ;; 01:4b72 $d5
    push BC                                            ;; 01:4b73 $c5
    ld   A, $01                                        ;; 01:4b74 $3e $01
    ld   C, $04                                        ;; 01:4b76 $0e $04
    call setObjectDirection                            ;; 01:4b78 $cd $5d $0c
    ld   C, $04                                        ;; 01:4b7b $0e $04
    call getObjectDirection                            ;; 01:4b7d $cd $99 $0c
    call call_00_29e4                                  ;; 01:4b80 $cd $e4 $29
    ld   C, $04                                        ;; 01:4b83 $0e $04
    call call_00_0ca6                                  ;; 01:4b85 $cd $a6 $0c
    ld   C, $04                                        ;; 01:4b88 $0e $04
    call call_00_29ba                                  ;; 01:4b8a $cd $ba $29
    pop  BC                                            ;; 01:4b8d $c1
    pop  DE                                            ;; 01:4b8e $d1
    ld   HL, wC4D2                                     ;; 01:4b8f $21 $d2 $c4
    dec  [HL]                                          ;; 01:4b92 $35
    ret                                                ;; 01:4b93 $c9

call_01_4b94:
    push DE                                            ;; 01:4b94 $d5
    call call_00_27ce                                  ;; 01:4b95 $cd $ce $27
    pop  DE                                            ;; 01:4b98 $d1
    ld   A, D                                          ;; 01:4b99 $7a
    and  A, $0f                                        ;; 01:4b9a $e6 $0f
    or   A, $90                                        ;; 01:4b9c $f6 $90
    ld   C, A                                          ;; 01:4b9e $4f
    ld   B, $01                                        ;; 01:4b9f $06 $01
    ld   A, [wC0A1]                                    ;; 01:4ba1 $fa $a1 $c0
    bit  3, A                                          ;; 01:4ba4 $cb $5f
    jr   NZ, .jr_01_4bb5                               ;; 01:4ba6 $20 $0d
    push DE                                            ;; 01:4ba8 $d5
    push BC                                            ;; 01:4ba9 $c5
    ld   C, $04                                        ;; 01:4baa $0e $04
    call call_00_0cd3                                  ;; 01:4bac $cd $d3 $0c
    pop  BC                                            ;; 01:4baf $c1
    pop  DE                                            ;; 01:4bb0 $d1
    cp   A, $00                                        ;; 01:4bb1 $fe $00
    jr   NZ, .jr_01_4bc4                               ;; 01:4bb3 $20 $0f
.jr_01_4bb5:
    push DE                                            ;; 01:4bb5 $d5
    push BC                                            ;; 01:4bb6 $c5
    ld   C, $04                                        ;; 01:4bb7 $0e $04
    call call_00_0c0c                                  ;; 01:4bb9 $cd $0c $0c
    pop  BC                                            ;; 01:4bbc $c1
    pop  DE                                            ;; 01:4bbd $d1
    jr   Z, jr_01_4bc7                                 ;; 01:4bbe $28 $07
    ld   B, $11                                        ;; 01:4bc0 $06 $11
    jr   jr_01_4bc7                                    ;; 01:4bc2 $18 $03
.jr_01_4bc4:
    and  A, $0f                                        ;; 01:4bc4 $e6 $0f
    ld   D, A                                          ;; 01:4bc6 $57

jr_01_4bc7:
    bit  7, E                                          ;; 01:4bc7 $cb $7b
    jp   NZ, call_01_51d5                              ;; 01:4bc9 $c2 $d5 $51
    bit  6, E                                          ;; 01:4bcc $cb $73
    jp   NZ, jp_01_51db                                ;; 01:4bce $c2 $db $51
    jp   jp_01_4a38                                    ;; 01:4bd1 $c3 $38 $4a

call_01_4bd4:
    push DE                                            ;; 01:4bd4 $d5
    call call_00_27ce                                  ;; 01:4bd5 $cd $ce $27
    pop  DE                                            ;; 01:4bd8 $d1
    ld   A, D                                          ;; 01:4bd9 $7a
    and  A, $0f                                        ;; 01:4bda $e6 $0f
    or   A, $90                                        ;; 01:4bdc $f6 $90
    ld   C, A                                          ;; 01:4bde $4f
    ld   B, $21                                        ;; 01:4bdf $06 $21
    ld   A, [wC0A1]                                    ;; 01:4be1 $fa $a1 $c0
    bit  3, A                                          ;; 01:4be4 $cb $5f
    jr   NZ, .jr_01_4bf5                               ;; 01:4be6 $20 $0d
    push DE                                            ;; 01:4be8 $d5
    push BC                                            ;; 01:4be9 $c5
    ld   C, $04                                        ;; 01:4bea $0e $04
    call call_00_0cd3                                  ;; 01:4bec $cd $d3 $0c
    pop  BC                                            ;; 01:4bef $c1
    pop  DE                                            ;; 01:4bf0 $d1
    cp   A, $00                                        ;; 01:4bf1 $fe $00
    jr   NZ, .jr_01_4c04                               ;; 01:4bf3 $20 $0f
.jr_01_4bf5:
    push DE                                            ;; 01:4bf5 $d5
    push BC                                            ;; 01:4bf6 $c5
    ld   C, $04                                        ;; 01:4bf7 $0e $04
    call call_00_0c0c                                  ;; 01:4bf9 $cd $0c $0c
    pop  BC                                            ;; 01:4bfc $c1
    pop  DE                                            ;; 01:4bfd $d1
    jr   Z, jr_01_4bc7                                 ;; 01:4bfe $28 $c7
    ld   B, $31                                        ;; 01:4c00 $06 $31
    jr   jr_01_4bc7                                    ;; 01:4c02 $18 $c3
.jr_01_4c04:
    and  A, $0f                                        ;; 01:4c04 $e6 $0f
    ld   D, A                                          ;; 01:4c06 $57
    jr   jr_01_4bc7                                    ;; 01:4c07 $18 $be

call_01_4c09:
    push DE                                            ;; 01:4c09 $d5
    call call_00_27ce                                  ;; 01:4c0a $cd $ce $27
    pop  DE                                            ;; 01:4c0d $d1
    ld   A, D                                          ;; 01:4c0e $7a
    and  A, $0f                                        ;; 01:4c0f $e6 $0f
    or   A, $90                                        ;; 01:4c11 $f6 $90
    ld   C, A                                          ;; 01:4c13 $4f
    ld   B, $41                                        ;; 01:4c14 $06 $41
    ld   A, [wC0A1]                                    ;; 01:4c16 $fa $a1 $c0
    bit  3, A                                          ;; 01:4c19 $cb $5f
    jr   NZ, .jr_01_4c2a                               ;; 01:4c1b $20 $0d
    push DE                                            ;; 01:4c1d $d5
    push BC                                            ;; 01:4c1e $c5
    ld   C, $04                                        ;; 01:4c1f $0e $04
    call call_00_0cd3                                  ;; 01:4c21 $cd $d3 $0c
    pop  BC                                            ;; 01:4c24 $c1
    pop  DE                                            ;; 01:4c25 $d1
    cp   A, $00                                        ;; 01:4c26 $fe $00
    jr   NZ, .jr_01_4c39                               ;; 01:4c28 $20 $0f
.jr_01_4c2a:
    push DE                                            ;; 01:4c2a $d5
    push BC                                            ;; 01:4c2b $c5
    ld   C, $04                                        ;; 01:4c2c $0e $04
    call call_00_0c0c                                  ;; 01:4c2e $cd $0c $0c
    pop  BC                                            ;; 01:4c31 $c1
    pop  DE                                            ;; 01:4c32 $d1
    jr   Z, jr_01_4bc7                                 ;; 01:4c33 $28 $92
    ld   B, $51                                        ;; 01:4c35 $06 $51
    jr   jr_01_4bc7                                    ;; 01:4c37 $18 $8e
.jr_01_4c39:
    and  A, $0f                                        ;; 01:4c39 $e6 $0f
    ld   D, A                                          ;; 01:4c3b $57
    jr   jr_01_4bc7                                    ;; 01:4c3c $18 $89

call_01_4c3e:
    push DE                                            ;; 01:4c3e $d5
    call call_00_27ce                                  ;; 01:4c3f $cd $ce $27
    pop  DE                                            ;; 01:4c42 $d1
    ld   A, [wC0A0]                                    ;; 01:4c43 $fa $a0 $c0
    cp   A, $06                                        ;; 01:4c46 $fe $06
    ret  NZ                                            ;; 01:4c48 $c0
    call call_00_2ed3                                  ;; 01:4c49 $cd $d3 $2e
    ret  NZ                                            ;; 01:4c4c $c0
    ld   A, $00                                        ;; 01:4c4d $3e $00
    ld   [wC0A0], A                                    ;; 01:4c4f $ea $a0 $c0
    call call_00_02ab                                  ;; 01:4c52 $cd $ab $02
    and  A, $0f                                        ;; 01:4c55 $e6 $0f
    ld   B, $00                                        ;; 01:4c57 $06 $00
    call call_01_48be                                  ;; 01:4c59 $cd $be $48
    ret                                                ;; 01:4c5c $c9

call_01_4c5d:
    call call_00_27ce                                  ;; 01:4c5d $cd $ce $27
    ld   A, [wC0A0]                                    ;; 01:4c60 $fa $a0 $c0
    cp   A, $04                                        ;; 01:4c63 $fe $04
    ret  NZ                                            ;; 01:4c65 $c0
    call call_00_2ed3                                  ;; 01:4c66 $cd $d3 $2e
    jr   Z, .jr_01_4cb1                                ;; 01:4c69 $28 $46
    call call_01_4d35                                  ;; 01:4c6b $cd $35 $4d
    call call_00_0299                                  ;; 01:4c6e $cd $99 $02
    ld   D, A                                          ;; 01:4c71 $57
    push DE                                            ;; 01:4c72 $d5
    call call_00_0293                                  ;; 01:4c73 $cd $93 $02
    pop  DE                                            ;; 01:4c76 $d1
    add  A, $0a                                        ;; 01:4c77 $c6 $0a
    ld   E, A                                          ;; 01:4c79 $5f
    push DE                                            ;; 01:4c7a $d5
    ld   A, [wC4D1]                                    ;; 01:4c7b $fa $d1 $c4
    ld   H, A                                          ;; 01:4c7e $67
    ld   A, [wC4D0]                                    ;; 01:4c7f $fa $d0 $c4
    ld   L, A                                          ;; 01:4c82 $6f
    ld   A, $0a                                        ;; 01:4c83 $3e $0a
    add  A, L                                          ;; 01:4c85 $85
    ld   L, A                                          ;; 01:4c86 $6f
    push HL                                            ;; 01:4c87 $e5
    call call_00_02ab                                  ;; 01:4c88 $cd $ab $02
    pop  HL                                            ;; 01:4c8b $e1
    pop  DE                                            ;; 01:4c8c $d1
    bit  0, A                                          ;; 01:4c8d $cb $47
    jr   NZ, .jr_01_4c9f                               ;; 01:4c8f $20 $0e
    bit  1, A                                          ;; 01:4c91 $cb $4f
    jr   NZ, .jr_01_4ca5                               ;; 01:4c93 $20 $10
    bit  2, A                                          ;; 01:4c95 $cb $57
    jr   NZ, .jr_01_4cab                               ;; 01:4c97 $20 $12
    ld   A, D                                          ;; 01:4c99 $7a
    inc  A                                             ;; 01:4c9a $3c
    cp   A, H                                          ;; 01:4c9b $bc
    jr   NC, .jr_01_4cf3                               ;; 01:4c9c $30 $55
    ret                                                ;; 01:4c9e $c9
.jr_01_4c9f:
    ld   A, E                                          ;; 01:4c9f $7b
    inc  A                                             ;; 01:4ca0 $3c
    cp   A, L                                          ;; 01:4ca1 $bd
    jr   NC, .jr_01_4cf3                               ;; 01:4ca2 $30 $4f
    ret                                                ;; 01:4ca4 $c9
.jr_01_4ca5:
    ld   A, L                                          ;; 01:4ca5 $7d
    inc  A                                             ;; 01:4ca6 $3c
    cp   A, E                                          ;; 01:4ca7 $bb
    jr   NC, .jr_01_4cf3                               ;; 01:4ca8 $30 $49
    ret                                                ;; 01:4caa $c9
.jr_01_4cab:
    ld   A, H                                          ;; 01:4cab $7c
    inc  A                                             ;; 01:4cac $3c
    cp   A, D                                          ;; 01:4cad $ba
    jr   NC, .jr_01_4cf3                               ;; 01:4cae $30 $43
    ret                                                ;; 01:4cb0 $c9
.jr_01_4cb1:
    call call_00_0299                                  ;; 01:4cb1 $cd $99 $02
    ld   D, A                                          ;; 01:4cb4 $57
    push DE                                            ;; 01:4cb5 $d5
    call call_00_0293                                  ;; 01:4cb6 $cd $93 $02
    pop  DE                                            ;; 01:4cb9 $d1
    ld   E, A                                          ;; 01:4cba $5f
    ld   A, [wC4D1]                                    ;; 01:4cbb $fa $d1 $c4
    ld   H, A                                          ;; 01:4cbe $67
    ld   A, [wC4D0]                                    ;; 01:4cbf $fa $d0 $c4
    ld   L, A                                          ;; 01:4cc2 $6f
    ld   A, H                                          ;; 01:4cc3 $7c
    sub  A, D                                          ;; 01:4cc4 $92
    ld   D, A                                          ;; 01:4cc5 $57
    ld   A, L                                          ;; 01:4cc6 $7d
    sub  A, E                                          ;; 01:4cc7 $93
    ld   E, A                                          ;; 01:4cc8 $5f
    push DE                                            ;; 01:4cc9 $d5
    call call_00_02ab                                  ;; 01:4cca $cd $ab $02
    and  A, $0f                                        ;; 01:4ccd $e6 $0f
    pop  DE                                            ;; 01:4ccf $d1
    ld   C, $04                                        ;; 01:4cd0 $0e $04
    ld   B, $00                                        ;; 01:4cd2 $06 $00
    call call_00_08d4                                  ;; 01:4cd4 $cd $d4 $08
    ld   A, [wC4D1]                                    ;; 01:4cd7 $fa $d1 $c4
    ld   H, A                                          ;; 01:4cda $67
    ld   A, [wC4D0]                                    ;; 01:4cdb $fa $d0 $c4
    ld   L, A                                          ;; 01:4cde $6f
    ld   A, H                                          ;; 01:4cdf $7c
    or   A, L                                          ;; 01:4ce0 $b5
    and  A, $07                                        ;; 01:4ce1 $e6 $07
    jr   NZ, .jr_01_4cf3                               ;; 01:4ce3 $20 $0e
    call call_00_2ef7                                  ;; 01:4ce5 $cd $f7 $2e
    ld   A, $00                                        ;; 01:4ce8 $3e $00
    ld   [wC0A0], A                                    ;; 01:4cea $ea $a0 $c0
    ld   A, $c9                                        ;; 01:4ced $3e $c9
    call call_00_02bd                                  ;; 01:4cef $cd $bd $02
    ret                                                ;; 01:4cf2 $c9
.jr_01_4cf3:
    call call_00_2ef7                                  ;; 01:4cf3 $cd $f7 $2e
    ld   A, $00                                        ;; 01:4cf6 $3e $00
    ld   [wC0A0], A                                    ;; 01:4cf8 $ea $a0 $c0
    ld   A, $c9                                        ;; 01:4cfb $3e $c9
    call call_00_02bd                                  ;; 01:4cfd $cd $bd $02
    call call_00_02ab                                  ;; 01:4d00 $cd $ab $02
    or   A, $90                                        ;; 01:4d03 $f6 $90
    ld   B, $00                                        ;; 01:4d05 $06 $00
    call call_01_48be                                  ;; 01:4d07 $cd $be $48
    ret                                                ;; 01:4d0a $c9

call_01_4d0b:
    call call_00_0262                                  ;; 01:4d0b $cd $62 $02
    ld   A, $40                                        ;; 01:4d0e $3e $40
    call call_00_02bd                                  ;; 01:4d10 $cd $bd $02
    call call_00_0299                                  ;; 01:4d13 $cd $99 $02
    ld   D, A                                          ;; 01:4d16 $57
    push DE                                            ;; 01:4d17 $d5
    call call_00_0293                                  ;; 01:4d18 $cd $93 $02
    pop  DE                                            ;; 01:4d1b $d1
    ld   E, A                                          ;; 01:4d1c $5f
    ld   A, D                                          ;; 01:4d1d $7a
    ld   [wC4D1], A                                    ;; 01:4d1e $ea $d1 $c4
    ld   A, E                                          ;; 01:4d21 $7b
    ld   [wC4D0], A                                    ;; 01:4d22 $ea $d0 $c4
    ld   A, $03                                        ;; 01:4d25 $3e $03
    ld   [wC0A0], A                                    ;; 01:4d27 $ea $a0 $c0
    call call_00_02ab                                  ;; 01:4d2a $cd $ab $02
    and  A, $0f                                        ;; 01:4d2d $e6 $0f
    ld   B, $60                                        ;; 01:4d2f $06 $60
    call call_01_48be                                  ;; 01:4d31 $cd $be $48
    ret                                                ;; 01:4d34 $c9

call_01_4d35:
    call call_00_0299                                  ;; 01:4d35 $cd $99 $02
    ld   D, A                                          ;; 01:4d38 $57
    push DE                                            ;; 01:4d39 $d5
    call call_00_0293                                  ;; 01:4d3a $cd $93 $02
    pop  DE                                            ;; 01:4d3d $d1
    ld   E, A                                          ;; 01:4d3e $5f
    push DE                                            ;; 01:4d3f $d5
    call call_00_2f14                                  ;; 01:4d40 $cd $14 $2f
    pop  DE                                            ;; 01:4d43 $d1
    sub  A, D                                          ;; 01:4d44 $92
    ld   D, A                                          ;; 01:4d45 $57
    push DE                                            ;; 01:4d46 $d5
    call call_00_2f0c                                  ;; 01:4d47 $cd $0c $2f
    pop  DE                                            ;; 01:4d4a $d1
    sub  A, E                                          ;; 01:4d4b $93
    ld   E, A                                          ;; 01:4d4c $5f
    push DE                                            ;; 01:4d4d $d5
    call call_00_2f2c                                  ;; 01:4d4e $cd $2c $2f
    ld   C, A                                          ;; 01:4d51 $4f
    pop  DE                                            ;; 01:4d52 $d1
    bit  0, A                                          ;; 01:4d53 $cb $47
    jr   NZ, .jr_01_4d67                               ;; 01:4d55 $20 $10
    bit  1, A                                          ;; 01:4d57 $cb $4f
    jr   NZ, .jr_01_4d6f                               ;; 01:4d59 $20 $14
    bit  2, A                                          ;; 01:4d5b $cb $57
    jr   NZ, .jr_01_4d77                               ;; 01:4d5d $20 $18
    ld   A, $f0                                        ;; 01:4d5f $3e $f0
    add  A, D                                          ;; 01:4d61 $82
    ld   D, A                                          ;; 01:4d62 $57
    ld   E, $00                                        ;; 01:4d63 $1e $00
    jr   .jr_01_4d7d                                   ;; 01:4d65 $18 $16
.jr_01_4d67:
    ld   A, $f0                                        ;; 01:4d67 $3e $f0
    add  A, E                                          ;; 01:4d69 $83
    ld   E, A                                          ;; 01:4d6a $5f
    ld   D, $00                                        ;; 01:4d6b $16 $00
    jr   .jr_01_4d7d                                   ;; 01:4d6d $18 $0e
.jr_01_4d6f:
    ld   A, $10                                        ;; 01:4d6f $3e $10
    add  A, E                                          ;; 01:4d71 $83
    ld   E, A                                          ;; 01:4d72 $5f
    ld   D, $00                                        ;; 01:4d73 $16 $00
    jr   .jr_01_4d7d                                   ;; 01:4d75 $18 $06
.jr_01_4d77:
    ld   A, $10                                        ;; 01:4d77 $3e $10
    add  A, D                                          ;; 01:4d79 $82
    ld   D, A                                          ;; 01:4d7a $57
    ld   E, $00                                        ;; 01:4d7b $1e $00
.jr_01_4d7d:
    ld   B, $00                                        ;; 01:4d7d $06 $00
    ld   A, C                                          ;; 01:4d7f $79
    and  A, $0f                                        ;; 01:4d80 $e6 $0f
    push AF                                            ;; 01:4d82 $f5
    ld   C, $04                                        ;; 01:4d83 $0e $04
    call call_00_08d4                                  ;; 01:4d85 $cd $d4 $08
    pop  AF                                            ;; 01:4d88 $f1
    ld   B, $60                                        ;; 01:4d89 $06 $60
    call call_01_48be                                  ;; 01:4d8b $cd $be $48
    ret                                                ;; 01:4d8e $c9

call_01_4d8f:
    call call_00_27ce                                  ;; 01:4d8f $cd $ce $27
    ld   A, [wC0A0]                                    ;; 01:4d92 $fa $a0 $c0
    cp   A, $03                                        ;; 01:4d95 $fe $03
    ret  NZ                                            ;; 01:4d97 $c0
    call call_00_2ed3                                  ;; 01:4d98 $cd $d3 $2e
    jr   Z, .jr_01_4da1                                ;; 01:4d9b $28 $04
    call call_01_4d35                                  ;; 01:4d9d $cd $35 $4d
    ret                                                ;; 01:4da0 $c9
.jr_01_4da1:
    call call_00_02ab                                  ;; 01:4da1 $cd $ab $02
    call call_00_29e4                                  ;; 01:4da4 $cd $e4 $29
    push AF                                            ;; 01:4da7 $f5
    call call_00_02b1                                  ;; 01:4da8 $cd $b1 $02
    pop  AF                                            ;; 01:4dab $f1
    set  4, A                                          ;; 01:4dac $cb $e7
    ld   D, A                                          ;; 01:4dae $57
    ld   E, A                                          ;; 01:4daf $5f
    ld   A, [wC4D1]                                    ;; 01:4db0 $fa $d1 $c4
    ld   H, A                                          ;; 01:4db3 $67
    ld   A, [wC4D0]                                    ;; 01:4db4 $fa $d0 $c4
    ld   L, A                                          ;; 01:4db7 $6f
    push HL                                            ;; 01:4db8 $e5
    call call_00_2eeb                                  ;; 01:4db9 $cd $eb $2e
    pop  HL                                            ;; 01:4dbc $e1
    ld   A, H                                          ;; 01:4dbd $7c
    ld   [wC4D1], A                                    ;; 01:4dbe $ea $d1 $c4
    ld   A, L                                          ;; 01:4dc1 $7d
    ld   [wC4D0], A                                    ;; 01:4dc2 $ea $d0 $c4
    ld   A, $04                                        ;; 01:4dc5 $3e $04
    ld   [wC0A0], A                                    ;; 01:4dc7 $ea $a0 $c0
    ret                                                ;; 01:4dca $c9

call_01_4dcb:
    push DE                                            ;; 01:4dcb $d5
    call call_00_27ce                                  ;; 01:4dcc $cd $ce $27
    pop  DE                                            ;; 01:4dcf $d1
    ld   A, [wC0A0]                                    ;; 01:4dd0 $fa $a0 $c0
    cp   A, $05                                        ;; 01:4dd3 $fe $05
    ret  NZ                                            ;; 01:4dd5 $c0
    bit  4, D                                          ;; 01:4dd6 $cb $62
    jp   Z, .jp_01_4e8d                                ;; 01:4dd8 $ca $8d $4e
    push DE                                            ;; 01:4ddb $d5
    ld   A, [wCF62]                                    ;; 01:4ddc $fa $62 $cf
    call call_00_300a                                  ;; 01:4ddf $cd $0a $30
    pop  DE                                            ;; 01:4de2 $d1
    jp   Z, .jp_01_4e8d                                ;; 01:4de3 $ca $8d $4e
    ld   A, [wC4D2]                                    ;; 01:4de6 $fa $d2 $c4
    cp   A, $00                                        ;; 01:4de9 $fe $00
    call NZ, call_01_4b38                              ;; 01:4deb $c4 $38 $4b
    ld   A, D                                          ;; 01:4dee $7a
    and  A, $0f                                        ;; 01:4def $e6 $0f
    ld   A, [wC0A1]                                    ;; 01:4df1 $fa $a1 $c0
    bit  3, A                                          ;; 01:4df4 $cb $5f
    jr   NZ, .jr_01_4e06                               ;; 01:4df6 $20 $0e
    push DE                                            ;; 01:4df8 $d5
    ld   C, $04                                        ;; 01:4df9 $0e $04
    call call_00_0cd3                                  ;; 01:4dfb $cd $d3 $0c
    pop  DE                                            ;; 01:4dfe $d1
    cp   A, $00                                        ;; 01:4dff $fe $00
    jr   Z, .jr_01_4e06                                ;; 01:4e01 $28 $03
    and  A, $0f                                        ;; 01:4e03 $e6 $0f
    ld   D, A                                          ;; 01:4e05 $57
.jr_01_4e06:
    push DE                                            ;; 01:4e06 $d5
    ld   C, $04                                        ;; 01:4e07 $0e $04
    call getObjectDirection                            ;; 01:4e09 $cd $99 $0c
    pop  DE                                            ;; 01:4e0c $d1
    push DE                                            ;; 01:4e0d $d5
    bit  7, A                                          ;; 01:4e0e $cb $7f
    jr   NZ, .jr_01_4e7a                               ;; 01:4e10 $20 $68
    ld   A, D                                          ;; 01:4e12 $7a
    and  A, $0f                                        ;; 01:4e13 $e6 $0f
    jr   Z, .jr_01_4e7a                                ;; 01:4e15 $28 $63
    pop  DE                                            ;; 01:4e17 $d1
    push DE                                            ;; 01:4e18 $d5
    push AF                                            ;; 01:4e19 $f5
    bit  0, D                                          ;; 01:4e1a $cb $42
    jr   NZ, .jr_01_4e2c                               ;; 01:4e1c $20 $0e
    bit  1, D                                          ;; 01:4e1e $cb $4a
    jr   NZ, .jr_01_4e3b                               ;; 01:4e20 $20 $19
    bit  2, D                                          ;; 01:4e22 $cb $52
    jr   NZ, .jr_01_4e4a                               ;; 01:4e24 $20 $24
    bit  3, D                                          ;; 01:4e26 $cb $5a
    jr   NZ, .jr_01_4e59                               ;; 01:4e28 $20 $2f
    jr   .jr_01_4e68                                   ;; 01:4e2a $18 $3c
.jr_01_4e2c:
    ld   C, $04                                        ;; 01:4e2c $0e $04
    call call_00_036f                                  ;; 01:4e2e $cd $6f $03
    ld   A, B                                          ;; 01:4e31 $78
    jr   NZ, .jr_01_4e68                               ;; 01:4e32 $20 $34
    bit  0, A                                          ;; 01:4e34 $cb $47
    jr   Z, .jr_01_4e68                                ;; 01:4e36 $28 $30
    pop  AF                                            ;; 01:4e38 $f1
    jr   .jr_01_4e7a                                   ;; 01:4e39 $18 $3f
.jr_01_4e3b:
    ld   C, $04                                        ;; 01:4e3b $0e $04
    call call_00_036f                                  ;; 01:4e3d $cd $6f $03
    ld   A, B                                          ;; 01:4e40 $78
    jr   NZ, .jr_01_4e68                               ;; 01:4e41 $20 $25
    bit  1, A                                          ;; 01:4e43 $cb $4f
    jr   Z, .jr_01_4e68                                ;; 01:4e45 $28 $21
    pop  AF                                            ;; 01:4e47 $f1
    jr   .jr_01_4e7a                                   ;; 01:4e48 $18 $30
.jr_01_4e4a:
    ld   C, $04                                        ;; 01:4e4a $0e $04
    call call_00_036f                                  ;; 01:4e4c $cd $6f $03
    ld   A, B                                          ;; 01:4e4f $78
    jr   NZ, .jr_01_4e68                               ;; 01:4e50 $20 $16
    bit  2, A                                          ;; 01:4e52 $cb $57
    jr   Z, .jr_01_4e68                                ;; 01:4e54 $28 $12
    pop  AF                                            ;; 01:4e56 $f1
    jr   .jr_01_4e7a                                   ;; 01:4e57 $18 $21
.jr_01_4e59:
    ld   C, $04                                        ;; 01:4e59 $0e $04
    call call_00_036f                                  ;; 01:4e5b $cd $6f $03
    ld   A, B                                          ;; 01:4e5e $78
    jr   NZ, .jr_01_4e68                               ;; 01:4e5f $20 $07
    bit  3, A                                          ;; 01:4e61 $cb $5f
    jr   Z, .jr_01_4e68                                ;; 01:4e63 $28 $03
    pop  AF                                            ;; 01:4e65 $f1
    jr   .jr_01_4e7a                                   ;; 01:4e66 $18 $12
.jr_01_4e68:
    ld   B, $00                                        ;; 01:4e68 $06 $00
    ld   A, [wC4D4]                                    ;; 01:4e6a $fa $d4 $c4
    bit  2, A                                          ;; 01:4e6d $cb $57
    jr   NZ, .jr_01_4e73                               ;; 01:4e6f $20 $02
    ld   B, $90                                        ;; 01:4e71 $06 $90
.jr_01_4e73:
    pop  AF                                            ;; 01:4e73 $f1
    or   A, B                                          ;; 01:4e74 $b0
    ld   C, $04                                        ;; 01:4e75 $0e $04
    call call_00_0ca6                                  ;; 01:4e77 $cd $a6 $0c
.jr_01_4e7a:
    pop  DE                                            ;; 01:4e7a $d1
    call call_00_2f2c                                  ;; 01:4e7b $cd $2c $2f
    and  A, $0f                                        ;; 01:4e7e $e6 $0f
    push AF                                            ;; 01:4e80 $f5
    call call_00_2f3e                                  ;; 01:4e81 $cd $3e $2f
    ld   B, A                                          ;; 01:4e84 $47
    pop  AF                                            ;; 01:4e85 $f1
    call call_01_48be                                  ;; 01:4e86 $cd $be $48
    call call_00_2ed3                                  ;; 01:4e89 $cd $d3 $2e
    ret                                                ;; 01:4e8c $c9
.jp_01_4e8d:
    call call_00_02ab                                  ;; 01:4e8d $cd $ab $02
    and  A, $0f                                        ;; 01:4e90 $e6 $0f
    ld   B, A                                          ;; 01:4e92 $47
    ld   C, $04                                        ;; 01:4e93 $0e $04
    ld   A, B                                          ;; 01:4e95 $78
    ld   B, $00                                        ;; 01:4e96 $06 $00
    call call_01_48be                                  ;; 01:4e98 $cd $be $48
    ld   A, $00                                        ;; 01:4e9b $3e $00
    ld   [wC0A0], A                                    ;; 01:4e9d $ea $a0 $c0
    call call_00_2ef7                                  ;; 01:4ea0 $cd $f7 $2e
    ld   A, $22                                        ;; 01:4ea3 $3e $22
    call playSFX                                       ;; 01:4ea5 $cd $7d $29
    ret                                                ;; 01:4ea8 $c9

call_01_4ea9:
    push DE                                            ;; 01:4ea9 $d5
    call call_00_27ce                                  ;; 01:4eaa $cd $ce $27
    pop  DE                                            ;; 01:4ead $d1
    ld   A, [wC0A0]                                    ;; 01:4eae $fa $a0 $c0
    cp   A, $02                                        ;; 01:4eb1 $fe $02
    ret  NZ                                            ;; 01:4eb3 $c0
    push DE                                            ;; 01:4eb4 $d5
    call call_00_2f3e                                  ;; 01:4eb5 $cd $3e $2f
    cp   A, $ff                                        ;; 01:4eb8 $fe $ff
    jr   Z, .jr_01_4ec9                                ;; 01:4eba $28 $0d
    ld   B, A                                          ;; 01:4ebc $47
    ld   C, $04                                        ;; 01:4ebd $0e $04
    push BC                                            ;; 01:4ebf $c5
    call call_00_02ab                                  ;; 01:4ec0 $cd $ab $02
    pop  BC                                            ;; 01:4ec3 $c1
    and  A, $0f                                        ;; 01:4ec4 $e6 $0f
    call call_01_48be                                  ;; 01:4ec6 $cd $be $48
.jr_01_4ec9:
    pop  DE                                            ;; 01:4ec9 $d1
    call call_00_2ed3                                  ;; 01:4eca $cd $d3 $2e
    ret  NZ                                            ;; 01:4ecd $c0
    call call_00_02ab                                  ;; 01:4ece $cd $ab $02
    and  A, $0f                                        ;; 01:4ed1 $e6 $0f
    ld   B, A                                          ;; 01:4ed3 $47
    ld   C, $04                                        ;; 01:4ed4 $0e $04
    ld   A, B                                          ;; 01:4ed6 $78
    ld   B, $00                                        ;; 01:4ed7 $06 $00
    call call_01_48be                                  ;; 01:4ed9 $cd $be $48
    ld   A, $00                                        ;; 01:4edc $3e $00
    ld   [wC0A0], A                                    ;; 01:4ede $ea $a0 $c0
    ret                                                ;; 01:4ee1 $c9

call_01_4ee2:
    call call_01_4f65                                  ;; 01:4ee2 $cd $65 $4f
    ld   A, $82                                        ;; 01:4ee5 $3e $82
    call call_01_48be                                  ;; 01:4ee7 $cd $be $48
    ld   D, $04                                        ;; 01:4eea $16 $04
    ld   A, $01                                        ;; 01:4eec $3e $01
    call call_01_44d8                                  ;; 01:4eee $cd $d8 $44
    cp   A, $00                                        ;; 01:4ef1 $fe $00
    ret  NZ                                            ;; 01:4ef3 $c0
    call call_01_4f48                                  ;; 01:4ef4 $cd $48 $4f
    call call_00_2460                                  ;; 01:4ef7 $cd $60 $24
    ret                                                ;; 01:4efa $c9

call_01_4efb:
    call call_01_4f65                                  ;; 01:4efb $cd $65 $4f
    ld   A, $81                                        ;; 01:4efe $3e $81
    call call_01_48be                                  ;; 01:4f00 $cd $be $48
    ld   D, $04                                        ;; 01:4f03 $16 $04
    ld   A, $02                                        ;; 01:4f05 $3e $02
    call call_01_44d8                                  ;; 01:4f07 $cd $d8 $44
    cp   A, $00                                        ;; 01:4f0a $fe $00
    ret  NZ                                            ;; 01:4f0c $c0
    call call_01_4f48                                  ;; 01:4f0d $cd $48 $4f
    call call_00_2460                                  ;; 01:4f10 $cd $60 $24
    ret                                                ;; 01:4f13 $c9

call_01_4f14:
    ld   D, $04                                        ;; 01:4f14 $16 $04
    ld   A, $04                                        ;; 01:4f16 $3e $04
    call call_01_44d8                                  ;; 01:4f18 $cd $d8 $44
    push AF                                            ;; 01:4f1b $f5
    call call_01_4f65                                  ;; 01:4f1c $cd $65 $4f
    ld   A, $88                                        ;; 01:4f1f $3e $88
    call call_01_48be                                  ;; 01:4f21 $cd $be $48
    pop  AF                                            ;; 01:4f24 $f1
    cp   A, $00                                        ;; 01:4f25 $fe $00
    ret  NZ                                            ;; 01:4f27 $c0
    call call_01_4f48                                  ;; 01:4f28 $cd $48 $4f
    call call_00_2460                                  ;; 01:4f2b $cd $60 $24
    ret                                                ;; 01:4f2e $c9

call_01_4f2f:
    call call_01_4f65                                  ;; 01:4f2f $cd $65 $4f
    ld   A, $84                                        ;; 01:4f32 $3e $84
    call call_01_48be                                  ;; 01:4f34 $cd $be $48
    ld   D, $04                                        ;; 01:4f37 $16 $04
    ld   A, $08                                        ;; 01:4f39 $3e $08
    call call_01_44d8                                  ;; 01:4f3b $cd $d8 $44
    cp   A, $00                                        ;; 01:4f3e $fe $00
    ret  NZ                                            ;; 01:4f40 $c0
    call call_01_4f48                                  ;; 01:4f41 $cd $48 $4f
    call call_00_2460                                  ;; 01:4f44 $cd $60 $24
    ret                                                ;; 01:4f47 $c9

call_01_4f48:
    ld   C, $04                                        ;; 01:4f48 $0e $04
    call call_00_29ba                                  ;; 01:4f4a $cd $ba $29
    call call_00_0299                                  ;; 01:4f4d $cd $99 $02
    ld   D, A                                          ;; 01:4f50 $57
    push DE                                            ;; 01:4f51 $d5
    call call_00_0293                                  ;; 01:4f52 $cd $93 $02
    pop  DE                                            ;; 01:4f55 $d1
    ld   E, A                                          ;; 01:4f56 $5f
    ld   C, $c9                                        ;; 01:4f57 $0e $c9
    ld   B, $04                                        ;; 01:4f59 $06 $04
    call call_00_177e                                  ;; 01:4f5b $cd $7e $17
    call call_00_02cf                                  ;; 01:4f5e $cd $cf $02
    ld   [wC0A0], A                                    ;; 01:4f61 $ea $a0 $c0
    ret                                                ;; 01:4f64 $c9

call_01_4f65:
    call call_00_02b7                                  ;; 01:4f65 $cd $b7 $02
    and  A, $f0                                        ;; 01:4f68 $e6 $f0
    cp   A, $e0                                        ;; 01:4f6a $fe $e0
    jr   Z, .jr_01_4f75                                ;; 01:4f6c $28 $07
    cp   A, $f0                                        ;; 01:4f6e $fe $f0
    jr   Z, .jr_01_4f78                                ;; 01:4f70 $28 $06
    ld   B, $00                                        ;; 01:4f72 $06 $00
    ret                                                ;; 01:4f74 $c9
.jr_01_4f75:
    ld   B, $01                                        ;; 01:4f75 $06 $01
    ret                                                ;; 01:4f77 $c9
.jr_01_4f78:
    ld   B, $21                                        ;; 01:4f78 $06 $21
    ret                                                ;; 01:4f7a $c9

call_01_4f7b:
    ld   A, B                                          ;; 01:4f7b $78
    and  A, $f0                                        ;; 01:4f7c $e6 $f0
    cp   A, $90                                        ;; 01:4f7e $fe $90
    jr   Z, .jr_01_4f9d                                ;; 01:4f80 $28 $1b
    cp   A, $20                                        ;; 01:4f82 $fe $20
    jr   Z, .jr_01_4f9d                                ;; 01:4f84 $28 $17
    cp   A, $a0                                        ;; 01:4f86 $fe $a0
    jp   Z, .jp_01_5084                                ;; 01:4f88 $ca $84 $50
    cp   A, $b0                                        ;; 01:4f8b $fe $b0
    jp   Z, .jp_01_5084                                ;; 01:4f8d $ca $84 $50
    cp   A, $60                                        ;; 01:4f90 $fe $60
    jr   Z, .jr_01_4f9d                                ;; 01:4f92 $28 $09
    cp   A, $70                                        ;; 01:4f94 $fe $70
    jr   Z, .jr_01_4f9d                                ;; 01:4f96 $28 $05
    cp   A, $80                                        ;; 01:4f98 $fe $80
    jr   Z, .jr_01_5010                                ;; 01:4f9a $28 $74
    ret                                                ;; 01:4f9c $c9
.jr_01_4f9d:
    push BC                                            ;; 01:4f9d $c5
    ld   A, $c1                                        ;; 01:4f9e $3e $c1
    ld   C, $04                                        ;; 01:4fa0 $0e $04
    call call_00_0c86                                  ;; 01:4fa2 $cd $86 $0c
    ld   A, $04                                        ;; 01:4fa5 $3e $04
    ld   C, $04                                        ;; 01:4fa7 $0e $04
    call setObjectDirection                            ;; 01:4fa9 $cd $5d $0c
    ld   A, $3c                                        ;; 01:4fac $3e $3c
    ld   [wC4D2], A                                    ;; 01:4fae $ea $d2 $c4
    call call_00_02ab                                  ;; 01:4fb1 $cd $ab $02
    pop  BC                                            ;; 01:4fb4 $c1
    push AF                                            ;; 01:4fb5 $f5
    ld   B, C                                          ;; 01:4fb6 $41
    ld   C, $04                                        ;; 01:4fb7 $0e $04
    call call_00_039a                                  ;; 01:4fb9 $cd $9a $03
    call call_00_29e4                                  ;; 01:4fbc $cd $e4 $29
    call call_00_02b1                                  ;; 01:4fbf $cd $b1 $02
    ld   C, $04                                        ;; 01:4fc2 $0e $04
    call call_00_29ba                                  ;; 01:4fc4 $cd $ba $29
    pop  AF                                            ;; 01:4fc7 $f1
    bit  0, A                                          ;; 01:4fc8 $cb $47
    jr   NZ, .jr_01_4fee                               ;; 01:4fca $20 $22
    bit  1, A                                          ;; 01:4fcc $cb $4f
    jr   NZ, .jr_01_4fee                               ;; 01:4fce $20 $1e
    bit  2, A                                          ;; 01:4fd0 $cb $57
    jr   NZ, .jr_01_4ffd                               ;; 01:4fd2 $20 $29
    call call_00_0299                                  ;; 01:4fd4 $cd $99 $02
    and  A, $07                                        ;; 01:4fd7 $e6 $07
    jr   Z, .jr_01_500c                                ;; 01:4fd9 $28 $31
    cpl                                                ;; 01:4fdb $2f
    inc  A                                             ;; 01:4fdc $3c
    ld   H, A                                          ;; 01:4fdd $67
    ld   L, $00                                        ;; 01:4fde $2e $00
    ret                                                ;; 01:4fe0 $c9
    db   $cd, $93, $02, $e6, $07, $28, $24, $2f        ;; 01:4fe1 ????????
    db   $3c, $6f, $26, $00, $c9                       ;; 01:4fe9 ?????
.jr_01_4fee:
    call call_00_0293                                  ;; 01:4fee $cd $93 $02
    and  A, $07                                        ;; 01:4ff1 $e6 $07
    jr   Z, .jr_01_500c                                ;; 01:4ff3 $28 $17
    cpl                                                ;; 01:4ff5 $2f
    inc  A                                             ;; 01:4ff6 $3c
    and  A, $07                                        ;; 01:4ff7 $e6 $07
    ld   L, A                                          ;; 01:4ff9 $6f
    ld   H, $00                                        ;; 01:4ffa $26 $00
    ret                                                ;; 01:4ffc $c9
.jr_01_4ffd:
    call call_00_0299                                  ;; 01:4ffd $cd $99 $02
    and  A, $07                                        ;; 01:5000 $e6 $07
    jr   Z, .jr_01_500c                                ;; 01:5002 $28 $08
    cpl                                                ;; 01:5004 $2f
    inc  A                                             ;; 01:5005 $3c
    and  A, $07                                        ;; 01:5006 $e6 $07
    ld   H, A                                          ;; 01:5008 $67
    ld   L, $00                                        ;; 01:5009 $2e $00
    ret                                                ;; 01:500b $c9
.jr_01_500c:
    ld   HL, $00                                       ;; 01:500c $21 $00 $00
    ret                                                ;; 01:500f $c9
.jr_01_5010:
    push BC                                            ;; 01:5010 $c5
    ld   C, $04                                        ;; 01:5011 $0e $04
    call call_00_29ba                                  ;; 01:5013 $cd $ba $29
    pop  BC                                            ;; 01:5016 $c1
    push BC                                            ;; 01:5017 $c5
    ld   B, C                                          ;; 01:5018 $41
    ld   C, $04                                        ;; 01:5019 $0e $04
    call call_00_039a                                  ;; 01:501b $cd $9a $03
    push AF                                            ;; 01:501e $f5
    call call_00_0299                                  ;; 01:501f $cd $99 $02
    ld   D, A                                          ;; 01:5022 $57
    push DE                                            ;; 01:5023 $d5
    call call_00_0293                                  ;; 01:5024 $cd $93 $02
    pop  DE                                            ;; 01:5027 $d1
    ld   E, A                                          ;; 01:5028 $5f
    pop  AF                                            ;; 01:5029 $f1
    pop  BC                                            ;; 01:502a $c1
    push BC                                            ;; 01:502b $c5
    bit  0, A                                          ;; 01:502c $cb $47
    jr   NZ, .jr_01_5049                               ;; 01:502e $20 $19
    bit  1, A                                          ;; 01:5030 $cb $4f
    jr   NZ, .jr_01_505a                               ;; 01:5032 $20 $26
    bit  2, A                                          ;; 01:5034 $cb $57
    jr   NZ, .jr_01_506b                               ;; 01:5036 $20 $33
    ld   A, D                                          ;; 01:5038 $7a
    add  A, $10                                        ;; 01:5039 $c6 $10
    ld   D, A                                          ;; 01:503b $57
    push DE                                            ;; 01:503c $d5
    call GetObjectX                                    ;; 01:503d $cd $2d $0c
    call call_01_5088                                  ;; 01:5040 $cd $88 $50
    pop  DE                                            ;; 01:5043 $d1
    ld   E, A                                          ;; 01:5044 $5f
    ld   A, $04                                        ;; 01:5045 $3e $04
    jr   .jr_01_507a                                   ;; 01:5047 $18 $31
.jr_01_5049:
    ld   A, E                                          ;; 01:5049 $7b
    add  A, $10                                        ;; 01:504a $c6 $10
    ld   E, A                                          ;; 01:504c $5f
    push DE                                            ;; 01:504d $d5
    call GetObjectY                                    ;; 01:504e $cd $3e $0c
    call call_01_5088                                  ;; 01:5051 $cd $88 $50
    pop  DE                                            ;; 01:5054 $d1
    ld   D, A                                          ;; 01:5055 $57
    ld   A, $02                                        ;; 01:5056 $3e $02
    jr   .jr_01_507a                                   ;; 01:5058 $18 $20
.jr_01_505a:
    ld   A, E                                          ;; 01:505a $7b
    sub  A, $10                                        ;; 01:505b $d6 $10
    ld   E, A                                          ;; 01:505d $5f
    push DE                                            ;; 01:505e $d5
    call GetObjectY                                    ;; 01:505f $cd $3e $0c
    call call_01_5088                                  ;; 01:5062 $cd $88 $50
    pop  DE                                            ;; 01:5065 $d1
    ld   D, A                                          ;; 01:5066 $57
    ld   A, $01                                        ;; 01:5067 $3e $01
    jr   .jr_01_507a                                   ;; 01:5069 $18 $0f
.jr_01_506b:
    ld   A, D                                          ;; 01:506b $7a
    sub  A, $10                                        ;; 01:506c $d6 $10
    ld   D, A                                          ;; 01:506e $57
    push DE                                            ;; 01:506f $d5
    call GetObjectX                                    ;; 01:5070 $cd $2d $0c
    call call_01_5088                                  ;; 01:5073 $cd $88 $50
    pop  DE                                            ;; 01:5076 $d1
    ld   E, A                                          ;; 01:5077 $5f
    ld   A, $08                                        ;; 01:5078 $3e $08
.jr_01_507a:
    pop  BC                                            ;; 01:507a $c1
    ld   B, $00                                        ;; 01:507b $06 $00
    call call_00_288f                                  ;; 01:507d $cd $8f $28
    ld   HL, $00                                       ;; 01:5080 $21 $00 $00
    ret                                                ;; 01:5083 $c9
.jp_01_5084:
    ld   HL, $00                                       ;; 01:5084 $21 $00 $00
    ret                                                ;; 01:5087 $c9

call_01_5088:
    and  A, $fc                                        ;; 01:5088 $e6 $fc
    bit  2, A                                          ;; 01:508a $cb $57
    ret  Z                                             ;; 01:508c $c8
    add  A, $04                                        ;; 01:508d $c6 $04
    ret                                                ;; 01:508f $c9

call_01_5090:
    push DE                                            ;; 01:5090 $d5
    ld   C, $04                                        ;; 01:5091 $0e $04
    call call_00_0ae3                                  ;; 01:5093 $cd $e3 $0a
    pop  DE                                            ;; 01:5096 $d1
    ld   HL, data_01_4752                              ;; 01:5097 $21 $52 $47
    ld   A, $01                                        ;; 01:509a $3e $01
    ld   C, $c9                                        ;; 01:509c $0e $c9
    call createObject                                  ;; 01:509e $cd $74 $0a
    ld   A, $00                                        ;; 01:50a1 $3e $00
    ld   [wC0A0], A                                    ;; 01:50a3 $ea $a0 $c0
    ld   A, $ff                                        ;; 01:50a6 $3e $ff
    ld   [wD394], A                                    ;; 01:50a8 $ea $94 $d3
    ret                                                ;; 01:50ab $c9

call_01_50ac:
    push BC                                            ;; 01:50ac $c5
    call call_00_3d12                                  ;; 01:50ad $cd $12 $3d
    ld   E, A                                          ;; 01:50b0 $5f
    ld   D, $00                                        ;; 01:50b1 $16 $00
    pop  BC                                            ;; 01:50b3 $c1
    push BC                                            ;; 01:50b4 $c5
    ld   L, B                                          ;; 01:50b5 $68
    ld   H, $00                                        ;; 01:50b6 $26 $00
    call sub_HL_DE                                     ;; 01:50b8 $cd $ab $2b
    jr   NC, .jr_01_50c0                               ;; 01:50bb $30 $03
    ld   HL, $00                                       ;; 01:50bd $21 $00 $00
.jr_01_50c0:
    inc  HL                                            ;; 01:50c0 $23
    push HL                                            ;; 01:50c1 $e5
    call getRandomByte                                 ;; 01:50c2 $cd $1e $2b
    pop  HL                                            ;; 01:50c5 $e1
    push HL                                            ;; 01:50c6 $e5
    call MultiplyHL_by_A                               ;; 01:50c7 $cd $7b $2b
    srl  H                                             ;; 01:50ca $cb $3c
    srl  H                                             ;; 01:50cc $cb $3c
    ld   L, H                                          ;; 01:50ce $6c
    ld   H, $00                                        ;; 01:50cf $26 $00
    pop  DE                                            ;; 01:50d1 $d1
    add  HL, DE                                        ;; 01:50d2 $19
    pop  BC                                            ;; 01:50d3 $c1
    ld   A, H                                          ;; 01:50d4 $7c
    or   A, L                                          ;; 01:50d5 $b5
    ret  Z                                             ;; 01:50d6 $c8
    push BC                                            ;; 01:50d7 $c5
    call call_00_3e25                                  ;; 01:50d8 $cd $25 $3e
    ld   A, $0d                                        ;; 01:50db $3e $0d
    call playSFX                                       ;; 01:50dd $cd $7d $29
    call call_00_3135                                  ;; 01:50e0 $cd $35 $31
    pop  BC                                            ;; 01:50e3 $c1
    cpl                                                ;; 01:50e4 $2f
    and  A, C                                          ;; 01:50e5 $a1
    ret  Z                                             ;; 01:50e6 $c8
    ld   C, A                                          ;; 01:50e7 $4f
    push BC                                            ;; 01:50e8 $c5
    call getRandomByte                                 ;; 01:50e9 $cd $1e $2b
    pop  BC                                            ;; 01:50ec $c1
    ld   B, A                                          ;; 01:50ed $47
    swap A                                             ;; 01:50ee $cb $37
    and  A, B                                          ;; 01:50f0 $a0
    and  A, C                                          ;; 01:50f1 $a1
    and  A, $0f                                        ;; 01:50f2 $e6 $0f
    ret  Z                                             ;; 01:50f4 $c8
    call call_00_312f                                  ;; 01:50f5 $cd $2f $31
    ret                                                ;; 01:50f8 $c9

call_01_50f9:
    ld   A, [wC4D4]                                    ;; 01:50f9 $fa $d4 $c4
    and  A, $0f                                        ;; 01:50fc $e6 $0f
    ld   [wC4D4], A                                    ;; 01:50fe $ea $d4 $c4
    ld   A, $00                                        ;; 01:5101 $3e $00
    call call_00_3e8f                                  ;; 01:5103 $cd $8f $3e
    ld   C, $04                                        ;; 01:5106 $0e $04
    call call_00_29ba                                  ;; 01:5108 $cd $ba $29
    ld   C, $04                                        ;; 01:510b $0e $04
    ld   A, $01                                        ;; 01:510d $3e $01
    call setObjectDirection                            ;; 01:510f $cd $5d $0c
    ld   C, $04                                        ;; 01:5112 $0e $04
    ld   A, $c9                                        ;; 01:5114 $3e $c9
    call call_00_0c86                                  ;; 01:5116 $cd $86 $0c
    call call_00_0299                                  ;; 01:5119 $cd $99 $02
    ld   D, A                                          ;; 01:511c $57
    push DE                                            ;; 01:511d $d5
    call call_00_0293                                  ;; 01:511e $cd $93 $02
    pop  DE                                            ;; 01:5121 $d1
    ld   E, A                                          ;; 01:5122 $5f
    push DE                                            ;; 01:5123 $d5
    call call_00_02ab                                  ;; 01:5124 $cd $ab $02
    call call_00_28f0                                  ;; 01:5127 $cd $f0 $28
    pop  DE                                            ;; 01:512a $d1
    ret  NZ                                            ;; 01:512b $c0
    and  A, $0f                                        ;; 01:512c $e6 $0f
    ld   C, $07                                        ;; 01:512e $0e $07
    ld   B, $00                                        ;; 01:5130 $06 $00
    call call_00_288f                                  ;; 01:5132 $cd $8f $28
    ret                                                ;; 01:5135 $c9

call_01_5136:
    ld   A, $0c                                        ;; 01:5136 $3e $0c
    call call_00_3e8f                                  ;; 01:5138 $cd $8f $3e
    ld   C, $04                                        ;; 01:513b $0e $04
    call call_00_29ba                                  ;; 01:513d $cd $ba $29
    ld   C, $04                                        ;; 01:5140 $0e $04
    ld   A, $02                                        ;; 01:5142 $3e $02
    call setObjectDirection                            ;; 01:5144 $cd $5d $0c
    ld   C, $04                                        ;; 01:5147 $0e $04
    ld   A, $e1                                        ;; 01:5149 $3e $e1
    call call_00_0c86                                  ;; 01:514b $cd $86 $0c
    xor  A, A                                          ;; 01:514e $af
    ld   [wC4D2], A                                    ;; 01:514f $ea $d2 $c4
    call call_00_28d5                                  ;; 01:5152 $cd $d5 $28
    ret                                                ;; 01:5155 $c9

call_01_5156:
    ld   A, $0d                                        ;; 01:5156 $3e $0d
    call call_00_3e8f                                  ;; 01:5158 $cd $8f $3e
    ld   C, $04                                        ;; 01:515b $0e $04
    call call_00_29ba                                  ;; 01:515d $cd $ba $29
    ld   C, $04                                        ;; 01:5160 $0e $04
    ld   A, $02                                        ;; 01:5162 $3e $02
    call setObjectDirection                            ;; 01:5164 $cd $5d $0c
    ld   C, $04                                        ;; 01:5167 $0e $04
    ld   A, $f1                                        ;; 01:5169 $3e $f1
    call call_00_0c86                                  ;; 01:516b $cd $86 $0c
    xor  A, A                                          ;; 01:516e $af
    ld   [wC4D2], A                                    ;; 01:516f $ea $d2 $c4
    call call_00_28d5                                  ;; 01:5172 $cd $d5 $28
    ret                                                ;; 01:5175 $c9

call_01_5176:
    ld   A, $0e                                        ;; 01:5176 $3e $0e
    call call_00_3e8f                                  ;; 01:5178 $cd $8f $3e
    ld   C, $04                                        ;; 01:517b $0e $04
    call call_00_29ba                                  ;; 01:517d $cd $ba $29
    ld   C, $04                                        ;; 01:5180 $0e $04
    ld   A, $02                                        ;; 01:5182 $3e $02
    call setObjectDirection                            ;; 01:5184 $cd $5d $0c
    ld   C, $04                                        ;; 01:5187 $0e $04
    ld   A, $f5                                        ;; 01:5189 $3e $f5
    call call_00_0c86                                  ;; 01:518b $cd $86 $0c
    xor  A, A                                          ;; 01:518e $af
    ld   [wC4D2], A                                    ;; 01:518f $ea $d2 $c4
    call call_00_28d5                                  ;; 01:5192 $cd $d5 $28
    ret                                                ;; 01:5195 $c9

call_01_5196:
    call call_00_02ab                                  ;; 01:5196 $cd $ab $02
    bit  7, A                                          ;; 01:5199 $cb $7f
    ret  Z                                             ;; 01:519b $c8
    push AF                                            ;; 01:519c $f5
    ld   C, $04                                        ;; 01:519d $0e $04
    call call_00_0c0c                                  ;; 01:519f $cd $0c $0c
    ld   B, $00                                        ;; 01:51a2 $06 $00
    jr   Z, .jr_01_51a8                                ;; 01:51a4 $28 $02
    ld   B, $10                                        ;; 01:51a6 $06 $10
.jr_01_51a8:
    pop  AF                                            ;; 01:51a8 $f1
    call call_01_48be                                  ;; 01:51a9 $cd $be $48
    ret  NZ                                            ;; 01:51ac $c0
    call call_00_02ab                                  ;; 01:51ad $cd $ab $02
    bit  5, A                                          ;; 01:51b0 $cb $6f
    ret  Z                                             ;; 01:51b2 $c8
    call call_00_29e4                                  ;; 01:51b3 $cd $e4 $29
    call call_00_02b1                                  ;; 01:51b6 $cd $b1 $02
    xor  A, A                                          ;; 01:51b9 $af
    ret                                                ;; 01:51ba $c9

call_01_51bb:
    push HL                                            ;; 01:51bb $e5
    ld   L, B                                          ;; 01:51bc $68
    ld   H, $00                                        ;; 01:51bd $26 $00
    ld   A, C                                          ;; 01:51bf $79
    or   A, $00                                        ;; 01:51c0 $f6 $00
    ld   C, $c9                                        ;; 01:51c2 $0e $c9
    call call_00_31ad                                  ;; 01:51c4 $cd $ad $31
    ld   A, [wC4D2]                                    ;; 01:51c7 $fa $d2 $c4
    cp   A, $34                                        ;; 01:51ca $fe $34
    jr   C, .jr_01_51d3                                ;; 01:51cc $38 $05
    ld   A, $34                                        ;; 01:51ce $3e $34
    ld   [wC4D2], A                                    ;; 01:51d0 $ea $d2 $c4
.jr_01_51d3:
    pop  HL                                            ;; 01:51d3 $e1
    ret                                                ;; 01:51d4 $c9

call_01_51d5:
    ld   A, $09                                        ;; 01:51d5 $3e $09
    call call_00_30b1                                  ;; 01:51d7 $cd $b1 $30
    ret                                                ;; 01:51da $c9

jp_01_51db:
    ld   A, $11                                        ;; 01:51db $3e $11
    call call_00_30b1                                  ;; 01:51dd $cd $b1 $30
    ret                                                ;; 01:51e0 $c9

call_01_51e1:
    ld   C, A                                          ;; 01:51e1 $4f
    ld   A, [wCF5F]                                    ;; 01:51e2 $fa $5f $cf
    and  A, $0f                                        ;; 01:51e5 $e6 $0f
    ld   B, A                                          ;; 01:51e7 $47
    ld   A, C                                          ;; 01:51e8 $79
    and  A, $07                                        ;; 01:51e9 $e6 $07
    ld   HL, .data_01_51f2                             ;; 01:51eb $21 $f2 $51
    call callJumptable                                 ;; 01:51ee $cd $70 $2b
    ret                                                ;; 01:51f1 $c9
;@jumptable amount=8
.data_01_51f2:
    dw   call_01_5202                                  ;; 01:51f2 ??
    dw   call_01_5214                                  ;; 01:51f4 ??
    dw   call_01_526d                                  ;; 01:51f6 ..
    dw   call_01_527b                                  ;; 01:51f8 ??
    dw   call_01_5289                                  ;; 01:51fa ..
    dw   call_01_5297                                  ;; 01:51fc ??
    dw   call_01_52a5                                  ;; 01:51fe ..
    dw   call_01_5203                                  ;; 01:5200 ??

call_01_5202:
    ret                                                ;; 01:5202 $c9

call_01_5203:
    ld   A, [wC0A1]                                    ;; 01:5203 $fa $a1 $c0
    bit  1, A                                          ;; 01:5206 $cb $4f
    ret  NZ                                            ;; 01:5208 $c0
    ld   A, $08                                        ;; 01:5209 $3e $08
    ld   C, $48                                        ;; 01:520b $0e $48
    ld   HL, $0b                                       ;; 01:520d $21 $0b $00
    call call_00_31ad                                  ;; 01:5210 $cd $ad $31
    ret                                                ;; 01:5213 $c9

call_01_5214:
    ld   A, B                                          ;; 01:5214 $78
    cp   A, $03                                        ;; 01:5215 $fe $03
    ret  NZ                                            ;; 01:5217 $c0
    ld   C, $03                                        ;; 01:5218 $0e $03
    ld   A, [wCF5C]                                    ;; 01:521a $fa $5c $cf
    cp   A, $1a                                        ;; 01:521d $fe $1a
    jr   C, .jr_01_5223                                ;; 01:521f $38 $02
    ld   C, $04                                        ;; 01:5221 $0e $04
.jr_01_5223:
    ld   A, [wCF5A]                                    ;; 01:5223 $fa $5a $cf
    ld   E, A                                          ;; 01:5226 $5f
    ld   D, $00                                        ;; 01:5227 $16 $00
    ld   HL, wCEF8                                     ;; 01:5229 $21 $f8 $ce
    add  HL, DE                                        ;; 01:522c $19
    ld   A, [HL]                                       ;; 01:522d $7e
    cp   A, C                                          ;; 01:522e $b9
    ret  C                                             ;; 01:522f $d8
    ld   A, $10                                        ;; 01:5230 $3e $10
    call call_00_02a5                                  ;; 01:5232 $cd $a5 $02
    push AF                                            ;; 01:5235 $f5
    ld   A, [wCF5C]                                    ;; 01:5236 $fa $5c $cf
    sub  A, $0a                                        ;; 01:5239 $d6 $0a
    srl  A                                             ;; 01:523b $cb $3f
    call call_00_299a                                  ;; 01:523d $cd $9a $29
    or   A, $10                                        ;; 01:5240 $f6 $10
    ld   C, A                                          ;; 01:5242 $4f
    ld   A, [wC0A1]                                    ;; 01:5243 $fa $a1 $c0
    push AF                                            ;; 01:5246 $f5
    set  2, A                                          ;; 01:5247 $cb $d7
    set  3, A                                          ;; 01:5249 $cb $df
    set  1, A                                          ;; 01:524b $cb $cf
    ld   [wC0A1], A                                    ;; 01:524d $ea $a1 $c0
    ld   A, C                                          ;; 01:5250 $79
    ld   C, $04                                        ;; 01:5251 $0e $04
    ld   B, $00                                        ;; 01:5253 $06 $00
    call call_00_0695                                  ;; 01:5255 $cd $95 $06
    ld   C, $04                                        ;; 01:5258 $0e $04
    call call_00_29ba                                  ;; 01:525a $cd $ba $29
    pop  AF                                            ;; 01:525d $f1
    ld   [wC0A1], A                                    ;; 01:525e $ea $a1 $c0
    pop  AF                                            ;; 01:5261 $f1
    call call_00_02a5                                  ;; 01:5262 $cd $a5 $02
    ld   A, $00                                        ;; 01:5265 $3e $00
    ld   C, $04                                        ;; 01:5267 $0e $04
    call call_00_0ce4                                  ;; 01:5269 $cd $e4 $0c
    ret                                                ;; 01:526c $c9

call_01_526d:
    ld   A, B                                          ;; 01:526d $78
    cp   A, $06                                        ;; 01:526e $fe $06
    ret  NZ                                            ;; 01:5270 $c0
    ld   A, $00                                        ;; 01:5271 $3e $00
    srl  D                                             ;; 01:5273 $cb $3a
    srl  E                                             ;; 01:5275 $cb $3b
    call setRoomTile                                   ;; 01:5277 $cd $00 $24
    ret                                                ;; 01:527a $c9

call_01_527b:
    ld   A, B                                          ;; 01:527b $78
    cp   A, $06                                        ;; 01:527c $fe $06
    ret  NZ                                            ;; 01:527e $c0
    ld   A, $02                                        ;; 01:527f $3e $02
    srl  D                                             ;; 01:5281 $cb $3a
    srl  E                                             ;; 01:5283 $cb $3b
    call setRoomTile                                   ;; 01:5285 $cd $00 $24
    ret                                                ;; 01:5288 $c9

call_01_5289:
    ld   A, B                                          ;; 01:5289 $78
    cp   A, $02                                        ;; 01:528a $fe $02
    ret  NZ                                            ;; 01:528c $c0
    ld   A, $01                                        ;; 01:528d $3e $01
    srl  D                                             ;; 01:528f $cb $3a
    srl  E                                             ;; 01:5291 $cb $3b
    call setRoomTile                                   ;; 01:5293 $cd $00 $24
    ret                                                ;; 01:5296 $c9

call_01_5297:
    ld   A, B                                          ;; 01:5297 $78
    cp   A, $02                                        ;; 01:5298 $fe $02
    ret  NZ                                            ;; 01:529a $c0
    ld   A, $00                                        ;; 01:529b $3e $00
    srl  D                                             ;; 01:529d $cb $3a
    srl  E                                             ;; 01:529f $cb $3b
    call setRoomTile                                   ;; 01:52a1 $cd $00 $24
    ret                                                ;; 01:52a4 $c9

call_01_52a5:
    ld   A, B                                          ;; 01:52a5 $78
    cp   A, $04                                        ;; 01:52a6 $fe $04
    ret  NZ                                            ;; 01:52a8 $c0
    ld   A, $00                                        ;; 01:52a9 $3e $00
    srl  D                                             ;; 01:52ab $cb $3a
    srl  E                                             ;; 01:52ad $cb $3b
    call setRoomTile                                   ;; 01:52af $cd $00 $24
    ret                                                ;; 01:52b2 $c9

call_01_52b3:
    ld   C, $00                                        ;; 01:52b3 $0e $00
    ld   B, $07                                        ;; 01:52b5 $06 $07
    ld   HL, wCEF0                                     ;; 01:52b7 $21 $f0 $ce
.jr_01_52ba:
    ld   A, [HL+]                                      ;; 01:52ba $2a
    push HL                                            ;; 01:52bb $e5
    or   A, A                                          ;; 01:52bc $b7
    jr   Z, .jr_01_52c5                                ;; 01:52bd $28 $06
    ld   HL, .data_01_52cd                             ;; 01:52bf $21 $cd $52
    call callJumptable                                 ;; 01:52c2 $cd $70 $2b
.jr_01_52c5:
    pop  HL                                            ;; 01:52c5 $e1
    dec  B                                             ;; 01:52c6 $05
    jr   NZ, .jr_01_52ba                               ;; 01:52c7 $20 $f1
    ld   A, C                                          ;; 01:52c9 $79
    cp   A, $00                                        ;; 01:52ca $fe $00
    ret                                                ;; 01:52cc $c9
;@jumptable amount=9
.data_01_52cd:
    dw   call_01_52df                                  ;; 01:52cd ??
    dw   call_01_54d5                                  ;; 01:52cf ..
    dw   call_01_53f2                                  ;; 01:52d1 ??
    dw   call_01_53bd                                  ;; 01:52d3 ??
    dw   call_01_57ec                                  ;; 01:52d5 ??
    dw   call_01_581e                                  ;; 01:52d7 ??
    dw   call_01_5903                                  ;; 01:52d9 ??
    dw   call_01_5bf1                                  ;; 01:52db ??
    dw   call_01_52e0                                  ;; 01:52dd ??

call_01_52df:
    ret                                                ;; 01:52df $c9

call_01_52e0:
    push BC                                            ;; 01:52e0 $c5
    call call_01_53a0                                  ;; 01:52e1 $cd $a0 $53
    jr   Z, .jr_01_52e9                                ;; 01:52e4 $28 $03
    pop  BC                                            ;; 01:52e6 $c1
    inc  C                                             ;; 01:52e7 $0c
    ret                                                ;; 01:52e8 $c9
.jr_01_52e9:
    ld   A, D                                          ;; 01:52e9 $7a
    and  A, $0f                                        ;; 01:52ea $e6 $0f
    jr   NZ, .jr_01_52f5                               ;; 01:52ec $20 $07
    push BC                                            ;; 01:52ee $c5
    call getObjectDirection                            ;; 01:52ef $cd $99 $0c
    and  A, $0f                                        ;; 01:52f2 $e6 $0f
    pop  BC                                            ;; 01:52f4 $c1
.jr_01_52f5:
    push AF                                            ;; 01:52f5 $f5
    cp   A, $01                                        ;; 01:52f6 $fe $01
    jr   Z, .jr_01_531d                                ;; 01:52f8 $28 $23
    cp   A, $05                                        ;; 01:52fa $fe $05
    jr   Z, .jr_01_5324                                ;; 01:52fc $28 $26
    cp   A, $04                                        ;; 01:52fe $fe $04
    jr   Z, .jr_01_532d                                ;; 01:5300 $28 $2b
    cp   A, $06                                        ;; 01:5302 $fe $06
    jr   Z, .jr_01_5334                                ;; 01:5304 $28 $2e
    cp   A, $02                                        ;; 01:5306 $fe $02
    jr   Z, .jr_01_533d                                ;; 01:5308 $28 $33
    cp   A, $0a                                        ;; 01:530a $fe $0a
    jr   Z, .jr_01_5344                                ;; 01:530c $28 $36
    cp   A, $08                                        ;; 01:530e $fe $08
    jr   Z, .jr_01_534d                                ;; 01:5310 $28 $3b
    cp   A, $09                                        ;; 01:5312 $fe $09
    jr   Z, .jr_01_5354                                ;; 01:5314 $28 $3e
    ld   A, $00                                        ;; 01:5316 $3e $00
    ld   DE, $00                                       ;; 01:5318 $11 $00 $00
    jr   .jr_01_535b                                   ;; 01:531b $18 $3e
.jr_01_531d:
    ld   A, $01                                        ;; 01:531d $3e $01
    ld   DE, $03                                       ;; 01:531f $11 $03 $00
    jr   .jr_01_535b                                   ;; 01:5322 $18 $37
.jr_01_5324:
    ld   A, $81                                        ;; 01:5324 $3e $81
    ld   B, $01                                        ;; 01:5326 $06 $01
    ld   DE, $fe02                                     ;; 01:5328 $11 $02 $fe
    jr   .jr_01_535b                                   ;; 01:532b $18 $2e
.jr_01_532d:
    ld   A, $04                                        ;; 01:532d $3e $04
    ld   DE, $fd00                                     ;; 01:532f $11 $00 $fd
    jr   .jr_01_535b                                   ;; 01:5332 $18 $27
.jr_01_5334:
    ld   A, $84                                        ;; 01:5334 $3e $84
    ld   B, $01                                        ;; 01:5336 $06 $01
    ld   DE, $fefe                                     ;; 01:5338 $11 $fe $fe
    jr   .jr_01_535b                                   ;; 01:533b $18 $1e
.jr_01_533d:
    ld   A, $02                                        ;; 01:533d $3e $02
    ld   DE, $fd                                       ;; 01:533f $11 $fd $00
    jr   .jr_01_535b                                   ;; 01:5342 $18 $17
.jr_01_5344:
    ld   A, $82                                        ;; 01:5344 $3e $82
    ld   B, $01                                        ;; 01:5346 $06 $01
    ld   DE, $2fe                                      ;; 01:5348 $11 $fe $02
    jr   .jr_01_535b                                   ;; 01:534b $18 $0e
.jr_01_534d:
    ld   A, $08                                        ;; 01:534d $3e $08
    ld   DE, $300                                      ;; 01:534f $11 $00 $03
    jr   .jr_01_535b                                   ;; 01:5352 $18 $07
.jr_01_5354:
    ld   A, $88                                        ;; 01:5354 $3e $88
    ld   B, $01                                        ;; 01:5356 $06 $01
    ld   DE, $202                                      ;; 01:5358 $11 $02 $02
.jr_01_535b:
    push AF                                            ;; 01:535b $f5
    push BC                                            ;; 01:535c $c5
    call call_00_08d4                                  ;; 01:535d $cd $d4 $08
    pop  BC                                            ;; 01:5360 $c1
    ld   B, $00                                        ;; 01:5361 $06 $00
    jp   Z, .jp_01_538a                                ;; 01:5363 $ca $8a $53
    push BC                                            ;; 01:5366 $c5
    call GetObjectY                                    ;; 01:5367 $cd $3e $0c
    pop  BC                                            ;; 01:536a $c1
    ld   D, A                                          ;; 01:536b $57
    ld   A, [wVideoWY]                                 ;; 01:536c $fa $a9 $c0
    add  A, $08                                        ;; 01:536f $c6 $08
    cp   A, D                                          ;; 01:5371 $ba
    jr   C, .jp_01_538a                                ;; 01:5372 $38 $16
    push BC                                            ;; 01:5374 $c5
    call GetObjectX                                    ;; 01:5375 $cd $2d $0c
    pop  BC                                            ;; 01:5378 $c1
    cp   A, $a1                                        ;; 01:5379 $fe $a1
    jr   NC, .jp_01_538a                               ;; 01:537b $30 $0d
    pop  AF                                            ;; 01:537d $f1
    push BC                                            ;; 01:537e $c5
    call call_01_59ea                                  ;; 01:537f $cd $ea $59
    pop  BC                                            ;; 01:5382 $c1
    pop  AF                                            ;; 01:5383 $f1
    call call_00_0ca6                                  ;; 01:5384 $cd $a6 $0c
    pop  BC                                            ;; 01:5387 $c1
    inc  C                                             ;; 01:5388 $0c
    ret                                                ;; 01:5389 $c9
.jp_01_538a:
    pop  AF                                            ;; 01:538a $f1
    pop  AF                                            ;; 01:538b $f1
    call call_01_59d0                                  ;; 01:538c $cd $d0 $59
    pop  BC                                            ;; 01:538f $c1
    ret                                                ;; 01:5390 $c9

call_01_5391:
    ld   HL, wCEF8                                     ;; 01:5391 $21 $f8 $ce
    add  HL, BC                                        ;; 01:5394 $09
    ld   [HL], $00                                     ;; 01:5395 $36 $00
    ld   HL, wCF18                                     ;; 01:5397 $21 $18 $cf
    add  HL, BC                                        ;; 01:539a $09
    add  HL, BC                                        ;; 01:539b $09
    ld   A, [HL+]                                      ;; 01:539c $2a
    ld   H, [HL]                                       ;; 01:539d $66
    ld   L, A                                          ;; 01:539e $6f
    ret                                                ;; 01:539f $c9

call_01_53a0:
    ld   A, $07                                        ;; 01:53a0 $3e $07
    sub  A, B                                          ;; 01:53a2 $90
    ld   [wCF5A], A                                    ;; 01:53a3 $ea $5a $cf
    ld   C, A                                          ;; 01:53a6 $4f
    ld   B, $00                                        ;; 01:53a7 $06 $00
    ld   HL, wCF00                                     ;; 01:53a9 $21 $00 $cf
    add  HL, BC                                        ;; 01:53ac $09
    dec  [HL]                                          ;; 01:53ad $35
    ret  NZ                                            ;; 01:53ae $c0
    push HL                                            ;; 01:53af $e5
    ld   HL, wCF08                                     ;; 01:53b0 $21 $08 $cf
    add  HL, BC                                        ;; 01:53b3 $09
    add  HL, BC                                        ;; 01:53b4 $09
    ld   A, [HL+]                                      ;; 01:53b5 $2a
    ld   H, [HL]                                       ;; 01:53b6 $66
    ld   L, A                                          ;; 01:53b7 $6f
    ld   A, [HL]                                       ;; 01:53b8 $7e
    pop  HL                                            ;; 01:53b9 $e1
    ld   [HL], A                                       ;; 01:53ba $77
    xor  A, A                                          ;; 01:53bb $af
    ret                                                ;; 01:53bc $c9

call_01_53bd:
    push BC                                            ;; 01:53bd $c5
    call call_01_53a0                                  ;; 01:53be $cd $a0 $53
    jr   Z, .jr_01_53c6                                ;; 01:53c1 $28 $03
    pop  BC                                            ;; 01:53c3 $c1
    inc  C                                             ;; 01:53c4 $0c
    ret                                                ;; 01:53c5 $c9
.jr_01_53c6:
    ld   HL, wCF18                                     ;; 01:53c6 $21 $18 $cf
    add  HL, BC                                        ;; 01:53c9 $09
    add  HL, BC                                        ;; 01:53ca $09
    ld   E, [HL]                                       ;; 01:53cb $5e
    inc  HL                                            ;; 01:53cc $23
    ld   D, [HL]                                       ;; 01:53cd $56
    ld   HL, wCEF8                                     ;; 01:53ce $21 $f8 $ce
    add  HL, BC                                        ;; 01:53d1 $09
    ld   A, [HL]                                       ;; 01:53d2 $7e
    add  A, A                                          ;; 01:53d3 $87
    add  A, A                                          ;; 01:53d4 $87
    ld   L, A                                          ;; 01:53d5 $6f
    ld   H, $00                                        ;; 01:53d6 $26 $00
    add  HL, DE                                        ;; 01:53d8 $19
    ld   A, [HL]                                       ;; 01:53d9 $7e
    cp   A, $00                                        ;; 01:53da $fe $00
    call Z, call_01_5391                               ;; 01:53dc $cc $91 $53
    push HL                                            ;; 01:53df $e5
    inc  HL                                            ;; 01:53e0 $23
    push HL                                            ;; 01:53e1 $e5
    dec  HL                                            ;; 01:53e2 $2b
    dec  HL                                            ;; 01:53e3 $2b
    ld   A, [HL+]                                      ;; 01:53e4 $2a
    push HL                                            ;; 01:53e5 $e5
    push BC                                            ;; 01:53e6 $c5
    ld   D, A                                          ;; 01:53e7 $57
    and  A, $08                                        ;; 01:53e8 $e6 $08
    call NZ, call_01_5b46                              ;; 01:53ea $c4 $46 $5b
    pop  BC                                            ;; 01:53ed $c1
    pop  HL                                            ;; 01:53ee $e1
    jp   jp_01_5538                                    ;; 01:53ef $c3 $38 $55

call_01_53f2:
    push BC                                            ;; 01:53f2 $c5
    call call_01_53a0                                  ;; 01:53f3 $cd $a0 $53
    jr   Z, .jr_01_53fb                                ;; 01:53f6 $28 $03
    pop  BC                                            ;; 01:53f8 $c1
    inc  C                                             ;; 01:53f9 $0c
    ret                                                ;; 01:53fa $c9
.jr_01_53fb:
    srl  [HL]                                          ;; 01:53fb $cb $3e
    ld   HL, wCF18                                     ;; 01:53fd $21 $18 $cf
    add  HL, BC                                        ;; 01:5400 $09
    add  HL, BC                                        ;; 01:5401 $09
    ld   E, [HL]                                       ;; 01:5402 $5e
    inc  HL                                            ;; 01:5403 $23
    ld   D, [HL]                                       ;; 01:5404 $56
    ld   HL, wCEF8                                     ;; 01:5405 $21 $f8 $ce
    add  HL, BC                                        ;; 01:5408 $09
    ld   A, [HL]                                       ;; 01:5409 $7e
    ld   L, A                                          ;; 01:540a $6f
    add  A, A                                          ;; 01:540b $87
    add  A, L                                          ;; 01:540c $85
    ld   L, A                                          ;; 01:540d $6f
    ld   H, $00                                        ;; 01:540e $26 $00
    add  HL, DE                                        ;; 01:5410 $19
    ld   A, [HL]                                       ;; 01:5411 $7e
    cp   A, $00                                        ;; 01:5412 $fe $00
    call Z, call_01_5391                               ;; 01:5414 $cc $91 $53
    push HL                                            ;; 01:5417 $e5
    inc  HL                                            ;; 01:5418 $23
    push HL                                            ;; 01:5419 $e5
    ld   HL, wCF28                                     ;; 01:541a $21 $28 $cf
    add  HL, BC                                        ;; 01:541d $09
    add  HL, BC                                        ;; 01:541e $09
    push HL                                            ;; 01:541f $e5
    ld   E, [HL]                                       ;; 01:5420 $5e
    inc  HL                                            ;; 01:5421 $23
    ld   D, [HL]                                       ;; 01:5422 $56
    ld   HL, wCF50                                     ;; 01:5423 $21 $50 $cf
    add  HL, BC                                        ;; 01:5426 $09
    ld   A, [HL]                                       ;; 01:5427 $7e
    ld   HL, wCF48                                     ;; 01:5428 $21 $48 $cf
    add  HL, BC                                        ;; 01:542b $09
    bit  0, [HL]                                       ;; 01:542c $cb $46
    jr   NZ, .jr_01_543c                               ;; 01:542e $20 $0c
    bit  1, [HL]                                       ;; 01:5430 $cb $4e
    jr   NZ, .jr_01_5440                               ;; 01:5432 $20 $0c
    bit  2, [HL]                                       ;; 01:5434 $cb $56
    jr   NZ, .jr_01_5446                               ;; 01:5436 $20 $0e
    add  A, D                                          ;; 01:5438 $82
    ld   D, A                                          ;; 01:5439 $57
    jr   .jr_01_544a                                   ;; 01:543a $18 $0e
.jr_01_543c:
    add  A, E                                          ;; 01:543c $83
    ld   E, A                                          ;; 01:543d $5f
    jr   .jr_01_544a                                   ;; 01:543e $18 $0a
.jr_01_5440:
    sub  A, E                                          ;; 01:5440 $93
    cpl                                                ;; 01:5441 $2f
    inc  A                                             ;; 01:5442 $3c
    ld   E, A                                          ;; 01:5443 $5f
    jr   .jr_01_544a                                   ;; 01:5444 $18 $04
.jr_01_5446:
    sub  A, D                                          ;; 01:5446 $92
    cpl                                                ;; 01:5447 $2f
    inc  A                                             ;; 01:5448 $3c
    ld   D, A                                          ;; 01:5449 $57
.jr_01_544a:
    pop  HL                                            ;; 01:544a $e1
    ld   [HL], E                                       ;; 01:544b $73
    inc  HL                                            ;; 01:544c $23
    ld   [HL], D                                       ;; 01:544d $72
    pop  HL                                            ;; 01:544e $e1
    ld   A, [HL+]                                      ;; 01:544f $2a
    add  A, D                                          ;; 01:5450 $82
    ld   D, A                                          ;; 01:5451 $57
    ld   A, [HL-]                                      ;; 01:5452 $3a
    add  A, E                                          ;; 01:5453 $83
    ld   E, A                                          ;; 01:5454 $5f
    cp   A, $a1                                        ;; 01:5455 $fe $a1
    jr   NC, .jr_01_54ac                               ;; 01:5457 $30 $53
    ld   A, [wVideoWY]                                 ;; 01:5459 $fa $a9 $c0
    add  A, $08                                        ;; 01:545c $c6 $08
    cp   A, D                                          ;; 01:545e $ba
    jr   C, .jr_01_54ac                                ;; 01:545f $38 $4b
    push HL                                            ;; 01:5461 $e5
    push DE                                            ;; 01:5462 $d5
    call call_00_2f14                                  ;; 01:5463 $cd $14 $2f
    pop  DE                                            ;; 01:5466 $d1
    sub  A, D                                          ;; 01:5467 $92
    cpl                                                ;; 01:5468 $2f
    inc  A                                             ;; 01:5469 $3c
    ld   D, A                                          ;; 01:546a $57
    push DE                                            ;; 01:546b $d5
    call call_00_2f0c                                  ;; 01:546c $cd $0c $2f
    pop  DE                                            ;; 01:546f $d1
    pop  HL                                            ;; 01:5470 $e1
    sub  A, E                                          ;; 01:5471 $93
    cpl                                                ;; 01:5472 $2f
    inc  A                                             ;; 01:5473 $3c
    ld   E, A                                          ;; 01:5474 $5f
    ld   A, [wCF5A]                                    ;; 01:5475 $fa $5a $cf
    ld   C, A                                          ;; 01:5478 $4f
    dec  HL                                            ;; 01:5479 $2b
    ld   A, [HL+]                                      ;; 01:547a $2a
    ld   B, $00                                        ;; 01:547b $06 $00
    bit  7, A                                          ;; 01:547d $cb $7f
    jr   Z, .jr_01_5485                                ;; 01:547f $28 $04
    ld   B, $01                                        ;; 01:5481 $06 $01
    res  7, A                                          ;; 01:5483 $cb $bf
.jr_01_5485:
    call call_00_08d4                                  ;; 01:5485 $cd $d4 $08
    jr   Z, .jr_01_54ac                                ;; 01:5488 $28 $22
    ld   A, [wCF5A]                                    ;; 01:548a $fa $5a $cf
    ld   C, A                                          ;; 01:548d $4f
    ld   B, $00                                        ;; 01:548e $06 $00
    ld   HL, wCEF0                                     ;; 01:5490 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5493 $09
    ld   A, [HL]                                       ;; 01:5494 $7e
    cp   A, $00                                        ;; 01:5495 $fe $00
    jr   Z, .jr_01_54ac                                ;; 01:5497 $28 $13
    pop  HL                                            ;; 01:5499 $e1
    ld   A, [HL]                                       ;; 01:549a $7e
    call call_01_59ea                                  ;; 01:549b $cd $ea $59
    pop  BC                                            ;; 01:549e $c1
    inc  C                                             ;; 01:549f $0c
    ld   A, $07                                        ;; 01:54a0 $3e $07
    sub  A, B                                          ;; 01:54a2 $90
    ld   E, A                                          ;; 01:54a3 $5f
    ld   D, $00                                        ;; 01:54a4 $16 $00
    ld   HL, wCEF8                                     ;; 01:54a6 $21 $f8 $ce
    add  HL, DE                                        ;; 01:54a9 $19
    inc  [HL]                                          ;; 01:54aa $34
    ret                                                ;; 01:54ab $c9
.jr_01_54ac:
    pop  HL                                            ;; 01:54ac $e1
    ld   A, [wCF5A]                                    ;; 01:54ad $fa $5a $cf
    ld   C, A                                          ;; 01:54b0 $4f
    call call_01_59d0                                  ;; 01:54b1 $cd $d0 $59
    ld   A, [wCF5A]                                    ;; 01:54b4 $fa $5a $cf
    dec  A                                             ;; 01:54b7 $3d
    dec  A                                             ;; 01:54b8 $3d
    ld   C, A                                          ;; 01:54b9 $4f
    push BC                                            ;; 01:54ba $c5
    call call_00_0c6d                                  ;; 01:54bb $cd $6d $0c
    and  A, $f0                                        ;; 01:54be $e6 $f0
    pop  BC                                            ;; 01:54c0 $c1
    cp   A, $40                                        ;; 01:54c1 $fe $40
    call Z, call_01_59d0                               ;; 01:54c3 $cc $d0 $59
    pop  BC                                            ;; 01:54c6 $c1
    ld   A, $07                                        ;; 01:54c7 $3e $07
    sub  A, B                                          ;; 01:54c9 $90
    ld   E, A                                          ;; 01:54ca $5f
    ld   D, $00                                        ;; 01:54cb $16 $00
    ld   HL, wCEF8                                     ;; 01:54cd $21 $f8 $ce
    add  HL, DE                                        ;; 01:54d0 $19
    ld   [HL], $00                                     ;; 01:54d1 $36 $00
    xor  A, A                                          ;; 01:54d3 $af
    ret                                                ;; 01:54d4 $c9

call_01_54d5:
    push BC                                            ;; 01:54d5 $c5
    call call_01_53a0                                  ;; 01:54d6 $cd $a0 $53
    jr   Z, .jr_01_54de                                ;; 01:54d9 $28 $03
    pop  BC                                            ;; 01:54db $c1
    inc  C                                             ;; 01:54dc $0c
    ret                                                ;; 01:54dd $c9
.jr_01_54de:
    ld   HL, wCF18                                     ;; 01:54de $21 $18 $cf
    add  HL, BC                                        ;; 01:54e1 $09
    add  HL, BC                                        ;; 01:54e2 $09
    ld   E, [HL]                                       ;; 01:54e3 $5e
    inc  HL                                            ;; 01:54e4 $23
    ld   D, [HL]                                       ;; 01:54e5 $56
    ld   HL, wCEF8                                     ;; 01:54e6 $21 $f8 $ce
    add  HL, BC                                        ;; 01:54e9 $09
    ld   A, [HL]                                       ;; 01:54ea $7e
    add  A, A                                          ;; 01:54eb $87
    add  A, A                                          ;; 01:54ec $87
    ld   L, A                                          ;; 01:54ed $6f
    ld   H, $00                                        ;; 01:54ee $26 $00
    add  HL, DE                                        ;; 01:54f0 $19
    push HL                                            ;; 01:54f1 $e5
    ld   A, [HL+]                                      ;; 01:54f2 $2a
    cp   A, $00                                        ;; 01:54f3 $fe $00
    jp   Z, jp_01_5592                                 ;; 01:54f5 $ca $92 $55
    push HL                                            ;; 01:54f8 $e5
    dec  HL                                            ;; 01:54f9 $2b
    dec  HL                                            ;; 01:54fa $2b
    ld   A, [HL+]                                      ;; 01:54fb $2a
    push HL                                            ;; 01:54fc $e5
    push BC                                            ;; 01:54fd $c5
    ld   D, A                                          ;; 01:54fe $57
    and  A, $08                                        ;; 01:54ff $e6 $08
    call NZ, call_01_5b46                              ;; 01:5501 $c4 $46 $5b
    ld   A, D                                          ;; 01:5504 $7a
    push DE                                            ;; 01:5505 $d5
    and  A, $07                                        ;; 01:5506 $e6 $07
    cp   A, $05                                        ;; 01:5508 $fe $05
    jr   Z, .jr_01_551c                                ;; 01:550a $28 $10
    cp   A, $01                                        ;; 01:550c $fe $01
    jr   Z, .jr_01_5521                                ;; 01:550e $28 $11
    cp   A, $02                                        ;; 01:5510 $fe $02
    jp   Z, jp_01_5609                                 ;; 01:5512 $ca $09 $56
    cp   A, $03                                        ;; 01:5515 $fe $03
    jp   Z, jp_01_5619                                 ;; 01:5517 $ca $19 $56
    jr   jp_01_5530                                    ;; 01:551a $18 $14
.jr_01_551c:
    call call_00_024a                                  ;; 01:551c $cd $4a $02
    jr   jp_01_5530                                    ;; 01:551f $18 $0f
.jr_01_5521:
    call call_00_0276                                  ;; 01:5521 $cd $76 $02
    pop  DE                                            ;; 01:5524 $d1
    pop  BC                                            ;; 01:5525 $c1
    push BC                                            ;; 01:5526 $c5
    push DE                                            ;; 01:5527 $d5
    ld   HL, wCEF0                                     ;; 01:5528 $21 $f0 $ce
    add  HL, BC                                        ;; 01:552b $09
    ld   [HL], $03                                     ;; 01:552c $36 $03
    jr   jp_01_5530                                    ;; 01:552e $18 $00

jp_01_5530:
    pop  DE                                            ;; 01:5530 $d1
    pop  BC                                            ;; 01:5531 $c1
    pop  HL                                            ;; 01:5532 $e1
    ld   A, D                                          ;; 01:5533 $7a
    and  A, $04                                        ;; 01:5534 $e6 $04
    jr   NZ, jr_01_55a9                                ;; 01:5536 $20 $71

jp_01_5538:
    call call_00_0299                                  ;; 01:5538 $cd $99 $02
    pop  HL                                            ;; 01:553b $e1
    push HL                                            ;; 01:553c $e5
    add  A, [HL]                                       ;; 01:553d $86
    push AF                                            ;; 01:553e $f5
    call call_00_2f14                                  ;; 01:553f $cd $14 $2f
    ld   C, A                                          ;; 01:5542 $4f
    pop  AF                                            ;; 01:5543 $f1
    sub  A, C                                          ;; 01:5544 $91
    ld   D, A                                          ;; 01:5545 $57
    push DE                                            ;; 01:5546 $d5
    call call_00_0293                                  ;; 01:5547 $cd $93 $02
    pop  DE                                            ;; 01:554a $d1
    pop  HL                                            ;; 01:554b $e1
    push HL                                            ;; 01:554c $e5
    push DE                                            ;; 01:554d $d5
    inc  HL                                            ;; 01:554e $23
    add  A, [HL]                                       ;; 01:554f $86
    push AF                                            ;; 01:5550 $f5
    call call_00_2f0c                                  ;; 01:5551 $cd $0c $2f
    ld   C, A                                          ;; 01:5554 $4f
    pop  AF                                            ;; 01:5555 $f1
    pop  DE                                            ;; 01:5556 $d1
    pop  HL                                            ;; 01:5557 $e1
    sub  A, C                                          ;; 01:5558 $91
    ld   E, A                                          ;; 01:5559 $5f
    ld   A, [wCF5A]                                    ;; 01:555a $fa $5a $cf
    ld   C, A                                          ;; 01:555d $4f
    dec  HL                                            ;; 01:555e $2b
    ld   A, [HL+]                                      ;; 01:555f $2a
    ld   B, $00                                        ;; 01:5560 $06 $00
    bit  7, A                                          ;; 01:5562 $cb $7f
    jr   Z, .jr_01_556a                                ;; 01:5564 $28 $04
    ld   B, $01                                        ;; 01:5566 $06 $01
    res  7, A                                          ;; 01:5568 $cb $bf
.jr_01_556a:
    call call_00_08d4                                  ;; 01:556a $cd $d4 $08
    jr   Z, jp_01_5592                                 ;; 01:556d $28 $23
    ld   A, [wCF5A]                                    ;; 01:556f $fa $5a $cf
    ld   C, A                                          ;; 01:5572 $4f
    ld   B, $00                                        ;; 01:5573 $06 $00
    ld   HL, wCEF0                                     ;; 01:5575 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5578 $09
    ld   A, [HL]                                       ;; 01:5579 $7e
    cp   A, $00                                        ;; 01:557a $fe $00
    jp   Z, jp_01_5592                                 ;; 01:557c $ca $92 $55
    pop  HL                                            ;; 01:557f $e1
    ld   A, [HL]                                       ;; 01:5580 $7e
    call call_01_59ea                                  ;; 01:5581 $cd $ea $59
    pop  BC                                            ;; 01:5584 $c1
    inc  C                                             ;; 01:5585 $0c
    ld   A, $07                                        ;; 01:5586 $3e $07
    sub  A, B                                          ;; 01:5588 $90
    ld   E, A                                          ;; 01:5589 $5f
    ld   D, $00                                        ;; 01:558a $16 $00
    ld   HL, wCEF8                                     ;; 01:558c $21 $f8 $ce
    add  HL, DE                                        ;; 01:558f $19
    inc  [HL]                                          ;; 01:5590 $34
    ret                                                ;; 01:5591 $c9

jp_01_5592:
    pop  HL                                            ;; 01:5592 $e1
    ld   A, [wCF5A]                                    ;; 01:5593 $fa $5a $cf
    ld   C, A                                          ;; 01:5596 $4f
    call call_01_59d0                                  ;; 01:5597 $cd $d0 $59
    pop  BC                                            ;; 01:559a $c1
    ld   A, $07                                        ;; 01:559b $3e $07
    sub  A, B                                          ;; 01:559d $90
    ld   E, A                                          ;; 01:559e $5f
    ld   D, $00                                        ;; 01:559f $16 $00
    ld   HL, wCEF8                                     ;; 01:55a1 $21 $f8 $ce
    add  HL, DE                                        ;; 01:55a4 $19
    ld   [HL], $00                                     ;; 01:55a5 $36 $00
    xor  A, A                                          ;; 01:55a7 $af
    ret                                                ;; 01:55a8 $c9

jr_01_55a9:
    ld   A, [HL+]                                      ;; 01:55a9 $2a
    ld   HL, wCF50                                     ;; 01:55aa $21 $50 $cf
    add  HL, BC                                        ;; 01:55ad $09
    ld   [HL], A                                       ;; 01:55ae $77
    push BC                                            ;; 01:55af $c5
    call setObjectDirection                            ;; 01:55b0 $cd $5d $0c
    call call_00_02ab                                  ;; 01:55b3 $cd $ab $02
    and  A, $0f                                        ;; 01:55b6 $e6 $0f
    pop  BC                                            ;; 01:55b8 $c1
    ld   HL, wCF48                                     ;; 01:55b9 $21 $48 $cf
    add  HL, BC                                        ;; 01:55bc $09
    ld   [HL], A                                       ;; 01:55bd $77
    pop  DE                                            ;; 01:55be $d1
    ld   HL, wCF18                                     ;; 01:55bf $21 $18 $cf
    add  HL, BC                                        ;; 01:55c2 $09
    add  HL, BC                                        ;; 01:55c3 $09
    ld   [HL], E                                       ;; 01:55c4 $73
    inc  HL                                            ;; 01:55c5 $23
    ld   [HL], D                                       ;; 01:55c6 $72
    push BC                                            ;; 01:55c7 $c5
    call call_00_0299                                  ;; 01:55c8 $cd $99 $02
    push AF                                            ;; 01:55cb $f5
    call call_00_0293                                  ;; 01:55cc $cd $93 $02
    ld   E, A                                          ;; 01:55cf $5f
    pop  AF                                            ;; 01:55d0 $f1
    ld   D, A                                          ;; 01:55d1 $57
    pop  BC                                            ;; 01:55d2 $c1
    ld   HL, wCF28                                     ;; 01:55d3 $21 $28 $cf
    add  HL, BC                                        ;; 01:55d6 $09
    add  HL, BC                                        ;; 01:55d7 $09
    ld   [HL], E                                       ;; 01:55d8 $73
    inc  HL                                            ;; 01:55d9 $23
    ld   [HL], D                                       ;; 01:55da $72
    ld   HL, wCEF0                                     ;; 01:55db $21 $f0 $ce
    add  HL, BC                                        ;; 01:55de $09
    ld   [HL], $02                                     ;; 01:55df $36 $02
    ld   HL, wCEF8                                     ;; 01:55e1 $21 $f8 $ce
    add  HL, BC                                        ;; 01:55e4 $09
    ld   [HL], $00                                     ;; 01:55e5 $36 $00
    ld   HL, wCF00                                     ;; 01:55e7 $21 $00 $cf
    add  HL, BC                                        ;; 01:55ea $09
    ld   [HL], $01                                     ;; 01:55eb $36 $01
    push BC                                            ;; 01:55ed $c5
    call call_00_0c6d                                  ;; 01:55ee $cd $6d $0c
    pop  BC                                            ;; 01:55f1 $c1
    cp   A, $40                                        ;; 01:55f2 $fe $40
    jr   Z, .jr_01_5601                                ;; 01:55f4 $28 $0b
    and  A, $f0                                        ;; 01:55f6 $e6 $f0
    cp   A, $50                                        ;; 01:55f8 $fe $50
    jr   Z, .jr_01_5601                                ;; 01:55fa $28 $05
    ld   A, $4a                                        ;; 01:55fc $3e $4a
    call call_00_0c86                                  ;; 01:55fe $cd $86 $0c
.jr_01_5601:
    pop  HL                                            ;; 01:5601 $e1
    pop  BC                                            ;; 01:5602 $c1
    push BC                                            ;; 01:5603 $c5
    call call_01_53f2                                  ;; 01:5604 $cd $f2 $53
    pop  BC                                            ;; 01:5607 $c1
    ret                                                ;; 01:5608 $c9

jp_01_5609:
    call call_00_025c                                  ;; 01:5609 $cd $5c $02
    pop  DE                                            ;; 01:560c $d1
    pop  BC                                            ;; 01:560d $c1
    push BC                                            ;; 01:560e $c5
    push DE                                            ;; 01:560f $d5
    ld   HL, wCEF0                                     ;; 01:5610 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5613 $09
    ld   [HL], $04                                     ;; 01:5614 $36 $04
    jp   jp_01_5530                                    ;; 01:5616 $c3 $30 $55

jp_01_5619:
    pop  DE                                            ;; 01:5619 $d1
    pop  BC                                            ;; 01:561a $c1
    push BC                                            ;; 01:561b $c5
    push DE                                            ;; 01:561c $d5
    ld   HL, wCEF0                                     ;; 01:561d $21 $f0 $ce
    add  HL, BC                                        ;; 01:5620 $09
    ld   [HL], $08                                     ;; 01:5621 $36 $08
    jp   jp_01_5530                                    ;; 01:5623 $c3 $30 $55

call_01_5626:
    push BC                                            ;; 01:5626 $c5
    push DE                                            ;; 01:5627 $d5
    ld   HL, SP+9                                      ;; 01:5628 $f8 $09
    bit  0, [HL]                                       ;; 01:562a $cb $46
    jr   NZ, .jr_01_5631                               ;; 01:562c $20 $03
    add  A, A                                          ;; 01:562e $87
    jr   .jr_01_5633                                   ;; 01:562f $18 $02
.jr_01_5631:
    srl  A                                             ;; 01:5631 $cb $3f
.jr_01_5633:
    ld   L, A                                          ;; 01:5633 $6f
    ld   H, $00                                        ;; 01:5634 $26 $00
    call MultiplyHL_by_A                               ;; 01:5636 $cd $7b $2b
    pop  DE                                            ;; 01:5639 $d1
    pop  BC                                            ;; 01:563a $c1
    push BC                                            ;; 01:563b $c5
    push HL                                            ;; 01:563c $e5
    push DE                                            ;; 01:563d $d5
    call GetObjectY                                    ;; 01:563e $cd $3e $0c
    pop  DE                                            ;; 01:5641 $d1
    sub  A, D                                          ;; 01:5642 $92
    jr   NC, .jr_01_5647                               ;; 01:5643 $30 $02
    cpl                                                ;; 01:5645 $2f
    inc  A                                             ;; 01:5646 $3c
.jr_01_5647:
    push DE                                            ;; 01:5647 $d5
    ld   L, A                                          ;; 01:5648 $6f
    ld   H, $00                                        ;; 01:5649 $26 $00
    call MultiplyHL_by_A                               ;; 01:564b $cd $7b $2b
    pop  DE                                            ;; 01:564e $d1
    pop  BC                                            ;; 01:564f $c1
    add  HL, BC                                        ;; 01:5650 $09
    push DE                                            ;; 01:5651 $d5
    push HL                                            ;; 01:5652 $e5
    ld   D, H                                          ;; 01:5653 $54
    ld   E, L                                          ;; 01:5654 $5d
    ld   HL, SP+8                                      ;; 01:5655 $f8 $08
    ld   A, [HL+]                                      ;; 01:5657 $2a
    ld   H, [HL]                                       ;; 01:5658 $66
    ld   L, A                                          ;; 01:5659 $6f
    call sub_HL_DE                                     ;; 01:565a $cd $ab $2b
    pop  HL                                            ;; 01:565d $e1
    pop  DE                                            ;; 01:565e $d1
    pop  BC                                            ;; 01:565f $c1
    ret                                                ;; 01:5660 $c9

call_01_5661:
    push AF                                            ;; 01:5661 $f5
    ld   C, $07                                        ;; 01:5662 $0e $07
    ld   B, $00                                        ;; 01:5664 $06 $00
    ld   HL, rIE                                       ;; 01:5666 $21 $ff $ff
.jr_01_5669:
    push HL                                            ;; 01:5669 $e5
    push BC                                            ;; 01:566a $c5
    push DE                                            ;; 01:566b $d5
    call getObjectDirection                            ;; 01:566c $cd $99 $0c
    cp   A, $ff                                        ;; 01:566f $fe $ff
    jr   Z, .jr_01_5693                                ;; 01:5671 $28 $20
    pop  DE                                            ;; 01:5673 $d1
    pop  BC                                            ;; 01:5674 $c1
    push BC                                            ;; 01:5675 $c5
    push DE                                            ;; 01:5676 $d5
    call call_01_57de                                  ;; 01:5677 $cd $de $57
    jr   NZ, .jr_01_5693                               ;; 01:567a $20 $17
    pop  DE                                            ;; 01:567c $d1
    pop  BC                                            ;; 01:567d $c1
    push BC                                            ;; 01:567e $c5
    push DE                                            ;; 01:567f $d5
    call GetObjectX                                    ;; 01:5680 $cd $2d $0c
    pop  DE                                            ;; 01:5683 $d1
    sub  A, E                                          ;; 01:5684 $93
    jr   C, .jr_01_5694                                ;; 01:5685 $38 $0d
    pop  BC                                            ;; 01:5687 $c1
    call call_01_5626                                  ;; 01:5688 $cd $26 $56
    jr   C, .jr_01_5695                                ;; 01:568b $38 $08
    ld   A, C                                          ;; 01:568d $79
    pop  BC                                            ;; 01:568e $c1
    ld   B, A                                          ;; 01:568f $47
    ld   C, A                                          ;; 01:5690 $4f
    jr   .jr_01_5696                                   ;; 01:5691 $18 $03
.jr_01_5693:
    pop  DE                                            ;; 01:5693 $d1
.jr_01_5694:
    pop  BC                                            ;; 01:5694 $c1
.jr_01_5695:
    pop  HL                                            ;; 01:5695 $e1
.jr_01_5696:
    inc  C                                             ;; 01:5696 $0c
    ld   A, C                                          ;; 01:5697 $79
    cp   A, $14                                        ;; 01:5698 $fe $14
    jr   C, .jr_01_5669                                ;; 01:569a $38 $cd
    pop  AF                                            ;; 01:569c $f1
    ld   A, B                                          ;; 01:569d $78
    or   A, A                                          ;; 01:569e $b7
    ret                                                ;; 01:569f $c9

call_01_56a0:
    push AF                                            ;; 01:56a0 $f5
    ld   C, $07                                        ;; 01:56a1 $0e $07
    ld   B, $00                                        ;; 01:56a3 $06 $00
    ld   HL, rIE                                       ;; 01:56a5 $21 $ff $ff
.jr_01_56a8:
    push HL                                            ;; 01:56a8 $e5
    push BC                                            ;; 01:56a9 $c5
    push DE                                            ;; 01:56aa $d5
    call getObjectDirection                            ;; 01:56ab $cd $99 $0c
    cp   A, $ff                                        ;; 01:56ae $fe $ff
    jr   Z, .jr_01_56d4                                ;; 01:56b0 $28 $22
    pop  DE                                            ;; 01:56b2 $d1
    pop  BC                                            ;; 01:56b3 $c1
    push BC                                            ;; 01:56b4 $c5
    push DE                                            ;; 01:56b5 $d5
    call call_01_57de                                  ;; 01:56b6 $cd $de $57
    jr   NZ, .jr_01_56d4                               ;; 01:56b9 $20 $19
    pop  DE                                            ;; 01:56bb $d1
    pop  BC                                            ;; 01:56bc $c1
    push BC                                            ;; 01:56bd $c5
    push DE                                            ;; 01:56be $d5
    call GetObjectX                                    ;; 01:56bf $cd $2d $0c
    pop  DE                                            ;; 01:56c2 $d1
    sub  A, E                                          ;; 01:56c3 $93
    jr   NC, .jr_01_56d5                               ;; 01:56c4 $30 $0f
    cpl                                                ;; 01:56c6 $2f
    inc  A                                             ;; 01:56c7 $3c
    pop  BC                                            ;; 01:56c8 $c1
    call call_01_5626                                  ;; 01:56c9 $cd $26 $56
    jr   C, .jr_01_56d6                                ;; 01:56cc $38 $08
    ld   A, C                                          ;; 01:56ce $79
    pop  BC                                            ;; 01:56cf $c1
    ld   B, A                                          ;; 01:56d0 $47
    ld   C, A                                          ;; 01:56d1 $4f
    jr   .jr_01_56d7                                   ;; 01:56d2 $18 $03
.jr_01_56d4:
    pop  DE                                            ;; 01:56d4 $d1
.jr_01_56d5:
    pop  BC                                            ;; 01:56d5 $c1
.jr_01_56d6:
    pop  HL                                            ;; 01:56d6 $e1
.jr_01_56d7:
    inc  C                                             ;; 01:56d7 $0c
    ld   A, C                                          ;; 01:56d8 $79
    cp   A, $14                                        ;; 01:56d9 $fe $14
    jr   C, .jr_01_56a8                                ;; 01:56db $38 $cb
    pop  AF                                            ;; 01:56dd $f1
    ld   A, B                                          ;; 01:56de $78
    or   A, A                                          ;; 01:56df $b7
    ret                                                ;; 01:56e0 $c9

call_01_56e1:
    push BC                                            ;; 01:56e1 $c5
    push DE                                            ;; 01:56e2 $d5
    ld   HL, SP+9                                      ;; 01:56e3 $f8 $09
    bit  0, [HL]                                       ;; 01:56e5 $cb $46
    jr   NZ, .jr_01_56ec                               ;; 01:56e7 $20 $03
    add  A, A                                          ;; 01:56e9 $87
    jr   .jr_01_56ee                                   ;; 01:56ea $18 $02
.jr_01_56ec:
    srl  A                                             ;; 01:56ec $cb $3f
.jr_01_56ee:
    ld   L, A                                          ;; 01:56ee $6f
    ld   H, $00                                        ;; 01:56ef $26 $00
    call MultiplyHL_by_A                               ;; 01:56f1 $cd $7b $2b
    pop  DE                                            ;; 01:56f4 $d1
    pop  BC                                            ;; 01:56f5 $c1
    push BC                                            ;; 01:56f6 $c5
    push HL                                            ;; 01:56f7 $e5
    push DE                                            ;; 01:56f8 $d5
    call GetObjectX                                    ;; 01:56f9 $cd $2d $0c
    pop  DE                                            ;; 01:56fc $d1
    sub  A, E                                          ;; 01:56fd $93
    jr   NC, .jr_01_5702                               ;; 01:56fe $30 $02
    cpl                                                ;; 01:5700 $2f
    inc  A                                             ;; 01:5701 $3c
.jr_01_5702:
    push DE                                            ;; 01:5702 $d5
    ld   L, A                                          ;; 01:5703 $6f
    ld   H, $00                                        ;; 01:5704 $26 $00
    call MultiplyHL_by_A                               ;; 01:5706 $cd $7b $2b
    pop  DE                                            ;; 01:5709 $d1
    pop  BC                                            ;; 01:570a $c1
    add  HL, BC                                        ;; 01:570b $09
    push DE                                            ;; 01:570c $d5
    push HL                                            ;; 01:570d $e5
    ld   D, H                                          ;; 01:570e $54
    ld   E, L                                          ;; 01:570f $5d
    ld   HL, SP+8                                      ;; 01:5710 $f8 $08
    ld   A, [HL+]                                      ;; 01:5712 $2a
    ld   H, [HL]                                       ;; 01:5713 $66
    ld   L, A                                          ;; 01:5714 $6f
    call sub_HL_DE                                     ;; 01:5715 $cd $ab $2b
    pop  HL                                            ;; 01:5718 $e1
    pop  DE                                            ;; 01:5719 $d1
    pop  BC                                            ;; 01:571a $c1
    ret                                                ;; 01:571b $c9

call_01_571c:
    push AF                                            ;; 01:571c $f5
    ld   C, $07                                        ;; 01:571d $0e $07
    ld   B, $00                                        ;; 01:571f $06 $00
    ld   HL, rIE                                       ;; 01:5721 $21 $ff $ff
.jr_01_5724:
    push HL                                            ;; 01:5724 $e5
    push BC                                            ;; 01:5725 $c5
    push DE                                            ;; 01:5726 $d5
    call getObjectDirection                            ;; 01:5727 $cd $99 $0c
    cp   A, $ff                                        ;; 01:572a $fe $ff
    jr   Z, .jr_01_574e                                ;; 01:572c $28 $20
    pop  DE                                            ;; 01:572e $d1
    pop  BC                                            ;; 01:572f $c1
    push BC                                            ;; 01:5730 $c5
    push DE                                            ;; 01:5731 $d5
    call call_01_57de                                  ;; 01:5732 $cd $de $57
    jr   NZ, .jr_01_574e                               ;; 01:5735 $20 $17
    pop  DE                                            ;; 01:5737 $d1
    pop  BC                                            ;; 01:5738 $c1
    push BC                                            ;; 01:5739 $c5
    push DE                                            ;; 01:573a $d5
    call GetObjectY                                    ;; 01:573b $cd $3e $0c
    pop  DE                                            ;; 01:573e $d1
    sub  A, D                                          ;; 01:573f $92
    jr   C, .jr_01_574f                                ;; 01:5740 $38 $0d
    pop  BC                                            ;; 01:5742 $c1
    call call_01_56e1                                  ;; 01:5743 $cd $e1 $56
    jr   C, .jr_01_5750                                ;; 01:5746 $38 $08
    ld   A, C                                          ;; 01:5748 $79
    pop  BC                                            ;; 01:5749 $c1
    ld   B, A                                          ;; 01:574a $47
    ld   C, A                                          ;; 01:574b $4f
    jr   .jr_01_5751                                   ;; 01:574c $18 $03
.jr_01_574e:
    pop  DE                                            ;; 01:574e $d1
.jr_01_574f:
    pop  BC                                            ;; 01:574f $c1
.jr_01_5750:
    pop  HL                                            ;; 01:5750 $e1
.jr_01_5751:
    inc  C                                             ;; 01:5751 $0c
    ld   A, C                                          ;; 01:5752 $79
    cp   A, $14                                        ;; 01:5753 $fe $14
    jr   C, .jr_01_5724                                ;; 01:5755 $38 $cd
    pop  AF                                            ;; 01:5757 $f1
    ld   A, B                                          ;; 01:5758 $78
    or   A, A                                          ;; 01:5759 $b7
    ret                                                ;; 01:575a $c9

call_01_575b:
    push AF                                            ;; 01:575b $f5
    ld   C, $07                                        ;; 01:575c $0e $07
    ld   B, $00                                        ;; 01:575e $06 $00
    ld   HL, rIE                                       ;; 01:5760 $21 $ff $ff
.jr_01_5763:
    push HL                                            ;; 01:5763 $e5
    push BC                                            ;; 01:5764 $c5
    push DE                                            ;; 01:5765 $d5
    call getObjectDirection                            ;; 01:5766 $cd $99 $0c
    cp   A, $ff                                        ;; 01:5769 $fe $ff
    jr   Z, .jr_01_578f                                ;; 01:576b $28 $22
    pop  DE                                            ;; 01:576d $d1
    pop  BC                                            ;; 01:576e $c1
    push BC                                            ;; 01:576f $c5
    push DE                                            ;; 01:5770 $d5
    call call_01_57de                                  ;; 01:5771 $cd $de $57
    jr   NZ, .jr_01_578f                               ;; 01:5774 $20 $19
    pop  DE                                            ;; 01:5776 $d1
    pop  BC                                            ;; 01:5777 $c1
    push BC                                            ;; 01:5778 $c5
    push DE                                            ;; 01:5779 $d5
    call GetObjectY                                    ;; 01:577a $cd $3e $0c
    pop  DE                                            ;; 01:577d $d1
    sub  A, D                                          ;; 01:577e $92
    jr   NC, .jr_01_5790                               ;; 01:577f $30 $0f
    cpl                                                ;; 01:5781 $2f
    inc  A                                             ;; 01:5782 $3c
    pop  BC                                            ;; 01:5783 $c1
    call call_01_56e1                                  ;; 01:5784 $cd $e1 $56
    jr   C, .jr_01_5791                                ;; 01:5787 $38 $08
    ld   A, C                                          ;; 01:5789 $79
    pop  BC                                            ;; 01:578a $c1
    ld   B, A                                          ;; 01:578b $47
    ld   C, A                                          ;; 01:578c $4f
    jr   .jr_01_5792                                   ;; 01:578d $18 $03
.jr_01_578f:
    pop  DE                                            ;; 01:578f $d1
.jr_01_5790:
    pop  BC                                            ;; 01:5790 $c1
.jr_01_5791:
    pop  HL                                            ;; 01:5791 $e1
.jr_01_5792:
    inc  C                                             ;; 01:5792 $0c
    ld   A, C                                          ;; 01:5793 $79
    cp   A, $14                                        ;; 01:5794 $fe $14
    jr   C, .jr_01_5763                                ;; 01:5796 $38 $cb
    pop  AF                                            ;; 01:5798 $f1
    ld   A, B                                          ;; 01:5799 $78
    or   A, A                                          ;; 01:579a $b7
    ret                                                ;; 01:579b $c9

call_01_579c:
    push BC                                            ;; 01:579c $c5
    call GetObjectY                                    ;; 01:579d $cd $3e $0c
    pop  BC                                            ;; 01:57a0 $c1
    ld   D, A                                          ;; 01:57a1 $57
    push BC                                            ;; 01:57a2 $c5
    push DE                                            ;; 01:57a3 $d5
    call GetObjectX                                    ;; 01:57a4 $cd $2d $0c
    pop  DE                                            ;; 01:57a7 $d1
    pop  BC                                            ;; 01:57a8 $c1
    ld   E, A                                          ;; 01:57a9 $5f
    push DE                                            ;; 01:57aa $d5
    call getObjectDirection                            ;; 01:57ab $cd $99 $0c
    pop  DE                                            ;; 01:57ae $d1
    ld   C, A                                          ;; 01:57af $4f
    ld   A, $01                                        ;; 01:57b0 $3e $01
    bit  0, C                                          ;; 01:57b2 $cb $41
    jr   NZ, .jr_01_57c6                               ;; 01:57b4 $20 $10
    bit  1, C                                          ;; 01:57b6 $cb $49
    jr   NZ, .jr_01_57ce                               ;; 01:57b8 $20 $14
    bit  2, C                                          ;; 01:57ba $cb $51
    jr   NZ, .jr_01_57d6                               ;; 01:57bc $20 $18
    call call_01_571c                                  ;; 01:57be $cd $1c $57
    ret  NZ                                            ;; 01:57c1 $c0
    call call_01_575b                                  ;; 01:57c2 $cd $5b $57
    ret                                                ;; 01:57c5 $c9
.jr_01_57c6:
    call call_01_5661                                  ;; 01:57c6 $cd $61 $56
    ret  NZ                                            ;; 01:57c9 $c0
    call call_01_56a0                                  ;; 01:57ca $cd $a0 $56
    ret                                                ;; 01:57cd $c9
.jr_01_57ce:
    call call_01_56a0                                  ;; 01:57ce $cd $a0 $56
    ret  NZ                                            ;; 01:57d1 $c0
    call call_01_5661                                  ;; 01:57d2 $cd $61 $56
    ret                                                ;; 01:57d5 $c9
.jr_01_57d6:
    call call_01_575b                                  ;; 01:57d6 $cd $5b $57
    ret  NZ                                            ;; 01:57d9 $c0
    call call_01_571c                                  ;; 01:57da $cd $1c $57
    ret                                                ;; 01:57dd $c9

call_01_57de:
    call call_00_0c6d                                  ;; 01:57de $cd $6d $0c
    and  A, $f0                                        ;; 01:57e1 $e6 $f0
    cp   A, $90                                        ;; 01:57e3 $fe $90
    ret  Z                                             ;; 01:57e5 $c8
    cp   A, $a0                                        ;; 01:57e6 $fe $a0
    ret  Z                                             ;; 01:57e8 $c8
    cp   A, $20                                        ;; 01:57e9 $fe $20
    ret                                                ;; 01:57eb $c9

call_01_57ec:
    push BC                                            ;; 01:57ec $c5
    call call_01_53a0                                  ;; 01:57ed $cd $a0 $53
    jr   Z, .jr_01_57f4                                ;; 01:57f0 $28 $02
    pop  BC                                            ;; 01:57f2 $c1
    ret                                                ;; 01:57f3 $c9
.jr_01_57f4:
    push BC                                            ;; 01:57f4 $c5
    ld   C, $04                                        ;; 01:57f5 $0e $04
    call call_01_579c                                  ;; 01:57f7 $cd $9c $57
    jr   Z, .jr_01_5818                                ;; 01:57fa $28 $1c
    ld   [wCF5D], A                                    ;; 01:57fc $ea $5d $cf
    pop  BC                                            ;; 01:57ff $c1
    push BC                                            ;; 01:5800 $c5
    call getObjectDirection                            ;; 01:5801 $cd $99 $0c
    and  A, $0f                                        ;; 01:5804 $e6 $0f
    ld   C, A                                          ;; 01:5806 $4f
    swap A                                             ;; 01:5807 $cb $37
    or   A, C                                          ;; 01:5809 $b1
    pop  BC                                            ;; 01:580a $c1
    ld   HL, wCF48                                     ;; 01:580b $21 $48 $cf
    add  HL, BC                                        ;; 01:580e $09
    ld   [HL], A                                       ;; 01:580f $77
    ld   HL, wCEF0                                     ;; 01:5810 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5813 $09
    ld   [HL], $05                                     ;; 01:5814 $36 $05
    pop  BC                                            ;; 01:5816 $c1
    ret                                                ;; 01:5817 $c9
.jr_01_5818:
    pop  BC                                            ;; 01:5818 $c1
    call call_01_59d0                                  ;; 01:5819 $cd $d0 $59
    pop  BC                                            ;; 01:581c $c1
    ret                                                ;; 01:581d $c9

call_01_581e:
    push BC                                            ;; 01:581e $c5
    ld   A, $07                                        ;; 01:581f $3e $07
    sub  A, B                                          ;; 01:5821 $90
    ld   [wCF5A], A                                    ;; 01:5822 $ea $5a $cf
    ld   C, A                                          ;; 01:5825 $4f
    ld   B, $00                                        ;; 01:5826 $06 $00
    ld   HL, wCF48                                     ;; 01:5828 $21 $48 $cf
    add  HL, BC                                        ;; 01:582b $09
    ld   A, [HL]                                       ;; 01:582c $7e
    swap A                                             ;; 01:582d $cb $37
    and  A, $0f                                        ;; 01:582f $e6 $0f
    ld   [HL], A                                       ;; 01:5831 $77
    push HL                                            ;; 01:5832 $e5
    push BC                                            ;; 01:5833 $c5
    call GetObjectY                                    ;; 01:5834 $cd $3e $0c
    srl  A                                             ;; 01:5837 $cb $3f
    ld   D, A                                          ;; 01:5839 $57
    pop  BC                                            ;; 01:583a $c1
    push BC                                            ;; 01:583b $c5
    push DE                                            ;; 01:583c $d5
    call GetObjectX                                    ;; 01:583d $cd $2d $0c
    srl  A                                             ;; 01:5840 $cb $3f
    pop  DE                                            ;; 01:5842 $d1
    ld   E, A                                          ;; 01:5843 $5f
    push DE                                            ;; 01:5844 $d5
    ld   A, [wCF5D]                                    ;; 01:5845 $fa $5d $cf
    ld   C, A                                          ;; 01:5848 $4f
    call getObjectDirection                            ;; 01:5849 $cd $99 $0c
    cp   A, $ff                                        ;; 01:584c $fe $ff
    jp   Z, .jp_01_58fb                                ;; 01:584e $ca $fb $58
    ld   A, [wCF5D]                                    ;; 01:5851 $fa $5d $cf
    ld   C, A                                          ;; 01:5854 $4f
    call GetObjectY                                    ;; 01:5855 $cd $3e $0c
    srl  A                                             ;; 01:5858 $cb $3f
    pop  DE                                            ;; 01:585a $d1
    sub  A, D                                          ;; 01:585b $92
    ld   D, A                                          ;; 01:585c $57
    push DE                                            ;; 01:585d $d5
    ld   A, [wCF5D]                                    ;; 01:585e $fa $5d $cf
    ld   C, A                                          ;; 01:5861 $4f
    call GetObjectX                                    ;; 01:5862 $cd $2d $0c
    srl  A                                             ;; 01:5865 $cb $3f
    pop  DE                                            ;; 01:5867 $d1
    sub  A, E                                          ;; 01:5868 $93
    ld   E, A                                          ;; 01:5869 $5f
    pop  BC                                            ;; 01:586a $c1
    pop  HL                                            ;; 01:586b $e1
    ld   A, [HL]                                       ;; 01:586c $7e
    bit  0, A                                          ;; 01:586d $cb $47
    jr   NZ, .jr_01_5888                               ;; 01:586f $20 $17
    bit  1, A                                          ;; 01:5871 $cb $4f
    jr   NZ, .jr_01_5898                               ;; 01:5873 $20 $23
    bit  2, A                                          ;; 01:5875 $cb $57
    jr   NZ, .jr_01_58a8                               ;; 01:5877 $20 $2f
    ld   A, D                                          ;; 01:5879 $7a
    ld   D, E                                          ;; 01:587a $53
    ld   E, A                                          ;; 01:587b $5f
    bit  7, D                                          ;; 01:587c $cb $7a
    jr   Z, .jr_01_5884                                ;; 01:587e $28 $04
    set  5, [HL]                                       ;; 01:5880 $cb $ee
    jr   .jr_01_58bb                                   ;; 01:5882 $18 $37
.jr_01_5884:
    set  4, [HL]                                       ;; 01:5884 $cb $e6
    jr   .jr_01_58bb                                   ;; 01:5886 $18 $33
.jr_01_5888:
    ld   A, D                                          ;; 01:5888 $7a
    cpl                                                ;; 01:5889 $2f
    inc  A                                             ;; 01:588a $3c
    ld   D, A                                          ;; 01:588b $57
    bit  7, D                                          ;; 01:588c $cb $7a
    jr   Z, .jr_01_5894                                ;; 01:588e $28 $04
    set  7, [HL]                                       ;; 01:5890 $cb $fe
    jr   .jr_01_58bb                                   ;; 01:5892 $18 $27
.jr_01_5894:
    set  6, [HL]                                       ;; 01:5894 $cb $f6
    jr   .jr_01_58bb                                   ;; 01:5896 $18 $23
.jr_01_5898:
    ld   A, E                                          ;; 01:5898 $7b
    cpl                                                ;; 01:5899 $2f
    inc  A                                             ;; 01:589a $3c
    ld   E, A                                          ;; 01:589b $5f
    bit  7, D                                          ;; 01:589c $cb $7a
    jr   Z, .jr_01_58a4                                ;; 01:589e $28 $04
    set  6, [HL]                                       ;; 01:58a0 $cb $f6
    jr   .jr_01_58bb                                   ;; 01:58a2 $18 $17
.jr_01_58a4:
    set  7, [HL]                                       ;; 01:58a4 $cb $fe
    jr   .jr_01_58bb                                   ;; 01:58a6 $18 $13
.jr_01_58a8:
    ld   A, E                                          ;; 01:58a8 $7b
    cpl                                                ;; 01:58a9 $2f
    inc  A                                             ;; 01:58aa $3c
    ld   E, D                                          ;; 01:58ab $5a
    ld   D, A                                          ;; 01:58ac $57
    ld   A, E                                          ;; 01:58ad $7b
    cpl                                                ;; 01:58ae $2f
    inc  A                                             ;; 01:58af $3c
    ld   E, A                                          ;; 01:58b0 $5f
    bit  7, D                                          ;; 01:58b1 $cb $7a
    jr   Z, .jr_01_58b9                                ;; 01:58b3 $28 $04
    set  4, [HL]                                       ;; 01:58b5 $cb $e6
    jr   .jr_01_58bb                                   ;; 01:58b7 $18 $02
.jr_01_58b9:
    set  5, [HL]                                       ;; 01:58b9 $cb $ee
.jr_01_58bb:
    ld   A, D                                          ;; 01:58bb $7a
    bit  7, A                                          ;; 01:58bc $cb $7f
    jr   Z, .jr_01_58c2                                ;; 01:58be $28 $02
    cpl                                                ;; 01:58c0 $2f
    inc  A                                             ;; 01:58c1 $3c
.jr_01_58c2:
    cp   A, E                                          ;; 01:58c2 $bb
    jr   NC, .jr_01_58d4                               ;; 01:58c3 $30 $0f
    bit  7, E                                          ;; 01:58c5 $cb $7b
    jr   NZ, .jr_01_58cd                               ;; 01:58c7 $20 $04
    srl  A                                             ;; 01:58c9 $cb $3f
    jr   .jr_01_58d5                                   ;; 01:58cb $18 $08
.jr_01_58cd:
    ld   A, E                                          ;; 01:58cd $7b
    cpl                                                ;; 01:58ce $2f
    inc  A                                             ;; 01:58cf $3c
    srl  A                                             ;; 01:58d0 $cb $3f
    jr   .jr_01_58d5                                   ;; 01:58d2 $18 $01
.jr_01_58d4:
    ld   A, E                                          ;; 01:58d4 $7b
.jr_01_58d5:
    srl  A                                             ;; 01:58d5 $cb $3f
    srl  A                                             ;; 01:58d7 $cb $3f
    ld   [wCF5E], A                                    ;; 01:58d9 $ea $5e $cf
    jr   NZ, .jr_01_58e6                               ;; 01:58dc $20 $08
    ld   A, [HL]                                       ;; 01:58de $7e
    and  A, $0f                                        ;; 01:58df $e6 $0f
    ld   E, A                                          ;; 01:58e1 $5f
    swap A                                             ;; 01:58e2 $cb $37
    or   A, E                                          ;; 01:58e4 $b3
    ld   [HL], A                                       ;; 01:58e5 $77
.jr_01_58e6:
    ld   HL, wCEF0                                     ;; 01:58e6 $21 $f0 $ce
    add  HL, BC                                        ;; 01:58e9 $09
    ld   [HL], $06                                     ;; 01:58ea $36 $06
    ld   HL, wCEF8                                     ;; 01:58ec $21 $f8 $ce
    add  HL, BC                                        ;; 01:58ef $09
    ld   [HL], $00                                     ;; 01:58f0 $36 $00
    ld   HL, wCF00                                     ;; 01:58f2 $21 $00 $cf
    add  HL, BC                                        ;; 01:58f5 $09
    ld   [HL], $01                                     ;; 01:58f6 $36 $01
    pop  BC                                            ;; 01:58f8 $c1
    inc  C                                             ;; 01:58f9 $0c
    ret                                                ;; 01:58fa $c9
.jp_01_58fb:
    pop  DE                                            ;; 01:58fb $d1
    pop  BC                                            ;; 01:58fc $c1
    call call_01_59d0                                  ;; 01:58fd $cd $d0 $59
    pop  HL                                            ;; 01:5900 $e1
    pop  BC                                            ;; 01:5901 $c1
    ret                                                ;; 01:5902 $c9

call_01_5903:
    push BC                                            ;; 01:5903 $c5
    ld   A, $07                                        ;; 01:5904 $3e $07
    sub  A, B                                          ;; 01:5906 $90
    ld   [wCF5A], A                                    ;; 01:5907 $ea $5a $cf
    ld   C, A                                          ;; 01:590a $4f
    ld   B, $00                                        ;; 01:590b $06 $00
    ld   HL, wCF00                                     ;; 01:590d $21 $00 $cf
    add  HL, BC                                        ;; 01:5910 $09
    dec  [HL]                                          ;; 01:5911 $35
    jp   NZ, .jp_01_59be                               ;; 01:5912 $c2 $be $59
    ld   [HL], $02                                     ;; 01:5915 $36 $02
    ld   A, [wCF5E]                                    ;; 01:5917 $fa $5e $cf
    add  A, A                                          ;; 01:591a $87
    ld   E, A                                          ;; 01:591b $5f
    ld   D, $00                                        ;; 01:591c $16 $00
    ld   HL, data_01_5edd                              ;; 01:591e $21 $dd $5e
    add  HL, DE                                        ;; 01:5921 $19
    ld   E, [HL]                                       ;; 01:5922 $5e
    inc  HL                                            ;; 01:5923 $23
    ld   D, [HL]                                       ;; 01:5924 $56
    ld   HL, wCEF8                                     ;; 01:5925 $21 $f8 $ce
    add  HL, BC                                        ;; 01:5928 $09
    ld   A, [HL]                                       ;; 01:5929 $7e
    inc  [HL]                                          ;; 01:592a $34
    add  A, A                                          ;; 01:592b $87
    ld   L, A                                          ;; 01:592c $6f
    ld   H, $00                                        ;; 01:592d $26 $00
    add  HL, DE                                        ;; 01:592f $19
    ld   E, [HL]                                       ;; 01:5930 $5e
    inc  HL                                            ;; 01:5931 $23
    ld   D, [HL]                                       ;; 01:5932 $56
    inc  HL                                            ;; 01:5933 $23
    push HL                                            ;; 01:5934 $e5
    ld   HL, wCF48                                     ;; 01:5935 $21 $48 $cf
    add  HL, BC                                        ;; 01:5938 $09
    ld   A, [HL]                                       ;; 01:5939 $7e
    bit  0, A                                          ;; 01:593a $cb $47
    jr   NZ, .jr_01_5958                               ;; 01:593c $20 $1a
    bit  1, A                                          ;; 01:593e $cb $4f
    jr   NZ, .jr_01_5966                               ;; 01:5940 $20 $24
    bit  2, A                                          ;; 01:5942 $cb $57
    jr   NZ, .jr_01_597c                               ;; 01:5944 $20 $36
    swap A                                             ;; 01:5946 $cb $37
    bit  0, A                                          ;; 01:5948 $cb $47
    jr   NZ, .jr_01_5953                               ;; 01:594a $20 $07
    ld   A, D                                          ;; 01:594c $7a
    cpl                                                ;; 01:594d $2f
    inc  A                                             ;; 01:594e $3c
    ld   D, E                                          ;; 01:594f $53
    ld   E, A                                          ;; 01:5950 $5f
    jr   .jr_01_5992                                   ;; 01:5951 $18 $3f
.jr_01_5953:
    ld   A, D                                          ;; 01:5953 $7a
    ld   D, E                                          ;; 01:5954 $53
    ld   E, A                                          ;; 01:5955 $5f
    jr   .jr_01_5992                                   ;; 01:5956 $18 $3a
.jr_01_5958:
    swap A                                             ;; 01:5958 $cb $37
    bit  2, A                                          ;; 01:595a $cb $57
    jr   NZ, .jr_01_5960                               ;; 01:595c $20 $02
    jr   .jr_01_5992                                   ;; 01:595e $18 $32
.jr_01_5960:
    ld   A, D                                          ;; 01:5960 $7a
    cpl                                                ;; 01:5961 $2f
    inc  A                                             ;; 01:5962 $3c
    ld   D, A                                          ;; 01:5963 $57
    jr   .jr_01_5992                                   ;; 01:5964 $18 $2c
.jr_01_5966:
    swap A                                             ;; 01:5966 $cb $37
    bit  3, A                                          ;; 01:5968 $cb $5f
    jr   NZ, .jr_01_5976                               ;; 01:596a $20 $0a
    ld   A, D                                          ;; 01:596c $7a
    cpl                                                ;; 01:596d $2f
    inc  A                                             ;; 01:596e $3c
    ld   D, A                                          ;; 01:596f $57
    ld   A, E                                          ;; 01:5970 $7b
    cpl                                                ;; 01:5971 $2f
    inc  A                                             ;; 01:5972 $3c
    ld   E, A                                          ;; 01:5973 $5f
    jr   .jr_01_5992                                   ;; 01:5974 $18 $1c
.jr_01_5976:
    ld   A, E                                          ;; 01:5976 $7b
    cpl                                                ;; 01:5977 $2f
    inc  A                                             ;; 01:5978 $3c
    ld   E, A                                          ;; 01:5979 $5f
    jr   .jr_01_5992                                   ;; 01:597a $18 $16
.jr_01_597c:
    swap A                                             ;; 01:597c $cb $37
    bit  1, A                                          ;; 01:597e $cb $4f
    jr   NZ, .jr_01_5989                               ;; 01:5980 $20 $07
    ld   A, E                                          ;; 01:5982 $7b
    cpl                                                ;; 01:5983 $2f
    inc  A                                             ;; 01:5984 $3c
    ld   E, D                                          ;; 01:5985 $5a
    ld   D, A                                          ;; 01:5986 $57
    jr   .jr_01_5992                                   ;; 01:5987 $18 $09
.jr_01_5989:
    ld   A, E                                          ;; 01:5989 $7b
    cpl                                                ;; 01:598a $2f
    inc  A                                             ;; 01:598b $3c
    ld   E, D                                          ;; 01:598c $5a
    ld   D, A                                          ;; 01:598d $57
    ld   A, E                                          ;; 01:598e $7b
    cpl                                                ;; 01:598f $2f
    inc  A                                             ;; 01:5990 $3c
    ld   E, A                                          ;; 01:5991 $5f
.jr_01_5992:
    ld   A, [HL]                                       ;; 01:5992 $7e
    and  A, $0f                                        ;; 01:5993 $e6 $0f
    or   A, $10                                        ;; 01:5995 $f6 $10
    push BC                                            ;; 01:5997 $c5
    call call_00_08d4                                  ;; 01:5998 $cd $d4 $08
    pop  BC                                            ;; 01:599b $c1
    ld   A, [wVideoWY]                                 ;; 01:599c $fa $a9 $c0
    inc  A                                             ;; 01:599f $3c
    ld   B, A                                          ;; 01:59a0 $47
    push BC                                            ;; 01:59a1 $c5
    call GetObjectY                                    ;; 01:59a2 $cd $3e $0c
    pop  BC                                            ;; 01:59a5 $c1
    sub  A, $08                                        ;; 01:59a6 $d6 $08
    cp   A, B                                          ;; 01:59a8 $b8
    jr   NC, .jr_01_59ca                               ;; 01:59a9 $30 $1f
    ld   B, $00                                        ;; 01:59ab $06 $00
    push BC                                            ;; 01:59ad $c5
    call GetObjectX                                    ;; 01:59ae $cd $2d $0c
    pop  BC                                            ;; 01:59b1 $c1
    cp   A, $a1                                        ;; 01:59b2 $fe $a1
    jr   NC, .jr_01_59ca                               ;; 01:59b4 $30 $14
    pop  HL                                            ;; 01:59b6 $e1
    ld   E, [HL]                                       ;; 01:59b7 $5e
    inc  HL                                            ;; 01:59b8 $23
    ld   D, [HL]                                       ;; 01:59b9 $56
    ld   A, D                                          ;; 01:59ba $7a
    or   A, E                                          ;; 01:59bb $b3
    jr   Z, .jr_01_59c1                                ;; 01:59bc $28 $03
.jp_01_59be:
    pop  BC                                            ;; 01:59be $c1
    inc  C                                             ;; 01:59bf $0c
    ret                                                ;; 01:59c0 $c9
.jr_01_59c1:
    ld   HL, wCEF0                                     ;; 01:59c1 $21 $f0 $ce
    add  HL, BC                                        ;; 01:59c4 $09
    ld   [HL], $05                                     ;; 01:59c5 $36 $05
    pop  BC                                            ;; 01:59c7 $c1
    inc  C                                             ;; 01:59c8 $0c
    ret                                                ;; 01:59c9 $c9
.jr_01_59ca:
    pop  HL                                            ;; 01:59ca $e1
    call call_01_59d0                                  ;; 01:59cb $cd $d0 $59
    pop  BC                                            ;; 01:59ce $c1
    ret                                                ;; 01:59cf $c9

call_01_59d0:
    push BC                                            ;; 01:59d0 $c5
    ld   A, $40                                        ;; 01:59d1 $3e $40
    call call_00_0c86                                  ;; 01:59d3 $cd $86 $0c
    pop  BC                                            ;; 01:59d6 $c1
    ld   DE, $f8                                       ;; 01:59d7 $11 $f8 $00
    ld   B, $00                                        ;; 01:59da $06 $00
    ld   A, $08                                        ;; 01:59dc $3e $08
    push BC                                            ;; 01:59de $c5
    call updateObjectPosition                          ;; 01:59df $cd $11 $06
    pop  BC                                            ;; 01:59e2 $c1
    ld   HL, wCEF0                                     ;; 01:59e3 $21 $f0 $ce
    add  HL, BC                                        ;; 01:59e6 $09
    ld   [HL], $00                                     ;; 01:59e7 $36 $00
    ret                                                ;; 01:59e9 $c9

call_01_59ea:
    push AF                                            ;; 01:59ea $f5
    ld   HL, wCF08                                     ;; 01:59eb $21 $08 $cf
    add  HL, BC                                        ;; 01:59ee $09
    add  HL, BC                                        ;; 01:59ef $09
    ld   A, [HL+]                                      ;; 01:59f0 $2a
    ld   H, [HL]                                       ;; 01:59f1 $66
    ld   L, A                                          ;; 01:59f2 $6f
    inc  HL                                            ;; 01:59f3 $23
    inc  HL                                            ;; 01:59f4 $23
    ld   A, [HL]                                       ;; 01:59f5 $7e
    swap A                                             ;; 01:59f6 $cb $37
    add  A, A                                          ;; 01:59f8 $87
    add  A, A                                          ;; 01:59f9 $87
    ld   B, A                                          ;; 01:59fa $47
    pop  AF                                            ;; 01:59fb $f1
    push BC                                            ;; 01:59fc $c5
    ld   B, A                                          ;; 01:59fd $47
    ld   DE, $04                                       ;; 01:59fe $11 $04 $00
    add  HL, DE                                        ;; 01:5a01 $19
    ld   E, [HL]                                       ;; 01:5a02 $5e
    inc  HL                                            ;; 01:5a03 $23
    ld   D, [HL]                                       ;; 01:5a04 $56
    inc  HL                                            ;; 01:5a05 $23
    ld   A, [HL+]                                      ;; 01:5a06 $2a
    ld   H, [HL]                                       ;; 01:5a07 $66
    ld   L, A                                          ;; 01:5a08 $6f
    ld   A, B                                          ;; 01:5a09 $78
    pop  BC                                            ;; 01:5a0a $c1
    push DE                                            ;; 01:5a0b $d5
    push BC                                            ;; 01:5a0c $c5
    ld   C, $00                                        ;; 01:5a0d $0e $00
    ld   B, A                                          ;; 01:5a0f $47
    bit  7, A                                          ;; 01:5a10 $cb $7f
    jr   NZ, .jr_01_5a1c                               ;; 01:5a12 $20 $08
    ld   C, $04                                        ;; 01:5a14 $0e $04
    and  A, $03                                        ;; 01:5a16 $e6 $03
    jr   NZ, .jr_01_5a1c                               ;; 01:5a18 $20 $02
    ld   C, $08                                        ;; 01:5a1a $0e $08
.jr_01_5a1c:
    and  A, $03                                        ;; 01:5a1c $e6 $03
    bit  2, B                                          ;; 01:5a1e $cb $50
    jr   Z, .jr_01_5a24                                ;; 01:5a20 $28 $02
    ld   A, $03                                        ;; 01:5a22 $3e $03
.jr_01_5a24:
    bit  3, B                                          ;; 01:5a24 $cb $58
    jr   Z, .jr_01_5a2a                                ;; 01:5a26 $28 $02
    ld   A, $04                                        ;; 01:5a28 $3e $04
.jr_01_5a2a:
    dec  A                                             ;; 01:5a2a $3d
    ld   B, A                                          ;; 01:5a2b $47
    add  A, A                                          ;; 01:5a2c $87
    add  A, B                                          ;; 01:5a2d $80
    ld   B, $00                                        ;; 01:5a2e $06 $00
    add  HL, BC                                        ;; 01:5a30 $09
    pop  DE                                            ;; 01:5a31 $d1
    push HL                                            ;; 01:5a32 $e5
    push DE                                            ;; 01:5a33 $d5
    ld   E, A                                          ;; 01:5a34 $5f
    ld   D, $00                                        ;; 01:5a35 $16 $00
    ld   HL, $2e99                                     ;; 01:5a37 $21 $99 $2e
    add  HL, DE                                        ;; 01:5a3a $19
    pop  DE                                            ;; 01:5a3b $d1
    push DE                                            ;; 01:5a3c $d5
    push HL                                            ;; 01:5a3d $e5
    ld   E, D                                          ;; 01:5a3e $5a
    ld   D, $00                                        ;; 01:5a3f $16 $00
    swap E                                             ;; 01:5a41 $cb $33
    srl  E                                             ;; 01:5a43 $cb $3b
    srl  E                                             ;; 01:5a45 $cb $3b
    ld   HL, wD394                                     ;; 01:5a47 $21 $94 $d3
    add  HL, DE                                        ;; 01:5a4a $19
    ld   A, [HL]                                       ;; 01:5a4b $7e
    cp   A, C                                          ;; 01:5a4c $b9
    jr   Z, .jr_01_5a66                                ;; 01:5a4d $28 $17
    ld   [HL], C                                       ;; 01:5a4f $71
    pop  HL                                            ;; 01:5a50 $e1
    ld   A, [HL]                                       ;; 01:5a51 $7e
    pop  BC                                            ;; 01:5a52 $c1
    pop  HL                                            ;; 01:5a53 $e1
    pop  DE                                            ;; 01:5a54 $d1
    push AF                                            ;; 01:5a55 $f5
    push BC                                            ;; 01:5a56 $c5
    push DE                                            ;; 01:5a57 $d5
    call call_00_1a76                                  ;; 01:5a58 $cd $76 $1a
    pop  DE                                            ;; 01:5a5b $d1
    pop  BC                                            ;; 01:5a5c $c1
    ld   A, $20                                        ;; 01:5a5d $3e $20
    add  A, B                                          ;; 01:5a5f $80
    ld   B, A                                          ;; 01:5a60 $47
    pop  AF                                            ;; 01:5a61 $f1
    call call_00_1a76                                  ;; 01:5a62 $cd $76 $1a
    ret                                                ;; 01:5a65 $c9
.jr_01_5a66:
    pop  DE                                            ;; 01:5a66 $d1
    pop  DE                                            ;; 01:5a67 $d1
    pop  DE                                            ;; 01:5a68 $d1
    pop  DE                                            ;; 01:5a69 $d1
    ret                                                ;; 01:5a6a $c9

call_01_5a6b:
    ld   E, A                                          ;; 01:5a6b $5f
    ld   D, $00                                        ;; 01:5a6c $16 $00
    ld   HL, data_01_5dcd                              ;; 01:5a6e $21 $cd $5d
    add  HL, DE                                        ;; 01:5a71 $19
    ld   A, [HL]                                       ;; 01:5a72 $7e
    ld   [wCF58], A                                    ;; 01:5a73 $ea $58 $cf
    ret                                                ;; 01:5a76 $c9

call_01_5a77:
    ld   E, A                                          ;; 01:5a77 $5f
    ld   D, $00                                        ;; 01:5a78 $16 $00
    ld   HL, data_01_5ddd                              ;; 01:5a7a $21 $dd $5d
    add  HL, DE                                        ;; 01:5a7d $19
    ld   A, [HL]                                       ;; 01:5a7e $7e
    ld   [wCF59], A                                    ;; 01:5a7f $ea $59 $cf
    ret                                                ;; 01:5a82 $c9

call_01_5a83:
    res  7, E                                          ;; 01:5a83 $cb $bb
    push DE                                            ;; 01:5a85 $d5
    call call_00_3efb                                  ;; 01:5a86 $cd $fb $3e
    jr   NZ, jr_01_5a95                                ;; 01:5a89 $20 $0a
    pop  DE                                            ;; 01:5a8b $d1

call_01_5a8c:
    set  7, E                                          ;; 01:5a8c $cb $fb
    push DE                                            ;; 01:5a8e $d5
    ld   A, [wCF62]                                    ;; 01:5a8f $fa $62 $cf
    call call_00_2fd4                                  ;; 01:5a92 $cd $d4 $2f

jr_01_5a95:
    call call_00_02ab                                  ;; 01:5a95 $cd $ab $02
    bit  0, A                                          ;; 01:5a98 $cb $47
    jr   NZ, .jr_01_5aab                               ;; 01:5a9a $20 $0f
    bit  1, A                                          ;; 01:5a9c $cb $4f
    jr   NZ, .jr_01_5ac5                               ;; 01:5a9e $20 $25
    bit  2, A                                          ;; 01:5aa0 $cb $57
    jr   NZ, .jr_01_5adf                               ;; 01:5aa2 $20 $3b
    bit  3, A                                          ;; 01:5aa4 $cb $5f
    jp   NZ, .jp_01_5af9                               ;; 01:5aa6 $c2 $f9 $5a
    pop  DE                                            ;; 01:5aa9 $d1
    ret                                                ;; 01:5aaa $c9
.jr_01_5aab:
    pop  DE                                            ;; 01:5aab $d1
    ld   A, D                                          ;; 01:5aac $7a
    bit  7, E                                          ;; 01:5aad $cb $7b
    jr   NZ, .jr_01_5abb                               ;; 01:5aaf $20 $0a
    ld   C, $0a                                        ;; 01:5ab1 $0e $0a
    and  A, $0f                                        ;; 01:5ab3 $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5ab5 $20 $5a
    ld   C, $12                                        ;; 01:5ab7 $0e $12
    jr   .jr_01_5b11                                   ;; 01:5ab9 $18 $56
.jr_01_5abb:
    ld   C, $1a                                        ;; 01:5abb $0e $1a
    and  A, $0f                                        ;; 01:5abd $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5abf $20 $50
    ld   C, $22                                        ;; 01:5ac1 $0e $22
    jr   .jr_01_5b11                                   ;; 01:5ac3 $18 $4c
.jr_01_5ac5:
    pop  DE                                            ;; 01:5ac5 $d1
    ld   A, D                                          ;; 01:5ac6 $7a
    bit  7, E                                          ;; 01:5ac7 $cb $7b
    jr   NZ, .jr_01_5ad5                               ;; 01:5ac9 $20 $0a
    ld   C, $0c                                        ;; 01:5acb $0e $0c
    and  A, $0f                                        ;; 01:5acd $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5acf $20 $40
    ld   C, $14                                        ;; 01:5ad1 $0e $14
    jr   .jr_01_5b11                                   ;; 01:5ad3 $18 $3c
.jr_01_5ad5:
    ld   C, $1c                                        ;; 01:5ad5 $0e $1c
    and  A, $0f                                        ;; 01:5ad7 $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5ad9 $20 $36
    ld   C, $24                                        ;; 01:5adb $0e $24
    jr   .jr_01_5b11                                   ;; 01:5add $18 $32
.jr_01_5adf:
    pop  DE                                            ;; 01:5adf $d1
    ld   A, D                                          ;; 01:5ae0 $7a
    bit  7, E                                          ;; 01:5ae1 $cb $7b
    jr   NZ, .jr_01_5aef                               ;; 01:5ae3 $20 $0a
    ld   C, $0e                                        ;; 01:5ae5 $0e $0e
    and  A, $0f                                        ;; 01:5ae7 $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5ae9 $20 $26
    ld   C, $16                                        ;; 01:5aeb $0e $16
    jr   .jr_01_5b11                                   ;; 01:5aed $18 $22
.jr_01_5aef:
    ld   C, $1e                                        ;; 01:5aef $0e $1e
    and  A, $0f                                        ;; 01:5af1 $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5af3 $20 $1c
    ld   C, $26                                        ;; 01:5af5 $0e $26
    jr   .jr_01_5b11                                   ;; 01:5af7 $18 $18
.jp_01_5af9:
    pop  DE                                            ;; 01:5af9 $d1
    ld   A, D                                          ;; 01:5afa $7a
    bit  7, E                                          ;; 01:5afb $cb $7b
    jr   NZ, .jr_01_5b09                               ;; 01:5afd $20 $0a
    ld   C, $10                                        ;; 01:5aff $0e $10
    and  A, $0f                                        ;; 01:5b01 $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5b03 $20 $0c
    ld   C, $18                                        ;; 01:5b05 $0e $18
    jr   .jr_01_5b11                                   ;; 01:5b07 $18 $08
.jr_01_5b09:
    ld   C, $20                                        ;; 01:5b09 $0e $20
    and  A, $0f                                        ;; 01:5b0b $e6 $0f
    jr   NZ, .jr_01_5b11                               ;; 01:5b0d $20 $02
    ld   C, $28                                        ;; 01:5b0f $0e $28
.jr_01_5b11:
    push BC                                            ;; 01:5b11 $c5
    bit  4, E                                          ;; 01:5b12 $cb $63
    jr   NZ, .jr_01_5b26                               ;; 01:5b14 $20 $10
    call call_00_315f                                  ;; 01:5b16 $cd $5f $31
    jr   C, .jr_01_5b43                                ;; 01:5b19 $38 $28
    call call_00_311d                                  ;; 01:5b1b $cd $1d $31
    ld   [wCF63], A                                    ;; 01:5b1e $ea $63 $cf
    ld   A, [wCF59]                                    ;; 01:5b21 $fa $59 $cf
    jr   .jr_01_5b2f                                   ;; 01:5b24 $18 $09
.jr_01_5b26:
    call call_00_3129                                  ;; 01:5b26 $cd $29 $31
    ld   [wCF63], A                                    ;; 01:5b29 $ea $63 $cf
    ld   A, [wCF58]                                    ;; 01:5b2c $fa $58 $cf
.jr_01_5b2f:
    pop  BC                                            ;; 01:5b2f $c1
    call call_01_5b6d                                  ;; 01:5b30 $cd $6d $5b
    ld   HL, wCEF0                                     ;; 01:5b33 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5b36 $09
    ld   [HL], $01                                     ;; 01:5b37 $36 $01
    ld   B, A                                          ;; 01:5b39 $47
    ld   C, $00                                        ;; 01:5b3a $0e $00
    call call_01_54d5                                  ;; 01:5b3c $cd $d5 $54
    ld   A, C                                          ;; 01:5b3f $79
    or   A, $00                                        ;; 01:5b40 $f6 $00
    ret                                                ;; 01:5b42 $c9
.jr_01_5b43:
    pop  BC                                            ;; 01:5b43 $c1
    xor  A, A                                          ;; 01:5b44 $af
    ret                                                ;; 01:5b45 $c9

call_01_5b46:
    ld   A, [wCF5F]                                    ;; 01:5b46 $fa $5f $cf
    add  A, $10                                        ;; 01:5b49 $c6 $10
    ld   B, A                                          ;; 01:5b4b $47
    ld   A, [wCF5A]                                    ;; 01:5b4c $fa $5a $cf
    ld   E, A                                          ;; 01:5b4f $5f
    push DE                                            ;; 01:5b50 $d5
    ld   A, [wCF5C]                                    ;; 01:5b51 $fa $5c $cf
    ld   C, A                                          ;; 01:5b54 $4f
    ld   A, B                                          ;; 01:5b55 $78
    call call_01_5b6d                                  ;; 01:5b56 $cd $6d $5b
    ld   HL, wCEF0                                     ;; 01:5b59 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5b5c $09
    ld   [HL], $01                                     ;; 01:5b5d $36 $01
    ld   B, A                                          ;; 01:5b5f $47
    ld   C, $00                                        ;; 01:5b60 $0e $00
    call call_01_54d5                                  ;; 01:5b62 $cd $d5 $54
    ld   A, C                                          ;; 01:5b65 $79
    or   A, A                                          ;; 01:5b66 $b7
    pop  DE                                            ;; 01:5b67 $d1
    ld   A, E                                          ;; 01:5b68 $7b
    ld   [wCF5A], A                                    ;; 01:5b69 $ea $5a $cf
    ret                                                ;; 01:5b6c $c9

call_01_5b6d:
    ld   [wCF5F], A                                    ;; 01:5b6d $ea $5f $cf
    add  A, A                                          ;; 01:5b70 $87
    ld   E, A                                          ;; 01:5b71 $5f
    ld   D, $00                                        ;; 01:5b72 $16 $00
    ld   A, C                                          ;; 01:5b74 $79
    ld   [wCF5C], A                                    ;; 01:5b75 $ea $5c $cf
    ld   HL, data_01_5e1d                              ;; 01:5b78 $21 $1d $5e
    add  HL, DE                                        ;; 01:5b7b $19
    ld   A, [HL+]                                      ;; 01:5b7c $2a
    ld   H, [HL]                                       ;; 01:5b7d $66
    ld   L, A                                          ;; 01:5b7e $6f
    ld   A, H                                          ;; 01:5b7f $7c
    or   A, L                                          ;; 01:5b80 $b5
    ret  Z                                             ;; 01:5b81 $c8
    push HL                                            ;; 01:5b82 $e5
    inc  HL                                            ;; 01:5b83 $23
    inc  HL                                            ;; 01:5b84 $23
    ld   A, [HL+]                                      ;; 01:5b85 $2a
    push HL                                            ;; 01:5b86 $e5
    ld   C, A                                          ;; 01:5b87 $4f
    ld   B, $00                                        ;; 01:5b88 $06 $00
    ld   HL, wD394                                     ;; 01:5b8a $21 $94 $d3
    add  HL, BC                                        ;; 01:5b8d $09
    ld   [HL], $ff                                     ;; 01:5b8e $36 $ff
    pop  HL                                            ;; 01:5b90 $e1
    ld   A, [HL+]                                      ;; 01:5b91 $2a
    ld   C, A                                          ;; 01:5b92 $4f
    ld   B, $00                                        ;; 01:5b93 $06 $00
    ld   A, [HL+]                                      ;; 01:5b95 $2a
    cp   A, $ff                                        ;; 01:5b96 $fe $ff
    jr   Z, .jr_01_5b9d                                ;; 01:5b98 $28 $03
    ld   [wCF5B], A                                    ;; 01:5b9a $ea $5b $cf
.jr_01_5b9d:
    ld   HL, wCF08                                     ;; 01:5b9d $21 $08 $cf
    add  HL, BC                                        ;; 01:5ba0 $09
    add  HL, BC                                        ;; 01:5ba1 $09
    pop  DE                                            ;; 01:5ba2 $d1
    ld   [HL], E                                       ;; 01:5ba3 $73
    inc  HL                                            ;; 01:5ba4 $23
    ld   [HL], D                                       ;; 01:5ba5 $72
    push BC                                            ;; 01:5ba6 $c5
    push DE                                            ;; 01:5ba7 $d5
    ld   HL, wCF00                                     ;; 01:5ba8 $21 $00 $cf
    add  HL, BC                                        ;; 01:5bab $09
    ld   [HL], $01                                     ;; 01:5bac $36 $01
    ld   HL, wCEF8                                     ;; 01:5bae $21 $f8 $ce
    add  HL, BC                                        ;; 01:5bb1 $09
    ld   [HL], $00                                     ;; 01:5bb2 $36 $00
    pop  HL                                            ;; 01:5bb4 $e1
    pop  BC                                            ;; 01:5bb5 $c1
    push BC                                            ;; 01:5bb6 $c5
    push HL                                            ;; 01:5bb7 $e5
    inc  HL                                            ;; 01:5bb8 $23
    ld   A, [HL+]                                      ;; 01:5bb9 $2a
    push BC                                            ;; 01:5bba $c5
    push HL                                            ;; 01:5bbb $e5
    call call_00_0c86                                  ;; 01:5bbc $cd $86 $0c
    pop  HL                                            ;; 01:5bbf $e1
    ld   A, [HL]                                       ;; 01:5bc0 $7e
    ld   HL, $2e99                                     ;; 01:5bc1 $21 $99 $2e
    cp   A, $02                                        ;; 01:5bc4 $fe $02
    jr   Z, .jr_01_5bcb                                ;; 01:5bc6 $28 $03
    ld   HL, $2eb1                                     ;; 01:5bc8 $21 $b1 $2e
.jr_01_5bcb:
    pop  BC                                            ;; 01:5bcb $c1
    call call_00_0cba                                  ;; 01:5bcc $cd $ba $0c
    pop  HL                                            ;; 01:5bcf $e1
    ld   A, [wCF5C]                                    ;; 01:5bd0 $fa $5c $cf
    ld   C, A                                          ;; 01:5bd3 $4f
    ld   B, $00                                        ;; 01:5bd4 $06 $00
    add  HL, BC                                        ;; 01:5bd6 $09
    ld   A, [HL+]                                      ;; 01:5bd7 $2a
    ld   H, [HL]                                       ;; 01:5bd8 $66
    ld   L, A                                          ;; 01:5bd9 $6f
    pop  BC                                            ;; 01:5bda $c1
    ld   D, H                                          ;; 01:5bdb $54
    ld   E, L                                          ;; 01:5bdc $5d
    ld   HL, wCF18                                     ;; 01:5bdd $21 $18 $cf
    add  HL, BC                                        ;; 01:5be0 $09
    add  HL, BC                                        ;; 01:5be1 $09
    ld   [HL], E                                       ;; 01:5be2 $73
    inc  HL                                            ;; 01:5be3 $23
    ld   [HL], D                                       ;; 01:5be4 $72
    dec  DE                                            ;; 01:5be5 $1b
    dec  DE                                            ;; 01:5be6 $1b
    ld   A, [DE]                                       ;; 01:5be7 $1a
    push BC                                            ;; 01:5be8 $c5
    call playSFX                                       ;; 01:5be9 $cd $7d $29
    pop  BC                                            ;; 01:5bec $c1
    ld   A, $07                                        ;; 01:5bed $3e $07
    sub  A, C                                          ;; 01:5bef $91
    ret                                                ;; 01:5bf0 $c9

call_01_5bf1:
    push BC                                            ;; 01:5bf1 $c5
    call call_01_53a0                                  ;; 01:5bf2 $cd $a0 $53
    jr   Z, .jr_01_5bfa                                ;; 01:5bf5 $28 $03
    pop  BC                                            ;; 01:5bf7 $c1
    inc  C                                             ;; 01:5bf8 $0c
    ret                                                ;; 01:5bf9 $c9
.jr_01_5bfa:
    ld   HL, wCF18                                     ;; 01:5bfa $21 $18 $cf
    add  HL, BC                                        ;; 01:5bfd $09
    add  HL, BC                                        ;; 01:5bfe $09
    ld   E, [HL]                                       ;; 01:5bff $5e
    inc  HL                                            ;; 01:5c00 $23
    ld   D, [HL]                                       ;; 01:5c01 $56
    ld   HL, wCEF8                                     ;; 01:5c02 $21 $f8 $ce
    add  HL, BC                                        ;; 01:5c05 $09
    ld   A, [HL]                                       ;; 01:5c06 $7e
    add  A, A                                          ;; 01:5c07 $87
    add  A, A                                          ;; 01:5c08 $87
    ld   L, A                                          ;; 01:5c09 $6f
    ld   H, $00                                        ;; 01:5c0a $26 $00
    add  HL, DE                                        ;; 01:5c0c $19
    push HL                                            ;; 01:5c0d $e5
    ld   A, [HL+]                                      ;; 01:5c0e $2a
    cp   A, $00                                        ;; 01:5c0f $fe $00
    jp   Z, .jp_01_5c78                                ;; 01:5c11 $ca $78 $5c
    push HL                                            ;; 01:5c14 $e5
    dec  HL                                            ;; 01:5c15 $2b
    dec  HL                                            ;; 01:5c16 $2b
    ld   A, [HL+]                                      ;; 01:5c17 $2a
    push HL                                            ;; 01:5c18 $e5
    push BC                                            ;; 01:5c19 $c5
    ld   D, A                                          ;; 01:5c1a $57
    and  A, $08                                        ;; 01:5c1b $e6 $08
    call NZ, call_01_5c9f                              ;; 01:5c1d $c4 $9f $5c
    pop  BC                                            ;; 01:5c20 $c1
    pop  HL                                            ;; 01:5c21 $e1
    ld   A, [wCF5D]                                    ;; 01:5c22 $fa $5d $cf
    ld   C, A                                          ;; 01:5c25 $4f
    call GetObjectY                                    ;; 01:5c26 $cd $3e $0c
    pop  HL                                            ;; 01:5c29 $e1
    push HL                                            ;; 01:5c2a $e5
    add  A, [HL]                                       ;; 01:5c2b $86
    push AF                                            ;; 01:5c2c $f5
    call call_00_2f14                                  ;; 01:5c2d $cd $14 $2f
    ld   C, A                                          ;; 01:5c30 $4f
    pop  AF                                            ;; 01:5c31 $f1
    sub  A, C                                          ;; 01:5c32 $91
    ld   D, A                                          ;; 01:5c33 $57
    push DE                                            ;; 01:5c34 $d5
    ld   A, [wCF5D]                                    ;; 01:5c35 $fa $5d $cf
    ld   C, A                                          ;; 01:5c38 $4f
    call GetObjectX                                    ;; 01:5c39 $cd $2d $0c
    pop  DE                                            ;; 01:5c3c $d1
    pop  HL                                            ;; 01:5c3d $e1
    push HL                                            ;; 01:5c3e $e5
    push DE                                            ;; 01:5c3f $d5
    inc  HL                                            ;; 01:5c40 $23
    add  A, [HL]                                       ;; 01:5c41 $86
    push AF                                            ;; 01:5c42 $f5
    call call_00_2f0c                                  ;; 01:5c43 $cd $0c $2f
    ld   C, A                                          ;; 01:5c46 $4f
    pop  AF                                            ;; 01:5c47 $f1
    pop  DE                                            ;; 01:5c48 $d1
    pop  HL                                            ;; 01:5c49 $e1
    sub  A, C                                          ;; 01:5c4a $91
    ld   E, A                                          ;; 01:5c4b $5f
    ld   A, [wCF5A]                                    ;; 01:5c4c $fa $5a $cf
    ld   C, A                                          ;; 01:5c4f $4f
    dec  HL                                            ;; 01:5c50 $2b
    ld   A, [HL+]                                      ;; 01:5c51 $2a
    ld   B, $00                                        ;; 01:5c52 $06 $00
    bit  7, A                                          ;; 01:5c54 $cb $7f
    jr   Z, .jr_01_5c5c                                ;; 01:5c56 $28 $04
    ld   B, $01                                        ;; 01:5c58 $06 $01
    res  7, A                                          ;; 01:5c5a $cb $bf
.jr_01_5c5c:
    call call_00_08d4                                  ;; 01:5c5c $cd $d4 $08
    pop  HL                                            ;; 01:5c5f $e1
    ld   A, [wCF5A]                                    ;; 01:5c60 $fa $5a $cf
    ld   C, A                                          ;; 01:5c63 $4f
    ld   B, $00                                        ;; 01:5c64 $06 $00
    ld   A, [HL]                                       ;; 01:5c66 $7e
    call call_01_59ea                                  ;; 01:5c67 $cd $ea $59
    pop  BC                                            ;; 01:5c6a $c1
    inc  C                                             ;; 01:5c6b $0c
    ld   A, $07                                        ;; 01:5c6c $3e $07
    sub  A, B                                          ;; 01:5c6e $90
    ld   E, A                                          ;; 01:5c6f $5f
    ld   D, $00                                        ;; 01:5c70 $16 $00
    ld   HL, wCEF8                                     ;; 01:5c72 $21 $f8 $ce
    add  HL, DE                                        ;; 01:5c75 $19
    inc  [HL]                                          ;; 01:5c76 $34
    ret                                                ;; 01:5c77 $c9
.jp_01_5c78:
    pop  HL                                            ;; 01:5c78 $e1
    ld   A, [wCF5A]                                    ;; 01:5c79 $fa $5a $cf
    ld   C, A                                          ;; 01:5c7c $4f
    call call_00_0c6d                                  ;; 01:5c7d $cd $6d $0c
    cp   A, $50                                        ;; 01:5c80 $fe $50
    jr   NZ, .jr_01_5c8d                               ;; 01:5c82 $20 $09
    ld   A, [wCF5D]                                    ;; 01:5c84 $fa $5d $cf
    call call_00_2853                                  ;; 01:5c87 $cd $53 $28
    call call_00_04f4                                  ;; 01:5c8a $cd $f4 $04
.jr_01_5c8d:
    call call_01_5d82                                  ;; 01:5c8d $cd $82 $5d
    pop  BC                                            ;; 01:5c90 $c1
    ld   A, $07                                        ;; 01:5c91 $3e $07
    sub  A, B                                          ;; 01:5c93 $90
    ld   E, A                                          ;; 01:5c94 $5f
    ld   D, $00                                        ;; 01:5c95 $16 $00
    ld   HL, wCEF8                                     ;; 01:5c97 $21 $f8 $ce
    add  HL, DE                                        ;; 01:5c9a $19
    ld   [HL], $00                                     ;; 01:5c9b $36 $00
    xor  A, A                                          ;; 01:5c9d $af
    ret                                                ;; 01:5c9e $c9

call_01_5c9f:
    ld   A, [wCF5F]                                    ;; 01:5c9f $fa $5f $cf
    add  A, $10                                        ;; 01:5ca2 $c6 $10
    ld   B, A                                          ;; 01:5ca4 $47
    ld   A, [wCF5A]                                    ;; 01:5ca5 $fa $5a $cf
    ld   E, A                                          ;; 01:5ca8 $5f
    push DE                                            ;; 01:5ca9 $d5
    ld   A, [wCF5C]                                    ;; 01:5caa $fa $5c $cf
    ld   C, A                                          ;; 01:5cad $4f
    ld   A, B                                          ;; 01:5cae $78
    call call_01_5b6d                                  ;; 01:5caf $cd $6d $5b
    ld   HL, wCEF0                                     ;; 01:5cb2 $21 $f0 $ce
    add  HL, BC                                        ;; 01:5cb5 $09
    ld   [HL], $07                                     ;; 01:5cb6 $36 $07
    ld   B, A                                          ;; 01:5cb8 $47
    ld   C, $00                                        ;; 01:5cb9 $0e $00
    call call_01_5bf1                                  ;; 01:5cbb $cd $f1 $5b
    ld   A, C                                          ;; 01:5cbe $79
    or   A, A                                          ;; 01:5cbf $b7
    pop  DE                                            ;; 01:5cc0 $d1
    ld   A, E                                          ;; 01:5cc1 $7b
    ld   [wCF5A], A                                    ;; 01:5cc2 $ea $5a $cf
    ret                                                ;; 01:5cc5 $c9

call_01_5cc6:
    push AF                                            ;; 01:5cc6 $f5
    ld   A, B                                          ;; 01:5cc7 $78
    and  A, $f0                                        ;; 01:5cc8 $e6 $f0
    cp   A, $90                                        ;; 01:5cca $fe $90
    jr   Z, .jr_01_5ce4                                ;; 01:5ccc $28 $16
    cp   A, $20                                        ;; 01:5cce $fe $20
    jr   Z, .jr_01_5ce4                                ;; 01:5cd0 $28 $12
    cp   A, $10                                        ;; 01:5cd2 $fe $10
    jr   Z, .jr_01_5ce4                                ;; 01:5cd4 $28 $0e
    cp   A, $a0                                        ;; 01:5cd6 $fe $a0
    jr   Z, .jr_01_5ce4                                ;; 01:5cd8 $28 $0a
    cp   A, $b0                                        ;; 01:5cda $fe $b0
    jr   Z, .jr_01_5ce4                                ;; 01:5cdc $28 $06
    cp   A, $80                                        ;; 01:5cde $fe $80
    jr   Z, .jr_01_5ce4                                ;; 01:5ce0 $28 $02
    pop  AF                                            ;; 01:5ce2 $f1
    ret                                                ;; 01:5ce3 $c9
.jr_01_5ce4:
    ld   A, [wCF5B]                                    ;; 01:5ce4 $fa $5b $cf
    cp   A, D                                          ;; 01:5ce7 $ba
    jr   C, .jr_01_5d62                                ;; 01:5ce8 $38 $78
    cp   A, E                                          ;; 01:5cea $bb
    jr   C, .jr_01_5d62                                ;; 01:5ceb $38 $75
    pop  AF                                            ;; 01:5ced $f1
    cp   A, $5a                                        ;; 01:5cee $fe $5a
    jr   Z, .jr_01_5d06                                ;; 01:5cf0 $28 $14
    and  A, $f0                                        ;; 01:5cf2 $e6 $f0
    cp   A, $50                                        ;; 01:5cf4 $fe $50
    jr   Z, .jr_01_5cf9                                ;; 01:5cf6 $28 $01
    ret                                                ;; 01:5cf8 $c9
.jr_01_5cf9:
    push HL                                            ;; 01:5cf9 $e5
    ld   A, C                                          ;; 01:5cfa $79
    ld   [wCF5D], A                                    ;; 01:5cfb $ea $5d $cf
    call call_01_5d82                                  ;; 01:5cfe $cd $82 $5d
    call call_01_5c9f                                  ;; 01:5d01 $cd $9f $5c
    pop  HL                                            ;; 01:5d04 $e1
    ret                                                ;; 01:5d05 $c9
.jr_01_5d06:
    push HL                                            ;; 01:5d06 $e5
    push BC                                            ;; 01:5d07 $c5
    call GetObjectY                                    ;; 01:5d08 $cd $3e $0c
    sub  A, $0c                                        ;; 01:5d0b $d6 $0c
    srl  A                                             ;; 01:5d0d $cb $3f
    srl  A                                             ;; 01:5d0f $cb $3f
    srl  A                                             ;; 01:5d11 $cb $3f
    ld   D, A                                          ;; 01:5d13 $57
    pop  BC                                            ;; 01:5d14 $c1
    push BC                                            ;; 01:5d15 $c5
    push DE                                            ;; 01:5d16 $d5
    call GetObjectX                                    ;; 01:5d17 $cd $2d $0c
    pop  DE                                            ;; 01:5d1a $d1
    sub  A, $04                                        ;; 01:5d1b $d6 $04
    srl  A                                             ;; 01:5d1d $cb $3f
    srl  A                                             ;; 01:5d1f $cb $3f
    srl  A                                             ;; 01:5d21 $cb $3f
    ld   E, A                                          ;; 01:5d23 $5f
    pop  BC                                            ;; 01:5d24 $c1
    push DE                                            ;; 01:5d25 $d5
    call call_00_0ae3                                  ;; 01:5d26 $cd $e3 $0a
    pop  DE                                            ;; 01:5d29 $d1
    push DE                                            ;; 01:5d2a $d5
    call spawnSnowman                                  ;; 01:5d2b $cd $03 $2d
    ld   [wCF5D], A                                    ;; 01:5d2e $ea $5d $cf
    call call_01_5d82                                  ;; 01:5d31 $cd $82 $5d
    pop  DE                                            ;; 01:5d34 $d1
    ld   A, [wCF5D]                                    ;; 01:5d35 $fa $5d $cf
    cp   A, $ff                                        ;; 01:5d38 $fe $ff
    jr   Z, .jr_01_5d60                                ;; 01:5d3a $28 $24
    push DE                                            ;; 01:5d3c $d5
    ld   C, A                                          ;; 01:5d3d $4f
    call call_01_5c9f                                  ;; 01:5d3e $cd $9f $5c
    pop  DE                                            ;; 01:5d41 $d1
    ld   A, [wC0A1]                                    ;; 01:5d42 $fa $a1 $c0
    push AF                                            ;; 01:5d45 $f5
    ld   A, [wC0A2]                                    ;; 01:5d46 $fa $a2 $c0
    ld   [wC0A1], A                                    ;; 01:5d49 $ea $a1 $c0
    ld   C, $a9                                        ;; 01:5d4c $0e $a9
    ld   B, $08                                        ;; 01:5d4e $06 $08
    push BC                                            ;; 01:5d50 $c5
    inc  D                                             ;; 01:5d51 $14
    push DE                                            ;; 01:5d52 $d5
    call call_00_1700                                  ;; 01:5d53 $cd $00 $17
    pop  DE                                            ;; 01:5d56 $d1
    pop  BC                                            ;; 01:5d57 $c1
    inc  E                                             ;; 01:5d58 $1c
    call call_00_1700                                  ;; 01:5d59 $cd $00 $17
    pop  AF                                            ;; 01:5d5c $f1
    ld   [wC0A1], A                                    ;; 01:5d5d $ea $a1 $c0
.jr_01_5d60:
    pop  HL                                            ;; 01:5d60 $e1
    ret                                                ;; 01:5d61 $c9
.jr_01_5d62:
    pop  AF                                            ;; 01:5d62 $f1
    ret                                                ;; 01:5d63 $c9

call_01_5d64:
    ld   B, $06                                        ;; 01:5d64 $06 $06
    ld   C, $40                                        ;; 01:5d66 $0e $40
.jr_01_5d68:
    push BC                                            ;; 01:5d68 $c5
    ld   A, $01                                        ;; 01:5d69 $3e $01
    ld   DE, $fefe                                     ;; 01:5d6b $11 $fe $fe
    ld   HL, $2e8d                                     ;; 01:5d6e $21 $8d $2e
    call createObject                                  ;; 01:5d71 $cd $74 $0a
    pop  BC                                            ;; 01:5d74 $c1
    cp   A, $07                                        ;; 01:5d75 $fe $07
    jr   NC, .jr_01_5d7d                               ;; 01:5d77 $30 $04
    dec  B                                             ;; 01:5d79 $05
    jr   NZ, .jr_01_5d68                               ;; 01:5d7a $20 $ec
    ret                                                ;; 01:5d7c $c9
.jr_01_5d7d:
    ld   C, A                                          ;; 01:5d7d $4f
    call call_00_0ae3                                  ;; 01:5d7e $cd $e3 $0a
    ret                                                ;; 01:5d81 $c9

call_01_5d82:
    ld   HL, wCEF0                                     ;; 01:5d82 $21 $f0 $ce
    ld   C, $00                                        ;; 01:5d85 $0e $00
    ld   B, $07                                        ;; 01:5d87 $06 $07
.jr_01_5d89:
    push BC                                            ;; 01:5d89 $c5
    ld   A, [HL+]                                      ;; 01:5d8a $2a
    push HL                                            ;; 01:5d8b $e5
    cp   A, $00                                        ;; 01:5d8c $fe $00
    call NZ, call_01_59d0                              ;; 01:5d8e $c4 $d0 $59
    pop  HL                                            ;; 01:5d91 $e1
    pop  BC                                            ;; 01:5d92 $c1
    inc  C                                             ;; 01:5d93 $0c
    dec  B                                             ;; 01:5d94 $05
    jr   NZ, .jr_01_5d89                               ;; 01:5d95 $20 $f2
    ret                                                ;; 01:5d97 $c9

call_01_5d98:
    ld   A, [wCF5A]                                    ;; 01:5d98 $fa $5a $cf
    ld   C, A                                          ;; 01:5d9b $4f
    ld   B, $00                                        ;; 01:5d9c $06 $00
    ld   HL, wCEF8                                     ;; 01:5d9e $21 $f8 $ce
    add  HL, BC                                        ;; 01:5da1 $09
    ld   A, [HL]                                       ;; 01:5da2 $7e
    add  A, A                                          ;; 01:5da3 $87
    add  A, A                                          ;; 01:5da4 $87
    dec  A                                             ;; 01:5da5 $3d
    ld   E, A                                          ;; 01:5da6 $5f
    ld   D, $00                                        ;; 01:5da7 $16 $00
    ld   HL, wCF18                                     ;; 01:5da9 $21 $18 $cf
    add  HL, BC                                        ;; 01:5dac $09
    add  HL, BC                                        ;; 01:5dad $09
    ld   A, [HL+]                                      ;; 01:5dae $2a
    ld   H, [HL]                                       ;; 01:5daf $66
    ld   L, A                                          ;; 01:5db0 $6f
    add  HL, DE                                        ;; 01:5db1 $19
    ld   A, [HL]                                       ;; 01:5db2 $7e
    and  A, $f0                                        ;; 01:5db3 $e6 $f0
    ret                                                ;; 01:5db5 $c9

call_01_5db6:
    push AF                                            ;; 01:5db6 $f5
    ld   A, C                                          ;; 01:5db7 $79
    ld   [wCF5D], A                                    ;; 01:5db8 $ea $5d $cf
    call call_01_5d82                                  ;; 01:5dbb $cd $82 $5d
    ld   A, $0a                                        ;; 01:5dbe $3e $0a
    ld   [wCF5C], A                                    ;; 01:5dc0 $ea $5c $cf
    pop  AF                                            ;; 01:5dc3 $f1
    sub  A, $10                                        ;; 01:5dc4 $d6 $10
    ld   [wCF5F], A                                    ;; 01:5dc6 $ea $5f $cf
    call call_01_5c9f                                  ;; 01:5dc9 $cd $9f $5c
    ret                                                ;; 01:5dcc $c9

data_01_5dcd:
    db   $01, $02, $04, $03, $01, $05, $02, $06        ;; 01:5dcd .???????
    db   $01, $01, $03, $01, $02, $01, $05, $01        ;; 01:5dd5 ????????

data_01_5ddd:
    db   $08, $09, $0a, $0b, $0c, $0d, $0e, $0f        ;; 01:5ddd ????????
    db   $08, $08, $08, $08, $08, $09, $09, $09        ;; 01:5de5 ????????
    db   $09, $09, $0a, $0b, $0f, $0f, $0c, $0c        ;; 01:5ded ????????
    db   $0d, $0d, $0e, $0e, $08, $00, $00, $00        ;; 01:5df5 ????.???
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:5dfd ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:5e05 ????????
    db   $00, $08, $00, $09, $09, $09, $09, $00        ;; 01:5e0d ????????
    db   $00, $00, $00, $00, $00, $46, $00, $00        ;; 01:5e15 ?????.??

data_01_5e1d:
    db   $00, $00                                      ;; 01:5e1d ??
    dw   data_01_60ff                                  ;; 01:5e1f ..
    db   $69, $66, $93, $66, $65, $67, $b9, $67        ;; 01:5e21 ????????
    db   $0d, $68, $00, $00                            ;; 01:5e29 ????
    dw   data_01_62a3                                  ;; 01:5e2d ..
    db   $4b, $63, $ef, $64, $47, $64, $29, $61        ;; 01:5e2f ????????
    db   $29, $61, $29, $61, $29, $61, $61, $68        ;; 01:5e37 ????????
    db   $1d, $64, $00, $00, $bd, $66, $8f, $67        ;; 01:5e3f ????????
    db   $e3, $67, $11, $67, $00, $00                  ;; 01:5e47 ??????
    dw   data_01_62cd                                  ;; 01:5e4d ..
    db   $75, $63, $19, $65, $71, $64, $53, $61        ;; 01:5e4f ????????
    db   $7d, $61, $eb, $65, $97, $65, $8b, $68        ;; 01:5e57 ????????
    db   $00, $00, $00, $00, $e7, $66, $00, $00        ;; 01:5e5f ????????
    db   $00, $00, $3b, $67, $00, $00                  ;; 01:5e67 ??????
    dw   data_01_62f7                                  ;; 01:5e6d ..
    db   $9f, $63, $43, $65, $9b, $64, $a7, $61        ;; 01:5e6f ????????
    db   $fb, $61, $15, $66, $c1, $65, $b5, $68        ;; 01:5e77 ????????
    db   $00, $00, $00, $00, $11, $67, $00, $00        ;; 01:5e7f ????????
    db   $00, $00, $00, $00, $00, $00                  ;; 01:5e87 ??????
    dw   data_01_6321                                  ;; 01:5e8d ..
    db   $c9, $63, $6d, $65, $c5, $64, $d1, $61        ;; 01:5e8f ????????
    db   $25, $62, $3f, $66, $00, $00, $00, $00        ;; 01:5e97 ????????
    db   $00, $00, $00, $00, $3b, $67, $00, $00        ;; 01:5e9f ????????
    db   $00, $00                                      ;; 01:5ea7 ??
    dw   data_01_6837                                  ;; 01:5ea9 ..
    db   $00, $00, $00, $00, $f3, $63, $00, $00        ;; 01:5eab ????????
    db   $00, $00, $00, $00, $4f, $62, $00, $00        ;; 01:5eb3 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:5ebb ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:5ec3 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 01:5ecb ????????
    db   $00, $00, $00, $00, $79, $62, $00, $00        ;; 01:5ed3 ????????
    db   $00, $00                                      ;; 01:5edb ??

data_01_5edd:
    db   $fd, $5e, $01, $5f, $07, $5f, $11, $5f        ;; 01:5edd ????????
    db   $1f, $5f, $31, $5f, $47, $5f, $61, $5f        ;; 01:5ee5 ????????
    db   $7f, $5f, $a1, $5f, $c7, $5f, $f1, $5f        ;; 01:5eed ????????
    db   $1f, $60, $51, $60, $87, $60, $c1, $60        ;; 01:5ef5 ????????
    db   $06, $00, $00, $00, $06, $02, $02, $06        ;; 01:5efd ????????
    db   $00, $00, $06, $01, $05, $04, $04, $05        ;; 01:5f05 ????????
    db   $01, $06, $00, $00, $06, $01, $06, $02        ;; 01:5f0d ????????
    db   $05, $04, $04, $05, $02, $06, $01, $06        ;; 01:5f15 ????????
    db   $00, $00, $06, $01, $06, $01, $06, $03        ;; 01:5f1d ????????
    db   $05, $04, $04, $05, $03, $06, $01, $06        ;; 01:5f25 ????????
    db   $01, $06, $00, $00, $06, $00, $06, $02        ;; 01:5f2d ????????
    db   $06, $02, $06, $04, $04, $04, $04, $04        ;; 01:5f35 ????????
    db   $04, $06, $02, $06, $02, $06, $00, $06        ;; 01:5f3d ????????
    db   $00, $00, $06, $00, $06, $02, $06, $02        ;; 01:5f45 ????????
    db   $06, $02, $05, $04, $05, $04, $04, $05        ;; 01:5f4d ????????
    db   $04, $05, $02, $06, $02, $06, $02, $06        ;; 01:5f55 ????????
    db   $00, $06, $00, $00, $06, $00, $06, $01        ;; 01:5f5d ????????
    db   $06, $02, $06, $03, $06, $03, $05, $03        ;; 01:5f65 ????????
    db   $05, $04, $04, $05, $03, $05, $03, $06        ;; 01:5f6d ????????
    db   $03, $06, $02, $06, $01, $06, $00, $06        ;; 01:5f75 ????????
    db   $00, $00, $06, $00, $06, $01, $07, $02        ;; 01:5f7d ????????
    db   $05, $02, $06, $03, $06, $03, $05, $04        ;; 01:5f85 ????????
    db   $04, $04, $04, $04, $04, $05, $03, $06        ;; 01:5f8d ????????
    db   $03, $06, $02, $05, $02, $07, $01, $06        ;; 01:5f95 ????????
    db   $00, $06, $00, $00, $06, $00, $07, $01        ;; 01:5f9d ????????
    db   $06, $01, $06, $02, $05, $03, $06, $03        ;; 01:5fa5 ????????
    db   $05, $03, $05, $04, $05, $04, $04, $05        ;; 01:5fad ????????
    db   $04, $05, $03, $05, $03, $06, $03, $05        ;; 01:5fb5 ????????
    db   $02, $06, $01, $06, $01, $07, $00, $06        ;; 01:5fbd ????????
    db   $00, $00, $06, $00, $07, $01, $06, $01        ;; 01:5fc5 ????????
    db   $06, $02, $06, $02, $05, $03, $06, $03        ;; 01:5fcd ????????
    db   $05, $03, $05, $04, $05, $04, $04, $05        ;; 01:5fd5 ????????
    db   $04, $05, $03, $05, $03, $06, $03, $05        ;; 01:5fdd ????????
    db   $02, $06, $02, $06, $01, $06, $01, $07        ;; 01:5fe5 ????????
    db   $00, $06, $00, $00, $06, $00, $07, $01        ;; 01:5fed ????????
    db   $06, $01, $06, $02, $06, $02, $06, $02        ;; 01:5ff5 ????????
    db   $05, $03, $06, $03, $05, $04, $05, $03        ;; 01:5ffd ????????
    db   $04, $05, $05, $04, $03, $05, $04, $05        ;; 01:6005 ????????
    db   $03, $06, $03, $05, $02, $06, $02, $06        ;; 01:600d ????????
    db   $02, $06, $01, $06, $01, $07, $00, $06        ;; 01:6015 ????????
    db   $00, $00, $06, $00, $07, $01, $06, $01        ;; 01:601d ????????
    db   $06, $01, $06, $02, $06, $02, $05, $03        ;; 01:6025 ????????
    db   $06, $03, $05, $03, $05, $04, $05, $04        ;; 01:602d ????????
    db   $05, $04, $04, $05, $04, $05, $04, $05        ;; 01:6035 ????????
    db   $03, $05, $03, $06, $03, $05, $02, $06        ;; 01:603d ????????
    db   $02, $06, $01, $06, $01, $06, $01, $07        ;; 01:6045 ????????
    db   $00, $06, $00, $00, $06, $00, $07, $01        ;; 01:604d ????????
    db   $06, $01, $06, $01, $06, $02, $06, $02        ;; 01:6055 ????????
    db   $06, $02, $05, $03, $06, $03, $05, $03        ;; 01:605d ????????
    db   $05, $04, $05, $04, $05, $04, $04, $05        ;; 01:6065 ????????
    db   $04, $05, $04, $05, $03, $05, $03, $06        ;; 01:606d ????????
    db   $03, $05, $02, $06, $02, $06, $02, $06        ;; 01:6075 ????????
    db   $01, $06, $01, $06, $01, $07, $00, $06        ;; 01:607d ????????
    db   $00, $00, $06, $00, $07, $01, $06, $01        ;; 01:6085 ????????
    db   $06, $01, $06, $01, $06, $02, $06, $03        ;; 01:608d ????????
    db   $06, $02, $05, $03, $06, $03, $05, $04        ;; 01:6095 ????????
    db   $05, $03, $05, $04, $04, $05, $05, $04        ;; 01:609d ????????
    db   $04, $05, $03, $05, $04, $05, $03, $06        ;; 01:60a5 ????????
    db   $03, $05, $02, $06, $03, $06, $02, $06        ;; 01:60ad ????????
    db   $01, $06, $01, $06, $01, $06, $01, $07        ;; 01:60b5 ????????
    db   $00, $06, $00, $00, $06, $00, $07, $01        ;; 01:60bd ????????
    db   $06, $00, $06, $02, $06, $01, $06, $02        ;; 01:60c5 ????????
    db   $06, $02, $06, $02, $05, $03, $06, $03        ;; 01:60cd ????????
    db   $05, $03, $06, $04, $05, $04, $04, $04        ;; 01:60d5 ????????
    db   $05, $04, $04, $05, $04, $04, $04, $05        ;; 01:60dd ????????
    db   $04, $06, $03, $05, $03, $06, $03, $05        ;; 01:60e5 ????????
    db   $02, $06, $02, $06, $02, $06, $01, $06        ;; 01:60ed ????????
    db   $02, $06, $00, $06, $01, $07, $00, $06        ;; 01:60f5 ????????
    db   $00, $00                                      ;; 01:60fd ??

data_01_60ff:
    db   $04, $48, $02, $05, $0a, $00, $00, $70        ;; 01:60ff .....?..
    db   $df, $68, $a1, $69, $b0, $69, $bf, $69        ;; 01:6107 ........
    db   $ce, $69, $dd, $69, $f0, $69, $03, $6a        ;; 01:610f ........
    db   $16, $6a, $29, $6a, $30, $6a, $37, $6a        ;; 01:6117 ..??????
    db   $3e, $6a, $45, $6a, $68, $6a, $8b, $6a        ;; 01:611f ????????
    db   $ae, $6a, $06, $50, $03, $06, $00, $00        ;; 01:6127 ????????
    db   $80, $75, $03, $69, $d1, $6a, $e8, $6a        ;; 01:612f ????????
    db   $ff, $6a, $16, $6b, $d1, $6a, $e8, $6a        ;; 01:6137 ????????
    db   $ff, $6a, $16, $6b, $d1, $6a, $e8, $6a        ;; 01:613f ????????
    db   $ff, $6a, $16, $6b, $d1, $6a, $e8, $6a        ;; 01:6147 ????????
    db   $ff, $6a, $16, $6b, $06, $58, $02, $05        ;; 01:614f ????????
    db   $0c, $00, $80, $77, $0f, $69, $2d, $6b        ;; 01:6157 ????????
    db   $34, $6b, $3b, $6b, $42, $6b, $2d, $6b        ;; 01:615f ????????
    db   $34, $6b, $3b, $6b, $42, $6b, $2d, $6b        ;; 01:6167 ????????
    db   $34, $6b, $3b, $6b, $42, $6b, $2d, $6b        ;; 01:616f ????????
    db   $34, $6b, $3b, $6b, $42, $6b, $03, $5a        ;; 01:6177 ????????
    db   $02, $05, $0c, $00, $40, $76, $df, $68        ;; 01:617f ????????
    db   $7f, $6b, $86, $6b, $8d, $6b, $94, $6b        ;; 01:6187 ????????
    db   $7f, $6b, $86, $6b, $8d, $6b, $94, $6b        ;; 01:618f ????????
    db   $7f, $6b, $86, $6b, $8d, $6b, $94, $6b        ;; 01:6197 ????????
    db   $7f, $6b, $86, $6b, $8d, $6b, $94, $6b        ;; 01:619f ????????
    db   $06, $50, $02, $06, $00, $00, $80, $77        ;; 01:61a7 ????????
    db   $1b, $69, $49, $6b, $49, $6b, $49, $6b        ;; 01:61af ????????
    db   $49, $6b, $49, $6b, $49, $6b, $49, $6b        ;; 01:61b7 ????????
    db   $49, $6b, $49, $6b, $49, $6b, $49, $6b        ;; 01:61bf ????????
    db   $49, $6b, $49, $6b, $49, $6b, $49, $6b        ;; 01:61c7 ????????
    db   $49, $6b, $06, $50, $03, $05, $00, $00        ;; 01:61cf ????????
    db   $80, $77, $27, $69, $6c, $6b, $6c, $6b        ;; 01:61d7 ????????
    db   $6c, $6b, $6c, $6b, $6c, $6b, $6c, $6b        ;; 01:61df ????????
    db   $6c, $6b, $6c, $6b, $6c, $6b, $6c, $6b        ;; 01:61e7 ????????
    db   $6c, $6b, $6c, $6b, $6c, $6b, $6c, $6b        ;; 01:61ef ????????
    db   $6c, $6b, $6c, $6b, $04, $40, $02, $03        ;; 01:61f7 ????????
    db   $00, $00, $40, $76, $33, $69, $1f, $73        ;; 01:61ff ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:6207 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:620f ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:6217 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $04, $40        ;; 01:621f ????????
    db   $02, $02, $00, $00, $40, $76, $33, $69        ;; 01:6227 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:622f ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:6237 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:623f ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:6247 ????????
    db   $04, $40, $02, $01, $00, $00, $40, $76        ;; 01:624f ????????
    db   $33, $69, $4a, $73, $4a, $73, $4a, $73        ;; 01:6257 ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:625f ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:6267 ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:626f ????????
    db   $4a, $73, $04, $40, $02, $00, $00, $00        ;; 01:6277 ????????
    db   $40, $76, $33, $69, $75, $73, $75, $73        ;; 01:627f ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:6287 ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:628f ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:6297 ????????
    db   $75, $73, $75, $73                            ;; 01:629f ????

data_01_62a3:
    db   $04, $50, $02, $03, $00, $00, $00, $75        ;; 01:62a3 .....?..
    db   $3f, $69, $30, $72, $30, $72, $30, $72        ;; 01:62ab ..??????
    db   $30, $72, $30, $72, $30, $72, $30, $72        ;; 01:62b3 ????..??
    db   $30, $72, $30, $72, $30, $72, $30, $72        ;; 01:62bb ????????
    db   $30, $72, $30, $72, $30, $72, $30, $72        ;; 01:62c3 ????????
    db   $30, $72                                      ;; 01:62cb ??

data_01_62cd:
    db   $04, $50, $03, $02, $00, $00, $00, $75        ;; 01:62cd .....?..
    db   $3f, $69, $bd, $72, $bd, $72, $bd, $72        ;; 01:62d5 ..??????
    db   $bd, $72, $bd, $72, $bd, $72, $bd, $72        ;; 01:62dd ????..??
    db   $bd, $72, $bd, $72, $bd, $72, $bd, $72        ;; 01:62e5 ????????
    db   $bd, $72, $bd, $72, $bd, $72, $bd, $72        ;; 01:62ed ????????
    db   $bd, $72                                      ;; 01:62f5 ??

data_01_62f7:
    db   $04, $50, $02, $01, $00, $00, $00, $75        ;; 01:62f7 .....?..
    db   $3f, $69, $5f, $72, $5f, $72, $5f, $72        ;; 01:62ff ..??????
    db   $5f, $72, $5f, $72, $5f, $72, $5f, $72        ;; 01:6307 ????..??
    db   $5f, $72, $5f, $72, $5f, $72, $5f, $72        ;; 01:630f ????????
    db   $5f, $72, $5f, $72, $5f, $72, $5f, $72        ;; 01:6317 ????????
    db   $5f, $72                                      ;; 01:631f ??

data_01_6321:
    db   $04, $50, $03, $00, $00, $00, $00, $75        ;; 01:6321 .....?..
    db   $3f, $69, $8e, $72, $8e, $72, $8e, $72        ;; 01:6329 ..??????
    db   $8e, $72, $8e, $72, $8e, $72, $8e, $72        ;; 01:6331 ????..??
    db   $8e, $72, $8e, $72, $8e, $72, $8e, $72        ;; 01:6339 ????????
    db   $8e, $72, $8e, $72, $8e, $72, $8e, $72        ;; 01:6341 ????????
    db   $8e, $72, $04, $50, $03, $05, $00, $00        ;; 01:6349 ????????
    db   $00, $75, $3f, $69, $ec, $72, $ec, $72        ;; 01:6351 ????????
    db   $ec, $72, $ec, $72, $ec, $72, $ec, $72        ;; 01:6359 ????????
    db   $ec, $72, $ec, $72, $ec, $72, $ec, $72        ;; 01:6361 ????????
    db   $ec, $72, $ec, $72, $ec, $72, $ec, $72        ;; 01:6369 ????????
    db   $ec, $72, $ec, $72, $04, $50, $02, $03        ;; 01:6371 ????????
    db   $00, $00, $40, $79, $4b, $69, $1f, $73        ;; 01:6379 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:6381 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:6389 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $1f, $73        ;; 01:6391 ????????
    db   $1f, $73, $1f, $73, $1f, $73, $04, $50        ;; 01:6399 ????????
    db   $02, $02, $00, $00, $40, $79, $4b, $69        ;; 01:63a1 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:63a9 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:63b1 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:63b9 ????????
    db   $a0, $73, $a0, $73, $a0, $73, $a0, $73        ;; 01:63c1 ????????
    db   $04, $50, $02, $01, $00, $00, $40, $79        ;; 01:63c9 ????????
    db   $4b, $69, $4a, $73, $4a, $73, $4a, $73        ;; 01:63d1 ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:63d9 ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:63e1 ????????
    db   $4a, $73, $4a, $73, $4a, $73, $4a, $73        ;; 01:63e9 ????????
    db   $4a, $73, $04, $50, $02, $00, $00, $00        ;; 01:63f1 ????????
    db   $40, $79, $4b, $69, $75, $73, $75, $73        ;; 01:63f9 ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:6401 ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:6409 ????????
    db   $75, $73, $75, $73, $75, $73, $75, $73        ;; 01:6411 ????????
    db   $75, $73, $75, $73, $04, $48, $00, $04        ;; 01:6419 ????????
    db   $ff, $00, $40, $5a, $57, $69, $a1, $69        ;; 01:6421 ????????
    db   $b0, $69, $bf, $69, $ce, $69, $dd, $69        ;; 01:6429 ????????
    db   $f0, $69, $03, $6a, $16, $6a, $29, $6a        ;; 01:6431 ????????
    db   $30, $6a, $37, $6a, $3e, $6a, $45, $6a        ;; 01:6439 ????????
    db   $68, $6a, $8b, $6a, $ae, $6a, $04, $50        ;; 01:6441 ????????
    db   $02, $03, $00, $00, $90, $79, $03, $69        ;; 01:6449 ????????
    db   $cb, $73, $cb, $73, $cb, $73, $cb, $73        ;; 01:6451 ????????
    db   $cb, $73, $cb, $73, $cb, $73, $cb, $73        ;; 01:6459 ????????
    db   $cb, $73, $cb, $73, $cb, $73, $cb, $73        ;; 01:6461 ????????
    db   $cb, $73, $cb, $73, $cb, $73, $cb, $73        ;; 01:6469 ????????
    db   $04, $50, $02, $02, $00, $00, $90, $79        ;; 01:6471 ????????
    db   $03, $69, $70, $74, $70, $74, $70, $74        ;; 01:6479 ????????
    db   $70, $74, $70, $74, $70, $74, $70, $74        ;; 01:6481 ????????
    db   $70, $74, $70, $74, $70, $74, $70, $74        ;; 01:6489 ????????
    db   $70, $74, $70, $74, $70, $74, $70, $74        ;; 01:6491 ????????
    db   $70, $74, $04, $50, $02, $01, $00, $00        ;; 01:6499 ????????
    db   $90, $79, $03, $69, $02, $74, $02, $74        ;; 01:64a1 ????????
    db   $02, $74, $02, $74, $02, $74, $02, $74        ;; 01:64a9 ????????
    db   $02, $74, $02, $74, $02, $74, $02, $74        ;; 01:64b1 ????????
    db   $02, $74, $02, $74, $02, $74, $02, $74        ;; 01:64b9 ????????
    db   $02, $74, $02, $74, $04, $50, $02, $00        ;; 01:64c1 ????????
    db   $00, $00, $90, $79, $03, $69, $39, $74        ;; 01:64c9 ????????
    db   $39, $74, $39, $74, $39, $74, $39, $74        ;; 01:64d1 ????????
    db   $39, $74, $39, $74, $39, $74, $39, $74        ;; 01:64d9 ????????
    db   $39, $74, $39, $74, $39, $74, $39, $74        ;; 01:64e1 ????????
    db   $39, $74, $39, $74, $39, $74, $04, $50        ;; 01:64e9 ????????
    db   $02, $03, $00, $00, $50, $79, $03, $69        ;; 01:64f1 ????????
    db   $df, $74, $df, $74, $df, $74, $df, $74        ;; 01:64f9 ????????
    db   $df, $74, $df, $74, $df, $74, $df, $74        ;; 01:6501 ????????
    db   $df, $74, $df, $74, $df, $74, $df, $74        ;; 01:6509 ????????
    db   $df, $74, $df, $74, $df, $74, $df, $74        ;; 01:6511 ????????
    db   $04, $50, $02, $02, $00, $00, $50, $79        ;; 01:6519 ????????
    db   $03, $69, $16, $75, $16, $75, $16, $75        ;; 01:6521 ????????
    db   $16, $75, $16, $75, $16, $75, $16, $75        ;; 01:6529 ????????
    db   $16, $75, $16, $75, $16, $75, $16, $75        ;; 01:6531 ????????
    db   $16, $75, $16, $75, $16, $75, $16, $75        ;; 01:6539 ????????
    db   $16, $75, $04, $50, $02, $01, $00, $00        ;; 01:6541 ????????
    db   $50, $79, $03, $69, $4d, $75, $4d, $75        ;; 01:6549 ????????
    db   $4d, $75, $4d, $75, $4d, $75, $4d, $75        ;; 01:6551 ????????
    db   $4d, $75, $4d, $75, $4d, $75, $4d, $75        ;; 01:6559 ????????
    db   $4d, $75, $4d, $75, $4d, $75, $4d, $75        ;; 01:6561 ????????
    db   $4d, $75, $4d, $75, $04, $50, $02, $00        ;; 01:6569 ????????
    db   $00, $00, $50, $79, $03, $69, $84, $75        ;; 01:6571 ????????
    db   $84, $75, $84, $75, $84, $75, $84, $75        ;; 01:6579 ????????
    db   $84, $75, $84, $75, $84, $75, $84, $75        ;; 01:6581 ????????
    db   $84, $75, $84, $75, $84, $75, $84, $75        ;; 01:6589 ????????
    db   $84, $75, $84, $75, $84, $75, $07, $58        ;; 01:6591 ????????
    db   $02, $05, $0e, $00, $b0, $7d, $3f, $69        ;; 01:6599 ????????
    db   $a7, $74, $b5, $74, $c3, $74, $d1, $74        ;; 01:65a1 ????????
    db   $a7, $74, $b5, $74, $c3, $74, $d1, $74        ;; 01:65a9 ????????
    db   $a7, $74, $b5, $74, $c3, $74, $d1, $74        ;; 01:65b1 ????????
    db   $a7, $74, $b5, $74, $c3, $74, $d1, $74        ;; 01:65b9 ????????
    db   $04, $50, $02, $02, $00, $00, $b0, $7d        ;; 01:65c1 ????????
    db   $03, $69, $bb, $75, $bb, $75, $bb, $75        ;; 01:65c9 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:65d1 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:65d9 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:65e1 ????????
    db   $bb, $75, $04, $58, $02, $05, $0a, $00        ;; 01:65e9 ????????
    db   $d0, $79, $eb, $68, $d8, $6e, $e7, $6e        ;; 01:65f1 ????????
    db   $f6, $6e, $05, $6f, $d8, $6e, $e7, $6e        ;; 01:65f9 ????????
    db   $f6, $6e, $05, $6f, $d8, $6e, $e7, $6e        ;; 01:6601 ????????
    db   $f6, $6e, $05, $6f, $d8, $6e, $e7, $6e        ;; 01:6609 ????????
    db   $f6, $6e, $05, $6f, $04, $50, $03, $03        ;; 01:6611 ????????
    db   $0a, $00, $d0, $79, $f7, $68, $14, $6f        ;; 01:6619 ????????
    db   $1b, $6f, $22, $6f, $29, $6f, $14, $6f        ;; 01:6621 ????????
    db   $1b, $6f, $22, $6f, $29, $6f, $14, $6f        ;; 01:6629 ????????
    db   $1b, $6f, $22, $6f, $29, $6f, $14, $6f        ;; 01:6631 ????????
    db   $1b, $6f, $22, $6f, $29, $6f, $04, $50        ;; 01:6639 ????????
    db   $02, $02, $00, $00, $80, $75, $03, $69        ;; 01:6641 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:6649 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:6651 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:6659 ????????
    db   $bb, $75, $bb, $75, $bb, $75, $bb, $75        ;; 01:6661 ????????
    db   $06, $48, $02, $06, $0c, $00, $c0, $70        ;; 01:6669 ????????
    db   $df, $68, $dd, $69, $f0, $69, $b6, $6b        ;; 01:6671 ????????
    db   $cd, $6b, $dd, $69, $f0, $69, $b6, $6b        ;; 01:6679 ????????
    db   $cd, $6b, $e4, $6b, $24, $6c, $64, $6c        ;; 01:6681 ????????
    db   $a4, $6c, $e4, $6b, $24, $6c, $64, $6c        ;; 01:6689 ????????
    db   $a4, $6c, $04, $48, $02, $06, $0a, $00        ;; 01:6691 ????????
    db   $00, $73, $63, $69, $30, $6f, $4b, $6f        ;; 01:6699 ????????
    db   $66, $6f, $81, $6f, $30, $6f, $4b, $6f        ;; 01:66a1 ????????
    db   $66, $6f, $81, $6f, $9c, $6f, $bf, $6f        ;; 01:66a9 ????????
    db   $e2, $6f, $05, $70, $9c, $6f, $bf, $6f        ;; 01:66b1 ????????
    db   $e2, $6f, $05, $70, $04, $40, $03, $05        ;; 01:66b9 ????????
    db   $ff, $00, $40, $72, $87, $69, $60, $71        ;; 01:66c1 ????????
    db   $67, $71, $6e, $71, $75, $71, $60, $71        ;; 01:66c9 ????????
    db   $67, $71, $6e, $71, $75, $71, $60, $71        ;; 01:66d1 ????????
    db   $67, $71, $6e, $71, $75, $71, $60, $71        ;; 01:66d9 ????????
    db   $67, $71, $6e, $71, $75, $71, $04, $40        ;; 01:66e1 ????????
    db   $03, $03, $ff, $00, $40, $72, $87, $69        ;; 01:66e9 ????????
    db   $98, $71, $a7, $71, $b6, $71, $c5, $71        ;; 01:66f1 ????????
    db   $98, $71, $a7, $71, $b6, $71, $c5, $71        ;; 01:66f9 ????????
    db   $d4, $71, $eb, $71, $02, $72, $19, $72        ;; 01:6701 ????????
    db   $d4, $71, $eb, $71, $02, $72, $19, $72        ;; 01:6709 ????????
    db   $04, $40, $03, $02, $ff, $00, $40, $72        ;; 01:6711 ????????
    db   $87, $69, $7c, $71, $83, $71, $8a, $71        ;; 01:6719 ????????
    db   $91, $71, $7c, $71, $83, $71, $8a, $71        ;; 01:6721 ????????
    db   $91, $71, $98, $71, $a7, $71, $b6, $71        ;; 01:6729 ????????
    db   $c5, $71, $98, $71, $a7, $71, $b6, $71        ;; 01:6731 ????????
    db   $c5, $71, $04, $40, $03, $01, $ff, $00        ;; 01:6739 ????????
    db   $40, $72, $87, $69, $7c, $71, $83, $71        ;; 01:6741 ????????
    db   $8a, $71, $91, $71, $7c, $71, $83, $71        ;; 01:6749 ????????
    db   $8a, $71, $91, $71, $7c, $71, $83, $71        ;; 01:6751 ????????
    db   $8a, $71, $91, $71, $7c, $71, $83, $71        ;; 01:6759 ????????
    db   $8a, $71, $91, $71, $03, $48, $02, $06        ;; 01:6761 ????????
    db   $0c, $00, $40, $72, $df, $68, $e4, $6c        ;; 01:6769 ????????
    db   $13, $6d, $42, $6d, $71, $6d, $e4, $6c        ;; 01:6771 ????????
    db   $13, $6d, $42, $6d, $71, $6d, $a0, $6d        ;; 01:6779 ????????
    db   $cf, $6d, $fe, $6d, $2d, $6e, $a0, $6d        ;; 01:6781 ????????
    db   $cf, $6d, $fe, $6d, $2d, $6e, $03, $40        ;; 01:6789 ????????
    db   $03, $05, $ff, $00, $40, $72, $7b, $69        ;; 01:6791 ????????
    db   $e4, $6c, $13, $6d, $42, $6d, $71, $6d        ;; 01:6799 ????????
    db   $e4, $6c, $13, $6d, $42, $6d, $71, $6d        ;; 01:67a1 ????????
    db   $e4, $6c, $13, $6d, $42, $6d, $71, $6d        ;; 01:67a9 ????????
    db   $e4, $6c, $13, $6d, $42, $6d, $71, $6d        ;; 01:67b1 ????????
    db   $04, $48, $02, $06, $09, $00, $60, $73        ;; 01:67b9 ????????
    db   $6f, $69, $5c, $6e, $7b, $6e, $9a, $6e        ;; 01:67c1 ????????
    db   $b9, $6e, $5c, $6e, $7b, $6e, $9a, $6e        ;; 01:67c9 ????????
    db   $b9, $6e, $d8, $6e, $e7, $6e, $f6, $6e        ;; 01:67d1 ????????
    db   $05, $6f, $d8, $6e, $e7, $6e, $f6, $6e        ;; 01:67d9 ????????
    db   $05, $6f, $04, $40, $03, $05, $ff, $00        ;; 01:67e1 ????????
    db   $60, $73, $93, $69, $a1, $69, $b0, $69        ;; 01:67e9 ????????
    db   $bf, $69, $ce, $69, $a1, $69, $b0, $69        ;; 01:67f1 ????????
    db   $bf, $69, $ce, $69, $14, $6f, $1b, $6f        ;; 01:67f9 ????????
    db   $22, $6f, $29, $6f, $14, $6f, $1b, $6f        ;; 01:6801 ????????
    db   $22, $6f, $29, $6f, $05, $48, $02, $06        ;; 01:6809 ????????
    db   $10, $00, $80, $71, $df, $68, $28, $70        ;; 01:6811 ????????
    db   $4b, $70, $6e, $70, $91, $70, $28, $70        ;; 01:6819 ????????
    db   $4b, $70, $6e, $70, $91, $70, $b4, $70        ;; 01:6821 ????????
    db   $df, $70, $0a, $71, $35, $71, $b4, $70        ;; 01:6829 ????????
    db   $df, $70, $0a, $71, $35, $71                  ;; 01:6831 ??????

data_01_6837:
    db   $06, $48, $02, $05, $0c, $00, $40, $74        ;; 01:6837 .....?..
    db   $df, $68, $dd, $69, $f0, $69, $03, $6a        ;; 01:683f ..??????
    db   $16, $6a, $dd, $69, $f0, $69, $03, $6a        ;; 01:6847 ????????
    db   $16, $6a, $dd, $69, $f0, $69, $03, $6a        ;; 01:684f ..??????
    db   $16, $6a, $dd, $69, $f0, $69, $03, $6a        ;; 01:6857 ????????
    db   $16, $6a, $04, $50, $02, $06, $00, $00        ;; 01:685f ????????
    db   $40, $78, $03, $69, $d6, $75, $d6, $75        ;; 01:6867 ????????
    db   $d6, $75, $d6, $75, $d6, $75, $d6, $75        ;; 01:686f ????????
    db   $d6, $75, $d6, $75, $d6, $75, $d6, $75        ;; 01:6877 ????????
    db   $d6, $75, $d6, $75, $d6, $75, $d6, $75        ;; 01:687f ????????
    db   $d6, $75, $d6, $75, $04, $50, $02, $05        ;; 01:6887 ????????
    db   $00, $00, $40, $78, $03, $69, $f5, $75        ;; 01:688f ????????
    db   $f5, $75, $f5, $75, $f5, $75, $f5, $75        ;; 01:6897 ????????
    db   $f5, $75, $f5, $75, $f5, $75, $f5, $75        ;; 01:689f ????????
    db   $f5, $75, $f5, $75, $f5, $75, $f5, $75        ;; 01:68a7 ????????
    db   $f5, $75, $f5, $75, $f5, $75, $04, $50        ;; 01:68af ????????
    db   $02, $03, $00, $00, $40, $78, $03, $69        ;; 01:68b7 ????????
    db   $18, $76, $18, $76, $18, $76, $18, $76        ;; 01:68bf ????????
    db   $18, $76, $18, $76, $18, $76, $18, $76        ;; 01:68c7 ????????
    db   $18, $76, $18, $76, $18, $76, $18, $76        ;; 01:68cf ????????
    db   $18, $76, $18, $76, $18, $76, $18, $76        ;; 01:68d7 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 01:68df ........
    db   $08, $0a, $09, $0b, $ff, $ff, $ff, $ff        ;; 01:68e7 ....????
    db   $00, $02, $01, $03, $1a, $1c, $1b, $1d        ;; 01:68ef ????????
    db   $ff, $ff, $ff, $ff, $04, $06, $05, $07        ;; 01:68f7 ????????
    db   $08, $0a, $09, $0b, $ff, $ff, $ff, $ff        ;; 01:68ff ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 01:6907 ????????
    db   $ff, $ff, $ff, $ff, $08, $0a, $09, $0b        ;; 01:690f ????????
    db   $08, $0a, $09, $0b, $00, $02, $01, $03        ;; 01:6917 ????????
    db   $ff, $00, $ff, $01, $ff, $00, $ff, $01        ;; 01:691f ????????
    db   $04, $06, $05, $07, $02, $04, $03, $05        ;; 01:6927 ????????
    db   $02, $04, $03, $05, $0c, $0e, $0d, $0f        ;; 01:692f ????????
    db   $10, $12, $11, $13, $ff, $ff, $ff, $ff        ;; 01:6937 ????????
    db   $04, $06, $05, $07, $00, $02, $01, $03        ;; 01:693f ........
    db   $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff        ;; 01:6947 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:694f ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:6957 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 01:695f ????????
    db   $00, $01, $ff, $02, $03, $ff, $04, $05        ;; 01:6967 ????????
    db   $ff, $ff, $ff, $ff, $00, $ff, $01, $04        ;; 01:696f ????????
    db   $0b, $0d, $0c, $ff, $03, $ff, $ff, $03        ;; 01:6977 ????????
    db   $ff, $0e, $ff, $0e, $ff, $ff, $11, $11        ;; 01:697f ????????
    db   $03, $ff, $ff, $ff, $ff, $0e, $ff, $0e        ;; 01:6987 ????????
    db   $ff, $ff, $11, $11, $ff, $ff, $ff, $ff        ;; 01:698f ????????
    db   $02, $05, $03, $06, $07, $09, $08, $0a        ;; 01:6997 ????????
    db   $02, $50, $11, $03, $08, $50, $11, $03        ;; 01:699f ...??..?
    db   $10, $50, $11, $03, $08, $50, $00, $02        ;; 01:69a7 ?..??...
    db   $50, $12, $03, $f8, $50, $12, $03, $f0        ;; 01:69af ..??..??
    db   $50, $12, $03, $f8, $50, $00, $02, $50        ;; 01:69b7 ..??....
    db   $14, $f8, $02, $50, $14, $f0, $02, $50        ;; 01:69bf .??..??.
    db   $14, $f8, $02, $50, $00, $02, $50, $18        ;; 01:69c7 .??.....
    db   $08, $fe, $50, $18, $10, $fe, $50, $18        ;; 01:69cf ??..??..
    db   $08, $fe, $50, $00, $01, $40, $94, $f8        ;; 01:69d7 ??.....?
    db   $f6, $40, $14, $f5, $00, $40, $91, $fb        ;; 01:69df ?..??..?
    db   $0e, $50, $11, $03, $10, $50, $00, $01        ;; 01:69e7 ?..??...
    db   $40, $91, $f8, $0a, $40, $14, $f5, $00        ;; 01:69ef ..??..??
    db   $40, $94, $fb, $f2, $50, $12, $03, $f0        ;; 01:69f7 ..??..??
    db   $50, $00, $01, $40, $98, $0b, $10, $40        ;; 01:69ff .....??.
    db   $11, $03, $10, $40, $91, $f6, $0a, $50        ;; 01:6a07 .??..??.
    db   $14, $f0, $00, $50, $00, $01, $40, $94        ;; 01:6a0f .??.....
    db   $f7, $f2, $40, $12, $00, $f0, $40, $92        ;; 01:6a17 ??..??..
    db   $0c, $f5, $50, $18, $10, $00, $50, $00        ;; 01:6a1f ??..??..
    db   $21, $65, $06, $11, $03, $00, $00, $21        ;; 01:6a27 ????????
    db   $65, $06, $12, $03, $00, $00, $21, $65        ;; 01:6a2f ????????
    db   $06, $14, $00, $00, $00, $21, $65, $06        ;; 01:6a37 ????????
    db   $18, $00, $00, $00, $1b, $91, $11, $03        ;; 01:6a3f ????????
    db   $10, $50, $91, $f6, $0a, $90, $14, $f0        ;; 01:6a47 ????????
    db   $00, $50, $94, $fb, $f2, $90, $12, $03        ;; 01:6a4f ????????
    db   $f0, $50, $92, $0c, $f5, $90, $18, $10        ;; 01:6a57 ????????
    db   $00, $50, $98, $09, $0e, $90, $00, $1b        ;; 01:6a5f ????????
    db   $91, $12, $03, $f0, $50, $92, $0c, $f5        ;; 01:6a67 ????????
    db   $90, $18, $10, $00, $50, $98, $09, $0e        ;; 01:6a6f ????????
    db   $90, $11, $03, $10, $50, $91, $f6, $0a        ;; 01:6a77 ????????
    db   $90, $14, $f0, $00, $50, $94, $fb, $f2        ;; 01:6a7f ????????
    db   $90, $00, $1b, $91, $14, $f0, $00, $50        ;; 01:6a87 ????????
    db   $94, $fb, $f2, $90, $12, $03, $f0, $50        ;; 01:6a8f ????????
    db   $92, $0c, $f5, $90, $18, $10, $00, $50        ;; 01:6a97 ????????
    db   $98, $09, $0e, $90, $11, $03, $10, $50        ;; 01:6a9f ????????
    db   $91, $f6, $0a, $90, $00, $1b, $91, $18        ;; 01:6aa7 ????????
    db   $10, $00, $50, $98, $09, $0e, $90, $11        ;; 01:6aaf ????????
    db   $03, $10, $50, $91, $f6, $0a, $90, $14        ;; 01:6ab7 ????????
    db   $f0, $00, $50, $94, $fb, $f2, $90, $12        ;; 01:6abf ????????
    db   $03, $f0, $50, $92, $0c, $f5, $90, $00        ;; 01:6ac7 ????????
    db   $08, $50, $11, $03, $0a, $50, $14, $03        ;; 01:6acf ????????
    db   $0a, $50, $12, $03, $0a, $50, $18, $03        ;; 01:6ad7 ????????
    db   $0a, $58, $91, $03, $0a, $50, $00, $08        ;; 01:6adf ????????
    db   $50, $12, $03, $f6, $50, $18, $03, $f6        ;; 01:6ae7 ????????
    db   $50, $11, $03, $f6, $50, $14, $03, $f6        ;; 01:6aef ????????
    db   $58, $92, $03, $f6, $50, $00, $08, $50        ;; 01:6af7 ????????
    db   $11, $f4, $00, $50, $14, $f4, $00, $50        ;; 01:6aff ????????
    db   $12, $f4, $00, $50, $18, $f4, $00, $58        ;; 01:6b07 ????????
    db   $91, $f4, $00, $50, $00, $08, $50, $12        ;; 01:6b0f ????????
    db   $0c, $00, $50, $18, $0c, $00, $50, $11        ;; 01:6b17 ????????
    db   $0c, $00, $50, $14, $0c, $00, $58, $92        ;; 01:6b1f ????????
    db   $0c, $00, $50, $00, $00, $52, $11, $03        ;; 01:6b27 ????????
    db   $0a, $50, $00, $00, $52, $12, $03, $f6        ;; 01:6b2f ????????
    db   $50, $00, $00, $52, $14, $f4, $00, $50        ;; 01:6b37 ????????
    db   $00, $00, $52, $18, $0c, $00, $50, $00        ;; 01:6b3f ????????
    db   $03, $50, $11, $00, $00, $50, $12, $00        ;; 01:6b47 ????????
    db   $00, $50, $91, $00, $00, $50, $94, $00        ;; 01:6b4f ????????
    db   $00, $58, $11, $f0, $00, $50, $12, $f0        ;; 01:6b57 ????????
    db   $00, $50, $91, $f0, $00, $50, $94, $f0        ;; 01:6b5f ????????
    db   $00, $50, $00, $00, $50, $11, $00, $00        ;; 01:6b67 ????????
    db   $50, $12, $00, $00, $50, $91, $00, $00        ;; 01:6b6f ????????
    db   $50, $94, $00, $00, $50, $00, $00, $53        ;; 01:6b77 ????????
    db   $11, $03, $0a, $50, $00, $00, $53, $12        ;; 01:6b7f ????????
    db   $03, $f6, $50, $00, $00, $53, $14, $f4        ;; 01:6b87 ????????
    db   $00, $50, $00, $00, $53, $18, $0c, $00        ;; 01:6b8f ????????
    db   $50, $00, $00, $50, $11, $00, $00, $50        ;; 01:6b97 ????????
    db   $11, $00, $00, $50, $12, $00, $00, $50        ;; 01:6b9f ????????
    db   $12, $00, $00, $50, $11, $00, $00, $58        ;; 01:6ba7 ????????
    db   $11, $00, $00, $50, $00, $01, $40, $98        ;; 01:6baf ????????
    db   $0b, $10, $40, $11, $03, $10, $40, $91        ;; 01:6bb7 ????????
    db   $f6, $0a, $50, $14, $f0, $00, $50, $94        ;; 01:6bbf ????????
    db   $f5, $f8, $50, $00, $01, $40, $94, $f7        ;; 01:6bc7 ????????
    db   $f2, $40, $12, $00, $f0, $40, $92, $0c        ;; 01:6bcf ????????
    db   $f5, $50, $18, $10, $00, $50, $98, $0f        ;; 01:6bd7 ????????
    db   $06, $50, $00, $1c, $40, $94, $f8, $f6        ;; 01:6bdf ????????
    db   $40, $14, $f5, $00, $40, $91, $fb, $0e        ;; 01:6be7 ????????
    db   $54, $06, $11, $03, $13, $11, $03, $13        ;; 01:6bef ????????
    db   $98, $05, $12, $98, $05, $12, $18, $07        ;; 01:6bf7 ????????
    db   $10, $18, $07, $10, $92, $05, $0e, $92        ;; 01:6bff ????????
    db   $05, $0e, $12, $03, $0d, $12, $03, $0d        ;; 01:6c07 ????????
    db   $94, $01, $0e, $94, $01, $0e, $14, $00        ;; 01:6c0f ????????
    db   $10, $14, $00, $10, $91, $01, $12, $91        ;; 01:6c17 ????????
    db   $01, $12, $00, $1c, $40, $91, $f8, $0a        ;; 01:6c1f ????????
    db   $40, $14, $f5, $00, $40, $94, $fb, $f2        ;; 01:6c27 ????????
    db   $54, $06, $12, $03, $ed, $12, $03, $ed        ;; 01:6c2f ????????
    db   $92, $05, $ee, $92, $05, $ee, $18, $06        ;; 01:6c37 ????????
    db   $f0, $18, $06, $f0, $98, $05, $f2, $98        ;; 01:6c3f ????????
    db   $05, $f2, $11, $03, $f3, $11, $03, $f3        ;; 01:6c47 ????????
    db   $91, $01, $f2, $91, $01, $f2, $14, $00        ;; 01:6c4f ????????
    db   $f0, $14, $00, $f0, $94, $04, $ee, $94        ;; 01:6c57 ????????
    db   $04, $ee, $00, $1c, $40, $98, $0b, $10        ;; 01:6c5f ????????
    db   $40, $11, $03, $10, $40, $91, $f6, $0a        ;; 01:6c67 ????????
    db   $54, $06, $14, $ed, $00, $14, $ed, $00        ;; 01:6c6f ????????
    db   $94, $ee, $fe, $94, $ee, $fe, $12, $f0        ;; 01:6c77 ????????
    db   $fd, $12, $f0, $fd, $92, $f2, $fe, $92        ;; 01:6c7f ????????
    db   $f2, $fe, $18, $f3, $00, $18, $f3, $00        ;; 01:6c87 ????????
    db   $98, $f2, $02, $98, $f2, $02, $11, $f0        ;; 01:6c8f ????????
    db   $03, $11, $f0, $03, $91, $ee, $02, $91        ;; 01:6c97 ????????
    db   $ee, $02, $00, $1c, $40, $94, $f7, $f2        ;; 01:6c9f ????????
    db   $40, $12, $00, $f0, $40, $92, $0c, $f5        ;; 01:6ca7 ????????
    db   $54, $06, $18, $14, $00, $18, $14, $00        ;; 01:6caf ????????
    db   $98, $12, $02, $98, $12, $02, $11, $10        ;; 01:6cb7 ????????
    db   $03, $11, $10, $03, $91, $0e, $02, $91        ;; 01:6cbf ????????
    db   $0e, $02, $14, $0d, $00, $14, $0d, $00        ;; 01:6cc7 ????????
    db   $94, $0e, $fe, $94, $0e, $fe, $12, $10        ;; 01:6ccf ????????
    db   $fd, $12, $10, $fd, $92, $12, $fe, $92        ;; 01:6cd7 ????????
    db   $12, $fe, $00, $1d, $50, $91, $fc, $0c        ;; 01:6cdf ????????
    db   $50, $11, $03, $0f, $50, $98, $0b, $0d        ;; 01:6ce7 ????????
    db   $50, $18, $10, $fe, $70, $92, $0e, $f4        ;; 01:6cef ????????
    db   $70, $12, $00, $f2, $70, $94, $f8, $f6        ;; 01:6cf7 ????????
    db   $40, $14, $f5, $00, $40, $91, $fc, $0c        ;; 01:6cff ????????
    db   $50, $11, $03, $0f, $50, $98, $0b, $0d        ;; 01:6d07 ????????
    db   $50, $00, $1d, $50, $94, $fc, $f4, $50        ;; 01:6d0f ????????
    db   $12, $03, $f1, $50, $92, $0b, $f3, $50        ;; 01:6d17 ????????
    db   $18, $10, $02, $70, $98, $0e, $0c, $70        ;; 01:6d1f ????????
    db   $11, $00, $0e, $70, $91, $f8, $0a, $40        ;; 01:6d27 ????????
    db   $14, $f5, $00, $40, $94, $fc, $f4, $50        ;; 01:6d2f ????????
    db   $12, $03, $f1, $50, $92, $0b, $f3, $50        ;; 01:6d37 ????????
    db   $00, $1d, $70, $91, $f4, $0d, $70, $14        ;; 01:6d3f ????????
    db   $f2, $05, $70, $94, $f3, $fd, $50, $12        ;; 01:6d47 ????????
    db   $f8, $f5, $50, $92, $07, $fb, $50, $18        ;; 01:6d4f ????????
    db   $0c, $03, $70, $98, $03, $0d, $70, $11        ;; 01:6d57 ????????
    db   $fa, $10, $70, $91, $f4, $0d, $70, $14        ;; 01:6d5f ????????
    db   $f2, $05, $70, $94, $f3, $fd, $50, $00        ;; 01:6d67 ????????
    db   $1d, $50, $92, $0c, $fb, $50, $18, $10        ;; 01:6d6f ????????
    db   $fd, $50, $98, $0f, $06, $50, $11, $02        ;; 01:6d77 ????????
    db   $0b, $70, $91, $fa, $09, $70, $14, $f2        ;; 01:6d7f ????????
    db   $fc, $80, $94, $f7, $f2, $40, $12, $00        ;; 01:6d87 ????????
    db   $f0, $40, $92, $0c, $fb, $50, $18, $10        ;; 01:6d8f ????????
    db   $fd, $50, $98, $0f, $06, $50, $00, $1d        ;; 01:6d97 ????????
    db   $58, $91, $f4, $14, $50, $11, $03, $17        ;; 01:6d9f ????????
    db   $50, $98, $13, $15, $50, $18, $18, $fe        ;; 01:6da7 ????????
    db   $70, $92, $16, $ec, $70, $12, $00, $ea        ;; 01:6daf ????????
    db   $70, $94, $f0, $ee, $40, $14, $ed, $00        ;; 01:6db7 ????????
    db   $40, $91, $f4, $14, $50, $11, $03, $17        ;; 01:6dbf ????????
    db   $50, $98, $13, $15, $50, $00, $1d, $58        ;; 01:6dc7 ????????
    db   $94, $f4, $ec, $50, $12, $03, $e9, $50        ;; 01:6dcf ????????
    db   $92, $13, $eb, $50, $18, $18, $02, $70        ;; 01:6dd7 ????????
    db   $98, $16, $14, $70, $11, $00, $16, $70        ;; 01:6ddf ????????
    db   $91, $f0, $12, $40, $14, $ed, $00, $40        ;; 01:6de7 ????????
    db   $94, $f4, $ec, $50, $12, $03, $e9, $50        ;; 01:6def ????????
    db   $92, $13, $eb, $50, $00, $1d, $78, $91        ;; 01:6df7 ????????
    db   $ec, $15, $70, $14, $ea, $05, $70, $94        ;; 01:6dff ????????
    db   $eb, $f5, $50, $12, $f8, $ed, $50, $92        ;; 01:6e07 ????????
    db   $0f, $f3, $50, $18, $14, $03, $70, $98        ;; 01:6e0f ????????
    db   $0b, $15, $70, $11, $fa, $18, $70, $91        ;; 01:6e17 ????????
    db   $ec, $15, $70, $14, $ea, $05, $70, $94        ;; 01:6e1f ????????
    db   $eb, $f5, $50, $00, $1d, $58, $92, $14        ;; 01:6e27 ????????
    db   $f3, $50, $18, $18, $fd, $50, $98, $17        ;; 01:6e2f ????????
    db   $0e, $50, $11, $02, $13, $70, $91, $f2        ;; 01:6e37 ????????
    db   $11, $70, $14, $ea, $fc, $80, $94, $ef        ;; 01:6e3f ????????
    db   $ea, $40, $12, $00, $e8, $40, $92, $14        ;; 01:6e47 ????????
    db   $f3, $50, $18, $18, $fd, $50, $98, $17        ;; 01:6e4f ????????
    db   $0e, $50, $00, $1d, $50, $11, $03, $08        ;; 01:6e57 ????????
    db   $50, $11, $03, $10, $58, $11, $03, $18        ;; 01:6e5f ????????
    db   $50, $11, $03, $20, $50, $11, $03, $18        ;; 01:6e67 ????????
    db   $50, $11, $03, $10, $50, $11, $03, $08        ;; 01:6e6f ????????
    db   $50, $00, $02, $50, $12, $03, $f8, $50        ;; 01:6e77 ????????
    db   $12, $03, $f0, $58, $12, $03, $e8, $50        ;; 01:6e7f ????????
    db   $12, $03, $e0, $50, $12, $03, $e8, $50        ;; 01:6e87 ????????
    db   $12, $03, $f0, $50, $12, $03, $f8, $50        ;; 01:6e8f ????????
    db   $00, $02, $50, $14, $f8, $02, $50, $14        ;; 01:6e97 ????????
    db   $f0, $02, $58, $14, $e8, $02, $50, $14        ;; 01:6e9f ????????
    db   $e0, $02, $50, $14, $e8, $02, $50, $14        ;; 01:6ea7 ????????
    db   $f0, $02, $50, $14, $f8, $02, $50, $00        ;; 01:6eaf ????????
    db   $02, $50, $18, $08, $fe, $50, $18, $10        ;; 01:6eb7 ????????
    db   $fe, $58, $18, $18, $fe, $50, $18, $20        ;; 01:6ebf ????????
    db   $fe, $50, $18, $18, $fe, $50, $18, $10        ;; 01:6ec7 ????????
    db   $fe, $50, $18, $08, $fe, $50, $00, $02        ;; 01:6ecf ????????
    db   $50, $11, $03, $00, $50, $11, $03, $08        ;; 01:6ed7 ????????
    db   $5c, $04, $11, $03, $10, $00, $02, $50        ;; 01:6edf ????????
    db   $12, $03, $00, $50, $12, $03, $f8, $5c        ;; 01:6ee7 ????????
    db   $04, $12, $03, $f0, $00, $02, $50, $14        ;; 01:6eef ????????
    db   $00, $02, $50, $14, $f8, $02, $5c, $04        ;; 01:6ef7 ????????
    db   $14, $f0, $02, $00, $02, $50, $18, $00        ;; 01:6eff ????????
    db   $fe, $50, $18, $08, $fe, $5c, $04, $18        ;; 01:6f07 ????????
    db   $10, $fe, $00, $00, $54, $04, $11, $03        ;; 01:6f0f ????????
    db   $00, $00, $00, $54, $04, $12, $03, $00        ;; 01:6f17 ????????
    db   $00, $00, $54, $04, $14, $00, $02, $00        ;; 01:6f1f ????????
    db   $00, $54, $04, $18, $00, $fe, $00, $1f        ;; 01:6f27 ????????
    db   $48, $12, $f7, $ec, $40, $11, $01, $10        ;; 01:6f2f ????????
    db   $58, $11, $01, $20, $50, $11, $01, $30        ;; 01:6f37 ????????
    db   $50, $11, $01, $20, $50, $11, $01, $10        ;; 01:6f3f ????????
    db   $50, $00, $1f, $48, $11, $f7, $13, $40        ;; 01:6f47 ????????
    db   $12, $01, $f0, $58, $12, $01, $e0, $50        ;; 01:6f4f ????????
    db   $12, $01, $d0, $50, $12, $01, $e0, $50        ;; 01:6f57 ????????
    db   $12, $01, $f0, $50, $00, $1f, $48, $14        ;; 01:6f5f ????????
    db   $13, $0d, $40, $18, $f0, $00, $58, $18        ;; 01:6f67 ????????
    db   $e0, $00, $50, $18, $d0, $00, $50, $18        ;; 01:6f6f ????????
    db   $e0, $00, $50, $18, $f0, $00, $50, $00        ;; 01:6f77 ????????
    db   $1f, $48, $18, $f0, $f0, $40, $14, $10        ;; 01:6f7f ????????
    db   $fd, $58, $14, $20, $fd, $50, $14, $30        ;; 01:6f87 ????????
    db   $fd, $50, $14, $20, $fd, $50, $14, $10        ;; 01:6f8f ????????
    db   $fd, $50, $00, $1f, $48, $12, $f7, $ec        ;; 01:6f97 ????????
    db   $40, $11, $01, $10, $58, $11, $01, $20        ;; 01:6f9f ????????
    db   $50, $11, $01, $30, $50, $11, $01, $40        ;; 01:6fa7 ????????
    db   $50, $11, $01, $30, $50, $11, $01, $20        ;; 01:6faf ????????
    db   $50, $11, $01, $10, $50, $00, $1f, $48        ;; 01:6fb7 ????????
    db   $11, $f7, $13, $40, $12, $01, $f0, $58        ;; 01:6fbf ????????
    db   $12, $01, $e0, $50, $12, $01, $d0, $50        ;; 01:6fc7 ????????
    db   $12, $01, $c0, $50, $12, $01, $d1, $50        ;; 01:6fcf ????????
    db   $12, $01, $e0, $50, $12, $01, $f0, $50        ;; 01:6fd7 ????????
    db   $00, $1f, $48, $14, $13, $0d, $40, $18        ;; 01:6fdf ????????
    db   $f0, $00, $58, $18, $e0, $00, $50, $18        ;; 01:6fe7 ????????
    db   $d0, $00, $50, $18, $c0, $00, $50, $18        ;; 01:6fef ????????
    db   $d0, $00, $50, $18, $e0, $00, $50, $18        ;; 01:6ff7 ????????
    db   $f0, $00, $50, $00, $1f, $48, $18, $f0        ;; 01:6fff ????????
    db   $f0, $40, $14, $10, $fd, $58, $14, $20        ;; 01:7007 ????????
    db   $fd, $50, $14, $30, $fd, $50, $14, $40        ;; 01:700f ????????
    db   $fd, $50, $14, $30, $fd, $50, $14, $20        ;; 01:7017 ????????
    db   $fd, $50, $14, $10, $fd, $50, $00, $1f        ;; 01:701f ????????
    db   $50, $98, $0b, $0d, $50, $18, $10, $fe        ;; 01:7027 ????????
    db   $70, $92, $0e, $f4, $70, $12, $00, $f2        ;; 01:702f ????????
    db   $70, $94, $f8, $f6, $40, $11, $01, $0f        ;; 01:7037 ????????
    db   $58, $11, $01, $1f, $50, $11, $01, $0f        ;; 01:703f ????????
    db   $50, $00, $1f, $50, $92, $0b, $f3, $50        ;; 01:7047 ????????
    db   $18, $10, $02, $70, $98, $0e, $0c, $70        ;; 01:704f ????????
    db   $11, $00, $0e, $70, $91, $f8, $0a, $40        ;; 01:7057 ????????
    db   $12, $01, $f1, $58, $12, $01, $e1, $50        ;; 01:705f ????????
    db   $12, $01, $f1, $50, $00, $1f, $70, $94        ;; 01:7067 ????????
    db   $f3, $fd, $50, $12, $f8, $f5, $50, $92        ;; 01:706f ????????
    db   $07, $fb, $50, $18, $0c, $03, $70, $98        ;; 01:7077 ????????
    db   $03, $0d, $70, $14, $f0, $00, $58, $14        ;; 01:707f ????????
    db   $e0, $00, $50, $14, $f0, $00, $50, $00        ;; 01:7087 ????????
    db   $1f, $50, $98, $0f, $06, $50, $11, $02        ;; 01:708f ????????
    db   $0b, $70, $91, $fa, $09, $70, $14, $f2        ;; 01:7097 ????????
    db   $fc, $80, $94, $f7, $f2, $40, $18, $10        ;; 01:709f ????????
    db   $fd, $58, $18, $20, $fd, $50, $18, $10        ;; 01:70a7 ????????
    db   $fd, $50, $00, $1f, $50, $98, $0b, $0d        ;; 01:70af ????????
    db   $50, $18, $10, $fe, $70, $92, $0e, $f4        ;; 01:70b7 ????????
    db   $70, $12, $00, $f2, $70, $94, $f8, $f6        ;; 01:70bf ????????
    db   $40, $11, $01, $0f, $58, $11, $01, $1f        ;; 01:70c7 ????????
    db   $50, $11, $01, $30, $50, $11, $01, $1f        ;; 01:70cf ????????
    db   $50, $11, $01, $0f, $50, $00, $1f, $50        ;; 01:70d7 ????????
    db   $92, $0b, $f3, $50, $18, $10, $02, $70        ;; 01:70df ????????
    db   $98, $0e, $0c, $70, $11, $00, $0e, $70        ;; 01:70e7 ????????
    db   $91, $f8, $0a, $40, $12, $01, $f1, $58        ;; 01:70ef ????????
    db   $12, $01, $e1, $50, $12, $01, $d0, $50        ;; 01:70f7 ????????
    db   $12, $01, $e1, $50, $12, $01, $f1, $50        ;; 01:70ff ????????
    db   $00, $1f, $70, $94, $f3, $fd, $50, $12        ;; 01:7107 ????????
    db   $f8, $f5, $50, $92, $07, $fb, $50, $18        ;; 01:710f ????????
    db   $0c, $03, $70, $98, $03, $0d, $70, $14        ;; 01:7117 ????????
    db   $f0, $00, $58, $14, $e0, $00, $50, $14        ;; 01:711f ????????
    db   $d0, $00, $50, $14, $e0, $00, $50, $14        ;; 01:7127 ????????
    db   $f0, $00, $50, $00, $1f, $50, $98, $0f        ;; 01:712f ????????
    db   $06, $50, $11, $02, $0b, $70, $91, $fa        ;; 01:7137 ????????
    db   $09, $70, $14, $f2, $fc, $80, $94, $f7        ;; 01:713f ????????
    db   $f2, $40, $18, $10, $fd, $58, $18, $20        ;; 01:7147 ????????
    db   $fd, $50, $18, $30, $fd, $50, $18, $20        ;; 01:714f ????????
    db   $fd, $50, $18, $10, $fd, $50, $00, $1d        ;; 01:7157 ????????
    db   $40, $94, $00, $fd, $40, $00, $1d, $40        ;; 01:715f ????????
    db   $91, $00, $03, $40, $00, $1d, $40, $98        ;; 01:7167 ????????
    db   $03, $07, $40, $00, $1d, $40, $94, $00        ;; 01:716f ????????
    db   $f8, $40, $00, $00, $50, $11, $01, $0f        ;; 01:7177 ????????
    db   $50, $00, $00, $50, $12, $01, $f1, $50        ;; 01:717f ????????
    db   $00, $00, $50, $14, $f0, $00, $50, $00        ;; 01:7187 ????????
    db   $00, $50, $18, $10, $fd, $50, $00, $00        ;; 01:718f ????????
    db   $50, $11, $01, $0f, $58, $11, $01, $1f        ;; 01:7197 ????????
    db   $50, $11, $01, $0f, $50, $00, $00, $50        ;; 01:719f ????????
    db   $12, $01, $f1, $58, $12, $01, $e1, $50        ;; 01:71a7 ????????
    db   $12, $01, $f1, $50, $00, $00, $50, $14        ;; 01:71af ????????
    db   $f0, $00, $58, $14, $e0, $00, $50, $14        ;; 01:71b7 ????????
    db   $f0, $00, $50, $00, $00, $50, $18, $10        ;; 01:71bf ????????
    db   $fd, $58, $18, $20, $fd, $50, $18, $10        ;; 01:71c7 ????????
    db   $fd, $50, $00, $00, $50, $11, $01, $0f        ;; 01:71cf ????????
    db   $58, $11, $01, $1f, $50, $11, $01, $2f        ;; 01:71d7 ????????
    db   $50, $11, $01, $1f, $50, $11, $01, $0f        ;; 01:71df ????????
    db   $50, $00, $00, $50, $12, $01, $f1, $58        ;; 01:71e7 ????????
    db   $12, $01, $e1, $50, $12, $01, $d1, $50        ;; 01:71ef ????????
    db   $12, $01, $e1, $50, $12, $01, $f1, $50        ;; 01:71f7 ????????
    db   $00, $00, $50, $14, $f0, $00, $58, $14        ;; 01:71ff ????????
    db   $e0, $00, $50, $14, $d0, $00, $50, $14        ;; 01:7207 ????????
    db   $e0, $00, $50, $14, $f0, $00, $50, $00        ;; 01:720f ????????
    db   $00, $50, $18, $10, $fd, $58, $18, $20        ;; 01:7217 ????????
    db   $fd, $50, $18, $30, $fd, $50, $18, $20        ;; 01:721f ????????
    db   $fd, $50, $18, $10, $fd, $50, $00, $ff        ;; 01:7227 ???????.
    db   $48, $12, $15, $26, $40, $94, $22, $14        ;; 01:722f ..??..??
    db   $40, $94, $23, $00, $40, $12, $1b, $f1        ;; 01:7237 ..??..??
    db   $40, $12, $0e, $e8, $40, $91, $00, $e9        ;; 01:723f ..??..??
    db   $40, $91, $f7, $ef, $40, $12, $f3, $f8        ;; 01:7247 ..??..??
    db   $40, $12, $f5, $00, $40, $98, $fa, $03        ;; 01:724f ..??..??
    db   $40, $98, $fe, $03, $40, $00, $ff, $48        ;; 01:7257 ..??....
    db   $12, $eb, $da, $40, $94, $de, $ec, $40        ;; 01:725f .??..??.
    db   $94, $dd, $00, $40, $12, $e5, $0f, $40        ;; 01:7267 .??..??.
    db   $12, $f2, $18, $40, $91, $00, $17, $40        ;; 01:726f .??..??.
    db   $91, $09, $11, $40, $12, $0d, $08, $40        ;; 01:7277 .??..??.
    db   $12, $0b, $00, $40, $98, $06, $fd, $40        ;; 01:727f .??..??.
    db   $98, $02, $fd, $40, $00, $05, $40, $94        ;; 01:7287 .???....
    db   $da, $15, $40, $12, $ec, $22, $40, $12        ;; 01:728f ??..??..
    db   $00, $23, $40, $91, $0f, $1b, $40, $91        ;; 01:7297 ??..??..
    db   $18, $0e, $40, $12, $17, $00, $40, $12        ;; 01:729f ??..??..
    db   $11, $f7, $40, $98, $08, $f3, $40, $98        ;; 01:72a7 ??..??..
    db   $00, $f5, $40, $12, $fd, $fa, $40, $12        ;; 01:72af ??..??..
    db   $fd, $fe, $40, $00, $ff, $48, $94, $26        ;; 01:72b7 ???....?
    db   $eb, $40, $12, $14, $de, $40, $12, $00        ;; 01:72bf ?..??..?
    db   $dd, $40, $91, $f1, $e5, $40, $91, $e8        ;; 01:72c7 ?..??..?
    db   $f2, $40, $12, $e9, $00, $40, $12, $ef        ;; 01:72cf ?..??..?
    db   $09, $40, $98, $f8, $0d, $40, $98, $00        ;; 01:72d7 ?..??..?
    db   $0b, $40, $12, $03, $06, $40, $12, $03        ;; 01:72df ?..??..?
    db   $02, $40, $00, $05, $40, $12, $f7, $f6        ;; 01:72e7 ??.?????
    db   $40, $12, $fc, $f9, $40, $12, $fc, $05        ;; 01:72ef ????????
    db   $40, $12, $f7, $09, $40, $12, $fe, $f6        ;; 01:72f7 ????????
    db   $40, $12, $03, $f9, $40, $12, $03, $05        ;; 01:72ff ????????
    db   $40, $12, $fe, $09, $40, $12, $05, $f6        ;; 01:7307 ????????
    db   $40, $12, $0a, $f9, $40, $12, $0a, $05        ;; 01:730f ????????
    db   $48, $12, $05, $09, $40, $00, $00, $48        ;; 01:7317 ????????
    db   $91, $00, $00, $40, $91, $f7, $09, $40        ;; 01:731f ????????
    db   $91, $f1, $0f, $40, $91, $eb, $15, $40        ;; 01:7327 ????????
    db   $91, $e6, $1a, $40, $91, $e3, $1d, $40        ;; 01:732f ????????
    db   $91, $e1, $1f, $40, $91, $e0, $20, $40        ;; 01:7337 ????????
    db   $91, $e0, $20, $40, $91, $e0, $20, $40        ;; 01:733f ????????
    db   $00, $00, $48, $92, $00, $00, $40, $92        ;; 01:7347 ????????
    db   $09, $f7, $40, $92, $0f, $f1, $40, $92        ;; 01:734f ????????
    db   $15, $eb, $40, $92, $1a, $e6, $40, $92        ;; 01:7357 ????????
    db   $1d, $e3, $40, $92, $1f, $e1, $40, $92        ;; 01:735f ????????
    db   $20, $e0, $40, $92, $20, $e0, $40, $92        ;; 01:7367 ????????
    db   $20, $e0, $40, $00, $0a, $40, $94, $00        ;; 01:736f ????????
    db   $00, $40, $94, $f7, $f7, $40, $94, $f1        ;; 01:7377 ????????
    db   $f1, $40, $94, $eb, $eb, $40, $94, $e6        ;; 01:737f ????????
    db   $e6, $40, $94, $e3, $e3, $40, $94, $e1        ;; 01:7387 ????????
    db   $e1, $40, $94, $e0, $e0, $40, $94, $e0        ;; 01:738f ????????
    db   $e0, $40, $94, $e0, $e0, $40, $00, $00        ;; 01:7397 ????????
    db   $48, $98, $00, $00, $40, $98, $09, $09        ;; 01:739f ????????
    db   $40, $98, $0f, $0f, $40, $98, $15, $15        ;; 01:73a7 ????????
    db   $40, $98, $1a, $1a, $40, $98, $1d, $1d        ;; 01:73af ????????
    db   $40, $98, $1f, $1f, $40, $98, $20, $20        ;; 01:73b7 ????????
    db   $40, $98, $20, $20, $40, $98, $20, $20        ;; 01:73bf ????????
    db   $40, $00, $ff, $48, $12, $00, $00, $40        ;; 01:73c7 ????????
    db   $12, $fd, $03, $40, $12, $f9, $05, $40        ;; 01:73cf ????????
    db   $12, $f5, $03, $40, $12, $f5, $ff, $40        ;; 01:73d7 ????????
    db   $12, $f8, $f7, $40, $12, $00, $ed, $40        ;; 01:73df ????????
    db   $12, $0b, $e5, $40, $12, $17, $e1, $40        ;; 01:73e7 ????????
    db   $12, $22, $e3, $40, $12, $27, $ec, $40        ;; 01:73ef ????????
    db   $12, $26, $fc, $40, $12, $1c, $0e, $40        ;; 01:73f7 ????????
    db   $00, $ff, $48, $12, $00, $00, $40, $12        ;; 01:73ff ????????
    db   $03, $fd, $40, $12, $07, $fb, $40, $12        ;; 01:7407 ????????
    db   $0b, $fd, $40, $12, $0b, $01, $40, $12        ;; 01:740f ????????
    db   $08, $09, $40, $12, $00, $13, $40, $12        ;; 01:7417 ????????
    db   $f5, $1b, $40, $12, $e9, $1f, $40, $12        ;; 01:741f ????????
    db   $de, $1d, $40, $12, $d9, $14, $40, $12        ;; 01:7427 ????????
    db   $da, $04, $40, $12, $e4, $f2, $40, $00        ;; 01:742f ????????
    db   $09, $40, $12, $00, $00, $40, $12, $01        ;; 01:7437 ????????
    db   $01, $40, $12, $00, $05, $40, $12, $fd        ;; 01:743f ????????
    db   $0b, $40, $12, $f6, $0f, $40, $12, $ee        ;; 01:7447 ????????
    db   $11, $40, $12, $e9, $0e, $40, $12, $e7        ;; 01:744f ????????
    db   $05, $40, $12, $eb, $fa, $40, $12, $f5        ;; 01:7457 ????????
    db   $eb, $40, $12, $04, $de, $40, $12, $15        ;; 01:745f ????????
    db   $d5, $40, $12, $26, $d3, $40, $00, $ff        ;; 01:7467 ????????
    db   $48, $12, $00, $00, $40, $12, $fe, $ff        ;; 01:746f ????????
    db   $40, $12, $00, $fb, $40, $12, $03, $f5        ;; 01:7477 ????????
    db   $40, $12, $0a, $f1, $40, $12, $12, $ef        ;; 01:747f ????????
    db   $40, $12, $17, $f2, $40, $12, $19, $fb        ;; 01:7487 ????????
    db   $40, $12, $15, $06, $40, $12, $0b, $15        ;; 01:748f ????????
    db   $40, $12, $fc, $22, $40, $12, $eb, $2b        ;; 01:7497 ????????
    db   $40, $12, $da, $2d, $40, $00, $00, $50        ;; 01:749f ????????
    db   $94, $00, $0f, $54, $08, $12, $00, $00        ;; 01:74a7 ????????
    db   $91, $00, $00, $00, $00, $50, $94, $00        ;; 01:74af ????????
    db   $f1, $54, $08, $12, $00, $00, $91, $00        ;; 01:74b7 ????????
    db   $00, $00, $00, $50, $94, $f1, $00, $54        ;; 01:74bf ????????
    db   $08, $12, $00, $00, $91, $00, $00, $00        ;; 01:74c7 ????????
    db   $00, $50, $94, $10, $00, $54, $08, $12        ;; 01:74cf ????????
    db   $00, $00, $91, $00, $00, $00, $ff, $48        ;; 01:74d7 ????????
    db   $12, $01, $03, $40, $12, $05, $05, $40        ;; 01:74df ????????
    db   $12, $0b, $05, $40, $12, $0e, $02, $40        ;; 01:74e7 ????????
    db   $12, $12, $fb, $40, $12, $12, $f6, $40        ;; 01:74ef ????????
    db   $12, $11, $ef, $40, $12, $0d, $e9, $40        ;; 01:74f7 ????????
    db   $12, $08, $e4, $40, $12, $04, $e1, $40        ;; 01:74ff ????????
    db   $12, $04, $e1, $40, $12, $04, $e1, $40        ;; 01:7507 ????????
    db   $12, $04, $e1, $40, $00, $ff, $48, $12        ;; 01:750f ????????
    db   $02, $04, $40, $12, $09, $05, $40, $12        ;; 01:7517 ????????
    db   $0f, $00, $40, $12, $12, $f6, $40, $12        ;; 01:751f ????????
    db   $0f, $ec, $40, $12, $04, $e1, $40, $12        ;; 01:7527 ????????
    db   $f8, $e0, $40, $12, $f0, $e3, $40, $12        ;; 01:752f ????????
    db   $e9, $e8, $40, $12, $e7, $eb, $40, $12        ;; 01:7537 ????????
    db   $e4, $ee, $40, $12, $e4, $ee, $40, $12        ;; 01:753f ????????
    db   $e4, $ee, $40, $00, $ff, $48, $12, $04        ;; 01:7547 ????????
    db   $05, $40, $12, $0c, $03, $40, $12, $12        ;; 01:754f ????????
    db   $f9, $40, $12, $0f, $ec, $40, $12, $00        ;; 01:7557 ????????
    db   $e0, $40, $12, $f0, $e3, $40, $12, $e7        ;; 01:755f ????????
    db   $eb, $40, $12, $e1, $f5, $40, $12, $e0        ;; 01:7567 ????????
    db   $0d, $40, $12, $e0, $06, $40, $12, $e2        ;; 01:756f ????????
    db   $0a, $40, $12, $e2, $0a, $40, $12, $e2        ;; 01:7577 ????????
    db   $0a, $40, $00, $09, $40, $12, $05, $05        ;; 01:757f ????????
    db   $40, $12, $0f, $00, $40, $12, $11, $ef        ;; 01:7587 ????????
    db   $40, $12, $04, $e1, $40, $12, $ed, $e9        ;; 01:758f ????????
    db   $40, $12, $e2, $f1, $40, $12, $e0, $02        ;; 01:7597 ????????
    db   $40, $12, $e5, $11, $40, $12, $ee, $1a        ;; 01:759f ????????
    db   $40, $12, $f6, $1e, $40, $12, $00, $20        ;; 01:75a7 ????????
    db   $40, $12, $00, $20, $40, $12, $00, $20        ;; 01:75af ????????
    db   $40, $00, $04, $50, $14, $ff, $f9, $50        ;; 01:75b7 ????????
    db   $11, $07, $00, $50, $14, $fa, $00, $50        ;; 01:75bf ????????
    db   $11, $f9, $03, $50, $14, $f8, $f8, $50        ;; 01:75c7 ????????
    db   $11, $02, $05, $50, $00, $ff, $50, $14        ;; 01:75cf ????????
    db   $00, $00, $58, $11, $00, $00, $50, $11        ;; 01:75d7 ????????
    db   $05, $fa, $50, $11, $05, $fa, $50, $11        ;; 01:75df ????????
    db   $f8, $f4, $50, $11, $0c, $09, $50, $11        ;; 01:75e7 ????????
    db   $f7, $f4, $50, $00, $ff, $58, $14, $0c        ;; 01:75ef ????????
    db   $04, $50, $14, $0a, $08, $50, $14, $f8        ;; 01:75f7 ????????
    db   $0b, $50, $11, $f7, $0c, $50, $14, $f9        ;; 01:75ff ????????
    db   $fc, $50, $14, $f3, $f8, $50, $11, $ef        ;; 01:7607 ????????
    db   $f6, $50, $11, $ee, $f5, $50, $00, $19        ;; 01:760f ????????
    db   $50, $14, $05, $f8, $50, $14, $09, $f2        ;; 01:7617 ????????
    db   $50, $14, $0c, $ee, $50, $11, $0d, $ed        ;; 01:761f ????????
    db   $50, $14, $05, $03, $50, $14, $09, $05        ;; 01:7627 ????????
    db   $50, $11, $0c, $07, $50, $11, $0d, $08        ;; 01:762f ????????
    db   $50, $00                                      ;; 01:7637 ??

call_01_7639:
    and  A, $1f                                        ;; 01:7639 $e6 $1f
    add  A, A                                          ;; 01:763b $87
    ld   L, A                                          ;; 01:763c $6f
    ld   H, $00                                        ;; 01:763d $26 $00
    ld   DE, data_01_772f                              ;; 01:763f $11 $2f $77
    add  HL, DE                                        ;; 01:7642 $19
    ld   A, [HL+]                                      ;; 01:7643 $2a
    ld   D, A                                          ;; 01:7644 $57
    ld   E, [HL]                                       ;; 01:7645 $5e
    ret                                                ;; 01:7646 $c9

call_01_7647:
    push AF                                            ;; 01:7647 $f5
    push BC                                            ;; 01:7648 $c5
    push AF                                            ;; 01:7649 $f5
    ld   L, E                                          ;; 01:764a $6b
    ld   H, $00                                        ;; 01:764b $26 $00
    add  HL, HL                                        ;; 01:764d $29
    ld   BC, data_01_776f                              ;; 01:764e $01 $6f $77
    add  HL, BC                                        ;; 01:7651 $09
    ld   C, [HL]                                       ;; 01:7652 $4e
    inc  HL                                            ;; 01:7653 $23
    ld   B, [HL]                                       ;; 01:7654 $46
    pop  AF                                            ;; 01:7655 $f1
    ld   L, A                                          ;; 01:7656 $6f
    ld   H, $00                                        ;; 01:7657 $26 $00
    add  HL, HL                                        ;; 01:7659 $29
    add  HL, BC                                        ;; 01:765a $09
    ld   A, D                                          ;; 01:765b $7a
    ld   E, [HL]                                       ;; 01:765c $5e
    inc  HL                                            ;; 01:765d $23
    ld   D, [HL]                                       ;; 01:765e $56
    ld   L, A                                          ;; 01:765f $6f
    pop  BC                                            ;; 01:7660 $c1
    ld   A, $80                                        ;; 01:7661 $3e $80
    cp   A, E                                          ;; 01:7663 $bb
    jr   Z, .jr_01_76a7                                ;; 01:7664 $28 $41
    ld   A, L                                          ;; 01:7666 $7d
    bit  0, A                                          ;; 01:7667 $cb $47
    jr   NZ, .jr_01_767a                               ;; 01:7669 $20 $0f
    bit  1, A                                          ;; 01:766b $cb $4f
    jr   NZ, .jr_01_767c                               ;; 01:766d $20 $0d
    bit  2, A                                          ;; 01:766f $cb $57
    jr   NZ, .jr_01_7686                               ;; 01:7671 $20 $13
    ld   A, D                                          ;; 01:7673 $7a
    cpl                                                ;; 01:7674 $2f
    inc  A                                             ;; 01:7675 $3c
    ld   D, E                                          ;; 01:7676 $53
    ld   E, A                                          ;; 01:7677 $5f
    jr   .jr_01_768b                                   ;; 01:7678 $18 $11
.jr_01_767a:
    jr   .jr_01_768b                                   ;; 01:767a $18 $0f
.jr_01_767c:
    ld   A, D                                          ;; 01:767c $7a
    cpl                                                ;; 01:767d $2f
    inc  A                                             ;; 01:767e $3c
    ld   D, A                                          ;; 01:767f $57
    ld   A, E                                          ;; 01:7680 $7b
    cpl                                                ;; 01:7681 $2f
    inc  A                                             ;; 01:7682 $3c
    ld   E, A                                          ;; 01:7683 $5f
    jr   .jr_01_768b                                   ;; 01:7684 $18 $05
.jr_01_7686:
    ld   A, E                                          ;; 01:7686 $7b
    cpl                                                ;; 01:7687 $2f
    inc  A                                             ;; 01:7688 $3c
    ld   E, D                                          ;; 01:7689 $5a
    ld   D, A                                          ;; 01:768a $57
.jr_01_768b:
    ld   A, L                                          ;; 01:768b $7d
    and  A, $0f                                        ;; 01:768c $e6 $0f
    or   A, $10                                        ;; 01:768e $f6 $10
    push BC                                            ;; 01:7690 $c5
    ld   L, A                                          ;; 01:7691 $6f
    ld   A, C                                          ;; 01:7692 $79
    cp   A, $07                                        ;; 01:7693 $fe $07
    jr   NC, .jr_01_769f                               ;; 01:7695 $30 $08
    ld   A, L                                          ;; 01:7697 $7d
    call call_00_08d4                                  ;; 01:7698 $cd $d4 $08
    pop  BC                                            ;; 01:769b $c1
    pop  AF                                            ;; 01:769c $f1
    inc  A                                             ;; 01:769d $3c
    ret                                                ;; 01:769e $c9
.jr_01_769f:
    ld   A, L                                          ;; 01:769f $7d
    call call_00_2889                                  ;; 01:76a0 $cd $89 $28
    pop  BC                                            ;; 01:76a3 $c1
    pop  AF                                            ;; 01:76a4 $f1
    inc  A                                             ;; 01:76a5 $3c
    ret                                                ;; 01:76a6 $c9
.jr_01_76a7:
    pop  AF                                            ;; 01:76a7 $f1
    ld   A, $00                                        ;; 01:76a8 $3e $00
    ret                                                ;; 01:76aa $c9

call_01_76ab:
    push AF                                            ;; 01:76ab $f5
    push BC                                            ;; 01:76ac $c5
    push AF                                            ;; 01:76ad $f5
    ld   L, E                                          ;; 01:76ae $6b
    ld   H, $00                                        ;; 01:76af $26 $00
    add  HL, HL                                        ;; 01:76b1 $29
    ld   BC, data_01_776f                              ;; 01:76b2 $01 $6f $77
    add  HL, BC                                        ;; 01:76b5 $09
    ld   C, [HL]                                       ;; 01:76b6 $4e
    inc  HL                                            ;; 01:76b7 $23
    ld   B, [HL]                                       ;; 01:76b8 $46
    pop  AF                                            ;; 01:76b9 $f1
    ld   L, A                                          ;; 01:76ba $6f
    ld   H, $00                                        ;; 01:76bb $26 $00
    add  HL, HL                                        ;; 01:76bd $29
    add  HL, BC                                        ;; 01:76be $09
    push HL                                            ;; 01:76bf $e5
    ld   L, A                                          ;; 01:76c0 $6f
    ld   H, $00                                        ;; 01:76c1 $26 $00
    push HL                                            ;; 01:76c3 $e5
    ld   A, E                                          ;; 01:76c4 $7b
    and  A, $1f                                        ;; 01:76c5 $e6 $1f
    add  A, A                                          ;; 01:76c7 $87
    ld   L, A                                          ;; 01:76c8 $6f
    ld   H, $00                                        ;; 01:76c9 $26 $00
    ld   BC, data_01_78ef                              ;; 01:76cb $01 $ef $78
    add  HL, BC                                        ;; 01:76ce $09
    ld   C, [HL]                                       ;; 01:76cf $4e
    inc  HL                                            ;; 01:76d0 $23
    ld   B, [HL]                                       ;; 01:76d1 $46
    pop  HL                                            ;; 01:76d2 $e1
    add  HL, BC                                        ;; 01:76d3 $09
    ld   C, [HL]                                       ;; 01:76d4 $4e
    ld   B, D                                          ;; 01:76d5 $42
    pop  HL                                            ;; 01:76d6 $e1
    ld   E, [HL]                                       ;; 01:76d7 $5e
    inc  HL                                            ;; 01:76d8 $23
    ld   D, [HL]                                       ;; 01:76d9 $56
    ld   A, $80                                        ;; 01:76da $3e $80
    cp   A, E                                          ;; 01:76dc $bb
    jr   Z, .jr_01_772a                                ;; 01:76dd $28 $4b
    ld   L, C                                          ;; 01:76df $69
    ld   A, B                                          ;; 01:76e0 $78
    pop  BC                                            ;; 01:76e1 $c1
    push HL                                            ;; 01:76e2 $e5
    ld   L, A                                          ;; 01:76e3 $6f
    bit  0, A                                          ;; 01:76e4 $cb $47
    jr   NZ, .jr_01_76f7                               ;; 01:76e6 $20 $0f
    bit  1, A                                          ;; 01:76e8 $cb $4f
    jr   NZ, .jr_01_76f9                               ;; 01:76ea $20 $0d
    bit  2, A                                          ;; 01:76ec $cb $57
    jr   NZ, .jr_01_7703                               ;; 01:76ee $20 $13
    ld   A, D                                          ;; 01:76f0 $7a
    cpl                                                ;; 01:76f1 $2f
    inc  A                                             ;; 01:76f2 $3c
    ld   D, E                                          ;; 01:76f3 $53
    ld   E, A                                          ;; 01:76f4 $5f
    jr   .jr_01_7708                                   ;; 01:76f5 $18 $11
.jr_01_76f7:
    jr   .jr_01_7708                                   ;; 01:76f7 $18 $0f
.jr_01_76f9:
    ld   A, D                                          ;; 01:76f9 $7a
    cpl                                                ;; 01:76fa $2f
    inc  A                                             ;; 01:76fb $3c
    ld   D, A                                          ;; 01:76fc $57
    ld   A, E                                          ;; 01:76fd $7b
    cpl                                                ;; 01:76fe $2f
    inc  A                                             ;; 01:76ff $3c
    ld   E, A                                          ;; 01:7700 $5f
    jr   .jr_01_7708                                   ;; 01:7701 $18 $05
.jr_01_7703:
    ld   A, E                                          ;; 01:7703 $7b
    cpl                                                ;; 01:7704 $2f
    inc  A                                             ;; 01:7705 $3c
    ld   E, D                                          ;; 01:7706 $5a
    ld   D, A                                          ;; 01:7707 $57
.jr_01_7708:
    ld   A, L                                          ;; 01:7708 $7d
    pop  HL                                            ;; 01:7709 $e1
    ld   H, A                                          ;; 01:770a $67
    ld   A, D                                          ;; 01:770b $7a
    sub  A, L                                          ;; 01:770c $95
    ld   D, A                                          ;; 01:770d $57
    ld   A, H                                          ;; 01:770e $7c
    and  A, $0f                                        ;; 01:770f $e6 $0f
    or   A, $10                                        ;; 01:7711 $f6 $10
    push BC                                            ;; 01:7713 $c5
    ld   L, A                                          ;; 01:7714 $6f
    ld   A, C                                          ;; 01:7715 $79
    cp   A, $07                                        ;; 01:7716 $fe $07
    jr   NC, .jr_01_7722                               ;; 01:7718 $30 $08
    ld   A, L                                          ;; 01:771a $7d
    call call_00_08d4                                  ;; 01:771b $cd $d4 $08
    pop  BC                                            ;; 01:771e $c1
    pop  AF                                            ;; 01:771f $f1
    inc  A                                             ;; 01:7720 $3c
    ret                                                ;; 01:7721 $c9
.jr_01_7722:
    ld   A, L                                          ;; 01:7722 $7d
    call call_00_2889                                  ;; 01:7723 $cd $89 $28
    pop  BC                                            ;; 01:7726 $c1
    pop  AF                                            ;; 01:7727 $f1
    inc  A                                             ;; 01:7728 $3c
    ret                                                ;; 01:7729 $c9
.jr_01_772a:
    pop  BC                                            ;; 01:772a $c1
    pop  AF                                            ;; 01:772b $f1
    ld   A, $00                                        ;; 01:772c $3e $00
    ret                                                ;; 01:772e $c9

data_01_772f:
    db   $04, $04, $06, $06, $04, $fc, $06, $fa        ;; 01:772f ..??..??
    db   $02, $00, $fe, $00, $00, $02, $00, $fe        ;; 01:7737 ..??????
    db   $04, $00, $fc, $00, $00, $04, $00, $fc        ;; 01:773f ........
    db   $02, $02, $02, $fe, $fe, $02, $fe, $fe        ;; 01:7747 ........
    db   $08, $00, $f8, $00, $00, $08, $00, $f8        ;; 01:774f ..????..
    db   $04, $04, $04, $fc, $fc, $04, $fc, $fc        ;; 01:7757 ....????
    db   $06, $02, $06, $fe, $02, $06, $02, $fa        ;; 01:775f ........
    db   $fa, $02, $fa, $fe, $fe, $06, $fe, $fa        ;; 01:7767 ????????

data_01_776f:
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:776f ..??..??
    db   $0d, $7a, $30, $7a, $53, $7a, $76, $7a        ;; 01:7777 ..??????
    db   $99, $7a, $ca, $7a, $fb, $7a, $2c, $7b        ;; 01:777f ..??????
    db   $5d, $7b, $8e, $7b, $bf, $7b, $f0, $7b        ;; 01:7787 ????????
    db   $21, $7c, $9a, $79, $66, $7c, $ab, $7c        ;; 01:778f ????????
    db   $f0, $7c, $35, $7d, $c5, $79, $e2, $79        ;; 01:7797 ????????
    db   $7a, $7d, $bf, $7d, $04, $7e, $49, $7e        ;; 01:779f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77a7 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77af ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77b7 ????????
    db   $8e, $7e, $a3, $7e, $ba, $7e, $cf, $7e        ;; 01:77bf ........
    db   $e4, $7e, $f9, $7e, $0e, $7f, $23, $7f        ;; 01:77c7 ........
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77cf ????????
    db   $38, $7f, $55, $7f, $c5, $79, $e2, $79        ;; 01:77d7 ....????
    db   $72, $7f, $8f, $7f, $c5, $79, $e2, $79        ;; 01:77df ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77e7 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:77ef ????????
    db   $0d, $7a, $30, $7a, $53, $7a, $76, $7a        ;; 01:77f7 ????????
    db   $99, $7a, $ca, $7a, $fb, $7a, $2c, $7b        ;; 01:77ff ????????
    db   $5d, $7b, $8e, $7b, $bf, $7b, $f0, $7b        ;; 01:7807 ........
    db   $21, $7c, $9a, $79, $66, $7c, $ab, $7c        ;; 01:780f ????????
    db   $f0, $7c, $35, $7d, $c5, $79, $e2, $79        ;; 01:7817 ....????
    db   $7a, $7d, $bf, $7d, $04, $7e, $49, $7e        ;; 01:781f ........
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7827 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:782f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7837 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:783f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7847 ????????
    db   $21, $7c, $9a, $79, $66, $7c, $ab, $7c        ;; 01:784f ????????
    db   $f0, $7c, $35, $7d, $c5, $79, $e2, $79        ;; 01:7857 ??..????
    db   $7a, $7d, $bf, $7d, $04, $7e, $49, $7e        ;; 01:785f ??????..
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7867 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:786f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7877 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:787f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:7887 ????????
    db   $21, $7c, $9a, $79, $66, $7c, $ab, $7c        ;; 01:788f ????????
    db   $f0, $7c, $35, $7d, $c5, $79, $e2, $79        ;; 01:7897 ..??????
    db   $7a, $7d, $bf, $7d, $04, $7e, $49, $7e        ;; 01:789f ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:78a7 ????????
    db   $7d, $79, $9a, $79, $c5, $79, $e2, $79        ;; 01:78af ????????
    db   $ac, $7f, $af, $7f, $b2, $7f, $b5, $7f        ;; 01:78b7 ????????
    db   $b8, $7f, $bb, $7f, $be, $7f, $c1, $7f        ;; 01:78bf ????????
    db   $c4, $7f, $c7, $7f, $ca, $7f, $cd, $7f        ;; 01:78c7 ????????
    db   $d0, $7f, $d3, $7f, $d6, $7f, $d9, $7f        ;; 01:78cf ????????
    db   $dc, $7f, $df, $7f, $e2, $7f, $e5, $7f        ;; 01:78d7 ????????
    db   $e8, $7f, $eb, $7f, $ee, $7f, $f1, $7f        ;; 01:78df ????????
    db   $f4, $7f, $f7, $7f, $fa, $7f, $fd, $7f        ;; 01:78e7 ????????

data_01_78ef:
    db   $2f, $79, $2f, $79, $2f, $79, $2f, $79        ;; 01:78ef ????????
    db   $2f, $79, $2f, $79, $2f, $79, $2f, $79        ;; 01:78f7 ????????
    db   $41, $79, $41, $79, $41, $79, $41, $79        ;; 01:78ff ????????
    db   $41, $79, $41, $79, $41, $79, $41, $79        ;; 01:7907 ........
    db   $5a, $79, $5a, $79, $5a, $79, $5a, $79        ;; 01:790f ????????
    db   $5a, $79, $5a, $79, $5a, $79, $5a, $79        ;; 01:7917 ....????
    db   $5a, $79, $5a, $79, $5a, $79, $5a, $79        ;; 01:791f ........
    db   $5a, $79, $5a, $79, $5a, $79, $5a, $79        ;; 01:7927 ????????
    db   $04, $03, $02, $03, $01, $02, $01, $00        ;; 01:792f ????????
    db   $00, $00, $ff, $fe, $ff, $fd, $fe, $fd        ;; 01:7937 ????????
    db   $fc, $80, $05, $05, $04, $04, $03, $03        ;; 01:793f ??......
    db   $02, $02, $02, $01, $01, $00, $00, $ff        ;; 01:7947 ........
    db   $ff, $ff, $fe, $fd, $fd, $fd, $fc, $fc        ;; 01:794f ........
    db   $fb, $fb, $80, $08, $07, $06, $06, $05        ;; 01:7957 ........
    db   $05, $05, $04, $04, $03, $03, $03, $01        ;; 01:795f ........
    db   $02, $01, $01, $00, $00, $ff, $ff, $fe        ;; 01:7967 ........
    db   $ff, $fd, $fd, $fd, $fc, $fc, $fb, $fb        ;; 01:796f ........
    db   $fb, $fa, $fa, $f9, $f8, $80, $02, $00        ;; 01:7977 ........
    db   $02, $00, $01, $01, $02, $01, $02, $00        ;; 01:797f ........
    db   $01, $01, $01, $02, $02, $01, $01, $01        ;; 01:7987 ........
    db   $00, $02, $01, $02, $01, $01, $00, $02        ;; 01:798f ........
    db   $00, $02, $80, $02, $00, $02, $00, $01        ;; 01:7997 ....????
    db   $01, $02, $00, $02, $01, $01, $00, $02        ;; 01:799f ????????
    db   $01, $02, $01, $01, $01, $01, $01, $02        ;; 01:79a7 ????????
    db   $02, $01, $01, $01, $01, $01, $02, $01        ;; 01:79af ????????
    db   $02, $00, $01, $01, $02, $00, $02, $01        ;; 01:79b7 ????????
    db   $01, $00, $02, $00, $02, $80, $02, $00        ;; 01:79bf ??????..
    db   $02, $00, $01, $ff, $02, $ff, $02, $00        ;; 01:79c7 ........
    db   $01, $ff, $01, $fe, $02, $ff, $01, $ff        ;; 01:79cf ........
    db   $00, $fe, $01, $fe, $01, $ff, $00, $fe        ;; 01:79d7 ........
    db   $00, $fe, $80, $02, $00, $02, $00, $01        ;; 01:79df ....????
    db   $ff, $02, $00, $02, $ff, $01, $00, $02        ;; 01:79e7 ????????
    db   $ff, $02, $ff, $01, $ff, $01, $ff, $02        ;; 01:79ef ????????
    db   $fe, $01, $ff, $01, $ff, $01, $fe, $01        ;; 01:79f7 ????????
    db   $fe, $00, $ff, $01, $fe, $00, $fe, $01        ;; 01:79ff ????????
    db   $ff, $00, $fe, $00, $fe, $80, $01, $00        ;; 01:7a07 ??????..
    db   $01, $00, $01, $00, $01, $00, $01, $00        ;; 01:7a0f ........
    db   $01, $00, $01, $00, $01, $00, $00, $00        ;; 01:7a17 ........
    db   $01, $00, $01, $00, $01, $00, $01, $00        ;; 01:7a1f ........
    db   $01, $00, $01, $00, $01, $00, $01, $00        ;; 01:7a27 ........
    db   $80, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 01:7a2f ..??????
    db   $00, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 01:7a37 ????????
    db   $00, $00, $00, $ff, $00, $ff, $00, $ff        ;; 01:7a3f ????????
    db   $00, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 01:7a47 ????????
    db   $00, $ff, $00, $80, $00, $01, $00, $01        ;; 01:7a4f ????????
    db   $00, $01, $00, $01, $00, $01, $00, $01        ;; 01:7a57 ????????
    db   $00, $01, $00, $01, $00, $00, $00, $01        ;; 01:7a5f ????????
    db   $00, $01, $00, $01, $00, $01, $00, $01        ;; 01:7a67 ????????
    db   $00, $01, $00, $01, $00, $01, $80, $00        ;; 01:7a6f ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 01:7a77 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 01:7a7f ????????
    db   $00, $00, $ff, $00, $ff, $00, $ff, $00        ;; 01:7a87 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 01:7a8f ????????
    db   $ff, $80, $01, $00, $02, $00, $01, $00        ;; 01:7a97 ??......
    db   $01, $00, $02, $00, $01, $00, $01, $00        ;; 01:7a9f ........
    db   $02, $00, $01, $00, $01, $00, $02, $00        ;; 01:7aa7 ........
    db   $01, $00, $01, $00, $02, $00, $01, $00        ;; 01:7aaf ........
    db   $01, $00, $02, $00, $01, $00, $01, $00        ;; 01:7ab7 ........
    db   $02, $00, $01, $00, $01, $00, $02, $00        ;; 01:7abf ........
    db   $01, $00, $80, $ff, $00, $fe, $00, $ff        ;; 01:7ac7 ....????
    db   $00, $ff, $00, $fe, $00, $ff, $00, $ff        ;; 01:7acf ????????
    db   $00, $fe, $00, $ff, $00, $ff, $00, $fe        ;; 01:7ad7 ????????
    db   $00, $ff, $00, $ff, $00, $fe, $00, $ff        ;; 01:7adf ????????
    db   $00, $ff, $00, $fe, $00, $ff, $00, $ff        ;; 01:7ae7 ????????
    db   $00, $fe, $00, $ff, $00, $ff, $00, $fe        ;; 01:7aef ????????
    db   $00, $ff, $00, $80, $00, $01, $00, $02        ;; 01:7af7 ????????
    db   $00, $01, $00, $01, $00, $02, $00, $01        ;; 01:7aff ????????
    db   $00, $01, $00, $02, $00, $01, $00, $01        ;; 01:7b07 ????????
    db   $00, $02, $00, $01, $00, $01, $00, $02        ;; 01:7b0f ????????
    db   $00, $01, $00, $01, $00, $02, $00, $01        ;; 01:7b17 ????????
    db   $00, $01, $00, $02, $00, $01, $00, $01        ;; 01:7b1f ????????
    db   $00, $02, $00, $01, $80, $00, $ff, $00        ;; 01:7b27 ????????
    db   $fe, $00, $ff, $00, $ff, $00, $fe, $00        ;; 01:7b2f ????????
    db   $ff, $00, $ff, $00, $fe, $00, $ff, $00        ;; 01:7b37 ????????
    db   $ff, $00, $fe, $00, $ff, $00, $ff, $00        ;; 01:7b3f ????????
    db   $fe, $00, $ff, $00, $ff, $00, $fe, $00        ;; 01:7b47 ????????
    db   $ff, $00, $ff, $00, $fe, $00, $ff, $00        ;; 01:7b4f ????????
    db   $ff, $00, $fe, $00, $ff, $80, $01, $01        ;; 01:7b57 ??????..
    db   $00, $00, $01, $01, $01, $01, $00, $00        ;; 01:7b5f ........
    db   $01, $01, $01, $01, $00, $00, $01, $01        ;; 01:7b67 ........
    db   $01, $01, $00, $00, $01, $01, $01, $01        ;; 01:7b6f ........
    db   $00, $00, $01, $01, $01, $01, $00, $00        ;; 01:7b77 ........
    db   $01, $01, $01, $01, $00, $00, $01, $01        ;; 01:7b7f ........
    db   $01, $01, $00, $00, $01, $01, $80, $01        ;; 01:7b87 ........
    db   $ff, $00, $00, $01, $ff, $01, $ff, $00        ;; 01:7b8f ........
    db   $00, $01, $ff, $01, $ff, $00, $00, $01        ;; 01:7b97 ........
    db   $ff, $01, $ff, $00, $00, $01, $ff, $01        ;; 01:7b9f ........
    db   $ff, $00, $00, $01, $ff, $01, $ff, $00        ;; 01:7ba7 ........
    db   $00, $01, $ff, $01, $ff, $00, $00, $01        ;; 01:7baf ........
    db   $ff, $01, $ff, $00, $00, $01, $ff, $80        ;; 01:7bb7 ........
    db   $ff, $01, $00, $00, $ff, $01, $ff, $01        ;; 01:7bbf ........
    db   $00, $00, $ff, $01, $ff, $01, $00, $00        ;; 01:7bc7 ........
    db   $ff, $01, $ff, $01, $00, $00, $ff, $01        ;; 01:7bcf ........
    db   $ff, $01, $00, $00, $ff, $01, $ff, $01        ;; 01:7bd7 ........
    db   $00, $00, $ff, $01, $ff, $01, $00, $00        ;; 01:7bdf ........
    db   $ff, $01, $ff, $01, $00, $00, $ff, $01        ;; 01:7be7 ........
    db   $80, $ff, $ff, $00, $00, $ff, $ff, $ff        ;; 01:7bef ........
    db   $ff, $00, $00, $ff, $ff, $ff, $ff, $00        ;; 01:7bf7 ........
    db   $00, $ff, $ff, $ff, $ff, $00, $00, $ff        ;; 01:7bff ........
    db   $ff, $ff, $ff, $00, $00, $ff, $ff, $ff        ;; 01:7c07 ........
    db   $ff, $00, $00, $ff, $ff, $ff, $ff, $00        ;; 01:7c0f ........
    db   $00, $ff, $ff, $ff, $ff, $00, $00, $ff        ;; 01:7c17 ........
    db   $ff, $80, $02, $00, $02, $00, $02, $00        ;; 01:7c1f ...?????
    db   $02, $00, $01, $00, $02, $00, $02, $00        ;; 01:7c27 ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c2f ????????
    db   $02, $00, $01, $00, $02, $00, $02, $00        ;; 01:7c37 ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c3f ????????
    db   $02, $00, $02, $00, $01, $00, $02, $00        ;; 01:7c47 ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c4f ????????
    db   $02, $00, $02, $00, $01, $00, $02, $00        ;; 01:7c57 ????????
    db   $02, $00, $02, $00, $02, $00, $80, $00        ;; 01:7c5f ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c67 ????????
    db   $01, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c6f ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c77 ????????
    db   $01, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c7f ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c87 ????????
    db   $02, $00, $01, $00, $02, $00, $02, $00        ;; 01:7c8f ????????
    db   $02, $00, $02, $00, $02, $00, $02, $00        ;; 01:7c97 ????????
    db   $02, $00, $01, $00, $02, $00, $02, $00        ;; 01:7c9f ????????
    db   $02, $00, $02, $80, $00, $fe, $00, $fe        ;; 01:7ca7 ????????
    db   $00, $fe, $00, $fe, $00, $ff, $00, $fe        ;; 01:7caf ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $fe        ;; 01:7cb7 ????????
    db   $00, $fe, $00, $fe, $00, $ff, $00, $fe        ;; 01:7cbf ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $fe        ;; 01:7cc7 ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $ff        ;; 01:7ccf ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $fe        ;; 01:7cd7 ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $ff        ;; 01:7cdf ????????
    db   $00, $fe, $00, $fe, $00, $fe, $00, $fe        ;; 01:7ce7 ????????
    db   $80, $01, $01, $01, $01, $01, $01, $01        ;; 01:7cef ?.......
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 01:7cf7 ........
    db   $01, $00, $00, $01, $01, $01, $01, $01        ;; 01:7cff ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 01:7d07 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 01:7d0f ...?????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 01:7d17 ????????
    db   $01, $01, $01, $00, $00, $01, $01, $01        ;; 01:7d1f ????????
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 01:7d27 ????????
    db   $01, $01, $01, $01, $01, $80, $01, $ff        ;; 01:7d2f ??????..
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d37 ........
    db   $01, $ff, $01, $ff, $01, $ff, $00, $00        ;; 01:7d3f ........
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d47 ........
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d4f ........
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d57 ........
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d5f ........
    db   $00, $00, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d67 ........
    db   $01, $ff, $01, $ff, $01, $ff, $01, $ff        ;; 01:7d6f ........
    db   $01, $ff, $80, $01, $00, $02, $01, $01        ;; 01:7d77 ........
    db   $00, $02, $01, $01, $00, $01, $01, $02        ;; 01:7d7f ........
    db   $00, $01, $01, $02, $00, $01, $01, $02        ;; 01:7d87 .....???
    db   $00, $01, $01, $01, $00, $02, $01, $01        ;; 01:7d8f ????????
    db   $00, $02, $01, $01, $00, $01, $00, $02        ;; 01:7d97 ????????
    db   $01, $01, $00, $02, $01, $01, $00, $01        ;; 01:7d9f ????????
    db   $01, $02, $00, $01, $01, $02, $00, $01        ;; 01:7da7 ????????
    db   $01, $02, $00, $01, $01, $01, $00, $02        ;; 01:7daf ????????
    db   $01, $01, $00, $02, $01, $01, $00, $80        ;; 01:7db7 ????????
    db   $01, $00, $02, $ff, $01, $00, $02, $ff        ;; 01:7dbf ........
    db   $01, $00, $01, $ff, $02, $00, $01, $ff        ;; 01:7dc7 ........
    db   $02, $00, $01, $ff, $02, $00, $01, $ff        ;; 01:7dcf ........
    db   $01, $00, $02, $ff, $01, $00, $02, $ff        ;; 01:7dd7 ........
    db   $01, $00, $01, $00, $02, $ff, $01, $00        ;; 01:7ddf ........
    db   $02, $ff, $01, $00, $01, $ff, $02, $00        ;; 01:7de7 ........
    db   $01, $ff, $02, $00, $01, $ff, $02, $00        ;; 01:7def ........
    db   $01, $ff, $01, $00, $02, $ff, $01, $00        ;; 01:7df7 ........
    db   $02, $ff, $01, $00, $80, $00, $01, $01        ;; 01:7dff ........
    db   $02, $00, $01, $01, $02, $00, $01, $01        ;; 01:7e07 ........
    db   $01, $00, $02, $01, $01, $00, $02, $01        ;; 01:7e0f ........
    db   $01, $00, $02, $01, $01, $00, $01, $01        ;; 01:7e17 ........
    db   $02, $00, $01, $01, $02, $00, $01, $00        ;; 01:7e1f ........
    db   $01, $01, $02, $00, $01, $01, $02, $00        ;; 01:7e27 ........
    db   $01, $01, $01, $00, $02, $01, $01, $00        ;; 01:7e2f ........
    db   $02, $01, $01, $00, $02, $01, $01, $00        ;; 01:7e37 .....???
    db   $01, $01, $02, $00, $01, $01, $02, $00        ;; 01:7e3f ????????
    db   $01, $80, $00, $ff, $01, $fe, $00, $ff        ;; 01:7e47 ??......
    db   $01, $fe, $00, $ff, $01, $ff, $00, $fe        ;; 01:7e4f ........
    db   $01, $ff, $00, $fe, $01, $ff, $00, $fe        ;; 01:7e57 ........
    db   $01, $ff, $00, $ff, $01, $fe, $00, $ff        ;; 01:7e5f ........
    db   $01, $fe, $00, $ff, $00, $ff, $01, $fe        ;; 01:7e67 ........
    db   $00, $ff, $01, $fe, $00, $ff, $01, $ff        ;; 01:7e6f ........
    db   $00, $fe, $01, $ff, $00, $fe, $01, $ff        ;; 01:7e77 ........
    db   $00, $fe, $01, $ff, $00, $ff, $01, $fe        ;; 01:7e7f ........
    db   $00, $ff, $01, $fe, $00, $ff, $80, $01        ;; 01:7e87 ........
    db   $00, $02, $00, $03, $00, $04, $00, $06        ;; 01:7e8f ........
    db   $00, $06, $00, $05, $00, $03, $00, $01        ;; 01:7e97 ........
    db   $00, $01, $00, $80, $ff, $00, $fe, $00        ;; 01:7e9f ........
    db   $fd, $00, $fc, $00, $fa, $00, $fa, $00        ;; 01:7ea7 ........
    db   $fb, $00, $fd, $00, $ff, $00, $ff, $00        ;; 01:7eaf ........
    db   $00, $00, $80, $00, $01, $00, $02, $00        ;; 01:7eb7 ........
    db   $03, $00, $04, $00, $06, $00, $06, $00        ;; 01:7ebf ........
    db   $05, $00, $03, $00, $01, $00, $01, $80        ;; 01:7ec7 ........
    db   $00, $ff, $00, $fe, $00, $fd, $00, $fc        ;; 01:7ecf ........
    db   $00, $fa, $00, $fa, $00, $fb, $00, $fd        ;; 01:7ed7 ........
    db   $00, $ff, $00, $ff, $80, $00, $00, $01        ;; 01:7edf ........
    db   $01, $02, $02, $02, $02, $03, $03, $03        ;; 01:7ee7 ........
    db   $03, $02, $02, $02, $02, $01, $01, $00        ;; 01:7eef ........
    db   $00, $80, $00, $00, $01, $ff, $02, $fe        ;; 01:7ef7 ........
    db   $02, $fe, $03, $fd, $03, $fd, $02, $fe        ;; 01:7eff ........
    db   $02, $fe, $01, $ff, $00, $00, $80, $00        ;; 01:7f07 ........
    db   $00, $ff, $01, $fe, $02, $fe, $02, $fd        ;; 01:7f0f ........
    db   $03, $fd, $03, $fe, $02, $fe, $02, $ff        ;; 01:7f17 ........
    db   $01, $00, $00, $80, $00, $00, $ff, $ff        ;; 01:7f1f ........
    db   $fe, $fe, $fe, $fe, $fd, $fd, $fd, $fd        ;; 01:7f27 ........
    db   $fe, $fe, $fe, $fe, $ff, $ff, $00, $00        ;; 01:7f2f ........
    db   $80, $00, $00, $01, $01, $02, $02, $02        ;; 01:7f37 ........
    db   $02, $03, $03, $04, $04, $04, $04, $04        ;; 01:7f3f ........
    db   $04, $04, $04, $03, $03, $02, $02, $02        ;; 01:7f47 ........
    db   $02, $01, $01, $00, $00, $80, $00, $00        ;; 01:7f4f ........
    db   $01, $ff, $02, $fe, $02, $fe, $03, $fd        ;; 01:7f57 ........
    db   $04, $fc, $04, $fc, $04, $fc, $04, $fc        ;; 01:7f5f ........
    db   $03, $fd, $02, $fe, $02, $fe, $01, $ff        ;; 01:7f67 ........
    db   $00, $00, $80, $00, $00, $02, $01, $02        ;; 01:7f6f ....????
    db   $00, $04, $02, $04, $01, $06, $02, $06        ;; 01:7f77 ????????
    db   $02, $06, $02, $06, $02, $04, $01, $04        ;; 01:7f7f ????????
    db   $02, $02, $00, $02, $01, $00, $00, $80        ;; 01:7f87 ????????
    db   $00, $00, $02, $ff, $02, $00, $04, $fe        ;; 01:7f8f ????????
    db   $04, $ff, $06, $fe, $06, $fe, $06, $fe        ;; 01:7f97 ????????
    db   $06, $fe, $04, $ff, $04, $fe, $02, $00        ;; 01:7f9f ????????
    db   $02, $ff, $00, $00, $80, $10, $00, $80        ;; 01:7fa7 ????????
    db   $f0, $00, $80, $00, $10, $80, $00, $f0        ;; 01:7faf ????????
    db   $80, $20, $00, $80, $e0, $00, $80, $00        ;; 01:7fb7 ????????
    db   $20, $80, $00, $e0, $80, $10, $10, $80        ;; 01:7fbf ????????
    db   $10, $f0, $80, $f0, $10, $80, $f0, $f0        ;; 01:7fc7 ????????
    db   $80, $40, $00, $80, $c0, $00, $80, $00        ;; 01:7fcf ????????
    db   $40, $80, $00, $c0, $80, $20, $20, $80        ;; 01:7fd7 ????????
    db   $20, $e0, $80, $e0, $20, $80, $e0, $e0        ;; 01:7fdf ????????
    db   $80, $30, $10, $80, $30, $f0, $80, $10        ;; 01:7fe7 ????????
    db   $30, $80, $10, $d0, $80, $d0, $10, $80        ;; 01:7fef ????????
    db   $d0, $f0, $80, $f0, $30, $80, $f0, $d0        ;; 01:7ff7 ????????
    db   $80                                           ;; 01:7fff ?
