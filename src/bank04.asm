;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank04", ROMX[$4000], BANK[$04]
;@call_to_bank_jumptable amount=7
    call_to_bank_target call_04_4090                   ;; 04:4000 ..
    call_to_bank_target call_04_42f7                   ;; 04:4002 ..
    call_to_bank_target call_04_4425                   ;; 04:4004 ??
    call_to_bank_target call_04_45fa                   ;; 04:4006 ..
    call_to_bank_target call_04_4735                   ;; 04:4008 ??
    call_to_bank_target call_04_4446                   ;; 04:400a ..
    call_to_bank_target call_04_400e                   ;; 04:400c ..

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
    ld   [wD3E9], A                                    ;; 04:409d $ea $e9 $d3
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
    ld   DE, wD442                                     ;; 04:40bd $11 $42 $d4
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
    ld   DE, wD442                                     ;; 04:4118 $11 $42 $d4
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
    ld   HL, wD446                                     ;; 04:418b $21 $46 $d4
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
    ld   A, [wD3EB]                                    ;; 04:41a6 $fa $eb $d3
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
    call call_00_299a                                  ;; 04:41c1 $cd $9a $29
    ret                                                ;; 04:41c4 $c9
;@jumptable amount=4
.data_04_41c5:
    dw   call_04_41cd                                  ;; 04:41c5 ..
    dw   call_04_41d1                                  ;; 04:41c7 ??
    dw   call_04_41e7                                  ;; 04:41c9 ..
    dw   call_04_4205                                  ;; 04:41cb ??

call_04_41cd:
    call call_04_4156                                  ;; 04:41cd $cd $56 $41
    ret                                                ;; 04:41d0 $c9

call_04_41d1:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:41d1 $fa $39 $d4
    ld   H, A                                          ;; 04:41d4 $67
    ld   A, [wCurrentBossDataPointer]                  ;; 04:41d5 $fa $38 $d4
    ld   L, A                                          ;; 04:41d8 $6f
    ld   BC, $05                                       ;; 04:41d9 $01 $05 $00
    add  HL, BC                                        ;; 04:41dc $09
    ld   A, [HL]                                       ;; 04:41dd $7e
    push DE                                            ;; 04:41de $d5
    call call_00_2bec                                  ;; 04:41df $cd $ec $2b
    pop  DE                                            ;; 04:41e2 $d1
    call call_04_4156                                  ;; 04:41e3 $cd $56 $41
    ret                                                ;; 04:41e6 $c9

call_04_41e7:
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
    call call_00_299a                                  ;; 04:41f8 $cd $9a $29
    ld   C, $20                                        ;; 04:41fb $0e $20
    call call_00_31ad                                  ;; 04:41fd $cd $ad $31
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
    ld   A, [wD3F5]                                    ;; 04:425f $fa $f5 $d3
    bit  7, A                                          ;; 04:4262 $cb $7f
    jr   NZ, .jr_04_42ac                               ;; 04:4264 $20 $46
    ld   A, [wD3EC]                                    ;; 04:4266 $fa $ec $d3
    ld   L, A                                          ;; 04:4269 $6f
    add  A, A                                          ;; 04:426a $87
    add  A, A                                          ;; 04:426b $87
    add  A, L                                          ;; 04:426c $85
    ld   L, A                                          ;; 04:426d $6f
    ld   H, $00                                        ;; 04:426e $26 $00
    add  HL, HL                                        ;; 04:4270 $29
    ld   A, [wD43B]                                    ;; 04:4271 $fa $3b $d4
    ld   D, A                                          ;; 04:4274 $57
    ld   A, [wD43A]                                    ;; 04:4275 $fa $3a $d4
    ld   E, A                                          ;; 04:4278 $5f
    add  HL, DE                                        ;; 04:4279 $19
    ld   E, [HL]                                       ;; 04:427a $5e
    inc  HL                                            ;; 04:427b $23
    ld   D, [HL]                                       ;; 04:427c $56
    dec  HL                                            ;; 04:427d $2b
    ld   A, D                                          ;; 04:427e $7a
    and  A, E                                          ;; 04:427f $a3
    cp   A, $ff                                        ;; 04:4280 $fe $ff
    call Z, call_04_42c5                               ;; 04:4282 $cc $c5 $42
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
.jr_04_42ac:
    call call_04_4575                                  ;; 04:42ac $cd $75 $45
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

call_04_42c5:
    ld   A, [wCurrentBossDataPointer.high]             ;; 04:42c5 $fa $39 $d4
    ld   D, A                                          ;; 04:42c8 $57
    ld   A, [wCurrentBossDataPointer]                  ;; 04:42c9 $fa $38 $d4
    ld   E, A                                          ;; 04:42cc $5f
    ld   HL, $12                                       ;; 04:42cd $21 $12 $00
    add  HL, DE                                        ;; 04:42d0 $19
    ld   A, [HL+]                                      ;; 04:42d1 $2a
    ld   H, [HL]                                       ;; 04:42d2 $66
    ld   L, A                                          ;; 04:42d3 $6f
    call call_04_42d8                                  ;; 04:42d4 $cd $d8 $42
    ret                                                ;; 04:42d7 $c9

call_04_42d8:
    ld   A, H                                          ;; 04:42d8 $7c
    ld   [wD43B], A                                    ;; 04:42d9 $ea $3b $d4
    ld   A, L                                          ;; 04:42dc $7d
    ld   [wD43A], A                                    ;; 04:42dd $ea $3a $d4
    ld   A, $00                                        ;; 04:42e0 $3e $00
    ld   [wD3EC], A                                    ;; 04:42e2 $ea $ec $d3
    ret                                                ;; 04:42e5 $c9

call_04_42e6:
    ld   B, $0e                                        ;; 04:42e6 $06 $0e
    ld   HL, wD442                                     ;; 04:42e8 $21 $42 $d4
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

call_04_42f7:
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
    call call_04_4373                                  ;; 04:430f $cd $73 $43
    call call_04_43cd                                  ;; 04:4312 $cd $cd $43
    call call_04_43ff                                  ;; 04:4315 $cd $ff $43
    call call_04_4334                                  ;; 04:4318 $cd $34 $43
    ld   HL, $14                                       ;; 04:431b $21 $14 $00
    add  HL, DE                                        ;; 04:431e $19
    ld   A, [HL+]                                      ;; 04:431f $2a
    ld   H, [HL]                                       ;; 04:4320 $66
    ld   L, A                                          ;; 04:4321 $6f
    ld   A, $01                                        ;; 04:4322 $3e $01
    ld   [wD3F0], A                                    ;; 04:4324 $ea $f0 $d3
    ld   [wD3E9], A                                    ;; 04:4327 $ea $e9 $d3
    call call_04_42d8                                  ;; 04:432a $cd $d8 $42
    call call_04_425f                                  ;; 04:432d $cd $5f $42
    call call_04_4209                                  ;; 04:4330 $cd $09 $42
    ret                                                ;; 04:4333 $c9

call_04_4334:
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
    ld   [wD3F5], A                                    ;; 04:436a $ea $f5 $d3
    ld   A, C                                          ;; 04:436d $79
    ld   [wD3F4], A                                    ;; 04:436e $ea $f4 $d3
    pop  DE                                            ;; 04:4371 $d1
    ret                                                ;; 04:4372 $c9

call_04_4373:
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

call_04_43cd:
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
    ld   HL, wD442                                     ;; 04:43dc $21 $42 $d4
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
    ld   A, [wD442]                                    ;; 04:43f8 $fa $42 $d4
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
    ld   HL, wD442                                     ;; 04:440c $21 $42 $d4
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
    ld   HL, wD442                                     ;; 04:442a $21 $42 $d4
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

call_04_4446:
    cp   A, $c9                                        ;; 04:4446 $fe $c9
    jr   Z, .jr_04_445e                                ;; 04:4448 $28 $14
    and  A, $f0                                        ;; 04:444a $e6 $f0
    cp   A, $40                                        ;; 04:444c $fe $40
    jp   Z, .jp_04_4480                                ;; 04:444e $ca $80 $44
    cp   A, $50                                        ;; 04:4451 $fe $50
    jp   Z, .jp_04_44d3                                ;; 04:4453 $ca $d3 $44
    cp   A, $30                                        ;; 04:4456 $fe $30
    jp   Z, .jp_04_450e                                ;; 04:4458 $ca $0e $45
.jp_04_445b:
    ld   A, $00                                        ;; 04:445b $3e $00
    ret                                                ;; 04:445d $c9
.jr_04_445e:
    ld   A, [wD3EB]                                    ;; 04:445e $fa $eb $d3
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
    call call_00_0256                                  ;; 04:447a $cd $56 $02
    ld   A, $c9                                        ;; 04:447d $3e $c9
    ret                                                ;; 04:447f $c9
.jp_04_4480:
    call call_04_461c                                  ;; 04:4480 $cd $1c $46
    jp   NZ, .jp_04_445b                               ;; 04:4483 $c2 $5b $44
    push BC                                            ;; 04:4486 $c5
    push HL                                            ;; 04:4487 $e5
    call call_00_3dc0                                  ;; 04:4488 $cd $c0 $3d
    pop  DE                                            ;; 04:448b $d1
    call call_04_4655                                  ;; 04:448c $cd $55 $46
    pop  BC                                            ;; 04:448f $c1
    jp   NZ, .jp_04_4554                               ;; 04:4490 $c2 $54 $45
    push BC                                            ;; 04:4493 $c5
    push DE                                            ;; 04:4494 $d5
    ld   BC, $04                                       ;; 04:4495 $01 $04 $00
    call call_04_466e                                  ;; 04:4498 $cd $6e $46
    push DE                                            ;; 04:449b $d5
    call call_00_3d0e                                  ;; 04:449c $cd $0e $3d
    call call_04_4685                                  ;; 04:449f $cd $85 $46
    pop  DE                                            ;; 04:44a2 $d1
    call call_04_469b                                  ;; 04:44a3 $cd $9b $46
    pop  DE                                            ;; 04:44a6 $d1
    pop  BC                                            ;; 04:44a7 $c1
    jp   Z, .jp_04_4554                                ;; 04:44a8 $ca $54 $45
    push BC                                            ;; 04:44ab $c5
    push DE                                            ;; 04:44ac $d5
    push HL                                            ;; 04:44ad $e5
    call call_00_3f05                                  ;; 04:44ae $cd $05 $3f
    cp   A, $08                                        ;; 04:44b1 $fe $08
    jr   NZ, .jr_04_44c2                               ;; 04:44b3 $20 $0d
    pop  HL                                            ;; 04:44b5 $e1
    push HL                                            ;; 04:44b6 $e5
    srl  H                                             ;; 04:44b7 $cb $3c
    rr   L                                             ;; 04:44b9 $cb $1d
    srl  H                                             ;; 04:44bb $cb $3c
    rr   L                                             ;; 04:44bd $cb $1d
    call call_00_3df6                                  ;; 04:44bf $cd $f6 $3d
.jr_04_44c2:
    pop  HL                                            ;; 04:44c2 $e1
    pop  DE                                            ;; 04:44c3 $d1
    pop  BC                                            ;; 04:44c4 $c1
    set  7, H                                          ;; 04:44c5 $cb $fc
    ld   A, H                                          ;; 04:44c7 $7c
    ld   [wD3F3], A                                    ;; 04:44c8 $ea $f3 $d3
    ld   A, L                                          ;; 04:44cb $7d
    ld   [wD3F2], A                                    ;; 04:44cc $ea $f2 $d3
    call call_04_4728                                  ;; 04:44cf $cd $28 $47
    ret                                                ;; 04:44d2 $c9
.jp_04_44d3:
    call call_04_461c                                  ;; 04:44d3 $cd $1c $46
    jp   NZ, .jp_04_445b                               ;; 04:44d6 $c2 $5b $44
    push BC                                            ;; 04:44d9 $c5
    push HL                                            ;; 04:44da $e5
    call call_00_3dc0                                  ;; 04:44db $cd $c0 $3d
    pop  DE                                            ;; 04:44de $d1
    call call_04_4655                                  ;; 04:44df $cd $55 $46
    pop  BC                                            ;; 04:44e2 $c1
    jr   Z, .jr_04_44eb                                ;; 04:44e3 $28 $06
    cp   A, $12                                        ;; 04:44e5 $fe $12
    jr   Z, .jr_04_4567                                ;; 04:44e7 $28 $7e
    jr   .jp_04_4554                                   ;; 04:44e9 $18 $69
.jr_04_44eb:
    push BC                                            ;; 04:44eb $c5
    push DE                                            ;; 04:44ec $d5
    ld   BC, $05                                       ;; 04:44ed $01 $05 $00
    call call_04_466e                                  ;; 04:44f0 $cd $6e $46
    push DE                                            ;; 04:44f3 $d5
    call call_00_3daf                                  ;; 04:44f4 $cd $af $3d
    call call_04_4685                                  ;; 04:44f7 $cd $85 $46
    pop  DE                                            ;; 04:44fa $d1
    call call_04_46c6                                  ;; 04:44fb $cd $c6 $46
    pop  DE                                            ;; 04:44fe $d1
    pop  BC                                            ;; 04:44ff $c1
    jr   Z, .jp_04_4554                                ;; 04:4500 $28 $52
    ld   A, H                                          ;; 04:4502 $7c
    ld   [wD3F3], A                                    ;; 04:4503 $ea $f3 $d3
    ld   A, L                                          ;; 04:4506 $7d
    ld   [wD3F2], A                                    ;; 04:4507 $ea $f2 $d3
    call call_04_4728                                  ;; 04:450a $cd $28 $47
    ret                                                ;; 04:450d $c9
.jp_04_450e:
    call call_04_4636                                  ;; 04:450e $cd $36 $46
    jp   NZ, .jp_04_445b                               ;; 04:4511 $c2 $5b $44
    push BC                                            ;; 04:4514 $c5
    push HL                                            ;; 04:4515 $e5
    ld   A, B                                          ;; 04:4516 $78
    call call_00_2c0f                                  ;; 04:4517 $cd $0f $2c
    pop  DE                                            ;; 04:451a $d1
    call call_04_4655                                  ;; 04:451b $cd $55 $46
    pop  BC                                            ;; 04:451e $c1
    jr   NZ, .jp_04_4554                               ;; 04:451f $20 $33
    push BC                                            ;; 04:4521 $c5
    push DE                                            ;; 04:4522 $d5
    ld   A, B                                          ;; 04:4523 $78
    push AF                                            ;; 04:4524 $f5
    call call_04_4668                                  ;; 04:4525 $cd $68 $46
    pop  AF                                            ;; 04:4528 $f1
    push DE                                            ;; 04:4529 $d5
    call call_00_2c15                                  ;; 04:452a $cd $15 $2c
    call call_04_4685                                  ;; 04:452d $cd $85 $46
    pop  DE                                            ;; 04:4530 $d1
    ld   D, $00                                        ;; 04:4531 $16 $00
    call sub_HL_DE                                     ;; 04:4533 $cd $ab $2b
    pop  DE                                            ;; 04:4536 $d1
    pop  BC                                            ;; 04:4537 $c1
    jr   C, .jp_04_4554                                ;; 04:4538 $38 $1a
    push BC                                            ;; 04:453a $c5
    push DE                                            ;; 04:453b $d5
    ld   D, H                                          ;; 04:453c $54
    ld   E, L                                          ;; 04:453d $5d
    call call_04_46f6                                  ;; 04:453e $cd $f6 $46
    pop  DE                                            ;; 04:4541 $d1
    pop  BC                                            ;; 04:4542 $c1
    jp   Z, .jp_04_4554                                ;; 04:4543 $ca $54 $45
    set  7, H                                          ;; 04:4546 $cb $fc
    ld   A, H                                          ;; 04:4548 $7c
    ld   [wD3F3], A                                    ;; 04:4549 $ea $f3 $d3
    ld   A, L                                          ;; 04:454c $7d
    ld   [wD3F2], A                                    ;; 04:454d $ea $f2 $d3
    call call_04_4728                                  ;; 04:4550 $cd $28 $47
    ret                                                ;; 04:4553 $c9
.jp_04_4554:
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

call_04_4575:
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
    ld   [wD3E9], A                                    ;; 04:45f0 $ea $e9 $d3
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
    call call_04_470b                                  ;; 04:4612 $cd $0b $47
    jr   Z, .jr_04_4618                                ;; 04:4615 $28 $01
    ret  NC                                            ;; 04:4617 $d0
.jr_04_4618:
    call call_04_45c9                                  ;; 04:4618 $cd $c9 $45
    ret                                                ;; 04:461b $c9

call_04_461c:
    ld   A, [wD3EB]                                    ;; 04:461c $fa $eb $d3
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
    ld   A, [wD3EB]                                    ;; 04:4636 $fa $eb $d3
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

call_04_466e:
    push HL                                            ;; 04:466e $e5
    add  HL, BC                                        ;; 04:466f $09
    ld   A, [HL]                                       ;; 04:4670 $7e
    push AF                                            ;; 04:4671 $f5
    call call_00_3de9                                  ;; 04:4672 $cd $e9 $3d
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

call_04_4685:
    ld   L, A                                          ;; 04:4685 $6f
    ld   H, $00                                        ;; 04:4686 $26 $00
    ld   A, [wC0A0]                                    ;; 04:4688 $fa $a0 $c0
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
    call call_04_46f6                                  ;; 04:46bd $cd $f6 $46
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
    call call_04_46f6                                  ;; 04:46ed $cd $f6 $46
    ret                                                ;; 04:46f0 $c9
.jr_04_46f1:
    ld   HL, $00                                       ;; 04:46f1 $21 $00 $00
    xor  A, A                                          ;; 04:46f4 $af
    ret                                                ;; 04:46f5 $c9

call_04_46f6:
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

call_04_470b:
    ld   D, H                                          ;; 04:470b $54
    ld   E, L                                          ;; 04:470c $5d
    ld   A, [wD3F5]                                    ;; 04:470d $fa $f5 $d3
    ld   H, A                                          ;; 04:4710 $67
    ld   A, [wD3F4]                                    ;; 04:4711 $fa $f4 $d3
    ld   L, A                                          ;; 04:4714 $6f
    call sub_HL_DE                                     ;; 04:4715 $cd $ab $2b
    jr   Z, .jr_04_471c                                ;; 04:4718 $28 $02
    jr   NC, .jr_04_471f                               ;; 04:471a $30 $03
.jr_04_471c:
    ld   HL, rIE                                       ;; 04:471c $21 $ff $ff
.jr_04_471f:
    ld   A, H                                          ;; 04:471f $7c
    ld   [wD3F5], A                                    ;; 04:4720 $ea $f5 $d3
    ld   A, L                                          ;; 04:4723 $7d
    ld   [wD3F4], A                                    ;; 04:4724 $ea $f4 $d3
    ret                                                ;; 04:4727 $c9

call_04_4728:
    ld   A, $18                                        ;; 04:4728 $3e $18
    ld   [wD3EB], A                                    ;; 04:472a $ea $eb $d3
    ld   A, $0d                                        ;; 04:472d $3e $0d
    call playSFX                                       ;; 04:472f $cd $7d $29
    ld   A, $40                                        ;; 04:4732 $3e $40
    ret                                                ;; 04:4734 $c9

call_04_4735:
    call call_00_0695                                  ;; 04:4735 $cd $95 $06
    ret                                                ;; 04:4738 $c9

; Some kind of boss table? Data is loaded from here on a boss spawn, but not on an NPC spawn. Why does this table look a lot bigger then the amount of bosses available?
; speed (delay between actions, low=fast)
; HP
; ?
; ?
; ?
; ?
; index to script when defeated (usually just some simple screen flash or nothing)
; graphics related, sets the VRAM start tile number to load graphics data into
; graphics related, sets how many tiles need to be loaded into VRAM
; graphics related, pointer including bank, allowing everything from bank $08 to $0B to be selected for graphics.
; graphics related, points to data of which tile offsets to load from the previous pointer into VRAM
; metatile info (list of [attr, tile1, tile2])
; damage related? Not sure (influences amount of damage done by boss and taken from boss, maybe hit areas as well?)
; attack movement pattern
; spawn movement pattern (pattern format=ppppbb, level deeper format=bpp, after that unknown)
; death animation related?
;@data amount=21 format=bbbbbbwbbwpppppp
bossDataTable:
    data_bbbbbbwbbwpppppp $08, $19, $14, $0a, $08, $1e, $0246, $40, $0d, $cd00, data_04_793d, data_04_7ba7, data_04_4931, data_04_4e21, data_04_4df1, data_04_5435 ;; 04:4739 ????????????????????????
    data_bbbbbbwbbwpppppp $0a, $14, $0a, $5a, $07, $1f, $0246, $40, $18, $4cd0, data_04_7957, data_04_7bd1, data_04_4971, data_04_4e37, data_04_4e37, data_04_54bb ;; 04:4751 ????????????????????????
    data_bbbbbbwbbwpppppp $06, $3b, $55, $46, $04, $20, $0246, $40, $18, $e100, data_04_7987, data_04_7bfe, data_04_49e1, data_04_4e75, data_04_4e75, data_04_5503 ;; 04:4769 ????????????????????????
    data_bbbbbbwbbwpppppp $0a, $1c, $2c, $96, $0b, $16, $0246, $40, $10, $d240, data_04_7987, data_04_7f25, data_04_4cc1, data_04_525b, data_04_4e09, data_04_5541 ;; 04:4781 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $4b, $5a, $64, $08, $26, $0246, $40, $14, $ce80, data_04_79f3, data_04_7c3a, data_04_4a01, data_04_4edb, data_04_4edb, data_04_5575 ;; 04:4799 ????????????????????????
    data_bbbbbbwbbwpppppp $04, $8f, $60, $a0, $06, $16, $0246, $40, $10, $d040, data_04_7987, data_04_7c70, data_04_4a41, data_04_4ee7, data_04_4ee7, data_04_5473 ;; 04:47b1 ????????????????????????
    data_bbbbbbwbbwpppppp $06, $6f, $46, $3c, $07, $ff, $0247, $30, $1d, $dac0, data_04_7a37, data_04_7cd6, data_04_4ac9, data_04_4fdd, data_04_4fdd, data_04_5435 ;; 04:47c9 ????????????????????????
    data_bbbbbbwbbwpppppp $04, $70, $14, $58, $06, $23, $0246, $40, $18, $d500, data_04_7987, data_04_7d06, data_04_4b01, data_04_504d, data_04_504d, data_04_55b3 ;; 04:47e1 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $79, $a6, $78, $09, $0d, $024f, $3c, $1a, $d800, data_04_7a71, data_04_7d36, data_04_4b31, data_04_509f, data_04_509f, data_04_56b2 ;; 04:47f9 ????????????????????????
    data_bbbbbbwbbwpppppp $0c, $7d, $be, $78, $0a, $14, $0247, $3a, $1b, $ee00, data_04_7b51, data_04_7ec8, data_04_4c71, data_04_5231, data_04_4dfd, data_04_56b9 ;; 04:4811 ????????????????????????
    data_bbbbbbwbbwpppppp $06, $92, $c8, $fa, $07, $16, $0247, $40, $18, $de30, data_04_79c7, data_04_7d78, data_04_4b79, data_04_50f1, data_04_50f1, data_04_566d ;; 04:4829 ????????????????????????
    data_bbbbbbwbbwpppppp $0a, $76, $b2, $c8, $07, $22, $0247, $38, $1c, $e400, data_04_7b19, data_04_7e74, data_04_4c39, data_04_5171, data_04_5171, data_04_5435 ;; 04:4841 ????????????????????????
    data_bbbbbbwbbwpppppp $04, $bb, $d2, $fa, $08, $21, $0247, $34, $1e, $f880, data_04_7aa5, data_04_7dc6, data_04_4bb1, data_04_5127, data_04_5127, data_04_5435 ;; 04:4859 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $6a, $00, $fa, $09, $14, $024f, $38, $1c, $e780, data_04_7ae1, data_04_7e20, data_04_4bf1, data_04_5165, data_04_5165, data_04_56ab ;; 04:4871 ????????????????????????
    data_bbbbbbwbbwpppppp $05, $da, $00, $a0, $0b, $24, $0246, $40, $12, $4900, data_04_7a13, data_04_7c9a, data_04_4a71, data_04_4f77, data_04_4f77, data_04_55f1 ;; 04:4889 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $ce, $00, $fa, $07, $27, $0247, $40, $18, $eb00, data_04_7957, data_04_7bd1, data_04_49a9, data_04_4e37, data_04_4e37, data_04_54bb ;; 04:48a1 ????????????????????????
    data_bbbbbbwbbwpppppp $05, $02, $00, $00, $06, $16, $0246, $40, $10, $fe00, data_04_7987, data_04_7c70, data_04_4d19, data_04_4f4d, data_04_4e15, data_04_5473 ;; 04:48b9 ........................
    data_bbbbbbwbbwpppppp $04, $ff, $00, $a0, $08, $25, $0246, $40, $10, $f300, data_04_7b87, data_04_7f4f, data_04_4d49, data_04_531b, data_04_531b, data_04_562f ;; 04:48d1 ????????????????????????
    data_bbbbbbwbbwpppppp $0a, $51, $64, $64, $07, $16, $0247, $40, $18, $f140, data_04_79c7, data_04_7d78, data_04_4d89, data_04_50fd, data_04_50fd, data_04_566d ;; 04:48e9 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $af, $c7, $dc, $06, $ff, $0246, $40, $18, $f500, data_04_7987, data_04_7d06, data_04_4dc1, data_04_504d, data_04_504d, data_04_55b3 ;; 04:4901 ????????????????????????
    data_bbbbbbwbbwpppppp $08, $bb, $00, $fa, $09, $14, $024f, $38, $1c, $e780, data_04_7ae1, data_04_7e20, data_04_4bf1, data_04_5165, data_04_5165, data_04_56ab ;; 04:4919 ????????????????????????

