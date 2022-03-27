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
    call call_00_0c6d                                  ;; 04:400f $cd $6d $0c
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
    ld   A, [wD439]                                    ;; 04:4090 $fa $39 $d4
    ld   D, A                                          ;; 04:4093 $57
    ld   A, [wD438]                                    ;; 04:4094 $fa $38 $d4
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
    ld   A, [wD439]                                    ;; 04:41d1 $fa $39 $d4
    ld   H, A                                          ;; 04:41d4 $67
    ld   A, [wD438]                                    ;; 04:41d5 $fa $38 $d4
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
    ld   A, [wD439]                                    ;; 04:41e8 $fa $39 $d4
    ld   H, A                                          ;; 04:41eb $67
    ld   A, [wD438]                                    ;; 04:41ec $fa $38 $d4
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
    ld   A, [wD439]                                    ;; 04:42c5 $fa $39 $d4
    ld   D, A                                          ;; 04:42c8 $57
    ld   A, [wD438]                                    ;; 04:42c9 $fa $38 $d4
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
    ld   DE, data_04_4739                              ;; 04:4301 $11 $39 $47
    add  HL, DE                                        ;; 04:4304 $19
    ld   A, H                                          ;; 04:4305 $7c
    ld   [wD439], A                                    ;; 04:4306 $ea $39 $d4
    ld   A, L                                          ;; 04:4309 $7d
    ld   [wD438], A                                    ;; 04:430a $ea $38 $d4
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
    call call_00_0a74                                  ;; 04:43e9 $cd $74 $0a
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
    ld   A, [wD439]                                    ;; 04:4575 $fa $39 $d4
    ld   D, A                                          ;; 04:4578 $57
    ld   A, [wD438]                                    ;; 04:4579 $fa $38 $d4
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
    ld   A, [wD439]                                    ;; 04:45dc $fa $39 $d4
    ld   D, A                                          ;; 04:45df $57
    ld   A, [wD438]                                    ;; 04:45e0 $fa $38 $d4
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