data_04_4931:
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4931 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4939 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4941 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4949 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4951 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4959 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4961 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4969 ????????

data_04_4971:
    db   $20, $ff, $00, $16, $19, $10, $00, $00        ;; 04:4971 ????????
    db   $20, $90, $00, $16, $01, $10, $00, $00        ;; 04:4979 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4981 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4989 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4991 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4999 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:49a1 ????????

data_04_49a9:
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49a9 ????????
    db   $20, $90, $01, $c8, $1c, $3f, $00, $00        ;; 04:49b1 ????????
    db   $20, $90, $01, $c8, $1c, $3f, $00, $00        ;; 04:49b9 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49c1 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49c9 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49d1 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49d9 ????????

data_04_49e1:
    db   $20, $f0, $00, $4e, $32, $32, $00, $04        ;; 04:49e1 ????????
    db   $20, $f0, $00, $4e, $08, $12, $00, $04        ;; 04:49e9 ????????
    db   $20, $f0, $00, $4e, $08, $12, $00, $04        ;; 04:49f1 ????????
    db   $20, $f0, $00, $4e, $32, $32, $00, $04        ;; 04:49f9 ????????

data_04_4a01:
    db   $20, $10, $00, $5d, $0a, $01, $00, $00        ;; 04:4a01 ????????
    db   $20, $10, $00, $5d, $01, $16, $00, $00        ;; 04:4a09 ????????
    db   $20, $10, $00, $5d, $01, $16, $00, $00        ;; 04:4a11 ????????
    db   $20, $10, $00, $5d, $0a, $01, $00, $00        ;; 04:4a19 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a21 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a29 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a31 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a39 ????????

data_04_4a41:
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a41 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a49 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a51 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a59 ????????
    db   $20, $fb, $00, $00, $04, $02, $00, $00        ;; 04:4a61 ????????
    db   $20, $fb, $00, $00, $04, $02, $00, $00        ;; 04:4a69 ????????

data_04_4a71:
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a71 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a79 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a81 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a89 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a91 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4a99 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4aa1 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4aa9 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4ab1 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4ab9 ????????
    db   $20, $90, $00, $a0, $45, $3a, $00, $00        ;; 04:4ac1 ????????

data_04_4ac9:
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ac9 ????????
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ad1 ????????
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ad9 ????????
    db   $20, $f0, $00, $69, $16, $29, $00, $00        ;; 04:4ae1 ????????
    db   $20, $f0, $00, $69, $16, $29, $00, $00        ;; 04:4ae9 ????????
    db   $20, $ff, $00, $9b, $20, $1f, $00, $00        ;; 04:4af1 ????????
    db   $20, $ff, $00, $9b, $20, $1f, $00, $00        ;; 04:4af9 ????????

data_04_4b01:
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b01 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b09 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b11 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b19 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b21 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b29 ????????

data_04_4b31:
    db   $20, $d0, $80, $64, $10, $23, $00, $00        ;; 04:4b31 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b39 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b41 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b49 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b51 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b59 ????????
    db   $20, $ff, $80, $a0, $43, $30, $00, $00        ;; 04:4b61 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b69 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b71 ????????

data_04_4b79:
    db   $20, $8a, $40, $81, $10, $10, $00, $00        ;; 04:4b79 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b81 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b89 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b91 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b99 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4ba1 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4ba9 ????????

data_04_4bb1:
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bb1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bb9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bc1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bc9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bd1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bd9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4be1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4be9 ????????

data_04_4bf1:
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4bf1 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4bf9 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c01 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c09 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c11 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c19 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c21 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c29 ????????
    db   $20, $90, $02, $ae, $14, $33, $00, $00        ;; 04:4c31 ????????

data_04_4c39:
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c39 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c41 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c49 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c51 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c59 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c61 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c69 ????????

data_04_4c71:
    db   $20, $90, $00, $8c, $02, $02, $00, $00        ;; 04:4c71 ????????
    db   $20, $90, $00, $8c, $02, $02, $00, $00        ;; 04:4c79 ????????
    db   $20, $90, $00, $8c, $02, $02, $00, $00        ;; 04:4c81 ????????
    db   $20, $90, $00, $8c, $02, $02, $00, $00        ;; 04:4c89 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4c91 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4c99 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4ca1 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4ca9 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4cb1 ????????
    db   $20, $ff, $00, $8c, $41, $32, $00, $00        ;; 04:4cb9 ????????

data_04_4cc1:
    db   $20, $90, $00, $21, $0a, $14, $00, $00        ;; 04:4cc1 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4cc9 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4cd1 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4cd9 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4ce1 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4ce9 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4cf1 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4cf9 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4d01 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4d09 ????????
    db   $20, $ff, $00, $21, $0c, $1e, $00, $00        ;; 04:4d11 ????????

data_04_4d19:
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d19 ?..?.???
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d21 ????????
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d29 ????????
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d31 ?..?.???
    db   $20, $00, $00, $00, $03, $02, $00, $00        ;; 04:4d39 ???.??.?
    db   $20, $00, $00, $00, $03, $02, $00, $00        ;; 04:4d41 ????????

data_04_4d49:
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d49 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d51 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d59 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d61 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d69 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d71 ????????
    db   $20, $ff, $00, $bc, $45, $3a, $00, $00        ;; 04:4d79 ????????
    db   $20, $ff, $00, $bc, $45, $3a, $00, $00        ;; 04:4d81 ????????

data_04_4d89:
    db   $20, $90, $00, $4d, $04, $08, $00, $00        ;; 04:4d89 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4d91 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4d99 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4da1 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4da9 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4db1 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4db9 ????????

data_04_4dc1:
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dc1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dc9 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dd1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dd9 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4de1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4de9 ????????

data_04_4df1:
    db   $f7, $56, $f7, $56, $f7, $56, $f7, $56        ;; 04:4df1 ????????
    db   $0a, $00, $ff, $ff                            ;; 04:4df9 ????

data_04_4dfd:
    db   $52, $67, $52, $67, $52, $67, $52, $67        ;; 04:4dfd ????????
    db   $08, $0c, $ff, $ff                            ;; 04:4e05 ????

data_04_4e09:
    db   $55, $68, $55, $68, $55, $68, $55, $68        ;; 04:4e09 ????????
    db   $1f, $15, $ff, $ff                            ;; 04:4e11 ????

;@data format=ppppbb
data_04_4e15:
    data_ppppbb data_04_5dc1, data_04_5dc1, data_04_5dc1, data_04_5dc1, $0a, $02 ;; 04:4e15 ..??..??..
    db   $ff, $ff                                      ;; 04:4e1f ..

data_04_4e21:
    db   $0c, $57, $0c, $57, $35, $57, $35, $57        ;; 04:4e21 ????????
    db   $04, $06, $5e, $57, $5e, $57, $87, $57        ;; 04:4e29 ????????
    db   $87, $57, $10, $06, $ff, $ff                  ;; 04:4e31 ??????

data_04_4e37:
    db   $b0, $57, $ed, $57, $ed, $57, $ed, $57        ;; 04:4e37 ????????
    db   $12, $05, $b0, $57, $b0, $57, $ed, $57        ;; 04:4e3f ????????
    db   $ed, $57, $12, $07, $b0, $57, $b0, $57        ;; 04:4e47 ????????
    db   $b0, $57, $ed, $57, $12, $09, $2a, $58        ;; 04:4e4f ????????
    db   $2a, $58, $67, $58, $67, $58, $12, $0b        ;; 04:4e57 ????????
    db   $2a, $58, $2a, $58, $67, $58, $67, $58        ;; 04:4e5f ????????
    db   $12, $09, $2a, $58, $67, $58, $67, $58        ;; 04:4e67 ????????
    db   $67, $58, $12, $07, $ff, $ff                  ;; 04:4e6f ??????

data_04_4e75:
    db   $b9, $58, $b9, $58, $b9, $58, $b9, $58        ;; 04:4e75 ????????
    db   $08, $06, $ce, $58, $ce, $58, $ce, $58        ;; 04:4e7d ????????
    db   $5b, $59, $04, $06, $ce, $58, $5b, $59        ;; 04:4e85 ????????
    db   $5b, $59, $5b, $59, $04, $06, $a4, $58        ;; 04:4e8d ????????
    db   $a4, $58, $a4, $58, $a4, $58, $04, $06        ;; 04:4e95 ????????
    db   $2b, $5b, $2b, $5b, $9e, $5a, $9e, $5a        ;; 04:4e9d ????????
    db   $08, $06, $a4, $58, $a4, $58, $a4, $58        ;; 04:4ea5 ????????
    db   $a4, $58, $0c, $06, $b6, $59, $43, $5a        ;; 04:4ead ????????
    db   $43, $5a, $43, $5a, $10, $06, $b6, $59        ;; 04:4eb5 ????????
    db   $b6, $59, $b6, $59, $43, $5a, $10, $06        ;; 04:4ebd ????????
    db   $b9, $58, $b9, $58, $b9, $58, $b9, $58        ;; 04:4ec5 ????????
    db   $10, $06, $13, $5c, $13, $5c, $86, $5b        ;; 04:4ecd ????????
    db   $86, $5b, $0c, $06, $ff, $ff                  ;; 04:4ed5 ??????

data_04_4edb:
    db   $6e, $5c, $6e, $5c, $ab, $5c, $ab, $5c        ;; 04:4edb ????????
    db   $0a, $04, $ff, $ff                            ;; 04:4ee3 ????

data_04_4ee7:
    db   $94, $5d, $e8, $5c, $e8, $5c, $e8, $5c        ;; 04:4ee7 ????????
    db   $0a, $02, $aa, $5d, $b5, $5d, $b5, $5d        ;; 04:4eef ????????
    db   $b5, $5d, $10, $02, $aa, $5d, $aa, $5d        ;; 04:4ef7 ????????
    db   $b5, $5d, $b5, $5d, $10, $02, $9f, $5d        ;; 04:4eff ????????
    db   $3e, $5d, $3e, $5d, $3e, $5d, $10, $02        ;; 04:4f07 ????????
    db   $aa, $5d, $b5, $5d, $b5, $5d, $b5, $5d        ;; 04:4f0f ????????
    db   $0a, $02, $aa, $5d, $aa, $5d, $b5, $5d        ;; 04:4f17 ????????
    db   $b5, $5d, $0a, $02, $9f, $5d, $3e, $5d        ;; 04:4f1f ????????
    db   $3e, $5d, $3e, $5d, $0a, $02, $aa, $5d        ;; 04:4f27 ????????
    db   $b5, $5d, $b5, $5d, $b5, $5d, $04, $02        ;; 04:4f2f ????????
    db   $aa, $5d, $aa, $5d, $b5, $5d, $b5, $5d        ;; 04:4f37 ????????
    db   $04, $02, $94, $5d, $e8, $5c, $e8, $5c        ;; 04:4f3f ????????
    db   $e8, $5c, $04, $02, $ff, $ff                  ;; 04:4f47 ??????

;@data format=ppppbb amount=4
data_04_4f4d:
    data_ppppbb data_04_5ce8, data_04_5ce8, data_04_5ce8, data_04_5ce8, $0a, $05 ;; 04:4f4d ..??......
    data_ppppbb data_04_5d3e, data_04_5d3e, data_04_5d3e, data_04_5d3e, $10, $05 ;; 04:4f57 ..????....
    data_ppppbb data_04_5d3e, data_04_5d3e, data_04_5d3e, data_04_5d3e, $0a, $05 ;; 04:4f61 ..????....
    data_ppppbb data_04_5ce8, data_04_5ce8, data_04_5ce8, data_04_5ce8, $04, $05 ;; 04:4f6b ....??....
    db   $ff, $ff                                      ;; 04:4f75 ..

data_04_4f77:
    db   $c7, $5d, $c7, $5d, $c7, $5d, $c7, $5d        ;; 04:4f77 ????????
    db   $0a, $02, $93, $5e, $a4, $5e, $a4, $5e        ;; 04:4f7f ????????
    db   $9e, $5e, $10, $02, $93, $5e, $93, $5e        ;; 04:4f87 ????????
    db   $a4, $5e, $9e, $5e, $10, $02, $88, $5e        ;; 04:4f8f ????????
    db   $22, $5e, $22, $5e, $22, $5e, $10, $02        ;; 04:4f97 ????????
    db   $93, $5e, $a4, $5e, $a4, $5e, $9e, $5e        ;; 04:4f9f ????????
    db   $0a, $02, $93, $5e, $93, $5e, $a4, $5e        ;; 04:4fa7 ????????
    db   $9e, $5e, $0a, $02, $22, $5e, $22, $5e        ;; 04:4faf ????????
    db   $22, $5e, $22, $5e, $0a, $02, $93, $5e        ;; 04:4fb7 ????????
    db   $a4, $5e, $9e, $5e, $9e, $5e, $04, $02        ;; 04:4fbf ????????
    db   $93, $5e, $a4, $5e, $a4, $5e, $9e, $5e        ;; 04:4fc7 ????????
    db   $04, $02, $7d, $5e, $c7, $5d, $c7, $5d        ;; 04:4fcf ????????
    db   $c7, $5d, $04, $02, $ff, $ff                  ;; 04:4fd7 ??????

data_04_4fdd:
    db   $af, $5e, $af, $5e, $af, $5e, $af, $5e        ;; 04:4fdd ????????
    db   $0d, $02, $33, $5f, $33, $5f, $33, $5f        ;; 04:4fe5 ????????
    db   $70, $5f, $0d, $06, $33, $5f, $33, $5f        ;; 04:4fed ????????
    db   $70, $5f, $70, $5f, $0d, $06, $af, $5e        ;; 04:4ff5 ????????
    db   $af, $5e, $af, $5e, $af, $5e, $0d, $06        ;; 04:4ffd ????????
    db   $33, $5f, $33, $5f, $33, $5f, $70, $5f        ;; 04:5005 ????????
    db   $0d, $0a, $33, $5f, $33, $5f, $70, $5f        ;; 04:500d ????????
    db   $70, $5f, $0d, $0a, $f1, $5e, $f1, $5e        ;; 04:5015 ????????
    db   $f1, $5e, $f1, $5e, $0d, $0a, $33, $5f        ;; 04:501d ????????
    db   $33, $5f, $70, $5f, $70, $5f, $0d, $06        ;; 04:5025 ????????
    db   $f1, $5e, $f1, $5e, $f1, $5e, $f1, $5e        ;; 04:502d ????????
    db   $0d, $06, $33, $5f, $33, $5f, $70, $5f        ;; 04:5035 ????????
    db   $70, $5f, $0d, $02, $33, $5f, $70, $5f        ;; 04:503d ????????
    db   $70, $5f, $70, $5f, $0d, $02, $ff, $ff        ;; 04:5045 ????????

data_04_504d:
    db   $21, $60, $21, $60, $21, $60, $21, $60        ;; 04:504d ????????
    db   $0a, $04, $ba, $60, $ba, $60, $ba, $60        ;; 04:5055 ????????
    db   $ba, $60, $0e, $04, $36, $60, $36, $60        ;; 04:505d ????????
    db   $36, $60, $36, $60, $0e, $04, $da, $5f        ;; 04:5065 ????????
    db   $da, $5f, $29, $61, $66, $61, $0a, $04        ;; 04:506d ????????
    db   $36, $60, $36, $60, $36, $60, $36, $60        ;; 04:5075 ????????
    db   $0a, $04, $4b, $60, $4b, $60, $4b, $60        ;; 04:507d ????????
    db   $4b, $60, $06, $04, $21, $60, $21, $60        ;; 04:5085 ????????
    db   $21, $60, $21, $60, $06, $04, $da, $5f        ;; 04:508d ????????
    db   $da, $5f, $29, $61, $66, $61, $0a, $04        ;; 04:5095 ????????
    db   $ff, $ff                                      ;; 04:509d ??

data_04_509f:
    db   $a3, $61, $a3, $61, $a3, $61, $a3, $61        ;; 04:509f ????????
    db   $10, $02, $e1, $61, $e1, $61, $e1, $61        ;; 04:50a7 ????????
    db   $e1, $61, $10, $05, $a3, $61, $a3, $61        ;; 04:50af ????????
    db   $a3, $61, $a3, $61, $10, $05, $e1, $61        ;; 04:50b7 ????????
    db   $e1, $61, $e1, $61, $e1, $61, $10, $08        ;; 04:50bf ????????
    db   $c2, $61, $c2, $61, $c2, $61, $c2, $61        ;; 04:50c7 ????????
    db   $10, $08, $e1, $61, $e1, $61, $e1, $61        ;; 04:50cf ????????
    db   $e1, $61, $10, $05, $c2, $61, $c2, $61        ;; 04:50d7 ????????
    db   $c2, $61, $c2, $61, $10, $05, $e1, $61        ;; 04:50df ????????
    db   $e1, $61, $e1, $61, $e1, $61, $10, $02        ;; 04:50e7 ????????
    db   $ff, $ff                                      ;; 04:50ef ??

data_04_50f1:
    db   $9d, $62, $9d, $62, $4b, $62, $74, $62        ;; 04:50f1 ????????
    db   $0a, $04, $ff, $ff                            ;; 04:50f9 ????

data_04_50fd:
    db   $4b, $62, $4b, $62, $74, $62, $74, $62        ;; 04:50fd ????????
    db   $0a, $04, $3e, $63, $3e, $63, $3e, $63        ;; 04:5105 ????????
    db   $3e, $63, $0a, $04, $4b, $62, $4b, $62        ;; 04:510d ????????
    db   $74, $62, $74, $62, $0a, $0c, $67, $63        ;; 04:5115 ????????
    db   $67, $63, $67, $63, $67, $63, $0a, $0c        ;; 04:511d ????????
    db   $ff, $ff                                      ;; 04:5125 ??

data_04_5127:
    db   $1e, $64, $1e, $64, $1e, $64, $48, $64        ;; 04:5127 ????????
    db   $04, $02, $1e, $64, $1e, $64, $48, $64        ;; 04:512f ????????
    db   $48, $64, $04, $02, $90, $63, $90, $63        ;; 04:5137 ????????
    db   $90, $63, $90, $63, $04, $02, $33, $64        ;; 04:513f ????????
    db   $33, $64, $33, $64, $7b, $64, $10, $02        ;; 04:5147 ????????
    db   $33, $64, $33, $64, $7b, $64, $7b, $64        ;; 04:514f ????????
    db   $10, $02, $d7, $63, $d7, $63, $d7, $63        ;; 04:5157 ????????
    db   $d7, $63, $10, $02, $ff, $ff                  ;; 04:515f ??????

data_04_5165:
    db   $ae, $64, $ae, $64, $9f, $65, $9f, $65        ;; 04:5165 ????????
    db   $09, $03, $ff, $ff                            ;; 04:516d ????

data_04_5171:
    db   $f0, $66, $f0, $66, $f0, $66, $f0, $66        ;; 04:5171 ????????
    db   $16, $0c, $38, $67, $38, $67, $38, $67        ;; 04:5179 ????????
    db   $38, $67, $13, $09, $f0, $66, $f0, $66        ;; 04:5181 ????????
    db   $f0, $66, $f0, $66, $10, $06, $0a, $67        ;; 04:5189 ????????
    db   $0a, $67, $0a, $67, $0a, $67, $0d, $03        ;; 04:5191 ????????
    db   $38, $67, $38, $67, $38, $67, $38, $67        ;; 04:5199 ????????
    db   $07, $09, $90, $66, $90, $66, $90, $66        ;; 04:51a1 ????????
    db   $90, $66, $04, $06, $f0, $66, $f0, $66        ;; 04:51a9 ????????
    db   $f0, $66, $f0, $66, $10, $06, $38, $67        ;; 04:51b1 ????????
    db   $38, $67, $38, $67, $38, $67, $0d, $03        ;; 04:51b9 ????????
    db   $f0, $66, $f0, $66, $f0, $66, $f0, $66        ;; 04:51c1 ????????
    db   $0a, $00, $38, $67, $38, $67, $38, $67        ;; 04:51c9 ????????
    db   $38, $67, $07, $fd, $38, $67, $38, $67        ;; 04:51d1 ????????
    db   $38, $67, $38, $67, $0c, $11, $f0, $66        ;; 04:51d9 ????????
    db   $f0, $66, $f0, $66, $f0, $66, $09, $0e        ;; 04:51e1 ????????
    db   $38, $67, $38, $67, $38, $67, $38, $67        ;; 04:51e9 ????????
    db   $06, $0b, $90, $66, $90, $66, $90, $66        ;; 04:51f1 ????????
    db   $90, $66, $03, $08, $f0, $66, $f0, $66        ;; 04:51f9 ????????
    db   $f0, $66, $f0, $66, $0f, $08, $0a, $67        ;; 04:5201 ????????
    db   $0a, $67, $0a, $67, $0a, $67, $0c, $05        ;; 04:5209 ????????
    db   $38, $67, $38, $67, $38, $67, $38, $67        ;; 04:5211 ????????
    db   $06, $0b, $f0, $66, $f0, $66, $f0, $66        ;; 04:5219 ????????
    db   $f0, $66, $03, $08, $38, $67, $38, $67        ;; 04:5221 ????????
    db   $38, $67, $38, $67, $00, $05, $ff, $ff        ;; 04:5229 ????????

data_04_5231:
    db   $9c, $67, $9c, $67, $b1, $67, $b1, $67        ;; 04:5231 ????????
    db   $08, $0c, $71, $67, $71, $67, $71, $67        ;; 04:5239 ????????
    db   $71, $67, $08, $0c, $7c, $67, $7c, $67        ;; 04:5241 ????????
    db   $c6, $67, $c6, $67, $08, $0c, $91, $67        ;; 04:5249 ????????
    db   $91, $67, $91, $67, $91, $67, $08, $0c        ;; 04:5251 ????????
    db   $ff, $ff                                      ;; 04:5259 ??

data_04_525b:
    db   $3b, $68, $3b, $68, $3b, $68, $3b, $68        ;; 04:525b ????????
    db   $16, $0c, $b6, $68, $b6, $68, $b6, $68        ;; 04:5263 ????????
    db   $b6, $68, $13, $09, $3b, $68, $3b, $68        ;; 04:526b ????????
    db   $3b, $68, $3b, $68, $10, $06, $88, $68        ;; 04:5273 ????????
    db   $88, $68, $88, $68, $88, $68, $0d, $03        ;; 04:527b ????????
    db   $b6, $68, $b6, $68, $b6, $68, $b6, $68        ;; 04:5283 ????????
    db   $07, $09, $db, $67, $db, $67, $db, $67        ;; 04:528b ????????
    db   $db, $67, $04, $06, $3b, $68, $3b, $68        ;; 04:5293 ????????
    db   $3b, $68, $3b, $68, $10, $06, $b6, $68        ;; 04:529b ????????
    db   $b6, $68, $b6, $68, $b6, $68, $0d, $03        ;; 04:52a3 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $3b, $68        ;; 04:52ab ????????
    db   $0a, $00, $b6, $68, $b6, $68, $b6, $68        ;; 04:52b3 ????????
    db   $b6, $68, $07, $fd, $b6, $68, $b6, $68        ;; 04:52bb ????????
    db   $b6, $68, $b6, $68, $0c, $11, $3b, $68        ;; 04:52c3 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $09, $0e        ;; 04:52cb ????????
    db   $b6, $68, $b6, $68, $b6, $68, $b6, $68        ;; 04:52d3 ????????
    db   $06, $0b, $db, $67, $db, $67, $db, $67        ;; 04:52db ????????
    db   $db, $67, $03, $08, $3b, $68, $3b, $68        ;; 04:52e3 ????????
    db   $3b, $68, $3b, $68, $0f, $08, $88, $68        ;; 04:52eb ????????
    db   $88, $68, $88, $68, $88, $68, $0c, $05        ;; 04:52f3 ????????
    db   $b6, $68, $b6, $68, $b6, $68, $b6, $68        ;; 04:52fb ????????
    db   $06, $0b, $3b, $68, $3b, $68, $3b, $68        ;; 04:5303 ????????
    db   $3b, $68, $03, $08, $b6, $68, $b6, $68        ;; 04:530b ????????
    db   $b6, $68, $b6, $68, $00, $05, $ff, $ff        ;; 04:5313 ????????

;@data format=pppp
data_04_531b:
    dw   data_04_68d0, data_04_68d0, data_04_68d0, data_04_68d0 ;; 04:531b ????????
    db   $0a, $02, $f9, $68, $f9, $68, $f9, $68        ;; 04:5323 ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:532b ????????
    db   $d0, $68, $d0, $68, $06, $06, $f9, $68        ;; 04:5333 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:533b ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:5343 ????????
    db   $10, $04, $f9, $68, $f9, $68, $f9, $68        ;; 04:534b ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:5353 ????????
    db   $d0, $68, $d0, $68, $0c, $08, $f9, $68        ;; 04:535b ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:5363 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:536b ????????
    db   $06, $02, $f9, $68, $f9, $68, $f9, $68        ;; 04:5373 ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:537b ????????
    db   $d0, $68, $d0, $68, $08, $08, $f9, $68        ;; 04:5383 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:538b ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:5393 ????????
    db   $0c, $04, $f9, $68, $f9, $68, $f9, $68        ;; 04:539b ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:53a3 ????????
    db   $d0, $68, $d0, $68, $04, $08, $f9, $68        ;; 04:53ab ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:53b3 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:53bb ????????
    db   $0e, $06, $f9, $68, $f9, $68, $f9, $68        ;; 04:53c3 ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:53cb ????????
    db   $d0, $68, $d0, $68, $08, $04, $f9, $68        ;; 04:53d3 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:53db ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:53e3 ????????
    db   $10, $08, $f9, $68, $f9, $68, $f9, $68        ;; 04:53eb ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:53f3 ????????
    db   $d0, $68, $d0, $68, $0a, $06, $f9, $68        ;; 04:53fb ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:5403 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $d0, $68        ;; 04:540b ????????
    db   $0e, $02, $f9, $68, $f9, $68, $f9, $68        ;; 04:5413 ????????
    db   $f9, $68, $00, $18, $d0, $68, $d0, $68        ;; 04:541b ????????
    db   $d0, $68, $d0, $68, $04, $04, $f9, $68        ;; 04:5423 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $00, $18        ;; 04:542b ????????
    db   $ff, $ff                                      ;; 04:5433 ??

data_04_5435:
    db   $01, $14, $69, $2d, $76, $01, $14, $69        ;; 04:5435 ????????
    db   $43, $76, $01, $14, $69, $59, $76, $01        ;; 04:543d ????????
    db   $14, $69, $6f, $76, $01, $14, $69, $43        ;; 04:5445 ????????
    db   $76, $01, $14, $69, $59, $76, $01, $14        ;; 04:544d ????????
    db   $69, $6f, $76, $01, $3c, $6b, $a2, $78        ;; 04:5455 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:545d ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:5465 ????????
    db   $3f, $6b, $1e, $79, $ff, $ff                  ;; 04:546d ??????

data_04_5473:
    db   $01, $3c, $6b, $85, $76, $01, $3f, $6b        ;; 04:5473 ........
    db   $95, $76, $01, $3c, $6b, $a5, $76, $01        ;; 04:547b ........
    db   $3f, $6b, $b5, $76, $01, $3c, $6b, $c5        ;; 04:5483 ........
    db   $76, $01, $3f, $6b, $95, $76, $01, $3c        ;; 04:548b ........
    db   $6b, $a5, $76, $01, $3f, $6b, $b5, $76        ;; 04:5493 ........
    db   $01, $3c, $6b, $c5, $76, $01, $3f, $6b        ;; 04:549b ........
    db   $a2, $78, $01, $3c, $6b, $c1, $78, $01        ;; 04:54a3 ........
    db   $3f, $6b, $e0, $78, $01, $3c, $6b, $ff        ;; 04:54ab ........
    db   $78, $01, $3f, $6b, $1e, $79, $ff, $ff        ;; 04:54b3 .......?

data_04_54bb:
    db   $01, $1d, $69, $d5, $76, $01, $1d, $69        ;; 04:54bb ????????
    db   $e8, $76, $01, $1d, $69, $fb, $76, $01        ;; 04:54c3 ????????
    db   $1d, $69, $0e, $77, $01, $1d, $69, $21        ;; 04:54cb ????????
    db   $77, $01, $1d, $69, $e8, $76, $01, $1d        ;; 04:54d3 ????????
    db   $69, $fb, $76, $01, $1d, $69, $0e, $77        ;; 04:54db ????????
    db   $01, $1d, $69, $21, $77, $01, $3c, $6b        ;; 04:54e3 ????????
    db   $a2, $78, $01, $3c, $6b, $c1, $78, $01        ;; 04:54eb ????????
    db   $3c, $6b, $e0, $78, $01, $3c, $6b, $ff        ;; 04:54f3 ????????
    db   $78, $01, $3c, $6b, $1e, $79, $ff, $ff        ;; 04:54fb ????????

data_04_5503:
    db   $01, $1d, $69, $34, $77, $01, $1d, $69        ;; 04:5503 ????????
    db   $3e, $77, $01, $1d, $69, $48, $77, $01        ;; 04:550b ????????
    db   $1d, $69, $52, $77, $01, $1d, $69, $3e        ;; 04:5513 ????????
    db   $77, $01, $1d, $69, $48, $77, $01, $1d        ;; 04:551b ????????
    db   $69, $52, $77, $01, $3c, $6b, $a2, $78        ;; 04:5523 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:552b ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:5533 ????????
    db   $3c, $6b, $1e, $79, $ff, $ff                  ;; 04:553b ??????

data_04_5541:
    db   $01, $ca, $6a, $f8, $74, $01, $ca, $6a        ;; 04:5541 ????????
    db   $17, $75, $01, $ca, $6a, $36, $75, $01        ;; 04:5549 ????????
    db   $ca, $6a, $55, $75, $01, $ca, $6a, $74        ;; 04:5551 ????????
    db   $75, $01, $3c, $6b, $a2, $78, $01, $3f        ;; 04:5559 ????????
    db   $6b, $c1, $78, $01, $3c, $6b, $e0, $78        ;; 04:5561 ????????
    db   $01, $3f, $6b, $ff, $78, $01, $3c, $6b        ;; 04:5569 ????????
    db   $1e, $79, $ff, $ff                            ;; 04:5571 ????

data_04_5575:
    db   $01, $1d, $69, $44, $6d, $01, $1d, $69        ;; 04:5575 ????????
    db   $5a, $6d, $01, $1d, $69, $70, $6d, $01        ;; 04:557d ????????
    db   $1d, $69, $86, $6d, $01, $1d, $69, $5a        ;; 04:5585 ????????
    db   $6d, $01, $1d, $69, $70, $6d, $01, $1d        ;; 04:558d ????????
    db   $69, $86, $6d, $01, $3c, $6b, $a2, $78        ;; 04:5595 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:559d ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:55a5 ????????
    db   $3c, $6b, $1e, $79, $ff, $ff                  ;; 04:55ad ??????

data_04_55b3:
    db   $01, $1d, $69, $47, $6f, $01, $1d, $69        ;; 04:55b3 ????????
    db   $57, $6f, $01, $1d, $69, $67, $6f, $01        ;; 04:55bb ????????
    db   $1d, $69, $77, $6f, $01, $1d, $69, $57        ;; 04:55c3 ????????
    db   $6f, $01, $1d, $69, $67, $6f, $01, $1d        ;; 04:55cb ????????
    db   $69, $77, $6f, $01, $3c, $6b, $a2, $78        ;; 04:55d3 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:55db ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:55e3 ????????
    db   $3c, $6b, $1e, $79, $ff, $ff                  ;; 04:55eb ??????

data_04_55f1:
    db   $01, $14, $69, $29, $6e, $01, $14, $69        ;; 04:55f1 ????????
    db   $48, $6e, $01, $14, $69, $67, $6e, $01        ;; 04:55f9 ????????
    db   $14, $69, $86, $6e, $01, $14, $69, $48        ;; 04:5601 ????????
    db   $6e, $01, $14, $69, $67, $6e, $01, $14        ;; 04:5609 ????????
    db   $69, $86, $6e, $01, $3c, $6b, $a2, $78        ;; 04:5611 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:5619 ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:5621 ????????
    db   $3c, $6b, $1e, $79, $ff, $ff                  ;; 04:5629 ??????

data_04_562f:
    db   $01, $1d, $69, $9e, $77, $01, $1d, $69        ;; 04:562f ????????
    db   $5c, $77, $01, $1d, $69, $72, $77, $01        ;; 04:5637 ????????
    db   $1d, $69, $88, $77, $01, $1d, $69, $5c        ;; 04:563f ????????
    db   $77, $01, $1d, $69, $72, $77, $01, $1d        ;; 04:5647 ????????
    db   $69, $88, $77, $01, $3c, $6b, $a2, $78        ;; 04:564f ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:5657 ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:565f ????????
    db   $3c, $6b, $1e, $79, $ff, $ff                  ;; 04:5667 ??????

data_04_566d:
    db   $01, $3c, $6b, $b4, $77, $01, $3f, $6b        ;; 04:566d ????????
    db   $c7, $77, $01, $3c, $6b, $da, $77, $01        ;; 04:5675 ????????
    db   $3f, $6b, $ed, $77, $01, $3f, $6b, $c7        ;; 04:567d ????????
    db   $77, $01, $3c, $6b, $da, $77, $01, $3f        ;; 04:5685 ????????
    db   $6b, $ed, $77, $01, $3f, $6b, $a2, $78        ;; 04:568d ????????
    db   $01, $3c, $6b, $c1, $78, $01, $3f, $6b        ;; 04:5695 ????????
    db   $e0, $78, $01, $3c, $6b, $ff, $78, $01        ;; 04:569d ????????
    db   $3f, $6b, $1e, $79, $ff, $ff                  ;; 04:56a5 ??????

data_04_56ab:
    db   $01, $52, $6a, $89, $78, $ff, $ff             ;; 04:56ab ???????

data_04_56b2:
    db   $01, $52, $6a, $00, $78, $ff, $ff             ;; 04:56b2 ???????

data_04_56b9:
    db   $01, $3c, $6b, $19, $78, $01, $3f, $6b        ;; 04:56b9 ????????
    db   $35, $78, $01, $3c, $6b, $51, $78, $01        ;; 04:56c1 ????????
    db   $3f, $6b, $6d, $78, $01, $3f, $6b, $35        ;; 04:56c9 ????????
    db   $78, $01, $3c, $6b, $51, $78, $01, $3f        ;; 04:56d1 ????????
    db   $6b, $6d, $78, $01, $3f, $6b, $a2, $78        ;; 04:56d9 ????????
    db   $01, $3c, $6b, $c1, $78, $01, $3f, $6b        ;; 04:56e1 ????????
    db   $e0, $78, $01, $3c, $6b, $ff, $78, $01        ;; 04:56e9 ????????
    db   $3f, $6b, $1e, $79, $ff, $ff, $10, $05        ;; 04:56f1 ????????
    db   $69, $42, $6b, $01, $14, $69, $9a, $6b        ;; 04:56f9 ????????
    db   $08, $14, $69, $58, $6b, $08, $11, $69        ;; 04:5701 ????????
    db   $42, $6b, $ff, $01, $1a, $69, $c6, $6b        ;; 04:5709 ????????
    db   $01, $1a, $69, $c6, $6b, $08, $1a, $69        ;; 04:5711 ????????
    db   $84, $6b, $08, $08, $69, $42, $6b, $01        ;; 04:5719 ????????
    db   $14, $69, $9a, $6b, $01, $14, $69, $9a        ;; 04:5721 ????????
    db   $6b, $08, $14, $69, $58, $6b, $08, $0b        ;; 04:5729 ????????
    db   $69, $42, $6b, $ff, $01, $1a, $69, $c6        ;; 04:5731 ????????
    db   $6b, $01, $1a, $69, $c6, $6b, $08, $1a        ;; 04:5739 ????????
    db   $69, $84, $6b, $08, $0b, $69, $42, $6b        ;; 04:5741 ????????
    db   $01, $14, $69, $9a, $6b, $01, $14, $69        ;; 04:5749 ????????
    db   $9a, $6b, $08, $14, $69, $58, $6b, $08        ;; 04:5751 ????????
    db   $08, $69, $42, $6b, $ff, $01, $17, $69        ;; 04:5759 ????????
    db   $b0, $6b, $01, $17, $69, $b0, $6b, $08        ;; 04:5761 ????????
    db   $17, $69, $6e, $6b, $08, $0e, $69, $42        ;; 04:5769 ????????
    db   $6b, $01, $14, $69, $9a, $6b, $01, $14        ;; 04:5771 ????????
    db   $69, $9a, $6b, $08, $14, $69, $58, $6b        ;; 04:5779 ????????
    db   $08, $11, $69, $42, $6b, $ff, $01, $17        ;; 04:5781 ????????
    db   $69, $b0, $6b, $01, $17, $69, $b0, $6b        ;; 04:5789 ????????
    db   $08, $17, $69, $6e, $6b, $08, $11, $69        ;; 04:5791 ????????
    db   $42, $6b, $01, $14, $69, $9a, $6b, $01        ;; 04:5799 ????????
    db   $14, $69, $9a, $6b, $08, $14, $69, $58        ;; 04:57a1 ????????
    db   $6b, $08, $0e, $69, $42, $6b, $ff, $02        ;; 04:57a9 ????????
    db   $20, $69, $dc, $6b, $01, $20, $69, $ef        ;; 04:57b1 ????????
    db   $6b, $01, $20, $69, $02, $6c, $01, $20        ;; 04:57b9 ????????
    db   $69, $15, $6c, $01, $20, $69, $28, $6c        ;; 04:57c1 ????????
    db   $02, $20, $69, $3b, $6c, $06, $2c, $69        ;; 04:57c9 ????????
    db   $dc, $6b, $05, $2c, $69, $ef, $6b, $05        ;; 04:57d1 ????????
    db   $2c, $69, $02, $6c, $05, $26, $69, $15        ;; 04:57d9 ????????
    db   $6c, $05, $26, $69, $28, $6c, $06, $26        ;; 04:57e1 ????????
    db   $69, $3b, $6c, $ff, $02, $20, $69, $dc        ;; 04:57e9 ????????
    db   $6b, $01, $20, $69, $ef, $6b, $01, $20        ;; 04:57f1 ????????
    db   $69, $02, $6c, $01, $20, $69, $15, $6c        ;; 04:57f9 ????????
    db   $01, $20, $69, $28, $6c, $02, $20, $69        ;; 04:5801 ????????
    db   $3b, $6c, $03, $2c, $69, $dc, $6b, $03        ;; 04:5809 ????????
    db   $2c, $69, $ef, $6b, $02, $2c, $69, $02        ;; 04:5811 ????????
    db   $6c, $02, $26, $69, $15, $6c, $03, $26        ;; 04:5819 ????????
    db   $69, $28, $6c, $03, $26, $69, $3b, $6c        ;; 04:5821 ????????
    db   $ff, $02, $23, $69, $dc, $6b, $01, $23        ;; 04:5829 ????????
    db   $69, $ef, $6b, $01, $23, $69, $02, $6c        ;; 04:5831 ????????
    db   $01, $23, $69, $15, $6c, $01, $23, $69        ;; 04:5839 ????????
    db   $28, $6c, $02, $23, $69, $3b, $6c, $06        ;; 04:5841 ????????
    db   $2c, $69, $dc, $6b, $05, $2c, $69, $ef        ;; 04:5849 ????????
    db   $6b, $05, $2c, $69, $02, $6c, $05, $26        ;; 04:5851 ????????
    db   $69, $15, $6c, $05, $26, $69, $28, $6c        ;; 04:5859 ????????
    db   $06, $26, $69, $3b, $6c, $ff, $02, $23        ;; 04:5861 ????????
    db   $69, $dc, $6b, $01, $23, $69, $ef, $6b        ;; 04:5869 ????????
    db   $01, $23, $69, $02, $6c, $01, $23, $69        ;; 04:5871 ????????
    db   $15, $6c, $01, $23, $69, $28, $6c, $02        ;; 04:5879 ????????
    db   $23, $69, $3b, $6c, $03, $2c, $69, $dc        ;; 04:5881 ????????
    db   $6b, $03, $2c, $69, $ef, $6b, $02, $2c        ;; 04:5889 ????????
    db   $69, $02, $6c, $02, $26, $69, $15, $6c        ;; 04:5891 ????????
    db   $03, $26, $69, $28, $6c, $03, $26, $69        ;; 04:5899 ????????
    db   $3b, $6c, $ff, $02, $26, $69, $4e, $6c        ;; 04:58a1 ????????
    db   $02, $29, $69, $58, $6c, $02, $26, $69        ;; 04:58a9 ????????
    db   $4e, $6c, $02, $29, $69, $58, $6c, $ff        ;; 04:58b1 ????????
    db   $02, $2c, $69, $4e, $6c, $02, $2f, $69        ;; 04:58b9 ????????
    db   $58, $6c, $02, $2c, $69, $4e, $6c, $02        ;; 04:58c1 ????????
    db   $2f, $69, $58, $6c, $ff, $01, $32, $69        ;; 04:58c9 ????????
    db   $4e, $6c, $01, $35, $69, $4e, $6c, $01        ;; 04:58d1 ????????
    db   $38, $69, $58, $6c, $01, $3b, $69, $58        ;; 04:58d9 ????????
    db   $6c, $02, $3e, $69, $4e, $6c, $01, $41        ;; 04:58e1 ????????
    db   $69, $58, $6c, $01, $44, $69, $58, $6c        ;; 04:58e9 ????????
    db   $01, $47, $69, $4e, $6c, $01, $1d, $69        ;; 04:58f1 ????????
    db   $8a, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:58f9 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5901 ????????
    db   $6c, $01, $1d, $69, $62, $6c, $01, $1d        ;; 04:5909 ????????
    db   $69, $6c, $6c, $01, $1d, $69, $76, $6c        ;; 04:5911 ????????
    db   $01, $1d, $69, $80, $6c, $01, $1d, $69        ;; 04:5919 ????????
    db   $62, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5921 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5929 ????????
    db   $6c, $01, $4a, $69, $4e, $6c, $01, $4d        ;; 04:5931 ????????
    db   $69, $4e, $6c, $01, $50, $69, $58, $6c        ;; 04:5939 ????????
    db   $01, $53, $69, $58, $6c, $02, $56, $69        ;; 04:5941 ????????
    db   $4e, $6c, $01, $59, $69, $58, $6c, $01        ;; 04:5949 ????????
    db   $5c, $69, $58, $6c, $01, $5f, $69, $4e        ;; 04:5951 ????????
    db   $6c, $ff, $01, $5f, $69, $4e, $6c, $01        ;; 04:5959 ????????
    db   $62, $69, $4e, $6c, $01, $65, $69, $58        ;; 04:5961 ????????
    db   $6c, $01, $68, $69, $58, $6c, $02, $6b        ;; 04:5969 ????????
    db   $69, $4e, $6c, $01, $6e, $69, $58, $6c        ;; 04:5971 ????????
    db   $01, $71, $69, $58, $6c, $01, $47, $69        ;; 04:5979 ????????
    db   $4e, $6c, $03, $1d, $69, $4e, $6c, $01        ;; 04:5981 ????????
    db   $1d, $69, $8a, $6c, $01, $4a, $69, $4e        ;; 04:5989 ????????
    db   $6c, $01, $74, $69, $4e, $6c, $01, $77        ;; 04:5991 ????????
    db   $69, $58, $6c, $01, $7a, $69, $58, $6c        ;; 04:5999 ????????
    db   $02, $7d, $69, $4e, $6c, $01, $80, $69        ;; 04:59a1 ????????
    db   $58, $6c, $01, $83, $69, $58, $6c, $01        ;; 04:59a9 ????????
    db   $32, $69, $4e, $6c, $ff, $01, $32, $69        ;; 04:59b1 ????????
    db   $4e, $6c, $01, $86, $69, $4e, $6c, $01        ;; 04:59b9 ????????
    db   $80, $69, $58, $6c, $01, $7a, $69, $58        ;; 04:59c1 ????????
    db   $6c, $02, $7d, $69, $4e, $6c, $01, $77        ;; 04:59c9 ????????
    db   $69, $58, $6c, $01, $89, $69, $58, $6c        ;; 04:59d1 ????????
    db   $01, $4a, $69, $4e, $6c, $01, $1d, $69        ;; 04:59d9 ????????
    db   $8a, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:59e1 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:59e9 ????????
    db   $6c, $01, $1d, $69, $62, $6c, $01, $1d        ;; 04:59f1 ????????
    db   $69, $6c, $6c, $01, $1d, $69, $76, $6c        ;; 04:59f9 ????????
    db   $01, $1d, $69, $80, $6c, $01, $1d, $69        ;; 04:5a01 ????????
    db   $62, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5a09 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5a11 ????????
    db   $6c, $01, $47, $69, $4e, $6c, $01, $8c        ;; 04:5a19 ????????
    db   $69, $4e, $6c, $01, $6e, $69, $58, $6c        ;; 04:5a21 ????????
    db   $01, $68, $69, $58, $6c, $02, $6b, $69        ;; 04:5a29 ????????
    db   $4e, $6c, $01, $65, $69, $58, $6c, $01        ;; 04:5a31 ????????
    db   $8f, $69, $58, $6c, $01, $5f, $69, $4e        ;; 04:5a39 ????????
    db   $6c, $ff, $01, $5f, $69, $4e, $6c, $01        ;; 04:5a41 ????????
    db   $92, $69, $4e, $6c, $01, $59, $69, $58        ;; 04:5a49 ????????
    db   $6c, $01, $53, $69, $58, $6c, $02, $56        ;; 04:5a51 ????????
    db   $69, $4e, $6c, $01, $50, $69, $58, $6c        ;; 04:5a59 ????????
    db   $01, $95, $69, $58, $6c, $01, $4a, $69        ;; 04:5a61 ????????
    db   $4e, $6c, $03, $1d, $69, $4e, $6c, $01        ;; 04:5a69 ????????
    db   $1d, $69, $8a, $6c, $01, $47, $69, $4e        ;; 04:5a71 ????????
    db   $6c, $01, $98, $69, $4e, $6c, $01, $41        ;; 04:5a79 ????????
    db   $69, $58, $6c, $01, $3b, $69, $58, $6c        ;; 04:5a81 ????????
    db   $02, $3e, $69, $4e, $6c, $01, $38, $69        ;; 04:5a89 ????????
    db   $58, $6c, $01, $9b, $69, $58, $6c, $01        ;; 04:5a91 ????????
    db   $32, $69, $4e, $6c, $ff, $01, $47, $69        ;; 04:5a99 ????????
    db   $4e, $6c, $01, $98, $69, $4e, $6c, $01        ;; 04:5aa1 ????????
    db   $41, $69, $58, $6c, $01, $3b, $69, $58        ;; 04:5aa9 ????????
    db   $6c, $02, $3e, $69, $4e, $6c, $01, $38        ;; 04:5ab1 ????????
    db   $69, $58, $6c, $01, $9b, $69, $58, $6c        ;; 04:5ab9 ????????
    db   $01, $32, $69, $4e, $6c, $01, $1d, $69        ;; 04:5ac1 ????????
    db   $8a, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5ac9 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5ad1 ????????
    db   $6c, $01, $1d, $69, $62, $6c, $01, $1d        ;; 04:5ad9 ????????
    db   $69, $6c, $6c, $01, $1d, $69, $76, $6c        ;; 04:5ae1 ????????
    db   $01, $1d, $69, $80, $6c, $01, $1d, $69        ;; 04:5ae9 ????????
    db   $62, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5af1 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5af9 ????????
    db   $6c, $01, $5f, $69, $4e, $6c, $01, $62        ;; 04:5b01 ????????
    db   $69, $4e, $6c, $01, $65, $69, $58, $6c        ;; 04:5b09 ????????
    db   $01, $68, $69, $58, $6c, $02, $6b, $69        ;; 04:5b11 ????????
    db   $4e, $6c, $01, $6e, $69, $58, $6c, $01        ;; 04:5b19 ????????
    db   $71, $69, $58, $6c, $01, $47, $69, $4e        ;; 04:5b21 ????????
    db   $6c, $ff, $01, $47, $69, $4e, $6c, $01        ;; 04:5b29 ????????
    db   $8c, $69, $4e, $6c, $01, $6e, $69, $58        ;; 04:5b31 ????????
    db   $6c, $01, $68, $69, $58, $6c, $02, $6b        ;; 04:5b39 ????????
    db   $69, $4e, $6c, $01, $65, $69, $58, $6c        ;; 04:5b41 ????????
    db   $01, $8f, $69, $58, $6c, $01, $5f, $69        ;; 04:5b49 ????????
    db   $4e, $6c, $03, $1d, $69, $4e, $6c, $01        ;; 04:5b51 ????????
    db   $1d, $69, $8a, $6c, $01, $32, $69, $4e        ;; 04:5b59 ????????
    db   $6c, $01, $35, $69, $4e, $6c, $01, $38        ;; 04:5b61 ????????
    db   $69, $58, $6c, $01, $3b, $69, $58, $6c        ;; 04:5b69 ????????
    db   $02, $3e, $69, $4e, $6c, $01, $41, $69        ;; 04:5b71 ????????
    db   $58, $6c, $01, $44, $69, $58, $6c, $01        ;; 04:5b79 ????????
    db   $47, $69, $4e, $6c, $ff, $01, $4a, $69        ;; 04:5b81 ????????
    db   $4e, $6c, $01, $74, $69, $4e, $6c, $01        ;; 04:5b89 ????????
    db   $77, $69, $58, $6c, $01, $7a, $69, $58        ;; 04:5b91 ????????
    db   $6c, $02, $7d, $69, $4e, $6c, $01, $80        ;; 04:5b99 ????????
    db   $69, $58, $6c, $01, $83, $69, $58, $6c        ;; 04:5ba1 ????????
    db   $01, $32, $69, $4e, $6c, $01, $1d, $69        ;; 04:5ba9 ????????
    db   $8a, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5bb1 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5bb9 ????????
    db   $6c, $01, $1d, $69, $62, $6c, $01, $1d        ;; 04:5bc1 ????????
    db   $69, $6c, $6c, $01, $1d, $69, $76, $6c        ;; 04:5bc9 ????????
    db   $01, $1d, $69, $80, $6c, $01, $1d, $69        ;; 04:5bd1 ????????
    db   $62, $6c, $01, $1d, $69, $6c, $6c, $01        ;; 04:5bd9 ????????
    db   $1d, $69, $76, $6c, $01, $1d, $69, $80        ;; 04:5be1 ????????
    db   $6c, $01, $5f, $69, $4e, $6c, $01, $92        ;; 04:5be9 ????????
    db   $69, $4e, $6c, $01, $59, $69, $58, $6c        ;; 04:5bf1 ????????
    db   $01, $53, $69, $58, $6c, $02, $56, $69        ;; 04:5bf9 ????????
    db   $4e, $6c, $01, $50, $69, $58, $6c, $01        ;; 04:5c01 ????????
    db   $95, $69, $58, $6c, $01, $4a, $69, $4e        ;; 04:5c09 ????????
    db   $6c, $ff, $01, $4a, $69, $4e, $6c, $01        ;; 04:5c11 ????????
    db   $4d, $69, $4e, $6c, $01, $50, $69, $58        ;; 04:5c19 ????????
    db   $6c, $01, $53, $69, $58, $6c, $02, $56        ;; 04:5c21 ????????
    db   $69, $4e, $6c, $01, $59, $69, $58, $6c        ;; 04:5c29 ????????
    db   $01, $5c, $69, $58, $6c, $01, $5f, $69        ;; 04:5c31 ????????
    db   $4e, $6c, $03, $1d, $69, $4e, $6c, $01        ;; 04:5c39 ????????
    db   $1d, $69, $8a, $6c, $01, $32, $69, $4e        ;; 04:5c41 ????????
    db   $6c, $01, $86, $69, $4e, $6c, $01, $80        ;; 04:5c49 ????????
    db   $69, $58, $6c, $01, $7a, $69, $58, $6c        ;; 04:5c51 ????????
    db   $02, $7d, $69, $4e, $6c, $01, $77, $69        ;; 04:5c59 ????????
    db   $58, $6c, $01, $89, $69, $58, $6c, $01        ;; 04:5c61 ????????
    db   $4a, $69, $4e, $6c, $ff, $01, $29, $69        ;; 04:5c69 ????????
    db   $94, $6c, $01, $29, $69, $d6, $6c, $01        ;; 04:5c71 ????????
    db   $29, $69, $ec, $6c, $01, $26, $69, $02        ;; 04:5c79 ????????
    db   $6d, $01, $26, $69, $18, $6d, $01, $26        ;; 04:5c81 ????????
    db   $69, $2e, $6d, $01, $2f, $69, $aa, $6c        ;; 04:5c89 ????????
    db   $01, $2f, $69, $d6, $6c, $01, $2f, $69        ;; 04:5c91 ????????
    db   $ec, $6c, $01, $2c, $69, $02, $6d, $01        ;; 04:5c99 ????????
    db   $2c, $69, $18, $6d, $01, $2c, $69, $2e        ;; 04:5ca1 ????????
    db   $6d, $ff, $01, $2f, $69, $94, $6c, $01        ;; 04:5ca9 ????????
    db   $2f, $69, $d6, $6c, $01, $2f, $69, $ec        ;; 04:5cb1 ????????
    db   $6c, $01, $2c, $69, $02, $6d, $01, $2c        ;; 04:5cb9 ????????
    db   $69, $18, $6d, $01, $2c, $69, $2e, $6d        ;; 04:5cc1 ????????
    db   $01, $29, $69, $aa, $6c, $01, $29, $69        ;; 04:5cc9 ????????
    db   $d6, $6c, $01, $29, $69, $ec, $6c, $01        ;; 04:5cd1 ????????
    db   $26, $69, $02, $6d, $01, $26, $69, $18        ;; 04:5cd9 ????????
    db   $6d, $01, $26, $69, $2e, $6d, $ff             ;; 04:5ce1 ???????