data_04_4739:
    db   $08, $19, $14, $0a, $08, $1e, $46, $02        ;; 04:4739 ????????
    db   $40, $0d, $00, $cd, $3d, $79, $a7, $7b        ;; 04:4741 ????????
    db   $31, $49, $21, $4e, $f1, $4d, $35, $54        ;; 04:4749 ????????
    db   $0a, $14, $0a, $5a, $07, $1f, $46, $02        ;; 04:4751 ????????
    db   $40, $18, $d0, $4c, $57, $79, $d1, $7b        ;; 04:4759 ????????
    db   $71, $49, $37, $4e, $37, $4e, $bb, $54        ;; 04:4761 ????????
    db   $06, $3b, $55, $46, $04, $20, $46, $02        ;; 04:4769 ????????
    db   $40, $18, $00, $e1, $87, $79, $fe, $7b        ;; 04:4771 ????????
    db   $e1, $49, $75, $4e, $75, $4e, $03, $55        ;; 04:4779 ????????
    db   $0a, $1c, $2c, $96, $0b, $16, $46, $02        ;; 04:4781 ????????
    db   $40, $10, $40, $d2, $87, $79, $25, $7f        ;; 04:4789 ????????
    db   $c1, $4c, $5b, $52, $09, $4e, $41, $55        ;; 04:4791 ????????
    db   $08, $4b, $5a, $64, $08, $26, $46, $02        ;; 04:4799 ????????
    db   $40, $14, $80, $ce, $f3, $79, $3a, $7c        ;; 04:47a1 ????????
    db   $01, $4a, $db, $4e, $db, $4e, $75, $55        ;; 04:47a9 ????????
    db   $04, $8f, $60, $a0, $06, $16, $46, $02        ;; 04:47b1 ????????
    db   $40, $10, $40, $d0, $87, $79, $70, $7c        ;; 04:47b9 ????????
    db   $41, $4a, $e7, $4e, $e7, $4e, $73, $54        ;; 04:47c1 ????????
    db   $06, $6f, $46, $3c, $07, $ff, $47, $02        ;; 04:47c9 ????????
    db   $30, $1d, $c0, $da, $37, $7a, $d6, $7c        ;; 04:47d1 ????????
    db   $c9, $4a, $dd, $4f, $dd, $4f, $35, $54        ;; 04:47d9 ????????
    db   $04, $70, $14, $58, $06, $23, $46, $02        ;; 04:47e1 ????????
    db   $40, $18, $00, $d5, $87, $79, $06, $7d        ;; 04:47e9 ????????
    db   $01, $4b, $4d, $50, $4d, $50, $b3, $55        ;; 04:47f1 ????????
    db   $08, $79, $a6, $78, $09, $0d, $4f, $02        ;; 04:47f9 ????????
    db   $3c, $1a, $00, $d8, $71, $7a, $36, $7d        ;; 04:4801 ????????
    db   $31, $4b, $9f, $50, $9f, $50, $b2, $56        ;; 04:4809 ????????
    db   $0c, $7d, $be, $78, $0a, $14, $47, $02        ;; 04:4811 ????????
    db   $3a, $1b, $00, $ee, $51, $7b, $c8, $7e        ;; 04:4819 ????????
    db   $71, $4c, $31, $52, $fd, $4d, $b9, $56        ;; 04:4821 ????????
    db   $06, $92, $c8, $fa, $07, $16, $47, $02        ;; 04:4829 ????????
    db   $40, $18, $30, $de, $c7, $79, $78, $7d        ;; 04:4831 ????????
    db   $79, $4b, $f1, $50, $f1, $50, $6d, $56        ;; 04:4839 ????????
    db   $0a, $76, $b2, $c8, $07, $22, $47, $02        ;; 04:4841 ????????
    db   $38, $1c, $00, $e4, $19, $7b, $74, $7e        ;; 04:4849 ????????
    db   $39, $4c, $71, $51, $71, $51, $35, $54        ;; 04:4851 ????????
    db   $04, $bb, $d2, $fa, $08, $21, $47, $02        ;; 04:4859 ????????
    db   $34, $1e, $80, $f8, $a5, $7a, $c6, $7d        ;; 04:4861 ????????
    db   $b1, $4b, $27, $51, $27, $51, $35, $54        ;; 04:4869 ????????
    db   $08, $6a, $00, $fa, $09, $14, $4f, $02        ;; 04:4871 ????????
    db   $38, $1c, $80, $e7, $e1, $7a, $20, $7e        ;; 04:4879 ????????
    db   $f1, $4b, $65, $51, $65, $51, $ab, $56        ;; 04:4881 ????????
    db   $05, $da, $00, $a0, $0b, $24, $46, $02        ;; 04:4889 ????????
    db   $40, $12, $00, $49, $13, $7a, $9a, $7c        ;; 04:4891 ????????
    db   $71, $4a, $77, $4f, $77, $4f, $f1, $55        ;; 04:4899 ????????
    db   $08, $ce, $00, $fa, $07, $27, $47, $02        ;; 04:48a1 ????????
    db   $40, $18, $00, $eb, $57, $79, $d1, $7b        ;; 04:48a9 ????????
    db   $a9, $49, $37, $4e, $37, $4e, $bb, $54        ;; 04:48b1 ????????
    db   $05, $02, $00, $00, $06, $16, $46, $02        ;; 04:48b9 ........
    db   $40, $10, $00, $fe, $87, $79, $70, $7c        ;; 04:48c1 ........
    db   $19, $4d, $4d, $4f, $15, $4e, $73, $54        ;; 04:48c9 ........
    db   $04, $ff, $00, $a0, $08, $25, $46, $02        ;; 04:48d1 ????????
    db   $40, $10, $00, $f3, $87, $7b, $4f, $7f        ;; 04:48d9 ????????
    db   $49, $4d, $1b, $53, $1b, $53, $2f, $56        ;; 04:48e1 ????????
    db   $0a, $51, $64, $64, $07, $16, $47, $02        ;; 04:48e9 ????????
    db   $40, $18, $40, $f1, $c7, $79, $78, $7d        ;; 04:48f1 ????????
    db   $89, $4d, $fd, $50, $fd, $50, $6d, $56        ;; 04:48f9 ????????
    db   $08, $af, $c7, $dc, $06, $ff, $46, $02        ;; 04:4901 ????????
    db   $40, $18, $00, $f5, $87, $79, $06, $7d        ;; 04:4909 ????????
    db   $c1, $4d, $4d, $50, $4d, $50, $b3, $55        ;; 04:4911 ????????
    db   $08, $bb, $00, $fa, $09, $14, $4f, $02        ;; 04:4919 ????????
    db   $38, $1c, $80, $e7, $e1, $7a, $20, $7e        ;; 04:4921 ????????
    db   $f1, $4b, $65, $51, $65, $51, $ab, $56        ;; 04:4929 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4931 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4939 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4941 ????????
    db   $20, $90, $01, $1a, $08, $11, $00, $01        ;; 04:4949 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4951 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4959 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4961 ????????
    db   $20, $90, $01, $1c, $1a, $0a, $00, $01        ;; 04:4969 ????????
    db   $20, $ff, $00, $16, $19, $10, $00, $00        ;; 04:4971 ????????
    db   $20, $90, $00, $16, $01, $10, $00, $00        ;; 04:4979 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4981 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4989 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4991 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:4999 ????????
    db   $20, $98, $00, $16, $17, $10, $00, $00        ;; 04:49a1 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49a9 ????????
    db   $20, $90, $01, $c8, $1c, $3f, $00, $00        ;; 04:49b1 ????????
    db   $20, $90, $01, $c8, $1c, $3f, $00, $00        ;; 04:49b9 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49c1 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49c9 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49d1 ????????
    db   $20, $ff, $00, $be, $08, $08, $00, $00        ;; 04:49d9 ????????
    db   $20, $f0, $00, $4e, $32, $32, $00, $04        ;; 04:49e1 ????????
    db   $20, $f0, $00, $4e, $08, $12, $00, $04        ;; 04:49e9 ????????
    db   $20, $f0, $00, $4e, $08, $12, $00, $04        ;; 04:49f1 ????????
    db   $20, $f0, $00, $4e, $32, $32, $00, $04        ;; 04:49f9 ????????
    db   $20, $10, $00, $5d, $0a, $01, $00, $00        ;; 04:4a01 ????????
    db   $20, $10, $00, $5d, $01, $16, $00, $00        ;; 04:4a09 ????????
    db   $20, $10, $00, $5d, $01, $16, $00, $00        ;; 04:4a11 ????????
    db   $20, $10, $00, $5d, $0a, $01, $00, $00        ;; 04:4a19 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a21 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a29 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a31 ????????
    db   $20, $ff, $00, $49, $1c, $1f, $00, $00        ;; 04:4a39 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a41 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a49 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a51 ????????
    db   $20, $fb, $00, $5c, $04, $02, $00, $00        ;; 04:4a59 ????????
    db   $20, $fb, $00, $00, $04, $02, $00, $00        ;; 04:4a61 ????????
    db   $20, $fb, $00, $00, $04, $02, $00, $00        ;; 04:4a69 ????????
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
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ac9 ????????
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ad1 ????????
    db   $20, $f0, $00, $69, $08, $0e, $00, $00        ;; 04:4ad9 ????????
    db   $20, $f0, $00, $69, $16, $29, $00, $00        ;; 04:4ae1 ????????
    db   $20, $f0, $00, $69, $16, $29, $00, $00        ;; 04:4ae9 ????????
    db   $20, $ff, $00, $9b, $20, $1f, $00, $00        ;; 04:4af1 ????????
    db   $20, $ff, $00, $9b, $20, $1f, $00, $00        ;; 04:4af9 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b01 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b09 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b11 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b19 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b21 ????????
    db   $20, $f0, $00, $5c, $04, $23, $00, $00        ;; 04:4b29 ????????
    db   $20, $d0, $80, $64, $10, $23, $00, $00        ;; 04:4b31 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b39 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b41 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b49 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b51 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b59 ????????
    db   $20, $ff, $80, $a0, $43, $30, $00, $00        ;; 04:4b61 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b69 ????????
    db   $20, $ff, $80, $64, $43, $30, $00, $00        ;; 04:4b71 ????????
    db   $20, $8a, $40, $81, $10, $10, $00, $00        ;; 04:4b79 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b81 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b89 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b91 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4b99 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4ba1 ????????
    db   $20, $ff, $40, $81, $08, $08, $00, $00        ;; 04:4ba9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bb1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bb9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bc1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bc9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bd1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4bd9 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4be1 ????????
    db   $20, $90, $00, $96, $12, $3f, $00, $00        ;; 04:4be9 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4bf1 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4bf9 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c01 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c09 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c11 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c19 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c21 ????????
    db   $20, $ff, $00, $90, $14, $33, $00, $00        ;; 04:4c29 ????????
    db   $20, $90, $02, $ae, $14, $33, $00, $00        ;; 04:4c31 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c39 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c41 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c49 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c51 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c59 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c61 ????????
    db   $20, $90, $01, $9c, $1d, $21, $00, $00        ;; 04:4c69 ????????
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
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d19 ?..?.???
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d21 ????????
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d29 ????????
    db   $20, $00, $00, $08, $02, $02, $00, $00        ;; 04:4d31 ?..?.???
    db   $20, $00, $00, $00, $03, $02, $00, $00        ;; 04:4d39 ???.??.?
    db   $20, $00, $00, $00, $03, $02, $00, $00        ;; 04:4d41 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d49 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d51 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d59 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d61 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d69 ????????
    db   $20, $92, $00, $bc, $45, $3a, $00, $00        ;; 04:4d71 ????????
    db   $20, $ff, $00, $bc, $45, $3a, $00, $00        ;; 04:4d79 ????????
    db   $20, $ff, $00, $bc, $45, $3a, $00, $00        ;; 04:4d81 ????????
    db   $20, $90, $00, $4d, $04, $08, $00, $00        ;; 04:4d89 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4d91 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4d99 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4da1 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4da9 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4db1 ????????
    db   $20, $ff, $00, $4d, $01, $01, $00, $00        ;; 04:4db9 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dc1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dc9 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dd1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4dd9 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4de1 ????????
    db   $20, $f0, $00, $79, $28, $35, $00, $00        ;; 04:4de9 ????????
    db   $f7, $56, $f7, $56, $f7, $56, $f7, $56        ;; 04:4df1 ????????
    db   $0a, $00, $ff, $ff, $52, $67, $52, $67        ;; 04:4df9 ????????
    db   $52, $67, $52, $67, $08, $0c, $ff, $ff        ;; 04:4e01 ????????
    db   $55, $68, $55, $68, $55, $68, $55, $68        ;; 04:4e09 ????????
    db   $1f, $15, $ff, $ff, $c1, $5d, $c1, $5d        ;; 04:4e11 ????..??
    db   $c1, $5d, $c1, $5d, $0a, $02, $ff, $ff        ;; 04:4e19 ..??....
    db   $0c, $57, $0c, $57, $35, $57, $35, $57        ;; 04:4e21 ????????
    db   $04, $06, $5e, $57, $5e, $57, $87, $57        ;; 04:4e29 ????????
    db   $87, $57, $10, $06, $ff, $ff, $b0, $57        ;; 04:4e31 ????????
    db   $ed, $57, $ed, $57, $ed, $57, $12, $05        ;; 04:4e39 ????????
    db   $b0, $57, $b0, $57, $ed, $57, $ed, $57        ;; 04:4e41 ????????
    db   $12, $07, $b0, $57, $b0, $57, $b0, $57        ;; 04:4e49 ????????
    db   $ed, $57, $12, $09, $2a, $58, $2a, $58        ;; 04:4e51 ????????
    db   $67, $58, $67, $58, $12, $0b, $2a, $58        ;; 04:4e59 ????????
    db   $2a, $58, $67, $58, $67, $58, $12, $09        ;; 04:4e61 ????????
    db   $2a, $58, $67, $58, $67, $58, $67, $58        ;; 04:4e69 ????????
    db   $12, $07, $ff, $ff, $b9, $58, $b9, $58        ;; 04:4e71 ????????
    db   $b9, $58, $b9, $58, $08, $06, $ce, $58        ;; 04:4e79 ????????
    db   $ce, $58, $ce, $58, $5b, $59, $04, $06        ;; 04:4e81 ????????
    db   $ce, $58, $5b, $59, $5b, $59, $5b, $59        ;; 04:4e89 ????????
    db   $04, $06, $a4, $58, $a4, $58, $a4, $58        ;; 04:4e91 ????????
    db   $a4, $58, $04, $06, $2b, $5b, $2b, $5b        ;; 04:4e99 ????????
    db   $9e, $5a, $9e, $5a, $08, $06, $a4, $58        ;; 04:4ea1 ????????
    db   $a4, $58, $a4, $58, $a4, $58, $0c, $06        ;; 04:4ea9 ????????
    db   $b6, $59, $43, $5a, $43, $5a, $43, $5a        ;; 04:4eb1 ????????
    db   $10, $06, $b6, $59, $b6, $59, $b6, $59        ;; 04:4eb9 ????????
    db   $43, $5a, $10, $06, $b9, $58, $b9, $58        ;; 04:4ec1 ????????
    db   $b9, $58, $b9, $58, $10, $06, $13, $5c        ;; 04:4ec9 ????????
    db   $13, $5c, $86, $5b, $86, $5b, $0c, $06        ;; 04:4ed1 ????????
    db   $ff, $ff, $6e, $5c, $6e, $5c, $ab, $5c        ;; 04:4ed9 ????????
    db   $ab, $5c, $0a, $04, $ff, $ff, $94, $5d        ;; 04:4ee1 ????????
    db   $e8, $5c, $e8, $5c, $e8, $5c, $0a, $02        ;; 04:4ee9 ????????
    db   $aa, $5d, $b5, $5d, $b5, $5d, $b5, $5d        ;; 04:4ef1 ????????
    db   $10, $02, $aa, $5d, $aa, $5d, $b5, $5d        ;; 04:4ef9 ????????
    db   $b5, $5d, $10, $02, $9f, $5d, $3e, $5d        ;; 04:4f01 ????????
    db   $3e, $5d, $3e, $5d, $10, $02, $aa, $5d        ;; 04:4f09 ????????
    db   $b5, $5d, $b5, $5d, $b5, $5d, $0a, $02        ;; 04:4f11 ????????
    db   $aa, $5d, $aa, $5d, $b5, $5d, $b5, $5d        ;; 04:4f19 ????????
    db   $0a, $02, $9f, $5d, $3e, $5d, $3e, $5d        ;; 04:4f21 ????????
    db   $3e, $5d, $0a, $02, $aa, $5d, $b5, $5d        ;; 04:4f29 ????????
    db   $b5, $5d, $b5, $5d, $04, $02, $aa, $5d        ;; 04:4f31 ????????
    db   $aa, $5d, $b5, $5d, $b5, $5d, $04, $02        ;; 04:4f39 ????????
    db   $94, $5d, $e8, $5c, $e8, $5c, $e8, $5c        ;; 04:4f41 ????????
    db   $04, $02, $ff, $ff, $e8, $5c, $e8, $5c        ;; 04:4f49 ????..??
    db   $e8, $5c, $e8, $5c, $0a, $05, $3e, $5d        ;; 04:4f51 ........
    db   $3e, $5d, $3e, $5d, $3e, $5d, $10, $05        ;; 04:4f59 ????....
    db   $3e, $5d, $3e, $5d, $3e, $5d, $3e, $5d        ;; 04:4f61 ..????..
    db   $0a, $05, $e8, $5c, $e8, $5c, $e8, $5c        ;; 04:4f69 ......??
    db   $e8, $5c, $04, $05, $ff, $ff, $c7, $5d        ;; 04:4f71 ......??
    db   $c7, $5d, $c7, $5d, $c7, $5d, $0a, $02        ;; 04:4f79 ????????
    db   $93, $5e, $a4, $5e, $a4, $5e, $9e, $5e        ;; 04:4f81 ????????
    db   $10, $02, $93, $5e, $93, $5e, $a4, $5e        ;; 04:4f89 ????????
    db   $9e, $5e, $10, $02, $88, $5e, $22, $5e        ;; 04:4f91 ????????
    db   $22, $5e, $22, $5e, $10, $02, $93, $5e        ;; 04:4f99 ????????
    db   $a4, $5e, $a4, $5e, $9e, $5e, $0a, $02        ;; 04:4fa1 ????????
    db   $93, $5e, $93, $5e, $a4, $5e, $9e, $5e        ;; 04:4fa9 ????????
    db   $0a, $02, $22, $5e, $22, $5e, $22, $5e        ;; 04:4fb1 ????????
    db   $22, $5e, $0a, $02, $93, $5e, $a4, $5e        ;; 04:4fb9 ????????
    db   $9e, $5e, $9e, $5e, $04, $02, $93, $5e        ;; 04:4fc1 ????????
    db   $a4, $5e, $a4, $5e, $9e, $5e, $04, $02        ;; 04:4fc9 ????????
    db   $7d, $5e, $c7, $5d, $c7, $5d, $c7, $5d        ;; 04:4fd1 ????????
    db   $04, $02, $ff, $ff, $af, $5e, $af, $5e        ;; 04:4fd9 ????????
    db   $af, $5e, $af, $5e, $0d, $02, $33, $5f        ;; 04:4fe1 ????????
    db   $33, $5f, $33, $5f, $70, $5f, $0d, $06        ;; 04:4fe9 ????????
    db   $33, $5f, $33, $5f, $70, $5f, $70, $5f        ;; 04:4ff1 ????????
    db   $0d, $06, $af, $5e, $af, $5e, $af, $5e        ;; 04:4ff9 ????????
    db   $af, $5e, $0d, $06, $33, $5f, $33, $5f        ;; 04:5001 ????????
    db   $33, $5f, $70, $5f, $0d, $0a, $33, $5f        ;; 04:5009 ????????
    db   $33, $5f, $70, $5f, $70, $5f, $0d, $0a        ;; 04:5011 ????????
    db   $f1, $5e, $f1, $5e, $f1, $5e, $f1, $5e        ;; 04:5019 ????????
    db   $0d, $0a, $33, $5f, $33, $5f, $70, $5f        ;; 04:5021 ????????
    db   $70, $5f, $0d, $06, $f1, $5e, $f1, $5e        ;; 04:5029 ????????
    db   $f1, $5e, $f1, $5e, $0d, $06, $33, $5f        ;; 04:5031 ????????
    db   $33, $5f, $70, $5f, $70, $5f, $0d, $02        ;; 04:5039 ????????
    db   $33, $5f, $70, $5f, $70, $5f, $70, $5f        ;; 04:5041 ????????
    db   $0d, $02, $ff, $ff, $21, $60, $21, $60        ;; 04:5049 ????????
    db   $21, $60, $21, $60, $0a, $04, $ba, $60        ;; 04:5051 ????????
    db   $ba, $60, $ba, $60, $ba, $60, $0e, $04        ;; 04:5059 ????????
    db   $36, $60, $36, $60, $36, $60, $36, $60        ;; 04:5061 ????????
    db   $0e, $04, $da, $5f, $da, $5f, $29, $61        ;; 04:5069 ????????
    db   $66, $61, $0a, $04, $36, $60, $36, $60        ;; 04:5071 ????????
    db   $36, $60, $36, $60, $0a, $04, $4b, $60        ;; 04:5079 ????????
    db   $4b, $60, $4b, $60, $4b, $60, $06, $04        ;; 04:5081 ????????
    db   $21, $60, $21, $60, $21, $60, $21, $60        ;; 04:5089 ????????
    db   $06, $04, $da, $5f, $da, $5f, $29, $61        ;; 04:5091 ????????
    db   $66, $61, $0a, $04, $ff, $ff, $a3, $61        ;; 04:5099 ????????
    db   $a3, $61, $a3, $61, $a3, $61, $10, $02        ;; 04:50a1 ????????
    db   $e1, $61, $e1, $61, $e1, $61, $e1, $61        ;; 04:50a9 ????????
    db   $10, $05, $a3, $61, $a3, $61, $a3, $61        ;; 04:50b1 ????????
    db   $a3, $61, $10, $05, $e1, $61, $e1, $61        ;; 04:50b9 ????????
    db   $e1, $61, $e1, $61, $10, $08, $c2, $61        ;; 04:50c1 ????????
    db   $c2, $61, $c2, $61, $c2, $61, $10, $08        ;; 04:50c9 ????????
    db   $e1, $61, $e1, $61, $e1, $61, $e1, $61        ;; 04:50d1 ????????
    db   $10, $05, $c2, $61, $c2, $61, $c2, $61        ;; 04:50d9 ????????
    db   $c2, $61, $10, $05, $e1, $61, $e1, $61        ;; 04:50e1 ????????
    db   $e1, $61, $e1, $61, $10, $02, $ff, $ff        ;; 04:50e9 ????????
    db   $9d, $62, $9d, $62, $4b, $62, $74, $62        ;; 04:50f1 ????????
    db   $0a, $04, $ff, $ff, $4b, $62, $4b, $62        ;; 04:50f9 ????????
    db   $74, $62, $74, $62, $0a, $04, $3e, $63        ;; 04:5101 ????????
    db   $3e, $63, $3e, $63, $3e, $63, $0a, $04        ;; 04:5109 ????????
    db   $4b, $62, $4b, $62, $74, $62, $74, $62        ;; 04:5111 ????????
    db   $0a, $0c, $67, $63, $67, $63, $67, $63        ;; 04:5119 ????????
    db   $67, $63, $0a, $0c, $ff, $ff, $1e, $64        ;; 04:5121 ????????
    db   $1e, $64, $1e, $64, $48, $64, $04, $02        ;; 04:5129 ????????
    db   $1e, $64, $1e, $64, $48, $64, $48, $64        ;; 04:5131 ????????
    db   $04, $02, $90, $63, $90, $63, $90, $63        ;; 04:5139 ????????
    db   $90, $63, $04, $02, $33, $64, $33, $64        ;; 04:5141 ????????
    db   $33, $64, $7b, $64, $10, $02, $33, $64        ;; 04:5149 ????????
    db   $33, $64, $7b, $64, $7b, $64, $10, $02        ;; 04:5151 ????????
    db   $d7, $63, $d7, $63, $d7, $63, $d7, $63        ;; 04:5159 ????????
    db   $10, $02, $ff, $ff, $ae, $64, $ae, $64        ;; 04:5161 ????????
    db   $9f, $65, $9f, $65, $09, $03, $ff, $ff        ;; 04:5169 ????????
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
    db   $9c, $67, $9c, $67, $b1, $67, $b1, $67        ;; 04:5231 ????????
    db   $08, $0c, $71, $67, $71, $67, $71, $67        ;; 04:5239 ????????
    db   $71, $67, $08, $0c, $7c, $67, $7c, $67        ;; 04:5241 ????????
    db   $c6, $67, $c6, $67, $08, $0c, $91, $67        ;; 04:5249 ????????
    db   $91, $67, $91, $67, $91, $67, $08, $0c        ;; 04:5251 ????????
    db   $ff, $ff, $3b, $68, $3b, $68, $3b, $68        ;; 04:5259 ????????
    db   $3b, $68, $16, $0c, $b6, $68, $b6, $68        ;; 04:5261 ????????
    db   $b6, $68, $b6, $68, $13, $09, $3b, $68        ;; 04:5269 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $10, $06        ;; 04:5271 ????????
    db   $88, $68, $88, $68, $88, $68, $88, $68        ;; 04:5279 ????????
    db   $0d, $03, $b6, $68, $b6, $68, $b6, $68        ;; 04:5281 ????????
    db   $b6, $68, $07, $09, $db, $67, $db, $67        ;; 04:5289 ????????
    db   $db, $67, $db, $67, $04, $06, $3b, $68        ;; 04:5291 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $10, $06        ;; 04:5299 ????????
    db   $b6, $68, $b6, $68, $b6, $68, $b6, $68        ;; 04:52a1 ????????
    db   $0d, $03, $3b, $68, $3b, $68, $3b, $68        ;; 04:52a9 ????????
    db   $3b, $68, $0a, $00, $b6, $68, $b6, $68        ;; 04:52b1 ????????
    db   $b6, $68, $b6, $68, $07, $fd, $b6, $68        ;; 04:52b9 ????????
    db   $b6, $68, $b6, $68, $b6, $68, $0c, $11        ;; 04:52c1 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $3b, $68        ;; 04:52c9 ????????
    db   $09, $0e, $b6, $68, $b6, $68, $b6, $68        ;; 04:52d1 ????????
    db   $b6, $68, $06, $0b, $db, $67, $db, $67        ;; 04:52d9 ????????
    db   $db, $67, $db, $67, $03, $08, $3b, $68        ;; 04:52e1 ????????
    db   $3b, $68, $3b, $68, $3b, $68, $0f, $08        ;; 04:52e9 ????????
    db   $88, $68, $88, $68, $88, $68, $88, $68        ;; 04:52f1 ????????
    db   $0c, $05, $b6, $68, $b6, $68, $b6, $68        ;; 04:52f9 ????????
    db   $b6, $68, $06, $0b, $3b, $68, $3b, $68        ;; 04:5301 ????????
    db   $3b, $68, $3b, $68, $03, $08, $b6, $68        ;; 04:5309 ????????
    db   $b6, $68, $b6, $68, $b6, $68, $00, $05        ;; 04:5311 ????????
    db   $ff, $ff, $d0, $68, $d0, $68, $d0, $68        ;; 04:5319 ????????
    db   $d0, $68, $0a, $02, $f9, $68, $f9, $68        ;; 04:5321 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:5329 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $06, $06        ;; 04:5331 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:5339 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:5341 ????????
    db   $d0, $68, $10, $04, $f9, $68, $f9, $68        ;; 04:5349 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:5351 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $0c, $08        ;; 04:5359 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:5361 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:5369 ????????
    db   $d0, $68, $06, $02, $f9, $68, $f9, $68        ;; 04:5371 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:5379 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $08, $08        ;; 04:5381 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:5389 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:5391 ????????
    db   $d0, $68, $0c, $04, $f9, $68, $f9, $68        ;; 04:5399 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:53a1 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $04, $08        ;; 04:53a9 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:53b1 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:53b9 ????????
    db   $d0, $68, $0e, $06, $f9, $68, $f9, $68        ;; 04:53c1 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:53c9 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $08, $04        ;; 04:53d1 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:53d9 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:53e1 ????????
    db   $d0, $68, $10, $08, $f9, $68, $f9, $68        ;; 04:53e9 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:53f1 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $0a, $06        ;; 04:53f9 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:5401 ????????
    db   $00, $18, $d0, $68, $d0, $68, $d0, $68        ;; 04:5409 ????????
    db   $d0, $68, $0e, $02, $f9, $68, $f9, $68        ;; 04:5411 ????????
    db   $f9, $68, $f9, $68, $00, $18, $d0, $68        ;; 04:5419 ????????
    db   $d0, $68, $d0, $68, $d0, $68, $04, $04        ;; 04:5421 ????????
    db   $f9, $68, $f9, $68, $f9, $68, $f9, $68        ;; 04:5429 ????????
    db   $00, $18, $ff, $ff, $01, $14, $69, $2d        ;; 04:5431 ????????
    db   $76, $01, $14, $69, $43, $76, $01, $14        ;; 04:5439 ????????
    db   $69, $59, $76, $01, $14, $69, $6f, $76        ;; 04:5441 ????????
    db   $01, $14, $69, $43, $76, $01, $14, $69        ;; 04:5449 ????????
    db   $59, $76, $01, $14, $69, $6f, $76, $01        ;; 04:5451 ????????
    db   $3c, $6b, $a2, $78, $01, $3f, $6b, $c1        ;; 04:5459 ????????
    db   $78, $01, $3c, $6b, $e0, $78, $01, $3f        ;; 04:5461 ????????
    db   $6b, $ff, $78, $01, $3f, $6b, $1e, $79        ;; 04:5469 ????????
    db   $ff, $ff, $01, $3c, $6b, $85, $76, $01        ;; 04:5471 ??......
    db   $3f, $6b, $95, $76, $01, $3c, $6b, $a5        ;; 04:5479 ........
    db   $76, $01, $3f, $6b, $b5, $76, $01, $3c        ;; 04:5481 ........
    db   $6b, $c5, $76, $01, $3f, $6b, $95, $76        ;; 04:5489 ........
    db   $01, $3c, $6b, $a5, $76, $01, $3f, $6b        ;; 04:5491 ........
    db   $b5, $76, $01, $3c, $6b, $c5, $76, $01        ;; 04:5499 ........
    db   $3f, $6b, $a2, $78, $01, $3c, $6b, $c1        ;; 04:54a1 ........
    db   $78, $01, $3f, $6b, $e0, $78, $01, $3c        ;; 04:54a9 ........
    db   $6b, $ff, $78, $01, $3f, $6b, $1e, $79        ;; 04:54b1 ........
    db   $ff, $ff, $01, $1d, $69, $d5, $76, $01        ;; 04:54b9 .???????
    db   $1d, $69, $e8, $76, $01, $1d, $69, $fb        ;; 04:54c1 ????????
    db   $76, $01, $1d, $69, $0e, $77, $01, $1d        ;; 04:54c9 ????????
    db   $69, $21, $77, $01, $1d, $69, $e8, $76        ;; 04:54d1 ????????
    db   $01, $1d, $69, $fb, $76, $01, $1d, $69        ;; 04:54d9 ????????
    db   $0e, $77, $01, $1d, $69, $21, $77, $01        ;; 04:54e1 ????????
    db   $3c, $6b, $a2, $78, $01, $3c, $6b, $c1        ;; 04:54e9 ????????
    db   $78, $01, $3c, $6b, $e0, $78, $01, $3c        ;; 04:54f1 ????????
    db   $6b, $ff, $78, $01, $3c, $6b, $1e, $79        ;; 04:54f9 ????????
    db   $ff, $ff, $01, $1d, $69, $34, $77, $01        ;; 04:5501 ????????
    db   $1d, $69, $3e, $77, $01, $1d, $69, $48        ;; 04:5509 ????????
    db   $77, $01, $1d, $69, $52, $77, $01, $1d        ;; 04:5511 ????????
    db   $69, $3e, $77, $01, $1d, $69, $48, $77        ;; 04:5519 ????????
    db   $01, $1d, $69, $52, $77, $01, $3c, $6b        ;; 04:5521 ????????
    db   $a2, $78, $01, $3f, $6b, $c1, $78, $01        ;; 04:5529 ????????
    db   $3c, $6b, $e0, $78, $01, $3f, $6b, $ff        ;; 04:5531 ????????
    db   $78, $01, $3c, $6b, $1e, $79, $ff, $ff        ;; 04:5539 ????????
    db   $01, $ca, $6a, $f8, $74, $01, $ca, $6a        ;; 04:5541 ????????
    db   $17, $75, $01, $ca, $6a, $36, $75, $01        ;; 04:5549 ????????
    db   $ca, $6a, $55, $75, $01, $ca, $6a, $74        ;; 04:5551 ????????
    db   $75, $01, $3c, $6b, $a2, $78, $01, $3f        ;; 04:5559 ????????
    db   $6b, $c1, $78, $01, $3c, $6b, $e0, $78        ;; 04:5561 ????????
    db   $01, $3f, $6b, $ff, $78, $01, $3c, $6b        ;; 04:5569 ????????
    db   $1e, $79, $ff, $ff, $01, $1d, $69, $44        ;; 04:5571 ????????
    db   $6d, $01, $1d, $69, $5a, $6d, $01, $1d        ;; 04:5579 ????????
    db   $69, $70, $6d, $01, $1d, $69, $86, $6d        ;; 04:5581 ????????
    db   $01, $1d, $69, $5a, $6d, $01, $1d, $69        ;; 04:5589 ????????
    db   $70, $6d, $01, $1d, $69, $86, $6d, $01        ;; 04:5591 ????????
    db   $3c, $6b, $a2, $78, $01, $3f, $6b, $c1        ;; 04:5599 ????????
    db   $78, $01, $3c, $6b, $e0, $78, $01, $3f        ;; 04:55a1 ????????
    db   $6b, $ff, $78, $01, $3c, $6b, $1e, $79        ;; 04:55a9 ????????
    db   $ff, $ff, $01, $1d, $69, $47, $6f, $01        ;; 04:55b1 ????????
    db   $1d, $69, $57, $6f, $01, $1d, $69, $67        ;; 04:55b9 ????????
    db   $6f, $01, $1d, $69, $77, $6f, $01, $1d        ;; 04:55c1 ????????
    db   $69, $57, $6f, $01, $1d, $69, $67, $6f        ;; 04:55c9 ????????
    db   $01, $1d, $69, $77, $6f, $01, $3c, $6b        ;; 04:55d1 ????????
    db   $a2, $78, $01, $3f, $6b, $c1, $78, $01        ;; 04:55d9 ????????
    db   $3c, $6b, $e0, $78, $01, $3f, $6b, $ff        ;; 04:55e1 ????????
    db   $78, $01, $3c, $6b, $1e, $79, $ff, $ff        ;; 04:55e9 ????????
    db   $01, $14, $69, $29, $6e, $01, $14, $69        ;; 04:55f1 ????????
    db   $48, $6e, $01, $14, $69, $67, $6e, $01        ;; 04:55f9 ????????
    db   $14, $69, $86, $6e, $01, $14, $69, $48        ;; 04:5601 ????????
    db   $6e, $01, $14, $69, $67, $6e, $01, $14        ;; 04:5609 ????????
    db   $69, $86, $6e, $01, $3c, $6b, $a2, $78        ;; 04:5611 ????????
    db   $01, $3f, $6b, $c1, $78, $01, $3c, $6b        ;; 04:5619 ????????
    db   $e0, $78, $01, $3f, $6b, $ff, $78, $01        ;; 04:5621 ????????
    db   $3c, $6b, $1e, $79, $ff, $ff, $01, $1d        ;; 04:5629 ????????
    db   $69, $9e, $77, $01, $1d, $69, $5c, $77        ;; 04:5631 ????????
    db   $01, $1d, $69, $72, $77, $01, $1d, $69        ;; 04:5639 ????????
    db   $88, $77, $01, $1d, $69, $5c, $77, $01        ;; 04:5641 ????????
    db   $1d, $69, $72, $77, $01, $1d, $69, $88        ;; 04:5649 ????????
    db   $77, $01, $3c, $6b, $a2, $78, $01, $3f        ;; 04:5651 ????????
    db   $6b, $c1, $78, $01, $3c, $6b, $e0, $78        ;; 04:5659 ????????
    db   $01, $3f, $6b, $ff, $78, $01, $3c, $6b        ;; 04:5661 ????????
    db   $1e, $79, $ff, $ff, $01, $3c, $6b, $b4        ;; 04:5669 ????????
    db   $77, $01, $3f, $6b, $c7, $77, $01, $3c        ;; 04:5671 ????????
    db   $6b, $da, $77, $01, $3f, $6b, $ed, $77        ;; 04:5679 ????????
    db   $01, $3f, $6b, $c7, $77, $01, $3c, $6b        ;; 04:5681 ????????
    db   $da, $77, $01, $3f, $6b, $ed, $77, $01        ;; 04:5689 ????????
    db   $3f, $6b, $a2, $78, $01, $3c, $6b, $c1        ;; 04:5691 ????????
    db   $78, $01, $3f, $6b, $e0, $78, $01, $3c        ;; 04:5699 ????????
    db   $6b, $ff, $78, $01, $3f, $6b, $1e, $79        ;; 04:56a1 ????????
    db   $ff, $ff, $01, $52, $6a, $89, $78, $ff        ;; 04:56a9 ????????
    db   $ff, $01, $52, $6a, $00, $78, $ff, $ff        ;; 04:56b1 ????????
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
    db   $6d, $01, $26, $69, $2e, $6d, $ff, $01        ;; 04:5ce1 ???????.
    db   $a7, $69, $ac, $6d, $04, $14, $69, $ac        ;; 04:5ce9 ........
    db   $6d, $01, $aa, $69, $9c, $6d, $04, $17        ;; 04:5cf1 ........
    db   $69, $9c, $6d, $01, $ad, $69, $ac, $6d        ;; 04:5cf9 ........
    db   $04, $14, $69, $ac, $6d, $01, $b0, $69        ;; 04:5d01 ........
    db   $9c, $6d, $04, $17, $69, $9c, $6d, $01        ;; 04:5d09 ........
    db   $b3, $69, $ac, $6d, $04, $14, $69, $ac        ;; 04:5d11 ........
    db   $6d, $01, $b6, $69, $9c, $6d, $04, $17        ;; 04:5d19 ........
    db   $69, $9c, $6d, $01, $b9, $69, $ac, $6d        ;; 04:5d21 ........
    db   $04, $14, $69, $ac, $6d, $01, $bc, $69        ;; 04:5d29 ........
    db   $9c, $6d, $04, $17, $69, $9c, $6d, $01        ;; 04:5d31 ........
    db   $bf, $69, $ac, $6d, $ff, $01, $c2, $69        ;; 04:5d39 ........
    db   $9c, $6d, $04, $17, $69, $9c, $6d, $01        ;; 04:5d41 ........
    db   $c5, $69, $ac, $6d, $04, $14, $69, $ac        ;; 04:5d49 ........
    db   $6d, $01, $c8, $69, $9c, $6d, $04, $17        ;; 04:5d51 ........
    db   $69, $9c, $6d, $01, $cb, $69, $ac, $6d        ;; 04:5d59 ........
    db   $04, $14, $69, $ac, $6d, $01, $ce, $69        ;; 04:5d61 ........
    db   $9c, $6d, $04, $17, $69, $9c, $6d, $01        ;; 04:5d69 ........
    db   $d1, $69, $ac, $6d, $04, $14, $69, $ac        ;; 04:5d71 ........
    db   $6d, $01, $d4, $69, $9c, $6d, $04, $17        ;; 04:5d79 ........
    db   $69, $9c, $6d, $01, $d7, $69, $ac, $6d        ;; 04:5d81 ........
    db   $04, $14, $69, $ac, $6d, $01, $da, $69        ;; 04:5d89 ........
    db   $9c, $6d, $ff, $0c, $e3, $69, $bc, $6d        ;; 04:5d91 ...?????
    db   $0c, $e0, $69, $bc, $6d, $ff, $0c, $e6        ;; 04:5d99 ????????
    db   $69, $bc, $6d, $0c, $e0, $69, $bc, $6d        ;; 04:5da1 ????????
    db   $ff, $0c, $dd, $69, $bc, $6d, $0c, $e0        ;; 04:5da9 ????????
    db   $69, $bc, $6d, $ff, $02, $14, $69, $ac        ;; 04:5db1 ????????
    db   $6d, $ff, $02, $17, $69, $9c, $6d, $ff        ;; 04:5db9 ????????
    db   $04, $dd, $69, $bc, $6d, $ff, $01, $a7        ;; 04:5dc1 ......??
    db   $69, $cc, $6d, $01, $14, $69, $cc, $6d        ;; 04:5dc9 ????????
    db   $01, $aa, $69, $cc, $6d, $01, $17, $69        ;; 04:5dd1 ????????
    db   $cc, $6d, $01, $17, $69, $eb, $6d, $01        ;; 04:5dd9 ????????
    db   $ad, $69, $cc, $6d, $01, $14, $69, $cc        ;; 04:5de1 ????????
    db   $6d, $01, $b0, $69, $cc, $6d, $01, $17        ;; 04:5de9 ????????
    db   $69, $cc, $6d, $01, $b3, $69, $cc, $6d        ;; 04:5df1 ????????
    db   $01, $14, $69, $cc, $6d, $01, $b6, $69        ;; 04:5df9 ????????
    db   $cc, $6d, $01, $17, $69, $cc, $6d, $01        ;; 04:5e01 ????????
    db   $b9, $69, $cc, $6d, $01, $14, $69, $cc        ;; 04:5e09 ????????
    db   $6d, $01, $bc, $69, $cc, $6d, $01, $17        ;; 04:5e11 ????????
    db   $69, $cc, $6d, $01, $bf, $69, $cc, $6d        ;; 04:5e19 ????????
    db   $ff, $01, $c2, $69, $cc, $6d, $01, $17        ;; 04:5e21 ????????
    db   $69, $cc, $6d, $01, $c5, $69, $cc, $6d        ;; 04:5e29 ????????
    db   $01, $14, $69, $cc, $6d, $01, $c8, $69        ;; 04:5e31 ????????
    db   $cc, $6d, $01, $17, $69, $cc, $6d, $01        ;; 04:5e39 ????????
    db   $cb, $69, $cc, $6d, $01, $14, $69, $cc        ;; 04:5e41 ????????
    db   $6d, $01, $17, $69, $eb, $6d, $01, $ce        ;; 04:5e49 ????????
    db   $69, $cc, $6d, $01, $17, $69, $cc, $6d        ;; 04:5e51 ????????
    db   $01, $d1, $69, $cc, $6d, $01, $14, $69        ;; 04:5e59 ????????
    db   $cc, $6d, $01, $d4, $69, $cc, $6d, $01        ;; 04:5e61 ????????
    db   $17, $69, $cc, $6d, $01, $d7, $69, $cc        ;; 04:5e69 ????????
    db   $6d, $01, $14, $69, $cc, $6d, $01, $da        ;; 04:5e71 ????????
    db   $69, $cc, $6d, $ff, $0c, $e3, $69, $0a        ;; 04:5e79 ????????
    db   $6e, $0c, $e0, $69, $0a, $6e, $ff, $0c        ;; 04:5e81 ????????
    db   $e6, $69, $0a, $6e, $0c, $e0, $69, $0a        ;; 04:5e89 ????????
    db   $6e, $ff, $0c, $dd, $69, $0a, $6e, $0c        ;; 04:5e91 ????????
    db   $e0, $69, $0a, $6e, $ff, $02, $14, $69        ;; 04:5e99 ????????
    db   $cc, $6d, $ff, $01, $14, $69, $cc, $6d        ;; 04:5ea1 ????????
    db   $01, $17, $69, $eb, $6d, $ff, $01, $3e        ;; 04:5ea9 ????????
    db   $69, $de, $6e, $01, $3e, $69, $cb, $6e        ;; 04:5eb1 ????????
    db   $01, $3e, $69, $b8, $6e, $02, $3e, $69        ;; 04:5eb9 ????????
    db   $a5, $6e, $01, $3e, $69, $b8, $6e, $01        ;; 04:5ec1 ????????
    db   $3e, $69, $cb, $6e, $02, $3e, $69, $de        ;; 04:5ec9 ????????
    db   $6e, $01, $3e, $69, $cb, $6e, $01, $7d        ;; 04:5ed1 ????????
    db   $69, $b8, $6e, $02, $7d, $69, $a5, $6e        ;; 04:5ed9 ????????
    db   $01, $7d, $69, $b8, $6e, $01, $7d, $69        ;; 04:5ee1 ????????
    db   $cb, $6e, $01, $7d, $69, $de, $6e, $ff        ;; 04:5ee9 ????????
    db   $01, $6b, $69, $de, $6e, $01, $6b, $69        ;; 04:5ef1 ????????
    db   $cb, $6e, $01, $6b, $69, $b8, $6e, $02        ;; 04:5ef9 ????????
    db   $6b, $69, $a5, $6e, $01, $6b, $69, $b8        ;; 04:5f01 ????????
    db   $6e, $01, $6b, $69, $cb, $6e, $02, $6b        ;; 04:5f09 ????????
    db   $69, $de, $6e, $01, $6b, $69, $cb, $6e        ;; 04:5f11 ????????
    db   $01, $56, $69, $b8, $6e, $02, $56, $69        ;; 04:5f19 ????????
    db   $a5, $6e, $01, $56, $69, $b8, $6e, $01        ;; 04:5f21 ????????
    db   $56, $69, $cb, $6e, $01, $56, $69, $de        ;; 04:5f29 ????????
    db   $6e, $ff, $01, $1d, $69, $de, $6e, $01        ;; 04:5f31 ????????
    db   $1d, $69, $cb, $6e, $01, $1d, $69, $b8        ;; 04:5f39 ????????
    db   $6e, $01, $1d, $69, $a5, $6e, $01, $1d        ;; 04:5f41 ????????
    db   $69, $b8, $6e, $01, $1d, $69, $cb, $6e        ;; 04:5f49 ????????
    db   $01, $1d, $69, $de, $6e, $01, $1d, $69        ;; 04:5f51 ????????
    db   $cb, $6e, $01, $1d, $69, $b8, $6e, $01        ;; 04:5f59 ????????
    db   $1d, $69, $a5, $6e, $01, $1d, $69, $b8        ;; 04:5f61 ????????
    db   $6e, $01, $1d, $69, $cb, $6e, $ff, $01        ;; 04:5f69 ????????
    db   $e9, $69, $de, $6e, $01, $ec, $69, $cb        ;; 04:5f71 ????????
    db   $6e, $01, $ef, $69, $b8, $6e, $01, $f2        ;; 04:5f79 ????????
    db   $69, $a5, $6e, $01, $f5, $69, $a5, $6e        ;; 04:5f81 ????????
    db   $01, $f5, $69, $b8, $6e, $01, $f5, $69        ;; 04:5f89 ????????
    db   $cb, $6e, $01, $f5, $69, $de, $6e, $01        ;; 04:5f91 ????????
    db   $f5, $69, $cb, $6e, $01, $f5, $69, $b8        ;; 04:5f99 ????????
    db   $6e, $01, $f5, $69, $a5, $6e, $01, $f5        ;; 04:5fa1 ????????
    db   $69, $b8, $6e, $01, $14, $69, $f1, $6e        ;; 04:5fa9 ????????
    db   $03, $14, $69, $04, $6f, $01, $14, $69        ;; 04:5fb1 ????????
    db   $f1, $6e, $01, $e9, $69, $cb, $6e, $01        ;; 04:5fb9 ????????
    db   $e9, $69, $b8, $6e, $01, $e9, $69, $a5        ;; 04:5fc1 ????????
    db   $6e, $01, $e9, $69, $b8, $6e, $01, $e9        ;; 04:5fc9 ????????
    db   $69, $cb, $6e, $01, $e9, $69, $de, $6e        ;; 04:5fd1 ????????
    db   $ff, $02, $23, $69, $17, $6f, $02, $a4        ;; 04:5fd9 ????????
    db   $69, $27, $6f, $02, $23, $69, $17, $6f        ;; 04:5fe1 ????????
    db   $02, $a4, $69, $27, $6f, $02, $14, $69        ;; 04:5fe9 ????????
    db   $27, $6f, $02, $02, $69, $17, $6f, $01        ;; 04:5ff1 ????????
    db   $14, $69, $27, $6f, $01, $14, $69, $37        ;; 04:5ff9 ????????
    db   $6f, $02, $02, $69, $17, $6f, $02, $14        ;; 04:6001 ????????
    db   $69, $27, $6f, $02, $20, $69, $17, $6f        ;; 04:6009 ????????
    db   $02, $a1, $69, $27, $6f, $02, $20, $69        ;; 04:6011 ????????
    db   $17, $6f, $02, $a1, $69, $27, $6f, $ff        ;; 04:6019 ????????
    db   $02, $26, $69, $17, $6f, $02, $29, $69        ;; 04:6021 ????????
    db   $27, $6f, $02, $26, $69, $17, $6f, $02        ;; 04:6029 ????????
    db   $29, $69, $27, $6f, $ff, $02, $2c, $69        ;; 04:6031 ????????
    db   $17, $6f, $02, $2f, $69, $27, $6f, $02        ;; 04:6039 ????????
    db   $2c, $69, $17, $6f, $02, $2f, $69, $27        ;; 04:6041 ????????
    db   $6f, $ff, $01, $4a, $69, $17, $6f, $01        ;; 04:6049 ????????
    db   $4d, $69, $17, $6f, $01, $50, $69, $27        ;; 04:6051 ????????
    db   $6f, $01, $53, $69, $27, $6f, $02, $56        ;; 04:6059 ????????
    db   $69, $17, $6f, $01, $59, $69, $27, $6f        ;; 04:6061 ????????
    db   $01, $5c, $69, $27, $6f, $01, $5f, $69        ;; 04:6069 ????????
    db   $17, $6f, $02, $14, $69, $27, $6f, $02        ;; 04:6071 ????????
    db   $02, $69, $17, $6f, $01, $14, $69, $27        ;; 04:6079 ????????
    db   $6f, $01, $14, $69, $37, $6f, $02, $02        ;; 04:6081 ????????
    db   $69, $17, $6f, $02, $14, $69, $27, $6f        ;; 04:6089 ????????
    db   $01, $32, $69, $17, $6f, $01, $35, $69        ;; 04:6091 ????????
    db   $17, $6f, $01, $38, $69, $27, $6f, $01        ;; 04:6099 ????????
    db   $3b, $69, $27, $6f, $02, $3e, $69, $17        ;; 04:60a1 ????????
    db   $6f, $01, $41, $69, $27, $6f, $01, $44        ;; 04:60a9 ????????
    db   $69, $27, $6f, $01, $47, $69, $17, $6f        ;; 04:60b1 ????????
    db   $ff, $01, $47, $69, $17, $6f, $01, $8c        ;; 04:60b9 ????????
    db   $69, $17, $6f, $01, $6e, $69, $27, $6f        ;; 04:60c1 ????????
    db   $01, $68, $69, $27, $6f, $02, $6b, $69        ;; 04:60c9 ????????
    db   $17, $6f, $01, $65, $69, $27, $6f, $01        ;; 04:60d1 ????????
    db   $8f, $69, $27, $6f, $01, $5f, $69, $17        ;; 04:60d9 ????????
    db   $6f, $02, $14, $69, $27, $6f, $02, $02        ;; 04:60e1 ????????
    db   $69, $17, $6f, $01, $14, $69, $27, $6f        ;; 04:60e9 ????????
    db   $01, $14, $69, $37, $6f, $02, $02, $69        ;; 04:60f1 ????????
    db   $17, $6f, $02, $14, $69, $27, $6f, $01        ;; 04:60f9 ????????
    db   $32, $69, $17, $6f, $01, $86, $69, $17        ;; 04:6101 ????????
    db   $6f, $01, $80, $69, $27, $6f, $01, $7a        ;; 04:6109 ????????
    db   $69, $27, $6f, $02, $7d, $69, $17, $6f        ;; 04:6111 ????????
    db   $01, $77, $69, $27, $6f, $01, $89, $69        ;; 04:6119 ????????
    db   $27, $6f, $01, $4a, $69, $17, $6f, $ff        ;; 04:6121 ????????
    db   $08, $0b, $69, $17, $6f, $10, $11, $69        ;; 04:6129 ????????
    db   $17, $6f, $02, $0b, $69, $17, $6f, $02        ;; 04:6131 ????????
    db   $fb, $69, $27, $6f, $02, $0b, $69, $17        ;; 04:6139 ????????
    db   $6f, $02, $fb, $69, $27, $6f, $02, $08        ;; 04:6141 ????????
    db   $69, $17, $6f, $02, $f8, $69, $27, $6f        ;; 04:6149 ????????
    db   $02, $08, $69, $17, $6f, $02, $f8, $69        ;; 04:6151 ????????
    db   $27, $6f, $10, $0e, $69, $17, $6f, $08        ;; 04:6159 ????????
    db   $08, $69, $17, $6f, $ff, $08, $11, $69        ;; 04:6161 ????????
    db   $17, $6f, $10, $0b, $69, $17, $6f, $02        ;; 04:6169 ????????
    db   $11, $69, $17, $6f, $02, $01, $6a, $27        ;; 04:6171 ????????
    db   $6f, $02, $11, $69, $17, $6f, $02, $01        ;; 04:6179 ????????
    db   $6a, $27, $6f, $02, $0e, $69, $17, $6f        ;; 04:6181 ????????
    db   $02, $fe, $69, $27, $6f, $02, $0e, $69        ;; 04:6189 ????????
    db   $17, $6f, $02, $fe, $69, $27, $6f, $10        ;; 04:6191 ????????
    db   $08, $69, $17, $6f, $08, $0e, $69, $17        ;; 04:6199 ????????
    db   $6f, $ff, $02, $20, $69, $87, $6f, $02        ;; 04:61a1 ????????
    db   $20, $69, $a0, $6f, $02, $20, $69, $04        ;; 04:61a9 ????????
    db   $70, $02, $20, $69, $d2, $6f, $02, $20        ;; 04:61b1 ????????
    db   $69, $87, $6f, $02, $20, $69, $a0, $6f        ;; 04:61b9 ????????
    db   $ff, $02, $23, $69, $87, $6f, $02, $23        ;; 04:61c1 ????????
    db   $69, $a0, $6f, $02, $23, $69, $04, $70        ;; 04:61c9 ????????
    db   $02, $23, $69, $d2, $6f, $02, $23, $69        ;; 04:61d1 ????????
    db   $87, $6f, $02, $23, $69, $a0, $6f, $ff        ;; 04:61d9 ????????
    db   $01, $6a, $6a, $87, $6f, $01, $6a, $6a        ;; 04:61e1 ????????
    db   $a0, $6f, $01, $6a, $6a, $b9, $6f, $01        ;; 04:61e9 ????????
    db   $6a, $6a, $d2, $6f, $01, $6a, $6a, $87        ;; 04:61f1 ????????
    db   $6f, $01, $6a, $6a, $a0, $6f, $01, $6a        ;; 04:61f9 ????????
    db   $6a, $b9, $6f, $01, $6a, $6a, $d2, $6f        ;; 04:6201 ????????
    db   $01, $6a, $6a, $87, $6f, $01, $6a, $6a        ;; 04:6209 ????????
    db   $a0, $6f, $04, $1d, $69, $eb, $6f, $01        ;; 04:6211 ????????
    db   $6d, $6a, $87, $6f, $01, $6d, $6a, $a0        ;; 04:6219 ????????
    db   $6f, $01, $6d, $6a, $b9, $6f, $01, $6d        ;; 04:6221 ????????
    db   $6a, $d2, $6f, $01, $6d, $6a, $87, $6f        ;; 04:6229 ????????
    db   $01, $6d, $6a, $a0, $6f, $01, $6d, $6a        ;; 04:6231 ????????
    db   $b9, $6f, $01, $6d, $6a, $d2, $6f, $01        ;; 04:6239 ????????
    db   $6d, $6a, $87, $6f, $01, $6d, $6a, $a0        ;; 04:6241 ????????
    db   $6f, $ff, $02, $26, $69, $1d, $70, $02        ;; 04:6249 ????????
    db   $29, $69, $30, $70, $02, $26, $69, $1d        ;; 04:6251 ????????
    db   $70, $02, $29, $69, $30, $70, $02, $2c        ;; 04:6259 ????????
    db   $69, $1d, $70, $02, $2f, $69, $30, $70        ;; 04:6261 ????????
    db   $02, $2c, $69, $1d, $70, $02, $2f, $69        ;; 04:6269 ????????
    db   $30, $70, $ff, $02, $2c, $69, $1d, $70        ;; 04:6271 ????????
    db   $02, $2f, $69, $30, $70, $02, $2c, $69        ;; 04:6279 ????????
    db   $1d, $70, $02, $2f, $69, $30, $70, $02        ;; 04:6281 ????????
    db   $26, $69, $1d, $70, $02, $29, $69, $30        ;; 04:6289 ????????
    db   $70, $02, $26, $69, $1d, $70, $02, $29        ;; 04:6291 ????????
    db   $69, $30, $70, $ff, $02, $0b, $69, $43        ;; 04:6299 ????????
    db   $70, $02, $fb, $69, $56, $70, $02, $0b        ;; 04:62a1 ????????
    db   $69, $43, $70, $02, $fb, $69, $56, $70        ;; 04:62a9 ????????
    db   $02, $11, $69, $43, $70, $02, $01, $6a        ;; 04:62b1 ????????
    db   $56, $70, $02, $11, $69, $43, $70, $02        ;; 04:62b9 ????????
    db   $01, $6a, $56, $70, $02, $11, $69, $43        ;; 04:62c1 ????????
    db   $70, $02, $01, $6a, $56, $70, $02, $11        ;; 04:62c9 ????????
    db   $69, $43, $70, $02, $01, $6a, $56, $70        ;; 04:62d1 ????????
    db   $02, $0b, $69, $43, $70, $02, $fb, $69        ;; 04:62d9 ????????
    db   $56, $70, $02, $0b, $69, $43, $70, $02        ;; 04:62e1 ????????
    db   $fb, $69, $56, $70, $02, $08, $69, $43        ;; 04:62e9 ????????
    db   $70, $02, $f8, $69, $56, $70, $02, $08        ;; 04:62f1 ????????
    db   $69, $43, $70, $02, $f8, $69, $56, $70        ;; 04:62f9 ????????
    db   $02, $0e, $69, $43, $70, $02, $fe, $69        ;; 04:6301 ????????
    db   $56, $70, $02, $0e, $69, $43, $70, $02        ;; 04:6309 ????????
    db   $fe, $69, $56, $70, $02, $0e, $69, $43        ;; 04:6311 ????????
    db   $70, $02, $fe, $69, $56, $70, $02, $0e        ;; 04:6319 ????????
    db   $69, $43, $70, $02, $fe, $69, $56, $70        ;; 04:6321 ????????
    db   $02, $08, $69, $43, $70, $02, $f8, $69        ;; 04:6329 ????????
    db   $56, $70, $02, $08, $69, $43, $70, $02        ;; 04:6331 ????????
    db   $f8, $69, $56, $70, $ff, $02, $0a, $6a        ;; 04:6339 ????????
    db   $1d, $70, $02, $0d, $6a, $30, $70, $02        ;; 04:6341 ????????
    db   $0a, $6a, $1d, $70, $02, $0d, $6a, $30        ;; 04:6349 ????????
    db   $70, $02, $04, $6a, $1d, $70, $02, $07        ;; 04:6351 ????????
    db   $6a, $30, $70, $02, $04, $6a, $1d, $70        ;; 04:6359 ????????
    db   $02, $07, $6a, $30, $70, $ff, $02, $10        ;; 04:6361 ????????
    db   $6a, $1d, $70, $02, $13, $6a, $30, $70        ;; 04:6369 ????????
    db   $02, $10, $6a, $1d, $70, $02, $13, $6a        ;; 04:6371 ????????
    db   $30, $70, $02, $16, $6a, $1d, $70, $02        ;; 04:6379 ????????
    db   $19, $6a, $30, $70, $02, $16, $6a, $1d        ;; 04:6381 ????????
    db   $70, $02, $19, $6a, $30, $70, $ff, $0a        ;; 04:6389 ????????
    db   $3a, $6a, $69, $70, $02, $43, $6a, $95        ;; 04:6391 ????????
    db   $70, $02, $40, $6a, $69, $70, $02, $49        ;; 04:6399 ????????
    db   $6a, $95, $70, $02, $46, $6a, $69, $70        ;; 04:63a1 ????????
    db   $02, $49, $6a, $95, $70, $02, $46, $6a        ;; 04:63a9 ????????
    db   $69, $70, $02, $49, $6a, $95, $70, $04        ;; 04:63b1 ????????
    db   $4c, $6a, $69, $70, $04, $4f, $6a, $95        ;; 04:63b9 ????????
    db   $70, $04, $4c, $6a, $69, $70, $04, $4f        ;; 04:63c1 ????????
    db   $6a, $95, $70, $04, $4c, $6a, $69, $70        ;; 04:63c9 ????????
    db   $04, $4f, $6a, $95, $70, $ff, $0a, $1c        ;; 04:63d1 ????????
    db   $6a, $7f, $70, $02, $25, $6a, $ab, $70        ;; 04:63d9 ????????
    db   $02, $22, $6a, $7f, $70, $02, $2b, $6a        ;; 04:63e1 ????????
    db   $ab, $70, $02, $28, $6a, $7f, $70, $02        ;; 04:63e9 ????????
    db   $2b, $6a, $ab, $70, $02, $28, $6a, $7f        ;; 04:63f1 ????????
    db   $70, $02, $2b, $6a, $ab, $70, $04, $2e        ;; 04:63f9 ????????
    db   $6a, $7f, $70, $04, $31, $6a, $ab, $70        ;; 04:6401 ????????
    db   $04, $2e, $6a, $7f, $70, $04, $31, $6a        ;; 04:6409 ????????
    db   $ab, $70, $04, $2e, $6a, $7f, $70, $04        ;; 04:6411 ????????
    db   $31, $6a, $ab, $70, $ff, $04, $52, $6a        ;; 04:6419 ????????
    db   $69, $70, $04, $55, $6a, $95, $70, $04        ;; 04:6421 ????????
    db   $52, $6a, $69, $70, $04, $55, $6a, $95        ;; 04:6429 ????????
    db   $70, $ff, $04, $34, $6a, $7f, $70, $04        ;; 04:6431 ????????
    db   $37, $6a, $ab, $70, $04, $34, $6a, $7f        ;; 04:6439 ????????
    db   $70, $04, $37, $6a, $ab, $70, $ff, $04        ;; 04:6441 ????????
    db   $52, $6a, $69, $70, $01, $55, $6a, $c1        ;; 04:6449 ????????
    db   $70, $02, $55, $6a, $95, $70, $01, $55        ;; 04:6451 ????????
    db   $6a, $c1, $70, $04, $52, $6a, $69, $70        ;; 04:6459 ????????
    db   $04, $55, $6a, $95, $70, $04, $52, $6a        ;; 04:6461 ????????
    db   $69, $70, $04, $55, $6a, $95, $70, $04        ;; 04:6469 ????????
    db   $52, $6a, $69, $70, $04, $55, $6a, $95        ;; 04:6471 ????????
    db   $70, $ff, $04, $34, $6a, $7f, $70, $01        ;; 04:6479 ????????
    db   $37, $6a, $d7, $70, $02, $37, $6a, $ab        ;; 04:6481 ????????
    db   $70, $01, $37, $6a, $d7, $70, $04, $34        ;; 04:6489 ????????
    db   $6a, $7f, $70, $04, $37, $6a, $ab, $70        ;; 04:6491 ????????
    db   $04, $34, $6a, $7f, $70, $04, $37, $6a        ;; 04:6499 ????????
    db   $ab, $70, $04, $34, $6a, $7f, $70, $04        ;; 04:64a1 ????????
    db   $37, $6a, $ab, $70, $ff, $02, $58, $6a        ;; 04:64a9 ????????
    db   $ed, $70, $02, $58, $6a, $06, $71, $02        ;; 04:64b1 ????????
    db   $58, $6a, $ed, $70, $02, $58, $6a, $1f        ;; 04:64b9 ????????
    db   $71, $02, $58, $6a, $ed, $70, $02, $58        ;; 04:64c1 ????????
    db   $6a, $06, $71, $02, $5e, $6a, $ed, $70        ;; 04:64c9 ????????
    db   $02, $5e, $6a, $06, $71, $02, $5e, $6a        ;; 04:64d1 ????????
    db   $ed, $70, $02, $5e, $6a, $06, $71, $02        ;; 04:64d9 ????????
    db   $a1, $69, $38, $71, $02, $a1, $69, $6a        ;; 04:64e1 ????????
    db   $71, $02, $a1, $69, $38, $71, $02, $a1        ;; 04:64e9 ????????
    db   $69, $51, $71, $02, $64, $6a, $38, $71        ;; 04:64f1 ????????
    db   $02, $64, $6a, $51, $71, $02, $64, $6a        ;; 04:64f9 ????????
    db   $38, $71, $02, $64, $6a, $51, $71, $02        ;; 04:6501 ????????
    db   $67, $6a, $38, $71, $02, $67, $6a, $6a        ;; 04:6509 ????????
    db   $71, $02, $67, $6a, $38, $71, $02, $67        ;; 04:6511 ????????
    db   $6a, $51, $71, $02, $64, $6a, $38, $71        ;; 04:6519 ????????
    db   $02, $64, $6a, $51, $71, $02, $67, $6a        ;; 04:6521 ????????
    db   $38, $71, $02, $67, $6a, $51, $71, $02        ;; 04:6529 ????????
    db   $64, $6a, $38, $71, $02, $64, $6a, $6a        ;; 04:6531 ????????
    db   $71, $02, $64, $6a, $38, $71, $02, $64        ;; 04:6539 ????????
    db   $6a, $51, $71, $02, $67, $6a, $38, $71        ;; 04:6541 ????????
    db   $02, $67, $6a, $51, $71, $02, $67, $6a        ;; 04:6549 ????????
    db   $38, $71, $02, $67, $6a, $51, $71, $02        ;; 04:6551 ????????
    db   $23, $69, $ed, $70, $02, $23, $69, $1f        ;; 04:6559 ????????
    db   $71, $02, $23, $69, $ed, $70, $02, $23        ;; 04:6561 ????????
    db   $69, $06, $71, $02, $61, $6a, $ed, $70        ;; 04:6569 ????????
    db   $02, $61, $6a, $06, $71, $02, $61, $6a        ;; 04:6571 ????????
    db   $ed, $70, $02, $61, $6a, $06, $71, $02        ;; 04:6579 ????????
    db   $58, $6a, $ed, $70, $02, $58, $6a, $06        ;; 04:6581 ????????
    db   $71, $02, $58, $6a, $ed, $70, $02, $58        ;; 04:6589 ????????
    db   $6a, $1f, $71, $02, $58, $6a, $ed, $70        ;; 04:6591 ????????
    db   $02, $58, $6a, $06, $71, $ff, $02, $5b        ;; 04:6599 ????????
    db   $6a, $38, $71, $02, $5b, $6a, $51, $71        ;; 04:65a1 ????????
    db   $02, $5b, $6a, $38, $71, $02, $5b, $6a        ;; 04:65a9 ????????
    db   $6a, $71, $02, $5b, $6a, $38, $71, $02        ;; 04:65b1 ????????
    db   $5b, $6a, $51, $71, $02, $64, $6a, $38        ;; 04:65b9 ????????
    db   $71, $02, $64, $6a, $51, $71, $02, $64        ;; 04:65c1 ????????
    db   $6a, $38, $71, $02, $64, $6a, $51, $71        ;; 04:65c9 ????????
    db   $02, $20, $69, $ed, $70, $02, $20, $69        ;; 04:65d1 ????????
    db   $1f, $71, $02, $20, $69, $ed, $70, $02        ;; 04:65d9 ????????
    db   $20, $69, $06, $71, $02, $5e, $6a, $ed        ;; 04:65e1 ????????
    db   $70, $02, $5e, $6a, $06, $71, $02, $5e        ;; 04:65e9 ????????
    db   $6a, $ed, $70, $02, $5e, $6a, $06, $71        ;; 04:65f1 ????????
    db   $02, $61, $6a, $ed, $70, $02, $61, $6a        ;; 04:65f9 ????????
    db   $06, $71, $02, $61, $6a, $ed, $70, $02        ;; 04:6601 ????????
    db   $61, $6a, $1f, $71, $02, $5e, $6a, $ed        ;; 04:6609 ????????
    db   $70, $02, $5e, $6a, $06, $71, $02, $61        ;; 04:6611 ????????
    db   $6a, $ed, $70, $02, $61, $6a, $06, $71        ;; 04:6619 ????????
    db   $02, $5e, $6a, $ed, $70, $02, $5e, $6a        ;; 04:6621 ????????
    db   $1f, $71, $02, $5e, $6a, $ed, $70, $02        ;; 04:6629 ????????
    db   $5e, $6a, $06, $71, $02, $61, $6a, $ed        ;; 04:6631 ????????
    db   $70, $02, $61, $6a, $06, $71, $02, $61        ;; 04:6639 ????????
    db   $6a, $ed, $70, $02, $61, $6a, $06, $71        ;; 04:6641 ????????
    db   $02, $a4, $69, $38, $71, $02, $a4, $69        ;; 04:6649 ????????
    db   $51, $71, $02, $a4, $69, $38, $71, $02        ;; 04:6651 ????????
    db   $a4, $69, $6a, $71, $02, $67, $6a, $38        ;; 04:6659 ????????
    db   $71, $02, $67, $6a, $51, $71, $02, $67        ;; 04:6661 ????????
    db   $6a, $38, $71, $02, $67, $6a, $51, $71        ;; 04:6669 ????????
    db   $02, $5b, $6a, $38, $71, $02, $5b, $6a        ;; 04:6671 ????????
    db   $51, $71, $02, $5b, $6a, $38, $71, $02        ;; 04:6679 ????????
    db   $5b, $6a, $6a, $71, $02, $5b, $6a, $38        ;; 04:6681 ????????
    db   $71, $02, $5b, $6a, $51, $71, $ff, $01        ;; 04:6689 ????????
    db   $70, $6a, $f5, $71, $01, $73, $6a, $cf        ;; 04:6691 ????????
    db   $71, $01, $76, $6a, $cf, $71, $01, $79        ;; 04:6699 ????????
    db   $6a, $cf, $71, $01, $7c, $6a, $f5, $71        ;; 04:66a1 ????????
    db   $01, $7f, $6a, $83, $71, $01, $82, $6a        ;; 04:66a9 ????????
    db   $96, $71, $01, $85, $6a, $83, $71, $01        ;; 04:66b1 ????????
    db   $88, $6a, $96, $71, $02, $8b, $6a, $83        ;; 04:66b9 ????????
    db   $71, $01, $88, $6a, $96, $71, $01, $85        ;; 04:66c1 ????????
    db   $6a, $83, $71, $01, $82, $6a, $96, $71        ;; 04:66c9 ????????
    db   $01, $7f, $6a, $83, $71, $01, $8e, $6a        ;; 04:66d1 ????????
    db   $96, $71, $01, $91, $6a, $83, $71, $01        ;; 04:66d9 ????????
    db   $94, $6a, $96, $71, $01, $97, $6a, $83        ;; 04:66e1 ????????
    db   $71, $01, $9a, $6a, $96, $71, $ff, $01        ;; 04:66e9 ????????
    db   $9d, $6a, $08, $72, $01, $a0, $6a, $e2        ;; 04:66f1 ????????
    db   $71, $01, $a3, $6a, $e2, $71, $01, $a6        ;; 04:66f9 ????????
    db   $6a, $e2, $71, $01, $a9, $6a, $08, $72        ;; 04:6701 ????????
    db   $ff, $01, $ac, $6a, $a9, $71, $01, $af        ;; 04:6709 ????????
    db   $6a, $bc, $71, $01, $b2, $6a, $a9, $71        ;; 04:6711 ????????
    db   $01, $b5, $6a, $bc, $71, $02, $b8, $6a        ;; 04:6719 ????????
    db   $a9, $71, $01, $b5, $6a, $bc, $71, $01        ;; 04:6721 ????????
    db   $b2, $6a, $a9, $71, $01, $af, $6a, $bc        ;; 04:6729 ????????
    db   $71, $01, $ac, $6a, $a9, $71, $ff, $01        ;; 04:6731 ????????
    db   $bb, $6a, $bc, $71, $01, $be, $6a, $a9        ;; 04:6739 ????????
    db   $71, $01, $c1, $6a, $bc, $71, $01, $c4        ;; 04:6741 ????????
    db   $6a, $a9, $71, $01, $c7, $6a, $bc, $71        ;; 04:6749 ????????
    db   $ff, $02, $37, $6a, $87, $73, $03, $02        ;; 04:6751 ????????
    db   $69, $1b, $72, $02, $1d, $69, $53, $72        ;; 04:6759 ????????
    db   $01, $1d, $69, $8b, $72, $01, $1d, $69        ;; 04:6761 ????????
    db   $a7, $72, $01, $1d, $69, $c3, $72, $ff        ;; 04:6769 ????????
    db   $01, $9e, $69, $df, $72, $01, $9e, $69        ;; 04:6771 ????????
    db   $fb, $72, $ff, $01, $9e, $69, $df, $72        ;; 04:6779 ????????
    db   $03, $9e, $69, $fb, $72, $01, $9e, $69        ;; 04:6781 ????????
    db   $df, $72, $01, $1d, $69, $c3, $72, $ff        ;; 04:6789 ????????
    db   $01, $9e, $69, $df, $72, $01, $1d, $69        ;; 04:6791 ????????
    db   $c3, $72, $ff, $01, $9e, $69, $df, $72        ;; 04:6799 ????????
    db   $03, $1d, $69, $c3, $72, $01, $9e, $69        ;; 04:67a1 ????????
    db   $df, $72, $01, $9e, $69, $fb, $72, $ff        ;; 04:67a9 ????????
    db   $01, $1d, $69, $17, $73, $04, $1d, $69        ;; 04:67b1 ????????
    db   $33, $73, $01, $1d, $69, $17, $73, $01        ;; 04:67b9 ????????
    db   $1d, $69, $c3, $72, $ff, $01, $9e, $69        ;; 04:67c1 ????????
    db   $4f, $73, $04, $9e, $69, $6b, $73, $01        ;; 04:67c9 ????????
    db   $9e, $69, $4f, $73, $01, $9e, $69, $fb        ;; 04:67d1 ????????
    db   $72, $ff, $01, $ca, $6a, $d9, $74, $01        ;; 04:67d9 ????????
    db   $cd, $6a, $d9, $74, $01, $d0, $6a, $d9        ;; 04:67e1 ????????
    db   $74, $01, $d3, $6a, $d9, $74, $01, $d6        ;; 04:67e9 ????????
    db   $6a, $d9, $74, $01, $d9, $6a, $d9, $74        ;; 04:67f1 ????????
    db   $01, $dc, $6a, $d9, $74, $01, $df, $6a        ;; 04:67f9 ????????
    db   $d9, $74, $01, $e2, $6a, $d9, $74, $02        ;; 04:6801 ????????
    db   $e5, $6a, $d9, $74, $01, $e8, $6a, $d9        ;; 04:6809 ????????
    db   $74, $01, $eb, $6a, $d9, $74, $01, $ee        ;; 04:6811 ????????
    db   $6a, $d9, $74, $01, $f1, $6a, $d9, $74        ;; 04:6819 ????????
    db   $01, $f4, $6a, $d9, $74, $01, $f7, $6a        ;; 04:6821 ????????
    db   $d9, $74, $01, $fa, $6a, $d9, $74, $01        ;; 04:6829 ????????
    db   $fd, $6a, $d9, $74, $01, $00, $6b, $d9        ;; 04:6831 ????????
    db   $74, $ff, $01, $03, $6b, $d9, $74, $01        ;; 04:6839 ????????
    db   $06, $6b, $d9, $74, $01, $09, $6b, $d9        ;; 04:6841 ????????
    db   $74, $01, $0c, $6b, $d9, $74, $01, $0f        ;; 04:6849 ????????
    db   $6b, $d9, $74, $ff, $02, $03, $6b, $a3        ;; 04:6851 ????????
    db   $73, $02, $06, $6b, $c2, $73, $02, $09        ;; 04:6859 ????????
    db   $6b, $e1, $73, $02, $0c, $6b, $00, $74        ;; 04:6861 ????????
    db   $02, $0f, $6b, $1f, $74, $02, $03, $6b        ;; 04:6869 ????????
    db   $3e, $74, $02, $06, $6b, $5d, $74, $02        ;; 04:6871 ????????
    db   $09, $6b, $7c, $74, $02, $0c, $6b, $9b        ;; 04:6879 ????????
    db   $74, $02, $0f, $6b, $ba, $74, $ff, $01        ;; 04:6881 ????????
    db   $12, $6b, $d9, $74, $01, $15, $6b, $d9        ;; 04:6889 ????????
    db   $74, $01, $18, $6b, $d9, $74, $01, $1b        ;; 04:6891 ????????
    db   $6b, $d9, $74, $02, $1e, $6b, $d9, $74        ;; 04:6899 ????????
    db   $01, $21, $6b, $d9, $74, $01, $24, $6b        ;; 04:68a1 ????????
    db   $d9, $74, $01, $27, $6b, $d9, $74, $01        ;; 04:68a9 ????????
    db   $2a, $6b, $d9, $74, $ff, $01, $2d, $6b        ;; 04:68b1 ????????
    db   $d9, $74, $01, $30, $6b, $d9, $74, $01        ;; 04:68b9 ????????
    db   $33, $6b, $d9, $74, $01, $36, $6b, $d9        ;; 04:68c1 ????????
    db   $74, $01, $39, $6b, $d9, $74, $ff, $0a        ;; 04:68c9 ????????
    db   $1d, $69, $01, $76, $01, $1d, $69, $eb        ;; 04:68d1 ????????
    db   $75, $01, $1d, $69, $d5, $75, $01, $1d        ;; 04:68d9 ????????
    db   $69, $bf, $75, $01, $1d, $69, $a9, $75        ;; 04:68e1 ????????
    db   $01, $1d, $69, $93, $75, $01, $1d, $69        ;; 04:68e9 ????????
    db   $17, $76, $24, $1d, $69, $93, $75, $ff        ;; 04:68f1 ????????
    db   $20, $1d, $69, $93, $75, $ff, $0c, $00        ;; 04:68f9 ????????
    db   $ff, $06, $00, $ff, $06, $02, $ff, $06        ;; 04:6901 ????????
    db   $6e, $ff, $06, $62, $ff, $06, $ae, $ff        ;; 04:6909 ????????
    db   $06, $a2, $ff, $07, $00, $ff, $06, $00        ;; 04:6911 ???.....
    db   $ff, $07, $00, $ff, $00, $00, $ff, $00        ;; 04:6919 .???????
    db   $02, $ff, $00, $0e, $ff, $00, $40, $ff        ;; 04:6921 ????????
    db   $02, $40, $ff, $00, $c0, $ff, $02, $c0        ;; 04:6929 ????????
    db   $ff, $00, $03, $ff, $00, $13, $ff, $02        ;; 04:6931 ????????
    db   $12, $ff, $02, $22, $ff, $00, $22, $ff        ;; 04:6939 ????????
    db   $02, $21, $ff, $02, $31, $ff, $00, $30        ;; 04:6941 ????????
    db   $ff, $00, $d0, $ff, $00, $df, $ff, $02        ;; 04:6949 ????????
    db   $ef, $ff, $02, $ee, $ff, $00, $ee, $ff        ;; 04:6951 ????????
    db   $02, $fe, $ff, $02, $fd, $ff, $00, $0d        ;; 04:6959 ????????
    db   $ff, $00, $1d, $ff, $02, $1e, $ff, $02        ;; 04:6961 ????????
    db   $2e, $ff, $00, $2e, $ff, $02, $2f, $ff        ;; 04:6969 ????????
    db   $02, $3f, $ff, $00, $d1, $ff, $02, $e1        ;; 04:6971 ????????
    db   $ff, $02, $e2, $ff, $00, $e2, $ff, $02        ;; 04:6979 ????????
    db   $f2, $ff, $02, $f3, $ff, $00, $f3, $ff        ;; 04:6981 ????????
    db   $02, $d1, $ff, $00, $3f, $ff, $02, $1d        ;; 04:6989 ????????
    db   $ff, $00, $fd, $ff, $02, $df, $ff, $00        ;; 04:6991 ????????
    db   $31, $ff, $02, $13, $ff, $02, $00, $ff        ;; 04:6999 ????????
    db   $02, $02, $ff, $02, $0e, $ff, $07, $33        ;; 04:69a1 ??????..
    db   $ff, $06, $47, $ff, $07, $67, $ff, $06        ;; 04:69a9 ........
    db   $75, $ff, $07, $70, $ff, $06, $7b, $ff        ;; 04:69b1 ........
    db   $07, $68, $ff, $06, $48, $ff, $07, $3d        ;; 04:69b9 ........
    db   $ff, $06, $d3, $ff, $07, $c7, $ff, $06        ;; 04:69c1 ........
    db   $a7, $ff, $07, $95, $ff, $06, $90, $ff        ;; 04:69c9 ........
    db   $07, $9b, $ff, $06, $a9, $ff, $07, $c9        ;; 04:69d1 ........
    db   $ff, $06, $dd, $ff, $0a, $07, $ff, $0a        ;; 04:69d9 .......?
    db   $09, $ff, $0a, $47, $ff, $0a, $c7, $ff        ;; 04:69e1 ????????
    db   $00, $70, $ff, $00, $40, $ff, $00, $30        ;; 04:69e9 ????????
    db   $ff, $00, $20, $ff, $00, $80, $ff, $07        ;; 04:69f1 ????????
    db   $6e, $ff, $07, $62, $ff, $07, $ae, $ff        ;; 04:69f9 ????????
    db   $07, $a2, $ff, $00, $a4, $ff, $02, $a4        ;; 04:6a01 ????????
    db   $ff, $00, $64, $ff, $02, $64, $ff, $00        ;; 04:6a09 ????????
    db   $ac, $ff, $02, $ac, $ff, $00, $6c, $ff        ;; 04:6a11 ????????
    db   $02, $6c, $ff, $12, $c4, $ff, $19, $c4        ;; 04:6a19 ????????
    db   $ff, $12, $c2, $ff, $19, $c2, $ff, $12        ;; 04:6a21 ????????
    db   $c0, $ff, $19, $c0, $ff, $12, $0e, $ff        ;; 04:6a29 ????????
    db   $19, $0e, $ff, $12, $00, $ff, $19, $00        ;; 04:6a31 ????????
    db   $ff, $00, $44, $ff, $02, $44, $ff, $00        ;; 04:6a39 ????????
    db   $42, $ff, $02, $42, $ff, $00, $40, $ff        ;; 04:6a41 ????????
    db   $02, $40, $ff, $00, $0e, $ff, $02, $0e        ;; 04:6a49 ????????
    db   $ff, $00, $00, $ff, $02, $00, $ff, $00        ;; 04:6a51 ????????
    db   $20, $ff, $02, $e0, $ff, $00, $22, $ff        ;; 04:6a59 ????????
    db   $00, $2e, $ff, $02, $e2, $ff, $02, $ee        ;; 04:6a61 ????????
    db   $ff, $00, $90, $ff, $00, $70, $ff, $0b        ;; 04:6a69 ????????
    db   $19, $ff, $0b, $49, $ff, $0b, $5b, $ff        ;; 04:6a71 ????????
    db   $0b, $7c, $ff, $0b, $7f, $ff, $03, $71        ;; 04:6a79 ????????
    db   $ff, $03, $74, $ff, $03, $55, $ff, $03        ;; 04:6a81 ????????
    db   $47, $ff, $03, $17, $ff, $03, $7f, $ff        ;; 04:6a89 ????????
    db   $03, $7c, $ff, $03, $5b, $ff, $03, $49        ;; 04:6a91 ????????
    db   $ff, $03, $19, $ff, $18, $f9, $ff, $18        ;; 04:6a99 ????????
    db   $c9, $ff, $18, $bb, $ff, $18, $9c, $ff        ;; 04:6aa1 ????????
    db   $18, $9f, $ff, $0b, $91, $ff, $0b, $94        ;; 04:6aa9 ????????
    db   $ff, $0b, $b5, $ff, $0b, $c7, $ff, $0b        ;; 04:6ab1 ????????
    db   $f7, $ff, $0b, $9f, $ff, $0b, $9c, $ff        ;; 04:6ab9 ????????
    db   $0b, $bb, $ff, $0b, $c9, $ff, $0b, $f9        ;; 04:6ac1 ????????
    db   $ff, $c3, $19, $ff, $c3, $49, $ff, $c4        ;; 04:6ac9 ????????
    db   $5b, $ff, $c4, $7c, $ff, $c5, $7f, $ff        ;; 04:6ad1 ????????
    db   $c5, $71, $ff, $c5, $74, $ff, $c5, $55        ;; 04:6ad9 ????????
    db   $ff, $c5, $47, $ff, $c0, $17, $ff, $c0        ;; 04:6ae1 ????????
    db   $47, $ff, $c0, $55, $ff, $c0, $74, $ff        ;; 04:6ae9 ????????
    db   $c0, $71, $ff, $c0, $7f, $ff, $c4, $7c        ;; 04:6af1 ????????
    db   $ff, $c4, $5b, $ff, $c3, $49, $ff, $c3        ;; 04:6af9 ????????
    db   $19, $ff, $c3, $f9, $ff, $c1, $c9, $ff        ;; 04:6b01 ????????
    db   $c1, $bb, $ff, $c1, $9c, $ff, $c2, $9f        ;; 04:6b09 ????????
    db   $ff, $c2, $91, $ff, $c2, $94, $ff, $c2        ;; 04:6b11 ????????
    db   $b5, $ff, $c2, $c7, $ff, $c0, $f7, $ff        ;; 04:6b19 ????????
    db   $c0, $c7, $ff, $c2, $b5, $ff, $c2, $94        ;; 04:6b21 ????????
    db   $ff, $c2, $91, $ff, $c2, $9f, $ff, $c1        ;; 04:6b29 ????????
    db   $9c, $ff, $c1, $bb, $ff, $c1, $c9, $ff        ;; 04:6b31 ????????
    db   $c3, $f9, $ff, $0c, $00, $ff, $0d, $00        ;; 04:6b39 ???.....
    db   $ff, $01, $00, $f0, $02, $f0, $00, $00        ;; 04:6b41 .???????
    db   $f0, $f0, $06, $00, $00, $01, $00, $f0        ;; 04:6b49 ????????
    db   $02, $f0, $00, $00, $f0, $f0, $ff, $05        ;; 04:6b51 ????????
    db   $00, $f0, $03, $f0, $00, $04, $f0, $f0        ;; 04:6b59 ????????
    db   $0b, $10, $00, $08, $10, $f0, $0a, $e0        ;; 04:6b61 ????????
    db   $00, $09, $e0, $f0, $ff, $01, $00, $f0        ;; 04:6b69 ????????
    db   $03, $f0, $00, $04, $f0, $f0, $06, $00        ;; 04:6b71 ????????
    db   $00, $01, $00, $f0, $0a, $e0, $00, $09        ;; 04:6b79 ????????
    db   $e0, $f0, $ff, $05, $00, $f0, $02, $f0        ;; 04:6b81 ????????
    db   $00, $00, $f0, $f0, $0b, $10, $00, $08        ;; 04:6b89 ????????
    db   $10, $f0, $02, $f0, $00, $00, $f0, $f0        ;; 04:6b91 ????????
    db   $ff, $05, $00, $f0, $03, $f0, $00, $04        ;; 04:6b99 ????????
    db   $f0, $f0, $0b, $10, $00, $48, $10, $f0        ;; 04:6ba1 ????????
    db   $0a, $e0, $00, $49, $e0, $f0, $ff, $01        ;; 04:6ba9 ????????
    db   $00, $f0, $03, $f0, $00, $04, $f0, $f0        ;; 04:6bb1 ????????
    db   $06, $00, $00, $01, $00, $f0, $0a, $e0        ;; 04:6bb9 ????????
    db   $00, $49, $e0, $f0, $ff, $05, $00, $f0        ;; 04:6bc1 ????????
    db   $02, $f0, $00, $00, $f0, $f0, $0b, $10        ;; 04:6bc9 ????????
    db   $00, $48, $10, $f0, $02, $f0, $00, $00        ;; 04:6bd1 ????????
    db   $f0, $f0, $ff, $01, $d0, $f0, $02, $e0        ;; 04:6bd9 ????????
    db   $e0, $03, $f0, $e0, $04, $e0, $f0, $06        ;; 04:6be1 ????????
    db   $f0, $f0, $08, $f0, $00, $ff, $01, $e0        ;; 04:6be9 ????????
    db   $e0, $02, $d0, $00, $03, $f0, $e0, $0a        ;; 04:6bf1 ????????
    db   $f0, $f0, $05, $e0, $00, $08, $f0, $00        ;; 04:6bf9 ????????
    db   $ff, $01, $d0, $00, $02, $d0, $f0, $04        ;; 04:6c01 ????????
    db   $e0, $f0, $0b, $f0, $f0, $05, $e0, $00        ;; 04:6c09 ????????
    db   $08, $f0, $00, $ff, $01, $d0, $f0, $02        ;; 04:6c11 ????????
    db   $e0, $e0, $03, $f0, $e0, $04, $e0, $f0        ;; 04:6c19 ????????
    db   $07, $f0, $f0, $08, $f0, $00, $ff, $41        ;; 04:6c21 ????????
    db   $e0, $e0, $02, $d0, $00, $03, $f0, $e0        ;; 04:6c29 ????????
    db   $0a, $f0, $f0, $05, $e0, $00, $09, $f0        ;; 04:6c31 ????????
    db   $00, $ff, $01, $d0, $00, $02, $d0, $f0        ;; 04:6c39 ????????
    db   $04, $e0, $f0, $0b, $f0, $f0, $05, $e0        ;; 04:6c41 ????????
    db   $00, $08, $f0, $00, $ff, $12, $f0, $f0        ;; 04:6c49 ????????
    db   $13, $00, $f0, $01, $f0, $00, $ff, $06        ;; 04:6c51 ????????
    db   $f0, $f0, $10, $00, $f0, $11, $f0, $00        ;; 04:6c59 ????????
    db   $ff, $0f, $f0, $f0, $0a, $00, $f0, $01        ;; 04:6c61 ????????
    db   $f0, $00, $ff, $49, $f0, $f0, $04, $00        ;; 04:6c69 ????????
    db   $f0, $01, $f0, $00, $ff, $0e, $f0, $f0        ;; 04:6c71 ????????
    db   $03, $00, $f0, $01, $f0, $00, $ff, $05        ;; 04:6c79 ????????
    db   $f0, $f0, $48, $00, $f0, $01, $f0, $00        ;; 04:6c81 ????????
    db   $ff, $47, $f0, $f0, $4b, $00, $f0, $01        ;; 04:6c89 ????????
    db   $f0, $00, $ff, $03, $f0, $f0, $04, $00        ;; 04:6c91 ????????
    db   $f0, $01, $f0, $00, $4e, $f8, $d0, $4e        ;; 04:6c99 ????????
    db   $f8, $20, $0f, $20, $f8, $0f, $d0, $f8        ;; 04:6ca1 ????????
    db   $ff, $03, $f0, $f0, $04, $00, $f0, $01        ;; 04:6ca9 ????????
    db   $f0, $00, $0e, $f8, $d0, $0e, $f8, $20        ;; 04:6cb1 ????????
    db   $4f, $20, $f8, $4f, $d0, $f8, $ff, $03        ;; 04:6cb9 ????????
    db   $f0, $f0, $04, $00, $f0, $01, $f0, $00        ;; 04:6cc1 ????????
    db   $0e, $f8, $d0, $0e, $f8, $20, $0f, $20        ;; 04:6cc9 ????????
    db   $f8, $0f, $d0, $f8, $ff, $03, $f0, $f0        ;; 04:6cd1 ????????
    db   $04, $00, $f0, $01, $f0, $00, $0f, $ec        ;; 04:6cd9 ????????
    db   $d2, $0f, $04, $1e, $0e, $1e, $ec, $0e        ;; 04:6ce1 ????????
    db   $d2, $04, $ff, $03, $f0, $f0, $04, $00        ;; 04:6ce9 ????????
    db   $f0, $01, $f0, $00, $0e, $e1, $d7, $0e        ;; 04:6cf1 ????????
    db   $0f, $19, $0f, $19, $e1, $0f, $d7, $0f        ;; 04:6cf9 ????????
    db   $ff, $05, $f0, $f0, $08, $00, $f0, $11        ;; 04:6d01 ????????
    db   $f0, $00, $0f, $d7, $df, $0f, $19, $11        ;; 04:6d09 ????????
    db   $0e, $11, $d7, $0e, $df, $19, $ff, $05        ;; 04:6d11 ????????
    db   $f0, $f0, $08, $00, $f0, $11, $f0, $00        ;; 04:6d19 ????????
    db   $0e, $cf, $e8, $0e, $21, $08, $0f, $08        ;; 04:6d21 ????????
    db   $cf, $0f, $e8, $21, $ff, $05, $f0, $f0        ;; 04:6d29 ????????
    db   $08, $00, $f0, $11, $f0, $00, $0f, $ca        ;; 04:6d31 ????????
    db   $f4, $0f, $26, $fc, $0e, $fc, $ca, $0e        ;; 04:6d39 ????????
    db   $f4, $26, $ff, $85, $f0, $f0, $08, $00        ;; 04:6d41 ????????
    db   $f0, $11, $f0, $00, $11, $f0, $00, $11        ;; 04:6d49 ????????
    db   $f0, $00, $11, $f0, $00, $11, $f0, $00        ;; 04:6d51 ????????
    db   $ff, $05, $f0, $f0, $0c, $f8, $f1, $11        ;; 04:6d59 ????????
    db   $f0, $00, $0d, $e8, $f1, $0c, $f5, $12        ;; 04:6d61 ????????
    db   $0d, $ef, $f1, $0c, $ee, $09, $ff, $0d        ;; 04:6d69 ????????
    db   $f6, $ee, $08, $00, $f0, $0c, $ff, $04        ;; 04:6d71 ????????
    db   $0d, $f9, $e5, $0c, $11, $15, $0d, $12        ;; 04:6d79 ????????
    db   $f0, $0c, $e0, $09, $ff, $05, $f0, $f0        ;; 04:6d81 ????????
    db   $0d, $03, $f0, $0d, $f0, $00, $0d, $e0        ;; 04:6d89 ????????
    db   $ef, $0c, $f3, $0e, $0d, $e0, $f3, $0c        ;; 04:6d91 ????????
    db   $f4, $11, $ff, $00, $f0, $f0, $02, $00        ;; 04:6d99 ???.....
    db   $f0, $01, $f0, $00, $01, $f0, $00, $01        ;; 04:6da1 ........
    db   $f0, $00, $ff, $04, $f0, $f0, $05, $00        ;; 04:6da9 ..?.....
    db   $f0, $03, $f0, $00, $03, $f0, $00, $03        ;; 04:6db1 ........
    db   $f0, $00, $ff, $08, $f0, $f0, $0b, $00        ;; 04:6db9 ..?.....
    db   $f0, $09, $f0, $00, $09, $f0, $00, $09        ;; 04:6dc1 ........
    db   $f0, $00, $ff, $00, $e0, $f0, $01, $f0        ;; 04:6dc9 ..??????
    db   $f0, $08, $00, $f0, $05, $10, $f0, $03        ;; 04:6dd1 ????????
    db   $e0, $00, $02, $f0, $00, $0f, $10, $00        ;; 04:6dd9 ????????
    db   $13, $f0, $10, $0b, $00, $10, $0b, $00        ;; 04:6de1 ????????
    db   $10, $ff, $00, $e0, $f0, $01, $f0, $f0        ;; 04:6de9 ????????
    db   $08, $00, $f0, $05, $10, $f0, $43, $e0        ;; 04:6df1 ????????
    db   $00, $02, $f0, $00, $4f, $10, $00, $53        ;; 04:6df9 ????????
    db   $f0, $10, $4b, $00, $10, $0b, $00, $10        ;; 04:6e01 ????????
    db   $ff, $00, $e0, $f0, $01, $f0, $f0, $08        ;; 04:6e09 ????????
    db   $00, $f0, $05, $10, $f0, $0e, $e0, $00        ;; 04:6e11 ????????
    db   $09, $f0, $00, $10, $10, $00, $13, $f0        ;; 04:6e19 ????????
    db   $10, $11, $00, $10, $12, $00, $20, $ff        ;; 04:6e21 ????????
    db   $80, $e0, $f0, $01, $f0, $f0, $08, $00        ;; 04:6e29 ????????
    db   $f0, $05, $10, $f0, $03, $e0, $00, $02        ;; 04:6e31 ????????
    db   $f0, $00, $0f, $10, $00, $13, $f0, $10        ;; 04:6e39 ????????
    db   $0b, $00, $10, $0b, $00, $10, $ff, $00        ;; 04:6e41 ????????
    db   $e0, $f0, $0c, $f2, $f1, $08, $00, $f0        ;; 04:6e49 ????????
    db   $0d, $09, $f3, $03, $e0, $00, $0c, $f0        ;; 04:6e51 ????????
    db   $00, $0c, $13, $f8, $13, $f0, $10, $0c        ;; 04:6e59 ????????
    db   $15, $12, $0b, $00, $10, $ff, $0d, $e4        ;; 04:6e61 ????????
    db   $f2, $01, $f0, $f0, $0d, $fd, $f2, $0c        ;; 04:6e69 ????????
    db   $13, $f1, $03, $e0, $00, $02, $f0, $00        ;; 04:6e71 ????????
    db   $0c, $08, $03, $13, $f0, $10, $0d, $02        ;; 04:6e79 ????????
    db   $0d, $0c, $03, $10, $ff, $00, $e0, $f0        ;; 04:6e81 ????????
    db   $0d, $f2, $f0, $08, $00, $f0, $05, $10        ;; 04:6e89 ????????
    db   $f0, $0d, $e0, $00, $0d, $08, $06, $0f        ;; 04:6e91 ????????
    db   $10, $00, $0c, $f1, $10, $0b, $00, $10        ;; 04:6e99 ????????
    db   $0c, $04, $0f, $ff, $06, $10, $f0, $09        ;; 04:6ea1 ????????
    db   $10, $00, $05, $00, $10, $08, $10, $10        ;; 04:6ea9 ????????
    db   $0e, $30, $f0, $0f, $20, $f0, $ff, $06        ;; 04:6eb1 ????????
    db   $10, $f0, $09, $10, $00, $01, $00, $10        ;; 04:6eb9 ????????
    db   $04, $10, $10, $0e, $20, $f0, $0e, $20        ;; 04:6ec1 ????????
    db   $f0, $ff, $02, $10, $f0, $03, $10, $00        ;; 04:6ec9 ????????
    db   $05, $00, $10, $08, $10, $10, $0d, $00        ;; 04:6ed1 ????????
    db   $f0, $0d, $00, $f0, $ff, $02, $10, $f0        ;; 04:6ed9 ????????
    db   $03, $10, $00, $01, $00, $10, $04, $10        ;; 04:6ee1 ????????
    db   $10, $0d, $f0, $f0, $0f, $00, $f0, $ff        ;; 04:6ee9 ????????
    db   $0b, $10, $00, $0a, $00, $10, $0c, $10        ;; 04:6ef1 ????????
    db   $10, $0d, $f0, $0c, $0d, $f0, $0c, $0d        ;; 04:6ef9 ????????
    db   $f0, $0c, $ff, $0b, $10, $00, $0a, $00        ;; 04:6f01 ????????
    db   $10, $0c, $10, $10, $0d, $e0, $0c, $0f        ;; 04:6f09 ????????
    db   $f0, $0c, $0f, $f0, $0c, $ff, $01, $e0        ;; 04:6f11 ????????
    db   $f0, $0f, $f0, $f0, $05, $00, $f0, $08        ;; 04:6f19 ????????
    db   $10, $f0, $04, $f0, $00, $ff, $09, $f0        ;; 04:6f21 ????????
    db   $f0, $0e, $00, $f0, $0b, $e0, $00, $0a        ;; 04:6f29 ????????
    db   $f0, $00, $03, $10, $00, $ff, $09, $f0        ;; 04:6f31 ????????
    db   $f0, $0e, $00, $f0, $4b, $e0, $00, $0a        ;; 04:6f39 ????????
    db   $f0, $00, $43, $10, $00, $ff, $81, $e0        ;; 04:6f41 ????????
    db   $f0, $0f, $f0, $f0, $05, $00, $f0, $08        ;; 04:6f49 ????????
    db   $10, $f0, $04, $f0, $00, $ff, $01, $e0        ;; 04:6f51 ????????
    db   $f0, $0c, $ee, $f3, $05, $00, $f0, $08        ;; 04:6f59 ????????
    db   $10, $f0, $0d, $f2, $04, $ff, $0c, $e3        ;; 04:6f61 ????????
    db   $ef, $0d, $f0, $f0, $05, $00, $f0, $0d        ;; 04:6f69 ????????
    db   $10, $f0, $04, $f4, $fc, $ff, $01, $e0        ;; 04:6f71 ????????
    db   $f0, $0d, $f0, $f0, $0c, $fc, $f2, $0d        ;; 04:6f79 ????????
    db   $11, $f4, $04, $f0, $00, $ff, $08, $f0        ;; 04:6f81 ????????
    db   $00, $06, $10, $00, $0e, $f0, $10, $01        ;; 04:6f89 ????????
    db   $00, $10, $07, $10, $10, $03, $f0, $20        ;; 04:6f91 ????????
    db   $04, $00, $20, $15, $10, $20, $ff, $05        ;; 04:6f99 ????????
    db   $f0, $00, $0f, $10, $00, $09, $f0, $10        ;; 04:6fa1 ????????
    db   $02, $00, $10, $10, $10, $10, $14, $f0        ;; 04:6fa9 ????????
    db   $20, $0b, $00, $20, $0a, $10, $20, $ff        ;; 04:6fb1 ????????
    db   $05, $f0, $00, $0f, $10, $00, $09, $f0        ;; 04:6fb9 ????????
    db   $10, $01, $00, $10, $10, $10, $10, $03        ;; 04:6fc1 ????????
    db   $f0, $20, $04, $00, $20, $15, $10, $20        ;; 04:6fc9 ????????
    db   $ff, $08, $f0, $00, $06, $10, $00, $0e        ;; 04:6fd1 ????????
    db   $f0, $10, $02, $00, $10, $07, $10, $10        ;; 04:6fd9 ????????
    db   $14, $f0, $20, $0b, $00, $20, $0a, $10        ;; 04:6fe1 ????????
    db   $20, $ff, $05, $f0, $00, $0f, $10, $00        ;; 04:6fe9 ????????
    db   $09, $f0, $10, $01, $00, $10, $10, $10        ;; 04:6ff1 ????????
    db   $10, $11, $e0, $20, $12, $f0, $20, $13        ;; 04:6ff9 ????????
    db   $00, $20, $ff, $45, $f0, $00, $0f, $10        ;; 04:7001 ????????
    db   $00, $49, $f0, $10, $01, $00, $10, $10        ;; 04:7009 ????????
    db   $10, $10, $03, $f0, $20, $04, $00, $20        ;; 04:7011 ????????
    db   $15, $10, $20, $ff, $03, $f0, $f0, $05        ;; 04:7019 ????????
    db   $00, $f0, $16, $10, $f0, $01, $e0, $00        ;; 04:7021 ????????
    db   $04, $f0, $00, $17, $10, $00, $ff, $18        ;; 04:7029 ????????
    db   $f0, $f0, $0b, $00, $f0, $09, $10, $f0        ;; 04:7031 ????????
    db   $19, $f0, $00, $0a, $10, $00, $08, $20        ;; 04:7039 ????????
    db   $00, $ff, $0e, $f8, $f0, $10, $08, $f0        ;; 04:7041 ????????
    db   $0f, $f8, $00, $11, $08, $00, $11, $08        ;; 04:7049 ????????
    db   $00, $11, $08, $00, $ff, $14, $f8, $f0        ;; 04:7051 ????????
    db   $12, $08, $f0, $15, $f8, $00, $13, $08        ;; 04:7059 ????????
    db   $00, $13, $08, $00, $13, $08, $00, $ff        ;; 04:7061 ????????
    db   $01, $f0, $f0, $04, $00, $f0, $06, $10        ;; 04:7069 ????????
    db   $f0, $03, $f0, $00, $07, $10, $00, $05        ;; 04:7071 ????????
    db   $00, $10, $08, $10, $10, $ff, $14, $f0        ;; 04:7079 ????????
    db   $f0, $11, $00, $f0, $0f, $10, $f0, $15        ;; 04:7081 ????????
    db   $f0, $00, $10, $10, $00, $16, $f0, $10        ;; 04:7089 ????????
    db   $13, $00, $10, $ff, $09, $f0, $00, $0c        ;; 04:7091 ????????
    db   $10, $00, $0a, $f0, $10, $0b, $00, $10        ;; 04:7099 ????????
    db   $0d, $10, $10, $0e, $20, $10, $0e, $20        ;; 04:70a1 ????????
    db   $10, $ff, $1b, $f0, $00, $17, $10, $00        ;; 04:70a9 ????????
    db   $1d, $e0, $10, $1c, $f0, $10, $1a, $00        ;; 04:70b1 ????????
    db   $10, $18, $10, $10, $18, $10, $10, $ff        ;; 04:70b9 ????????
    db   $09, $f0, $00, $0c, $10, $00, $4a, $f0        ;; 04:70c1 ????????
    db   $10, $0b, $00, $10, $0d, $10, $10, $4e        ;; 04:70c9 ????????
    db   $20, $10, $0e, $20, $10, $ff, $1b, $f0        ;; 04:70d1 ????????
    db   $00, $17, $10, $00, $5d, $e0, $10, $1c        ;; 04:70d9 ????????
    db   $f0, $10, $1a, $00, $10, $58, $10, $10        ;; 04:70e1 ????????
    db   $18, $10, $10, $ff, $01, $f0, $f0, $03        ;; 04:70e9 ????????
    db   $00, $f0, $04, $10, $f0, $05, $f0, $00        ;; 04:70f1 ????????
    db   $06, $10, $00, $07, $f0, $10, $08, $00        ;; 04:70f9 ????????
    db   $10, $09, $10, $10, $ff, $01, $f0, $f0        ;; 04:7101 ????????
    db   $03, $00, $f0, $04, $10, $f0, $0a, $f0        ;; 04:7109 ????????
    db   $00, $0b, $10, $00, $0c, $f0, $10, $0d        ;; 04:7111 ????????
    db   $00, $10, $0e, $10, $10, $ff, $01, $f0        ;; 04:7119 ????????
    db   $f0, $03, $00, $f0, $04, $10, $f0, $0a        ;; 04:7121 ????????
    db   $f0, $00, $0b, $10, $00, $0c, $f0, $10        ;; 04:7129 ????????
    db   $0d, $00, $10, $4e, $10, $10, $ff, $11        ;; 04:7131 ????????
    db   $f0, $f0, $10, $00, $f0, $0f, $10, $f0        ;; 04:7139 ????????
    db   $13, $f0, $00, $12, $10, $00, $15, $00        ;; 04:7141 ????????
    db   $10, $14, $10, $10, $16, $f0, $10, $ff        ;; 04:7149 ????????
    db   $11, $f0, $f0, $10, $00, $f0, $0f, $10        ;; 04:7151 ????????
    db   $f0, $18, $f0, $00, $17, $10, $00, $1a        ;; 04:7159 ????????
    db   $00, $10, $19, $10, $10, $1b, $f0, $10        ;; 04:7161 ????????
    db   $ff, $11, $f0, $f0, $10, $00, $f0, $0f        ;; 04:7169 ????????
    db   $10, $f0, $18, $f0, $00, $17, $10, $00        ;; 04:7171 ????????
    db   $1a, $00, $10, $19, $10, $10, $5b, $f0        ;; 04:7179 ????????
    db   $10, $ff, $00, $f0, $f0, $01, $00, $f0        ;; 04:7181 ????????
    db   $02, $f0, $00, $04, $f0, $10, $05, $00        ;; 04:7189 ????????
    db   $10, $05, $00, $10, $ff, $00, $f0, $f0        ;; 04:7191 ????????
    db   $01, $00, $f0, $02, $f0, $00, $04, $f0        ;; 04:7199 ????????
    db   $10, $06, $00, $10, $06, $00, $10, $ff        ;; 04:71a1 ????????
    db   $0f, $f0, $f0, $0e, $00, $f0, $11, $f0        ;; 04:71a9 ????????
    db   $00, $13, $f0, $10, $12, $00, $10, $12        ;; 04:71b1 ????????
    db   $00, $10, $ff, $0f, $f0, $f0, $0e, $00        ;; 04:71b9 ????????
    db   $f0, $11, $f0, $00, $14, $f0, $10, $12        ;; 04:71c1 ????????
    db   $00, $10, $12, $00, $10, $ff, $07, $f0        ;; 04:71c9 ????????
    db   $f0, $08, $00, $f0, $09, $10, $f0, $0a        ;; 04:71d1 ????????
    db   $f0, $00, $0c, $f0, $10, $0d, $00, $10        ;; 04:71d9 ????????
    db   $ff, $17, $e0, $f0, $16, $f0, $f0, $15        ;; 04:71e1 ????????
    db   $00, $f0, $19, $f0, $00, $1b, $f0, $10        ;; 04:71e9 ????????
    db   $1a, $00, $10, $ff, $07, $f0, $f0, $08        ;; 04:71f1 ????????
    db   $00, $f0, $49, $10, $f0, $0a, $f0, $00        ;; 04:71f9 ????????
    db   $0c, $f0, $10, $0d, $00, $10, $ff, $57        ;; 04:7201 ????????
    db   $e0, $f0, $16, $f0, $f0, $15, $00, $f0        ;; 04:7209 ????????
    db   $19, $f0, $00, $1b, $f0, $10, $1a, $00        ;; 04:7211 ????????
    db   $10, $ff, $05, $f0, $00, $05, $f0, $00        ;; 04:7219 ????????
    db   $05, $f0, $00, $05, $f0, $00, $05, $f0        ;; 04:7221 ????????
    db   $00, $05, $f0, $00, $05, $f0, $00, $05        ;; 04:7229 ????????
    db   $f0, $00, $05, $f0, $00, $ff, $13, $f0        ;; 04:7231 ????????
    db   $00, $13, $f0, $00, $13, $f0, $00, $13        ;; 04:7239 ????????
    db   $f0, $00, $13, $f0, $00, $13, $f0, $00        ;; 04:7241 ????????
    db   $13, $f0, $00, $13, $f0, $00, $13, $f0        ;; 04:7249 ????????
    db   $00, $ff, $01, $f0, $f0, $03, $00, $f0        ;; 04:7251 ????????
    db   $04, $f0, $00, $04, $f0, $00, $04, $f0        ;; 04:7259 ????????
    db   $00, $04, $f0, $00, $04, $f0, $00, $04        ;; 04:7261 ????????
    db   $f0, $00, $04, $f0, $00, $ff, $11, $f0        ;; 04:7269 ????????
    db   $f0, $10, $00, $f0, $12, $f0, $00, $12        ;; 04:7271 ????????
    db   $f0, $00, $12, $f0, $00, $12, $f0, $00        ;; 04:7279 ????????
    db   $12, $f0, $00, $12, $f0, $00, $12, $f0        ;; 04:7281 ????????
    db   $00, $ff, $01, $f0, $f0, $03, $00, $f0        ;; 04:7289 ????????
    db   $04, $f0, $00, $08, $e0, $00, $04, $f0        ;; 04:7291 ????????
    db   $00, $04, $f0, $00, $04, $f0, $00, $04        ;; 04:7299 ????????
    db   $f0, $00, $04, $f0, $00, $ff, $01, $f0        ;; 04:72a1 ????????
    db   $f0, $03, $00, $f0, $04, $f0, $00, $0a        ;; 04:72a9 ????????
    db   $e0, $00, $09, $e0, $f0, $04, $f0, $00        ;; 04:72b1 ????????
    db   $04, $f0, $00, $04, $f0, $00, $04, $f0        ;; 04:72b9 ????????
    db   $00, $ff, $01, $f0, $f0, $03, $00, $f0        ;; 04:72c1 ????????
    db   $04, $f0, $00, $16, $e0, $00, $17, $e0        ;; 04:72c9 ????????
    db   $f0, $09, $e0, $e0, $08, $10, $00, $04        ;; 04:72d1 ????????
    db   $f0, $00, $04, $f0, $00, $ff, $11, $f0        ;; 04:72d9 ????????
    db   $f0, $10, $00, $f0, $12, $f0, $00, $0a        ;; 04:72e1 ????????
    db   $e0, $00, $09, $e0, $f0, $16, $10, $00        ;; 04:72e9 ????????
    db   $15, $10, $f0, $04, $f0, $00, $04, $f0        ;; 04:72f1 ????????
    db   $00, $ff, $11, $f0, $f0, $10, $00, $f0        ;; 04:72f9 ????????
    db   $12, $f0, $00, $08, $e0, $00, $0a, $10        ;; 04:7301 ????????
    db   $00, $0b, $10, $f0, $09, $10, $e0, $04        ;; 04:7309 ????????
    db   $f0, $00, $04, $f0, $00, $ff, $01, $f0        ;; 04:7311 ????????
    db   $f0, $03, $00, $f0, $04, $f0, $00, $0a        ;; 04:7319 ????????
    db   $e0, $00, $0b, $e0, $f0, $17, $e0, $e0        ;; 04:7321 ????????
    db   $0e, $e0, $d0, $0f, $f0, $d0, $04, $f0        ;; 04:7329 ????????
    db   $00, $ff, $01, $f0, $f0, $03, $00, $f0        ;; 04:7331 ????????
    db   $04, $f0, $00, $16, $e0, $00, $17, $e0        ;; 04:7339 ????????
    db   $f0, $0b, $e0, $e0, $1e, $e0, $d0, $1d        ;; 04:7341 ????????
    db   $f0, $d0, $0f, $00, $d0, $ff, $11, $f0        ;; 04:7349 ????????
    db   $f0, $10, $00, $f0, $12, $f0, $00, $1b        ;; 04:7351 ????????
    db   $00, $d0, $1a, $10, $d0, $0b, $10, $e0        ;; 04:7359 ????????
    db   $17, $10, $f0, $16, $10, $00, $12, $f0        ;; 04:7361 ????????
    db   $00, $ff, $11, $f0, $f0, $10, $00, $f0        ;; 04:7369 ????????
    db   $12, $f0, $00, $1b, $f0, $d0, $18, $00        ;; 04:7371 ????????
    db   $d0, $1c, $10, $d0, $17, $10, $e0, $0b        ;; 04:7379 ????????
    db   $10, $f0, $0a, $10, $00, $ff, $19, $f0        ;; 04:7381 ????????
    db   $f0, $19, $f0, $f0, $19, $f0, $f0, $19        ;; 04:7389 ????????
    db   $f0, $f0, $19, $f0, $f0, $19, $f0, $f0        ;; 04:7391 ????????
    db   $19, $f0, $f0, $19, $f0, $f0, $19, $f0        ;; 04:7399 ????????
    db   $f0, $ff, $06, $00, $00, $06, $00, $00        ;; 04:73a1 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:73a9 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:73b1 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73b9 ????????
    db   $ff, $c6, $00, $00, $06, $00, $00, $06        ;; 04:73c1 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73c9 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:73d1 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $ff        ;; 04:73d9 ????????
    db   $c6, $00, $00, $c6, $00, $00, $06, $00        ;; 04:73e1 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:73e9 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:73f1 ????????
    db   $06, $00, $00, $06, $00, $00, $ff, $c6        ;; 04:73f9 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:7401 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7409 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:7411 ????????
    db   $00, $00, $06, $00, $00, $ff, $c6, $00        ;; 04:7419 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:7421 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7429 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7431 ????????
    db   $00, $06, $00, $00, $ff, $c6, $00, $00        ;; 04:7439 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:7441 ????????
    db   $00, $c6, $00, $00, $06, $00, $00, $06        ;; 04:7449 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7451 ????????
    db   $06, $00, $00, $ff, $c6, $00, $00, $c6        ;; 04:7459 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:7461 ????????
    db   $c6, $00, $00, $c6, $00, $00, $06, $00        ;; 04:7469 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:7471 ????????
    db   $00, $00, $ff, $c6, $00, $00, $c6, $00        ;; 04:7479 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:7481 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:7489 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7491 ????????
    db   $00, $ff, $c6, $00, $00, $c6, $00, $00        ;; 04:7499 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74a1 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:74a9 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:74b1 ????????
    db   $ff, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:74b9 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:74c1 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74c9 ????????
    db   $00, $c6, $00, $00, $06, $00, $00, $ff        ;; 04:74d1 ????????
    db   $c6, $00, $00, $c6, $00, $00, $c6, $00        ;; 04:74d9 ????????
    db   $00, $c6, $00, $00, $c6, $00, $00, $c6        ;; 04:74e1 ????????
    db   $00, $00, $c6, $00, $00, $c6, $00, $00        ;; 04:74e9 ????????
    db   $c6, $00, $00, $c6, $00, $00, $ff, $86        ;; 04:74f1 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:74f9 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7501 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:7509 ????????
    db   $00, $00, $06, $00, $00, $ff, $06, $00        ;; 04:7511 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $06        ;; 04:7519 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7521 ????????
    db   $06, $00, $00, $06, $00, $00, $0d, $00        ;; 04:7529 ????????
    db   $00, $0c, $00, $00, $ff, $06, $00, $00        ;; 04:7531 ????????
    db   $06, $00, $00, $06, $00, $00, $06, $00        ;; 04:7539 ????????
    db   $00, $06, $00, $00, $06, $00, $00, $0c        ;; 04:7541 ????????
    db   $00, $00, $0d, $00, $00, $0c, $00, $00        ;; 04:7549 ????????
    db   $0d, $00, $00, $ff, $06, $00, $00, $06        ;; 04:7551 ????????
    db   $00, $00, $06, $00, $00, $06, $00, $00        ;; 04:7559 ????????
    db   $0d, $00, $00, $0c, $00, $00, $0d, $00        ;; 04:7561 ????????
    db   $00, $0c, $00, $00, $0d, $00, $00, $0c        ;; 04:7569 ????????
    db   $00, $00, $ff, $0c, $00, $00, $0d, $00        ;; 04:7571 ????????
    db   $00, $0c, $00, $00, $0d, $00, $00, $0c        ;; 04:7579 ????????
    db   $00, $00, $0d, $00, $00, $0c, $00, $00        ;; 04:7581 ????????
    db   $0d, $00, $00, $0c, $00, $00, $0d, $00        ;; 04:7589 ????????
    db   $00, $ff, $01, $f0, $00, $02, $f0, $10        ;; 04:7591 ????????
    db   $03, $00, $10, $04, $f0, $20, $05, $00        ;; 04:7599 ????????
    db   $20, $08, $18, $10, $06, $d8, $10, $ff        ;; 04:75a1 ????????
    db   $01, $f0, $00, $02, $f0, $10, $03, $00        ;; 04:75a9 ????????
    db   $10, $04, $f0, $20, $05, $00, $20, $08        ;; 04:75b1 ????????
    db   $12, $18, $06, $de, $18, $ff, $01, $f0        ;; 04:75b9 ????????
    db   $00, $02, $f0, $10, $03, $00, $10, $04        ;; 04:75c1 ????????
    db   $f0, $20, $05, $00, $20, $09, $0d, $20        ;; 04:75c9 ????????
    db   $07, $e3, $20, $ff, $01, $f0, $00, $02        ;; 04:75d1 ????????
    db   $f0, $10, $03, $00, $10, $04, $f0, $20        ;; 04:75d9 ????????
    db   $05, $00, $20, $09, $08, $26, $07, $e8        ;; 04:75e1 ????????
    db   $26, $ff, $01, $f0, $00, $02, $f0, $10        ;; 04:75e9 ????????
    db   $03, $00, $10, $04, $f0, $20, $05, $00        ;; 04:75f1 ????????
    db   $20, $09, $05, $2a, $07, $eb, $2a, $ff        ;; 04:75f9 ????????
    db   $01, $f0, $00, $02, $f0, $10, $03, $00        ;; 04:7601 ????????
    db   $10, $04, $f0, $20, $05, $00, $20, $09        ;; 04:7609 ????????
    db   $04, $2c, $07, $ec, $2c, $ff, $01, $f0        ;; 04:7611 ????????
    db   $00, $02, $f0, $10, $03, $00, $10, $04        ;; 04:7619 ????????
    db   $f0, $20, $05, $00, $20, $48, $18, $10        ;; 04:7621 ????????
    db   $46, $d8, $10, $ff, $81, $00, $f0, $06        ;; 04:7629 ????????
    db   $f0, $00, $00, $f0, $f0, $00, $f0, $f0        ;; 04:7631 ????????
    db   $00, $f0, $f0, $00, $f0, $f0, $00, $f0        ;; 04:7639 ????????
    db   $f0, $ff, $01, $00, $f0, $06, $f0, $00        ;; 04:7641 ????????
    db   $00, $f0, $f0, $0c, $ed, $e9, $0d, $08        ;; 04:7649 ????????
    db   $0a, $0c, $0a, $f1, $0d, $f0, $08, $ff        ;; 04:7651 ????????
    db   $01, $00, $f0, $06, $f0, $00, $00, $f0        ;; 04:7659 ????????
    db   $f0, $0d, $ef, $ea, $0c, $0d, $10, $0d        ;; 04:7661 ????????
    db   $f2, $f1, $0c, $f3, $0a, $ff, $01, $00        ;; 04:7669 ????????
    db   $f0, $06, $f0, $00, $00, $f0, $f0, $0c        ;; 04:7671 ????????
    db   $0c, $e9, $0d, $ec, $0c, $0c, $11, $04        ;; 04:7679 ????????
    db   $0d, $f6, $00, $ff, $80, $f0, $f0, $02        ;; 04:7681 ????....
    db   $00, $f0, $01, $f0, $00, $01, $f0, $00        ;; 04:7689 ........
    db   $01, $f0, $00, $ff, $00, $f0, $f0, $02        ;; 04:7691 ...?....
    db   $00, $f0, $01, $f0, $00, $0c, $ed, $e9        ;; 04:7699 ........
    db   $0d, $08, $0a, $ff, $00, $f0, $f0, $02        ;; 04:76a1 ...?....
    db   $00, $f0, $01, $f0, $00, $0d, $ea, $ef        ;; 04:76a9 ........
    db   $0c, $08, $ec, $ff, $00, $f0, $f0, $02        ;; 04:76b1 ...?....
    db   $00, $f0, $01, $f0, $00, $0d, $00, $08        ;; 04:76b9 ........
    db   $0c, $f8, $e4, $ff, $00, $f0, $f0, $02        ;; 04:76c1 ...?....
    db   $00, $f0, $01, $f0, $00, $0c, $e5, $0f        ;; 04:76c9 ........
    db   $0d, $07, $0c, $ff, $81, $d0, $f0, $02        ;; 04:76d1 ...?????
    db   $e0, $e0, $03, $f0, $e0, $04, $e0, $f0        ;; 04:76d9 ????????
    db   $06, $f0, $f0, $08, $f0, $00, $ff, $01        ;; 04:76e1 ????????
    db   $d0, $f0, $02, $e0, $e0, $0c, $f3, $e2        ;; 04:76e9 ????????
    db   $04, $e0, $f0, $0d, $f5, $ee, $08, $f0        ;; 04:76f1 ????????
    db   $00, $ff, $01, $d0, $f0, $0c, $ea, $e4        ;; 04:76f9 ????????
    db   $03, $f0, $e0, $04, $e0, $f0, $06, $f0        ;; 04:7701 ????????
    db   $f0, $0d, $f5, $f8, $ff, $0d, $e0, $f5        ;; 04:7709 ????????
    db   $02, $e0, $e0, $03, $f0, $e0, $0c, $e0        ;; 04:7711 ????????
    db   $f0, $0d, $f4, $ee, $08, $f0, $00, $ff        ;; 04:7719 ????????
    db   $01, $d0, $f0, $0c, $f1, $e9, $0d, $f0        ;; 04:7721 ????????
    db   $e1, $04, $e0, $f0, $06, $f0, $f0, $08        ;; 04:7729 ????????
    db   $f0, $00, $ff, $87, $f0, $f0, $0b, $00        ;; 04:7731 ????????
    db   $f0, $01, $f0, $00, $ff, $07, $f0, $f0        ;; 04:7739 ????????
    db   $0c, $03, $f1, $01, $f0, $00, $ff, $0d        ;; 04:7741 ????????
    db   $f2, $ee, $0b, $00, $f0, $01, $f0, $00        ;; 04:7749 ????????
    db   $ff, $0c, $f0, $f0, $0b, $00, $f0, $0d        ;; 04:7751 ????????
    db   $ef, $04, $ff, $01, $f0, $00, $02, $f0        ;; 04:7759 ????????
    db   $10, $03, $00, $10, $04, $f0, $20, $05        ;; 04:7761 ????????
    db   $00, $20, $0c, $10, $18, $0d, $e8, $28        ;; 04:7769 ????????
    db   $ff, $01, $f0, $00, $02, $f0, $10, $03        ;; 04:7771 ????????
    db   $00, $10, $04, $f0, $20, $05, $00, $20        ;; 04:7779 ????????
    db   $0d, $18, $14, $0c, $e0, $2c, $ff, $01        ;; 04:7781 ????????
    db   $f0, $00, $02, $f0, $10, $03, $00, $10        ;; 04:7789 ????????
    db   $04, $f0, $20, $05, $00, $20, $0c, $0a        ;; 04:7791 ????????
    db   $f4, $0d, $e0, $28, $ff, $81, $f0, $00        ;; 04:7799 ????????
    db   $02, $f0, $10, $03, $00, $10, $04, $f0        ;; 04:77a1 ????????
    db   $20, $05, $00, $20, $0c, $0e, $1c, $0d        ;; 04:77a9 ????????
    db   $f0, $f8, $ff, $83, $f0, $f0, $05, $00        ;; 04:77b1 ????????
    db   $f0, $16, $10, $f0, $01, $e0, $00, $04        ;; 04:77b9 ????????
    db   $f0, $00, $17, $10, $00, $ff, $0c, $f2        ;; 04:77c1 ????????
    db   $ed, $05, $00, $f0, $0d, $15, $e8, $01        ;; 04:77c9 ????????
    db   $e0, $00, $0c, $f0, $f6, $0c, $13, $02        ;; 04:77d1 ????????
    db   $ff, $03, $f0, $f0, $0c, $05, $f3, $16        ;; 04:77d9 ????????
    db   $10, $f0, $0d, $e2, $f7, $0c, $f2, $f9        ;; 04:77e1 ????????
    db   $17, $10, $00, $ff, $0d, $e1, $f2, $0c        ;; 04:77e9 ????????
    db   $03, $f1, $16, $10, $f0, $01, $e0, $00        ;; 04:77f1 ????????
    db   $0c, $f2, $ff, $0d, $10, $00, $ff, $88        ;; 04:77f9 ????????
    db   $f0, $00, $06, $10, $00, $0e, $f0, $10        ;; 04:7801 ????????
    db   $01, $00, $10, $07, $10, $10, $03, $f0        ;; 04:7809 ????????
    db   $20, $04, $00, $20, $15, $10, $20, $ff        ;; 04:7811 ????????
    db   $91, $f0, $f0, $10, $00, $f0, $12, $f0        ;; 04:7819 ????????
    db   $00, $0a, $e0, $00, $09, $e0, $f0, $16        ;; 04:7821 ????????
    db   $10, $00, $15, $10, $f0, $04, $f0, $00        ;; 04:7829 ????????
    db   $04, $f0, $00, $ff, $11, $f0, $f0, $0c        ;; 04:7831 ????????
    db   $00, $f0, $12, $f0, $00, $0d, $e0, $00        ;; 04:7839 ????????
    db   $09, $e0, $f0, $0c, $18, $02, $15, $10        ;; 04:7841 ????????
    db   $f0, $0d, $e1, $02, $0c, $f1, $f8, $ff        ;; 04:7849 ????????
    db   $0c, $f2, $f1, $0d, $00, $f0, $12, $f0        ;; 04:7851 ????????
    db   $00, $0a, $e0, $00, $0c, $e5, $ed, $0d        ;; 04:7859 ????????
    db   $12, $05, $15, $10, $f0, $0c, $f0, $06        ;; 04:7861 ????????
    db   $04, $f0, $00, $ff, $11, $f0, $f0, $0c        ;; 04:7869 ????????
    db   $fd, $f3, $12, $f0, $00, $0d, $e0, $03        ;; 04:7871 ????????
    db   $0c, $e5, $ef, $16, $10, $00, $0d, $12        ;; 04:7879 ????????
    db   $f0, $04, $f0, $00, $04, $f0, $00, $ff        ;; 04:7881 ????????
    db   $81, $f0, $f0, $03, $00, $f0, $04, $10        ;; 04:7889 ????????
    db   $f0, $05, $f0, $00, $06, $10, $00, $07        ;; 04:7891 ????????
    db   $f0, $10, $08, $00, $10, $09, $10, $10        ;; 04:7899 ????????
    db   $ff, $0c, $f8, $f8, $0d, $f8, $f8, $0c        ;; 04:78a1 ?.......
    db   $f8, $f8, $0d, $f8, $f8, $0c, $f8, $f8        ;; 04:78a9 ........
    db   $0c, $f8, $f8, $0d, $f8, $f8, $0c, $f8        ;; 04:78b1 ????????
    db   $f8, $0d, $f8, $f8, $0c, $f8, $f8, $ff        ;; 04:78b9 ????????
    db   $0d, $ff, $f4, $0c, $04, $fc, $0d, $f6        ;; 04:78c1 ........
    db   $01, $0c, $ef, $f7, $0d, $f4, $ea, $0d        ;; 04:78c9 .......?
    db   $f4, $ff, $0c, $fc, $04, $0d, $01, $f6        ;; 04:78d1 ????????
    db   $0c, $f7, $ef, $0d, $ea, $f4, $ff, $0c        ;; 04:78d9 ???????.
    db   $06, $f0, $0d, $0e, $01, $0c, $f2, $09        ;; 04:78e1 ........
    db   $0d, $e8, $f6, $0c, $f1, $df, $0c, $f0        ;; 04:78e9 ......??
    db   $06, $0d, $01, $0e, $0c, $09, $f2, $0d        ;; 04:78f1 ????????
    db   $f6, $e8, $0c, $df, $f1, $ff, $0d, $0a        ;; 04:78f9 ??????..
    db   $ee, $0c, $eb, $04, $0d, $f0, $0f, $0c        ;; 04:7901 ........
    db   $e3, $f6, $0d, $f0, $d7, $0d, $ee, $0a        ;; 04:7909 .....???
    db   $0c, $04, $eb, $0d, $0f, $f0, $0c, $f6        ;; 04:7911 ????????
    db   $e3, $0d, $d7, $f0, $ff, $0c, $0b, $ed        ;; 04:7919 ?????...
    db   $0d, $e9, $05, $0c, $ef, $10, $0d, $e2        ;; 04:7921 ........
    db   $f6, $0c, $ef, $d5, $0c, $ed, $0b, $0d        ;; 04:7929 ....????
    db   $05, $e9, $0c, $10, $ef, $0d, $f6, $e2        ;; 04:7931 ????????
    db   $0c, $d5, $ef, $ff, $00, $02, $01, $03        ;; 04:7939 ????????
    db   $04, $06, $05, $07, $08, $0a, $09, $0b        ;; 04:7941 ????????
    db   $0c, $0e, $0d, $0f, $10, $12, $11, $13        ;; 04:7949 ????????
    db   $14, $16, $15, $17, $ff, $ff, $00, $02        ;; 04:7951 ????????
    db   $01, $03, $04, $06, $05, $07, $08, $0a        ;; 04:7959 ????????
    db   $09, $0b, $0c, $0e, $0d, $0f, $10, $12        ;; 04:7961 ????????
    db   $11, $13, $14, $16, $15, $17, $18, $19        ;; 04:7969 ????????
    db   $2f, $1a, $1b, $1d, $1c, $1e, $1f, $21        ;; 04:7971 ????????
    db   $20, $22, $23, $25, $24, $26, $27, $29        ;; 04:7979 ????????
    db   $28, $2a, $2b, $2d, $2c, $2e, $00, $02        ;; 04:7981 ??????..
    db   $01, $03, $04, $06, $05, $07, $08, $0a        ;; 04:7989 ........
    db   $09, $0b, $0c, $0e, $0d, $0f, $10, $12        ;; 04:7991 ........
    db   $11, $13, $14, $16, $15, $17, $18, $1a        ;; 04:7999 ........
    db   $19, $1b, $1c, $1e, $1d, $1f, $20, $22        ;; 04:79a1 ......??
    db   $21, $23, $24, $26, $25, $27, $28, $2a        ;; 04:79a9 ????????
    db   $29, $2b, $2c, $2e, $2d, $2f, $30, $32        ;; 04:79b1 ????????
    db   $31, $33, $34, $36, $35, $37, $38, $3a        ;; 04:79b9 ????????
    db   $39, $3b, $20, $22, $21, $23, $00, $02        ;; 04:79c1 ????????
    db   $01, $03, $04, $06, $05, $07, $08, $0a        ;; 04:79c9 ????????
    db   $09, $0b, $0c, $0e, $0d, $0f, $10, $12        ;; 04:79d1 ????????
    db   $11, $13, $14, $16, $15, $17, $18, $1a        ;; 04:79d9 ????????
    db   $19, $1b, $1d, $1f, $1e, $20, $21, $23        ;; 04:79e1 ????????
    db   $22, $24, $25, $27, $26, $28, $29, $2b        ;; 04:79e9 ????????
    db   $2a, $2c, $60, $01, $00, $02, $03, $05        ;; 04:79f1 ????????
    db   $04, $06, $07, $08, $60, $09, $0a, $0c        ;; 04:79f9 ????????
    db   $0b, $0d, $60, $0f, $0e, $10, $11, $13        ;; 04:7a01 ????????
    db   $12, $14, $15, $16, $60, $17, $18, $1a        ;; 04:7a09 ????????
    db   $19, $1b, $00, $02, $01, $03, $04, $06        ;; 04:7a11 ????????
    db   $05, $07, $08, $0a, $09, $0b, $0c, $0e        ;; 04:7a19 ????????
    db   $0d, $0f, $10, $12, $11, $13, $14, $16        ;; 04:7a21 ????????
    db   $15, $17, $18, $1a, $19, $1b, $1c, $6c        ;; 04:7a29 ????????
    db   $1d, $1e, $1f, $21, $20, $22, $00, $02        ;; 04:7a31 ????????
    db   $01, $03, $04, $53, $05, $06, $07, $08        ;; 04:7a39 ????????
    db   $53, $09, $0a, $0c, $0b, $0d, $0e, $10        ;; 04:7a41 ????????
    db   $0f, $11, $12, $14, $13, $15, $16, $53        ;; 04:7a49 ????????
    db   $17, $18, $19, $1b, $1a, $1c, $1d, $1f        ;; 04:7a51 ????????
    db   $1e, $20, $21, $23, $22, $24, $25, $27        ;; 04:7a59 ????????
    db   $26, $28, $29, $2b, $2a, $2c, $2d, $2f        ;; 04:7a61 ????????
    db   $2e, $30, $31, $33, $32, $34, $35, $36        ;; 04:7a69 ????????
    db   $0d, $2a, $0e, $2b, $00, $01, $7f, $02        ;; 04:7a71 ????????
    db   $03, $05, $04, $06, $7f, $7f, $07, $08        ;; 04:7a79 ????????
    db   $09, $0b, $0a, $0c, $0d, $0f, $0e, $10        ;; 04:7a81 ????????
    db   $11, $13, $12, $14, $15, $17, $16, $18        ;; 04:7a89 ????????
    db   $19, $1b, $1a, $1c, $1d, $1f, $1e, $7f        ;; 04:7a91 ????????
    db   $7f, $20, $7f, $21, $22, $24, $23, $25        ;; 04:7a99 ????????
    db   $26, $28, $27, $29, $00, $02, $01, $03        ;; 04:7aa1 ????????
    db   $04, $06, $05, $07, $08, $0a, $09, $0b        ;; 04:7aa9 ????????
    db   $0c, $0e, $0d, $0f, $10, $12, $11, $13        ;; 04:7ab1 ????????
    db   $14, $16, $15, $17, $18, $1a, $19, $1b        ;; 04:7ab9 ????????
    db   $1c, $1e, $1d, $1f, $20, $22, $21, $23        ;; 04:7ac1 ????????
    db   $24, $26, $25, $27, $28, $2a, $29, $2b        ;; 04:7ac9 ????????
    db   $2c, $2e, $2d, $2f, $30, $31, $37, $32        ;; 04:7ad1 ????????
    db   $33, $35, $34, $37, $36, $37, $37, $37        ;; 04:7ad9 ????????
    db   $00, $06, $01, $07, $02, $08, $03, $09        ;; 04:7ae1 ????????
    db   $04, $0a, $05, $0b, $0c, $12, $0d, $13        ;; 04:7ae9 ????????
    db   $0e, $14, $0f, $15, $10, $16, $11, $17        ;; 04:7af1 ????????
    db   $18, $1e, $19, $1f, $1a, $20, $1b, $21        ;; 04:7af9 ????????
    db   $1c, $22, $1d, $23, $24, $26, $25, $27        ;; 04:7b01 ????????
    db   $28, $2a, $29, $2b, $2c, $32, $2d, $33        ;; 04:7b09 ????????
    db   $2e, $34, $2f, $35, $30, $36, $31, $37        ;; 04:7b11 ????????
    db   $00, $04, $01, $05, $02, $06, $03, $07        ;; 04:7b19 ????????
    db   $08, $0c, $09, $0d, $0a, $0e, $0b, $0f        ;; 04:7b21 ????????
    db   $10, $14, $11, $15, $12, $16, $13, $17        ;; 04:7b29 ????????
    db   $18, $1a, $19, $1b, $1c, $22, $1d, $23        ;; 04:7b31 ????????
    db   $1e, $24, $1f, $25, $20, $26, $21, $27        ;; 04:7b39 ????????
    db   $28, $2c, $29, $2d, $2a, $2e, $2b, $2f        ;; 04:7b41 ????????
    db   $30, $34, $31, $35, $32, $36, $33, $37        ;; 04:7b49 ????????
    db   $38, $38, $00, $03, $01, $04, $02, $05        ;; 04:7b51 ????????
    db   $06, $0a, $07, $0b, $08, $0c, $09, $0d        ;; 04:7b59 ????????
    db   $0e, $11, $0f, $12, $10, $13, $14, $16        ;; 04:7b61 ????????
    db   $15, $17, $18, $1a, $19, $1b, $1c, $1e        ;; 04:7b69 ????????
    db   $1d, $1f, $20, $22, $21, $23, $24, $26        ;; 04:7b71 ????????
    db   $25, $27, $28, $2a, $29, $2b, $2c, $2e        ;; 04:7b79 ????????
    db   $2d, $2f, $30, $32, $31, $33, $00, $04        ;; 04:7b81 ????????
    db   $01, $05, $02, $06, $03, $07, $08, $0c        ;; 04:7b89 ????????
    db   $09, $0d, $0a, $0e, $0b, $0f, $10, $14        ;; 04:7b91 ????????
    db   $11, $15, $12, $16, $13, $17, $18, $1a        ;; 04:7b99 ????????
    db   $19, $1b, $1c, $1e, $1d, $1f, $10, $40        ;; 04:7ba1 ????????
    db   $42, $30, $42, $40, $10, $44, $46, $30        ;; 04:7ba9 ????????
    db   $4e, $4c, $30, $4a, $48, $10, $48, $4a        ;; 04:7bb1 ????????
    db   $30, $46, $44, $10, $4c, $4e, $10, $50        ;; 04:7bb9 ????????
    db   $52, $30, $52, $50, $30, $56, $54, $10        ;; 04:7bc1 ????????
    db   $54, $56, $10, $38, $3a, $10, $3c, $3e        ;; 04:7bc9 ????????
    db   $10, $58, $5a, $10, $48, $4a, $10, $40        ;; 04:7bd1 ????????
    db   $42, $10, $44, $46, $10, $4c, $4e, $10        ;; 04:7bd9 ????????
    db   $60, $62, $10, $50, $52, $10, $6c, $6e        ;; 04:7be1 ????????
    db   $10, $54, $56, $10, $68, $6a, $10, $5c        ;; 04:7be9 ????????
    db   $5e, $10, $64, $66, $10, $38, $3a, $10        ;; 04:7bf1 ????????
    db   $38, $3a, $10, $3c, $3e, $10, $4c, $4e        ;; 04:7bf9 ????????
    db   $10, $44, $46, $30, $46, $44, $10, $6c        ;; 04:7c01 ????????
    db   $6e, $10, $64, $66, $30, $66, $64, $10        ;; 04:7c09 ????????
    db   $50, $52, $10, $58, $5a, $30, $62, $60        ;; 04:7c11 ????????
    db   $10, $60, $62, $10, $5c, $5e, $10, $5c        ;; 04:7c19 ????????
    db   $5e, $10, $38, $3a, $10, $3c, $3e, $10        ;; 04:7c21 ????????
    db   $68, $6a, $10, $58, $5a, $10, $54, $56        ;; 04:7c29 ????????
    db   $30, $4e, $4c, $10, $40, $42, $10, $48        ;; 04:7c31 ????????
    db   $4a, $10, $4c, $4e, $30, $4e, $4c, $30        ;; 04:7c39 ????????
    db   $46, $44, $30, $4a, $48, $30, $42, $40        ;; 04:7c41 ????????
    db   $10, $40, $42, $10, $5c, $5e, $10, $44        ;; 04:7c49 ????????
    db   $46, $10, $48, $4a, $10, $50, $52, $10        ;; 04:7c51 ????????
    db   $58, $5a, $30, $46, $44, $10, $38, $3a        ;; 04:7c59 ????????
    db   $10, $3c, $3e, $10, $30, $32, $10, $34        ;; 04:7c61 ????????
    db   $36, $10, $54, $56, $10, $44, $46, $10        ;; 04:7c69 ???????.
    db   $40, $42, $10, $44, $46, $10, $48, $4a        ;; 04:7c71 ........
    db   $30, $4e, $4c, $30, $4a, $48, $30, $42        ;; 04:7c79 ........
    db   $40, $10, $4c, $4e, $30, $46, $44, $10        ;; 04:7c81 ........
    db   $50, $52, $10, $54, $56, $10, $5c, $5e        ;; 04:7c89 ........
    db   $10, $58, $5a, $10, $38, $3a, $10, $3c        ;; 04:7c91 ........
    db   $3e, $10, $40, $42, $10, $44, $46, $10        ;; 04:7c99 .???????
    db   $60, $62, $10, $5c, $5e, $10, $48, $4a        ;; 04:7ca1 ????????
    db   $30, $42, $40, $30, $62, $60, $30, $62        ;; 04:7ca9 ????????
    db   $60, $30, $46, $44, $10, $4c, $4e, $30        ;; 04:7cb1 ????????
    db   $4e, $4c, $30, $52, $50, $10, $38, $3a        ;; 04:7cb9 ????????
    db   $10, $3c, $3e, $10, $48, $4a, $30, $5e        ;; 04:7cc1 ????????
    db   $5c, $30, $4a, $48, $10, $54, $56, $10        ;; 04:7cc9 ????????
    db   $58, $5a, $10, $50, $52, $10, $30, $32        ;; 04:7cd1 ????????
    db   $10, $34, $36, $10, $38, $3a, $10, $3c        ;; 04:7cd9 ????????
    db   $3e, $10, $40, $42, $10, $44, $46, $10        ;; 04:7ce1 ????????
    db   $48, $4a, $10, $54, $56, $10, $50, $52        ;; 04:7ce9 ????????
    db   $10, $4c, $4e, $10, $58, $5a, $10, $5c        ;; 04:7cf1 ????????
    db   $5e, $10, $60, $62, $10, $64, $66, $30        ;; 04:7cf9 ????????
    db   $66, $64, $10, $68, $68, $10, $50, $52        ;; 04:7d01 ????????
    db   $10, $40, $42, $10, $68, $6a, $10, $6c        ;; 04:7d09 ????????
    db   $6e, $10, $48, $4a, $10, $4c, $4e, $10        ;; 04:7d11 ????????
    db   $50, $52, $10, $68, $6a, $10, $54, $56        ;; 04:7d19 ????????
    db   $10, $5c, $5e, $10, $60, $62, $10, $58        ;; 04:7d21 ????????
    db   $5a, $10, $38, $3a, $10, $3c, $3e, $10        ;; 04:7d29 ????????
    db   $64, $66, $10, $44, $46, $10, $4c, $4e        ;; 04:7d31 ????????
    db   $10, $50, $52, $10, $3c, $3e, $10, $48        ;; 04:7d39 ????????
    db   $4a, $10, $54, $56, $30, $5a, $58, $10        ;; 04:7d41 ????????
    db   $58, $5a, $10, $5c, $5e, $10, $40, $42        ;; 04:7d49 ????????
    db   $30, $5e, $5c, $30, $4a, $48, $30, $56        ;; 04:7d51 ????????
    db   $54, $10, $38, $3a, $10, $3c, $3e, $10        ;; 04:7d59 ????????
    db   $44, $46, $30, $42, $40, $30, $46, $44        ;; 04:7d61 ????????
    db   $10, $64, $66, $10, $68, $6a, $10, $6c        ;; 04:7d69 ????????
    db   $6e, $30, $62, $60, $10, $60, $62, $10        ;; 04:7d71 ????????
    db   $50, $52, $10, $40, $42, $30, $52, $50        ;; 04:7d79 ????????
    db   $10, $44, $46, $10, $48, $4a, $10, $4c        ;; 04:7d81 ????????
    db   $4e, $10, $62, $68, $30, $68, $62, $30        ;; 04:7d89 ????????
    db   $42, $40, $30, $46, $44, $30, $4a, $48        ;; 04:7d91 ????????
    db   $30, $4e, $4c, $10, $38, $3a, $10, $3c        ;; 04:7d99 ????????
    db   $3e, $10, $5c, $5e, $10, $60, $62, $10        ;; 04:7da1 ????????
    db   $64, $66, $10, $68, $6a, $30, $5e, $5c        ;; 04:7da9 ????????
    db   $30, $62, $60, $30, $66, $64, $30, $6a        ;; 04:7db1 ????????
    db   $68, $10, $54, $56, $10, $58, $5a, $30        ;; 04:7db9 ????????
    db   $56, $54, $30, $5a, $58, $10, $40, $42        ;; 04:7dc1 ????????
    db   $10, $34, $36, $10, $5c, $5e, $10, $38        ;; 04:7dc9 ????????
    db   $3a, $10, $3c, $3e, $10, $44, $46, $10        ;; 04:7dd1 ????????
    db   $48, $4a, $10, $4c, $4e, $10, $50, $52        ;; 04:7dd9 ????????
    db   $10, $54, $56, $10, $58, $5a, $10, $60        ;; 04:7de1 ????????
    db   $62, $10, $64, $66, $10, $68, $6a, $10        ;; 04:7de9 ????????
    db   $6c, $6e, $30, $36, $34, $30, $3a, $38        ;; 04:7df1 ????????
    db   $30, $3e, $3c, $30, $42, $40, $30, $46        ;; 04:7df9 ????????
    db   $44, $30, $4a, $48, $30, $4e, $4c, $30        ;; 04:7e01 ????????
    db   $52, $50, $30, $56, $54, $30, $5a, $58        ;; 04:7e09 ????????
    db   $30, $5e, $5c, $30, $62, $60, $30, $66        ;; 04:7e11 ????????
    db   $64, $30, $6a, $68, $30, $6e, $6c, $10        ;; 04:7e19 ????????
    db   $48, $4a, $10, $38, $3a, $30, $4a, $48        ;; 04:7e21 ????????
    db   $10, $3c, $3e, $10, $40, $42, $10, $44        ;; 04:7e29 ????????
    db   $46, $10, $4c, $4e, $10, $50, $52, $10        ;; 04:7e31 ????????
    db   $54, $56, $10, $58, $5a, $10, $5c, $5e        ;; 04:7e39 ????????
    db   $10, $60, $62, $10, $64, $66, $10, $68        ;; 04:7e41 ????????
    db   $6a, $10, $6c, $6e, $30, $3a, $38, $30        ;; 04:7e49 ????????
    db   $3e, $3c, $30, $42, $40, $30, $46, $44        ;; 04:7e51 ????????
    db   $30, $4e, $4c, $30, $52, $50, $30, $56        ;; 04:7e59 ????????
    db   $54, $30, $5a, $58, $30, $5e, $5c, $30        ;; 04:7e61 ????????
    db   $62, $60, $30, $66, $64, $30, $6a, $68        ;; 04:7e69 ????????
    db   $30, $6e, $6c, $10, $38, $3a, $10, $3c        ;; 04:7e71 ????????
    db   $3e, $10, $40, $42, $10, $44, $46, $10        ;; 04:7e79 ????????
    db   $48, $4a, $10, $4c, $4e, $10, $50, $52        ;; 04:7e81 ????????
    db   $10, $54, $56, $10, $58, $5a, $10, $5c        ;; 04:7e89 ????????
    db   $5e, $10, $60, $62, $10, $64, $66, $10        ;; 04:7e91 ????????
    db   $68, $6a, $10, $6c, $6e, $30, $3a, $38        ;; 04:7e99 ????????
    db   $30, $3e, $3c, $30, $42, $40, $30, $46        ;; 04:7ea1 ????????
    db   $44, $30, $4a, $48, $30, $4e, $4c, $30        ;; 04:7ea9 ????????
    db   $52, $50, $30, $56, $54, $30, $5a, $58        ;; 04:7eb1 ????????
    db   $30, $5e, $5c, $30, $62, $60, $30, $66        ;; 04:7eb9 ????????
    db   $64, $30, $6a, $68, $30, $6e, $6c, $10        ;; 04:7ec1 ????????
    db   $46, $48, $10, $3a, $3c, $30, $44, $42        ;; 04:7ec9 ????????
    db   $10, $3e, $40, $10, $42, $44, $10, $3a        ;; 04:7ed1 ????????
    db   $4a, $10, $4c, $4e, $30, $4a, $3a, $10        ;; 04:7ed9 ????????
    db   $50, $52, $10, $54, $56, $10, $58, $5a        ;; 04:7ee1 ????????
    db   $10, $5c, $5e, $10, $30, $32, $10, $34        ;; 04:7ee9 ????????
    db   $36, $10, $68, $6a, $10, $6c, $6e, $30        ;; 04:7ef1 ????????
    db   $3c, $3a, $30, $40, $3e, $30, $48, $46        ;; 04:7ef9 ????????
    db   $30, $4e, $4c, $30, $52, $50, $30, $56        ;; 04:7f01 ????????
    db   $54, $30, $5a, $58, $30, $5e, $5c, $30        ;; 04:7f09 ????????
    db   $62, $60, $10, $3a, $3a, $30, $6a, $68        ;; 04:7f11 ????????
    db   $30, $6e, $6c, $30, $66, $64, $10, $60        ;; 04:7f19 ????????
    db   $62, $10, $64, $66, $10, $40, $42, $10        ;; 04:7f21 ????????
    db   $44, $46, $10, $48, $4a, $50, $40, $42        ;; 04:7f29 ????????
    db   $30, $46, $44, $30, $4a, $48, $10, $50        ;; 04:7f31 ????????
    db   $52, $10, $4c, $4e, $10, $54, $56, $10        ;; 04:7f39 ????????
    db   $58, $5a, $10, $5c, $5e, $10, $38, $3a        ;; 04:7f41 ????????
    db   $10, $38, $3a, $10, $3c, $3e, $10, $44        ;; 04:7f49 ????????
    db   $46, $10, $40, $42, $10, $48, $4a, $10        ;; 04:7f51 ????????
    db   $4c, $4e, $10, $50, $52, $10, $54, $56        ;; 04:7f59 ????????
    db   $10, $58, $5a, $10, $5c, $5e, $30, $5a        ;; 04:7f61 ????????
    db   $58, $30, $5e, $5c, $30, $5e, $5c, $30        ;; 04:7f69 ????????
    db   $5e, $5c, $10, $38, $3a, $10, $3c, $3e        ;; 04:7f71 ????????
    db   $4c, $ff, $4e, $ff, $4e, $ff, $27, $00        ;; 04:7f79 ????????
    db   $00, $10, $00, $38, $10, $7e, $30, $7f        ;; 04:7f81 ????????
    db   $22, $7f, $32, $ff, $33, $ff, $73, $ff        ;; 04:7f89 ????????
    db   $37, $ff, $37, $ff, $37, $ff, $37, $ff        ;; 04:7f91 ????????
    db   $77, $fe, $7f, $ff, $7f, $ff, $7f, $ff        ;; 04:7f99 ????????
    db   $77, $ff, $76, $ff, $6e, $ff, $ee, $ff        ;; 04:7fa1 ????????
    db   $ec, $ff, $ec, $ff, $fe, $ff, $fe, $fe        ;; 04:7fa9 ????????
    db   $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fc        ;; 04:7fb1 ????????
    db   $ff, $f4, $ff, $f7, $fe, $f2, $ff, $ff        ;; 04:7fb9 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f        ;; 04:7fc1 ????????
    db   $ff, $3f, $ff, $3f, $ff, $bf, $7f, $d8        ;; 04:7fc9 ????????
    db   $ff, $ca, $fd, $c3, $fc, $af, $f0, $97        ;; 04:7fd1 ????????
    db   $f8, $d3, $ec, $af, $f0, $03, $fc, $00        ;; 04:7fd9 ????????
    db   $00, $00, $00, $00, $00, $ff, $ff, $00        ;; 04:7fe1 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $9f        ;; 04:7fe9 ????????
    db   $7f, $9f, $7f, $af, $7f, $99, $7f, $27        ;; 04:7ff1 ????????
    db   $ff, $17, $ef, $e9, $1f, $c0, $3f             ;; 04:7ff9 ???????