data_04_5ce8:
    db   $01, $a7, $69, $ac, $6d, $04, $14, $69        ;; 04:5ce8 ........
    db   $ac, $6d, $01, $aa, $69, $9c, $6d, $04        ;; 04:5cf0 ........
    db   $17, $69, $9c, $6d, $01, $ad, $69, $ac        ;; 04:5cf8 ........
    db   $6d, $04, $14, $69, $ac, $6d, $01, $b0        ;; 04:5d00 ........
    db   $69, $9c, $6d, $04, $17, $69, $9c, $6d        ;; 04:5d08 ........
    db   $01, $b3, $69, $ac, $6d, $04, $14, $69        ;; 04:5d10 ........
    db   $ac, $6d, $01, $b6, $69, $9c, $6d, $04        ;; 04:5d18 ........
    db   $17, $69, $9c, $6d, $01, $b9, $69, $ac        ;; 04:5d20 ........
    db   $6d, $04, $14, $69, $ac, $6d, $01, $bc        ;; 04:5d28 ........
    db   $69, $9c, $6d, $04, $17, $69, $9c, $6d        ;; 04:5d30 ........
    db   $01, $bf, $69, $ac, $6d, $ff                  ;; 04:5d38 ......

data_04_5d3e:
    db   $01, $c2, $69, $9c, $6d, $04, $17, $69        ;; 04:5d3e ........
    db   $9c, $6d, $01, $c5, $69, $ac, $6d, $04        ;; 04:5d46 ........
    db   $14, $69, $ac, $6d, $01, $c8, $69, $9c        ;; 04:5d4e ........
    db   $6d, $04, $17, $69, $9c, $6d, $01, $cb        ;; 04:5d56 ........
    db   $69, $ac, $6d, $04, $14, $69, $ac, $6d        ;; 04:5d5e ........
    db   $01, $ce, $69, $9c, $6d, $04, $17, $69        ;; 04:5d66 ........
    db   $9c, $6d, $01, $d1, $69, $ac, $6d, $04        ;; 04:5d6e ........
    db   $14, $69, $ac, $6d, $01, $d4, $69, $9c        ;; 04:5d76 ........
    db   $6d, $04, $17, $69, $9c, $6d, $01, $d7        ;; 04:5d7e ........
    db   $69, $ac, $6d, $04, $14, $69, $ac, $6d        ;; 04:5d86 ........
    db   $01, $da, $69, $9c, $6d, $ff, $0c, $e3        ;; 04:5d8e ......??
    db   $69, $bc, $6d, $0c, $e0, $69, $bc, $6d        ;; 04:5d96 ????????
    db   $ff, $0c, $e6, $69, $bc, $6d, $0c, $e0        ;; 04:5d9e ????????
    db   $69, $bc, $6d, $ff, $0c, $dd, $69, $bc        ;; 04:5da6 ????????
    db   $6d, $0c, $e0, $69, $bc, $6d, $ff, $02        ;; 04:5dae ????????
    db   $14, $69, $ac, $6d, $ff, $02, $17, $69        ;; 04:5db6 ????????
    db   $9c, $6d, $ff                                 ;; 04:5dbe ???

;@data format=bpp
data_04_5dc1:
    data_bpp $04, data_04_69dd, data_04_6dbc           ;; 04:5dc1 .....
    db   $ff, $01, $a7, $69, $cc, $6d, $01, $14        ;; 04:5dc6 .???????
    db   $69, $cc, $6d, $01, $aa, $69, $cc, $6d        ;; 04:5dce ????????
    db   $01, $17, $69, $cc, $6d, $01, $17, $69        ;; 04:5dd6 ????????
    db   $eb, $6d, $01, $ad, $69, $cc, $6d, $01        ;; 04:5dde ????????
    db   $14, $69, $cc, $6d, $01, $b0, $69, $cc        ;; 04:5de6 ????????
    db   $6d, $01, $17, $69, $cc, $6d, $01, $b3        ;; 04:5dee ????????
    db   $69, $cc, $6d, $01, $14, $69, $cc, $6d        ;; 04:5df6 ????????
    db   $01, $b6, $69, $cc, $6d, $01, $17, $69        ;; 04:5dfe ????????
    db   $cc, $6d, $01, $b9, $69, $cc, $6d, $01        ;; 04:5e06 ????????
    db   $14, $69, $cc, $6d, $01, $bc, $69, $cc        ;; 04:5e0e ????????
    db   $6d, $01, $17, $69, $cc, $6d, $01, $bf        ;; 04:5e16 ????????
    db   $69, $cc, $6d, $ff, $01, $c2, $69, $cc        ;; 04:5e1e ????????
    db   $6d, $01, $17, $69, $cc, $6d, $01, $c5        ;; 04:5e26 ????????
    db   $69, $cc, $6d, $01, $14, $69, $cc, $6d        ;; 04:5e2e ????????
    db   $01, $c8, $69, $cc, $6d, $01, $17, $69        ;; 04:5e36 ????????
    db   $cc, $6d, $01, $cb, $69, $cc, $6d, $01        ;; 04:5e3e ????????
    db   $14, $69, $cc, $6d, $01, $17, $69, $eb        ;; 04:5e46 ????????
    db   $6d, $01, $ce, $69, $cc, $6d, $01, $17        ;; 04:5e4e ????????
    db   $69, $cc, $6d, $01, $d1, $69, $cc, $6d        ;; 04:5e56 ????????
    db   $01, $14, $69, $cc, $6d, $01, $d4, $69        ;; 04:5e5e ????????
    db   $cc, $6d, $01, $17, $69, $cc, $6d, $01        ;; 04:5e66 ????????
    db   $d7, $69, $cc, $6d, $01, $14, $69, $cc        ;; 04:5e6e ????????
    db   $6d, $01, $da, $69, $cc, $6d, $ff, $0c        ;; 04:5e76 ????????
    db   $e3, $69, $0a, $6e, $0c, $e0, $69, $0a        ;; 04:5e7e ????????
    db   $6e, $ff, $0c, $e6, $69, $0a, $6e, $0c        ;; 04:5e86 ????????
    db   $e0, $69, $0a, $6e, $ff, $0c, $dd, $69        ;; 04:5e8e ????????
    db   $0a, $6e, $0c, $e0, $69, $0a, $6e, $ff        ;; 04:5e96 ????????
    db   $02, $14, $69, $cc, $6d, $ff, $01, $14        ;; 04:5e9e ????????
    db   $69, $cc, $6d, $01, $17, $69, $eb, $6d        ;; 04:5ea6 ????????
    db   $ff, $01, $3e, $69, $de, $6e, $01, $3e        ;; 04:5eae ????????
    db   $69, $cb, $6e, $01, $3e, $69, $b8, $6e        ;; 04:5eb6 ????????
    db   $02, $3e, $69, $a5, $6e, $01, $3e, $69        ;; 04:5ebe ????????
    db   $b8, $6e, $01, $3e, $69, $cb, $6e, $02        ;; 04:5ec6 ????????
    db   $3e, $69, $de, $6e, $01, $3e, $69, $cb        ;; 04:5ece ????????
    db   $6e, $01, $7d, $69, $b8, $6e, $02, $7d        ;; 04:5ed6 ????????
    db   $69, $a5, $6e, $01, $7d, $69, $b8, $6e        ;; 04:5ede ????????
    db   $01, $7d, $69, $cb, $6e, $01, $7d, $69        ;; 04:5ee6 ????????
    db   $de, $6e, $ff, $01, $6b, $69, $de, $6e        ;; 04:5eee ????????
    db   $01, $6b, $69, $cb, $6e, $01, $6b, $69        ;; 04:5ef6 ????????
    db   $b8, $6e, $02, $6b, $69, $a5, $6e, $01        ;; 04:5efe ????????
    db   $6b, $69, $b8, $6e, $01, $6b, $69, $cb        ;; 04:5f06 ????????
    db   $6e, $02, $6b, $69, $de, $6e, $01, $6b        ;; 04:5f0e ????????
    db   $69, $cb, $6e, $01, $56, $69, $b8, $6e        ;; 04:5f16 ????????
    db   $02, $56, $69, $a5, $6e, $01, $56, $69        ;; 04:5f1e ????????
    db   $b8, $6e, $01, $56, $69, $cb, $6e, $01        ;; 04:5f26 ????????
    db   $56, $69, $de, $6e, $ff, $01, $1d, $69        ;; 04:5f2e ????????
    db   $de, $6e, $01, $1d, $69, $cb, $6e, $01        ;; 04:5f36 ????????
    db   $1d, $69, $b8, $6e, $01, $1d, $69, $a5        ;; 04:5f3e ????????
    db   $6e, $01, $1d, $69, $b8, $6e, $01, $1d        ;; 04:5f46 ????????
    db   $69, $cb, $6e, $01, $1d, $69, $de, $6e        ;; 04:5f4e ????????
    db   $01, $1d, $69, $cb, $6e, $01, $1d, $69        ;; 04:5f56 ????????
    db   $b8, $6e, $01, $1d, $69, $a5, $6e, $01        ;; 04:5f5e ????????
    db   $1d, $69, $b8, $6e, $01, $1d, $69, $cb        ;; 04:5f66 ????????
    db   $6e, $ff, $01, $e9, $69, $de, $6e, $01        ;; 04:5f6e ????????
    db   $ec, $69, $cb, $6e, $01, $ef, $69, $b8        ;; 04:5f76 ????????
    db   $6e, $01, $f2, $69, $a5, $6e, $01, $f5        ;; 04:5f7e ????????
    db   $69, $a5, $6e, $01, $f5, $69, $b8, $6e        ;; 04:5f86 ????????
    db   $01, $f5, $69, $cb, $6e, $01, $f5, $69        ;; 04:5f8e ????????
    db   $de, $6e, $01, $f5, $69, $cb, $6e, $01        ;; 04:5f96 ????????
    db   $f5, $69, $b8, $6e, $01, $f5, $69, $a5        ;; 04:5f9e ????????
    db   $6e, $01, $f5, $69, $b8, $6e, $01, $14        ;; 04:5fa6 ????????
    db   $69, $f1, $6e, $03, $14, $69, $04, $6f        ;; 04:5fae ????????
    db   $01, $14, $69, $f1, $6e, $01, $e9, $69        ;; 04:5fb6 ????????
    db   $cb, $6e, $01, $e9, $69, $b8, $6e, $01        ;; 04:5fbe ????????
    db   $e9, $69, $a5, $6e, $01, $e9, $69, $b8        ;; 04:5fc6 ????????
    db   $6e, $01, $e9, $69, $cb, $6e, $01, $e9        ;; 04:5fce ????????
    db   $69, $de, $6e, $ff, $02, $23, $69, $17        ;; 04:5fd6 ????????
    db   $6f, $02, $a4, $69, $27, $6f, $02, $23        ;; 04:5fde ????????
    db   $69, $17, $6f, $02, $a4, $69, $27, $6f        ;; 04:5fe6 ????????
    db   $02, $14, $69, $27, $6f, $02, $02, $69        ;; 04:5fee ????????
    db   $17, $6f, $01, $14, $69, $27, $6f, $01        ;; 04:5ff6 ????????
    db   $14, $69, $37, $6f, $02, $02, $69, $17        ;; 04:5ffe ????????
    db   $6f, $02, $14, $69, $27, $6f, $02, $20        ;; 04:6006 ????????
    db   $69, $17, $6f, $02, $a1, $69, $27, $6f        ;; 04:600e ????????
    db   $02, $20, $69, $17, $6f, $02, $a1, $69        ;; 04:6016 ????????
    db   $27, $6f, $ff, $02, $26, $69, $17, $6f        ;; 04:601e ????????
    db   $02, $29, $69, $27, $6f, $02, $26, $69        ;; 04:6026 ????????
    db   $17, $6f, $02, $29, $69, $27, $6f, $ff        ;; 04:602e ????????
    db   $02, $2c, $69, $17, $6f, $02, $2f, $69        ;; 04:6036 ????????
    db   $27, $6f, $02, $2c, $69, $17, $6f, $02        ;; 04:603e ????????
    db   $2f, $69, $27, $6f, $ff, $01, $4a, $69        ;; 04:6046 ????????
    db   $17, $6f, $01, $4d, $69, $17, $6f, $01        ;; 04:604e ????????
    db   $50, $69, $27, $6f, $01, $53, $69, $27        ;; 04:6056 ????????
    db   $6f, $02, $56, $69, $17, $6f, $01, $59        ;; 04:605e ????????
    db   $69, $27, $6f, $01, $5c, $69, $27, $6f        ;; 04:6066 ????????
    db   $01, $5f, $69, $17, $6f, $02, $14, $69        ;; 04:606e ????????
    db   $27, $6f, $02, $02, $69, $17, $6f, $01        ;; 04:6076 ????????
    db   $14, $69, $27, $6f, $01, $14, $69, $37        ;; 04:607e ????????
    db   $6f, $02, $02, $69, $17, $6f, $02, $14        ;; 04:6086 ????????
    db   $69, $27, $6f, $01, $32, $69, $17, $6f        ;; 04:608e ????????
    db   $01, $35, $69, $17, $6f, $01, $38, $69        ;; 04:6096 ????????
    db   $27, $6f, $01, $3b, $69, $27, $6f, $02        ;; 04:609e ????????
    db   $3e, $69, $17, $6f, $01, $41, $69, $27        ;; 04:60a6 ????????
    db   $6f, $01, $44, $69, $27, $6f, $01, $47        ;; 04:60ae ????????
    db   $69, $17, $6f, $ff, $01, $47, $69, $17        ;; 04:60b6 ????????
    db   $6f, $01, $8c, $69, $17, $6f, $01, $6e        ;; 04:60be ????????
    db   $69, $27, $6f, $01, $68, $69, $27, $6f        ;; 04:60c6 ????????
    db   $02, $6b, $69, $17, $6f, $01, $65, $69        ;; 04:60ce ????????
    db   $27, $6f, $01, $8f, $69, $27, $6f, $01        ;; 04:60d6 ????????
    db   $5f, $69, $17, $6f, $02, $14, $69, $27        ;; 04:60de ????????
    db   $6f, $02, $02, $69, $17, $6f, $01, $14        ;; 04:60e6 ????????
    db   $69, $27, $6f, $01, $14, $69, $37, $6f        ;; 04:60ee ????????
    db   $02, $02, $69, $17, $6f, $02, $14, $69        ;; 04:60f6 ????????
    db   $27, $6f, $01, $32, $69, $17, $6f, $01        ;; 04:60fe ????????
    db   $86, $69, $17, $6f, $01, $80, $69, $27        ;; 04:6106 ????????
    db   $6f, $01, $7a, $69, $27, $6f, $02, $7d        ;; 04:610e ????????
    db   $69, $17, $6f, $01, $77, $69, $27, $6f        ;; 04:6116 ????????
    db   $01, $89, $69, $27, $6f, $01, $4a, $69        ;; 04:611e ????????
    db   $17, $6f, $ff, $08, $0b, $69, $17, $6f        ;; 04:6126 ????????
    db   $10, $11, $69, $17, $6f, $02, $0b, $69        ;; 04:612e ????????
    db   $17, $6f, $02, $fb, $69, $27, $6f, $02        ;; 04:6136 ????????
    db   $0b, $69, $17, $6f, $02, $fb, $69, $27        ;; 04:613e ????????
    db   $6f, $02, $08, $69, $17, $6f, $02, $f8        ;; 04:6146 ????????
    db   $69, $27, $6f, $02, $08, $69, $17, $6f        ;; 04:614e ????????
    db   $02, $f8, $69, $27, $6f, $10, $0e, $69        ;; 04:6156 ????????
    db   $17, $6f, $08, $08, $69, $17, $6f, $ff        ;; 04:615e ????????
    db   $08, $11, $69, $17, $6f, $10, $0b, $69        ;; 04:6166 ????????
    db   $17, $6f, $02, $11, $69, $17, $6f, $02        ;; 04:616e ????????
    db   $01, $6a, $27, $6f, $02, $11, $69, $17        ;; 04:6176 ????????
    db   $6f, $02, $01, $6a, $27, $6f, $02, $0e        ;; 04:617e ????????
    db   $69, $17, $6f, $02, $fe, $69, $27, $6f        ;; 04:6186 ????????
    db   $02, $0e, $69, $17, $6f, $02, $fe, $69        ;; 04:618e ????????
    db   $27, $6f, $10, $08, $69, $17, $6f, $08        ;; 04:6196 ????????
    db   $0e, $69, $17, $6f, $ff, $02, $20, $69        ;; 04:619e ????????
    db   $87, $6f, $02, $20, $69, $a0, $6f, $02        ;; 04:61a6 ????????
    db   $20, $69, $04, $70, $02, $20, $69, $d2        ;; 04:61ae ????????
    db   $6f, $02, $20, $69, $87, $6f, $02, $20        ;; 04:61b6 ????????
    db   $69, $a0, $6f, $ff, $02, $23, $69, $87        ;; 04:61be ????????
    db   $6f, $02, $23, $69, $a0, $6f, $02, $23        ;; 04:61c6 ????????
    db   $69, $04, $70, $02, $23, $69, $d2, $6f        ;; 04:61ce ????????
    db   $02, $23, $69, $87, $6f, $02, $23, $69        ;; 04:61d6 ????????
    db   $a0, $6f, $ff, $01, $6a, $6a, $87, $6f        ;; 04:61de ????????
    db   $01, $6a, $6a, $a0, $6f, $01, $6a, $6a        ;; 04:61e6 ????????
    db   $b9, $6f, $01, $6a, $6a, $d2, $6f, $01        ;; 04:61ee ????????
    db   $6a, $6a, $87, $6f, $01, $6a, $6a, $a0        ;; 04:61f6 ????????
    db   $6f, $01, $6a, $6a, $b9, $6f, $01, $6a        ;; 04:61fe ????????
    db   $6a, $d2, $6f, $01, $6a, $6a, $87, $6f        ;; 04:6206 ????????
    db   $01, $6a, $6a, $a0, $6f, $04, $1d, $69        ;; 04:620e ????????
    db   $eb, $6f, $01, $6d, $6a, $87, $6f, $01        ;; 04:6216 ????????
    db   $6d, $6a, $a0, $6f, $01, $6d, $6a, $b9        ;; 04:621e ????????
    db   $6f, $01, $6d, $6a, $d2, $6f, $01, $6d        ;; 04:6226 ????????
    db   $6a, $87, $6f, $01, $6d, $6a, $a0, $6f        ;; 04:622e ????????
    db   $01, $6d, $6a, $b9, $6f, $01, $6d, $6a        ;; 04:6236 ????????
    db   $d2, $6f, $01, $6d, $6a, $87, $6f, $01        ;; 04:623e ????????
    db   $6d, $6a, $a0, $6f, $ff, $02, $26, $69        ;; 04:6246 ????????
    db   $1d, $70, $02, $29, $69, $30, $70, $02        ;; 04:624e ????????
    db   $26, $69, $1d, $70, $02, $29, $69, $30        ;; 04:6256 ????????
    db   $70, $02, $2c, $69, $1d, $70, $02, $2f        ;; 04:625e ????????
    db   $69, $30, $70, $02, $2c, $69, $1d, $70        ;; 04:6266 ????????
    db   $02, $2f, $69, $30, $70, $ff, $02, $2c        ;; 04:626e ????????
    db   $69, $1d, $70, $02, $2f, $69, $30, $70        ;; 04:6276 ????????
    db   $02, $2c, $69, $1d, $70, $02, $2f, $69        ;; 04:627e ????????
    db   $30, $70, $02, $26, $69, $1d, $70, $02        ;; 04:6286 ????????
    db   $29, $69, $30, $70, $02, $26, $69, $1d        ;; 04:628e ????????
    db   $70, $02, $29, $69, $30, $70, $ff, $02        ;; 04:6296 ????????
    db   $0b, $69, $43, $70, $02, $fb, $69, $56        ;; 04:629e ????????
    db   $70, $02, $0b, $69, $43, $70, $02, $fb        ;; 04:62a6 ????????
    db   $69, $56, $70, $02, $11, $69, $43, $70        ;; 04:62ae ????????
    db   $02, $01, $6a, $56, $70, $02, $11, $69        ;; 04:62b6 ????????
    db   $43, $70, $02, $01, $6a, $56, $70, $02        ;; 04:62be ????????
    db   $11, $69, $43, $70, $02, $01, $6a, $56        ;; 04:62c6 ????????
    db   $70, $02, $11, $69, $43, $70, $02, $01        ;; 04:62ce ????????
    db   $6a, $56, $70, $02, $0b, $69, $43, $70        ;; 04:62d6 ????????
    db   $02, $fb, $69, $56, $70, $02, $0b, $69        ;; 04:62de ????????
    db   $43, $70, $02, $fb, $69, $56, $70, $02        ;; 04:62e6 ????????
    db   $08, $69, $43, $70, $02, $f8, $69, $56        ;; 04:62ee ????????
    db   $70, $02, $08, $69, $43, $70, $02, $f8        ;; 04:62f6 ????????
    db   $69, $56, $70, $02, $0e, $69, $43, $70        ;; 04:62fe ????????
    db   $02, $fe, $69, $56, $70, $02, $0e, $69        ;; 04:6306 ????????
    db   $43, $70, $02, $fe, $69, $56, $70, $02        ;; 04:630e ????????
    db   $0e, $69, $43, $70, $02, $fe, $69, $56        ;; 04:6316 ????????
    db   $70, $02, $0e, $69, $43, $70, $02, $fe        ;; 04:631e ????????
    db   $69, $56, $70, $02, $08, $69, $43, $70        ;; 04:6326 ????????
    db   $02, $f8, $69, $56, $70, $02, $08, $69        ;; 04:632e ????????
    db   $43, $70, $02, $f8, $69, $56, $70, $ff        ;; 04:6336 ????????
    db   $02, $0a, $6a, $1d, $70, $02, $0d, $6a        ;; 04:633e ????????
    db   $30, $70, $02, $0a, $6a, $1d, $70, $02        ;; 04:6346 ????????
    db   $0d, $6a, $30, $70, $02, $04, $6a, $1d        ;; 04:634e ????????
    db   $70, $02, $07, $6a, $30, $70, $02, $04        ;; 04:6356 ????????
    db   $6a, $1d, $70, $02, $07, $6a, $30, $70        ;; 04:635e ????????
    db   $ff, $02, $10, $6a, $1d, $70, $02, $13        ;; 04:6366 ????????
    db   $6a, $30, $70, $02, $10, $6a, $1d, $70        ;; 04:636e ????????
    db   $02, $13, $6a, $30, $70, $02, $16, $6a        ;; 04:6376 ????????
    db   $1d, $70, $02, $19, $6a, $30, $70, $02        ;; 04:637e ????????
    db   $16, $6a, $1d, $70, $02, $19, $6a, $30        ;; 04:6386 ????????
    db   $70, $ff, $0a, $3a, $6a, $69, $70, $02        ;; 04:638e ????????
    db   $43, $6a, $95, $70, $02, $40, $6a, $69        ;; 04:6396 ????????
    db   $70, $02, $49, $6a, $95, $70, $02, $46        ;; 04:639e ????????
    db   $6a, $69, $70, $02, $49, $6a, $95, $70        ;; 04:63a6 ????????
    db   $02, $46, $6a, $69, $70, $02, $49, $6a        ;; 04:63ae ????????
    db   $95, $70, $04, $4c, $6a, $69, $70, $04        ;; 04:63b6 ????????
    db   $4f, $6a, $95, $70, $04, $4c, $6a, $69        ;; 04:63be ????????
    db   $70, $04, $4f, $6a, $95, $70, $04, $4c        ;; 04:63c6 ????????
    db   $6a, $69, $70, $04, $4f, $6a, $95, $70        ;; 04:63ce ????????
    db   $ff, $0a, $1c, $6a, $7f, $70, $02, $25        ;; 04:63d6 ????????
    db   $6a, $ab, $70, $02, $22, $6a, $7f, $70        ;; 04:63de ????????
    db   $02, $2b, $6a, $ab, $70, $02, $28, $6a        ;; 04:63e6 ????????
    db   $7f, $70, $02, $2b, $6a, $ab, $70, $02        ;; 04:63ee ????????
    db   $28, $6a, $7f, $70, $02, $2b, $6a, $ab        ;; 04:63f6 ????????
    db   $70, $04, $2e, $6a, $7f, $70, $04, $31        ;; 04:63fe ????????
    db   $6a, $ab, $70, $04, $2e, $6a, $7f, $70        ;; 04:6406 ????????
    db   $04, $31, $6a, $ab, $70, $04, $2e, $6a        ;; 04:640e ????????
    db   $7f, $70, $04, $31, $6a, $ab, $70, $ff        ;; 04:6416 ????????
    db   $04, $52, $6a, $69, $70, $04, $55, $6a        ;; 04:641e ????????
    db   $95, $70, $04, $52, $6a, $69, $70, $04        ;; 04:6426 ????????
    db   $55, $6a, $95, $70, $ff, $04, $34, $6a        ;; 04:642e ????????
    db   $7f, $70, $04, $37, $6a, $ab, $70, $04        ;; 04:6436 ????????
    db   $34, $6a, $7f, $70, $04, $37, $6a, $ab        ;; 04:643e ????????
    db   $70, $ff, $04, $52, $6a, $69, $70, $01        ;; 04:6446 ????????
    db   $55, $6a, $c1, $70, $02, $55, $6a, $95        ;; 04:644e ????????
    db   $70, $01, $55, $6a, $c1, $70, $04, $52        ;; 04:6456 ????????
    db   $6a, $69, $70, $04, $55, $6a, $95, $70        ;; 04:645e ????????
    db   $04, $52, $6a, $69, $70, $04, $55, $6a        ;; 04:6466 ????????
    db   $95, $70, $04, $52, $6a, $69, $70, $04        ;; 04:646e ????????
    db   $55, $6a, $95, $70, $ff, $04, $34, $6a        ;; 04:6476 ????????
    db   $7f, $70, $01, $37, $6a, $d7, $70, $02        ;; 04:647e ????????
    db   $37, $6a, $ab, $70, $01, $37, $6a, $d7        ;; 04:6486 ????????
    db   $70, $04, $34, $6a, $7f, $70, $04, $37        ;; 04:648e ????????
    db   $6a, $ab, $70, $04, $34, $6a, $7f, $70        ;; 04:6496 ????????
    db   $04, $37, $6a, $ab, $70, $04, $34, $6a        ;; 04:649e ????????
    db   $7f, $70, $04, $37, $6a, $ab, $70, $ff        ;; 04:64a6 ????????
    db   $02, $58, $6a, $ed, $70, $02, $58, $6a        ;; 04:64ae ????????
    db   $06, $71, $02, $58, $6a, $ed, $70, $02        ;; 04:64b6 ????????
    db   $58, $6a, $1f, $71, $02, $58, $6a, $ed        ;; 04:64be ????????
    db   $70, $02, $58, $6a, $06, $71, $02, $5e        ;; 04:64c6 ????????
    db   $6a, $ed, $70, $02, $5e, $6a, $06, $71        ;; 04:64ce ????????
    db   $02, $5e, $6a, $ed, $70, $02, $5e, $6a        ;; 04:64d6 ????????
    db   $06, $71, $02, $a1, $69, $38, $71, $02        ;; 04:64de ????????
    db   $a1, $69, $6a, $71, $02, $a1, $69, $38        ;; 04:64e6 ????????
    db   $71, $02, $a1, $69, $51, $71, $02, $64        ;; 04:64ee ????????
    db   $6a, $38, $71, $02, $64, $6a, $51, $71        ;; 04:64f6 ????????
    db   $02, $64, $6a, $38, $71, $02, $64, $6a        ;; 04:64fe ????????
    db   $51, $71, $02, $67, $6a, $38, $71, $02        ;; 04:6506 ????????
    db   $67, $6a, $6a, $71, $02, $67, $6a, $38        ;; 04:650e ????????
    db   $71, $02, $67, $6a, $51, $71, $02, $64        ;; 04:6516 ????????
    db   $6a, $38, $71, $02, $64, $6a, $51, $71        ;; 04:651e ????????
    db   $02, $67, $6a, $38, $71, $02, $67, $6a        ;; 04:6526 ????????
    db   $51, $71, $02, $64, $6a, $38, $71, $02        ;; 04:652e ????????
    db   $64, $6a, $6a, $71, $02, $64, $6a, $38        ;; 04:6536 ????????
    db   $71, $02, $64, $6a, $51, $71, $02, $67        ;; 04:653e ????????
    db   $6a, $38, $71, $02, $67, $6a, $51, $71        ;; 04:6546 ????????
    db   $02, $67, $6a, $38, $71, $02, $67, $6a        ;; 04:654e ????????
    db   $51, $71, $02, $23, $69, $ed, $70, $02        ;; 04:6556 ????????
    db   $23, $69, $1f, $71, $02, $23, $69, $ed        ;; 04:655e ????????
    db   $70, $02, $23, $69, $06, $71, $02, $61        ;; 04:6566 ????????
    db   $6a, $ed, $70, $02, $61, $6a, $06, $71        ;; 04:656e ????????
    db   $02, $61, $6a, $ed, $70, $02, $61, $6a        ;; 04:6576 ????????
    db   $06, $71, $02, $58, $6a, $ed, $70, $02        ;; 04:657e ????????
    db   $58, $6a, $06, $71, $02, $58, $6a, $ed        ;; 04:6586 ????????
    db   $70, $02, $58, $6a, $1f, $71, $02, $58        ;; 04:658e ????????
    db   $6a, $ed, $70, $02, $58, $6a, $06, $71        ;; 04:6596 ????????
    db   $ff, $02, $5b, $6a, $38, $71, $02, $5b        ;; 04:659e ????????
    db   $6a, $51, $71, $02, $5b, $6a, $38, $71        ;; 04:65a6 ????????
    db   $02, $5b, $6a, $6a, $71, $02, $5b, $6a        ;; 04:65ae ????????
    db   $38, $71, $02, $5b, $6a, $51, $71, $02        ;; 04:65b6 ????????
    db   $64, $6a, $38, $71, $02, $64, $6a, $51        ;; 04:65be ????????
    db   $71, $02, $64, $6a, $38, $71, $02, $64        ;; 04:65c6 ????????
    db   $6a, $51, $71, $02, $20, $69, $ed, $70        ;; 04:65ce ????????
    db   $02, $20, $69, $1f, $71, $02, $20, $69        ;; 04:65d6 ????????
    db   $ed, $70, $02, $20, $69, $06, $71, $02        ;; 04:65de ????????
    db   $5e, $6a, $ed, $70, $02, $5e, $6a, $06        ;; 04:65e6 ????????
    db   $71, $02, $5e, $6a, $ed, $70, $02, $5e        ;; 04:65ee ????????
    db   $6a, $06, $71, $02, $61, $6a, $ed, $70        ;; 04:65f6 ????????
    db   $02, $61, $6a, $06, $71, $02, $61, $6a        ;; 04:65fe ????????
    db   $ed, $70, $02, $61, $6a, $1f, $71, $02        ;; 04:6606 ????????
    db   $5e, $6a, $ed, $70, $02, $5e, $6a, $06        ;; 04:660e ????????
    db   $71, $02, $61, $6a, $ed, $70, $02, $61        ;; 04:6616 ????????
    db   $6a, $06, $71, $02, $5e, $6a, $ed, $70        ;; 04:661e ????????
    db   $02, $5e, $6a, $1f, $71, $02, $5e, $6a        ;; 04:6626 ????????
    db   $ed, $70, $02, $5e, $6a, $06, $71, $02        ;; 04:662e ????????
    db   $61, $6a, $ed, $70, $02, $61, $6a, $06        ;; 04:6636 ????????
    db   $71, $02, $61, $6a, $ed, $70, $02, $61        ;; 04:663e ????????
    db   $6a, $06, $71, $02, $a4, $69, $38, $71        ;; 04:6646 ????????
    db   $02, $a4, $69, $51, $71, $02, $a4, $69        ;; 04:664e ????????
    db   $38, $71, $02, $a4, $69, $6a, $71, $02        ;; 04:6656 ????????
    db   $67, $6a, $38, $71, $02, $67, $6a, $51        ;; 04:665e ????????
    db   $71, $02, $67, $6a, $38, $71, $02, $67        ;; 04:6666 ????????
    db   $6a, $51, $71, $02, $5b, $6a, $38, $71        ;; 04:666e ????????
    db   $02, $5b, $6a, $51, $71, $02, $5b, $6a        ;; 04:6676 ????????
    db   $38, $71, $02, $5b, $6a, $6a, $71, $02        ;; 04:667e ????????
    db   $5b, $6a, $38, $71, $02, $5b, $6a, $51        ;; 04:6686 ????????
    db   $71, $ff, $01, $70, $6a, $f5, $71, $01        ;; 04:668e ????????
    db   $73, $6a, $cf, $71, $01, $76, $6a, $cf        ;; 04:6696 ????????
    db   $71, $01, $79, $6a, $cf, $71, $01, $7c        ;; 04:669e ????????
    db   $6a, $f5, $71, $01, $7f, $6a, $83, $71        ;; 04:66a6 ????????
    db   $01, $82, $6a, $96, $71, $01, $85, $6a        ;; 04:66ae ????????
    db   $83, $71, $01, $88, $6a, $96, $71, $02        ;; 04:66b6 ????????
    db   $8b, $6a, $83, $71, $01, $88, $6a, $96        ;; 04:66be ????????
    db   $71, $01, $85, $6a, $83, $71, $01, $82        ;; 04:66c6 ????????
    db   $6a, $96, $71, $01, $7f, $6a, $83, $71        ;; 04:66ce ????????
    db   $01, $8e, $6a, $96, $71, $01, $91, $6a        ;; 04:66d6 ????????
    db   $83, $71, $01, $94, $6a, $96, $71, $01        ;; 04:66de ????????
    db   $97, $6a, $83, $71, $01, $9a, $6a, $96        ;; 04:66e6 ????????
    db   $71, $ff, $01, $9d, $6a, $08, $72, $01        ;; 04:66ee ????????
    db   $a0, $6a, $e2, $71, $01, $a3, $6a, $e2        ;; 04:66f6 ????????
    db   $71, $01, $a6, $6a, $e2, $71, $01, $a9        ;; 04:66fe ????????
    db   $6a, $08, $72, $ff, $01, $ac, $6a, $a9        ;; 04:6706 ????????
    db   $71, $01, $af, $6a, $bc, $71, $01, $b2        ;; 04:670e ????????
    db   $6a, $a9, $71, $01, $b5, $6a, $bc, $71        ;; 04:6716 ????????
    db   $02, $b8, $6a, $a9, $71, $01, $b5, $6a        ;; 04:671e ????????
    db   $bc, $71, $01, $b2, $6a, $a9, $71, $01        ;; 04:6726 ????????
    db   $af, $6a, $bc, $71, $01, $ac, $6a, $a9        ;; 04:672e ????????
    db   $71, $ff, $01, $bb, $6a, $bc, $71, $01        ;; 04:6736 ????????
    db   $be, $6a, $a9, $71, $01, $c1, $6a, $bc        ;; 04:673e ????????
    db   $71, $01, $c4, $6a, $a9, $71, $01, $c7        ;; 04:6746 ????????
    db   $6a, $bc, $71, $ff, $02, $37, $6a, $87        ;; 04:674e ????????
    db   $73, $03, $02, $69, $1b, $72, $02, $1d        ;; 04:6756 ????????
    db   $69, $53, $72, $01, $1d, $69, $8b, $72        ;; 04:675e ????????
    db   $01, $1d, $69, $a7, $72, $01, $1d, $69        ;; 04:6766 ????????
    db   $c3, $72, $ff, $01, $9e, $69, $df, $72        ;; 04:676e ????????
    db   $01, $9e, $69, $fb, $72, $ff, $01, $9e        ;; 04:6776 ????????
    db   $69, $df, $72, $03, $9e, $69, $fb, $72        ;; 04:677e ????????
    db   $01, $9e, $69, $df, $72, $01, $1d, $69        ;; 04:6786 ????????
    db   $c3, $72, $ff, $01, $9e, $69, $df, $72        ;; 04:678e ????????
    db   $01, $1d, $69, $c3, $72, $ff, $01, $9e        ;; 04:6796 ????????
    db   $69, $df, $72, $03, $1d, $69, $c3, $72        ;; 04:679e ????????
    db   $01, $9e, $69, $df, $72, $01, $9e, $69        ;; 04:67a6 ????????
    db   $fb, $72, $ff, $01, $1d, $69, $17, $73        ;; 04:67ae ????????
    db   $04, $1d, $69, $33, $73, $01, $1d, $69        ;; 04:67b6 ????????
    db   $17, $73, $01, $1d, $69, $c3, $72, $ff        ;; 04:67be ????????
    db   $01, $9e, $69, $4f, $73, $04, $9e, $69        ;; 04:67c6 ????????
    db   $6b, $73, $01, $9e, $69, $4f, $73, $01        ;; 04:67ce ????????
    db   $9e, $69, $fb, $72, $ff, $01, $ca, $6a        ;; 04:67d6 ????????
    db   $d9, $74, $01, $cd, $6a, $d9, $74, $01        ;; 04:67de ????????
    db   $d0, $6a, $d9, $74, $01, $d3, $6a, $d9        ;; 04:67e6 ????????
    db   $74, $01, $d6, $6a, $d9, $74, $01, $d9        ;; 04:67ee ????????
    db   $6a, $d9, $74, $01, $dc, $6a, $d9, $74        ;; 04:67f6 ????????
    db   $01, $df, $6a, $d9, $74, $01, $e2, $6a        ;; 04:67fe ????????
    db   $d9, $74, $02, $e5, $6a, $d9, $74, $01        ;; 04:6806 ????????
    db   $e8, $6a, $d9, $74, $01, $eb, $6a, $d9        ;; 04:680e ????????
    db   $74, $01, $ee, $6a, $d9, $74, $01, $f1        ;; 04:6816 ????????
    db   $6a, $d9, $74, $01, $f4, $6a, $d9, $74        ;; 04:681e ????????
    db   $01, $f7, $6a, $d9, $74, $01, $fa, $6a        ;; 04:6826 ????????
    db   $d9, $74, $01, $fd, $6a, $d9, $74, $01        ;; 04:682e ????????
    db   $00, $6b, $d9, $74, $ff, $01, $03, $6b        ;; 04:6836 ????????
    db   $d9, $74, $01, $06, $6b, $d9, $74, $01        ;; 04:683e ????????
    db   $09, $6b, $d9, $74, $01, $0c, $6b, $d9        ;; 04:6846 ????????
    db   $74, $01, $0f, $6b, $d9, $74, $ff, $02        ;; 04:684e ????????
    db   $03, $6b, $a3, $73, $02, $06, $6b, $c2        ;; 04:6856 ????????
    db   $73, $02, $09, $6b, $e1, $73, $02, $0c        ;; 04:685e ????????
    db   $6b, $00, $74, $02, $0f, $6b, $1f, $74        ;; 04:6866 ????????
    db   $02, $03, $6b, $3e, $74, $02, $06, $6b        ;; 04:686e ????????
    db   $5d, $74, $02, $09, $6b, $7c, $74, $02        ;; 04:6876 ????????
    db   $0c, $6b, $9b, $74, $02, $0f, $6b, $ba        ;; 04:687e ????????
    db   $74, $ff, $01, $12, $6b, $d9, $74, $01        ;; 04:6886 ????????
    db   $15, $6b, $d9, $74, $01, $18, $6b, $d9        ;; 04:688e ????????
    db   $74, $01, $1b, $6b, $d9, $74, $02, $1e        ;; 04:6896 ????????
    db   $6b, $d9, $74, $01, $21, $6b, $d9, $74        ;; 04:689e ????????
    db   $01, $24, $6b, $d9, $74, $01, $27, $6b        ;; 04:68a6 ????????
    db   $d9, $74, $01, $2a, $6b, $d9, $74, $ff        ;; 04:68ae ????????
    db   $01, $2d, $6b, $d9, $74, $01, $30, $6b        ;; 04:68b6 ????????
    db   $d9, $74, $01, $33, $6b, $d9, $74, $01        ;; 04:68be ????????
    db   $36, $6b, $d9, $74, $01, $39, $6b, $d9        ;; 04:68c6 ????????
    db   $74, $ff                                      ;; 04:68ce ??

data_04_68d0:
    db   $0a, $1d, $69, $01, $76, $01, $1d, $69        ;; 04:68d0 ????????
    db   $eb, $75, $01, $1d, $69, $d5, $75, $01        ;; 04:68d8 ????????
    db   $1d, $69, $bf, $75, $01, $1d, $69, $a9        ;; 04:68e0 ????????
    db   $75, $01, $1d, $69, $93, $75, $01, $1d        ;; 04:68e8 ????????
    db   $69, $17, $76, $24, $1d, $69, $93, $75        ;; 04:68f0 ????????
    db   $ff, $20, $1d, $69, $93, $75, $ff, $0c        ;; 04:68f8 ????????
    db   $00, $ff, $06, $00, $ff, $06, $02, $ff        ;; 04:6900 ????????
    db   $06, $6e, $ff, $06, $62, $ff, $06, $ae        ;; 04:6908 ????????
    db   $ff, $06, $a2, $ff, $07, $00, $ff, $06        ;; 04:6910 ????....
    db   $00, $ff, $07, $00, $ff, $00, $00, $ff        ;; 04:6918 ..??????
    db   $00, $02, $ff, $00, $0e, $ff, $00, $40        ;; 04:6920 ????????
    db   $ff, $02, $40, $ff, $00, $c0, $ff, $02        ;; 04:6928 ????????
    db   $c0, $ff, $00, $03, $ff, $00, $13, $ff        ;; 04:6930 ????????
    db   $02, $12, $ff, $02, $22, $ff, $00, $22        ;; 04:6938 ????????
    db   $ff, $02, $21, $ff, $02, $31, $ff, $00        ;; 04:6940 ????????
    db   $30, $ff, $00, $d0, $ff, $00, $df, $ff        ;; 04:6948 ????????
    db   $02, $ef, $ff, $02, $ee, $ff, $00, $ee        ;; 04:6950 ????????
    db   $ff, $02, $fe, $ff, $02, $fd, $ff, $00        ;; 04:6958 ????????
    db   $0d, $ff, $00, $1d, $ff, $02, $1e, $ff        ;; 04:6960 ????????
    db   $02, $2e, $ff, $00, $2e, $ff, $02, $2f        ;; 04:6968 ????????
    db   $ff, $02, $3f, $ff, $00, $d1, $ff, $02        ;; 04:6970 ????????
    db   $e1, $ff, $02, $e2, $ff, $00, $e2, $ff        ;; 04:6978 ????????
    db   $02, $f2, $ff, $02, $f3, $ff, $00, $f3        ;; 04:6980 ????????
    db   $ff, $02, $d1, $ff, $00, $3f, $ff, $02        ;; 04:6988 ????????
    db   $1d, $ff, $00, $fd, $ff, $02, $df, $ff        ;; 04:6990 ????????
    db   $00, $31, $ff, $02, $13, $ff, $02, $00        ;; 04:6998 ????????
    db   $ff, $02, $02, $ff, $02, $0e, $ff, $07        ;; 04:69a0 ???????.
    db   $33, $ff, $06, $47, $ff, $07, $67, $ff        ;; 04:69a8 ........
    db   $06, $75, $ff, $07, $70, $ff, $06, $7b        ;; 04:69b0 ........
    db   $ff, $07, $68, $ff, $06, $48, $ff, $07        ;; 04:69b8 ........
    db   $3d, $ff, $06, $d3, $ff, $07, $c7, $ff        ;; 04:69c0 ........
    db   $06, $a7, $ff, $07, $95, $ff, $06, $90        ;; 04:69c8 ........
    db   $ff, $07, $9b, $ff, $06, $a9, $ff, $07        ;; 04:69d0 ........
    db   $c9, $ff, $06, $dd, $ff                       ;; 04:69d8 .....

data_04_69dd:
    db   $0a, $07, $ff, $0a, $09, $ff, $0a, $47        ;; 04:69dd ...?????
    db   $ff, $0a, $c7, $ff, $00, $70, $ff, $00        ;; 04:69e5 ????????
    db   $40, $ff, $00, $30, $ff, $00, $20, $ff        ;; 04:69ed ????????
    db   $00, $80, $ff, $07, $6e, $ff, $07, $62        ;; 04:69f5 ????????
    db   $ff, $07, $ae, $ff, $07, $a2, $ff, $00        ;; 04:69fd ????????
    db   $a4, $ff, $02, $a4, $ff, $00, $64, $ff        ;; 04:6a05 ????????
    db   $02, $64, $ff, $00, $ac, $ff, $02, $ac        ;; 04:6a0d ????????
    db   $ff, $00, $6c, $ff, $02, $6c, $ff, $12        ;; 04:6a15 ????????
    db   $c4, $ff, $19, $c4, $ff, $12, $c2, $ff        ;; 04:6a1d ????????
    db   $19, $c2, $ff, $12, $c0, $ff, $19, $c0        ;; 04:6a25 ????????
    db   $ff, $12, $0e, $ff, $19, $0e, $ff, $12        ;; 04:6a2d ????????
    db   $00, $ff, $19, $00, $ff, $00, $44, $ff        ;; 04:6a35 ????????
    db   $02, $44, $ff, $00, $42, $ff, $02, $42        ;; 04:6a3d ????????
    db   $ff, $00, $40, $ff, $02, $40, $ff, $00        ;; 04:6a45 ????????
    db   $0e, $ff, $02, $0e, $ff, $00, $00, $ff        ;; 04:6a4d ????????
    db   $02, $00, $ff, $00, $20, $ff, $02, $e0        ;; 04:6a55 ????????
    db   $ff, $00, $22, $ff, $00, $2e, $ff, $02        ;; 04:6a5d ????????
    db   $e2, $ff, $02, $ee, $ff, $00, $90, $ff        ;; 04:6a65 ????????
    db   $00, $70, $ff, $0b, $19, $ff, $0b, $49        ;; 04:6a6d ????????
    db   $ff, $0b, $5b, $ff, $0b, $7c, $ff, $0b        ;; 04:6a75 ????????
    db   $7f, $ff, $03, $71, $ff, $03, $74, $ff        ;; 04:6a7d ????????
    db   $03, $55, $ff, $03, $47, $ff, $03, $17        ;; 04:6a85 ????????
    db   $ff, $03, $7f, $ff, $03, $7c, $ff, $03        ;; 04:6a8d ????????
    db   $5b, $ff, $03, $49, $ff, $03, $19, $ff        ;; 04:6a95 ????????
    db   $18, $f9, $ff, $18, $c9, $ff, $18, $bb        ;; 04:6a9d ????????
    db   $ff, $18, $9c, $ff, $18, $9f, $ff, $0b        ;; 04:6aa5 ????????
    db   $91, $ff, $0b, $94, $ff, $0b, $b5, $ff        ;; 04:6aad ????????
    db   $0b, $c7, $ff, $0b, $f7, $ff, $0b, $9f        ;; 04:6ab5 ????????
    db   $ff, $0b, $9c, $ff, $0b, $bb, $ff, $0b        ;; 04:6abd ????????
    db   $c9, $ff, $0b, $f9, $ff, $c3, $19, $ff        ;; 04:6ac5 ????????
    db   $c3, $49, $ff, $c4, $5b, $ff, $c4, $7c        ;; 04:6acd ????????
    db   $ff, $c5, $7f, $ff, $c5, $71, $ff, $c5        ;; 04:6ad5 ????????
    db   $74, $ff, $c5, $55, $ff, $c5, $47, $ff        ;; 04:6add ????????
    db   $c0, $17, $ff, $c0, $47, $ff, $c0, $55        ;; 04:6ae5 ????????
    db   $ff, $c0, $74, $ff, $c0, $71, $ff, $c0        ;; 04:6aed ????????
    db   $7f, $ff, $c4, $7c, $ff, $c4, $5b, $ff        ;; 04:6af5 ????????
    db   $c3, $49, $ff, $c3, $19, $ff, $c3, $f9        ;; 04:6afd ????????
    db   $ff, $c1, $c9, $ff, $c1, $bb, $ff, $c1        ;; 04:6b05 ????????
    db   $9c, $ff, $c2, $9f, $ff, $c2, $91, $ff        ;; 04:6b0d ????????
    db   $c2, $94, $ff, $c2, $b5, $ff, $c2, $c7        ;; 04:6b15 ????????
    db   $ff, $c0, $f7, $ff, $c0, $c7, $ff, $c2        ;; 04:6b1d ????????
    db   $b5, $ff, $c2, $94, $ff, $c2, $91, $ff        ;; 04:6b25 ????????
    db   $c2, $9f, $ff, $c1, $9c, $ff, $c1, $bb        ;; 04:6b2d ????????
    db   $ff, $c1, $c9, $ff, $c3, $f9, $ff, $0c        ;; 04:6b35 ???????.
    db   $00, $ff, $0d, $00, $ff, $01, $00, $f0        ;; 04:6b3d .....???
    db   $02, $f0, $00, $00, $f0, $f0, $06, $00        ;; 04:6b45 ????????
    db   $00, $01, $00, $f0, $02, $f0, $00, $00        ;; 04:6b4d ????????
    db   $f0, $f0, $ff, $05, $00, $f0, $03, $f0        ;; 04:6b55 ????????
    db   $00, $04, $f0, $f0, $0b, $10, $00, $08        ;; 04:6b5d ????????
    db   $10, $f0, $0a, $e0, $00, $09, $e0, $f0        ;; 04:6b65 ????????
    db   $ff, $01, $00, $f0, $03, $f0, $00, $04        ;; 04:6b6d ????????
    db   $f0, $f0, $06, $00, $00, $01, $00, $f0        ;; 04:6b75 ????????
    db   $0a, $e0, $00, $09, $e0, $f0, $ff, $05        ;; 04:6b7d ????????
    db   $00, $f0, $02, $f0, $00, $00, $f0, $f0        ;; 04:6b85 ????????
    db   $0b, $10, $00, $08, $10, $f0, $02, $f0        ;; 04:6b8d ????????
    db   $00, $00, $f0, $f0, $ff, $05, $00, $f0        ;; 04:6b95 ????????
    db   $03, $f0, $00, $04, $f0, $f0, $0b, $10        ;; 04:6b9d ????????
    db   $00, $48, $10, $f0, $0a, $e0, $00, $49        ;; 04:6ba5 ????????
    db   $e0, $f0, $ff, $01, $00, $f0, $03, $f0        ;; 04:6bad ????????
    db   $00, $04, $f0, $f0, $06, $00, $00, $01        ;; 04:6bb5 ????????
    db   $00, $f0, $0a, $e0, $00, $49, $e0, $f0        ;; 04:6bbd ????????
    db   $ff, $05, $00, $f0, $02, $f0, $00, $00        ;; 04:6bc5 ????????
    db   $f0, $f0, $0b, $10, $00, $48, $10, $f0        ;; 04:6bcd ????????
    db   $02, $f0, $00, $00, $f0, $f0, $ff, $01        ;; 04:6bd5 ????????
    db   $d0, $f0, $02, $e0, $e0, $03, $f0, $e0        ;; 04:6bdd ????????
    db   $04, $e0, $f0, $06, $f0, $f0, $08, $f0        ;; 04:6be5 ????????
    db   $00, $ff, $01, $e0, $e0, $02, $d0, $00        ;; 04:6bed ????????
    db   $03, $f0, $e0, $0a, $f0, $f0, $05, $e0        ;; 04:6bf5 ????????
    db   $00, $08, $f0, $00, $ff, $01, $d0, $00        ;; 04:6bfd ????????
    db   $02, $d0, $f0, $04, $e0, $f0, $0b, $f0        ;; 04:6c05 ????????
    db   $f0, $05, $e0, $00, $08, $f0, $00, $ff        ;; 04:6c0d ????????
    db   $01, $d0, $f0, $02, $e0, $e0, $03, $f0        ;; 04:6c15 ????????
    db   $e0, $04, $e0, $f0, $07, $f0, $f0, $08        ;; 04:6c1d ????????
    db   $f0, $00, $ff, $41, $e0, $e0, $02, $d0        ;; 04:6c25 ????????
    db   $00, $03, $f0, $e0, $0a, $f0, $f0, $05        ;; 04:6c2d ????????
    db   $e0, $00, $09, $f0, $00, $ff, $01, $d0        ;; 04:6c35 ????????
    db   $00, $02, $d0, $f0, $04, $e0, $f0, $0b        ;; 04:6c3d ????????
    db   $f0, $f0, $05, $e0, $00, $08, $f0, $00        ;; 04:6c45 ????????
    db   $ff, $12, $f0, $f0, $13, $00, $f0, $01        ;; 04:6c4d ????????
    db   $f0, $00, $ff, $06, $f0, $f0, $10, $00        ;; 04:6c55 ????????
    db   $f0, $11, $f0, $00, $ff, $0f, $f0, $f0        ;; 04:6c5d ????????
    db   $0a, $00, $f0, $01, $f0, $00, $ff, $49        ;; 04:6c65 ????????
    db   $f0, $f0, $04, $00, $f0, $01, $f0, $00        ;; 04:6c6d ????????
    db   $ff, $0e, $f0, $f0, $03, $00, $f0, $01        ;; 04:6c75 ????????
    db   $f0, $00, $ff, $05, $f0, $f0, $48, $00        ;; 04:6c7d ????????
    db   $f0, $01, $f0, $00, $ff, $47, $f0, $f0        ;; 04:6c85 ????????
    db   $4b, $00, $f0, $01, $f0, $00, $ff, $03        ;; 04:6c8d ????????
    db   $f0, $f0, $04, $00, $f0, $01, $f0, $00        ;; 04:6c95 ????????
    db   $4e, $f8, $d0, $4e, $f8, $20, $0f, $20        ;; 04:6c9d ????????
    db   $f8, $0f, $d0, $f8, $ff, $03, $f0, $f0        ;; 04:6ca5 ????????
    db   $04, $00, $f0, $01, $f0, $00, $0e, $f8        ;; 04:6cad ????????
    db   $d0, $0e, $f8, $20, $4f, $20, $f8, $4f        ;; 04:6cb5 ????????
    db   $d0, $f8, $ff, $03, $f0, $f0, $04, $00        ;; 04:6cbd ????????
    db   $f0, $01, $f0, $00, $0e, $f8, $d0, $0e        ;; 04:6cc5 ????????
    db   $f8, $20, $0f, $20, $f8, $0f, $d0, $f8        ;; 04:6ccd ????????
    db   $ff, $03, $f0, $f0, $04, $00, $f0, $01        ;; 04:6cd5 ????????
    db   $f0, $00, $0f, $ec, $d2, $0f, $04, $1e        ;; 04:6cdd ????????
    db   $0e, $1e, $ec, $0e, $d2, $04, $ff, $03        ;; 04:6ce5 ????????
    db   $f0, $f0, $04, $00, $f0, $01, $f0, $00        ;; 04:6ced ????????
    db   $0e, $e1, $d7, $0e, $0f, $19, $0f, $19        ;; 04:6cf5 ????????
    db   $e1, $0f, $d7, $0f, $ff, $05, $f0, $f0        ;; 04:6cfd ????????
    db   $08, $00, $f0, $11, $f0, $00, $0f, $d7        ;; 04:6d05 ????????
    db   $df, $0f, $19, $11, $0e, $11, $d7, $0e        ;; 04:6d0d ????????
    db   $df, $19, $ff, $05, $f0, $f0, $08, $00        ;; 04:6d15 ????????
    db   $f0, $11, $f0, $00, $0e, $cf, $e8, $0e        ;; 04:6d1d ????????
    db   $21, $08, $0f, $08, $cf, $0f, $e8, $21        ;; 04:6d25 ????????
    db   $ff, $05, $f0, $f0, $08, $00, $f0, $11        ;; 04:6d2d ????????
    db   $f0, $00, $0f, $ca, $f4, $0f, $26, $fc        ;; 04:6d35 ????????
    db   $0e, $fc, $ca, $0e, $f4, $26, $ff, $85        ;; 04:6d3d ????????
    db   $f0, $f0, $08, $00, $f0, $11, $f0, $00        ;; 04:6d45 ????????
    db   $11, $f0, $00, $11, $f0, $00, $11, $f0        ;; 04:6d4d ????????
    db   $00, $11, $f0, $00, $ff, $05, $f0, $f0        ;; 04:6d55 ????????
    db   $0c, $f8, $f1, $11, $f0, $00, $0d, $e8        ;; 04:6d5d ????????
    db   $f1, $0c, $f5, $12, $0d, $ef, $f1, $0c        ;; 04:6d65 ????????
    db   $ee, $09, $ff, $0d, $f6, $ee, $08, $00        ;; 04:6d6d ????????
    db   $f0, $0c, $ff, $04, $0d, $f9, $e5, $0c        ;; 04:6d75 ????????
    db   $11, $15, $0d, $12, $f0, $0c, $e0, $09        ;; 04:6d7d ????????
    db   $ff, $05, $f0, $f0, $0d, $03, $f0, $0d        ;; 04:6d85 ????????
    db   $f0, $00, $0d, $e0, $ef, $0c, $f3, $0e        ;; 04:6d8d ????????
    db   $0d, $e0, $f3, $0c, $f4, $11, $ff, $00        ;; 04:6d95 ???????.
    db   $f0, $f0, $02, $00, $f0, $01, $f0, $00        ;; 04:6d9d ........
    db   $01, $f0, $00, $01, $f0, $00, $ff, $04        ;; 04:6da5 ......?.
    db   $f0, $f0, $05, $00, $f0, $03, $f0, $00        ;; 04:6dad ........
    db   $03, $f0, $00, $03, $f0, $00, $ff             ;; 04:6db5 ......?

data_04_6dbc:
    db   $08, $f0, $f0, $0b, $00, $f0, $09, $f0        ;; 04:6dbc ........
    db   $00, $09, $f0, $00, $09, $f0, $00, $ff        ;; 04:6dc4 .......?
    db   $00, $e0, $f0, $01, $f0, $f0, $08, $00        ;; 04:6dcc ????????
    db   $f0, $05, $10, $f0, $03, $e0, $00, $02        ;; 04:6dd4 ????????
    db   $f0, $00, $0f, $10, $00, $13, $f0, $10        ;; 04:6ddc ????????
    db   $0b, $00, $10, $0b, $00, $10, $ff, $00        ;; 04:6de4 ????????
    db   $e0, $f0, $01, $f0, $f0, $08, $00, $f0        ;; 04:6dec ????????
    db   $05, $10, $f0, $43, $e0, $00, $02, $f0        ;; 04:6df4 ????????
    db   $00, $4f, $10, $00, $53, $f0, $10, $4b        ;; 04:6dfc ????????
    db   $00, $10, $0b, $00, $10, $ff, $00, $e0        ;; 04:6e04 ????????
    db   $f0, $01, $f0, $f0, $08, $00, $f0, $05        ;; 04:6e0c ????????
    db   $10, $f0, $0e, $e0, $00, $09, $f0, $00        ;; 04:6e14 ????????
    db   $10, $10, $00, $13, $f0, $10, $11, $00        ;; 04:6e1c ????????
    db   $10, $12, $00, $20, $ff, $80, $e0, $f0        ;; 04:6e24 ????????
    db   $01, $f0, $f0, $08, $00, $f0, $05, $10        ;; 04:6e2c ????????
    db   $f0, $03, $e0, $00, $02, $f0, $00, $0f        ;; 04:6e34 ????????
    db   $10, $00, $13, $f0, $10, $0b, $00, $10        ;; 04:6e3c ????????
    db   $0b, $00, $10, $ff, $00, $e0, $f0, $0c        ;; 04:6e44 ????????
    db   $f2, $f1, $08, $00, $f0, $0d, $09, $f3        ;; 04:6e4c ????????
    db   $03, $e0, $00, $0c, $f0, $00, $0c, $13        ;; 04:6e54 ????????
    db   $f8, $13, $f0, $10, $0c, $15, $12, $0b        ;; 04:6e5c ????????
    db   $00, $10, $ff, $0d, $e4, $f2, $01, $f0        ;; 04:6e64 ????????
    db   $f0, $0d, $fd, $f2, $0c, $13, $f1, $03        ;; 04:6e6c ????????
    db   $e0, $00, $02, $f0, $00, $0c, $08, $03        ;; 04:6e74 ????????
    db   $13, $f0, $10, $0d, $02, $0d, $0c, $03        ;; 04:6e7c ????????
    db   $10, $ff, $00, $e0, $f0, $0d, $f2, $f0        ;; 04:6e84 ????????
    db   $08, $00, $f0, $05, $10, $f0, $0d, $e0        ;; 04:6e8c ????????
    db   $00, $0d, $08, $06, $0f, $10, $00, $0c        ;; 04:6e94 ????????
    db   $f1, $10, $0b, $00, $10, $0c, $04, $0f        ;; 04:6e9c ????????
    db   $ff, $06, $10, $f0, $09, $10, $00, $05        ;; 04:6ea4 ????????
    db   $00, $10, $08, $10, $10, $0e, $30, $f0        ;; 04:6eac ????????
    db   $0f, $20, $f0, $ff, $06, $10, $f0, $09        ;; 04:6eb4 ????????
    db   $10, $00, $01, $00, $10, $04, $10, $10        ;; 04:6ebc ????????
    db   $0e, $20, $f0, $0e, $20, $f0, $ff, $02        ;; 04:6ec4 ????????
    db   $10, $f0, $03, $10, $00, $05, $00, $10        ;; 04:6ecc ????????
    db   $08, $10, $10, $0d, $00, $f0, $0d, $00        ;; 04:6ed4 ????????
    db   $f0, $ff, $02, $10, $f0, $03, $10, $00        ;; 04:6edc ????????
    db   $01, $00, $10, $04, $10, $10, $0d, $f0        ;; 04:6ee4 ????????
    db   $f0, $0f, $00, $f0, $ff, $0b, $10, $00        ;; 04:6eec ????????
    db   $0a, $00, $10, $0c, $10, $10, $0d, $f0        ;; 04:6ef4 ????????
    db   $0c, $0d, $f0, $0c, $0d, $f0, $0c, $ff        ;; 04:6efc ????????
    db   $0b, $10, $00, $0a, $00, $10, $0c, $10        ;; 04:6f04 ????????
    db   $10, $0d, $e0, $0c, $0f, $f0, $0c, $0f        ;; 04:6f0c ????????
    db   $f0, $0c, $ff, $01, $e0, $f0, $0f, $f0        ;; 04:6f14 ????????
    db   $f0, $05, $00, $f0, $08, $10, $f0, $04        ;; 04:6f1c ????????
    db   $f0, $00, $ff, $09, $f0, $f0, $0e, $00        ;; 04:6f24 ????????
    db   $f0, $0b, $e0, $00, $0a, $f0, $00, $03        ;; 04:6f2c ????????
    db   $10, $00, $ff, $09, $f0, $f0, $0e, $00        ;; 04:6f34 ????????
    db   $f0, $4b, $e0, $00, $0a, $f0, $00, $43        ;; 04:6f3c ????????
    db   $10, $00, $ff, $81, $e0, $f0, $0f, $f0        ;; 04:6f44 ????????
    db   $f0, $05, $00, $f0, $08, $10, $f0, $04        ;; 04:6f4c ????????
    db   $f0, $00, $ff, $01, $e0, $f0, $0c, $ee        ;; 04:6f54 ????????
    db   $f3, $05, $00, $f0, $08, $10, $f0, $0d        ;; 04:6f5c ????????
    db   $f2, $04, $ff, $0c, $e3, $ef, $0d, $f0        ;; 04:6f64 ????????
    db   $f0, $05, $00, $f0, $0d, $10, $f0, $04        ;; 04:6f6c ????????
    db   $f4, $fc, $ff, $01, $e0, $f0, $0d, $f0        ;; 04:6f74 ????????
    db   $f0, $0c, $fc, $f2, $0d, $11, $f4, $04        ;; 04:6f7c ????????
    db   $f0, $00, $ff, $08, $f0, $00, $06, $10        ;; 04:6f84 ????????
    db   $00, $0e, $f0, $10, $01, $00, $10, $07        ;; 04:6f8c ????????
    db   $10, $10, $03, $f0, $20, $04, $00, $20        ;; 04:6f94 ????????
    db   $15, $10, $20, $ff, $05, $f0, $00, $0f        ;; 04:6f9c ????????
    db   $10, $00, $09, $f0, $10, $02, $00, $10        ;; 04:6fa4 ????????
    db   $10, $10, $10, $14, $f0, $20, $0b, $00        ;; 04:6fac ????????
    db   $20, $0a, $10, $20, $ff, $05, $f0, $00        ;; 04:6fb4 ????????
    db   $0f, $10, $00, $09, $f0, $10, $01, $00        ;; 04:6fbc ????????
    db   $10, $10, $10, $10, $03, $f0, $20, $04        ;; 04:6fc4 ????????
    db   $00, $20, $15, $10, $20, $ff, $08, $f0        ;; 04:6fcc ????????
    db   $00, $06, $10, $00, $0e, $f0, $10, $02        ;; 04:6fd4 ????????
    db   $00, $10, $07, $10, $10, $14, $f0, $20        ;; 04:6fdc ????????
    db   $0b, $00, $20, $0a, $10, $20, $ff, $05        ;; 04:6fe4 ????????
    db   $f0, $00, $0f, $10, $00, $09, $f0, $10        ;; 04:6fec ????????
    db   $01, $00, $10, $10, $10, $10, $11, $e0        ;; 04:6ff4 ????????
    db   $20, $12, $f0, $20, $13, $00, $20, $ff        ;; 04:6ffc ????????
    db   $45, $f0, $00, $0f, $10, $00, $49, $f0        ;; 04:7004 ????????
    db   $10, $01, $00, $10, $10, $10, $10, $03        ;; 04:700c ????????
    db   $f0, $20, $04, $00, $20, $15, $10, $20        ;; 04:7014 ????????
    db   $ff, $03, $f0, $f0, $05, $00, $f0, $16        ;; 04:701c ????????
    db   $10, $f0, $01, $e0, $00, $04, $f0, $00        ;; 04:7024 ????????
    db   $17, $10, $00, $ff, $18, $f0, $f0, $0b        ;; 04:702c ????????
    db   $00, $f0, $09, $10, $f0, $19, $f0, $00        ;; 04:7034 ????????
    db   $0a, $10, $00, $08, $20, $00, $ff, $0e        ;; 04:703c ????????
    db   $f8, $f0, $10, $08, $f0, $0f, $f8, $00        ;; 04:7044 ????????
    db   $11, $08, $00, $11, $08, $00, $11, $08        ;; 04:704c ????????
    db   $00, $ff, $14, $f8, $f0, $12, $08, $f0        ;; 04:7054 ????????
    db   $15, $f8, $00, $13, $08, $00, $13, $08        ;; 04:705c ????????
    db   $00, $13, $08, $00, $ff, $01, $f0, $f0        ;; 04:7064 ????????
    db   $04, $00, $f0, $06, $10, $f0, $03, $f0        ;; 04:706c ????????
    db   $00, $07, $10, $00, $05, $00, $10, $08        ;; 04:7074 ????????
    db   $10, $10, $ff, $14, $f0, $f0, $11, $00        ;; 04:707c ????????
    db   $f0, $0f, $10, $f0, $15, $f0, $00, $10        ;; 04:7084 ????????
    db   $10, $00, $16, $f0, $10, $13, $00, $10        ;; 04:708c ????????
    db   $ff, $09, $f0, $00, $0c, $10, $00, $0a        ;; 04:7094 ????????
    db   $f0, $10, $0b, $00, $10, $0d, $10, $10        ;; 04:709c ????????
    db   $0e, $20, $10, $0e, $20, $10, $ff, $1b        ;; 04:70a4 ????????
    db   $f0, $00, $17, $10, $00, $1d, $e0, $10        ;; 04:70ac ????????
    db   $1c, $f0, $10, $1a, $00, $10, $18, $10        ;; 04:70b4 ????????
    db   $10, $18, $10, $10, $ff, $09, $f0, $00        ;; 04:70bc ????????
    db   $0c, $10, $00, $4a, $f0, $10, $0b, $00        ;; 04:70c4 ????????
    db   $10, $0d, $10, $10, $4e, $20, $10, $0e        ;; 04:70cc ????????
    db   $20, $10, $ff, $1b, $f0, $00, $17, $10        ;; 04:70d4 ????????
    db   $00, $5d, $e0, $10, $1c, $f0, $10, $1a        ;; 04:70dc ????????
    db   $00, $10, $58, $10, $10, $18, $10, $10        ;; 04:70e4 ????????
    db   $ff, $01, $f0, $f0, $03, $00, $f0, $04        ;; 04:70ec ????????
    db   $10, $f0, $05, $f0, $00, $06, $10, $00        ;; 04:70f4 ????????
    db   $07, $f0, $10, $08, $00, $10, $09, $10        ;; 04:70fc ????????
    db   $10, $ff, $01, $f0, $f0, $03, $00, $f0        ;; 04:7104 ????????
    db   $04, $10, $f0, $0a, $f0, $00, $0b, $10        ;; 04:710c ????????
    db   $00, $0c, $f0, $10, $0d, $00, $10, $0e        ;; 04:7114 ????????
    db   $10, $10, $ff, $01, $f0, $f0, $03, $00        ;; 04:711c ????????
    db   $f0, $04, $10, $f0, $0a, $f0, $00, $0b        ;; 04:7124 ????????
    db   $10, $00, $0c, $f0, $10, $0d, $00, $10        ;; 04:712c ????????
    db   $4e, $10, $10, $ff, $11, $f0, $f0, $10        ;; 04:7134 ????????
    db   $00, $f0, $0f, $10, $f0, $13, $f0, $00        ;; 04:713c ????????
    db   $12, $10, $00, $15, $00, $10, $14, $10        ;; 04:7144 ????????
    db   $10, $16, $f0, $10, $ff, $11, $f0, $f0        ;; 04:714c ????????
    db   $10, $00, $f0, $0f, $10, $f0, $18, $f0        ;; 04:7154 ????????
    db   $00, $17, $10, $00, $1a, $00, $10, $19        ;; 04:715c ????????
    db   $10, $10, $1b, $f0, $10, $ff, $11, $f0        ;; 04:7164 ????????
    db   $f0, $10, $00, $f0, $0f, $10, $f0, $18        ;; 04:716c ????????
    db   $f0, $00, $17, $10, $00, $1a, $00, $10        ;; 04:7174 ????????
    db   $19, $10, $10, $5b, $f0, $10, $ff, $00        ;; 04:717c ????????
    db   $f0, $f0, $01, $00, $f0, $02, $f0, $00        ;; 04:7184 ????????
    db   $04, $f0, $10, $05, $00, $10, $05, $00        ;; 04:718c ????????
    db   $10, $ff, $00, $f0, $f0, $01, $00, $f0        ;; 04:7194 ????????
    db   $02, $f0, $00, $04, $f0, $10, $06, $00        ;; 04:719c ????????
    db   $10, $06, $00, $10, $ff, $0f, $f0, $f0        ;; 04:71a4 ????????
    db   $0e, $00, $f0, $11, $f0, $00, $13, $f0        ;; 04:71ac ????????
    db   $10, $12, $00, $10, $12, $00, $10, $ff        ;; 04:71b4 ????????
    db   $0f, $f0, $f0, $0e, $00, $f0, $11, $f0        ;; 04:71bc ????????
    db   $00, $14, $f0, $10, $12, $00, $10, $12        ;; 04:71c4 ????????
    db   $00, $10, $ff, $07, $f0, $f0, $08, $00        ;; 04:71cc ????????
    db   $f0, $09, $10, $f0, $0a, $f0, $00, $0c        ;; 04:71d4 ????????
    db   $f0, $10, $0d, $00, $10, $ff, $17, $e0        ;; 04:71dc ????????
    db   $f0, $16, $f0, $f0, $15, $00, $f0, $19        ;; 04:71e4 ????????
    db   $f0, $00, $1b, $f0, $10, $1a, $00, $10        ;; 04:71ec ????????
    db   $ff, $07, $f0, $f0, $08, $00, $f0, $49        ;; 04:71f4 ????????
    db   $10, $f0, $0a, $f0, $00, $0c, $f0, $10        ;; 04:71fc ????????
    db   $0d, $00, $10, $ff, $57, $e0, $f0, $16        ;; 04:7204 ????????
    db   $f0, $f0, $15, $00, $f0, $19, $f0, $00        ;; 04:720c ????????
    db   $1b, $f0, $10, $1a, $00, $10, $ff, $05        ;; 04:7214 ????????
    db   $f0, $00, $05, $f0, $00, $05, $f0, $00        ;; 04:721c ????????
    db   $05, $f0, $00, $05, $f0, $00, $05, $f0        ;; 04:7224 ????????
    db   $00, $05, $f0, $00, $05, $f0, $00, $05        ;; 04:722c ????????
    db   $f0, $00, $ff, $13, $f0, $00, $13, $f0        ;; 04:7234 ????????
    db   $00, $13, $f0, $00, $13, $f0, $00, $13        ;; 04:723c ????????
    db   $f0, $00, $13, $f0, $00, $13, $f0, $00        ;; 04:7244 ????????
    db   $13, $f0, $00, $13, $f0, $00, $ff, $01        ;; 04:724c ????????
    db   $f0, $f0, $03, $00, $f0, $04, $f0, $00        ;; 04:7254 ????????
    db   $04, $f0, $00, $04, $f0, $00, $04, $f0        ;; 04:725c ????????
    db   $00, $04, $f0, $00, $04, $f0, $00, $04        ;; 04:7264 ????????
    db   $f0, $00, $ff, $11, $f0, $f0, $10, $00        ;; 04:726c ????????
    db   $f0, $12, $f0, $00, $12, $f0, $00, $12        ;; 04:7274 ????????
    db   $f0, $00, $12, $f0, $00, $12, $f0, $00        ;; 04:727c ????????
    db   $12, $f0, $00, $12, $f0, $00, $ff, $01        ;; 04:7284 ????????
    db   $f0, $f0, $03, $00, $f0, $04, $f0, $00        ;; 04:728c ????????
    db   $08, $e0, $00, $04, $f0, $00, $04, $f0        ;; 04:7294 ????????
    db   $00, $04, $f0, $00, $04, $f0, $00, $04        ;; 04:729c ????????
    db   $f0, $00, $ff, $01, $f0, $f0, $03, $00        ;; 04:72a4 ????????
    db   $f0, $04, $f0, $00, $0a, $e0, $00, $09        ;; 04:72ac ????????
    db   $e0, $f0, $04, $f0, $00, $04, $f0, $00        ;; 04:72b4 ????????
    db   $04, $f0, $00, $04, $f0, $00, $ff, $01        ;; 04:72bc ????????
    db   $f0, $f0, $03, $00, $f0, $04, $f0, $00        ;; 04:72c4 ????????
    db   $16, $e0, $00, $17, $e0, $f0, $09, $e0        ;; 04:72cc ????????
    db   $e0, $08, $10, $00, $04, $f0, $00, $04        ;; 04:72d4 ????????
    db   $f0, $00, $ff, $11, $f0, $f0, $10, $00        ;; 04:72dc ????????
    db   $f0, $12, $f0, $00, $0a, $e0, $00, $09        ;; 04:72e4 ????????
    db   $e0, $f0, $16, $10, $00, $15, $10, $f0        ;; 04:72ec ????????
    db   $04, $f0, $00, $04, $f0, $00, $ff, $11        ;; 04:72f4 ????????
    db   $f0, $f0, $10, $00, $f0, $12, $f0, $00        ;; 04:72fc ????????
    db   $08, $e0, $00, $0a, $10, $00, $0b, $10        ;; 04:7304 ????????
    db   $f0, $09, $10, $e0, $04, $f0, $00, $04        ;; 04:730c ????????
    db   $f0, $00, $ff, $01, $f0, $f0, $03, $00        ;; 04:7314 ????????
    db   $f0, $04, $f0, $00, $0a, $e0, $00, $0b        ;; 04:731c ????????
    db   $e0, $f0, $17, $e0, $e0, $0e, $e0, $d0        ;; 04:7324 ????????
    db   $0f, $f0, $d0, $04, $f0, $00, $ff, $01        ;; 04:732c ????????
    db   $f0, $f0, $03, $00, $f0, $04, $f0, $00        ;; 04:7334 ????????
    db   $16, $e0, $00, $17, $e0, $f0, $0b, $e0        ;; 04:733c ????????
    db   $e0, $1e, $e0, $d0, $1d, $f0, $d0, $0f        ;; 04:7344 ????????
    db   $00, $d0, $ff, $11, $f0, $f0, $10, $00        ;; 04:734c ????????
    db   $f0, $12, $f0, $00, $1b, $00, $d0, $1a        ;; 04:7354 ????????
    db   $10, $d0, $0b, $10, $e0, $17, $10, $f0        ;; 04:735c ????????
    db   $16, $10, $00, $12, $f0, $00, $ff, $11        ;; 04:7364 ????????
    db   $f0, $f0, $10, $00, $f0, $12, $f0, $00        ;; 04:736c ????????
    db   $1b, $f0, $d0, $18, $00, $d0, $1c, $10        ;; 04:7374 ????????
    db   $d0, $17, $10, $e0, $0b, $10, $f0, $0a        ;; 04:737c ????????
    db   $10, $00, $ff, $19, $f0, $f0, $19, $f0        ;; 04:7384 ????????
    db   $f0, $19, $f0, $f0, $19, $f0, $f0, $19        ;; 04:738c ????????
    db   $f0, $f0, $19, $f0, $f0, $19, $f0, $f0        ;; 04:7394 ????????
    db   $19, $f0, $f0, $19, $f0, $f0, $ff, $06        ;; 04:739c ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73a4 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:73ac ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:73b4 ????????
    db   $00, $00, $06, $00, $00, $ff, $c6, $00        ;; 04:73bc ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:73c4 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73cc ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:73d4 ????????
    db   $00, $06, $00, $00, $ff, $c6, $00, $00        ;; 04:73dc ????????
    db   $c6, $00, $00, $06, $00, $00, $06, $00        ;; 04:73e4 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:73ec ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73f4 ????????
    db   $06, $00, $00, $ff, $c6, $00, $00, $c6        ;; 04:73fc ????????
    db   $00, $00, $c6, $00, $00, $06, $00, $00        ;; 04:7404 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:740c ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:7414 ????????
    db   $00, $00, $ff, $c6, $00, $00, $c6, $00        ;; 04:741c ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $06        ;; 04:7424 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:742c ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7434 ????????
    db   $00, $ff, $c6, $00, $00, $c6, $00, $00        ;; 04:743c ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:7444 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:744c ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7454 ????????
    db   $ff, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:745c ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:7464 ????????
    db   $c6, $00, $00, $06, $00, $00, $06, $00        ;; 04:746c ????????
    db   $00, $06, $00, $00, $06, $00, $00, $ff        ;; 04:7474 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:747c ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:7484 ????????
    db   $00, $00, $c6, $00, $00, $06, $00, $00        ;; 04:748c ????????
    db   $06, $00, $00, $06, $00, $00, $ff, $c6        ;; 04:7494 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:749c ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74a4 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $06        ;; 04:74ac ????????
    db   $00, $00, $06, $00, $00, $ff, $c6, $00        ;; 04:74b4 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:74bc ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:74c4 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74cc ????????
    db   $00, $06, $00, $00, $ff, $c6, $00, $00        ;; 04:74d4 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74dc ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:74e4 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:74ec ????????
    db   $c6, $00, $00, $ff, $86, $00, $00, $06        ;; 04:74f4 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:74fc ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7504 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:750c ????????
    db   $00, $00, $ff, $06, $00, $00, $06, $00        ;; 04:7514 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:751c ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7524 ????????
    db   $06, $00, $00, $0d, $00, $00, $0c, $00        ;; 04:752c ????????
    db   $00, $ff, $06, $00, $00, $06, $00, $00        ;; 04:7534 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:753c ????????
    db   $00, $06, $00, $00, $0c, $00, $00, $0d        ;; 04:7544 ????????
    db   $00, $00, $0c, $00, $00, $0d, $00, $00        ;; 04:754c ????????
    db   $ff, $06, $00, $00, $06, $00, $00, $06        ;; 04:7554 ????????
    db   $00, $00, $06, $00, $00, $0d, $00, $00        ;; 04:755c ????????
    db   $0c, $00, $00, $0d, $00, $00, $0c, $00        ;; 04:7564 ????????
    db   $00, $0d, $00, $00, $0c, $00, $00, $ff        ;; 04:756c ????????
    db   $0c, $00, $00, $0d, $00, $00, $0c, $00        ;; 04:7574 ????????
    db   $00, $0d, $00, $00, $0c, $00, $00, $0d        ;; 04:757c ????????
    db   $00, $00, $0c, $00, $00, $0d, $00, $00        ;; 04:7584 ????????
    db   $0c, $00, $00, $0d, $00, $00, $ff, $01        ;; 04:758c ????????
    db   $f0, $00, $02, $f0, $10, $03, $00, $10        ;; 04:7594 ????????
    db   $04, $f0, $20, $05, $00, $20, $08, $18        ;; 04:759c ????????
    db   $10, $06, $d8, $10, $ff, $01, $f0, $00        ;; 04:75a4 ????????
    db   $02, $f0, $10, $03, $00, $10, $04, $f0        ;; 04:75ac ????????
    db   $20, $05, $00, $20, $08, $12, $18, $06        ;; 04:75b4 ????????
    db   $de, $18, $ff, $01, $f0, $00, $02, $f0        ;; 04:75bc ????????
    db   $10, $03, $00, $10, $04, $f0, $20, $05        ;; 04:75c4 ????????
    db   $00, $20, $09, $0d, $20, $07, $e3, $20        ;; 04:75cc ????????
    db   $ff, $01, $f0, $00, $02, $f0, $10, $03        ;; 04:75d4 ????????
    db   $00, $10, $04, $f0, $20, $05, $00, $20        ;; 04:75dc ????????
    db   $09, $08, $26, $07, $e8, $26, $ff, $01        ;; 04:75e4 ????????
    db   $f0, $00, $02, $f0, $10, $03, $00, $10        ;; 04:75ec ????????
    db   $04, $f0, $20, $05, $00, $20, $09, $05        ;; 04:75f4 ????????
    db   $2a, $07, $eb, $2a, $ff, $01, $f0, $00        ;; 04:75fc ????????
    db   $02, $f0, $10, $03, $00, $10, $04, $f0        ;; 04:7604 ????????
    db   $20, $05, $00, $20, $09, $04, $2c, $07        ;; 04:760c ????????
    db   $ec, $2c, $ff, $01, $f0, $00, $02, $f0        ;; 04:7614 ????????
    db   $10, $03, $00, $10, $04, $f0, $20, $05        ;; 04:761c ????????
    db   $00, $20, $48, $18, $10, $46, $d8, $10        ;; 04:7624 ????????
    db   $ff, $81, $00, $f0, $06, $f0, $00, $00        ;; 04:762c ????????
    db   $f0, $f0, $00, $f0, $f0, $00, $f0, $f0        ;; 04:7634 ????????
    db   $00, $f0, $f0, $00, $f0, $f0, $ff, $01        ;; 04:763c ????????
    db   $00, $f0, $06, $f0, $00, $00, $f0, $f0        ;; 04:7644 ????????
    db   $0c, $ed, $e9, $0d, $08, $0a, $0c, $0a        ;; 04:764c ????????
    db   $f1, $0d, $f0, $08, $ff, $01, $00, $f0        ;; 04:7654 ????????
    db   $06, $f0, $00, $00, $f0, $f0, $0d, $ef        ;; 04:765c ????????
    db   $ea, $0c, $0d, $10, $0d, $f2, $f1, $0c        ;; 04:7664 ????????
    db   $f3, $0a, $ff, $01, $00, $f0, $06, $f0        ;; 04:766c ????????
    db   $00, $00, $f0, $f0, $0c, $0c, $e9, $0d        ;; 04:7674 ????????
    db   $ec, $0c, $0c, $11, $04, $0d, $f6, $00        ;; 04:767c ????????
    db   $ff, $80, $f0, $f0, $02, $00, $f0, $01        ;; 04:7684 ?.......
    db   $f0, $00, $01, $f0, $00, $01, $f0, $00        ;; 04:768c ........
    db   $ff, $00, $f0, $f0, $02, $00, $f0, $01        ;; 04:7694 ?.......
    db   $f0, $00, $0c, $ed, $e9, $0d, $08, $0a        ;; 04:769c ........
    db   $ff, $00, $f0, $f0, $02, $00, $f0, $01        ;; 04:76a4 ?.......
    db   $f0, $00, $0d, $ea, $ef, $0c, $08, $ec        ;; 04:76ac ........
    db   $ff, $00, $f0, $f0, $02, $00, $f0, $01        ;; 04:76b4 ?.......
    db   $f0, $00, $0d, $00, $08, $0c, $f8, $e4        ;; 04:76bc ........
    db   $ff, $00, $f0, $f0, $02, $00, $f0, $01        ;; 04:76c4 ?.......
    db   $f0, $00, $0c, $e5, $0f, $0d, $07, $0c        ;; 04:76cc ........
    db   $ff, $81, $d0, $f0, $02, $e0, $e0, $03        ;; 04:76d4 ????????
    db   $f0, $e0, $04, $e0, $f0, $06, $f0, $f0        ;; 04:76dc ????????
    db   $08, $f0, $00, $ff, $01, $d0, $f0, $02        ;; 04:76e4 ????????
    db   $e0, $e0, $0c, $f3, $e2, $04, $e0, $f0        ;; 04:76ec ????????
    db   $0d, $f5, $ee, $08, $f0, $00, $ff, $01        ;; 04:76f4 ????????
    db   $d0, $f0, $0c, $ea, $e4, $03, $f0, $e0        ;; 04:76fc ????????
    db   $04, $e0, $f0, $06, $f0, $f0, $0d, $f5        ;; 04:7704 ????????
    db   $f8, $ff, $0d, $e0, $f5, $02, $e0, $e0        ;; 04:770c ????????
    db   $03, $f0, $e0, $0c, $e0, $f0, $0d, $f4        ;; 04:7714 ????????
    db   $ee, $08, $f0, $00, $ff, $01, $d0, $f0        ;; 04:771c ????????
    db   $0c, $f1, $e9, $0d, $f0, $e1, $04, $e0        ;; 04:7724 ????????
    db   $f0, $06, $f0, $f0, $08, $f0, $00, $ff        ;; 04:772c ????????
    db   $87, $f0, $f0, $0b, $00, $f0, $01, $f0        ;; 04:7734 ????????
    db   $00, $ff, $07, $f0, $f0, $0c, $03, $f1        ;; 04:773c ????????
    db   $01, $f0, $00, $ff, $0d, $f2, $ee, $0b        ;; 04:7744 ????????
    db   $00, $f0, $01, $f0, $00, $ff, $0c, $f0        ;; 04:774c ????????
    db   $f0, $0b, $00, $f0, $0d, $ef, $04, $ff        ;; 04:7754 ????????
    db   $01, $f0, $00, $02, $f0, $10, $03, $00        ;; 04:775c ????????
    db   $10, $04, $f0, $20, $05, $00, $20, $0c        ;; 04:7764 ????????
    db   $10, $18, $0d, $e8, $28, $ff, $01, $f0        ;; 04:776c ????????
    db   $00, $02, $f0, $10, $03, $00, $10, $04        ;; 04:7774 ????????
    db   $f0, $20, $05, $00, $20, $0d, $18, $14        ;; 04:777c ????????
    db   $0c, $e0, $2c, $ff, $01, $f0, $00, $02        ;; 04:7784 ????????
    db   $f0, $10, $03, $00, $10, $04, $f0, $20        ;; 04:778c ????????
    db   $05, $00, $20, $0c, $0a, $f4, $0d, $e0        ;; 04:7794 ????????
    db   $28, $ff, $81, $f0, $00, $02, $f0, $10        ;; 04:779c ????????
    db   $03, $00, $10, $04, $f0, $20, $05, $00        ;; 04:77a4 ????????
    db   $20, $0c, $0e, $1c, $0d, $f0, $f8, $ff        ;; 04:77ac ????????
    db   $83, $f0, $f0, $05, $00, $f0, $16, $10        ;; 04:77b4 ????????
    db   $f0, $01, $e0, $00, $04, $f0, $00, $17        ;; 04:77bc ????????
    db   $10, $00, $ff, $0c, $f2, $ed, $05, $00        ;; 04:77c4 ????????
    db   $f0, $0d, $15, $e8, $01, $e0, $00, $0c        ;; 04:77cc ????????
    db   $f0, $f6, $0c, $13, $02, $ff, $03, $f0        ;; 04:77d4 ????????
    db   $f0, $0c, $05, $f3, $16, $10, $f0, $0d        ;; 04:77dc ????????
    db   $e2, $f7, $0c, $f2, $f9, $17, $10, $00        ;; 04:77e4 ????????
    db   $ff, $0d, $e1, $f2, $0c, $03, $f1, $16        ;; 04:77ec ????????
    db   $10, $f0, $01, $e0, $00, $0c, $f2, $ff        ;; 04:77f4 ????????
    db   $0d, $10, $00, $ff, $88, $f0, $00, $06        ;; 04:77fc ????????
    db   $10, $00, $0e, $f0, $10, $01, $00, $10        ;; 04:7804 ????????
    db   $07, $10, $10, $03, $f0, $20, $04, $00        ;; 04:780c ????????
    db   $20, $15, $10, $20, $ff, $91, $f0, $f0        ;; 04:7814 ????????
    db   $10, $00, $f0, $12, $f0, $00, $0a, $e0        ;; 04:781c ????????
    db   $00, $09, $e0, $f0, $16, $10, $00, $15        ;; 04:7824 ????????
    db   $10, $f0, $04, $f0, $00, $04, $f0, $00        ;; 04:782c ????????
    db   $ff, $11, $f0, $f0, $0c, $00, $f0, $12        ;; 04:7834 ????????
    db   $f0, $00, $0d, $e0, $00, $09, $e0, $f0        ;; 04:783c ????????
    db   $0c, $18, $02, $15, $10, $f0, $0d, $e1        ;; 04:7844 ????????
    db   $02, $0c, $f1, $f8, $ff, $0c, $f2, $f1        ;; 04:784c ????????
    db   $0d, $00, $f0, $12, $f0, $00, $0a, $e0        ;; 04:7854 ????????
    db   $00, $0c, $e5, $ed, $0d, $12, $05, $15        ;; 04:785c ????????
    db   $10, $f0, $0c, $f0, $06, $04, $f0, $00        ;; 04:7864 ????????
    db   $ff, $11, $f0, $f0, $0c, $fd, $f3, $12        ;; 04:786c ????????
    db   $f0, $00, $0d, $e0, $03, $0c, $e5, $ef        ;; 04:7874 ????????
    db   $16, $10, $00, $0d, $12, $f0, $04, $f0        ;; 04:787c ????????
    db   $00, $04, $f0, $00, $ff, $81, $f0, $f0        ;; 04:7884 ????????
    db   $03, $00, $f0, $04, $10, $f0, $05, $f0        ;; 04:788c ????????
    db   $00, $06, $10, $00, $07, $f0, $10, $08        ;; 04:7894 ????????
    db   $00, $10, $09, $10, $10, $ff, $0c, $f8        ;; 04:789c ??????..
    db   $f8, $0d, $f8, $f8, $0c, $f8, $f8, $0d        ;; 04:78a4 ........
    db   $f8, $f8, $0c, $f8, $f8, $0c, $f8, $f8        ;; 04:78ac .....???
    db   $0d, $f8, $f8, $0c, $f8, $f8, $0d, $f8        ;; 04:78b4 ????????
    db   $f8, $0c, $f8, $f8, $ff, $0d, $ff, $f4        ;; 04:78bc ?????...
    db   $0c, $04, $fc, $0d, $f6, $01, $0c, $ef        ;; 04:78c4 ........
    db   $f7, $0d, $f4, $ea, $0d, $f4, $ff, $0c        ;; 04:78cc ....????
    db   $fc, $04, $0d, $01, $f6, $0c, $f7, $ef        ;; 04:78d4 ????????
    db   $0d, $ea, $f4, $ff, $0c, $06, $f0, $0d        ;; 04:78dc ????....
    db   $0e, $01, $0c, $f2, $09, $0d, $e8, $f6        ;; 04:78e4 ........
    db   $0c, $f1, $df, $0c, $f0, $06, $0d, $01        ;; 04:78ec ...?????
    db   $0e, $0c, $09, $f2, $0d, $f6, $e8, $0c        ;; 04:78f4 ????????
    db   $df, $f1, $ff, $0d, $0a, $ee, $0c, $eb        ;; 04:78fc ???.....
    db   $04, $0d, $f0, $0f, $0c, $e3, $f6, $0d        ;; 04:7904 ........
    db   $f0, $d7, $0d, $ee, $0a, $0c, $04, $eb        ;; 04:790c ..??????
    db   $0d, $0f, $f0, $0c, $f6, $e3, $0d, $d7        ;; 04:7914 ????????
    db   $f0, $ff, $0c, $0b, $ed, $0d, $e9, $05        ;; 04:791c ??......
    db   $0c, $ef, $10, $0d, $e2, $f6, $0c, $ef        ;; 04:7924 ........
    db   $d5, $0c, $ed, $0b, $0d, $05, $e9, $0c        ;; 04:792c .???????
    db   $10, $ef, $0d, $f6, $e2, $0c, $d5, $ef        ;; 04:7934 ????????
    db   $ff                                           ;; 04:793c ?

data_04_793d:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:793d ????????
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:7945 ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:794d ????????
    db   $ff, $ff                                      ;; 04:7955 ??

data_04_7957:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:7957 ????????
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:795f ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:7967 ????????
    db   $18, $19, $2f, $1a, $1b, $1d, $1c, $1e        ;; 04:796f ????????
    db   $1f, $21, $20, $22, $23, $25, $24, $26        ;; 04:7977 ????????
    db   $27, $29, $28, $2a, $2b, $2d, $2c, $2e        ;; 04:797f ????????

data_04_7987:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:7987 ........
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:798f ........
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:7997 ........
    db   $18, $1a, $19, $1b, $1c, $1e, $1d, $1f        ;; 04:799f ........
    db   $20, $22, $21, $23, $24, $26, $25, $27        ;; 04:79a7 ????????
    db   $28, $2a, $29, $2b, $2c, $2e, $2d, $2f        ;; 04:79af ????????
    db   $30, $32, $31, $33, $34, $36, $35, $37        ;; 04:79b7 ????????
    db   $38, $3a, $39, $3b, $20, $22, $21, $23        ;; 04:79bf ????????

data_04_79c7:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:79c7 ????????
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:79cf ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:79d7 ????????
    db   $18, $1a, $19, $1b, $1d, $1f, $1e, $20        ;; 04:79df ????????
    db   $21, $23, $22, $24, $25, $27, $26, $28        ;; 04:79e7 ????????
    db   $29, $2b, $2a, $2c                            ;; 04:79ef ????

data_04_79f3:
    db   $60, $01, $00, $02, $03, $05, $04, $06        ;; 04:79f3 ????????
    db   $07, $08, $60, $09, $0a, $0c, $0b, $0d        ;; 04:79fb ????????
    db   $60, $0f, $0e, $10, $11, $13, $12, $14        ;; 04:7a03 ????????
    db   $15, $16, $60, $17, $18, $1a, $19, $1b        ;; 04:7a0b ????????

data_04_7a13:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:7a13 ????????
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:7a1b ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:7a23 ????????
    db   $18, $1a, $19, $1b, $1c, $6c, $1d, $1e        ;; 04:7a2b ????????
    db   $1f, $21, $20, $22                            ;; 04:7a33 ????

data_04_7a37:
    db   $00, $02, $01, $03, $04, $53, $05, $06        ;; 04:7a37 ????????
    db   $07, $08, $53, $09, $0a, $0c, $0b, $0d        ;; 04:7a3f ????????
    db   $0e, $10, $0f, $11, $12, $14, $13, $15        ;; 04:7a47 ????????
    db   $16, $53, $17, $18, $19, $1b, $1a, $1c        ;; 04:7a4f ????????
    db   $1d, $1f, $1e, $20, $21, $23, $22, $24        ;; 04:7a57 ????????
    db   $25, $27, $26, $28, $29, $2b, $2a, $2c        ;; 04:7a5f ????????
    db   $2d, $2f, $2e, $30, $31, $33, $32, $34        ;; 04:7a67 ????????
    db   $35, $36                                      ;; 04:7a6f ??

data_04_7a71:
    db   $0d, $2a, $0e, $2b, $00, $01, $7f, $02        ;; 04:7a71 ????????
    db   $03, $05, $04, $06, $7f, $7f, $07, $08        ;; 04:7a79 ????????
    db   $09, $0b, $0a, $0c, $0d, $0f, $0e, $10        ;; 04:7a81 ????????
    db   $11, $13, $12, $14, $15, $17, $16, $18        ;; 04:7a89 ????????
    db   $19, $1b, $1a, $1c, $1d, $1f, $1e, $7f        ;; 04:7a91 ????????
    db   $7f, $20, $7f, $21, $22, $24, $23, $25        ;; 04:7a99 ????????
    db   $26, $28, $27, $29                            ;; 04:7aa1 ????

data_04_7aa5:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 04:7aa5 ????????
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 04:7aad ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 04:7ab5 ????????
    db   $18, $1a, $19, $1b, $1c, $1e, $1d, $1f        ;; 04:7abd ????????
    db   $20, $22, $21, $23, $24, $26, $25, $27        ;; 04:7ac5 ????????
    db   $28, $2a, $29, $2b, $2c, $2e, $2d, $2f        ;; 04:7acd ????????
    db   $30, $31, $37, $32, $33, $35, $34, $37        ;; 04:7ad5 ????????
    db   $36, $37, $37, $37                            ;; 04:7add ????

data_04_7ae1:
    db   $00, $06, $01, $07, $02, $08, $03, $09        ;; 04:7ae1 ????????
    db   $04, $0a, $05, $0b, $0c, $12, $0d, $13        ;; 04:7ae9 ????????
    db   $0e, $14, $0f, $15, $10, $16, $11, $17        ;; 04:7af1 ????????
    db   $18, $1e, $19, $1f, $1a, $20, $1b, $21        ;; 04:7af9 ????????
    db   $1c, $22, $1d, $23, $24, $26, $25, $27        ;; 04:7b01 ????????
    db   $28, $2a, $29, $2b, $2c, $32, $2d, $33        ;; 04:7b09 ????????
    db   $2e, $34, $2f, $35, $30, $36, $31, $37        ;; 04:7b11 ????????

data_04_7b19:
    db   $00, $04, $01, $05, $02, $06, $03, $07        ;; 04:7b19 ????????
    db   $08, $0c, $09, $0d, $0a, $0e, $0b, $0f        ;; 04:7b21 ????????
    db   $10, $14, $11, $15, $12, $16, $13, $17        ;; 04:7b29 ????????
    db   $18, $1a, $19, $1b, $1c, $22, $1d, $23        ;; 04:7b31 ????????
    db   $1e, $24, $1f, $25, $20, $26, $21, $27        ;; 04:7b39 ????????
    db   $28, $2c, $29, $2d, $2a, $2e, $2b, $2f        ;; 04:7b41 ????????
    db   $30, $34, $31, $35, $32, $36, $33, $37        ;; 04:7b49 ????????

data_04_7b51:
    db   $38, $38, $00, $03, $01, $04, $02, $05        ;; 04:7b51 ????????
    db   $06, $0a, $07, $0b, $08, $0c, $09, $0d        ;; 04:7b59 ????????
    db   $0e, $11, $0f, $12, $10, $13, $14, $16        ;; 04:7b61 ????????
    db   $15, $17, $18, $1a, $19, $1b, $1c, $1e        ;; 04:7b69 ????????
    db   $1d, $1f, $20, $22, $21, $23, $24, $26        ;; 04:7b71 ????????
    db   $25, $27, $28, $2a, $29, $2b, $2c, $2e        ;; 04:7b79 ????????
    db   $2d, $2f, $30, $32, $31, $33                  ;; 04:7b81 ??????

data_04_7b87:
    db   $00, $04, $01, $05, $02, $06, $03, $07        ;; 04:7b87 ????????
    db   $08, $0c, $09, $0d, $0a, $0e, $0b, $0f        ;; 04:7b8f ????????
    db   $10, $14, $11, $15, $12, $16, $13, $17        ;; 04:7b97 ????????
    db   $18, $1a, $19, $1b, $1c, $1e, $1d, $1f        ;; 04:7b9f ????????

data_04_7ba7:
    db   $10, $40, $42, $30, $42, $40, $10, $44        ;; 04:7ba7 ????????
    db   $46, $30, $4e, $4c, $30, $4a, $48, $10        ;; 04:7baf ????????
    db   $48, $4a, $30, $46, $44, $10, $4c, $4e        ;; 04:7bb7 ????????
    db   $10, $50, $52, $30, $52, $50, $30, $56        ;; 04:7bbf ????????
    db   $54, $10, $54, $56, $10, $38, $3a, $10        ;; 04:7bc7 ????????
    db   $3c, $3e                                      ;; 04:7bcf ??

data_04_7bd1:
    db   $10, $58, $5a, $10, $48, $4a, $10, $40        ;; 04:7bd1 ????????
    db   $42, $10, $44, $46, $10, $4c, $4e, $10        ;; 04:7bd9 ????????
    db   $60, $62, $10, $50, $52, $10, $6c, $6e        ;; 04:7be1 ????????
    db   $10, $54, $56, $10, $68, $6a, $10, $5c        ;; 04:7be9 ????????
    db   $5e, $10, $64, $66, $10, $38, $3a, $10        ;; 04:7bf1 ????????
    db   $38, $3a, $10, $3c, $3e                       ;; 04:7bf9 ?????

data_04_7bfe:
    db   $10, $4c, $4e, $10, $44, $46, $30, $46        ;; 04:7bfe ????????
    db   $44, $10, $6c, $6e, $10, $64, $66, $30        ;; 04:7c06 ????????
    db   $66, $64, $10, $50, $52, $10, $58, $5a        ;; 04:7c0e ????????
    db   $30, $62, $60, $10, $60, $62, $10, $5c        ;; 04:7c16 ????????
    db   $5e, $10, $5c, $5e, $10, $38, $3a, $10        ;; 04:7c1e ????????
    db   $3c, $3e, $10, $68, $6a, $10, $58, $5a        ;; 04:7c26 ????????
    db   $10, $54, $56, $30, $4e, $4c, $10, $40        ;; 04:7c2e ????????
    db   $42, $10, $48, $4a                            ;; 04:7c36 ????

data_04_7c3a:
    db   $10, $4c, $4e, $30, $4e, $4c, $30, $46        ;; 04:7c3a ????????
    db   $44, $30, $4a, $48, $30, $42, $40, $10        ;; 04:7c42 ????????
    db   $40, $42, $10, $5c, $5e, $10, $44, $46        ;; 04:7c4a ????????
    db   $10, $48, $4a, $10, $50, $52, $10, $58        ;; 04:7c52 ????????
    db   $5a, $30, $46, $44, $10, $38, $3a, $10        ;; 04:7c5a ????????
    db   $3c, $3e, $10, $30, $32, $10, $34, $36        ;; 04:7c62 ????????
    db   $10, $54, $56, $10, $44, $46                  ;; 04:7c6a ??????

data_04_7c70:
    db   $10, $40, $42, $10, $44, $46, $10, $48        ;; 04:7c70 ........
    db   $4a, $30, $4e, $4c, $30, $4a, $48, $30        ;; 04:7c78 ........
    db   $42, $40, $10, $4c, $4e, $30, $46, $44        ;; 04:7c80 ........
    db   $10, $50, $52, $10, $54, $56, $10, $5c        ;; 04:7c88 ........
    db   $5e, $10, $58, $5a, $10, $38, $3a, $10        ;; 04:7c90 ........
    db   $3c, $3e                                      ;; 04:7c98 ..

data_04_7c9a:
    db   $10, $40, $42, $10, $44, $46, $10, $60        ;; 04:7c9a ????????
    db   $62, $10, $5c, $5e, $10, $48, $4a, $30        ;; 04:7ca2 ????????
    db   $42, $40, $30, $62, $60, $30, $62, $60        ;; 04:7caa ????????
    db   $30, $46, $44, $10, $4c, $4e, $30, $4e        ;; 04:7cb2 ????????
    db   $4c, $30, $52, $50, $10, $38, $3a, $10        ;; 04:7cba ????????
    db   $3c, $3e, $10, $48, $4a, $30, $5e, $5c        ;; 04:7cc2 ????????
    db   $30, $4a, $48, $10, $54, $56, $10, $58        ;; 04:7cca ????????
    db   $5a, $10, $50, $52                            ;; 04:7cd2 ????

data_04_7cd6:
    db   $10, $30, $32, $10, $34, $36, $10, $38        ;; 04:7cd6 ????????
    db   $3a, $10, $3c, $3e, $10, $40, $42, $10        ;; 04:7cde ????????
    db   $44, $46, $10, $48, $4a, $10, $54, $56        ;; 04:7ce6 ????????
    db   $10, $50, $52, $10, $4c, $4e, $10, $58        ;; 04:7cee ????????
    db   $5a, $10, $5c, $5e, $10, $60, $62, $10        ;; 04:7cf6 ????????
    db   $64, $66, $30, $66, $64, $10, $68, $68        ;; 04:7cfe ????????

data_04_7d06:
    db   $10, $50, $52, $10, $40, $42, $10, $68        ;; 04:7d06 ????????
    db   $6a, $10, $6c, $6e, $10, $48, $4a, $10        ;; 04:7d0e ????????
    db   $4c, $4e, $10, $50, $52, $10, $68, $6a        ;; 04:7d16 ????????
    db   $10, $54, $56, $10, $5c, $5e, $10, $60        ;; 04:7d1e ????????
    db   $62, $10, $58, $5a, $10, $38, $3a, $10        ;; 04:7d26 ????????
    db   $3c, $3e, $10, $64, $66, $10, $44, $46        ;; 04:7d2e ????????

data_04_7d36:
    db   $10, $4c, $4e, $10, $50, $52, $10, $3c        ;; 04:7d36 ????????
    db   $3e, $10, $48, $4a, $10, $54, $56, $30        ;; 04:7d3e ????????
    db   $5a, $58, $10, $58, $5a, $10, $5c, $5e        ;; 04:7d46 ????????
    db   $10, $40, $42, $30, $5e, $5c, $30, $4a        ;; 04:7d4e ????????
    db   $48, $30, $56, $54, $10, $38, $3a, $10        ;; 04:7d56 ????????
    db   $3c, $3e, $10, $44, $46, $30, $42, $40        ;; 04:7d5e ????????
    db   $30, $46, $44, $10, $64, $66, $10, $68        ;; 04:7d66 ????????
    db   $6a, $10, $6c, $6e, $30, $62, $60, $10        ;; 04:7d6e ????????
    db   $60, $62                                      ;; 04:7d76 ??

data_04_7d78:
    db   $10, $50, $52, $10, $40, $42, $30, $52        ;; 04:7d78 ????????
    db   $50, $10, $44, $46, $10, $48, $4a, $10        ;; 04:7d80 ????????
    db   $4c, $4e, $10, $62, $68, $30, $68, $62        ;; 04:7d88 ????????
    db   $30, $42, $40, $30, $46, $44, $30, $4a        ;; 04:7d90 ????????
    db   $48, $30, $4e, $4c, $10, $38, $3a, $10        ;; 04:7d98 ????????
    db   $3c, $3e, $10, $5c, $5e, $10, $60, $62        ;; 04:7da0 ????????
    db   $10, $64, $66, $10, $68, $6a, $30, $5e        ;; 04:7da8 ????????
    db   $5c, $30, $62, $60, $30, $66, $64, $30        ;; 04:7db0 ????????
    db   $6a, $68, $10, $54, $56, $10, $58, $5a        ;; 04:7db8 ????????
    db   $30, $56, $54, $30, $5a, $58                  ;; 04:7dc0 ??????

data_04_7dc6:
    db   $10, $40, $42, $10, $34, $36, $10, $5c        ;; 04:7dc6 ????????
    db   $5e, $10, $38, $3a, $10, $3c, $3e, $10        ;; 04:7dce ????????
    db   $44, $46, $10, $48, $4a, $10, $4c, $4e        ;; 04:7dd6 ????????
    db   $10, $50, $52, $10, $54, $56, $10, $58        ;; 04:7dde ????????
    db   $5a, $10, $60, $62, $10, $64, $66, $10        ;; 04:7de6 ????????
    db   $68, $6a, $10, $6c, $6e, $30, $36, $34        ;; 04:7dee ????????
    db   $30, $3a, $38, $30, $3e, $3c, $30, $42        ;; 04:7df6 ????????
    db   $40, $30, $46, $44, $30, $4a, $48, $30        ;; 04:7dfe ????????
    db   $4e, $4c, $30, $52, $50, $30, $56, $54        ;; 04:7e06 ????????
    db   $30, $5a, $58, $30, $5e, $5c, $30, $62        ;; 04:7e0e ????????
    db   $60, $30, $66, $64, $30, $6a, $68, $30        ;; 04:7e16 ????????
    db   $6e, $6c                                      ;; 04:7e1e ??

data_04_7e20:
    db   $10, $48, $4a, $10, $38, $3a, $30, $4a        ;; 04:7e20 ????????
    db   $48, $10, $3c, $3e, $10, $40, $42, $10        ;; 04:7e28 ????????
    db   $44, $46, $10, $4c, $4e, $10, $50, $52        ;; 04:7e30 ????????
    db   $10, $54, $56, $10, $58, $5a, $10, $5c        ;; 04:7e38 ????????
    db   $5e, $10, $60, $62, $10, $64, $66, $10        ;; 04:7e40 ????????
    db   $68, $6a, $10, $6c, $6e, $30, $3a, $38        ;; 04:7e48 ????????
    db   $30, $3e, $3c, $30, $42, $40, $30, $46        ;; 04:7e50 ????????
    db   $44, $30, $4e, $4c, $30, $52, $50, $30        ;; 04:7e58 ????????
    db   $56, $54, $30, $5a, $58, $30, $5e, $5c        ;; 04:7e60 ????????
    db   $30, $62, $60, $30, $66, $64, $30, $6a        ;; 04:7e68 ????????
    db   $68, $30, $6e, $6c                            ;; 04:7e70 ????

data_04_7e74:
    db   $10, $38, $3a, $10, $3c, $3e, $10, $40        ;; 04:7e74 ????????
    db   $42, $10, $44, $46, $10, $48, $4a, $10        ;; 04:7e7c ????????
    db   $4c, $4e, $10, $50, $52, $10, $54, $56        ;; 04:7e84 ????????
    db   $10, $58, $5a, $10, $5c, $5e, $10, $60        ;; 04:7e8c ????????
    db   $62, $10, $64, $66, $10, $68, $6a, $10        ;; 04:7e94 ????????
    db   $6c, $6e, $30, $3a, $38, $30, $3e, $3c        ;; 04:7e9c ????????
    db   $30, $42, $40, $30, $46, $44, $30, $4a        ;; 04:7ea4 ????????
    db   $48, $30, $4e, $4c, $30, $52, $50, $30        ;; 04:7eac ????????
    db   $56, $54, $30, $5a, $58, $30, $5e, $5c        ;; 04:7eb4 ????????
    db   $30, $62, $60, $30, $66, $64, $30, $6a        ;; 04:7ebc ????????
    db   $68, $30, $6e, $6c                            ;; 04:7ec4 ????

data_04_7ec8:
    db   $10, $46, $48, $10, $3a, $3c, $30, $44        ;; 04:7ec8 ????????
    db   $42, $10, $3e, $40, $10, $42, $44, $10        ;; 04:7ed0 ????????
    db   $3a, $4a, $10, $4c, $4e, $30, $4a, $3a        ;; 04:7ed8 ????????
    db   $10, $50, $52, $10, $54, $56, $10, $58        ;; 04:7ee0 ????????
    db   $5a, $10, $5c, $5e, $10, $30, $32, $10        ;; 04:7ee8 ????????
    db   $34, $36, $10, $68, $6a, $10, $6c, $6e        ;; 04:7ef0 ????????
    db   $30, $3c, $3a, $30, $40, $3e, $30, $48        ;; 04:7ef8 ????????
    db   $46, $30, $4e, $4c, $30, $52, $50, $30        ;; 04:7f00 ????????
    db   $56, $54, $30, $5a, $58, $30, $5e, $5c        ;; 04:7f08 ????????
    db   $30, $62, $60, $10, $3a, $3a, $30, $6a        ;; 04:7f10 ????????
    db   $68, $30, $6e, $6c, $30, $66, $64, $10        ;; 04:7f18 ????????
    db   $60, $62, $10, $64, $66                       ;; 04:7f20 ?????

data_04_7f25:
    db   $10, $40, $42, $10, $44, $46, $10, $48        ;; 04:7f25 ????????
    db   $4a, $50, $40, $42, $30, $46, $44, $30        ;; 04:7f2d ????????
    db   $4a, $48, $10, $50, $52, $10, $4c, $4e        ;; 04:7f35 ????????
    db   $10, $54, $56, $10, $58, $5a, $10, $5c        ;; 04:7f3d ????????
    db   $5e, $10, $38, $3a, $10, $38, $3a, $10        ;; 04:7f45 ????????
    db   $3c, $3e                                      ;; 04:7f4d ??

data_04_7f4f:
    db   $10, $44, $46, $10, $40, $42, $10, $48        ;; 04:7f4f ????????
    db   $4a, $10, $4c, $4e, $10, $50, $52, $10        ;; 04:7f57 ????????
    db   $54, $56, $10, $58, $5a, $10, $5c, $5e        ;; 04:7f5f ????????
    db   $30, $5a, $58, $30, $5e, $5c, $30, $5e        ;; 04:7f67 ????????
    db   $5c, $30, $5e, $5c, $10, $38, $3a, $10        ;; 04:7f6f ????????
    db   $3c, $3e, $4c, $ff, $4e, $ff, $4e, $ff        ;; 04:7f77 ????????
    db   $27, $00, $00, $10, $00, $38, $10, $7e        ;; 04:7f7f ????????
    db   $30, $7f, $22, $7f, $32, $ff, $33, $ff        ;; 04:7f87 ????????
    db   $73, $ff, $37, $ff, $37, $ff, $37, $ff        ;; 04:7f8f ????????
    db   $37, $ff, $77, $fe, $7f, $ff, $7f, $ff        ;; 04:7f97 ????????
    db   $7f, $ff, $77, $ff, $76, $ff, $6e, $ff        ;; 04:7f9f ????????
    db   $ee, $ff, $ec, $ff, $ec, $ff, $fe, $ff        ;; 04:7fa7 ????????
    db   $fe, $fe, $ff, $fe, $ff, $fe, $ff, $fe        ;; 04:7faf ????????
    db   $ff, $fc, $ff, $f4, $ff, $f7, $fe, $f2        ;; 04:7fb7 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 04:7fbf ????????
    db   $ff, $7f, $ff, $3f, $ff, $3f, $ff, $bf        ;; 04:7fc7 ????????
    db   $7f, $d8, $ff, $ca, $fd, $c3, $fc, $af        ;; 04:7fcf ????????
    db   $f0, $97, $f8, $d3, $ec, $af, $f0, $03        ;; 04:7fd7 ????????
    db   $fc, $00, $00, $00, $00, $00, $00, $ff        ;; 04:7fdf ????????
    db   $ff, $00, $00, $00, $00, $00, $00, $00        ;; 04:7fe7 ????????
    db   $00, $9f, $7f, $9f, $7f, $af, $7f, $99        ;; 04:7fef ????????
    db   $7f, $27, $ff, $17, $ef, $e9, $1f, $c0        ;; 04:7ff7 ????????
    db   $3f                                           ;; 04:7fff ?
