;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"

SECTION "bank03", ROMX[$4000], BANK[$03]
;@call_to_bank_jumptable
    call_to_bank_target call_03_402c                   ;; 03:4000 pP
    call_to_bank_target call_03_4af5                   ;; 03:4002 pP
    call_to_bank_target spawnNPC                       ;; 03:4004 pP
    call_to_bank_target call_03_435f                   ;; 03:4006 pP
    call_to_bank_target call_03_44ed                   ;; 03:4008 pP
    call_to_bank_target call_03_444a                   ;; 03:400a pP
    call_to_bank_target call_03_455d                   ;; 03:400c ??
    call_to_bank_target call_03_4641                   ;; 03:400e pP
    call_to_bank_target call_03_4561                   ;; 03:4010 pP
    call_to_bank_target call_03_48d7                   ;; 03:4012 ??
    call_to_bank_target call_03_4b70                   ;; 03:4014 pP
    call_to_bank_target call_03_4aed                   ;; 03:4016 pP
    call_to_bank_target call_03_4af1                   ;; 03:4018 pP
    call_to_bank_target call_03_4af9                   ;; 03:401a pP
    call_to_bank_target call_03_4b4f                   ;; 03:401c pP
    call_to_bank_target call_03_43c5                   ;; 03:401e pP
    call_to_bank_target call_03_4a9f                   ;; 03:4020 ??
    call_to_bank_target call_03_4ac1                   ;; 03:4022 ??
    call_to_bank_target call_03_4b62                   ;; 03:4024 pP
    call_to_bank_target call_03_4c30                   ;; 03:4026 pP
    call_to_bank_target call_03_4c38                   ;; 03:4028 pP
    call_to_bank_target call_03_4a81                   ;; 03:402a pP

call_03_402c:
    ld   HL, wC4E0                                     ;; 03:402c $21 $e0 $c4
    ld   B, $08                                        ;; 03:402f $06 $08
    ld   C, $18                                        ;; 03:4031 $0e $18
    push BC                                            ;; 03:4033 $c5
    jr   .jr_03_403a                                   ;; 03:4034 $18 $04
.jr_03_4036:
    push BC                                            ;; 03:4036 $c5
    ld   B, $00                                        ;; 03:4037 $06 $00
    add  HL, BC                                        ;; 03:4039 $09
.jr_03_403a:
    push HL                                            ;; 03:403a $e5
    ld   A, [HL]                                       ;; 03:403b $7e
    cp   A, $ff                                        ;; 03:403c $fe $ff
    call NZ, call_03_404a                              ;; 03:403e $c4 $4a $40
    pop  HL                                            ;; 03:4041 $e1
    pop  BC                                            ;; 03:4042 $c1
    dec  B                                             ;; 03:4043 $05
    jr   NZ, .jr_03_4036                               ;; 03:4044 $20 $f0
    call call_00_2bd1                                  ;; 03:4046 $cd $d1 $2b
    ret                                                ;; 03:4049 $c9

call_03_404a:
    inc  HL                                            ;; 03:404a $23
    dec  [HL]                                          ;; 03:404b $35
    ret  NZ                                            ;; 03:404c $c0
    inc  HL                                            ;; 03:404d $23
    ld   A, [HL-]                                      ;; 03:404e $3a
    ld   [HL-], A                                      ;; 03:404f $32
    ld   B, A                                          ;; 03:4050 $47
    push HL                                            ;; 03:4051 $e5
    ld   D, H                                          ;; 03:4052 $54
    ld   E, L                                          ;; 03:4053 $5d
    ld   HL, $08                                       ;; 03:4054 $21 $08 $00
    add  HL, DE                                        ;; 03:4057 $19
    ld   A, [HL]                                       ;; 03:4058 $7e
    cp   A, $00                                        ;; 03:4059 $fe $00
    call NZ, call_03_4107                              ;; 03:405b $c4 $07 $41
    ld   HL, $04                                       ;; 03:405e $21 $04 $00
    add  HL, DE                                        ;; 03:4061 $19
    ld   A, [HL+]                                      ;; 03:4062 $2a
    ld   C, [HL]                                       ;; 03:4063 $4e
    cp   A, $00                                        ;; 03:4064 $fe $00
    jr   NZ, jr_03_40c7                                ;; 03:4066 $20 $5f
    ld   A, [DE]                                       ;; 03:4068 $1a
    ld   C, A                                          ;; 03:4069 $4f
    push BC                                            ;; 03:406a $c5
    push DE                                            ;; 03:406b $d5
    call call_00_29ba                                  ;; 03:406c $cd $ba $29
    pop  DE                                            ;; 03:406f $d1
    pop  BC                                            ;; 03:4070 $c1
    ld   HL, $0c                                       ;; 03:4071 $21 $0c $00
    add  HL, DE                                        ;; 03:4074 $19
    ld   E, [HL]                                       ;; 03:4075 $5e
    inc  HL                                            ;; 03:4076 $23
    ld   D, [HL]                                       ;; 03:4077 $56
    ld   A, E                                          ;; 03:4078 $7b
    or   A, D                                          ;; 03:4079 $b2
    jr   Z, jr_03_40fb                                 ;; 03:407a $28 $7f
    push DE                                            ;; 03:407c $d5
    call call_00_0cd3                                  ;; 03:407d $cd $d3 $0c
    pop  DE                                            ;; 03:4080 $d1
    cp   A, $00                                        ;; 03:4081 $fe $00
    jp   NZ, jp_03_40ff                                ;; 03:4083 $c2 $ff $40
    pop  HL                                            ;; 03:4086 $e1
    push HL                                            ;; 03:4087 $e5
    call call_03_41fc                                  ;; 03:4088 $cd $fc $41
    pop  HL                                            ;; 03:408b $e1
    push HL                                            ;; 03:408c $e5
    ld   BC, $12                                       ;; 03:408d $01 $12 $00
    add  HL, BC                                        ;; 03:4090 $09
    ld   A, [HL+]                                      ;; 03:4091 $2a
    ld   H, [HL]                                       ;; 03:4092 $66
    ld   L, A                                          ;; 03:4093 $6f
    add  HL, DE                                        ;; 03:4094 $19
    ld   A, [HL]                                       ;; 03:4095 $7e
    ld   L, A                                          ;; 03:4096 $6f
    ld   H, $00                                        ;; 03:4097 $26 $00
    add  HL, HL                                        ;; 03:4099 $29
    add  HL, HL                                        ;; 03:409a $29
    add  HL, HL                                        ;; 03:409b $29
    add  HL, HL                                        ;; 03:409c $29
    add  HL, HL                                        ;; 03:409d $29
    ld   DE, data_03_563e                              ;; 03:409e $11 $3e $56
    add  HL, DE                                        ;; 03:40a1 $19
    push HL                                            ;; 03:40a2 $e5
    call getRandomByte                                 ;; 03:40a3 $cd $1e $2b
    pop  HL                                            ;; 03:40a6 $e1
    ld   C, A                                          ;; 03:40a7 $4f
    and  A, $0f                                        ;; 03:40a8 $e6 $0f
    cp   A, C                                          ;; 03:40aa $b9
    jr   NZ, .jr_03_40b1                               ;; 03:40ab $20 $04
    ld   DE, $10                                       ;; 03:40ad $11 $10 $00
    add  HL, DE                                        ;; 03:40b0 $19
.jr_03_40b1:
    ld   E, A                                          ;; 03:40b1 $5f
    ld   D, $00                                        ;; 03:40b2 $16 $00
    add  HL, DE                                        ;; 03:40b4 $19
    ld   A, [HL]                                       ;; 03:40b5 $7e
    pop  DE                                            ;; 03:40b6 $d1
    push DE                                            ;; 03:40b7 $d5
    call call_03_418b                                  ;; 03:40b8 $cd $8b $41
    jr   Z, jr_03_4103                                 ;; 03:40bb $28 $46

jr_03_40bd:
    pop  HL                                            ;; 03:40bd $e1
    push HL                                            ;; 03:40be $e5
    ld   DE, $04                                       ;; 03:40bf $11 $04 $00
    add  HL, DE                                        ;; 03:40c2 $19
    ld   [HL+], A                                      ;; 03:40c3 $22
    ld   C, $00                                        ;; 03:40c4 $0e $00
    ld   [HL], C                                       ;; 03:40c6 $71

jr_03_40c7:
    pop  DE                                            ;; 03:40c7 $d1
    push DE                                            ;; 03:40c8 $d5
    push AF                                            ;; 03:40c9 $f5
    push BC                                            ;; 03:40ca $c5
    call call_03_4247                                  ;; 03:40cb $cd $47 $42
    pop  BC                                            ;; 03:40ce $c1
    ld   B, A                                          ;; 03:40cf $47
    pop  AF                                            ;; 03:40d0 $f1
    pop  DE                                            ;; 03:40d1 $d1
    push DE                                            ;; 03:40d2 $d5
    ld   HL, data_03_4c55                              ;; 03:40d3 $21 $55 $4c
    call callJumptable                                 ;; 03:40d6 $cd $70 $2b
    pop  DE                                            ;; 03:40d9 $d1
    push DE                                            ;; 03:40da $d5
    push AF                                            ;; 03:40db $f5
    ld   HL, $08                                       ;; 03:40dc $21 $08 $00
    add  HL, DE                                        ;; 03:40df $19
    ld   A, [DE]                                       ;; 03:40e0 $1a
    ld   C, A                                          ;; 03:40e1 $4f
    ld   A, [HL]                                       ;; 03:40e2 $7e
    cp   A, $00                                        ;; 03:40e3 $fe $00
    jr   Z, .jr_03_40e9                                ;; 03:40e5 $28 $02
    cp   A, $10                                        ;; 03:40e7 $fe $10
.jr_03_40e9:
    pop  AF                                            ;; 03:40e9 $f1
    pop  DE                                            ;; 03:40ea $d1
    ld   HL, $05                                       ;; 03:40eb $21 $05 $00
    add  HL, DE                                        ;; 03:40ee $19
    ld   [HL-], A                                      ;; 03:40ef $32
    cp   A, $00                                        ;; 03:40f0 $fe $00
    ret  NZ                                            ;; 03:40f2 $c0
    ld   [HL], A                                       ;; 03:40f3 $77
    ld   DE, hFFFD                                     ;; 03:40f4 $11 $fd $ff
    add  HL, DE                                        ;; 03:40f7 $19
    ld   [HL], $01                                     ;; 03:40f8 $36 $01
    ret                                                ;; 03:40fa $c9

jr_03_40fb:
    ld   A, $01                                        ;; 03:40fb $3e $01
    jr   jr_03_40bd                                    ;; 03:40fd $18 $be

jp_03_40ff:
    ld   A, $1b                                        ;; 03:40ff $3e $1b
    jr   jr_03_40bd                                    ;; 03:4101 $18 $ba

jr_03_4103:
    ld   A, $00                                        ;; 03:4103 $3e $00
    jr   jr_03_40bd                                    ;; 03:4105 $18 $b6

call_03_4107:
    cp   A, $2c                                        ;; 03:4107 $fe $2c
    jr   C, .jr_03_411f                                ;; 03:4109 $38 $14
    jr   Z, .jr_03_4153                                ;; 03:410b $28 $46
    sub  A, B                                          ;; 03:410d $90
    cp   A, $2c                                        ;; 03:410e $fe $2c
    jr   C, .jr_03_4153                                ;; 03:4110 $38 $41
    push HL                                            ;; 03:4112 $e5
    ld   HL, $04                                       ;; 03:4113 $21 $04 $00
    add  HL, DE                                        ;; 03:4116 $19
    ld   A, [HL]                                       ;; 03:4117 $7e
    cp   A, $00                                        ;; 03:4118 $fe $00
    jr   NZ, .jr_03_411e                               ;; 03:411a $20 $02
    ld   [HL], $05                                     ;; 03:411c $36 $05
.jr_03_411e:
    pop  HL                                            ;; 03:411e $e1
.jr_03_411f:
    ld   A, [HL]                                       ;; 03:411f $7e
    sub  A, B                                          ;; 03:4120 $90
    jr   C, .jr_03_4125                                ;; 03:4121 $38 $02
    ld   [HL], A                                       ;; 03:4123 $77
    ret  NZ                                            ;; 03:4124 $c0
.jr_03_4125:
    ld   [HL], $00                                     ;; 03:4125 $36 $00
    ld   A, [DE]                                       ;; 03:4127 $1a
    ld   C, A                                          ;; 03:4128 $4f
    push DE                                            ;; 03:4129 $d5
    push BC                                            ;; 03:412a $c5
    call getObjectCollisionFlags                       ;; 03:412b $cd $6d $0c
    pop  BC                                            ;; 03:412e $c1
    pop  DE                                            ;; 03:412f $d1
    push DE                                            ;; 03:4130 $d5
    and  A, $0f                                        ;; 03:4131 $e6 $0f
    ld   B, A                                          ;; 03:4133 $47
    ld   HL, $12                                       ;; 03:4134 $21 $12 $00
    add  HL, DE                                        ;; 03:4137 $19
    ld   A, [HL+]                                      ;; 03:4138 $2a
    ld   H, [HL]                                       ;; 03:4139 $66
    ld   L, A                                          ;; 03:413a $6f
    ld   A, [HL]                                       ;; 03:413b $7e
    and  A, $f0                                        ;; 03:413c $e6 $f0
    or   A, B                                          ;; 03:413e $b0
    call setObjectCollisionFlags                       ;; 03:413f $cd $86 $0c
    pop  DE                                            ;; 03:4142 $d1
    push DE                                            ;; 03:4143 $d5
    ld   HL, $0e                                       ;; 03:4144 $21 $0e $00
    add  HL, DE                                        ;; 03:4147 $19
    ld   A, [HL+]                                      ;; 03:4148 $2a
    ld   H, [HL]                                       ;; 03:4149 $66
    ld   L, A                                          ;; 03:414a $6f
    bit  7, H                                          ;; 03:414b $cb $7c
    ld   A, [DE]                                       ;; 03:414d $1a
    call NZ, call_03_48d7                              ;; 03:414e $c4 $d7 $48
    pop  DE                                            ;; 03:4151 $d1
    ret                                                ;; 03:4152 $c9
.jr_03_4153:
    ld   HL, $09                                       ;; 03:4153 $21 $09 $00
    add  HL, DE                                        ;; 03:4156 $19
    ld   A, [HL]                                       ;; 03:4157 $7e
    cp   A, $00                                        ;; 03:4158 $fe $00
    jr   Z, .jr_03_4163                                ;; 03:415a $28 $07
    ld   [HL], $00                                     ;; 03:415c $36 $00
    ld   HL, $02                                       ;; 03:415e $21 $02 $00
    add  HL, DE                                        ;; 03:4161 $19
    ld   [HL], A                                       ;; 03:4162 $77
.jr_03_4163:
    ld   A, [DE]                                       ;; 03:4163 $1a
    ld   C, A                                          ;; 03:4164 $4f
    push DE                                            ;; 03:4165 $d5
    push BC                                            ;; 03:4166 $c5
    call getObjectDirection                            ;; 03:4167 $cd $99 $0c
    call call_00_29e4                                  ;; 03:416a $cd $e4 $29
    pop  BC                                            ;; 03:416d $c1
    push BC                                            ;; 03:416e $c5
    call setObjectDirection                            ;; 03:416f $cd $a6 $0c
    pop  BC                                            ;; 03:4172 $c1
    pop  DE                                            ;; 03:4173 $d1
    push DE                                            ;; 03:4174 $d5
    ld   HL, $08                                       ;; 03:4175 $21 $08 $00
    add  HL, DE                                        ;; 03:4178 $19
    ld   A, [HL]                                       ;; 03:4179 $7e
    sub  A, B                                          ;; 03:417a $90
    ld   [HL], A                                       ;; 03:417b $77
    ld   HL, $0e                                       ;; 03:417c $21 $0e $00
    add  HL, DE                                        ;; 03:417f $19
    ld   A, [HL+]                                      ;; 03:4180 $2a
    ld   H, [HL]                                       ;; 03:4181 $66
    ld   L, A                                          ;; 03:4182 $6f
    bit  7, H                                          ;; 03:4183 $cb $7c
    ld   A, [DE]                                       ;; 03:4185 $1a
    call NZ, call_03_48d7                              ;; 03:4186 $c4 $d7 $48
    pop  DE                                            ;; 03:4189 $d1
    ret                                                ;; 03:418a $c9

call_03_418b:
    ld   C, A                                          ;; 03:418b $4f
    push BC                                            ;; 03:418c $c5
    push DE                                            ;; 03:418d $d5
    ld   A, [DE]                                       ;; 03:418e $1a
    ld   C, A                                          ;; 03:418f $4f
    call getObjectCollisionFlags                       ;; 03:4190 $cd $6d $0c
    and  A, $f0                                        ;; 03:4193 $e6 $f0
    cp   A, $d0                                        ;; 03:4195 $fe $d0
    jr   Z, .jr_03_41f1                                ;; 03:4197 $28 $58
    ld   A, [wCF60]                                    ;; 03:4199 $fa $60 $cf
    cp   A, $00                                        ;; 03:419c $fe $00
    jr   Z, .jr_03_41c5                                ;; 03:419e $28 $25
    call call_00_300a                                  ;; 03:41a0 $cd $0a $30
    jr   NZ, .jr_03_41b2                               ;; 03:41a3 $20 $0d
    ld   A, [wCF60]                                    ;; 03:41a5 $fa $60 $cf
    call call_00_2fca                                  ;; 03:41a8 $cd $ca $2f
    ld   A, $00                                        ;; 03:41ab $3e $00
    ld   [wCF60], A                                    ;; 03:41ad $ea $60 $cf
    jr   .jr_03_41c5                                   ;; 03:41b0 $18 $13
.jr_03_41b2:
    pop  DE                                            ;; 03:41b2 $d1
    push DE                                            ;; 03:41b3 $d5
    ld   HL, $0a                                       ;; 03:41b4 $21 $0a $00
    add  HL, DE                                        ;; 03:41b7 $19
    bit  7, [HL]                                       ;; 03:41b8 $cb $7e
    jr   Z, .jr_03_41c5                                ;; 03:41ba $28 $09
    pop  DE                                            ;; 03:41bc $d1
    pop  BC                                            ;; 03:41bd $c1
    push BC                                            ;; 03:41be $c5
    push DE                                            ;; 03:41bf $d5
    ld   A, C                                          ;; 03:41c0 $79
    cp   A, $04                                        ;; 03:41c1 $fe $04
    jr   NC, .jr_03_41f7                               ;; 03:41c3 $30 $32
.jr_03_41c5:
    ld   A, [wCF61]                                    ;; 03:41c5 $fa $61 $cf
    cp   A, $00                                        ;; 03:41c8 $fe $00
    jr   Z, .jr_03_41f1                                ;; 03:41ca $28 $25
    call call_00_300a                                  ;; 03:41cc $cd $0a $30
    jr   NZ, .jr_03_41de                               ;; 03:41cf $20 $0d
    ld   A, [wCF61]                                    ;; 03:41d1 $fa $61 $cf
    call call_00_2fca                                  ;; 03:41d4 $cd $ca $2f
    ld   A, $00                                        ;; 03:41d7 $3e $00
    ld   [wCF61], A                                    ;; 03:41d9 $ea $61 $cf
    jr   .jr_03_41f1                                   ;; 03:41dc $18 $13
.jr_03_41de:
    pop  DE                                            ;; 03:41de $d1
    push DE                                            ;; 03:41df $d5
    ld   HL, $0a                                       ;; 03:41e0 $21 $0a $00
    add  HL, DE                                        ;; 03:41e3 $19
    bit  6, [HL]                                       ;; 03:41e4 $cb $76
    jr   Z, .jr_03_41f1                                ;; 03:41e6 $28 $09
    pop  DE                                            ;; 03:41e8 $d1
    pop  BC                                            ;; 03:41e9 $c1
    push BC                                            ;; 03:41ea $c5
    push DE                                            ;; 03:41eb $d5
    ld   A, C                                          ;; 03:41ec $79
    cp   A, $02                                        ;; 03:41ed $fe $02
    jr   Z, .jr_03_41f7                                ;; 03:41ef $28 $06
.jr_03_41f1:
    xor  A, A                                          ;; 03:41f1 $af
    inc  A                                             ;; 03:41f2 $3c
    pop  DE                                            ;; 03:41f3 $d1
    pop  BC                                            ;; 03:41f4 $c1
    ld   A, C                                          ;; 03:41f5 $79
    ret                                                ;; 03:41f6 $c9
.jr_03_41f7:
    xor  A, A                                          ;; 03:41f7 $af
    pop  DE                                            ;; 03:41f8 $d1
    pop  BC                                            ;; 03:41f9 $c1
    ld   A, C                                          ;; 03:41fa $79
    ret                                                ;; 03:41fb $c9

call_03_41fc:
    push DE                                            ;; 03:41fc $d5
    ld   C, [HL]                                       ;; 03:41fd $4e
    push BC                                            ;; 03:41fe $c5
    call GetObjectX                                    ;; 03:41ff $cd $2d $0c
    pop  BC                                            ;; 03:4202 $c1
    ld   B, A                                          ;; 03:4203 $47
    push BC                                            ;; 03:4204 $c5
    call call_00_0293                                  ;; 03:4205 $cd $93 $02
    pop  BC                                            ;; 03:4208 $c1
    sub  A, B                                          ;; 03:4209 $90
    jr   Z, .jr_03_423d                                ;; 03:420a $28 $31
    jr   NC, .jr_03_4210                               ;; 03:420c $30 $02
    cpl                                                ;; 03:420e $2f
    inc  A                                             ;; 03:420f $3c
.jr_03_4210:
    cp   A, $08                                        ;; 03:4210 $fe $08
    jr   C, .jr_03_423d                                ;; 03:4212 $38 $29
    jr   Z, .jr_03_423d                                ;; 03:4214 $28 $27
    call GetObjectY                                    ;; 03:4216 $cd $3e $0c
    ld   B, A                                          ;; 03:4219 $47
    push BC                                            ;; 03:421a $c5
    call call_00_0299                                  ;; 03:421b $cd $99 $02
    pop  BC                                            ;; 03:421e $c1
    sub  A, B                                          ;; 03:421f $90
    jr   Z, .jr_03_4242                                ;; 03:4220 $28 $20
    jr   NC, .jr_03_4226                               ;; 03:4222 $30 $02
    cpl                                                ;; 03:4224 $2f
    inc  A                                             ;; 03:4225 $3c
.jr_03_4226:
    cp   A, $08                                        ;; 03:4226 $fe $08
    jr   C, .jr_03_4242                                ;; 03:4228 $38 $18
    jr   Z, .jr_03_4242                                ;; 03:422a $28 $16
    call call_00_3ded                                  ;; 03:422c $cd $ed $3d
    pop  DE                                            ;; 03:422f $d1
    call sub_HL_DE                                     ;; 03:4230 $cd $ab $2b
    jr   C, .jr_03_4239                                ;; 03:4233 $38 $04
    ld   DE, $10                                       ;; 03:4235 $11 $10 $00
    ret                                                ;; 03:4238 $c9
.jr_03_4239:
    ld   DE, $11                                       ;; 03:4239 $11 $11 $00
    ret                                                ;; 03:423c $c9
.jr_03_423d:
    pop  HL                                            ;; 03:423d $e1
    ld   DE, $12                                       ;; 03:423e $11 $12 $00
    ret                                                ;; 03:4241 $c9
.jr_03_4242:
    pop  HL                                            ;; 03:4242 $e1
    ld   DE, $13                                       ;; 03:4243 $11 $13 $00
    ret                                                ;; 03:4246 $c9

call_03_4247:
    call call_03_425b                                  ;; 03:4247 $cd $5b $42
    ld   HL, $12                                       ;; 03:424a $21 $12 $00
    add  HL, DE                                        ;; 03:424d $19
    ld   E, [HL]                                       ;; 03:424e $5e
    inc  HL                                            ;; 03:424f $23
    ld   D, [HL]                                       ;; 03:4250 $56
    ld   HL, $0a                                       ;; 03:4251 $21 $0a $00
    add  HL, DE                                        ;; 03:4254 $19
    ld   E, A                                          ;; 03:4255 $5f
    ld   D, $00                                        ;; 03:4256 $16 $00
    add  HL, DE                                        ;; 03:4258 $19
    ld   A, [HL]                                       ;; 03:4259 $7e
    ret                                                ;; 03:425a $c9

call_03_425b:
    ld   C, A                                          ;; 03:425b $4f
    ld   HL, $03                                       ;; 03:425c $21 $03 $00
    add  HL, DE                                        ;; 03:425f $19
    ld   A, [HL]                                       ;; 03:4260 $7e
    cp   A, $ff                                        ;; 03:4261 $fe $ff
    jr   Z, .jr_03_4268                                ;; 03:4263 $28 $03
    ld   [HL], $ff                                     ;; 03:4265 $36 $ff
    ret                                                ;; 03:4267 $c9
.jr_03_4268:
    ld   A, C                                          ;; 03:4268 $79
    and  A, $e0                                        ;; 03:4269 $e6 $e0
    cp   A, $20                                        ;; 03:426b $fe $20
    jr   Z, .jr_03_4288                                ;; 03:426d $28 $19
    cp   A, $40                                        ;; 03:426f $fe $40
    jr   Z, .jr_03_4288                                ;; 03:4271 $28 $15
    cp   A, $60                                        ;; 03:4273 $fe $60
    jr   Z, .jr_03_4295                                ;; 03:4275 $28 $1e
    cp   A, $80                                        ;; 03:4277 $fe $80
    jr   Z, .jr_03_4288                                ;; 03:4279 $28 $0d
    cp   A, $a0                                        ;; 03:427b $fe $a0
    jr   Z, .jr_03_4288                                ;; 03:427d $28 $09
    cp   A, $c0                                        ;; 03:427f $fe $c0
    jr   Z, .jr_03_4288                                ;; 03:4281 $28 $05
    ld   A, C                                          ;; 03:4283 $79
    cp   A, $02                                        ;; 03:4284 $fe $02
    jr   Z, .jr_03_4298                                ;; 03:4286 $28 $10
.jr_03_4288:
    ld   A, [DE]                                       ;; 03:4288 $1a
    ld   C, A                                          ;; 03:4289 $4f
    push DE                                            ;; 03:428a $d5
    call call_00_0c0c                                  ;; 03:428b $cd $0c $0c
    pop  DE                                            ;; 03:428e $d1
    ld   A, $00                                        ;; 03:428f $3e $00
    ret  Z                                             ;; 03:4291 $c8
    ld   A, $01                                        ;; 03:4292 $3e $01
    ret                                                ;; 03:4294 $c9
.jr_03_4295:
    ld   A, $02                                        ;; 03:4295 $3e $02
    ret                                                ;; 03:4297 $c9
.jr_03_4298:
    ld   A, $04                                        ;; 03:4298 $3e $04
    ret                                                ;; 03:429a $c9

call_03_429b:
    ld   B, $08                                        ;; 03:429b $06 $08
    ld   HL, wC4E0                                     ;; 03:429d $21 $e0 $c4
    ld   DE, $18                                       ;; 03:42a0 $11 $18 $00
.jr_03_42a3:
    cp   A, [HL]                                       ;; 03:42a3 $be
    ret  Z                                             ;; 03:42a4 $c8
    add  HL, DE                                        ;; 03:42a5 $19
    dec  B                                             ;; 03:42a6 $05
    jr   NZ, .jr_03_42a3                               ;; 03:42a7 $20 $fa
    xor  A, A                                          ;; 03:42a9 $af
    inc  A                                             ;; 03:42aa $3c
    ret                                                ;; 03:42ab $c9

call_03_42ac:
    push DE                                            ;; 03:42ac $d5
    ld   L, A                                          ;; 03:42ad $6f
    ld   H, $00                                        ;; 03:42ae $26 $00
    ld   E, L                                          ;; 03:42b0 $5d
    ld   D, H                                          ;; 03:42b1 $54
    add  HL, HL                                        ;; 03:42b2 $29
    add  HL, DE                                        ;; 03:42b3 $19
    add  HL, HL                                        ;; 03:42b4 $29
    add  HL, DE                                        ;; 03:42b5 $19
    add  HL, HL                                        ;; 03:42b6 $29
    ld   DE, data_03_59fe                              ;; 03:42b7 $11 $fe $59
    add  HL, DE                                        ;; 03:42ba $19
    pop  DE                                            ;; 03:42bb $d1
    ret                                                ;; 03:42bc $c9

; Create an NPC object.
; C=NPC type
spawnNPC:
    push DE                                            ;; 03:42bd $d5
    ld   A, C                                          ;; 03:42be $79
    ld   L, A                                          ;; 03:42bf $6f
    ld   H, $00                                        ;; 03:42c0 $26 $00
    ld   E, L                                          ;; 03:42c2 $5d
    ld   D, H                                          ;; 03:42c3 $54
    add  HL, DE                                        ;; 03:42c4 $19
    add  HL, DE                                        ;; 03:42c5 $19
    add  HL, HL                                        ;; 03:42c6 $29
    add  HL, HL                                        ;; 03:42c7 $29
    add  HL, HL                                        ;; 03:42c8 $29
    ld   DE, data_03_5f5a                              ;; 03:42c9 $11 $5a $5f
    add  HL, DE                                        ;; 03:42cc $19
    pop  DE                                            ;; 03:42cd $d1
    push HL                                            ;; 03:42ce $e5
    ld   A, [HL]                                       ;; 03:42cf $7e
    ld   BC, $08                                       ;; 03:42d0 $01 $08 $00
    add  HL, BC                                        ;; 03:42d3 $09
    ld   C, A                                          ;; 03:42d4 $4f
    ld   A, [HL+]                                      ;; 03:42d5 $2a
    ld   H, [HL]                                       ;; 03:42d6 $66
    ld   L, A                                          ;; 03:42d7 $6f
    ld   A, $02                                        ;; 03:42d8 $3e $02
    call createObject                                  ;; 03:42da $cd $74 $0a
    cp   A, $ff                                        ;; 03:42dd $fe $ff
    jr   Z, .jr_03_435b                                ;; 03:42df $28 $7a
    push BC                                            ;; 03:42e1 $c5
    ld   A, $ff                                        ;; 03:42e2 $3e $ff
    call call_03_429b                                  ;; 03:42e4 $cd $9b $42
    pop  BC                                            ;; 03:42e7 $c1
    jr   NZ, .jr_03_435b                               ;; 03:42e8 $20 $71
    ld   [HL], C                                       ;; 03:42ea $71
    ld   D, H                                          ;; 03:42eb $54
    ld   E, L                                          ;; 03:42ec $5d
    pop  BC                                            ;; 03:42ed $c1
    push BC                                            ;; 03:42ee $c5
    ld   HL, $01                                       ;; 03:42ef $21 $01 $00
    add  HL, BC                                        ;; 03:42f2 $09
    ld   A, [HL]                                       ;; 03:42f3 $7e
    call call_03_42ac                                  ;; 03:42f4 $cd $ac $42
    ld   B, H                                          ;; 03:42f7 $44
    ld   C, L                                          ;; 03:42f8 $4d
    ld   HL, $10                                       ;; 03:42f9 $21 $10 $00
    add  HL, DE                                        ;; 03:42fc $19
    ld   [HL], C                                       ;; 03:42fd $71
    inc  HL                                            ;; 03:42fe $23
    ld   [HL], B                                       ;; 03:42ff $70
    ld   HL, $00                                       ;; 03:4300 $21 $00 $00
    add  HL, BC                                        ;; 03:4303 $09
    ld   A, [HL]                                       ;; 03:4304 $7e
    ld   HL, $02                                       ;; 03:4305 $21 $02 $00
    add  HL, DE                                        ;; 03:4308 $19
    ld   [HL-], A                                      ;; 03:4309 $32
    push BC                                            ;; 03:430a $c5
    push DE                                            ;; 03:430b $d5
    push HL                                            ;; 03:430c $e5
    call getRandomByte                                 ;; 03:430d $cd $1e $2b
    and  A, $07                                        ;; 03:4310 $e6 $07
    inc  A                                             ;; 03:4312 $3c
    pop  HL                                            ;; 03:4313 $e1
    pop  DE                                            ;; 03:4314 $d1
    ld   [HL-], A                                      ;; 03:4315 $32
    pop  BC                                            ;; 03:4316 $c1
    push DE                                            ;; 03:4317 $d5
    push BC                                            ;; 03:4318 $c5
    call getRandomByte                                 ;; 03:4319 $cd $1e $2b
    pop  BC                                            ;; 03:431c $c1
    ld   HL, $01                                       ;; 03:431d $21 $01 $00
    add  HL, BC                                        ;; 03:4320 $09
    ld   L, [HL]                                       ;; 03:4321 $6e
    ld   H, $00                                        ;; 03:4322 $26 $00
    ld   C, L                                          ;; 03:4324 $4d
    srl  A                                             ;; 03:4325 $cb $3f
    srl  A                                             ;; 03:4327 $cb $3f
    srl  A                                             ;; 03:4329 $cb $3f
    srl  A                                             ;; 03:432b $cb $3f
    cpl                                                ;; 03:432d $2f
    inc  A                                             ;; 03:432e $3c
    jr   Z, .jr_03_4336                                ;; 03:432f $28 $05
    call MultiplyHL_by_A                               ;; 03:4331 $cd $7b $2b
    ld   A, L                                          ;; 03:4334 $7d
    ld   C, H                                          ;; 03:4335 $4c
.jr_03_4336:
    ld   B, $00                                        ;; 03:4336 $06 $00
    add  A, A                                          ;; 03:4338 $87
    rl   C                                             ;; 03:4339 $cb $11
    rl   B                                             ;; 03:433b $cb $10
    add  A, A                                          ;; 03:433d $87
    rl   C                                             ;; 03:433e $cb $11
    rl   B                                             ;; 03:4340 $cb $10
    pop  DE                                            ;; 03:4342 $d1
    ld   HL, $0c                                       ;; 03:4343 $21 $0c $00
    add  HL, DE                                        ;; 03:4346 $19
    ld   [HL], C                                       ;; 03:4347 $71
    inc  HL                                            ;; 03:4348 $23
    ld   [HL], B                                       ;; 03:4349 $70
    pop  BC                                            ;; 03:434a $c1
    ld   HL, $12                                       ;; 03:434b $21 $12 $00
    add  HL, DE                                        ;; 03:434e $19
    ld   [HL], C                                       ;; 03:434f $71
    inc  HL                                            ;; 03:4350 $23
    ld   [HL], B                                       ;; 03:4351 $70
    ld   HL, $04                                       ;; 03:4352 $21 $04 $00
    add  HL, DE                                        ;; 03:4355 $19
    ld   [HL], $00                                     ;; 03:4356 $36 $00
    ld   A, [DE]                                       ;; 03:4358 $1a
    ld   C, A                                          ;; 03:4359 $4f
    ret                                                ;; 03:435a $c9
.jr_03_435b:
    pop  DE                                            ;; 03:435b $d1
    ld   C, $ff                                        ;; 03:435c $0e $ff
    ret                                                ;; 03:435e $c9

call_03_435f:
    ld   A, C                                          ;; 03:435f $79
    cp   A, $ff                                        ;; 03:4360 $fe $ff
    ret  Z                                             ;; 03:4362 $c8
    call call_03_429b                                  ;; 03:4363 $cd $9b $42
    ret  NZ                                            ;; 03:4366 $c0
    ld   C, [HL]                                       ;; 03:4367 $4e
    ld   [HL], $ff                                     ;; 03:4368 $36 $ff
    push HL                                            ;; 03:436a $e5
    ld   A, [wC0A1]                                    ;; 03:436b $fa $a1 $c0
    bit  1, A                                          ;; 03:436e $cb $4f
    jr   NZ, .jr_03_43a8                               ;; 03:4370 $20 $36
    push BC                                            ;; 03:4372 $c5
    call getObjectCollisionFlags                       ;; 03:4373 $cd $6d $0c
    pop  BC                                            ;; 03:4376 $c1
    ld   B, A                                          ;; 03:4377 $47
    and  A, $f0                                        ;; 03:4378 $e6 $f0
    cp   A, $90                                        ;; 03:437a $fe $90
    jr   Z, .jr_03_4382                                ;; 03:437c $28 $04
    cp   A, $10                                        ;; 03:437e $fe $10
    jr   NZ, .jr_03_43a8                               ;; 03:4380 $20 $26
.jr_03_4382:
    push BC                                            ;; 03:4382 $c5
    call call_00_0b6f                                  ;; 03:4383 $cd $6f $0b
    pop  BC                                            ;; 03:4386 $c1
    pop  DE                                            ;; 03:4387 $d1
    push DE                                            ;; 03:4388 $d5
    ld   HL, $12                                       ;; 03:4389 $21 $12 $00
    add  HL, DE                                        ;; 03:438c $19
    ld   E, [HL]                                       ;; 03:438d $5e
    inc  HL                                            ;; 03:438e $23
    ld   D, [HL]                                       ;; 03:438f $56
    ld   HL, $14                                       ;; 03:4390 $21 $14 $00
    add  HL, DE                                        ;; 03:4393 $19
    ld   A, [HL+]                                      ;; 03:4394 $2a
    ld   H, [HL]                                       ;; 03:4395 $66
    ld   L, A                                          ;; 03:4396 $6f
    push HL                                            ;; 03:4397 $e5
    push BC                                            ;; 03:4398 $c5
    call getObjectDirection                            ;; 03:4399 $cd $99 $0c
    pop  BC                                            ;; 03:439c $c1
    pop  HL                                            ;; 03:439d $e1
    push BC                                            ;; 03:439e $c5
    and  A, $0f                                        ;; 03:439f $e6 $0f
    or   A, $80                                        ;; 03:43a1 $f6 $80
    ld   C, B                                          ;; 03:43a3 $48
    call runScriptByIndex                              ;; 03:43a4 $cd $ad $31
    pop  BC                                            ;; 03:43a7 $c1
.jr_03_43a8:
    call call_00_0ae3                                  ;; 03:43a8 $cd $e3 $0a
    pop  HL                                            ;; 03:43ab $e1
    inc  HL                                            ;; 03:43ac $23
    ld   A, $00                                        ;; 03:43ad $3e $00
    ld   B, $17                                        ;; 03:43af $06 $17
    call fillMemory                                    ;; 03:43b1 $cd $5d $2b
    ret                                                ;; 03:43b4 $c9
    db   $21, $e0, $c4, $06, $0d, $11, $18, $00        ;; 03:43b5 ????????
    db   $3e, $ff, $77, $19, $05, $20, $fb, $c9        ;; 03:43bd ????????

call_03_43c5:
    ld   C, A                                          ;; 03:43c5 $4f
    push BC                                            ;; 03:43c6 $c5
    ld   A, [wC4E0]                                    ;; 03:43c7 $fa $e0 $c4
    ld   C, A                                          ;; 03:43ca $4f
    call call_00_05ef                                  ;; 03:43cb $cd $ef $05
    push DE                                            ;; 03:43ce $d5
    ld   A, [wC4E0]                                    ;; 03:43cf $fa $e0 $c4
    ld   C, A                                          ;; 03:43d2 $4f
    call call_03_435f                                  ;; 03:43d3 $cd $5f $43
    pop  DE                                            ;; 03:43d6 $d1
    pop  BC                                            ;; 03:43d7 $c1
    call spawnNPC                                      ;; 03:43d8 $cd $bd $42
    ret                                                ;; 03:43db $c9

call_03_43dc:
    ld   L, A                                          ;; 03:43dc $6f
    ld   H, $00                                        ;; 03:43dd $26 $00
    ld   E, L                                          ;; 03:43df $5d
    ld   D, H                                          ;; 03:43e0 $54
    add  HL, DE                                        ;; 03:43e1 $19
    add  HL, DE                                        ;; 03:43e2 $19
    add  HL, HL                                        ;; 03:43e3 $29
    add  HL, HL                                        ;; 03:43e4 $29
    add  HL, HL                                        ;; 03:43e5 $29
    ld   DE, data_03_5f5a                              ;; 03:43e6 $11 $5a $5f
    add  HL, DE                                        ;; 03:43e9 $19
    push HL                                            ;; 03:43ea $e5
    ld   DE, $01                                       ;; 03:43eb $11 $01 $00
    add  HL, DE                                        ;; 03:43ee $19
    ld   A, [HL]                                       ;; 03:43ef $7e
    call call_03_42ac                                  ;; 03:43f0 $cd $ac $42
    ld   DE, $09                                       ;; 03:43f3 $11 $09 $00
    add  HL, DE                                        ;; 03:43f6 $19
    ld   A, [HL]                                       ;; 03:43f7 $7e
    call call_00_2bdd                                  ;; 03:43f8 $cd $dd $2b
    pop  HL                                            ;; 03:43fb $e1
    ld   DE, $02                                       ;; 03:43fc $11 $02 $00
    add  HL, DE                                        ;; 03:43ff $19
    ld   A, [HL+]                                      ;; 03:4400 $2a
    swap A                                             ;; 03:4401 $cb $37
    ld   E, A                                          ;; 03:4403 $5f
    and  A, $0f                                        ;; 03:4404 $e6 $0f
    or   A, $80                                        ;; 03:4406 $f6 $80
    ld   D, A                                          ;; 03:4408 $57
    ld   A, E                                          ;; 03:4409 $7b
    and  A, $f0                                        ;; 03:440a $e6 $f0
    ld   E, A                                          ;; 03:440c $5f
    push DE                                            ;; 03:440d $d5
    ld   A, [HL+]                                      ;; 03:440e $2a
    ld   E, A                                          ;; 03:440f $5f
    ld   C, [HL]                                       ;; 03:4410 $4e
    inc  HL                                            ;; 03:4411 $23
    ld   B, [HL]                                       ;; 03:4412 $46
    inc  HL                                            ;; 03:4413 $23
    ld   A, [HL+]                                      ;; 03:4414 $2a
    ld   H, [HL]                                       ;; 03:4415 $66
    ld   L, A                                          ;; 03:4416 $6f
    ld   A, E                                          ;; 03:4417 $7b
    add  A, A                                          ;; 03:4418 $87
    pop  DE                                            ;; 03:4419 $d1
.jr_03_441a:
    push AF                                            ;; 03:441a $f5
    ld   A, [HL+]                                      ;; 03:441b $2a
    push HL                                            ;; 03:441c $e5
    swap A                                             ;; 03:441d $cb $37
    ld   L, A                                          ;; 03:441f $6f
    and  A, $0f                                        ;; 03:4420 $e6 $0f
    ld   H, A                                          ;; 03:4422 $67
    ld   A, L                                          ;; 03:4423 $7d
    and  A, $f0                                        ;; 03:4424 $e6 $f0
    ld   L, A                                          ;; 03:4426 $6f
    add  HL, BC                                        ;; 03:4427 $09
    push BC                                            ;; 03:4428 $c5
    push DE                                            ;; 03:4429 $d5
    ld   A, B                                          ;; 03:442a $78
    swap A                                             ;; 03:442b $cb $37
    srl  A                                             ;; 03:442d $cb $3f
    srl  A                                             ;; 03:442f $cb $3f
    and  A, $03                                        ;; 03:4431 $e6 $03
    add  A, $08                                        ;; 03:4433 $c6 $08
    res  7, H                                          ;; 03:4435 $cb $bc
    set  6, H                                          ;; 03:4437 $cb $f4
    call addTileGraphicCopyRequest                     ;; 03:4439 $cd $f5 $2d
    pop  DE                                            ;; 03:443c $d1
    ld   HL, $10                                       ;; 03:443d $21 $10 $00
    add  HL, DE                                        ;; 03:4440 $19
    ld   E, L                                          ;; 03:4441 $5d
    ld   D, H                                          ;; 03:4442 $54
    pop  BC                                            ;; 03:4443 $c1
    pop  HL                                            ;; 03:4444 $e1
    pop  AF                                            ;; 03:4445 $f1
    dec  A                                             ;; 03:4446 $3d
    jr   NZ, .jr_03_441a                               ;; 03:4447 $20 $d1
    ret                                                ;; 03:4449 $c9

call_03_444a:
    push HL                                            ;; 03:444a $e5
    ld   [wNPCSpawnTableIndex], A                      ;; 03:444b $ea $ae $c5
    ld   L, A                                          ;; 03:444e $6f
    ld   H, $00                                        ;; 03:444f $26 $00
    ld   E, L                                          ;; 03:4451 $5d
    ld   D, H                                          ;; 03:4452 $54
    add  HL, HL                                        ;; 03:4453 $29
    add  HL, DE                                        ;; 03:4454 $19
    add  HL, HL                                        ;; 03:4455 $29
    ld   DE, NPCSpawnPointers                          ;; 03:4456 $11 $42 $71
    add  HL, DE                                        ;; 03:4459 $19
    ld   B, $03                                        ;; 03:445a $06 $03
.jr_03_445c:
    push HL                                            ;; 03:445c $e5
    ld   A, [HL+]                                      ;; 03:445d $2a
    ld   H, [HL]                                       ;; 03:445e $66
    ld   L, A                                          ;; 03:445f $6f
    inc  HL                                            ;; 03:4460 $23
    inc  HL                                            ;; 03:4461 $23
    push HL                                            ;; 03:4462 $e5
    push BC                                            ;; 03:4463 $c5
    call getRandomByte                                 ;; 03:4464 $cd $1e $2b
    and  A, $03                                        ;; 03:4467 $e6 $03
    ld   E, A                                          ;; 03:4469 $5f
    ld   D, $00                                        ;; 03:446a $16 $00
    pop  BC                                            ;; 03:446c $c1
    pop  HL                                            ;; 03:446d $e1
    add  HL, DE                                        ;; 03:446e $19
    ld   A, $03                                        ;; 03:446f $3e $03
    sub  A, B                                          ;; 03:4471 $90
    ld   E, A                                          ;; 03:4472 $5f
    ld   D, $00                                        ;; 03:4473 $16 $00
    ld   A, [HL]                                       ;; 03:4475 $7e
    ld   HL, wNPCSpawnTypes                            ;; 03:4476 $21 $a8 $c5
    add  HL, DE                                        ;; 03:4479 $19
    ld   [HL], A                                       ;; 03:447a $77
    push BC                                            ;; 03:447b $c5
    call call_03_43dc                                  ;; 03:447c $cd $dc $43
    pop  BC                                            ;; 03:447f $c1
    pop  HL                                            ;; 03:4480 $e1
    inc  HL                                            ;; 03:4481 $23
    inc  HL                                            ;; 03:4482 $23
    dec  B                                             ;; 03:4483 $05
    jr   NZ, .jr_03_445c                               ;; 03:4484 $20 $d6
    pop  HL                                            ;; 03:4486 $e1
    ret                                                ;; 03:4487 $c9

call_03_4488:
    push HL                                            ;; 03:4488 $e5
    push BC                                            ;; 03:4489 $c5
    push DE                                            ;; 03:448a $d5
    ld   A, C                                          ;; 03:448b $79
    ld   L, A                                          ;; 03:448c $6f
    ld   H, $00                                        ;; 03:448d $26 $00
    ld   E, L                                          ;; 03:448f $5d
    ld   D, H                                          ;; 03:4490 $54
    add  HL, DE                                        ;; 03:4491 $19
    add  HL, DE                                        ;; 03:4492 $19
    add  HL, HL                                        ;; 03:4493 $29
    add  HL, HL                                        ;; 03:4494 $29
    add  HL, HL                                        ;; 03:4495 $29
    ld   DE, data_03_5f5a                              ;; 03:4496 $11 $5a $5f
    add  HL, DE                                        ;; 03:4499 $19
    ld   A, [HL]                                       ;; 03:449a $7e
    pop  DE                                            ;; 03:449b $d1
    push DE                                            ;; 03:449c $d5
    call call_00_18c0                                  ;; 03:449d $cd $c0 $18
    pop  DE                                            ;; 03:44a0 $d1
    pop  BC                                            ;; 03:44a1 $c1
    pop  HL                                            ;; 03:44a2 $e1
    ret  Z                                             ;; 03:44a3 $c8
    push HL                                            ;; 03:44a4 $e5
    push BC                                            ;; 03:44a5 $c5
    push DE                                            ;; 03:44a6 $d5
    ld   C, $04                                        ;; 03:44a7 $0e $04
    call call_00_05ef                                  ;; 03:44a9 $cd $ef $05
    pop  HL                                            ;; 03:44ac $e1
    push HL                                            ;; 03:44ad $e5
    ld   A, D                                          ;; 03:44ae $7a
    sub  A, H                                          ;; 03:44af $94
    jr   NC, .jr_03_44b4                               ;; 03:44b0 $30 $02
    cpl                                                ;; 03:44b2 $2f
    inc  A                                             ;; 03:44b3 $3c
.jr_03_44b4:
    cp   A, $04                                        ;; 03:44b4 $fe $04
    jr   NC, .jr_03_44c7                               ;; 03:44b6 $30 $0f
    ld   A, E                                          ;; 03:44b8 $7b
    sub  A, L                                          ;; 03:44b9 $95
    jr   NC, .jr_03_44be                               ;; 03:44ba $30 $02
    cpl                                                ;; 03:44bc $2f
    inc  A                                             ;; 03:44bd $3c
.jr_03_44be:
    cp   A, $04                                        ;; 03:44be $fe $04
    jr   NC, .jr_03_44c7                               ;; 03:44c0 $30 $05
    xor  A, A                                          ;; 03:44c2 $af
    pop  DE                                            ;; 03:44c3 $d1
    pop  BC                                            ;; 03:44c4 $c1
    pop  HL                                            ;; 03:44c5 $e1
    ret                                                ;; 03:44c6 $c9
.jr_03_44c7:
    xor  A, A                                          ;; 03:44c7 $af
    dec  A                                             ;; 03:44c8 $3d
    pop  DE                                            ;; 03:44c9 $d1
    pop  BC                                            ;; 03:44ca $c1
    pop  HL                                            ;; 03:44cb $e1
    ret                                                ;; 03:44cc $c9

call_03_44cd:
    push HL                                            ;; 03:44cd $e5
    push BC                                            ;; 03:44ce $c5
.jr_03_44cf:
    call getRandomByte                                 ;; 03:44cf $cd $1e $2b
    and  A, $0f                                        ;; 03:44d2 $e6 $0f
    cp   A, $0f                                        ;; 03:44d4 $fe $0f
    jr   NC, .jr_03_44cf                               ;; 03:44d6 $30 $f7
    add  A, $02                                        ;; 03:44d8 $c6 $02
    ld   E, A                                          ;; 03:44da $5f
    push DE                                            ;; 03:44db $d5
.jr_03_44dc:
    call getRandomByte                                 ;; 03:44dc $cd $1e $2b
    and  A, $0f                                        ;; 03:44df $e6 $0f
    cp   A, $0b                                        ;; 03:44e1 $fe $0b
    jr   NC, .jr_03_44dc                               ;; 03:44e3 $30 $f7
    add  A, $02                                        ;; 03:44e5 $c6 $02
    pop  DE                                            ;; 03:44e7 $d1
    ld   D, A                                          ;; 03:44e8 $57
    pop  BC                                            ;; 03:44e9 $c1
    pop  HL                                            ;; 03:44ea $e1
    inc  A                                             ;; 03:44eb $3c
    ret                                                ;; 03:44ec $c9

call_03_44ed:
    push HL                                            ;; 03:44ed $e5
    push AF                                            ;; 03:44ee $f5
    add  A, A                                          ;; 03:44ef $87
    ld   C, A                                          ;; 03:44f0 $4f
    ld   B, $00                                        ;; 03:44f1 $06 $00
    ld   A, [wNPCSpawnTableIndex]                      ;; 03:44f3 $fa $ae $c5
    ld   L, A                                          ;; 03:44f6 $6f
    ld   H, $00                                        ;; 03:44f7 $26 $00
    ld   E, L                                          ;; 03:44f9 $5d
    ld   D, H                                          ;; 03:44fa $54
    add  HL, HL                                        ;; 03:44fb $29
    add  HL, DE                                        ;; 03:44fc $19
    add  HL, HL                                        ;; 03:44fd $29
    ld   DE, NPCSpawnPointers                          ;; 03:44fe $11 $42 $71
    add  HL, DE                                        ;; 03:4501 $19
    add  HL, BC                                        ;; 03:4502 $09
    ld   A, [HL+]                                      ;; 03:4503 $2a
    ld   H, [HL]                                       ;; 03:4504 $66
    ld   L, A                                          ;; 03:4505 $6f
    ld   A, [HL+]                                      ;; 03:4506 $2a
    ld   B, A                                          ;; 03:4507 $47
    ld   A, [HL+]                                      ;; 03:4508 $2a
    sub  A, B                                          ;; 03:4509 $90
    jr   Z, .jr_03_4520                                ;; 03:450a $28 $14
    push HL                                            ;; 03:450c $e5
    ld   C, A                                          ;; 03:450d $4f
    push BC                                            ;; 03:450e $c5
    call getRandomByte                                 ;; 03:450f $cd $1e $2b
    pop  BC                                            ;; 03:4512 $c1
    inc  C                                             ;; 03:4513 $0c
    ld   L, C                                          ;; 03:4514 $69
    ld   H, $00                                        ;; 03:4515 $26 $00
    push BC                                            ;; 03:4517 $c5
    call MultiplyHL_by_A                               ;; 03:4518 $cd $7b $2b
    ld   A, H                                          ;; 03:451b $7c
    pop  BC                                            ;; 03:451c $c1
    add  A, B                                          ;; 03:451d $80
    ld   B, A                                          ;; 03:451e $47
    pop  HL                                            ;; 03:451f $e1
.jr_03_4520:
    ld   DE, $04                                       ;; 03:4520 $11 $04 $00
    add  HL, DE                                        ;; 03:4523 $19
    pop  AF                                            ;; 03:4524 $f1
    ld   E, A                                          ;; 03:4525 $5f
    ld   A, B                                          ;; 03:4526 $78
    or   A, A                                          ;; 03:4527 $b7
    jr   Z, .jr_03_4549                                ;; 03:4528 $28 $1f
    push HL                                            ;; 03:452a $e5
    ld   D, $00                                        ;; 03:452b $16 $00
    ld   HL, wNPCSpawnTypes                            ;; 03:452d $21 $a8 $c5
    add  HL, DE                                        ;; 03:4530 $19
    ld   C, [HL]                                       ;; 03:4531 $4e
    pop  HL                                            ;; 03:4532 $e1
.jr_03_4533:
    ld   E, [HL]                                       ;; 03:4533 $5e
    inc  HL                                            ;; 03:4534 $23
    ld   D, [HL]                                       ;; 03:4535 $56
    inc  HL                                            ;; 03:4536 $23
    ld   A, $80                                        ;; 03:4537 $3e $80
    cp   A, D                                          ;; 03:4539 $ba
    jr   Z, .jr_03_454b                                ;; 03:453a $28 $0f
    cp   A, E                                          ;; 03:453c $bb
    jr   Z, .jr_03_454b                                ;; 03:453d $28 $0c
    push BC                                            ;; 03:453f $c5
    push HL                                            ;; 03:4540 $e5
    call spawnNPC                                      ;; 03:4541 $cd $bd $42
    pop  HL                                            ;; 03:4544 $e1
    pop  BC                                            ;; 03:4545 $c1
    dec  B                                             ;; 03:4546 $05
    jr   NZ, .jr_03_4533                               ;; 03:4547 $20 $ea
.jr_03_4549:
    pop  HL                                            ;; 03:4549 $e1
    ret                                                ;; 03:454a $c9
.jr_03_454b:
    call call_03_44cd                                  ;; 03:454b $cd $cd $44
    call call_03_4488                                  ;; 03:454e $cd $88 $44
    jr   Z, .jr_03_454b                                ;; 03:4551 $28 $f8
    push BC                                            ;; 03:4553 $c5
    call spawnNPC                                      ;; 03:4554 $cd $bd $42
    pop  BC                                            ;; 03:4557 $c1
    dec  B                                             ;; 03:4558 $05
    jr   NZ, .jr_03_454b                               ;; 03:4559 $20 $f0
    pop  HL                                            ;; 03:455b $e1
    ret                                                ;; 03:455c $c9

call_03_455d:
    ld   HL, $00                                       ;; 03:455d $21 $00 $00
    ret                                                ;; 03:4560 $c9

call_03_4561:
    cp   A, $c9                                        ;; 03:4561 $fe $c9
    jr   Z, .jr_03_4574                                ;; 03:4563 $28 $0f
    ld   L, A                                          ;; 03:4565 $6f
    and  A, $f0                                        ;; 03:4566 $e6 $f0
    cp   A, $50                                        ;; 03:4568 $fe $50
    jr   Z, .jr_03_4571                                ;; 03:456a $28 $05
    ld   A, L                                          ;; 03:456c $7d
    call call_03_4641                                  ;; 03:456d $cd $41 $46
    ret                                                ;; 03:4570 $c9
.jr_03_4571:
    ld   A, $00                                        ;; 03:4571 $3e $00
    ret                                                ;; 03:4573 $c9
.jr_03_4574:
    push BC                                            ;; 03:4574 $c5
    ld   A, C                                          ;; 03:4575 $79
    call call_03_429b                                  ;; 03:4576 $cd $9b $42
    ld   DE, $12                                       ;; 03:4579 $11 $12 $00
    add  HL, DE                                        ;; 03:457c $19
    ld   A, [HL+]                                      ;; 03:457d $2a
    ld   H, [HL]                                       ;; 03:457e $66
    ld   L, A                                          ;; 03:457f $6f
    ld   DE, $14                                       ;; 03:4580 $11 $14 $00
    add  HL, DE                                        ;; 03:4583 $19
    ld   A, [HL+]                                      ;; 03:4584 $2a
    ld   H, [HL]                                       ;; 03:4585 $66
    ld   L, A                                          ;; 03:4586 $6f
    pop  BC                                            ;; 03:4587 $c1
    push HL                                            ;; 03:4588 $e5
    push BC                                            ;; 03:4589 $c5
    call call_00_039a                                  ;; 03:458a $cd $9a $03
    pop  BC                                            ;; 03:458d $c1
    ld   B, A                                          ;; 03:458e $47
    push BC                                            ;; 03:458f $c5
    push DE                                            ;; 03:4590 $d5
    call call_00_02ab                                  ;; 03:4591 $cd $ab $02
    ld   L, A                                          ;; 03:4594 $6f
    pop  DE                                            ;; 03:4595 $d1
    pop  BC                                            ;; 03:4596 $c1
    ld   A, D                                          ;; 03:4597 $7a
    and  A, $0f                                        ;; 03:4598 $e6 $0f
    jr   Z, .jr_03_45bf                                ;; 03:459a $28 $23
    bit  7, L                                          ;; 03:459c $cb $7d
    jr   Z, .jr_03_45a8                                ;; 03:459e $28 $08
    bit  2, L                                          ;; 03:45a0 $cb $55
    jr   NZ, .jr_03_45b2                               ;; 03:45a2 $20 $0e
    bit  3, L                                          ;; 03:45a4 $cb $5d
    jr   NZ, .jr_03_45b8                               ;; 03:45a6 $20 $10
.jr_03_45a8:
    bit  2, B                                          ;; 03:45a8 $cb $50
    jr   NZ, .jr_03_45f9                               ;; 03:45aa $20 $4d
    bit  3, B                                          ;; 03:45ac $cb $58
    jr   NZ, .jr_03_45fe                               ;; 03:45ae $20 $4e
    jr   .jr_03_45bc                                   ;; 03:45b0 $18 $0a
.jr_03_45b2:
    bit  2, B                                          ;; 03:45b2 $cb $50
    jr   NZ, .jr_03_45f9                               ;; 03:45b4 $20 $43
    jr   .jr_03_45bc                                   ;; 03:45b6 $18 $04
.jr_03_45b8:
    bit  3, B                                          ;; 03:45b8 $cb $58
    jr   NZ, .jr_03_45fe                               ;; 03:45ba $20 $42
.jr_03_45bc:
    call call_03_4637                                  ;; 03:45bc $cd $37 $46
.jr_03_45bf:
    ld   D, A                                          ;; 03:45bf $57
    ld   A, E                                          ;; 03:45c0 $7b
    and  A, $07                                        ;; 03:45c1 $e6 $07
    jr   Z, .jr_03_45e8                                ;; 03:45c3 $28 $23
    bit  7, L                                          ;; 03:45c5 $cb $7d
    jr   Z, .jr_03_45d1                                ;; 03:45c7 $28 $08
    bit  0, L                                          ;; 03:45c9 $cb $45
    jr   NZ, .jr_03_45db                               ;; 03:45cb $20 $0e
    bit  1, L                                          ;; 03:45cd $cb $4d
    jr   NZ, .jr_03_45e1                               ;; 03:45cf $20 $10
.jr_03_45d1:
    bit  0, B                                          ;; 03:45d1 $cb $40
    jr   NZ, .jr_03_460a                               ;; 03:45d3 $20 $35
    bit  1, B                                          ;; 03:45d5 $cb $48
    jr   NZ, .jr_03_4605                               ;; 03:45d7 $20 $2c
    jr   .jr_03_45e5                                   ;; 03:45d9 $18 $0a
.jr_03_45db:
    bit  0, B                                          ;; 03:45db $cb $40
    jr   NZ, .jr_03_460a                               ;; 03:45dd $20 $2b
    jr   .jr_03_45e5                                   ;; 03:45df $18 $04
.jr_03_45e1:
    bit  1, B                                          ;; 03:45e1 $cb $48
    jr   NZ, .jr_03_4605                               ;; 03:45e3 $20 $20
.jr_03_45e5:
    call call_03_4637                                  ;; 03:45e5 $cd $37 $46
.jr_03_45e8:
    ld   E, A                                          ;; 03:45e8 $5f
    ld   A, C                                          ;; 03:45e9 $79
    ld   [wC5B0], A                                    ;; 03:45ea $ea $b0 $c5
    ld   A, B                                          ;; 03:45ed $78
    or   A, $00                                        ;; 03:45ee $f6 $00
    ld   C, $81                                        ;; 03:45f0 $0e $81
    pop  HL                                            ;; 03:45f2 $e1
    call runScriptByIndex                              ;; 03:45f3 $cd $ad $31
    ld   A, $c9                                        ;; 03:45f6 $3e $c9
    ret                                                ;; 03:45f8 $c9
.jr_03_45f9:
    ld   D, A                                          ;; 03:45f9 $57
    ld   E, $00                                        ;; 03:45fa $1e $00
    jr   .jr_03_460f                                   ;; 03:45fc $18 $11
.jr_03_45fe:
    or   A, $f8                                        ;; 03:45fe $f6 $f8
    ld   D, A                                          ;; 03:4600 $57
    ld   E, $00                                        ;; 03:4601 $1e $00
    jr   .jr_03_460f                                   ;; 03:4603 $18 $0a
.jr_03_4605:
    ld   E, A                                          ;; 03:4605 $5f
    ld   D, $00                                        ;; 03:4606 $16 $00
    jr   .jr_03_460f                                   ;; 03:4608 $18 $05
.jr_03_460a:
    or   A, $f8                                        ;; 03:460a $f6 $f8
    ld   E, A                                          ;; 03:460c $5f
    ld   D, $00                                        ;; 03:460d $16 $00
.jr_03_460f:
    ld   A, [wC0A1]                                    ;; 03:460f $fa $a1 $c0
    push AF                                            ;; 03:4612 $f5
    set  1, A                                          ;; 03:4613 $cb $cf
    set  3, A                                          ;; 03:4615 $cb $df
    set  2, A                                          ;; 03:4617 $cb $d7
    ld   [wC0A1], A                                    ;; 03:4619 $ea $a1 $c0
    ld   A, B                                          ;; 03:461c $78
    or   A, $30                                        ;; 03:461d $f6 $30
    push BC                                            ;; 03:461f $c5
    ld   B, $00                                        ;; 03:4620 $06 $00
    call call_00_08d4                                  ;; 03:4622 $cd $d4 $08
    pop  BC                                            ;; 03:4625 $c1
    pop  AF                                            ;; 03:4626 $f1
    ld   [wC0A1], A                                    ;; 03:4627 $ea $a1 $c0
    ld   A, C                                          ;; 03:462a $79
    call call_03_429b                                  ;; 03:462b $cd $9b $42
    ld   D, H                                          ;; 03:462e $54
    ld   E, L                                          ;; 03:462f $5d
    call call_03_4e15                                  ;; 03:4630 $cd $15 $4e
    pop  HL                                            ;; 03:4633 $e1
    ld   A, $00                                        ;; 03:4634 $3e $00
    ret                                                ;; 03:4636 $c9

call_03_4637:
    cpl                                                ;; 03:4637 $2f
    inc  A                                             ;; 03:4638 $3c
    and  A, $07                                        ;; 03:4639 $e6 $07
    cp   A, $04                                        ;; 03:463b $fe $04
    ret  C                                             ;; 03:463d $d8
    or   A, $f8                                        ;; 03:463e $f6 $f8
    ret                                                ;; 03:4640 $c9

call_03_4641:
    cp   A, $c9                                        ;; 03:4641 $fe $c9
    jr   Z, .jr_03_4659                                ;; 03:4643 $28 $14
    and  A, $f0                                        ;; 03:4645 $e6 $f0
    cp   A, $40                                        ;; 03:4647 $fe $40
    jp   Z, .jp_03_46f0                                ;; 03:4649 $ca $f0 $46
    cp   A, $30                                        ;; 03:464c $fe $30
    jp   Z, .jp_03_479d                                ;; 03:464e $ca $9d $47
    cp   A, $50                                        ;; 03:4651 $fe $50
    jp   Z, .jp_03_474a                                ;; 03:4653 $ca $4a $47
.jp_03_4656:
    ld   A, $00                                        ;; 03:4656 $3e $00
    ret                                                ;; 03:4658 $c9
.jr_03_4659:
    push BC                                            ;; 03:4659 $c5
    ld   A, [wC0A0]                                    ;; 03:465a $fa $a0 $c0
    cp   A, $02                                        ;; 03:465d $fe $02
    jr   NC, .jr_03_46d4                               ;; 03:465f $30 $73
    call call_00_039a                                  ;; 03:4661 $cd $9a $03
    call call_00_29e4                                  ;; 03:4664 $cd $e4 $29
    push AF                                            ;; 03:4667 $f5
    call call_00_02ab                                  ;; 03:4668 $cd $ab $02
    and  A, $0f                                        ;; 03:466b $e6 $0f
    ld   B, A                                          ;; 03:466d $47
    pop  AF                                            ;; 03:466e $f1
    and  A, B                                          ;; 03:466f $a0
    jr   Z, .jr_03_46d4                                ;; 03:4670 $28 $62
    pop  BC                                            ;; 03:4672 $c1
    push BC                                            ;; 03:4673 $c5
    ld   A, C                                          ;; 03:4674 $79
    call call_03_429b                                  ;; 03:4675 $cd $9b $42
    ld   D, H                                          ;; 03:4678 $54
    ld   E, L                                          ;; 03:4679 $5d
    ld   HL, $04                                       ;; 03:467a $21 $04 $00
    add  HL, DE                                        ;; 03:467d $19
    ld   A, [HL]                                       ;; 03:467e $7e
    cp   A, $20                                        ;; 03:467f $fe $20
    jr   NC, .jr_03_46d4                               ;; 03:4681 $30 $51
    push DE                                            ;; 03:4683 $d5
    call call_00_3dcd                                  ;; 03:4684 $cd $cd $3d
    pop  DE                                            ;; 03:4687 $d1
    push AF                                            ;; 03:4688 $f5
    ld   HL, $10                                       ;; 03:4689 $21 $10 $00
    add  HL, DE                                        ;; 03:468c $19
    ld   A, [HL+]                                      ;; 03:468d $2a
    ld   H, [HL]                                       ;; 03:468e $66
    ld   L, A                                          ;; 03:468f $6f
    ld   BC, $05                                       ;; 03:4690 $01 $05 $00
    add  HL, BC                                        ;; 03:4693 $09
    ld   B, [HL]                                       ;; 03:4694 $46
    pop  AF                                            ;; 03:4695 $f1
    and  A, B                                          ;; 03:4696 $a0
    and  A, $80                                        ;; 03:4697 $e6 $80
    jr   Z, .jr_03_46d4                                ;; 03:4699 $28 $39
    ld   HL, $01                                       ;; 03:469b $21 $01 $00
    add  HL, DE                                        ;; 03:469e $19
    ld   [HL], $01                                     ;; 03:469f $36 $01
    ld   HL, $08                                       ;; 03:46a1 $21 $08 $00
    add  HL, DE                                        ;; 03:46a4 $19
    ld   [HL], $01                                     ;; 03:46a5 $36 $01
    pop  BC                                            ;; 03:46a7 $c1
    push BC                                            ;; 03:46a8 $c5
    call getObjectCollisionFlags                       ;; 03:46a9 $cd $6d $0c
    and  A, $0f                                        ;; 03:46ac $e6 $0f
    or   A, $b0                                        ;; 03:46ae $f6 $b0
    pop  BC                                            ;; 03:46b0 $c1
    push BC                                            ;; 03:46b1 $c5
    call setObjectCollisionFlags                       ;; 03:46b2 $cd $86 $0c
    pop  BC                                            ;; 03:46b5 $c1
    push BC                                            ;; 03:46b6 $c5
    ld   C, B                                          ;; 03:46b7 $48
    call getObjectDirection                            ;; 03:46b8 $cd $99 $0c
    xor  A, $80                                        ;; 03:46bb $ee $80
    pop  BC                                            ;; 03:46bd $c1
    push BC                                            ;; 03:46be $c5
    call call_00_2c2d                                  ;; 03:46bf $cd $2d $2c
    pop  BC                                            ;; 03:46c2 $c1
    jr   Z, .jr_03_46d1                                ;; 03:46c3 $28 $0c
    push BC                                            ;; 03:46c5 $c5
    ld   C, B                                          ;; 03:46c6 $48
    call getObjectDirection                            ;; 03:46c7 $cd $99 $0c
    pop  BC                                            ;; 03:46ca $c1
    or   A, $40                                        ;; 03:46cb $f6 $40
    ld   C, B                                          ;; 03:46cd $48
    call setObjectDirection                            ;; 03:46ce $cd $a6 $0c
.jr_03_46d1:
    ld   A, $c9                                        ;; 03:46d1 $3e $c9
    ret                                                ;; 03:46d3 $c9
.jr_03_46d4:
    pop  BC                                            ;; 03:46d4 $c1
    ld   A, C                                          ;; 03:46d5 $79
    call call_03_429b                                  ;; 03:46d6 $cd $9b $42
    ld   DE, $10                                       ;; 03:46d9 $11 $10 $00
    add  HL, DE                                        ;; 03:46dc $19
    ld   E, [HL]                                       ;; 03:46dd $5e
    inc  HL                                            ;; 03:46de $23
    ld   D, [HL]                                       ;; 03:46df $56
    ld   HL, $06                                       ;; 03:46e0 $21 $06 $00
    add  HL, DE                                        ;; 03:46e3 $19
    ld   B, [HL]                                       ;; 03:46e4 $46
    ld   HL, $0b                                       ;; 03:46e5 $21 $0b $00
    add  HL, DE                                        ;; 03:46e8 $19
    ld   C, [HL]                                       ;; 03:46e9 $4e
    call call_00_0256                                  ;; 03:46ea $cd $56 $02
    ld   A, $c9                                        ;; 03:46ed $3e $c9
    ret                                                ;; 03:46ef $c9
.jp_03_46f0:
    call call_03_4906                                  ;; 03:46f0 $cd $06 $49
    jp   NZ, .jp_03_4656                               ;; 03:46f3 $c2 $56 $46
    call call_03_4931                                  ;; 03:46f6 $cd $31 $49
    jp   NZ, .jp_03_47eb                               ;; 03:46f9 $c2 $eb $47
    push BC                                            ;; 03:46fc $c5
    push DE                                            ;; 03:46fd $d5
    call call_00_3dc0                                  ;; 03:46fe $cd $c0 $3d
    pop  DE                                            ;; 03:4701 $d1
    call call_03_4955                                  ;; 03:4702 $cd $55 $49
    pop  BC                                            ;; 03:4705 $c1
    jp   NZ, .jp_03_47eb                               ;; 03:4706 $c2 $eb $47
    push BC                                            ;; 03:4709 $c5
    push DE                                            ;; 03:470a $d5
    ld   BC, $07                                       ;; 03:470b $01 $07 $00
    call call_03_496e                                  ;; 03:470e $cd $6e $49
    push DE                                            ;; 03:4711 $d5
    call call_00_3d0e                                  ;; 03:4712 $cd $0e $3d
    call call_03_4985                                  ;; 03:4715 $cd $85 $49
    pop  DE                                            ;; 03:4718 $d1
    call call_03_499b                                  ;; 03:4719 $cd $9b $49
    pop  DE                                            ;; 03:471c $d1
    pop  BC                                            ;; 03:471d $c1
    jp   Z, .jp_03_47eb                                ;; 03:471e $ca $eb $47
    push BC                                            ;; 03:4721 $c5
    push DE                                            ;; 03:4722 $d5
    push HL                                            ;; 03:4723 $e5
    call call_00_3f05                                  ;; 03:4724 $cd $05 $3f
    cp   A, $08                                        ;; 03:4727 $fe $08
    jr   NZ, .jr_03_4738                               ;; 03:4729 $20 $0d
    pop  HL                                            ;; 03:472b $e1
    push HL                                            ;; 03:472c $e5
    srl  H                                             ;; 03:472d $cb $3c
    rr   L                                             ;; 03:472f $cb $1d
    srl  H                                             ;; 03:4731 $cb $3c
    rr   L                                             ;; 03:4733 $cb $1d
    call call_00_3df6                                  ;; 03:4735 $cd $f6 $3d
.jr_03_4738:
    pop  HL                                            ;; 03:4738 $e1
    pop  DE                                            ;; 03:4739 $d1
    set  7, H                                          ;; 03:473a $cb $fc
    ld   B, H                                          ;; 03:473c $44
    ld   C, L                                          ;; 03:473d $4d
    ld   HL, $0e                                       ;; 03:473e $21 $0e $00
    add  HL, DE                                        ;; 03:4741 $19
    ld   [HL], C                                       ;; 03:4742 $71
    inc  HL                                            ;; 03:4743 $23
    ld   [HL], B                                       ;; 03:4744 $70
    pop  BC                                            ;; 03:4745 $c1
    call call_03_4a26                                  ;; 03:4746 $cd $26 $4a
    ret                                                ;; 03:4749 $c9
.jp_03_474a:
    call call_03_4906                                  ;; 03:474a $cd $06 $49
    jp   NZ, .jp_03_4656                               ;; 03:474d $c2 $56 $46
    call call_03_4931                                  ;; 03:4750 $cd $31 $49
    jr   NZ, .jr_03_4769                               ;; 03:4753 $20 $14
    push BC                                            ;; 03:4755 $c5
    push DE                                            ;; 03:4756 $d5
    call call_00_3dc0                                  ;; 03:4757 $cd $c0 $3d
    pop  DE                                            ;; 03:475a $d1
    call call_03_4955                                  ;; 03:475b $cd $55 $49
    pop  BC                                            ;; 03:475e $c1
    jr   Z, .jr_03_4777                                ;; 03:475f $28 $16
    cp   A, $12                                        ;; 03:4761 $fe $12
    jp   Z, .jp_03_47fd                                ;; 03:4763 $ca $fd $47
    jp   .jp_03_47eb                                   ;; 03:4766 $c3 $eb $47
.jr_03_4769:
    push BC                                            ;; 03:4769 $c5
    push DE                                            ;; 03:476a $d5
    call call_00_3dc0                                  ;; 03:476b $cd $c0 $3d
    pop  DE                                            ;; 03:476e $d1
    pop  BC                                            ;; 03:476f $c1
    cp   A, $12                                        ;; 03:4770 $fe $12
    jp   Z, .jp_03_47fd                                ;; 03:4772 $ca $fd $47
    jr   .jp_03_47eb                                   ;; 03:4775 $18 $74
.jr_03_4777:
    push BC                                            ;; 03:4777 $c5
    push DE                                            ;; 03:4778 $d5
    ld   BC, $08                                       ;; 03:4779 $01 $08 $00
    call call_03_496e                                  ;; 03:477c $cd $6e $49
    push DE                                            ;; 03:477f $d5
    call call_00_3daf                                  ;; 03:4780 $cd $af $3d
    call call_03_4985                                  ;; 03:4783 $cd $85 $49
    pop  DE                                            ;; 03:4786 $d1
    call call_03_49c6                                  ;; 03:4787 $cd $c6 $49
    pop  DE                                            ;; 03:478a $d1
    pop  BC                                            ;; 03:478b $c1
    jr   Z, .jp_03_47eb                                ;; 03:478c $28 $5d
    push BC                                            ;; 03:478e $c5
    ld   B, H                                          ;; 03:478f $44
    ld   C, L                                          ;; 03:4790 $4d
    ld   HL, $0e                                       ;; 03:4791 $21 $0e $00
    add  HL, DE                                        ;; 03:4794 $19
    ld   [HL], C                                       ;; 03:4795 $71
    inc  HL                                            ;; 03:4796 $23
    ld   [HL], B                                       ;; 03:4797 $70
    pop  BC                                            ;; 03:4798 $c1
    call call_03_4a26                                  ;; 03:4799 $cd $26 $4a
    ret                                                ;; 03:479c $c9
.jp_03_479d:
    call call_03_4919                                  ;; 03:479d $cd $19 $49
    jp   NZ, .jp_03_4656                               ;; 03:47a0 $c2 $56 $46
    call call_03_4931                                  ;; 03:47a3 $cd $31 $49
    jp   NZ, .jp_03_47eb                               ;; 03:47a6 $c2 $eb $47
    push BC                                            ;; 03:47a9 $c5
    push DE                                            ;; 03:47aa $d5
    ld   A, B                                          ;; 03:47ab $78
    call call_00_2c0f                                  ;; 03:47ac $cd $0f $2c
    pop  DE                                            ;; 03:47af $d1
    call call_03_4955                                  ;; 03:47b0 $cd $55 $49
    pop  BC                                            ;; 03:47b3 $c1
    jr   NZ, .jp_03_47eb                               ;; 03:47b4 $20 $35
    push BC                                            ;; 03:47b6 $c5
    push DE                                            ;; 03:47b7 $d5
    ld   A, B                                          ;; 03:47b8 $78
    push AF                                            ;; 03:47b9 $f5
    call call_03_4968                                  ;; 03:47ba $cd $68 $49
    pop  AF                                            ;; 03:47bd $f1
    push DE                                            ;; 03:47be $d5
    call call_00_2c15                                  ;; 03:47bf $cd $15 $2c
    call call_03_4985                                  ;; 03:47c2 $cd $85 $49
    pop  DE                                            ;; 03:47c5 $d1
    ld   D, $00                                        ;; 03:47c6 $16 $00
    call sub_HL_DE                                     ;; 03:47c8 $cd $ab $2b
    pop  DE                                            ;; 03:47cb $d1
    pop  BC                                            ;; 03:47cc $c1
    jr   C, .jp_03_47eb                                ;; 03:47cd $38 $1c
    push BC                                            ;; 03:47cf $c5
    push DE                                            ;; 03:47d0 $d5
    ld   D, H                                          ;; 03:47d1 $54
    ld   E, L                                          ;; 03:47d2 $5d
    call call_03_49f6                                  ;; 03:47d3 $cd $f6 $49
    pop  DE                                            ;; 03:47d6 $d1
    pop  BC                                            ;; 03:47d7 $c1
    jr   Z, .jp_03_47eb                                ;; 03:47d8 $28 $11
    push BC                                            ;; 03:47da $c5
    set  7, H                                          ;; 03:47db $cb $fc
    ld   B, H                                          ;; 03:47dd $44
    ld   C, L                                          ;; 03:47de $4d
    ld   HL, $0e                                       ;; 03:47df $21 $0e $00
    add  HL, DE                                        ;; 03:47e2 $19
    ld   [HL], C                                       ;; 03:47e3 $71
    inc  HL                                            ;; 03:47e4 $23
    ld   [HL], B                                       ;; 03:47e5 $70
    pop  BC                                            ;; 03:47e6 $c1
    call call_03_4a26                                  ;; 03:47e7 $cd $26 $4a
    ret                                                ;; 03:47ea $c9
.jp_03_47eb:
    ld   HL, $0e                                       ;; 03:47eb $21 $0e $00
    add  HL, DE                                        ;; 03:47ee $19
    ld   BC, $00                                       ;; 03:47ef $01 $00 $00
    ld   [HL], C                                       ;; 03:47f2 $71
    inc  HL                                            ;; 03:47f3 $23
    ld   [HL], B                                       ;; 03:47f4 $70
    ld   A, $15                                        ;; 03:47f5 $3e $15
    call playSFX                                       ;; 03:47f7 $cd $7d $29
    ld   A, $40                                        ;; 03:47fa $3e $40
    ret                                                ;; 03:47fc $c9
.jp_03_47fd:
    ld   HL, $0e                                       ;; 03:47fd $21 $0e $00
    add  HL, DE                                        ;; 03:4800 $19
    ld   BC, $00                                       ;; 03:4801 $01 $00 $00
    ld   [HL], C                                       ;; 03:4804 $71
    inc  HL                                            ;; 03:4805 $23
    ld   [HL], B                                       ;; 03:4806 $70
    ld   A, $00                                        ;; 03:4807 $3e $00
    ret                                                ;; 03:4809 $c9

call_03_480a:
    push BC                                            ;; 03:480a $c5
    push DE                                            ;; 03:480b $d5
    call getObjectCollisionFlags                       ;; 03:480c $cd $6d $0c
    and  A, $f0                                        ;; 03:480f $e6 $f0
    cp   A, $90                                        ;; 03:4811 $fe $90
    jr   Z, .jr_03_481a                                ;; 03:4813 $28 $05
    cp   A, $10                                        ;; 03:4815 $fe $10
    jp   NZ, .jp_03_48b6                               ;; 03:4817 $c2 $b6 $48
.jr_03_481a:
    pop  DE                                            ;; 03:481a $d1
    push DE                                            ;; 03:481b $d5
    ld   HL, $10                                       ;; 03:481c $21 $10 $00
    add  HL, DE                                        ;; 03:481f $19
    ld   C, [HL]                                       ;; 03:4820 $4e
    inc  HL                                            ;; 03:4821 $23
    ld   B, [HL]                                       ;; 03:4822 $46
    ld   HL, $0c                                       ;; 03:4823 $21 $0c $00
    add  HL, BC                                        ;; 03:4826 $09
    ld   A, [HL+]                                      ;; 03:4827 $2a
    push HL                                            ;; 03:4828 $e5
    call add12_5rnd_bank3                              ;; 03:4829 $cd $bc $48
    call addXP                                         ;; 03:482c $cd $16 $3d
    pop  HL                                            ;; 03:482f $e1
    ld   A, [HL]                                       ;; 03:4830 $7e
    call add12_5rnd_bank3                              ;; 03:4831 $cd $bc $48
    call addMoney                                      ;; 03:4834 $cd $72 $3d
    call getRandomByte                                 ;; 03:4837 $cd $1e $2b
    and  A, $07                                        ;; 03:483a $e6 $07
    jr   NZ, .jp_03_48b6                               ;; 03:483c $20 $78
    pop  HL                                            ;; 03:483e $e1
    push HL                                            ;; 03:483f $e5
    ld   DE, $12                                       ;; 03:4840 $11 $12 $00
    add  HL, DE                                        ;; 03:4843 $19
    ld   A, [HL+]                                      ;; 03:4844 $2a
    ld   H, [HL]                                       ;; 03:4845 $66
    ld   L, A                                          ;; 03:4846 $6f
    ld   DE, data_03_5f5a                              ;; 03:4847 $11 $5a $5f
    call sub_HL_DE                                     ;; 03:484a $cd $ab $2b
    ld   A, $18                                        ;; 03:484d $3e $18
    call divMod                                        ;; 03:484f $cd $8b $2b
    ld   A, L                                          ;; 03:4852 $7d
    ld   HL, wNPCSpawnTypes                            ;; 03:4853 $21 $a8 $c5
    ld   B, $03                                        ;; 03:4856 $06 $03
.jr_03_4858:
    cp   A, [HL]                                       ;; 03:4858 $be
    jr   Z, .jr_03_4863                                ;; 03:4859 $28 $08
    inc  HL                                            ;; 03:485b $23
    dec  B                                             ;; 03:485c $05
    jr   NZ, .jr_03_4858                               ;; 03:485d $20 $f9
    ld   A, $00                                        ;; 03:485f $3e $00
    jr   .jr_03_4866                                   ;; 03:4861 $18 $03
.jr_03_4863:
    ld   A, $03                                        ;; 03:4863 $3e $03
    sub  A, B                                          ;; 03:4865 $90
.jr_03_4866:
    cp   A, $00                                        ;; 03:4866 $fe $00
    jr   Z, .jr_03_4878                                ;; 03:4868 $28 $0e
    cp   A, $01                                        ;; 03:486a $fe $01
    jr   Z, .jr_03_4873                                ;; 03:486c $28 $05
    ld   HL, wD633                                     ;; 03:486e $21 $33 $d6
    jr   .jr_03_487b                                   ;; 03:4871 $18 $08
.jr_03_4873:
    ld   HL, wD623                                     ;; 03:4873 $21 $23 $d6
    jr   .jr_03_487b                                   ;; 03:4876 $18 $03
.jr_03_4878:
    ld   HL, wD613                                     ;; 03:4878 $21 $13 $d6
.jr_03_487b:
    add  A, $0c                                        ;; 03:487b $c6 $0c
    pop  DE                                            ;; 03:487d $d1
    push AF                                            ;; 03:487e $f5
    push HL                                            ;; 03:487f $e5
    ld   HL, $12                                       ;; 03:4880 $21 $12 $00
    add  HL, DE                                        ;; 03:4883 $19
    ld   E, [HL]                                       ;; 03:4884 $5e
    inc  HL                                            ;; 03:4885 $23
    ld   D, [HL]                                       ;; 03:4886 $56
    ld   HL, $16                                       ;; 03:4887 $21 $16 $00
    add  HL, DE                                        ;; 03:488a $19
    ld   A, [HL+]                                      ;; 03:488b $2a
    ld   H, [HL]                                       ;; 03:488c $66
    ld   L, A                                          ;; 03:488d $6f
    ld   A, H                                          ;; 03:488e $7c
    or   A, L                                          ;; 03:488f $b5
    jr   Z, .jr_03_48b5                                ;; 03:4890 $28 $23
    call getScriptPointerFromScriptPointerTable        ;; 03:4892 $cd $82 $32
    ld   D, H                                          ;; 03:4895 $54
    ld   E, L                                          ;; 03:4896 $5d
    pop  HL                                            ;; 03:4897 $e1
    ld   A, $02                                        ;; 03:4898 $3e $02
    ld   [HL+], A                                      ;; 03:489a $22
    ld   A, D                                          ;; 03:489b $7a
    ld   [HL+], A                                      ;; 03:489c $22
    ld   A, E                                          ;; 03:489d $7b
    ld   [HL+], A                                      ;; 03:489e $22
    ld   A, $00                                        ;; 03:489f $3e $00
    ld   [HL+], A                                      ;; 03:48a1 $22
    pop  AF                                            ;; 03:48a2 $f1
    pop  BC                                            ;; 03:48a3 $c1
    push AF                                            ;; 03:48a4 $f5
    push BC                                            ;; 03:48a5 $c5
    call call_00_05ef                                  ;; 03:48a6 $cd $ef $05
    pop  BC                                            ;; 03:48a9 $c1
    push DE                                            ;; 03:48aa $d5
    call call_03_435f                                  ;; 03:48ab $cd $5f $43
    pop  DE                                            ;; 03:48ae $d1
    pop  AF                                            ;; 03:48af $f1
    ld   C, A                                          ;; 03:48b0 $4f
    call spawnNPC                                      ;; 03:48b1 $cd $bd $42
    ret                                                ;; 03:48b4 $c9
.jr_03_48b5:
    pop  HL                                            ;; 03:48b5 $e1
.jp_03_48b6:
    pop  DE                                            ;; 03:48b6 $d1
    pop  BC                                            ;; 03:48b7 $c1
    call call_03_435f                                  ;; 03:48b8 $cd $5f $43
    ret                                                ;; 03:48bb $c9

; HL = A + ((A * RND()) >> 11)
; Add 12.5% randomness to A and store in HL
add12_5rnd_bank3:
    push AF                                            ;; 03:48bc $f5
    call getRandomByte                                 ;; 03:48bd $cd $1e $2b
    ld   L, A                                          ;; 03:48c0 $6f
    ld   H, $00                                        ;; 03:48c1 $26 $00
    pop  AF                                            ;; 03:48c3 $f1
    push AF                                            ;; 03:48c4 $f5
    call MultiplyHL_by_A                               ;; 03:48c5 $cd $7b $2b
    srl  H                                             ;; 03:48c8 $cb $3c
    srl  H                                             ;; 03:48ca $cb $3c
    srl  H                                             ;; 03:48cc $cb $3c
    ld   L, H                                          ;; 03:48ce $6c
    ld   H, $00                                        ;; 03:48cf $26 $00
    pop  AF                                            ;; 03:48d1 $f1
    ld   E, A                                          ;; 03:48d2 $5f
    ld   D, $00                                        ;; 03:48d3 $16 $00
    add  HL, DE                                        ;; 03:48d5 $19
    ret                                                ;; 03:48d6 $c9

call_03_48d7:
    call call_03_429b                                  ;; 03:48d7 $cd $9b $42
    ret  NZ                                            ;; 03:48da $c0
    push HL                                            ;; 03:48db $e5
    ld   DE, $0e                                       ;; 03:48dc $11 $0e $00
    add  HL, DE                                        ;; 03:48df $19
    ld   E, [HL]                                       ;; 03:48e0 $5e
    inc  HL                                            ;; 03:48e1 $23
    ld   D, [HL]                                       ;; 03:48e2 $56
    dec  HL                                            ;; 03:48e3 $2b
    res  7, D                                          ;; 03:48e4 $cb $ba
    ld   BC, $00                                       ;; 03:48e6 $01 $00 $00
    ld   [HL], C                                       ;; 03:48e9 $71
    inc  HL                                            ;; 03:48ea $23
    ld   [HL], B                                       ;; 03:48eb $70
    ld   H, D                                          ;; 03:48ec $62
    ld   L, E                                          ;; 03:48ed $6b
    pop  DE                                            ;; 03:48ee $d1
    push DE                                            ;; 03:48ef $d5
    ld   A, H                                          ;; 03:48f0 $7c
    or   A, L                                          ;; 03:48f1 $b5
    jr   Z, .jr_03_4904                                ;; 03:48f2 $28 $10
    call call_03_4a0b                                  ;; 03:48f4 $cd $0b $4a
    pop  HL                                            ;; 03:48f7 $e1
    jr   Z, .jr_03_48fb                                ;; 03:48f8 $28 $01
    ret  NC                                            ;; 03:48fa $d0
.jr_03_48fb:
    ld   DE, $04                                       ;; 03:48fb $11 $04 $00
    add  HL, DE                                        ;; 03:48fe $19
    ld   A, $00                                        ;; 03:48ff $3e $00
    ld   [HL+], A                                      ;; 03:4901 $22
    ld   [HL+], A                                      ;; 03:4902 $22
    ret                                                ;; 03:4903 $c9
.jr_03_4904:
    pop  HL                                            ;; 03:4904 $e1
    ret                                                ;; 03:4905 $c9

call_03_4906:
    ld   A, [wCF5B]                                    ;; 03:4906 $fa $5b $cf
    cp   A, D                                          ;; 03:4909 $ba
    jr   C, .jr_03_4916                                ;; 03:490a $38 $0a
    cp   A, E                                          ;; 03:490c $bb
    jr   C, .jr_03_4916                                ;; 03:490d $38 $07
    push BC                                            ;; 03:490f $c5
    ld   A, C                                          ;; 03:4910 $79
    call call_03_429b                                  ;; 03:4911 $cd $9b $42
    pop  BC                                            ;; 03:4914 $c1
    ret                                                ;; 03:4915 $c9
.jr_03_4916:
    xor  A, A                                          ;; 03:4916 $af
    inc  A                                             ;; 03:4917 $3c
    ret                                                ;; 03:4918 $c9

call_03_4919:
    push DE                                            ;; 03:4919 $d5
    push BC                                            ;; 03:491a $c5
    ld   A, B                                          ;; 03:491b $78
    call call_00_2c09                                  ;; 03:491c $cd $09 $2c
    pop  BC                                            ;; 03:491f $c1
    pop  DE                                            ;; 03:4920 $d1
    cp   A, D                                          ;; 03:4921 $ba
    jr   C, .jr_03_492e                                ;; 03:4922 $38 $0a
    cp   A, E                                          ;; 03:4924 $bb
    jr   C, .jr_03_492e                                ;; 03:4925 $38 $07
    push BC                                            ;; 03:4927 $c5
    ld   A, C                                          ;; 03:4928 $79
    call call_03_429b                                  ;; 03:4929 $cd $9b $42
    pop  BC                                            ;; 03:492c $c1
    ret                                                ;; 03:492d $c9
.jr_03_492e:
    xor  A, A                                          ;; 03:492e $af
    inc  A                                             ;; 03:492f $3c
    ret                                                ;; 03:4930 $c9

call_03_4931:
    ld   D, H                                          ;; 03:4931 $54
    ld   E, L                                          ;; 03:4932 $5d
    push BC                                            ;; 03:4933 $c5
    ld   HL, $10                                       ;; 03:4934 $21 $10 $00
    add  HL, DE                                        ;; 03:4937 $19
    ld   C, [HL]                                       ;; 03:4938 $4e
    inc  HL                                            ;; 03:4939 $23
    ld   B, [HL]                                       ;; 03:493a $46
    ld   HL, $05                                       ;; 03:493b $21 $05 $00
    add  HL, BC                                        ;; 03:493e $09
    ld   A, [HL]                                       ;; 03:493f $7e
    and  A, $40                                        ;; 03:4940 $e6 $40
    pop  BC                                            ;; 03:4942 $c1
    ret  Z                                             ;; 03:4943 $c8
    push DE                                            ;; 03:4944 $d5
    push BC                                            ;; 03:4945 $c5
    call call_00_039a                                  ;; 03:4946 $cd $9a $03
    pop  BC                                            ;; 03:4949 $c1
    push BC                                            ;; 03:494a $c5
    push AF                                            ;; 03:494b $f5
    call getObjectDirection                            ;; 03:494c $cd $99 $0c
    ld   L, A                                          ;; 03:494f $6f
    pop  AF                                            ;; 03:4950 $f1
    pop  BC                                            ;; 03:4951 $c1
    pop  DE                                            ;; 03:4952 $d1
    and  A, L                                          ;; 03:4953 $a5
    ret                                                ;; 03:4954 $c9

call_03_4955:
    ld   HL, $10                                       ;; 03:4955 $21 $10 $00
    add  HL, DE                                        ;; 03:4958 $19
    ld   C, [HL]                                       ;; 03:4959 $4e
    inc  HL                                            ;; 03:495a $23
    ld   B, [HL]                                       ;; 03:495b $46
    ld   HL, $04                                       ;; 03:495c $21 $04 $00
    add  HL, BC                                        ;; 03:495f $09
    ld   L, [HL]                                       ;; 03:4960 $6e
    ld   H, B                                          ;; 03:4961 $60
    ld   B, A                                          ;; 03:4962 $47
    ld   A, L                                          ;; 03:4963 $7d
    ld   L, C                                          ;; 03:4964 $69
    and  A, B                                          ;; 03:4965 $a0
    ld   A, B                                          ;; 03:4966 $78
    ret                                                ;; 03:4967 $c9

call_03_4968:
    ld   DE, $07                                       ;; 03:4968 $11 $07 $00
    add  HL, DE                                        ;; 03:496b $19
    ld   E, [HL]                                       ;; 03:496c $5e
    ret                                                ;; 03:496d $c9

call_03_496e:
    push HL                                            ;; 03:496e $e5
    add  HL, BC                                        ;; 03:496f $09
    ld   A, [HL]                                       ;; 03:4970 $7e
    push AF                                            ;; 03:4971 $f5
    call call_00_3de9                                  ;; 03:4972 $cd $e9 $3d
    ld   D, A                                          ;; 03:4975 $57
    pop  AF                                            ;; 03:4976 $f1
    ld   E, A                                          ;; 03:4977 $5f
    pop  BC                                            ;; 03:4978 $c1
    ld   HL, $03                                       ;; 03:4979 $21 $03 $00
    add  HL, BC                                        ;; 03:497c $09
    ld   A, [HL]                                       ;; 03:497d $7e
    and  A, D                                          ;; 03:497e $a2
    ret  Z                                             ;; 03:497f $c8
    srl  E                                             ;; 03:4980 $cb $3b
    srl  E                                             ;; 03:4982 $cb $3b
    ret                                                ;; 03:4984 $c9

call_03_4985:
    ld   L, A                                          ;; 03:4985 $6f
    ld   H, $00                                        ;; 03:4986 $26 $00
    ld   A, [wC0A0]                                    ;; 03:4988 $fa $a0 $c0
    cp   A, $05                                        ;; 03:498b $fe $05
    ret  NZ                                            ;; 03:498d $c0
    ld   D, H                                          ;; 03:498e $54
    ld   E, L                                          ;; 03:498f $5d
    add  HL, DE                                        ;; 03:4990 $19
    add  HL, DE                                        ;; 03:4991 $19
    srl  H                                             ;; 03:4992 $cb $3c
    rr   L                                             ;; 03:4994 $cb $1d
    srl  H                                             ;; 03:4996 $cb $3c
    rr   L                                             ;; 03:4998 $cb $1d
    ret                                                ;; 03:499a $c9

call_03_499b:
    ld   D, $00                                        ;; 03:499b $16 $00
    call sub_HL_DE                                     ;; 03:499d $cd $ab $2b
    jr   C, .jr_03_49c1                                ;; 03:49a0 $38 $1f
    ret  Z                                             ;; 03:49a2 $c8
    push HL                                            ;; 03:49a3 $e5
    ld   A, [wCF63]                                    ;; 03:49a4 $fa $63 $cf
    push HL                                            ;; 03:49a7 $e5
    call MultiplyHL_by_A                               ;; 03:49a8 $cd $7b $2b
    ld   D, $00                                        ;; 03:49ab $16 $00
    rl   L                                             ;; 03:49ad $cb $15
    rl   H                                             ;; 03:49af $cb $14
    rl   D                                             ;; 03:49b1 $cb $12
    rl   L                                             ;; 03:49b3 $cb $15
    rl   H                                             ;; 03:49b5 $cb $14
    rl   D                                             ;; 03:49b7 $cb $12
    ld   E, H                                          ;; 03:49b9 $5c
    pop  HL                                            ;; 03:49ba $e1
    add  HL, DE                                        ;; 03:49bb $19
    pop  DE                                            ;; 03:49bc $d1
    call call_03_49f6                                  ;; 03:49bd $cd $f6 $49
    ret                                                ;; 03:49c0 $c9
.jr_03_49c1:
    ld   HL, $00                                       ;; 03:49c1 $21 $00 $00
    xor  A, A                                          ;; 03:49c4 $af
    ret                                                ;; 03:49c5 $c9

call_03_49c6:
    ld   D, $00                                        ;; 03:49c6 $16 $00
    call sub_HL_DE                                     ;; 03:49c8 $cd $ab $2b
    jr   C, .jr_03_49f1                                ;; 03:49cb $38 $24
    ret  Z                                             ;; 03:49cd $c8
    push HL                                            ;; 03:49ce $e5
    ld   A, [wCF63]                                    ;; 03:49cf $fa $63 $cf
    cp   A, $40                                        ;; 03:49d2 $fe $40
    jr   NZ, .jr_03_49d7                               ;; 03:49d4 $20 $01
    add  HL, HL                                        ;; 03:49d6 $29
.jr_03_49d7:
    push HL                                            ;; 03:49d7 $e5
    call MultiplyHL_by_A                               ;; 03:49d8 $cd $7b $2b
    ld   D, $00                                        ;; 03:49db $16 $00
    rl   L                                             ;; 03:49dd $cb $15
    rl   H                                             ;; 03:49df $cb $14
    rl   D                                             ;; 03:49e1 $cb $12
    rl   L                                             ;; 03:49e3 $cb $15
    rl   H                                             ;; 03:49e5 $cb $14
    rl   D                                             ;; 03:49e7 $cb $12
    ld   E, H                                          ;; 03:49e9 $5c
    pop  HL                                            ;; 03:49ea $e1
    add  HL, DE                                        ;; 03:49eb $19
    pop  DE                                            ;; 03:49ec $d1
    call call_03_49f6                                  ;; 03:49ed $cd $f6 $49
    ret                                                ;; 03:49f0 $c9
.jr_03_49f1:
    ld   HL, $00                                       ;; 03:49f1 $21 $00 $00
    xor  A, A                                          ;; 03:49f4 $af
    ret                                                ;; 03:49f5 $c9

call_03_49f6:
    push HL                                            ;; 03:49f6 $e5
    push DE                                            ;; 03:49f7 $d5
    call getRandomByte                                 ;; 03:49f8 $cd $1e $2b
    pop  HL                                            ;; 03:49fb $e1
    call MultiplyHL_by_A                               ;; 03:49fc $cd $7b $2b
    srl  H                                             ;; 03:49ff $cb $3c
    srl  H                                             ;; 03:4a01 $cb $3c
    ld   L, H                                          ;; 03:4a03 $6c
    ld   H, $00                                        ;; 03:4a04 $26 $00
    pop  DE                                            ;; 03:4a06 $d1
    add  HL, DE                                        ;; 03:4a07 $19
    ld   A, H                                          ;; 03:4a08 $7c
    or   A, L                                          ;; 03:4a09 $b5
    ret                                                ;; 03:4a0a $c9

call_03_4a0b:
    ld   B, D                                          ;; 03:4a0b $42
    ld   C, E                                          ;; 03:4a0c $4b
    ld   D, H                                          ;; 03:4a0d $54
    ld   E, L                                          ;; 03:4a0e $5d
    ld   HL, $0c                                       ;; 03:4a0f $21 $0c $00
    add  HL, BC                                        ;; 03:4a12 $09
    push HL                                            ;; 03:4a13 $e5
    ld   A, [HL+]                                      ;; 03:4a14 $2a
    ld   H, [HL]                                       ;; 03:4a15 $66
    ld   L, A                                          ;; 03:4a16 $6f
    call sub_HL_DE                                     ;; 03:4a17 $cd $ab $2b
    jr   NC, .jr_03_4a1f                               ;; 03:4a1a $30 $03
    ld   HL, $00                                       ;; 03:4a1c $21 $00 $00
.jr_03_4a1f:
    ld   B, H                                          ;; 03:4a1f $44
    ld   C, L                                          ;; 03:4a20 $4d
    pop  HL                                            ;; 03:4a21 $e1
    ld   [HL], C                                       ;; 03:4a22 $71
    inc  HL                                            ;; 03:4a23 $23
    ld   [HL], B                                       ;; 03:4a24 $70
    ret                                                ;; 03:4a25 $c9

call_03_4a26:
    push DE                                            ;; 03:4a26 $d5
    push BC                                            ;; 03:4a27 $c5
    call getObjectCollisionFlags                       ;; 03:4a28 $cd $6d $0c
    cp   A, $a9                                        ;; 03:4a2b $fe $a9
    jr   Z, .jr_03_4a38                                ;; 03:4a2d $28 $09
    and  A, $0f                                        ;; 03:4a2f $e6 $0f
    or   A, $10                                        ;; 03:4a31 $f6 $10
    pop  BC                                            ;; 03:4a33 $c1
    push BC                                            ;; 03:4a34 $c5
    call setObjectCollisionFlags                       ;; 03:4a35 $cd $86 $0c
.jr_03_4a38:
    pop  BC                                            ;; 03:4a38 $c1
    pop  DE                                            ;; 03:4a39 $d1
    ld   HL, $04                                       ;; 03:4a3a $21 $04 $00
    add  HL, DE                                        ;; 03:4a3d $19
    ld   A, [HL]                                       ;; 03:4a3e $7e
    cp   A, $20                                        ;; 03:4a3f $fe $20
    jr   NC, .jr_03_4a73                               ;; 03:4a41 $30 $30
    push BC                                            ;; 03:4a43 $c5
    push DE                                            ;; 03:4a44 $d5
    call call_00_29ba                                  ;; 03:4a45 $cd $ba $29
    pop  DE                                            ;; 03:4a48 $d1
    ld   HL, $04                                       ;; 03:4a49 $21 $04 $00
    add  HL, DE                                        ;; 03:4a4c $19
    ld   A, $00                                        ;; 03:4a4d $3e $00
    ld   [HL+], A                                      ;; 03:4a4f $22
    ld   [HL+], A                                      ;; 03:4a50 $22
    ld   HL, $02                                       ;; 03:4a51 $21 $02 $00
    add  HL, DE                                        ;; 03:4a54 $19
    ld   A, [HL]                                       ;; 03:4a55 $7e
    ld   [HL], $01                                     ;; 03:4a56 $36 $01
    ld   HL, $09                                       ;; 03:4a58 $21 $09 $00
    add  HL, DE                                        ;; 03:4a5b $19
    ld   [HL-], A                                      ;; 03:4a5c $32
    ld   [HL], $3c                                     ;; 03:4a5d $36 $3c
    ld   H, D                                          ;; 03:4a5f $62
    ld   L, E                                          ;; 03:4a60 $6b
    pop  BC                                            ;; 03:4a61 $c1
    push HL                                            ;; 03:4a62 $e5
    call call_00_039a                                  ;; 03:4a63 $cd $9a $03
    pop  HL                                            ;; 03:4a66 $e1
    ld   C, [HL]                                       ;; 03:4a67 $4e
    call setObjectDirection                            ;; 03:4a68 $cd $a6 $0c
    ld   A, $0d                                        ;; 03:4a6b $3e $0d
    call playSFX                                       ;; 03:4a6d $cd $7d $29
    ld   A, $40                                        ;; 03:4a70 $3e $40
    ret                                                ;; 03:4a72 $c9
.jr_03_4a73:
    ld   HL, $08                                       ;; 03:4a73 $21 $08 $00
    add  HL, DE                                        ;; 03:4a76 $19
    ld   [HL], $3c                                     ;; 03:4a77 $36 $3c
    ld   A, $0d                                        ;; 03:4a79 $3e $0d
    call playSFX                                       ;; 03:4a7b $cd $7d $29
    ld   A, $40                                        ;; 03:4a7e $3e $40
    ret                                                ;; 03:4a80 $c9

call_03_4a81:
    ld   A, $00                                        ;; 03:4a81 $3e $00
    ld   L, A                                          ;; 03:4a83 $6f
    add  A, L                                          ;; 03:4a84 $85
    add  A, L                                          ;; 03:4a85 $85
    add  A, A                                          ;; 03:4a86 $87
    add  A, A                                          ;; 03:4a87 $87
    add  A, A                                          ;; 03:4a88 $87
    ld   L, A                                          ;; 03:4a89 $6f
    ld   H, $00                                        ;; 03:4a8a $26 $00
    ld   DE, wC4E0                                     ;; 03:4a8c $11 $e0 $c4
    add  HL, DE                                        ;; 03:4a8f $19
    ld   DE, $12                                       ;; 03:4a90 $11 $12 $00
    add  HL, DE                                        ;; 03:4a93 $19
    ld   A, [HL+]                                      ;; 03:4a94 $2a
    ld   H, [HL]                                       ;; 03:4a95 $66
    ld   L, A                                          ;; 03:4a96 $6f
    ld   DE, $14                                       ;; 03:4a97 $11 $14 $00
    add  HL, DE                                        ;; 03:4a9a $19
    ld   A, [HL+]                                      ;; 03:4a9b $2a
    ld   H, [HL]                                       ;; 03:4a9c $66
    ld   L, A                                          ;; 03:4a9d $6f
    ret                                                ;; 03:4a9e $c9

call_03_4a9f:
    call call_00_3dc0                                  ;; 03:4a9f $cd $c0 $3d
    ld   C, A                                          ;; 03:4aa2 $4f
    ld   HL, wC4E0._10                                 ;; 03:4aa3 $21 $f0 $c4
    ld   B, $08                                        ;; 03:4aa6 $06 $08
.jr_03_4aa8:
    push BC                                            ;; 03:4aa8 $c5
    push HL                                            ;; 03:4aa9 $e5
    call call_03_4ae3                                  ;; 03:4aaa $cd $e3 $4a
    jr   NZ, .jr_03_4ab7                               ;; 03:4aad $20 $08
    pop  DE                                            ;; 03:4aaf $d1
    push DE                                            ;; 03:4ab0 $d5
    ld   HL, hFFFA                                     ;; 03:4ab1 $21 $fa $ff
    add  HL, DE                                        ;; 03:4ab4 $19
    set  7, [HL]                                       ;; 03:4ab5 $cb $fe
.jr_03_4ab7:
    pop  HL                                            ;; 03:4ab7 $e1
    pop  BC                                            ;; 03:4ab8 $c1
    ld   DE, $18                                       ;; 03:4ab9 $11 $18 $00
    add  HL, DE                                        ;; 03:4abc $19
    dec  B                                             ;; 03:4abd $05
    jr   NZ, .jr_03_4aa8                               ;; 03:4abe $20 $e8
    ret                                                ;; 03:4ac0 $c9

call_03_4ac1:
    call call_00_3dc0                                  ;; 03:4ac1 $cd $c0 $3d
    ld   C, A                                          ;; 03:4ac4 $4f
    ld   HL, wC4E0._10                                 ;; 03:4ac5 $21 $f0 $c4
    ld   B, $08                                        ;; 03:4ac8 $06 $08
.jr_03_4aca:
    push BC                                            ;; 03:4aca $c5
    push HL                                            ;; 03:4acb $e5
    call call_03_4ae3                                  ;; 03:4acc $cd $e3 $4a
    jr   NZ, .jr_03_4ad9                               ;; 03:4acf $20 $08
    pop  DE                                            ;; 03:4ad1 $d1
    push DE                                            ;; 03:4ad2 $d5
    ld   HL, hFFFA                                     ;; 03:4ad3 $21 $fa $ff
    add  HL, DE                                        ;; 03:4ad6 $19
    set  6, [HL]                                       ;; 03:4ad7 $cb $f6
.jr_03_4ad9:
    pop  HL                                            ;; 03:4ad9 $e1
    pop  BC                                            ;; 03:4ada $c1
    ld   DE, $18                                       ;; 03:4adb $11 $18 $00
    add  HL, DE                                        ;; 03:4ade $19
    dec  B                                             ;; 03:4adf $05
    jr   NZ, .jr_03_4aca                               ;; 03:4ae0 $20 $e8
    ret                                                ;; 03:4ae2 $c9

call_03_4ae3:
    ld   A, [HL+]                                      ;; 03:4ae3 $2a
    ld   H, [HL]                                       ;; 03:4ae4 $66
    ld   L, A                                          ;; 03:4ae5 $6f
    ld   DE, $04                                       ;; 03:4ae6 $11 $04 $00
    add  HL, DE                                        ;; 03:4ae9 $19
    ld   A, [HL]                                       ;; 03:4aea $7e
    and  A, C                                          ;; 03:4aeb $a1
    ret                                                ;; 03:4aec $c9

call_03_4aed:
    call call_00_08d4                                  ;; 03:4aed $cd $d4 $08
    ret                                                ;; 03:4af0 $c9

call_03_4af1:
    call updateObjectPosition                          ;; 03:4af1 $cd $11 $06
    ret                                                ;; 03:4af4 $c9

call_03_4af5:
    call call_00_0695                                  ;; 03:4af5 $cd $95 $06
    ret                                                ;; 03:4af8 $c9

call_03_4af9:
    push DE                                            ;; 03:4af9 $d5
    ld   A, C                                          ;; 03:4afa $79
    ld   L, A                                          ;; 03:4afb $6f
    add  A, L                                          ;; 03:4afc $85
    add  A, L                                          ;; 03:4afd $85
    add  A, A                                          ;; 03:4afe $87
    add  A, A                                          ;; 03:4aff $87
    add  A, A                                          ;; 03:4b00 $87
    ld   L, A                                          ;; 03:4b01 $6f
    ld   H, $00                                        ;; 03:4b02 $26 $00
    ld   DE, wC4E0                                     ;; 03:4b04 $11 $e0 $c4
    add  HL, DE                                        ;; 03:4b07 $19
    ld   C, [HL]                                       ;; 03:4b08 $4e
    pop  DE                                            ;; 03:4b09 $d1
    push DE                                            ;; 03:4b0a $d5
    push BC                                            ;; 03:4b0b $c5
    call getObjectDirection                            ;; 03:4b0c $cd $99 $0c
    pop  BC                                            ;; 03:4b0f $c1
    pop  DE                                            ;; 03:4b10 $d1
    ld   B, $00                                        ;; 03:4b11 $06 $00
    or   A, $10                                        ;; 03:4b13 $f6 $10
    call updateObjectPosition                          ;; 03:4b15 $cd $11 $06
    ret                                                ;; 03:4b18 $c9

call_03_4b19:
    inc  C                                             ;; 03:4b19 $0c
    push BC                                            ;; 03:4b1a $c5
    push HL                                            ;; 03:4b1b $e5
    cp   A, $ff                                        ;; 03:4b1c $fe $ff
    jr   Z, .jr_03_4b42                                ;; 03:4b1e $28 $22
    call call_03_429b                                  ;; 03:4b20 $cd $9b $42
    ld   A, [HL]                                       ;; 03:4b23 $7e
    cp   A, $ff                                        ;; 03:4b24 $fe $ff
    jr   Z, .jr_03_4b47                                ;; 03:4b26 $28 $1f
    ld   D, H                                          ;; 03:4b28 $54
    ld   E, L                                          ;; 03:4b29 $5d
    ld   BC, $04                                       ;; 03:4b2a $01 $04 $00
    add  HL, BC                                        ;; 03:4b2d $09
    ld   A, [HL]                                       ;; 03:4b2e $7e
    cp   A, $00                                        ;; 03:4b2f $fe $00
    jr   Z, .jr_03_4b47                                ;; 03:4b31 $28 $14
    push HL                                            ;; 03:4b33 $e5
    ld   H, D                                          ;; 03:4b34 $62
    ld   L, E                                          ;; 03:4b35 $6b
    call call_03_404a                                  ;; 03:4b36 $cd $4a $40
    pop  HL                                            ;; 03:4b39 $e1
    ld   A, [HL]                                       ;; 03:4b3a $7e
    cp   A, $00                                        ;; 03:4b3b $fe $00
    jr   Z, .jr_03_4b47                                ;; 03:4b3d $28 $08
.jr_03_4b3f:
    pop  HL                                            ;; 03:4b3f $e1
    pop  BC                                            ;; 03:4b40 $c1
    ret                                                ;; 03:4b41 $c9
.jr_03_4b42:
    call call_00_02c3                                  ;; 03:4b42 $cd $c3 $02
    jr   NZ, .jr_03_4b3f                               ;; 03:4b45 $20 $f8
.jr_03_4b47:
    pop  HL                                            ;; 03:4b47 $e1
    pop  BC                                            ;; 03:4b48 $c1
    dec  HL                                            ;; 03:4b49 $2b
    ld   [HL], $00                                     ;; 03:4b4a $36 $00
    inc  HL                                            ;; 03:4b4c $23
    dec  C                                             ;; 03:4b4d $0d
    ret                                                ;; 03:4b4e $c9

call_03_4b4f:
    ld   HL, wC5A0                                     ;; 03:4b4f $21 $a0 $c5
    ld   B, $08                                        ;; 03:4b52 $06 $08
    ld   C, $00                                        ;; 03:4b54 $0e $00
.jr_03_4b56:
    ld   A, [HL+]                                      ;; 03:4b56 $2a
    cp   A, $00                                        ;; 03:4b57 $fe $00
    call NZ, call_03_4b19                              ;; 03:4b59 $c4 $19 $4b
    dec  B                                             ;; 03:4b5c $05
    jr   NZ, .jr_03_4b56                               ;; 03:4b5d $20 $f7
    ld   A, C                                          ;; 03:4b5f $79
    or   A, C                                          ;; 03:4b60 $b1
    ret                                                ;; 03:4b61 $c9

call_03_4b62:
    ld   HL, wC5A0                                     ;; 03:4b62 $21 $a0 $c5
    ld   B, $08                                        ;; 03:4b65 $06 $08
.jr_03_4b67:
    cp   A, [HL]                                       ;; 03:4b67 $be
    ret  Z                                             ;; 03:4b68 $c8
    inc  HL                                            ;; 03:4b69 $23
    dec  B                                             ;; 03:4b6a $05
    jr   NZ, .jr_03_4b67                               ;; 03:4b6b $20 $fa
    xor  A, A                                          ;; 03:4b6d $af
    inc  A                                             ;; 03:4b6e $3c
    ret                                                ;; 03:4b6f $c9

call_03_4b70:
    push AF                                            ;; 03:4b70 $f5
    ld   A, C                                          ;; 03:4b71 $79
    cp   A, $ff                                        ;; 03:4b72 $fe $ff
    jr   Z, .jr_03_4bb5                                ;; 03:4b74 $28 $3f
    ld   L, A                                          ;; 03:4b76 $6f
    add  A, L                                          ;; 03:4b77 $85
    add  A, L                                          ;; 03:4b78 $85
    add  A, A                                          ;; 03:4b79 $87
    add  A, A                                          ;; 03:4b7a $87
    add  A, A                                          ;; 03:4b7b $87
    ld   L, A                                          ;; 03:4b7c $6f
    ld   H, $00                                        ;; 03:4b7d $26 $00
    ld   DE, wC4E0                                     ;; 03:4b7f $11 $e0 $c4
    add  HL, DE                                        ;; 03:4b82 $19
    ld   D, H                                          ;; 03:4b83 $54
    ld   E, L                                          ;; 03:4b84 $5d
    pop  AF                                            ;; 03:4b85 $f1
    ld   B, A                                          ;; 03:4b86 $47
    ld   C, [HL]                                       ;; 03:4b87 $4e
    ld   HL, $04                                       ;; 03:4b88 $21 $04 $00
    add  HL, DE                                        ;; 03:4b8b $19
    ld   A, [HL]                                       ;; 03:4b8c $7e
    cp   A, $00                                        ;; 03:4b8d $fe $00
    jr   Z, .jr_03_4ba6                                ;; 03:4b8f $28 $15
    push BC                                            ;; 03:4b91 $c5
    push DE                                            ;; 03:4b92 $d5
    ld   A, [DE]                                       ;; 03:4b93 $1a
    call call_03_4b62                                  ;; 03:4b94 $cd $62 $4b
    pop  DE                                            ;; 03:4b97 $d1
    pop  BC                                            ;; 03:4b98 $c1
    jr   Z, .jr_03_4bdd                                ;; 03:4b99 $28 $42
    push BC                                            ;; 03:4b9b $c5
    ld   A, $00                                        ;; 03:4b9c $3e $00
    call call_03_4b62                                  ;; 03:4b9e $cd $62 $4b
    pop  BC                                            ;; 03:4ba1 $c1
    ret  NZ                                            ;; 03:4ba2 $c0
    ld   [HL], C                                       ;; 03:4ba3 $71
    jr   .jr_03_4bdd                                   ;; 03:4ba4 $18 $37
.jr_03_4ba6:
    ld   HL, $04                                       ;; 03:4ba6 $21 $04 $00
    add  HL, DE                                        ;; 03:4ba9 $19
    ld   [HL], B                                       ;; 03:4baa $70
    push BC                                            ;; 03:4bab $c5
    ld   A, $00                                        ;; 03:4bac $3e $00
    call call_03_4b62                                  ;; 03:4bae $cd $62 $4b
    pop  BC                                            ;; 03:4bb1 $c1
    ret  NZ                                            ;; 03:4bb2 $c0
    ld   [HL], C                                       ;; 03:4bb3 $71
    ret                                                ;; 03:4bb4 $c9
.jr_03_4bb5:
    call call_00_02ab                                  ;; 03:4bb5 $cd $ab $02
    bit  7, A                                          ;; 03:4bb8 $cb $7f
    jr   Z, .jr_03_4bce                                ;; 03:4bba $28 $12
    pop  AF                                            ;; 03:4bbc $f1
    ld   A, $ff                                        ;; 03:4bbd $3e $ff
    call call_03_4b62                                  ;; 03:4bbf $cd $62 $4b
    jr   Z, .jr_03_4bdd                                ;; 03:4bc2 $28 $19
    ld   A, $00                                        ;; 03:4bc4 $3e $00
    call call_03_4b62                                  ;; 03:4bc6 $cd $62 $4b
    ret  NZ                                            ;; 03:4bc9 $c0
    ld   [HL], $ff                                     ;; 03:4bca $36 $ff
    jr   .jr_03_4bdd                                   ;; 03:4bcc $18 $0f
.jr_03_4bce:
    pop  AF                                            ;; 03:4bce $f1
    ld   B, $00                                        ;; 03:4bcf $06 $00
    call call_00_0232                                  ;; 03:4bd1 $cd $32 $02
    ld   A, $00                                        ;; 03:4bd4 $3e $00
    call call_03_4b62                                  ;; 03:4bd6 $cd $62 $4b
    ret  NZ                                            ;; 03:4bd9 $c0
    ld   [HL], $ff                                     ;; 03:4bda $36 $ff
    ret                                                ;; 03:4bdc $c9
.jr_03_4bdd:
    xor  A, A                                          ;; 03:4bdd $af
    inc  A                                             ;; 03:4bde $3c
    ret                                                ;; 03:4bdf $c9

call_03_4be0:
    ld   HL, wC4E0                                     ;; 03:4be0 $21 $e0 $c4
    ld   DE, $18                                       ;; 03:4be3 $11 $18 $00
    ld   B, $08                                        ;; 03:4be6 $06 $08
    ld   C, $00                                        ;; 03:4be8 $0e $00
    ld   A, [wD3E8]                                    ;; 03:4bea $fa $e8 $d3
    cp   A, $ff                                        ;; 03:4bed $fe $ff
    jr   Z, .jr_03_4bf2                                ;; 03:4bef $28 $01
    inc  C                                             ;; 03:4bf1 $0c
.jr_03_4bf2:
    ld   A, $ff                                        ;; 03:4bf2 $3e $ff
.jr_03_4bf4:
    cp   A, [HL]                                       ;; 03:4bf4 $be
    push AF                                            ;; 03:4bf5 $f5
    jr   Z, .jr_03_4c11                                ;; 03:4bf6 $28 $19
    push HL                                            ;; 03:4bf8 $e5
    push DE                                            ;; 03:4bf9 $d5
    push BC                                            ;; 03:4bfa $c5
    ld   C, [HL]                                       ;; 03:4bfb $4e
    call getObjectCollisionFlags                       ;; 03:4bfc $cd $6d $0c
    pop  BC                                            ;; 03:4bff $c1
    pop  DE                                            ;; 03:4c00 $d1
    pop  HL                                            ;; 03:4c01 $e1
    and  A, $f0                                        ;; 03:4c02 $e6 $f0
    cp   A, $90                                        ;; 03:4c04 $fe $90
    jr   Z, .jr_03_4c10                                ;; 03:4c06 $28 $08
    cp   A, $b0                                        ;; 03:4c08 $fe $b0
    jr   Z, .jr_03_4c10                                ;; 03:4c0a $28 $04
    cp   A, $10                                        ;; 03:4c0c $fe $10
    jr   NZ, .jr_03_4c11                               ;; 03:4c0e $20 $01
.jr_03_4c10:
    inc  C                                             ;; 03:4c10 $0c
.jr_03_4c11:
    pop  AF                                            ;; 03:4c11 $f1
    add  HL, DE                                        ;; 03:4c12 $19
    dec  B                                             ;; 03:4c13 $05
    jr   NZ, .jr_03_4bf4                               ;; 03:4c14 $20 $de
    ld   A, [wC5AF]                                    ;; 03:4c16 $fa $af $c5
    cp   A, C                                          ;; 03:4c19 $b9
    jr   Z, .jr_03_4c2d                                ;; 03:4c1a $28 $11
    ld   A, C                                          ;; 03:4c1c $79
    ld   [wC5AF], A                                    ;; 03:4c1d $ea $af $c5
    cp   A, $01                                        ;; 03:4c20 $fe $01
    jr   NC, .jr_03_4c2d                               ;; 03:4c22 $30 $09
    jr   NZ, .jr_03_4c2b                               ;; 03:4c24 $20 $05
    call call_00_28c2                                  ;; 03:4c26 $cd $c2 $28
    jr   NZ, .jr_03_4c2d                               ;; 03:4c29 $20 $02
.jr_03_4c2b:
    xor  A, A                                          ;; 03:4c2b $af
    ret                                                ;; 03:4c2c $c9
.jr_03_4c2d:
    xor  A, A                                          ;; 03:4c2d $af
    inc  A                                             ;; 03:4c2e $3c
    ret                                                ;; 03:4c2f $c9

call_03_4c30:
    call call_03_4be0                                  ;; 03:4c30 $cd $e0 $4b
    ret  NZ                                            ;; 03:4c33 $c0
    call runRoomScriptOnAllEnemiesDefeat               ;; 03:4c34 $cd $a7 $24
    ret                                                ;; 03:4c37 $c9

call_03_4c38:
    call call_03_4be0                                  ;; 03:4c38 $cd $e0 $4b
    ld   C, $07                                        ;; 03:4c3b $0e $07
    call getObjectCollisionFlags                       ;; 03:4c3d $cd $6d $0c
    and  A, $f0                                        ;; 03:4c40 $e6 $f0
    cp   A, $d0                                        ;; 03:4c42 $fe $d0
    ret  NZ                                            ;; 03:4c44 $c0
    call call_00_0299                                  ;; 03:4c45 $cd $99 $02
    ld   D, A                                          ;; 03:4c48 $57
    push DE                                            ;; 03:4c49 $d5
    call call_00_0293                                  ;; 03:4c4a $cd $93 $02
    pop  DE                                            ;; 03:4c4d $d1
    ld   E, A                                          ;; 03:4c4e $5f
    ld   C, $00                                        ;; 03:4c4f $0e $00
    call call_03_4af9                                  ;; 03:4c51 $cd $f9 $4a
    ret                                                ;; 03:4c54 $c9

;@jumptable amount=224
data_03_4c55:
    dw   call_03_4eb3                                  ;; 03:4c55 ??
    dw   call_03_4e7c                                  ;; 03:4c57 pP
    dw   call_03_4ec9                                  ;; 03:4c59 pP
    dw   call_03_4ef0                                  ;; 03:4c5b pP
    dw   call_03_4f07                                  ;; 03:4c5d pP
    dw   call_03_4f1d                                  ;; 03:4c5f pP
    dw   call_03_4f4d                                  ;; 03:4c61 pP
    dw   call_03_4f5a                                  ;; 03:4c63 pP
    dw   call_03_4f67                                  ;; 03:4c65 pP
    dw   call_03_4f74                                  ;; 03:4c67 pP
    dw   call_03_4f88                                  ;; 03:4c69 pP
    dw   call_03_4fa3                                  ;; 03:4c6b pP
    dw   call_03_4fbe                                  ;; 03:4c6d ??
    dw   call_03_4fd9                                  ;; 03:4c6f ??
    dw   call_03_4ff4                                  ;; 03:4c71 pP
    dw   call_03_4ffd                                  ;; 03:4c73 pP
    dw   call_03_500d                                  ;; 03:4c75 pP
    dw   call_03_5019                                  ;; 03:4c77 pP
    dw   call_03_5025                                  ;; 03:4c79 ??
    dw   call_03_5031                                  ;; 03:4c7b pP
    dw   call_03_503d                                  ;; 03:4c7d ??
    dw   call_03_5049                                  ;; 03:4c7f ??
    dw   call_03_4eb3                                  ;; 03:4c81 ??
    dw   call_03_4eb3                                  ;; 03:4c83 ??
    dw   call_03_4eb3                                  ;; 03:4c85 ??
    dw   call_03_4eb3                                  ;; 03:4c87 ??
    dw   call_03_4eb3                                  ;; 03:4c89 ??
    dw   call_03_4eb5                                  ;; 03:4c8b ??
    dw   call_03_5055                                  ;; 03:4c8d pP
    dw   call_03_505f                                  ;; 03:4c8f pP
    dw   call_03_5069                                  ;; 03:4c91 pP
    dw   call_03_5073                                  ;; 03:4c93 pP
    dw   call_03_507d                                  ;; 03:4c95 pP
    dw   call_03_5092                                  ;; 03:4c97 ??
    dw   call_03_50a7                                  ;; 03:4c99 pP
    dw   call_03_50bc                                  ;; 03:4c9b ??
    dw   call_03_50d1                                  ;; 03:4c9d pP
    dw   call_03_50d5                                  ;; 03:4c9f ??
    dw   call_03_50d9                                  ;; 03:4ca1 ??
    dw   call_03_50dd                                  ;; 03:4ca3 ??
    dw   call_03_50e1                                  ;; 03:4ca5 pP
    dw   call_03_50e5                                  ;; 03:4ca7 ??
    dw   call_03_50e9                                  ;; 03:4ca9 ??
    dw   call_03_50ed                                  ;; 03:4cab ??
    dw   call_03_50f1                                  ;; 03:4cad ??
    dw   call_03_50f5                                  ;; 03:4caf ??
    dw   call_03_50f9                                  ;; 03:4cb1 ??
    dw   call_03_50fd                                  ;; 03:4cb3 ??
    dw   call_03_5101                                  ;; 03:4cb5 ??
    dw   call_03_5105                                  ;; 03:4cb7 ??
    dw   call_03_5109                                  ;; 03:4cb9 ??
    dw   call_03_510d                                  ;; 03:4cbb ??
    dw   call_03_5111                                  ;; 03:4cbd ??
    dw   call_03_5115                                  ;; 03:4cbf ??
    dw   call_03_5119                                  ;; 03:4cc1 ??
    dw   call_03_511d                                  ;; 03:4cc3 ??
    dw   call_03_5121                                  ;; 03:4cc5 ??
    dw   call_03_5125                                  ;; 03:4cc7 ??
    dw   call_03_5129                                  ;; 03:4cc9 ??
    dw   call_03_512d                                  ;; 03:4ccb ??
    dw   call_03_5131                                  ;; 03:4ccd ??
    dw   call_03_5135                                  ;; 03:4ccf ??
    dw   call_03_5139                                  ;; 03:4cd1 ??
    dw   call_03_513d                                  ;; 03:4cd3 ??
    dw   call_03_4eb3                                  ;; 03:4cd5 ??
    dw   call_03_4eb3                                  ;; 03:4cd7 ??
    dw   call_03_4eb3                                  ;; 03:4cd9 ??
    dw   call_03_4eb3                                  ;; 03:4cdb ??
    dw   call_03_5151                                  ;; 03:4cdd ??
    dw   call_03_5155                                  ;; 03:4cdf ??
    dw   call_03_5159                                  ;; 03:4ce1 ??
    dw   call_03_515d                                  ;; 03:4ce3 ??
    dw   call_03_5161                                  ;; 03:4ce5 pP
    dw   call_03_5165                                  ;; 03:4ce7 pP
    dw   call_03_5169                                  ;; 03:4ce9 pP
    dw   call_03_516d                                  ;; 03:4ceb pP
    dw   call_03_5171                                  ;; 03:4ced pP
    dw   call_03_5175                                  ;; 03:4cef pP
    dw   call_03_5179                                  ;; 03:4cf1 pP
    dw   call_03_517d                                  ;; 03:4cf3 pP
    dw   call_03_5181                                  ;; 03:4cf5 ??
    dw   call_03_5185                                  ;; 03:4cf7 ??
    dw   call_03_5189                                  ;; 03:4cf9 ??
    dw   call_03_518d                                  ;; 03:4cfb ??
    dw   call_03_5191                                  ;; 03:4cfd pP
    dw   call_03_5195                                  ;; 03:4cff pP
    dw   call_03_5199                                  ;; 03:4d01 ??
    dw   call_03_519d                                  ;; 03:4d03 ??
    dw   call_03_51a1                                  ;; 03:4d05 ??
    dw   call_03_51a5                                  ;; 03:4d07 ??
    dw   call_03_51a9                                  ;; 03:4d09 ??
    dw   call_03_51ad                                  ;; 03:4d0b ??
    dw   call_03_51b1                                  ;; 03:4d0d ??
    dw   call_03_51b5                                  ;; 03:4d0f ??
    dw   call_03_51b9                                  ;; 03:4d11 ??
    dw   call_03_51bd                                  ;; 03:4d13 ??
    dw   call_03_4eb3                                  ;; 03:4d15 ??
    dw   call_03_4eb3                                  ;; 03:4d17 ??
    dw   call_03_4eb3                                  ;; 03:4d19 ??
    dw   call_03_4eb3                                  ;; 03:4d1b ??
    dw   call_03_51d1                                  ;; 03:4d1d ??
    dw   call_03_51d5                                  ;; 03:4d1f ??
    dw   call_03_51d9                                  ;; 03:4d21 ??
    dw   call_03_51dd                                  ;; 03:4d23 ??
    dw   call_03_51e1                                  ;; 03:4d25 ??
    dw   call_03_51e5                                  ;; 03:4d27 pP
    dw   call_03_51e9                                  ;; 03:4d29 ??
    dw   call_03_51ed                                  ;; 03:4d2b ??
    dw   call_03_51f1                                  ;; 03:4d2d pP
    dw   call_03_51f5                                  ;; 03:4d2f pP
    dw   call_03_51f9                                  ;; 03:4d31 pP
    dw   call_03_51fd                                  ;; 03:4d33 pP
    dw   call_03_5201                                  ;; 03:4d35 pP
    dw   call_03_5205                                  ;; 03:4d37 ??
    dw   call_03_5209                                  ;; 03:4d39 ??
    dw   call_03_520d                                  ;; 03:4d3b pP
    dw   call_03_5211                                  ;; 03:4d3d pP
    dw   call_03_5215                                  ;; 03:4d3f pP
    dw   call_03_5219                                  ;; 03:4d41 ??
    dw   call_03_521d                                  ;; 03:4d43 ??
    dw   call_03_5221                                  ;; 03:4d45 pP
    dw   call_03_5225                                  ;; 03:4d47 pP
    dw   call_03_5229                                  ;; 03:4d49 pP
    dw   call_03_522d                                  ;; 03:4d4b pP
    dw   call_03_5231                                  ;; 03:4d4d ??
    dw   call_03_5235                                  ;; 03:4d4f ??
    dw   call_03_5239                                  ;; 03:4d51 ??
    dw   call_03_523d                                  ;; 03:4d53 ??
    dw   call_03_4eb3                                  ;; 03:4d55 ??
    dw   call_03_4eb3                                  ;; 03:4d57 ??
    dw   call_03_4eb3                                  ;; 03:4d59 ??
    dw   call_03_4eb3                                  ;; 03:4d5b ??
    dw   call_03_4eb3                                  ;; 03:4d5d ??
    dw   call_03_4eb3                                  ;; 03:4d5f ??
    dw   call_03_4eb3                                  ;; 03:4d61 ??
    dw   call_03_4eb3                                  ;; 03:4d63 ??
    dw   call_03_4eb3                                  ;; 03:4d65 ??
    dw   call_03_4eb3                                  ;; 03:4d67 ??
    dw   call_03_4eb3                                  ;; 03:4d69 ??
    dw   call_03_4eb3                                  ;; 03:4d6b ??
    dw   call_03_4eb3                                  ;; 03:4d6d ??
    dw   call_03_4eb3                                  ;; 03:4d6f ??
    dw   call_03_4eb3                                  ;; 03:4d71 ??
    dw   call_03_4eb3                                  ;; 03:4d73 ??
    dw   call_03_5264                                  ;; 03:4d75 ??
    dw   call_03_5268                                  ;; 03:4d77 ??
    dw   call_03_526c                                  ;; 03:4d79 ??
    dw   call_03_5270                                  ;; 03:4d7b ??
    dw   call_03_5274                                  ;; 03:4d7d ??
    dw   call_03_5278                                  ;; 03:4d7f pP
    dw   call_03_527c                                  ;; 03:4d81 ??
    dw   call_03_5280                                  ;; 03:4d83 ??
    dw   call_03_5284                                  ;; 03:4d85 ??
    dw   call_03_5288                                  ;; 03:4d87 ??
    dw   call_03_528c                                  ;; 03:4d89 pP
    dw   call_03_5290                                  ;; 03:4d8b pP
    dw   call_03_5294                                  ;; 03:4d8d ??
    dw   call_03_5298                                  ;; 03:4d8f ??
    dw   call_03_529c                                  ;; 03:4d91 ??
    dw   call_03_52a0                                  ;; 03:4d93 ??
    dw   call_03_4eb3                                  ;; 03:4d95 ??
    dw   call_03_4eb3                                  ;; 03:4d97 ??
    dw   call_03_4eb3                                  ;; 03:4d99 ??
    dw   call_03_4eb3                                  ;; 03:4d9b ??
    dw   call_03_4eb3                                  ;; 03:4d9d ??
    dw   call_03_4eb3                                  ;; 03:4d9f ??
    dw   call_03_4eb3                                  ;; 03:4da1 ??
    dw   call_03_4eb3                                  ;; 03:4da3 ??
    dw   call_03_4eb3                                  ;; 03:4da5 ??
    dw   call_03_4eb3                                  ;; 03:4da7 ??
    dw   call_03_4eb3                                  ;; 03:4da9 ??
    dw   call_03_4eb3                                  ;; 03:4dab ??
    dw   call_03_4eb3                                  ;; 03:4dad ??
    dw   call_03_4eb3                                  ;; 03:4daf ??
    dw   call_03_4eb3                                  ;; 03:4db1 ??
    dw   call_03_4eb3                                  ;; 03:4db3 ??
    dw   call_03_5377                                  ;; 03:4db5 ??
    dw   call_03_537b                                  ;; 03:4db7 ??
    dw   call_03_537f                                  ;; 03:4db9 ??
    dw   call_03_5383                                  ;; 03:4dbb ??
    dw   call_03_5387                                  ;; 03:4dbd pP
    dw   call_03_538b                                  ;; 03:4dbf pP
    dw   call_03_538f                                  ;; 03:4dc1 ??
    dw   call_03_5393                                  ;; 03:4dc3 ??
    dw   call_03_5397                                  ;; 03:4dc5 pP
    dw   call_03_539b                                  ;; 03:4dc7 ??
    dw   call_03_539f                                  ;; 03:4dc9 ??
    dw   call_03_53a3                                  ;; 03:4dcb ??
    dw   call_03_53a7                                  ;; 03:4dcd ??
    dw   call_03_53ab                                  ;; 03:4dcf ??
    dw   call_03_53af                                  ;; 03:4dd1 ??
    dw   call_03_53b3                                  ;; 03:4dd3 ??
    dw   call_03_4eb3                                  ;; 03:4dd5 ??
    dw   call_03_4eb3                                  ;; 03:4dd7 ??
    dw   call_03_4eb3                                  ;; 03:4dd9 ??
    dw   call_03_4eb3                                  ;; 03:4ddb ??
    dw   call_03_5419                                  ;; 03:4ddd ??
    dw   call_03_541d                                  ;; 03:4ddf ??
    dw   call_03_5421                                  ;; 03:4de1 ??
    dw   call_03_5425                                  ;; 03:4de3 ??
    dw   call_03_5429                                  ;; 03:4de5 ??
    dw   call_03_542d                                  ;; 03:4de7 ??
    dw   call_03_5431                                  ;; 03:4de9 ??
    dw   call_03_5435                                  ;; 03:4deb ??
    dw   call_03_5439                                  ;; 03:4ded ??
    dw   call_03_543d                                  ;; 03:4def ??
    dw   call_03_5441                                  ;; 03:4df1 ??
    dw   call_03_5445                                  ;; 03:4df3 ??
    dw   call_03_5449                                  ;; 03:4df5 ??
    dw   call_03_544d                                  ;; 03:4df7 ??
    dw   call_03_5451                                  ;; 03:4df9 ??
    dw   call_03_5455                                  ;; 03:4dfb ??
    dw   call_03_5459                                  ;; 03:4dfd ??
    dw   call_03_545d                                  ;; 03:4dff ??
    dw   call_03_5461                                  ;; 03:4e01 ??
    dw   call_03_5465                                  ;; 03:4e03 ??
    dw   call_03_5469                                  ;; 03:4e05 ??
    dw   call_03_546d                                  ;; 03:4e07 ??
    dw   call_03_5471                                  ;; 03:4e09 ??
    dw   call_03_5475                                  ;; 03:4e0b ??
    dw   call_03_5479                                  ;; 03:4e0d ??
    dw   call_03_547d                                  ;; 03:4e0f ??
    dw   call_03_5481                                  ;; 03:4e11 ??
    dw   call_03_5485                                  ;; 03:4e13 ??

call_03_4e15:
    ld   HL, $04                                       ;; 03:4e15 $21 $04 $00
    add  HL, DE                                        ;; 03:4e18 $19
    ld   [HL], $00                                     ;; 03:4e19 $36 $00
    inc  HL                                            ;; 03:4e1b $23
    ld   [HL], $00                                     ;; 03:4e1c $36 $00
    ld   HL, $01                                       ;; 03:4e1e $21 $01 $00
    add  HL, DE                                        ;; 03:4e21 $19
    ld   [HL], $01                                     ;; 03:4e22 $36 $01
    ld   A, [DE]                                       ;; 03:4e24 $1a
    ld   C, A                                          ;; 03:4e25 $4f
    ld   HL, $12                                       ;; 03:4e26 $21 $12 $00
    add  HL, DE                                        ;; 03:4e29 $19
    ld   A, [HL+]                                      ;; 03:4e2a $2a
    ld   H, [HL]                                       ;; 03:4e2b $66
    ld   L, A                                          ;; 03:4e2c $6f
    ld   A, [HL]                                       ;; 03:4e2d $7e
    call setObjectCollisionFlags                       ;; 03:4e2e $cd $86 $0c
    ret                                                ;; 03:4e31 $c9

data_03_4e32:
    db   $20, $72, $70, $00, $70, $72, $00, $70        ;; 03:4e32 ......??
    db   $72, $00, $70, $72, $20, $72, $70, $00        ;; 03:4e3a ????????
    db   $70, $72, $00, $70, $72, $00, $70, $72        ;; 03:4e42 ????????

call_03_4e4a:
    push BC                                            ;; 03:4e4a $c5
    push DE                                            ;; 03:4e4b $d5
    ld   HL, data_03_4e32                              ;; 03:4e4c $21 $32 $4e
    call setObjectMetaspritePointer                    ;; 03:4e4f $cd $ba $0c
    ld   A, $0b                                        ;; 03:4e52 $3e $0b
    call playSFX                                       ;; 03:4e54 $cd $7d $29
    pop  DE                                            ;; 03:4e57 $d1
    pop  BC                                            ;; 03:4e58 $c1
    ret                                                ;; 03:4e59 $c9

call_03_4e5a:
    ld   A, B                                          ;; 03:4e5a $78
    cp   A, $00                                        ;; 03:4e5b $fe $00
    call Z, call_03_4e4a                               ;; 03:4e5d $cc $4a $4e
    ld   A, B                                          ;; 03:4e60 $78
    cp   A, $02                                        ;; 03:4e61 $fe $02
    jr   Z, .jr_03_4e76                                ;; 03:4e63 $28 $11
    push AF                                            ;; 03:4e65 $f5
    cp   A, $01                                        ;; 03:4e66 $fe $01
    ld   A, $01                                        ;; 03:4e68 $3e $01
    jr   NC, .jr_03_4e6e                               ;; 03:4e6a $30 $02
    ld   A, $02                                        ;; 03:4e6c $3e $02
.jr_03_4e6e:
    ld   B, $00                                        ;; 03:4e6e $06 $00
    call call_00_0695                                  ;; 03:4e70 $cd $95 $06
    pop  AF                                            ;; 03:4e73 $f1
    inc  A                                             ;; 03:4e74 $3c
    ret                                                ;; 03:4e75 $c9
.jr_03_4e76:
    call call_03_480a                                  ;; 03:4e76 $cd $0a $48
    ld   A, $00                                        ;; 03:4e79 $3e $00
    ret                                                ;; 03:4e7b $c9

call_03_4e7c:
    ld   A, [DE]                                       ;; 03:4e7c $1a
    cp   A, $ff                                        ;; 03:4e7d $fe $ff
    jr   Z, .jr_03_4eaa                                ;; 03:4e7f $28 $29
    ld   B, C                                          ;; 03:4e81 $41
    ld   C, A                                          ;; 03:4e82 $4f
    push DE                                            ;; 03:4e83 $d5
    push BC                                            ;; 03:4e84 $c5
    call getObjectCollisionFlags                       ;; 03:4e85 $cd $6d $0c
    pop  BC                                            ;; 03:4e88 $c1
    pop  DE                                            ;; 03:4e89 $d1
    and  A, $f0                                        ;; 03:4e8a $e6 $f0
    cp   A, $d0                                        ;; 03:4e8c $fe $d0
    jr   Z, .jr_03_4ea0                                ;; 03:4e8e $28 $10
    cp   A, $a0                                        ;; 03:4e90 $fe $a0
    jr   Z, .jr_03_4ead                                ;; 03:4e92 $28 $19
    cp   A, $b0                                        ;; 03:4e94 $fe $b0
    jr   Z, .jr_03_4ead                                ;; 03:4e96 $28 $15
    cp   A, $00                                        ;; 03:4e98 $fe $00
    jr   Z, .jr_03_4ead                                ;; 03:4e9a $28 $11
    call call_03_4e5a                                  ;; 03:4e9c $cd $5a $4e
    ret                                                ;; 03:4e9f $c9
.jr_03_4ea0:
    ld   DE, $f8                                       ;; 03:4ea0 $11 $f8 $00
    ld   B, $00                                        ;; 03:4ea3 $06 $00
    ld   A, $00                                        ;; 03:4ea5 $3e $00
    call updateObjectPosition                          ;; 03:4ea7 $cd $11 $06
.jr_03_4eaa:
    ld   A, $00                                        ;; 03:4eaa $3e $00
    ret                                                ;; 03:4eac $c9
.jr_03_4ead:
    call call_03_480a                                  ;; 03:4ead $cd $0a $48
    ld   A, $00                                        ;; 03:4eb0 $3e $00
    ret                                                ;; 03:4eb2 $c9

call_03_4eb3:
    ld   A, C                                          ;; 03:4eb3 $79
    ret                                                ;; 03:4eb4 $c9

call_03_4eb5:
    ld   A, [DE]                                       ;; 03:4eb5 $1a
    ld   HL, $01                                       ;; 03:4eb6 $21 $01 $00
    add  HL, DE                                        ;; 03:4eb9 $19
    ld   [HL], $01                                     ;; 03:4eba $36 $01
    ld   C, A                                          ;; 03:4ebc $4f
    ld   B, $00                                        ;; 03:4ebd $06 $00
    ld   A, $00                                        ;; 03:4ebf $3e $00
    call call_00_0695                                  ;; 03:4ec1 $cd $95 $06
    ld   A, $00                                        ;; 03:4ec4 $3e $00
    ret  Z                                             ;; 03:4ec6 $c8
    inc  A                                             ;; 03:4ec7 $3c
    ret                                                ;; 03:4ec8 $c9

call_03_4ec9:
    call call_00_27ba                                  ;; 03:4ec9 $cd $ba $27
    ret  Z                                             ;; 03:4ecc $c8
    ld   HL, $04                                       ;; 03:4ecd $21 $04 $00
    add  HL, DE                                        ;; 03:4ed0 $19
    ld   [HL], $03                                     ;; 03:4ed1 $36 $03
    ld   HL, $03                                       ;; 03:4ed3 $21 $03 $00
    add  HL, DE                                        ;; 03:4ed6 $19
    ld   [HL], $04                                     ;; 03:4ed7 $36 $04
    ld   HL, $12                                       ;; 03:4ed9 $21 $12 $00
    add  HL, DE                                        ;; 03:4edc $19
    ld   A, [HL+]                                      ;; 03:4edd $2a
    ld   H, [HL]                                       ;; 03:4ede $66
    ld   L, A                                          ;; 03:4edf $6f
    ld   BC, $0e                                       ;; 03:4ee0 $01 $0e $00
    add  HL, BC                                        ;; 03:4ee3 $09
    xor  A, A                                          ;; 03:4ee4 $af
    ld   B, [HL]                                       ;; 03:4ee5 $46
    ld   C, $1e                                        ;; 03:4ee6 $0e $1e
    call call_03_55cb                                  ;; 03:4ee8 $cd $cb $55
    ld   C, A                                          ;; 03:4eeb $4f
    call call_03_4ef0                                  ;; 03:4eec $cd $f0 $4e
    ret                                                ;; 03:4eef $c9

call_03_4ef0:
    ld   A, C                                          ;; 03:4ef0 $79
    dec  A                                             ;; 03:4ef1 $3d
    push AF                                            ;; 03:4ef2 $f5
    ld   HL, $03                                       ;; 03:4ef3 $21 $03 $00
    add  HL, DE                                        ;; 03:4ef6 $19
    ld   [HL], $04                                     ;; 03:4ef7 $36 $04
    ld   A, [DE]                                       ;; 03:4ef9 $1a
    ld   C, A                                          ;; 03:4efa $4f
    push BC                                            ;; 03:4efb $c5
    call getObjectDirection                            ;; 03:4efc $cd $99 $0c
    and  A, $0f                                        ;; 03:4eff $e6 $0f
    pop  BC                                            ;; 03:4f01 $c1
    call call_00_0695                                  ;; 03:4f02 $cd $95 $06
    pop  AF                                            ;; 03:4f05 $f1
    ret                                                ;; 03:4f06 $c9

call_03_4f07:
    ld   A, C                                          ;; 03:4f07 $79
    sub  A, $02                                        ;; 03:4f08 $d6 $02
    ret  Z                                             ;; 03:4f0a $c8
    ld   A, [DE]                                       ;; 03:4f0b $1a
    ld   C, A                                          ;; 03:4f0c $4f
    push BC                                            ;; 03:4f0d $c5
    call getObjectDirection                            ;; 03:4f0e $cd $99 $0c
    pop  BC                                            ;; 03:4f11 $c1
    and  A, $0f                                        ;; 03:4f12 $e6 $0f
    call call_03_55fb                                  ;; 03:4f14 $cd $fb $55
    ld   A, $01                                        ;; 03:4f17 $3e $01
    ret  NZ                                            ;; 03:4f19 $c0
    ld   A, $02                                        ;; 03:4f1a $3e $02
    ret                                                ;; 03:4f1c $c9

call_03_4f1d:
    ld   A, C                                          ;; 03:4f1d $79
    sub  A, $02                                        ;; 03:4f1e $d6 $02
    ret  Z                                             ;; 03:4f20 $c8
    ld   A, $00                                        ;; 03:4f21 $3e $00
    cp   A, C                                          ;; 03:4f23 $b9
    jr   Z, .jr_03_4f2f                                ;; 03:4f24 $28 $09
    ld   A, [DE]                                       ;; 03:4f26 $1a
    ld   C, A                                          ;; 03:4f27 $4f
    push BC                                            ;; 03:4f28 $c5
    call getObjectDirection                            ;; 03:4f29 $cd $99 $0c
    pop  BC                                            ;; 03:4f2c $c1
    jr   .jr_03_4f36                                   ;; 03:4f2d $18 $07
.jr_03_4f2f:
    ld   A, [DE]                                       ;; 03:4f2f $1a
    ld   C, A                                          ;; 03:4f30 $4f
    push BC                                            ;; 03:4f31 $c5
    call call_03_55ae                                  ;; 03:4f32 $cd $ae $55
    pop  BC                                            ;; 03:4f35 $c1
.jr_03_4f36:
    and  A, $0f                                        ;; 03:4f36 $e6 $0f
    or   A, $20                                        ;; 03:4f38 $f6 $20
    push BC                                            ;; 03:4f3a $c5
    call call_03_55fb                                  ;; 03:4f3b $cd $fb $55
    pop  BC                                            ;; 03:4f3e $c1
    ld   A, $01                                        ;; 03:4f3f $3e $01
    ret  NZ                                            ;; 03:4f41 $c0
    push BC                                            ;; 03:4f42 $c5
    call call_03_55ae                                  ;; 03:4f43 $cd $ae $55
    pop  BC                                            ;; 03:4f46 $c1
    call setObjectDirection                            ;; 03:4f47 $cd $a6 $0c
    ld   A, $02                                        ;; 03:4f4a $3e $02
    ret                                                ;; 03:4f4c $c9

call_03_4f4d:
    ld   A, [DE]                                       ;; 03:4f4d $1a
    ld   C, A                                          ;; 03:4f4e $4f
    push BC                                            ;; 03:4f4f $c5
    call call_03_5574                                  ;; 03:4f50 $cd $74 $55
    pop  BC                                            ;; 03:4f53 $c1
    call call_00_0695                                  ;; 03:4f54 $cd $95 $06
    ld   A, $00                                        ;; 03:4f57 $3e $00
    ret                                                ;; 03:4f59 $c9

call_03_4f5a:
    ld   A, [DE]                                       ;; 03:4f5a $1a
    ld   C, A                                          ;; 03:4f5b $4f
    push BC                                            ;; 03:4f5c $c5
    call call_03_5591                                  ;; 03:4f5d $cd $91 $55
    pop  BC                                            ;; 03:4f60 $c1
    call call_00_0695                                  ;; 03:4f61 $cd $95 $06
    ld   A, $00                                        ;; 03:4f64 $3e $00
    ret                                                ;; 03:4f66 $c9

call_03_4f67:
    ld   A, [DE]                                       ;; 03:4f67 $1a
    ld   C, A                                          ;; 03:4f68 $4f
    push BC                                            ;; 03:4f69 $c5
    call call_03_55ae                                  ;; 03:4f6a $cd $ae $55
    pop  BC                                            ;; 03:4f6d $c1
    call call_00_0695                                  ;; 03:4f6e $cd $95 $06
    ld   A, $00                                        ;; 03:4f71 $3e $00
    ret                                                ;; 03:4f73 $c9

call_03_4f74:
    ld   A, C                                          ;; 03:4f74 $79
    or   A, C                                          ;; 03:4f75 $b1
    jr   NZ, .jr_03_4f7a                               ;; 03:4f76 $20 $02
    ld   A, $0c                                        ;; 03:4f78 $3e $0c
.jr_03_4f7a:
    push AF                                            ;; 03:4f7a $f5
    ld   A, [DE]                                       ;; 03:4f7b $1a
    ld   C, A                                          ;; 03:4f7c $4f
    push BC                                            ;; 03:4f7d $c5
    call call_03_5574                                  ;; 03:4f7e $cd $74 $55
    pop  BC                                            ;; 03:4f81 $c1
    call call_00_0695                                  ;; 03:4f82 $cd $95 $06
    pop  AF                                            ;; 03:4f85 $f1
    dec  A                                             ;; 03:4f86 $3d
    ret                                                ;; 03:4f87 $c9

call_03_4f88:
    ld   A, [DE]                                       ;; 03:4f88 $1a
    ld   C, A                                          ;; 03:4f89 $4f
    push BC                                            ;; 03:4f8a $c5
    call GetObjectX                                    ;; 03:4f8b $cd $2d $0c
    push AF                                            ;; 03:4f8e $f5
    call call_00_0293                                  ;; 03:4f8f $cd $93 $02
    ld   C, A                                          ;; 03:4f92 $4f
    ld   B, $01                                        ;; 03:4f93 $06 $01
    pop  AF                                            ;; 03:4f95 $f1
    cp   A, C                                          ;; 03:4f96 $b9
    jr   C, .jr_03_4f9b                                ;; 03:4f97 $38 $02
    ld   B, $02                                        ;; 03:4f99 $06 $02
.jr_03_4f9b:
    ld   A, B                                          ;; 03:4f9b $78
    pop  BC                                            ;; 03:4f9c $c1
    call call_00_0695                                  ;; 03:4f9d $cd $95 $06
    ld   A, $00                                        ;; 03:4fa0 $3e $00
    ret                                                ;; 03:4fa2 $c9

call_03_4fa3:
    ld   A, [DE]                                       ;; 03:4fa3 $1a
    ld   C, A                                          ;; 03:4fa4 $4f
    push BC                                            ;; 03:4fa5 $c5
    call GetObjectY                                    ;; 03:4fa6 $cd $3e $0c
    push AF                                            ;; 03:4fa9 $f5
    call call_00_0299                                  ;; 03:4faa $cd $99 $02
    ld   C, A                                          ;; 03:4fad $4f
    ld   B, $08                                        ;; 03:4fae $06 $08
    pop  AF                                            ;; 03:4fb0 $f1
    cp   A, C                                          ;; 03:4fb1 $b9
    jr   C, .jr_03_4fb6                                ;; 03:4fb2 $38 $02
    ld   B, $04                                        ;; 03:4fb4 $06 $04
.jr_03_4fb6:
    ld   A, B                                          ;; 03:4fb6 $78
    pop  BC                                            ;; 03:4fb7 $c1
    call call_00_0695                                  ;; 03:4fb8 $cd $95 $06
    ld   A, $00                                        ;; 03:4fbb $3e $00
    ret                                                ;; 03:4fbd $c9

call_03_4fbe:
    ld   A, [DE]                                       ;; 03:4fbe $1a
    ld   C, A                                          ;; 03:4fbf $4f
    push BC                                            ;; 03:4fc0 $c5
    call GetObjectX                                    ;; 03:4fc1 $cd $2d $0c
    push AF                                            ;; 03:4fc4 $f5
    call call_00_0293                                  ;; 03:4fc5 $cd $93 $02
    ld   C, A                                          ;; 03:4fc8 $4f
    ld   B, $02                                        ;; 03:4fc9 $06 $02
    pop  AF                                            ;; 03:4fcb $f1
    cp   A, C                                          ;; 03:4fcc $b9
    jr   C, .jr_03_4fd1                                ;; 03:4fcd $38 $02
    ld   B, $01                                        ;; 03:4fcf $06 $01
.jr_03_4fd1:
    ld   A, B                                          ;; 03:4fd1 $78
    pop  BC                                            ;; 03:4fd2 $c1
    call call_00_0695                                  ;; 03:4fd3 $cd $95 $06
    ld   A, $00                                        ;; 03:4fd6 $3e $00
    ret                                                ;; 03:4fd8 $c9

call_03_4fd9:
    ld   A, [DE]                                       ;; 03:4fd9 $1a
    ld   C, A                                          ;; 03:4fda $4f
    push BC                                            ;; 03:4fdb $c5
    call GetObjectY                                    ;; 03:4fdc $cd $3e $0c
    push AF                                            ;; 03:4fdf $f5
    call call_00_0299                                  ;; 03:4fe0 $cd $99 $02
    ld   C, A                                          ;; 03:4fe3 $4f
    ld   B, $04                                        ;; 03:4fe4 $06 $04
    pop  AF                                            ;; 03:4fe6 $f1
    cp   A, C                                          ;; 03:4fe7 $b9
    jr   C, .jr_03_4fec                                ;; 03:4fe8 $38 $02
    ld   B, $08                                        ;; 03:4fea $06 $08
.jr_03_4fec:
    ld   A, B                                          ;; 03:4fec $78
    pop  BC                                            ;; 03:4fed $c1
    call call_00_0695                                  ;; 03:4fee $cd $95 $06
    ld   A, $00                                        ;; 03:4ff1 $3e $00
    ret                                                ;; 03:4ff3 $c9

call_03_4ff4:
    ld   HL, $02                                       ;; 03:4ff4 $21 $02 $00
    add  HL, DE                                        ;; 03:4ff7 $19
    ld   [HL], $04                                     ;; 03:4ff8 $36 $04
    ld   A, $00                                        ;; 03:4ffa $3e $00
    ret                                                ;; 03:4ffc $c9

call_03_4ffd:
    ld   HL, $10                                       ;; 03:4ffd $21 $10 $00
    add  HL, DE                                        ;; 03:5000 $19
    ld   A, [HL+]                                      ;; 03:5001 $2a
    ld   H, [HL]                                       ;; 03:5002 $66
    ld   L, A                                          ;; 03:5003 $6f
    ld   A, [HL]                                       ;; 03:5004 $7e
    ld   HL, $02                                       ;; 03:5005 $21 $02 $00
    add  HL, DE                                        ;; 03:5008 $19
    ld   [HL], A                                       ;; 03:5009 $77
    ld   A, $00                                        ;; 03:500a $3e $00
    ret                                                ;; 03:500c $c9

call_03_500d:
    ld   A, C                                          ;; 03:500d $79
    cp   A, $00                                        ;; 03:500e $fe $00
    ld   C, $1e                                        ;; 03:5010 $0e $1e
    call Z, call_03_55cb                               ;; 03:5012 $cc $cb $55
    call call_03_55df                                  ;; 03:5015 $cd $df $55
    ret                                                ;; 03:5018 $c9

call_03_5019:
    ld   A, C                                          ;; 03:5019 $79
    cp   A, $00                                        ;; 03:501a $fe $00
    ld   C, $3c                                        ;; 03:501c $0e $3c
    call Z, call_03_55cb                               ;; 03:501e $cc $cb $55
    call call_03_55df                                  ;; 03:5021 $cd $df $55
    ret                                                ;; 03:5024 $c9

call_03_5025:
    ld   A, C                                          ;; 03:5025 $79
    cp   A, $00                                        ;; 03:5026 $fe $00
    ld   C, $5a                                        ;; 03:5028 $0e $5a
    call Z, call_03_55cb                               ;; 03:502a $cc $cb $55
    call call_03_55df                                  ;; 03:502d $cd $df $55
    ret                                                ;; 03:5030 $c9

call_03_5031:
    ld   A, C                                          ;; 03:5031 $79
    cp   A, $00                                        ;; 03:5032 $fe $00
    ld   C, $78                                        ;; 03:5034 $0e $78
    call Z, call_03_55cb                               ;; 03:5036 $cc $cb $55
    call call_03_55df                                  ;; 03:5039 $cd $df $55
    ret                                                ;; 03:503c $c9

call_03_503d:
    ld   A, C                                          ;; 03:503d $79
    cp   A, $00                                        ;; 03:503e $fe $00
    ld   C, $96                                        ;; 03:5040 $0e $96
    call Z, call_03_55cb                               ;; 03:5042 $cc $cb $55
    call call_03_55df                                  ;; 03:5045 $cd $df $55
    ret                                                ;; 03:5048 $c9

call_03_5049:
    ld   A, C                                          ;; 03:5049 $79
    cp   A, $00                                        ;; 03:504a $fe $00
    ld   C, $b4                                        ;; 03:504c $0e $b4
    call Z, call_03_55cb                               ;; 03:504e $cc $cb $55
    call call_03_55df                                  ;; 03:5051 $cd $df $55
    ret                                                ;; 03:5054 $c9

call_03_5055:
    ld   A, [DE]                                       ;; 03:5055 $1a
    ld   C, A                                          ;; 03:5056 $4f
    ld   A, $01                                        ;; 03:5057 $3e $01
    call call_00_0695                                  ;; 03:5059 $cd $95 $06
    ld   A, $00                                        ;; 03:505c $3e $00
    ret                                                ;; 03:505e $c9

call_03_505f:
    ld   A, [DE]                                       ;; 03:505f $1a
    ld   C, A                                          ;; 03:5060 $4f
    ld   A, $02                                        ;; 03:5061 $3e $02
    call call_00_0695                                  ;; 03:5063 $cd $95 $06
    ld   A, $00                                        ;; 03:5066 $3e $00
    ret                                                ;; 03:5068 $c9

call_03_5069:
    ld   A, [DE]                                       ;; 03:5069 $1a
    ld   C, A                                          ;; 03:506a $4f
    ld   A, $04                                        ;; 03:506b $3e $04
    call call_00_0695                                  ;; 03:506d $cd $95 $06
    ld   A, $00                                        ;; 03:5070 $3e $00
    ret                                                ;; 03:5072 $c9

call_03_5073:
    ld   A, [DE]                                       ;; 03:5073 $1a
    ld   C, A                                          ;; 03:5074 $4f
    ld   A, $08                                        ;; 03:5075 $3e $08
    call call_00_0695                                  ;; 03:5077 $cd $95 $06
    ld   A, $00                                        ;; 03:507a $3e $00
    ret                                                ;; 03:507c $c9

call_03_507d:
    ld   A, C                                          ;; 03:507d $79
    or   A, A                                          ;; 03:507e $b7
    ld   A, $00                                        ;; 03:507f $3e $00
    call Z, call_03_5499                               ;; 03:5081 $cc $99 $54
    ld   A, $00                                        ;; 03:5084 $3e $00
    ret  Z                                             ;; 03:5086 $c8
    ld   A, $00                                        ;; 03:5087 $3e $00
    push DE                                            ;; 03:5089 $d5
    call call_03_5535                                  ;; 03:508a $cd $35 $55
    pop  DE                                            ;; 03:508d $d1
    call call_03_555e                                  ;; 03:508e $cd $5e $55
    ret                                                ;; 03:5091 $c9

call_03_5092:
    ld   A, C                                          ;; 03:5092 $79
    or   A, A                                          ;; 03:5093 $b7
    ld   A, $01                                        ;; 03:5094 $3e $01
    call Z, call_03_5499                               ;; 03:5096 $cc $99 $54
    ld   A, $00                                        ;; 03:5099 $3e $00
    ret  Z                                             ;; 03:509b $c8
    ld   A, $01                                        ;; 03:509c $3e $01
    push DE                                            ;; 03:509e $d5
    call call_03_5535                                  ;; 03:509f $cd $35 $55
    pop  DE                                            ;; 03:50a2 $d1
    call call_03_555e                                  ;; 03:50a3 $cd $5e $55
    ret                                                ;; 03:50a6 $c9

call_03_50a7:
    ld   A, C                                          ;; 03:50a7 $79
    or   A, A                                          ;; 03:50a8 $b7
    ld   A, $02                                        ;; 03:50a9 $3e $02
    call Z, call_03_5499                               ;; 03:50ab $cc $99 $54
    ld   A, $00                                        ;; 03:50ae $3e $00
    ret  Z                                             ;; 03:50b0 $c8
    ld   A, $02                                        ;; 03:50b1 $3e $02
    push DE                                            ;; 03:50b3 $d5
    call call_03_5535                                  ;; 03:50b4 $cd $35 $55
    pop  DE                                            ;; 03:50b7 $d1
    call call_03_555e                                  ;; 03:50b8 $cd $5e $55
    ret                                                ;; 03:50bb $c9

call_03_50bc:
    ld   A, C                                          ;; 03:50bc $79
    or   A, A                                          ;; 03:50bd $b7
    ld   A, $03                                        ;; 03:50be $3e $03
    call Z, call_03_5499                               ;; 03:50c0 $cc $99 $54
    ld   A, $00                                        ;; 03:50c3 $3e $00
    ret  Z                                             ;; 03:50c5 $c8
    ld   A, $03                                        ;; 03:50c6 $3e $03
    push DE                                            ;; 03:50c8 $d5
    call call_03_5535                                  ;; 03:50c9 $cd $35 $55
    pop  DE                                            ;; 03:50cc $d1
    call call_03_555e                                  ;; 03:50cd $cd $5e $55
    ret                                                ;; 03:50d0 $c9

call_03_50d1:
    ld   L, $04                                        ;; 03:50d1 $2e $04
    jr   jr_03_5141                                    ;; 03:50d3 $18 $6c

call_03_50d5:
    ld   L, $05                                        ;; 03:50d5 $2e $05
    jr   jr_03_5141                                    ;; 03:50d7 $18 $68

call_03_50d9:
    ld   L, $06                                        ;; 03:50d9 $2e $06
    jr   jr_03_5141                                    ;; 03:50db $18 $64

call_03_50dd:
    ld   L, $07                                        ;; 03:50dd $2e $07
    jr   jr_03_5141                                    ;; 03:50df $18 $60

call_03_50e1:
    ld   L, $08                                        ;; 03:50e1 $2e $08
    jr   jr_03_5141                                    ;; 03:50e3 $18 $5c

call_03_50e5:
    ld   L, $09                                        ;; 03:50e5 $2e $09
    jr   jr_03_5141                                    ;; 03:50e7 $18 $58

call_03_50e9:
    ld   L, $0a                                        ;; 03:50e9 $2e $0a
    jr   jr_03_5141                                    ;; 03:50eb $18 $54

call_03_50ed:
    ld   L, $0b                                        ;; 03:50ed $2e $0b
    jr   jr_03_5141                                    ;; 03:50ef $18 $50

call_03_50f1:
    ld   L, $0c                                        ;; 03:50f1 $2e $0c
    jr   jr_03_5141                                    ;; 03:50f3 $18 $4c

call_03_50f5:
    ld   L, $0d                                        ;; 03:50f5 $2e $0d
    jr   jr_03_5141                                    ;; 03:50f7 $18 $48

call_03_50f9:
    ld   L, $0e                                        ;; 03:50f9 $2e $0e
    jr   jr_03_5141                                    ;; 03:50fb $18 $44

call_03_50fd:
    ld   L, $0f                                        ;; 03:50fd $2e $0f
    jr   jr_03_5141                                    ;; 03:50ff $18 $40

call_03_5101:
    ld   L, $10                                        ;; 03:5101 $2e $10
    jr   jr_03_5141                                    ;; 03:5103 $18 $3c

call_03_5105:
    ld   L, $11                                        ;; 03:5105 $2e $11
    jr   jr_03_5141                                    ;; 03:5107 $18 $38

call_03_5109:
    ld   L, $12                                        ;; 03:5109 $2e $12
    jr   jr_03_5141                                    ;; 03:510b $18 $34

call_03_510d:
    ld   L, $13                                        ;; 03:510d $2e $13
    jr   jr_03_5141                                    ;; 03:510f $18 $30

call_03_5111:
    ld   L, $14                                        ;; 03:5111 $2e $14
    jr   jr_03_5141                                    ;; 03:5113 $18 $2c

call_03_5115:
    ld   L, $15                                        ;; 03:5115 $2e $15
    jr   jr_03_5141                                    ;; 03:5117 $18 $28

call_03_5119:
    ld   L, $16                                        ;; 03:5119 $2e $16
    jr   jr_03_5141                                    ;; 03:511b $18 $24

call_03_511d:
    ld   L, $17                                        ;; 03:511d $2e $17
    jr   jr_03_5141                                    ;; 03:511f $18 $20

call_03_5121:
    ld   L, $18                                        ;; 03:5121 $2e $18
    jr   jr_03_5141                                    ;; 03:5123 $18 $1c

call_03_5125:
    ld   L, $19                                        ;; 03:5125 $2e $19
    jr   jr_03_5141                                    ;; 03:5127 $18 $18

call_03_5129:
    ld   L, $1a                                        ;; 03:5129 $2e $1a
    jr   jr_03_5141                                    ;; 03:512b $18 $14

call_03_512d:
    ld   L, $1b                                        ;; 03:512d $2e $1b
    jr   jr_03_5141                                    ;; 03:512f $18 $10

call_03_5131:
    ld   L, $1c                                        ;; 03:5131 $2e $1c
    jr   jr_03_5141                                    ;; 03:5133 $18 $0c

call_03_5135:
    ld   L, $1d                                        ;; 03:5135 $2e $1d
    jr   jr_03_5141                                    ;; 03:5137 $18 $08

call_03_5139:
    ld   L, $1e                                        ;; 03:5139 $2e $1e
    jr   jr_03_5141                                    ;; 03:513b $18 $04

call_03_513d:
    ld   L, $1f                                        ;; 03:513d $2e $1f
    jr   jr_03_5141                                    ;; 03:513f $18 $00

jr_03_5141:
    ld   A, C                                          ;; 03:5141 $79
    or   A, A                                          ;; 03:5142 $b7
    ld   A, L                                          ;; 03:5143 $7d
    push HL                                            ;; 03:5144 $e5
    call Z, call_03_5499                               ;; 03:5145 $cc $99 $54
    pop  HL                                            ;; 03:5148 $e1
    ld   A, $00                                        ;; 03:5149 $3e $00
    ret  Z                                             ;; 03:514b $c8
    ld   A, L                                          ;; 03:514c $7d
    call call_03_5535                                  ;; 03:514d $cd $35 $55
    ret                                                ;; 03:5150 $c9

call_03_5151:
    ld   L, $24                                        ;; 03:5151 $2e $24
    jr   jr_03_51c1                                    ;; 03:5153 $18 $6c

call_03_5155:
    ld   L, $25                                        ;; 03:5155 $2e $25
    jr   jr_03_51c1                                    ;; 03:5157 $18 $68

call_03_5159:
    ld   L, $26                                        ;; 03:5159 $2e $26
    jr   jr_03_51c1                                    ;; 03:515b $18 $64

call_03_515d:
    ld   L, $27                                        ;; 03:515d $2e $27
    jr   jr_03_51c1                                    ;; 03:515f $18 $60

call_03_5161:
    ld   L, $28                                        ;; 03:5161 $2e $28
    jr   jr_03_51c1                                    ;; 03:5163 $18 $5c

call_03_5165:
    ld   L, $29                                        ;; 03:5165 $2e $29
    jr   jr_03_51c1                                    ;; 03:5167 $18 $58

call_03_5169:
    ld   L, $2a                                        ;; 03:5169 $2e $2a
    jr   jr_03_51c1                                    ;; 03:516b $18 $54

call_03_516d:
    ld   L, $2b                                        ;; 03:516d $2e $2b
    jr   jr_03_51c1                                    ;; 03:516f $18 $50

call_03_5171:
    ld   L, $2c                                        ;; 03:5171 $2e $2c
    jr   jr_03_51c1                                    ;; 03:5173 $18 $4c

call_03_5175:
    ld   L, $2d                                        ;; 03:5175 $2e $2d
    jr   jr_03_51c1                                    ;; 03:5177 $18 $48

call_03_5179:
    ld   L, $2e                                        ;; 03:5179 $2e $2e
    jr   jr_03_51c1                                    ;; 03:517b $18 $44

call_03_517d:
    ld   L, $2f                                        ;; 03:517d $2e $2f
    jr   jr_03_51c1                                    ;; 03:517f $18 $40

call_03_5181:
    ld   L, $30                                        ;; 03:5181 $2e $30
    jr   jr_03_51c1                                    ;; 03:5183 $18 $3c

call_03_5185:
    ld   L, $31                                        ;; 03:5185 $2e $31
    jr   jr_03_51c1                                    ;; 03:5187 $18 $38

call_03_5189:
    ld   L, $32                                        ;; 03:5189 $2e $32
    jr   jr_03_51c1                                    ;; 03:518b $18 $34

call_03_518d:
    ld   L, $33                                        ;; 03:518d $2e $33
    jr   jr_03_51c1                                    ;; 03:518f $18 $30

call_03_5191:
    ld   L, $34                                        ;; 03:5191 $2e $34
    jr   jr_03_51c1                                    ;; 03:5193 $18 $2c

call_03_5195:
    ld   L, $35                                        ;; 03:5195 $2e $35
    jr   jr_03_51c1                                    ;; 03:5197 $18 $28

call_03_5199:
    ld   L, $36                                        ;; 03:5199 $2e $36
    jr   jr_03_51c1                                    ;; 03:519b $18 $24

call_03_519d:
    ld   L, $37                                        ;; 03:519d $2e $37
    jr   jr_03_51c1                                    ;; 03:519f $18 $20

call_03_51a1:
    ld   L, $38                                        ;; 03:51a1 $2e $38
    jr   jr_03_51c1                                    ;; 03:51a3 $18 $1c

call_03_51a5:
    ld   L, $39                                        ;; 03:51a5 $2e $39
    jr   jr_03_51c1                                    ;; 03:51a7 $18 $18

call_03_51a9:
    ld   L, $3a                                        ;; 03:51a9 $2e $3a
    jr   jr_03_51c1                                    ;; 03:51ab $18 $14

call_03_51ad:
    ld   L, $3b                                        ;; 03:51ad $2e $3b
    jr   jr_03_51c1                                    ;; 03:51af $18 $10

call_03_51b1:
    ld   L, $3c                                        ;; 03:51b1 $2e $3c
    jr   jr_03_51c1                                    ;; 03:51b3 $18 $0c

call_03_51b5:
    ld   L, $3d                                        ;; 03:51b5 $2e $3d
    jr   jr_03_51c1                                    ;; 03:51b7 $18 $08

call_03_51b9:
    ld   L, $3e                                        ;; 03:51b9 $2e $3e
    jr   jr_03_51c1                                    ;; 03:51bb $18 $04

call_03_51bd:
    ld   L, $3f                                        ;; 03:51bd $2e $3f
    jr   jr_03_51c1                                    ;; 03:51bf $18 $00

jr_03_51c1:
    ld   A, C                                          ;; 03:51c1 $79
    or   A, A                                          ;; 03:51c2 $b7
    ld   A, L                                          ;; 03:51c3 $7d
    push HL                                            ;; 03:51c4 $e5
    call Z, call_03_5499                               ;; 03:51c5 $cc $99 $54
    pop  HL                                            ;; 03:51c8 $e1
    ld   A, $00                                        ;; 03:51c9 $3e $00
    ret  Z                                             ;; 03:51cb $c8
    ld   A, L                                          ;; 03:51cc $7d
    call call_03_5535                                  ;; 03:51cd $cd $35 $55
    ret                                                ;; 03:51d0 $c9

call_03_51d1:
    ld   L, $44                                        ;; 03:51d1 $2e $44
    jr   jr_03_5241                                    ;; 03:51d3 $18 $6c

call_03_51d5:
    ld   L, $45                                        ;; 03:51d5 $2e $45
    jr   jr_03_5241                                    ;; 03:51d7 $18 $68

call_03_51d9:
    ld   L, $46                                        ;; 03:51d9 $2e $46
    jr   jr_03_5241                                    ;; 03:51db $18 $64

call_03_51dd:
    ld   L, $47                                        ;; 03:51dd $2e $47
    jr   jr_03_5241                                    ;; 03:51df $18 $60

call_03_51e1:
    ld   L, $48                                        ;; 03:51e1 $2e $48
    jr   jr_03_5241                                    ;; 03:51e3 $18 $5c

call_03_51e5:
    ld   L, $49                                        ;; 03:51e5 $2e $49
    jr   jr_03_5241                                    ;; 03:51e7 $18 $58

call_03_51e9:
    ld   L, $4a                                        ;; 03:51e9 $2e $4a
    jr   jr_03_5241                                    ;; 03:51eb $18 $54

call_03_51ed:
    ld   L, $4b                                        ;; 03:51ed $2e $4b
    jr   jr_03_5241                                    ;; 03:51ef $18 $50

call_03_51f1:
    ld   L, $4c                                        ;; 03:51f1 $2e $4c
    jr   jr_03_5241                                    ;; 03:51f3 $18 $4c

call_03_51f5:
    ld   L, $4d                                        ;; 03:51f5 $2e $4d
    jr   jr_03_5241                                    ;; 03:51f7 $18 $48

call_03_51f9:
    ld   L, $4e                                        ;; 03:51f9 $2e $4e
    jr   jr_03_5241                                    ;; 03:51fb $18 $44

call_03_51fd:
    ld   L, $4f                                        ;; 03:51fd $2e $4f
    jr   jr_03_5241                                    ;; 03:51ff $18 $40

call_03_5201:
    ld   L, $50                                        ;; 03:5201 $2e $50
    jr   jr_03_5241                                    ;; 03:5203 $18 $3c

call_03_5205:
    ld   L, $51                                        ;; 03:5205 $2e $51
    jr   jr_03_5241                                    ;; 03:5207 $18 $38

call_03_5209:
    ld   L, $52                                        ;; 03:5209 $2e $52
    jr   jr_03_5241                                    ;; 03:520b $18 $34

call_03_520d:
    ld   L, $53                                        ;; 03:520d $2e $53
    jr   jr_03_5241                                    ;; 03:520f $18 $30

call_03_5211:
    ld   L, $54                                        ;; 03:5211 $2e $54
    jr   jr_03_5241                                    ;; 03:5213 $18 $2c

call_03_5215:
    ld   L, $55                                        ;; 03:5215 $2e $55
    jr   jr_03_5241                                    ;; 03:5217 $18 $28

call_03_5219:
    ld   L, $56                                        ;; 03:5219 $2e $56
    jr   jr_03_5241                                    ;; 03:521b $18 $24

call_03_521d:
    ld   L, $57                                        ;; 03:521d $2e $57
    jr   jr_03_5241                                    ;; 03:521f $18 $20

call_03_5221:
    ld   L, $58                                        ;; 03:5221 $2e $58
    jr   jr_03_5241                                    ;; 03:5223 $18 $1c

call_03_5225:
    ld   L, $59                                        ;; 03:5225 $2e $59
    jr   jr_03_5241                                    ;; 03:5227 $18 $18

call_03_5229:
    ld   L, $5a                                        ;; 03:5229 $2e $5a
    jr   jr_03_5241                                    ;; 03:522b $18 $14

call_03_522d:
    ld   L, $5b                                        ;; 03:522d $2e $5b
    jr   jr_03_5241                                    ;; 03:522f $18 $10

call_03_5231:
    ld   L, $5c                                        ;; 03:5231 $2e $5c
    jr   jr_03_5241                                    ;; 03:5233 $18 $0c

call_03_5235:
    ld   L, $5d                                        ;; 03:5235 $2e $5d
    jr   jr_03_5241                                    ;; 03:5237 $18 $08

call_03_5239:
    ld   L, $5e                                        ;; 03:5239 $2e $5e
    jr   jr_03_5241                                    ;; 03:523b $18 $04

call_03_523d:
    ld   L, $5f                                        ;; 03:523d $2e $5f
    jr   jr_03_5241                                    ;; 03:523f $18 $00

jr_03_5241:
    ld   A, C                                          ;; 03:5241 $79
    or   A, A                                          ;; 03:5242 $b7
    ld   A, L                                          ;; 03:5243 $7d
    push HL                                            ;; 03:5244 $e5
    call Z, call_03_5499                               ;; 03:5245 $cc $99 $54
    pop  HL                                            ;; 03:5248 $e1
    ld   A, $00                                        ;; 03:5249 $3e $00
    ret  Z                                             ;; 03:524b $c8
    push DE                                            ;; 03:524c $d5
    ld   A, L                                          ;; 03:524d $7d
    ld   HL, $06                                       ;; 03:524e $21 $06 $00
    add  HL, DE                                        ;; 03:5251 $19
    ld   H, [HL]                                       ;; 03:5252 $66
    ld   L, A                                          ;; 03:5253 $6f
    ld   A, [DE]                                       ;; 03:5254 $1a
    ld   D, H                                          ;; 03:5255 $54
    ld   E, L                                          ;; 03:5256 $5d
    ld   L, A                                          ;; 03:5257 $6f
    ld   A, C                                          ;; 03:5258 $79
    ld   C, L                                          ;; 03:5259 $4d
    call call_00_2c27                                  ;; 03:525a $cd $27 $2c
    pop  DE                                            ;; 03:525d $d1
    cp   A, $00                                        ;; 03:525e $fe $00
    call Z, call_03_554c                               ;; 03:5260 $cc $4c $55
    ret                                                ;; 03:5263 $c9

call_03_5264:
    ld   L, $70                                        ;; 03:5264 $2e $70
    jr   jr_03_52a4                                    ;; 03:5266 $18 $3c

call_03_5268:
    ld   L, $71                                        ;; 03:5268 $2e $71
    jr   jr_03_52a4                                    ;; 03:526a $18 $38

call_03_526c:
    ld   L, $72                                        ;; 03:526c $2e $72
    jr   jr_03_52a4                                    ;; 03:526e $18 $34

call_03_5270:
    ld   L, $73                                        ;; 03:5270 $2e $73
    jr   jr_03_52a4                                    ;; 03:5272 $18 $30

call_03_5274:
    ld   L, $74                                        ;; 03:5274 $2e $74
    jr   jr_03_52a4                                    ;; 03:5276 $18 $2c

call_03_5278:
    ld   L, $75                                        ;; 03:5278 $2e $75
    jr   jr_03_52a4                                    ;; 03:527a $18 $28

call_03_527c:
    ld   L, $76                                        ;; 03:527c $2e $76
    jr   jr_03_52a4                                    ;; 03:527e $18 $24

call_03_5280:
    ld   L, $77                                        ;; 03:5280 $2e $77
    jr   jr_03_52a4                                    ;; 03:5282 $18 $20

call_03_5284:
    ld   L, $78                                        ;; 03:5284 $2e $78
    jr   jr_03_52a4                                    ;; 03:5286 $18 $1c

call_03_5288:
    ld   L, $79                                        ;; 03:5288 $2e $79
    jr   jr_03_52a4                                    ;; 03:528a $18 $18

call_03_528c:
    ld   L, $7a                                        ;; 03:528c $2e $7a
    jr   jr_03_52a4                                    ;; 03:528e $18 $14

call_03_5290:
    ld   L, $7b                                        ;; 03:5290 $2e $7b
    jr   jr_03_52a4                                    ;; 03:5292 $18 $10

call_03_5294:
    ld   L, $7c                                        ;; 03:5294 $2e $7c
    jr   jr_03_52a4                                    ;; 03:5296 $18 $0c

call_03_5298:
    ld   L, $7d                                        ;; 03:5298 $2e $7d
    jr   jr_03_52a4                                    ;; 03:529a $18 $08

call_03_529c:
    ld   L, $7e                                        ;; 03:529c $2e $7e
    jr   jr_03_52a4                                    ;; 03:529e $18 $04

call_03_52a0:
    ld   L, $7f                                        ;; 03:52a0 $2e $7f
    jr   jr_03_52a4                                    ;; 03:52a2 $18 $00

jr_03_52a4:
    ld   A, C                                          ;; 03:52a4 $79
    or   A, A                                          ;; 03:52a5 $b7
    ld   A, L                                          ;; 03:52a6 $7d
    push HL                                            ;; 03:52a7 $e5
    call Z, call_03_535e                               ;; 03:52a8 $cc $5e $53
    pop  HL                                            ;; 03:52ab $e1
    ld   A, $00                                        ;; 03:52ac $3e $00
    ret  Z                                             ;; 03:52ae $c8
    ld   A, L                                          ;; 03:52af $7d
    call call_03_52f8                                  ;; 03:52b0 $cd $f8 $52
    ret                                                ;; 03:52b3 $c9

data_03_52b4:
    db   $00, $04, $00, $04, $00, $04, $00, $04        ;; 03:52b4 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 03:52bc ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52c4 ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52cc ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52d4 ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52dc ........
    db   $04, $00, $04, $00, $01, $01, $01, $01        ;; 03:52e4 ....????
    db   $01, $01, $01, $01, $00, $04, $00, $04        ;; 03:52ec ????????
    db   $00, $04, $00, $04                            ;; 03:52f4 ????

call_03_52f8:
    ld   HL, $07                                       ;; 03:52f8 $21 $07 $00
    add  HL, DE                                        ;; 03:52fb $19
    ld   H, [HL]                                       ;; 03:52fc $66
    ld   L, A                                          ;; 03:52fd $6f
    ld   A, H                                          ;; 03:52fe $7c
    cp   A, $00                                        ;; 03:52ff $fe $00
    call Z, call_03_5369                               ;; 03:5301 $cc $69 $53
    ld   A, L                                          ;; 03:5304 $7d
    push BC                                            ;; 03:5305 $c5
    push AF                                            ;; 03:5306 $f5
    push DE                                            ;; 03:5307 $d5
    ld   A, [DE]                                       ;; 03:5308 $1a
    ld   C, A                                          ;; 03:5309 $4f
    push BC                                            ;; 03:530a $c5
    call getObjectDirection                            ;; 03:530b $cd $99 $0c
    pop  BC                                            ;; 03:530e $c1
    and  A, $0f                                        ;; 03:530f $e6 $0f
    or   A, $10                                        ;; 03:5311 $f6 $10
    ld   DE, $8080                                     ;; 03:5313 $11 $80 $80
    call call_00_08d4                                  ;; 03:5316 $cd $d4 $08
    pop  DE                                            ;; 03:5319 $d1
    pop  AF                                            ;; 03:531a $f1
    pop  BC                                            ;; 03:531b $c1
    push BC                                            ;; 03:531c $c5
    ld   B, A                                          ;; 03:531d $47
    ld   HL, $07                                       ;; 03:531e $21 $07 $00
    add  HL, DE                                        ;; 03:5321 $19
    ld   A, [HL]                                       ;; 03:5322 $7e
    inc  A                                             ;; 03:5323 $3c
    ld   [HL], A                                       ;; 03:5324 $77
    bit  0, A                                          ;; 03:5325 $cb $47
    jr   NZ, .jr_03_5337                               ;; 03:5327 $20 $0e
    push HL                                            ;; 03:5329 $e5
    ld   HL, $02                                       ;; 03:532a $21 $02 $00
    add  HL, DE                                        ;; 03:532d $19
    add  A, A                                          ;; 03:532e $87
    cp   A, [HL]                                       ;; 03:532f $be
    pop  HL                                            ;; 03:5330 $e1
    jr   C, .jr_03_5335                                ;; 03:5331 $38 $02
    ld   [HL], $00                                     ;; 03:5333 $36 $00
.jr_03_5335:
    srl  A                                             ;; 03:5335 $cb $3f
.jr_03_5337:
    dec  A                                             ;; 03:5337 $3d
    and  A, $01                                        ;; 03:5338 $e6 $01
    dec  C                                             ;; 03:533a $0d
    sla  C                                             ;; 03:533b $cb $21
    jr   NC, .jr_03_5341                               ;; 03:533d $30 $02
    ld   C, $42                                        ;; 03:533f $0e $42
.jr_03_5341:
    add  A, C                                          ;; 03:5341 $81
    ld   HL, data_03_52b4                              ;; 03:5342 $21 $b4 $52
    add  A, L                                          ;; 03:5345 $85
    ld   L, A                                          ;; 03:5346 $6f
    ld   A, $00                                        ;; 03:5347 $3e $00
    adc  A, H                                          ;; 03:5349 $8c
    ld   H, A                                          ;; 03:534a $67
    ld   A, [HL]                                       ;; 03:534b $7e
    cp   A, $00                                        ;; 03:534c $fe $00
    jr   Z, .jr_03_5358                                ;; 03:534e $28 $08
    ld   HL, $01                                       ;; 03:5350 $21 $01 $00
    add  HL, DE                                        ;; 03:5353 $19
    ld   [HL], A                                       ;; 03:5354 $77
    pop  BC                                            ;; 03:5355 $c1
    ld   A, C                                          ;; 03:5356 $79
    ret                                                ;; 03:5357 $c9
.jr_03_5358:
    ld   A, B                                          ;; 03:5358 $78
    pop  BC                                            ;; 03:5359 $c1
    call call_03_52f8                                  ;; 03:535a $cd $f8 $52
    ret                                                ;; 03:535d $c9

call_03_535e:
    call call_03_5499                                  ;; 03:535e $cd $99 $54
    ret  Z                                             ;; 03:5361 $c8
    ld   HL, $07                                       ;; 03:5362 $21 $07 $00
    add  HL, DE                                        ;; 03:5365 $19
    ld   [HL], $00                                     ;; 03:5366 $36 $00
    ret                                                ;; 03:5368 $c9

call_03_5369:
    push AF                                            ;; 03:5369 $f5
    push BC                                            ;; 03:536a $c5
    push DE                                            ;; 03:536b $d5
    push HL                                            ;; 03:536c $e5
    ld   A, L                                          ;; 03:536d $7d
    call call_03_5535                                  ;; 03:536e $cd $35 $55
    pop  HL                                            ;; 03:5371 $e1
    pop  DE                                            ;; 03:5372 $d1
    pop  BC                                            ;; 03:5373 $c1
    ld   C, A                                          ;; 03:5374 $4f
    pop  AF                                            ;; 03:5375 $f1
    ret                                                ;; 03:5376 $c9

call_03_5377:
    ld   L, $90                                        ;; 03:5377 $2e $90
    jr   jr_03_53da                                    ;; 03:5379 $18 $5f

call_03_537b:
    ld   L, $91                                        ;; 03:537b $2e $91
    jr   jr_03_53da                                    ;; 03:537d $18 $5b

call_03_537f:
    ld   L, $92                                        ;; 03:537f $2e $92
    jr   jr_03_53da                                    ;; 03:5381 $18 $57

call_03_5383:
    ld   L, $93                                        ;; 03:5383 $2e $93
    jr   jr_03_53da                                    ;; 03:5385 $18 $53

call_03_5387:
    ld   L, $94                                        ;; 03:5387 $2e $94
    jr   jr_03_53da                                    ;; 03:5389 $18 $4f

call_03_538b:
    ld   L, $95                                        ;; 03:538b $2e $95
    jr   jr_03_53da                                    ;; 03:538d $18 $4b

call_03_538f:
    ld   L, $96                                        ;; 03:538f $2e $96
    jr   jr_03_53da                                    ;; 03:5391 $18 $47

call_03_5393:
    ld   L, $97                                        ;; 03:5393 $2e $97
    jr   jr_03_53da                                    ;; 03:5395 $18 $43

call_03_5397:
    ld   L, $98                                        ;; 03:5397 $2e $98
    jr   jr_03_53da                                    ;; 03:5399 $18 $3f

call_03_539b:
    ld   L, $99                                        ;; 03:539b $2e $99
    jr   jr_03_53da                                    ;; 03:539d $18 $3b

call_03_539f:
    ld   L, $9a                                        ;; 03:539f $2e $9a
    jr   jr_03_53da                                    ;; 03:53a1 $18 $37

call_03_53a3:
    ld   L, $9b                                        ;; 03:53a3 $2e $9b
    jr   jr_03_53da                                    ;; 03:53a5 $18 $33

call_03_53a7:
    ld   L, $9c                                        ;; 03:53a7 $2e $9c
    jr   jr_03_53da                                    ;; 03:53a9 $18 $2f

call_03_53ab:
    ld   L, $9d                                        ;; 03:53ab $2e $9d
    jr   jr_03_53da                                    ;; 03:53ad $18 $2b

call_03_53af:
    ld   L, $9e                                        ;; 03:53af $2e $9e
    jr   jr_03_53da                                    ;; 03:53b1 $18 $27

call_03_53b3:
    ld   L, $9f                                        ;; 03:53b3 $2e $9f
    jr   jr_03_53da                                    ;; 03:53b5 $18 $23

data_03_53b7:
    db   $00, $00, $01, $01, $03, $03, $03, $03        ;; 03:53b7 ?.......
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 03:53bf ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:53c7 ..??????
    db   $00, $00, $03, $83, $03, $03, $01, $01        ;; 03:53cf ????????
    db   $00, $00, $00                                 ;; 03:53d7 ???

jr_03_53da:
    ld   A, C                                          ;; 03:53da $79
    or   A, A                                          ;; 03:53db $b7
    ld   A, L                                          ;; 03:53dc $7d
    push HL                                            ;; 03:53dd $e5
    call Z, call_03_5499                               ;; 03:53de $cc $99 $54
    pop  HL                                            ;; 03:53e1 $e1
    ld   A, $00                                        ;; 03:53e2 $3e $00
    ret  Z                                             ;; 03:53e4 $c8
    ld   A, L                                          ;; 03:53e5 $7d
    push BC                                            ;; 03:53e6 $c5
    push DE                                            ;; 03:53e7 $d5
    call call_03_5535                                  ;; 03:53e8 $cd $35 $55
    pop  DE                                            ;; 03:53eb $d1
    pop  BC                                            ;; 03:53ec $c1
    push AF                                            ;; 03:53ed $f5
    ld   HL, data_03_53b7                              ;; 03:53ee $21 $b7 $53
    add  A, L                                          ;; 03:53f1 $85
    ld   L, A                                          ;; 03:53f2 $6f
    ld   A, $00                                        ;; 03:53f3 $3e $00
    adc  A, H                                          ;; 03:53f5 $8c
    ld   H, A                                          ;; 03:53f6 $67
    ld   A, [HL]                                       ;; 03:53f7 $7e
    and  A, $7f                                        ;; 03:53f8 $e6 $7f
    cp   A, [HL]                                       ;; 03:53fa $be
    call NZ, call_03_5403                              ;; 03:53fb $c4 $03 $54
    call call_00_28bc                                  ;; 03:53fe $cd $bc $28
    pop  AF                                            ;; 03:5401 $f1
    ret                                                ;; 03:5402 $c9

call_03_5403:
    push AF                                            ;; 03:5403 $f5
    push DE                                            ;; 03:5404 $d5
    ld   A, [DE]                                       ;; 03:5405 $1a
    ld   C, A                                          ;; 03:5406 $4f
    push BC                                            ;; 03:5407 $c5
    call getObjectDirection                            ;; 03:5408 $cd $99 $0c
    pop  BC                                            ;; 03:540b $c1
    and  A, $0f                                        ;; 03:540c $e6 $0f
    or   A, $10                                        ;; 03:540e $f6 $10
    ld   DE, $8080                                     ;; 03:5410 $11 $80 $80
    call call_00_08d4                                  ;; 03:5413 $cd $d4 $08
    pop  DE                                            ;; 03:5416 $d1
    pop  AF                                            ;; 03:5417 $f1
    ret                                                ;; 03:5418 $c9

call_03_5419:
    ld   L, $a4                                        ;; 03:5419 $2e $a4
    jr   jr_03_5489                                    ;; 03:541b $18 $6c

call_03_541d:
    ld   L, $a5                                        ;; 03:541d $2e $a5
    jr   jr_03_5489                                    ;; 03:541f $18 $68

call_03_5421:
    ld   L, $a6                                        ;; 03:5421 $2e $a6
    jr   jr_03_5489                                    ;; 03:5423 $18 $64

call_03_5425:
    ld   L, $a7                                        ;; 03:5425 $2e $a7
    jr   jr_03_5489                                    ;; 03:5427 $18 $60

call_03_5429:
    ld   L, $a8                                        ;; 03:5429 $2e $a8
    jr   jr_03_5489                                    ;; 03:542b $18 $5c

call_03_542d:
    ld   L, $a9                                        ;; 03:542d $2e $a9
    jr   jr_03_5489                                    ;; 03:542f $18 $58

call_03_5431:
    ld   L, $aa                                        ;; 03:5431 $2e $aa
    jr   jr_03_5489                                    ;; 03:5433 $18 $54

call_03_5435:
    ld   L, $ab                                        ;; 03:5435 $2e $ab
    jr   jr_03_5489                                    ;; 03:5437 $18 $50

call_03_5439:
    ld   L, $ac                                        ;; 03:5439 $2e $ac
    jr   jr_03_5489                                    ;; 03:543b $18 $4c

call_03_543d:
    ld   L, $ad                                        ;; 03:543d $2e $ad
    jr   jr_03_5489                                    ;; 03:543f $18 $48

call_03_5441:
    ld   L, $ae                                        ;; 03:5441 $2e $ae
    jr   jr_03_5489                                    ;; 03:5443 $18 $44

call_03_5445:
    ld   L, $af                                        ;; 03:5445 $2e $af
    jr   jr_03_5489                                    ;; 03:5447 $18 $40

call_03_5449:
    ld   L, $b0                                        ;; 03:5449 $2e $b0
    jr   jr_03_5489                                    ;; 03:544b $18 $3c

call_03_544d:
    ld   L, $b1                                        ;; 03:544d $2e $b1
    jr   jr_03_5489                                    ;; 03:544f $18 $38

call_03_5451:
    ld   L, $b2                                        ;; 03:5451 $2e $b2
    jr   jr_03_5489                                    ;; 03:5453 $18 $34

call_03_5455:
    ld   L, $b3                                        ;; 03:5455 $2e $b3
    jr   jr_03_5489                                    ;; 03:5457 $18 $30

call_03_5459:
    ld   L, $b4                                        ;; 03:5459 $2e $b4
    jr   jr_03_5489                                    ;; 03:545b $18 $2c

call_03_545d:
    ld   L, $b5                                        ;; 03:545d $2e $b5
    jr   jr_03_5489                                    ;; 03:545f $18 $28

call_03_5461:
    ld   L, $b6                                        ;; 03:5461 $2e $b6
    jr   jr_03_5489                                    ;; 03:5463 $18 $24

call_03_5465:
    ld   L, $b7                                        ;; 03:5465 $2e $b7
    jr   jr_03_5489                                    ;; 03:5467 $18 $20

call_03_5469:
    ld   L, $b8                                        ;; 03:5469 $2e $b8
    jr   jr_03_5489                                    ;; 03:546b $18 $1c

call_03_546d:
    ld   L, $b9                                        ;; 03:546d $2e $b9
    jr   jr_03_5489                                    ;; 03:546f $18 $18

call_03_5471:
    ld   L, $ba                                        ;; 03:5471 $2e $ba
    jr   jr_03_5489                                    ;; 03:5473 $18 $14

call_03_5475:
    ld   L, $bb                                        ;; 03:5475 $2e $bb
    jr   jr_03_5489                                    ;; 03:5477 $18 $10

call_03_5479:
    ld   L, $bc                                        ;; 03:5479 $2e $bc
    jr   jr_03_5489                                    ;; 03:547b $18 $0c

call_03_547d:
    ld   L, $bd                                        ;; 03:547d $2e $bd
    jr   jr_03_5489                                    ;; 03:547f $18 $08

call_03_5481:
    ld   L, $be                                        ;; 03:5481 $2e $be
    jr   jr_03_5489                                    ;; 03:5483 $18 $04

call_03_5485:
    ld   L, $bf                                        ;; 03:5485 $2e $bf
    jr   jr_03_5489                                    ;; 03:5487 $18 $00

jr_03_5489:
    ld   A, C                                          ;; 03:5489 $79
    or   A, A                                          ;; 03:548a $b7
    ld   A, L                                          ;; 03:548b $7d
    push HL                                            ;; 03:548c $e5
    call Z, call_03_5499                               ;; 03:548d $cc $99 $54
    pop  HL                                            ;; 03:5490 $e1
    ld   A, $00                                        ;; 03:5491 $3e $00
    ret  Z                                             ;; 03:5493 $c8
    ld   A, L                                          ;; 03:5494 $7d
    call call_03_5535                                  ;; 03:5495 $cd $35 $55
    ret                                                ;; 03:5498 $c9

call_03_5499:
    push BC                                            ;; 03:5499 $c5
    push DE                                            ;; 03:549a $d5
    ld   B, A                                          ;; 03:549b $47
    ld   A, [DE]                                       ;; 03:549c $1a
    ld   C, A                                          ;; 03:549d $4f
    ld   A, B                                          ;; 03:549e $78
    push BC                                            ;; 03:549f $c5
    call call_00_2c1b                                  ;; 03:54a0 $cd $1b $2c
    pop  BC                                            ;; 03:54a3 $c1
    push DE                                            ;; 03:54a4 $d5
    push BC                                            ;; 03:54a5 $c5
    call call_00_05ef                                  ;; 03:54a6 $cd $ef $05
    pop  BC                                            ;; 03:54a9 $c1
    push BC                                            ;; 03:54aa $c5
    push DE                                            ;; 03:54ab $d5
    call getObjectDirection                            ;; 03:54ac $cd $99 $0c
    pop  DE                                            ;; 03:54af $d1
    pop  BC                                            ;; 03:54b0 $c1
    pop  HL                                            ;; 03:54b1 $e1
    bit  0, A                                          ;; 03:54b2 $cb $47
    jr   NZ, .jr_03_54ce                               ;; 03:54b4 $20 $18
    bit  1, A                                          ;; 03:54b6 $cb $4f
    jr   NZ, .jr_03_54de                               ;; 03:54b8 $20 $24
    bit  2, A                                          ;; 03:54ba $cb $57
    jr   NZ, .jr_03_54ee                               ;; 03:54bc $20 $30
    ld   A, D                                          ;; 03:54be $7a
    add  A, H                                          ;; 03:54bf $84
    ld   D, A                                          ;; 03:54c0 $57
    ld   A, E                                          ;; 03:54c1 $7b
    sub  A, L                                          ;; 03:54c2 $95
    ld   E, A                                          ;; 03:54c3 $5f
    ld   A, $28                                        ;; 03:54c4 $3e $28
    bit  7, L                                          ;; 03:54c6 $cb $7d
    jr   Z, .jr_03_54fc                                ;; 03:54c8 $28 $32
    ld   A, $18                                        ;; 03:54ca $3e $18
    jr   .jr_03_54fc                                   ;; 03:54cc $18 $2e
.jr_03_54ce:
    ld   A, D                                          ;; 03:54ce $7a
    add  A, L                                          ;; 03:54cf $85
    ld   D, A                                          ;; 03:54d0 $57
    ld   A, E                                          ;; 03:54d1 $7b
    add  A, H                                          ;; 03:54d2 $84
    ld   E, A                                          ;; 03:54d3 $5f
    ld   A, $81                                        ;; 03:54d4 $3e $81
    bit  7, L                                          ;; 03:54d6 $cb $7d
    jr   Z, .jr_03_54fc                                ;; 03:54d8 $28 $22
    ld   A, $41                                        ;; 03:54da $3e $41
    jr   .jr_03_54fc                                   ;; 03:54dc $18 $1e
.jr_03_54de:
    ld   A, D                                          ;; 03:54de $7a
    sub  A, L                                          ;; 03:54df $95
    ld   D, A                                          ;; 03:54e0 $57
    ld   A, E                                          ;; 03:54e1 $7b
    sub  A, H                                          ;; 03:54e2 $94
    ld   E, A                                          ;; 03:54e3 $5f
    ld   A, $42                                        ;; 03:54e4 $3e $42
    bit  7, L                                          ;; 03:54e6 $cb $7d
    jr   Z, .jr_03_54fc                                ;; 03:54e8 $28 $12
    ld   A, $82                                        ;; 03:54ea $3e $82
    jr   .jr_03_54fc                                   ;; 03:54ec $18 $0e
.jr_03_54ee:
    ld   A, D                                          ;; 03:54ee $7a
    sub  A, H                                          ;; 03:54ef $94
    ld   D, A                                          ;; 03:54f0 $57
    ld   A, E                                          ;; 03:54f1 $7b
    add  A, L                                          ;; 03:54f2 $85
    ld   E, A                                          ;; 03:54f3 $5f
    ld   A, $14                                        ;; 03:54f4 $3e $14
    bit  7, L                                          ;; 03:54f6 $cb $7d
    jr   Z, .jr_03_54fc                                ;; 03:54f8 $28 $02
    ld   A, $24                                        ;; 03:54fa $3e $24
.jr_03_54fc:
    push AF                                            ;; 03:54fc $f5
    ld   A, D                                          ;; 03:54fd $7a
    cp   A, $0f                                        ;; 03:54fe $fe $0f
    jr   NC, .jr_03_5530                               ;; 03:5500 $30 $2e
    ld   A, E                                          ;; 03:5502 $7b
    cp   A, $13                                        ;; 03:5503 $fe $13
    jr   NC, .jr_03_5530                               ;; 03:5505 $30 $29
    push DE                                            ;; 03:5507 $d5
    call getObjectCollisionFlags                       ;; 03:5508 $cd $6d $0c
    pop  DE                                            ;; 03:550b $d1
    call call_00_18c0                                  ;; 03:550c $cd $c0 $18
    jr   Z, .jr_03_5530                                ;; 03:550f $28 $1f
    pop  AF                                            ;; 03:5511 $f1
    pop  DE                                            ;; 03:5512 $d1
    ld   HL, $06                                       ;; 03:5513 $21 $06 $00
    add  HL, DE                                        ;; 03:5516 $19
    ld   [HL], A                                       ;; 03:5517 $77
    push DE                                            ;; 03:5518 $d5
    ld   A, [DE]                                       ;; 03:5519 $1a
    ld   C, A                                          ;; 03:551a $4f
    ld   A, $90                                        ;; 03:551b $3e $90
    and  A, $0f                                        ;; 03:551d $e6 $0f
    ld   B, A                                          ;; 03:551f $47
    push BC                                            ;; 03:5520 $c5
    call getObjectCollisionFlags                       ;; 03:5521 $cd $6d $0c
    and  A, $f0                                        ;; 03:5524 $e6 $f0
    pop  BC                                            ;; 03:5526 $c1
    or   A, B                                          ;; 03:5527 $b0
    call setObjectCollisionFlags                       ;; 03:5528 $cd $86 $0c
    pop  DE                                            ;; 03:552b $d1
    pop  BC                                            ;; 03:552c $c1
    xor  A, A                                          ;; 03:552d $af
    inc  A                                             ;; 03:552e $3c
    ret                                                ;; 03:552f $c9
.jr_03_5530:
    pop  BC                                            ;; 03:5530 $c1
    pop  DE                                            ;; 03:5531 $d1
    pop  BC                                            ;; 03:5532 $c1
    xor  A, A                                          ;; 03:5533 $af
    ret                                                ;; 03:5534 $c9

call_03_5535:
    push DE                                            ;; 03:5535 $d5
    ld   HL, $06                                       ;; 03:5536 $21 $06 $00
    add  HL, DE                                        ;; 03:5539 $19
    ld   H, [HL]                                       ;; 03:553a $66
    ld   L, A                                          ;; 03:553b $6f
    ld   A, [DE]                                       ;; 03:553c $1a
    ld   D, H                                          ;; 03:553d $54
    ld   E, L                                          ;; 03:553e $5d
    ld   L, A                                          ;; 03:553f $6f
    ld   A, C                                          ;; 03:5540 $79
    ld   C, L                                          ;; 03:5541 $4d
    call call_00_2c21                                  ;; 03:5542 $cd $21 $2c
    pop  DE                                            ;; 03:5545 $d1
    cp   A, $00                                        ;; 03:5546 $fe $00
    call Z, call_03_554c                               ;; 03:5548 $cc $4c $55
    ret                                                ;; 03:554b $c9

call_03_554c:
    ld   A, [DE]                                       ;; 03:554c $1a
    ld   C, A                                          ;; 03:554d $4f
    ld   HL, $12                                       ;; 03:554e $21 $12 $00
    add  HL, DE                                        ;; 03:5551 $19
    ld   A, [HL+]                                      ;; 03:5552 $2a
    ld   H, [HL]                                       ;; 03:5553 $66
    ld   L, A                                          ;; 03:5554 $6f
    ld   A, [HL]                                       ;; 03:5555 $7e
    push DE                                            ;; 03:5556 $d5
    call setObjectCollisionFlags                       ;; 03:5557 $cd $86 $0c
    pop  DE                                            ;; 03:555a $d1
    ld   A, $00                                        ;; 03:555b $3e $00
    ret                                                ;; 03:555d $c9

call_03_555e:
    cp   A, $00                                        ;; 03:555e $fe $00
    ret  NZ                                            ;; 03:5560 $c0
    ld   A, [DE]                                       ;; 03:5561 $1a
    ld   C, A                                          ;; 03:5562 $4f
    ld   HL, $06                                       ;; 03:5563 $21 $06 $00
    add  HL, DE                                        ;; 03:5566 $19
    ld   A, [HL]                                       ;; 03:5567 $7e
    swap A                                             ;; 03:5568 $cb $37
    and  A, $0f                                        ;; 03:556a $e6 $0f
    ld   B, $00                                        ;; 03:556c $06 $00
    call call_00_0695                                  ;; 03:556e $cd $95 $06
    ld   A, $00                                        ;; 03:5571 $3e $00
    ret                                                ;; 03:5573 $c9

call_03_5574:
    call getObjectDirection                            ;; 03:5574 $cd $99 $0c
    and  A, $0f                                        ;; 03:5577 $e6 $0f
    bit  0, A                                          ;; 03:5579 $cb $47
    jr   NZ, .jr_03_5588                               ;; 03:557b $20 $0b
    bit  1, A                                          ;; 03:557d $cb $4f
    jr   NZ, .jr_03_558b                               ;; 03:557f $20 $0a
    bit  2, A                                          ;; 03:5581 $cb $57
    jr   NZ, .jr_03_558e                               ;; 03:5583 $20 $09
    ld   A, $02                                        ;; 03:5585 $3e $02
    ret                                                ;; 03:5587 $c9
.jr_03_5588:
    ld   A, $08                                        ;; 03:5588 $3e $08
    ret                                                ;; 03:558a $c9
.jr_03_558b:
    ld   A, $04                                        ;; 03:558b $3e $04
    ret                                                ;; 03:558d $c9
.jr_03_558e:
    ld   A, $01                                        ;; 03:558e $3e $01
    ret                                                ;; 03:5590 $c9

call_03_5591:
    call getObjectDirection                            ;; 03:5591 $cd $99 $0c
    and  A, $0f                                        ;; 03:5594 $e6 $0f
    bit  0, A                                          ;; 03:5596 $cb $47
    jr   NZ, .jr_03_55a5                               ;; 03:5598 $20 $0b
    bit  1, A                                          ;; 03:559a $cb $4f
    jr   NZ, .jr_03_55a8                               ;; 03:559c $20 $0a
    bit  2, A                                          ;; 03:559e $cb $57
    jr   NZ, .jr_03_55ab                               ;; 03:55a0 $20 $09
    ld   A, $01                                        ;; 03:55a2 $3e $01
    ret                                                ;; 03:55a4 $c9
.jr_03_55a5:
    ld   A, $04                                        ;; 03:55a5 $3e $04
    ret                                                ;; 03:55a7 $c9
.jr_03_55a8:
    ld   A, $08                                        ;; 03:55a8 $3e $08
    ret                                                ;; 03:55aa $c9
.jr_03_55ab:
    ld   A, $02                                        ;; 03:55ab $3e $02
    ret                                                ;; 03:55ad $c9

call_03_55ae:
    call getObjectDirection                            ;; 03:55ae $cd $99 $0c
    and  A, $0f                                        ;; 03:55b1 $e6 $0f
    bit  0, A                                          ;; 03:55b3 $cb $47
    jr   NZ, .jr_03_55c2                               ;; 03:55b5 $20 $0b
    bit  1, A                                          ;; 03:55b7 $cb $4f
    jr   NZ, .jr_03_55c5                               ;; 03:55b9 $20 $0a
    bit  2, A                                          ;; 03:55bb $cb $57
    jr   NZ, .jr_03_55c8                               ;; 03:55bd $20 $09
    ld   A, $04                                        ;; 03:55bf $3e $04
    ret                                                ;; 03:55c1 $c9
.jr_03_55c2:
    ld   A, $02                                        ;; 03:55c2 $3e $02
    ret                                                ;; 03:55c4 $c9
.jr_03_55c5:
    ld   A, $01                                        ;; 03:55c5 $3e $01
    ret                                                ;; 03:55c7 $c9
.jr_03_55c8:
    ld   A, $08                                        ;; 03:55c8 $3e $08
    ret                                                ;; 03:55ca $c9

call_03_55cb:
    ld   HL, $02                                       ;; 03:55cb $21 $02 $00
    add  HL, DE                                        ;; 03:55ce $19
    ld   H, [HL]                                       ;; 03:55cf $66
    ld   A, $00                                        ;; 03:55d0 $3e $00
    cp   A, H                                          ;; 03:55d2 $bc
    ret  Z                                             ;; 03:55d3 $c8
    ld   L, $00                                        ;; 03:55d4 $2e $00
.jr_03_55d6:
    inc  L                                             ;; 03:55d6 $2c
    cp   A, C                                          ;; 03:55d7 $b9
    jr   NC, .jr_03_55dd                               ;; 03:55d8 $30 $03
    add  A, H                                          ;; 03:55da $84
    jr   .jr_03_55d6                                   ;; 03:55db $18 $f9
.jr_03_55dd:
    ld   A, L                                          ;; 03:55dd $7d
    ret                                                ;; 03:55de $c9

call_03_55df:
    dec  A                                             ;; 03:55df $3d
    push AF                                            ;; 03:55e0 $f5
    push DE                                            ;; 03:55e1 $d5
    ld   A, [DE]                                       ;; 03:55e2 $1a
    ld   C, A                                          ;; 03:55e3 $4f
    push BC                                            ;; 03:55e4 $c5
    call getObjectDirection                            ;; 03:55e5 $cd $99 $0c
    and  A, $0f                                        ;; 03:55e8 $e6 $0f
    pop  BC                                            ;; 03:55ea $c1
    call call_00_0695                                  ;; 03:55eb $cd $95 $06
    pop  DE                                            ;; 03:55ee $d1
    pop  AF                                            ;; 03:55ef $f1
    bit  0, A                                          ;; 03:55f0 $cb $47
    ret  Z                                             ;; 03:55f2 $c8
    push AF                                            ;; 03:55f3 $f5
    ld   A, $01                                        ;; 03:55f4 $3e $01
    call call_00_28bc                                  ;; 03:55f6 $cd $bc $28
    pop  AF                                            ;; 03:55f9 $f1
    ret                                                ;; 03:55fa $c9

call_03_55fb:
    or   A, $90                                        ;; 03:55fb $f6 $90
    push AF                                            ;; 03:55fd $f5
    push BC                                            ;; 03:55fe $c5
    call call_00_036f                                  ;; 03:55ff $cd $6f $03
    ld   A, B                                          ;; 03:5602 $78
    pop  BC                                            ;; 03:5603 $c1
    jr   NZ, .jr_03_5639                               ;; 03:5604 $20 $33
    ld   D, A                                          ;; 03:5606 $57
    pop  AF                                            ;; 03:5607 $f1
    bit  0, A                                          ;; 03:5608 $cb $47
    jr   NZ, .jr_03_561c                               ;; 03:560a $20 $10
    bit  1, A                                          ;; 03:560c $cb $4f
    jr   NZ, .jr_03_5622                               ;; 03:560e $20 $12
    bit  2, A                                          ;; 03:5610 $cb $57
    jr   NZ, .jr_03_5628                               ;; 03:5612 $20 $14
    bit  3, A                                          ;; 03:5614 $cb $5f
    jr   NZ, .jr_03_562e                               ;; 03:5616 $20 $16
    ld   A, $00                                        ;; 03:5618 $3e $00
    jr   .jr_03_563a                                   ;; 03:561a $18 $1e
.jr_03_561c:
    bit  0, D                                          ;; 03:561c $cb $42
    jr   Z, .jr_03_563a                                ;; 03:561e $28 $1a
    jr   .jr_03_5632                                   ;; 03:5620 $18 $10
.jr_03_5622:
    bit  1, D                                          ;; 03:5622 $cb $4a
    jr   Z, .jr_03_563a                                ;; 03:5624 $28 $14
    jr   .jr_03_5632                                   ;; 03:5626 $18 $0a
.jr_03_5628:
    bit  2, D                                          ;; 03:5628 $cb $52
    jr   Z, .jr_03_563a                                ;; 03:562a $28 $0e
    jr   .jr_03_5632                                   ;; 03:562c $18 $04
.jr_03_562e:
    bit  3, D                                          ;; 03:562e $cb $5a
    jr   Z, .jr_03_563a                                ;; 03:5630 $28 $08
.jr_03_5632:
    and  A, $0f                                        ;; 03:5632 $e6 $0f
    call setObjectDirection                            ;; 03:5634 $cd $a6 $0c
    xor  A, A                                          ;; 03:5637 $af
    ret                                                ;; 03:5638 $c9
.jr_03_5639:
    pop  AF                                            ;; 03:5639 $f1
.jr_03_563a:
    call call_00_0695                                  ;; 03:563a $cd $95 $06
    ret                                                ;; 03:563d $c9

;@data format=bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb amount=30
; Table usage unknown, record size gained from code.
data_03_563e:
    db   $11, $11, $11, $11, $11, $11, $11, $11, $11, $08, $06, $06, $06, $07, $07, $07, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 03:563e ................??.?..????.????.
    db   $11, $11, $11, $11, $11, $08, $06, $06, $06, $07, $07, $07, $02, $02, $02, $02, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11 ;; 03:565e ????????????????????????????????
    db   $07, $06, $07, $06, $07, $08, $04, $04, $04, $04, $04, $04, $04, $04, $0f, $0f, $09, $09, $09, $09, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10 ;; 03:567e ............................?...
    db   $02, $02, $07, $06, $07, $06, $07, $08, $04, $04, $04, $04, $04, $04, $0f, $0f, $09, $09, $09, $09, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10 ;; 03:569e .....................?.??....???
    db   $07, $06, $07, $06, $07, $06, $07, $08, $04, $04, $04, $04, $04, $04, $04, $04, $07, $06, $07, $06, $07, $06, $07, $08, $04, $04, $04, $04, $04, $04, $04, $10 ;; 03:56be .................??.............
    db   $0a, $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b, $0b, $04, $04, $04, $04, $04, $0f, $06, $07, $0e, $04, $04, $0f, $0f, $0f, $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b ;; 03:56de ................................
    db   $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b, $04, $04, $04, $04, $04, $02, $02, $0f, $02, $02, $06, $07, $0e, $0f, $0f, $0f, $0a, $0a, $0a, $0b, $0a, $0b, $0b, $0b ;; 03:56fe ????????????????????????????????
    db   $0b, $0b, $0b, $0b, $0b, $24, $24, $24, $24, $48, $48, $48, $0e, $0e, $0e, $0e, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $24, $24, $24, $24, $24, $24, $0b, $0b ;; 03:571e ????????????????????????????????
    db   $0a, $0a, $0a, $0a, $0a, $24, $24, $24, $24, $48, $48, $48, $0e, $0e, $0e, $0e, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $24, $24, $24, $24, $24, $24 ;; 03:573e ????????????????????????????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $64, $68, $68, $70, $64, $0e, $0e, $0e, $68, $69, $6a, $6b, $65, $65, $69, $69, $65, $69, $78, $79, $70, $75, $74, $75 ;; 03:575e ????????????????????????????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $64, $68, $68, $70, $64, $0e, $0e, $0e, $68, $69, $6a, $6b, $65, $65, $69, $69, $65, $69, $78, $79, $74, $75, $74, $75 ;; 03:577e ????????????????????????????????
    db   $06, $07, $20, $20, $20, $20, $20, $20, $20, $21, $21, $11, $11, $0f, $0f, $22, $24, $24, $24, $06, $06, $06, $06, $07, $07, $07, $07, $11, $4a, $4b, $09, $0e ;; 03:579e ?.????..????..?.????????????????
    db   $06, $07, $02, $02, $20, $20, $20, $20, $20, $21, $21, $11, $11, $0f, $0f, $22, $24, $24, $24, $06, $06, $06, $06, $07, $07, $07, $07, $11, $4a, $4b, $09, $0e ;; 03:57be ????????????????????????????????
    db   $0f, $4c, $4d, $4e, $4f, $49, $4a, $4b, $48, $0f, $0f, $11, $54, $55, $54, $55, $0f, $0f, $0f, $06, $06, $06, $07, $07, $07, $24, $24, $24, $10, $10, $09, $09 ;; 03:57de ..........................?.....
    db   $0f, $4c, $4d, $4e, $4f, $49, $4a, $4b, $48, $02, $02, $11, $4e, $4f, $4e, $4f, $0f, $0f, $0f, $06, $06, $06, $07, $07, $07, $24, $24, $24, $10, $10, $09, $09 ;; 03:57fe ..?.............?..?????.???????
    db   $6c, $6d, $6e, $6f, $74, $75, $74, $75, $78, $79, $7a, $7b, $6e, $6f, $11, $0f, $6c, $6d, $6e, $6f, $74, $75, $6e, $6f, $00, $00, $70, $69, $72, $73, $11, $09 ;; 03:581e .....................??.??..?.?.
    db   $13, $13, $78, $79, $10, $10, $6c, $6d, $04, $7b, $7a, $06, $07, $11, $11, $0f, $74, $75, $6e, $6f, $7b, $7a, $7b, $11, $11, $05, $70, $11, $0f, $06, $07, $09 ;; 03:583e ................??...?????.???.?
    db   $13, $78, $79, $28, $28, $6c, $6d, $04, $7b, $7a, $06, $07, $02, $02, $02, $0f, $74, $75, $6e, $6f, $7b, $7a, $7b, $02, $02, $05, $70, $11, $0f, $06, $07, $09 ;; 03:585e ????????????????????????????????
    db   $06, $07, $06, $07, $06, $07, $06, $08, $28, $28, $24, $24, $24, $24, $0f, $0f, $90, $90, $92, $93, $94, $95, $94, $95, $98, $99, $9a, $9b, $98, $99, $9a, $9b ;; 03:587e .....?....?..?.????????.??..???.
    db   $06, $07, $06, $07, $06, $07, $02, $02, $02, $02, $24, $24, $24, $24, $0f, $0f, $90, $90, $92, $93, $94, $95, $94, $95, $98, $99, $9a, $9b, $98, $99, $9a, $9b ;; 03:589e ????????????????????????????????
    db   $10, $10, $06, $07, $06, $07, $06, $07, $08, $24, $24, $28, $28, $28, $0f, $0f, $d4, $d5, $d6, $d7, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df ;; 03:58be ????????????????????????????????
    db   $10, $10, $06, $07, $06, $07, $06, $02, $02, $02, $02, $28, $28, $28, $0f, $0f, $cc, $cd, $ce, $cf, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df ;; 03:58de ????????????????????????????????
    db   $b4, $b5, $06, $07, $06, $07, $06, $4c, $4d, $24, $24, $28, $28, $28, $0f, $0f, $b0, $b0, $b2, $b3, $b4, $b5, $b4, $b5, $b8, $b9, $ba, $bb, $b4, $b5, $b4, $b5 ;; 03:58fe .....?...?.??...????????.????.??
    db   $b4, $b5, $06, $07, $06, $07, $06, $02, $02, $02, $02, $28, $28, $28, $0f, $0f, $b0, $b0, $b2, $b3, $b4, $b5, $b4, $b5, $b8, $b9, $ba, $bb, $b4, $b5, $b4, $b5 ;; 03:591e ????????????????????????????????
    db   $09, $09, $09, $09, $09, $09, $09, $09, $0e, $0f, $06, $07, $74, $75, $6e, $6f, $6c, $6d, $6e, $6f, $70, $69, $72, $73, $64, $65, $66, $67, $68, $69, $6a, $6b ;; 03:593e ????????????????????????????????
    db   $02, $02, $02, $02, $02, $02, $02, $06, $07, $04, $04, $64, $65, $0e, $0e, $0e, $04, $04, $04, $04, $05, $06, $07, $08, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e ;; 03:595e ????????????????????????????????
    db   $04, $04, $06, $07, $06, $07, $04, $04, $64, $65, $0e, $0e, $0e, $0e, $0e, $0e, $04, $04, $04, $04, $05, $06, $07, $08, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e ;; 03:597e ????????????????????????????????
    db   $11, $11, $11, $11, $11, $11, $11, $11, $11, $02, $02, $02, $02, $02, $02, $02, $74, $75, $6e, $6f, $78, $79, $7a, $7b, $11, $11, $11, $11, $11, $11, $11, $11 ;; 03:599e ????????????????????????????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10 ;; 03:59be ????????????????????????????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10 ;; 03:59de ????????????????????????????????

;Monster stat table
;offset0: Speed
;offset1: HP
;offset6: Touch damage
;offset7: Defense
;offset9: Projectile type
;offset12: XP on kill
;offset13: Gold on kill
;@data format=bbbbbbbbbbbbbb amount=98
data_03_59fe:
    db   $10, $01, $01, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;; 03:59fe ..?...?.??????
    db   $03, $ff, $01, $00, $ff, $00, $01, $ff, $00, $ff, $00, $00, $00, $00 ;; 03:5a0c ..???????.????
    db   $03, $ff, $01, $00, $ff, $00, $14, $ff, $00, $1d, $00, $00, $00, $00 ;; 03:5a1a ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $1f, $ff, $00, $19, $00, $00, $00, $00 ;; 03:5a28 ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $27, $ff, $00, $18, $00, $00, $00, $00 ;; 03:5a36 ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $23, $ff, $00, $1a, $00, $00, $00, $00 ;; 03:5a44 ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $2c, $ff, $00, $1b, $00, $00, $00, $00 ;; 03:5a52 ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $63, $ff, $00, $1c, $00, $00, $00, $00 ;; 03:5a60 ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $01, $ff, $ff, $ff, $00, $00, $00, $00 ;; 03:5a6e ??????????????
    db   $04, $ff, $01, $00, $ff, $00, $01, $ff, $ff, $ff, $00, $00, $00, $00 ;; 03:5a7c ??????????????
    db   $08, $01, $01, $00, $fb, $00, $00, $00, $ff, $ff, $00, $00, $00, $00 ;; 03:5a8a ??????????????
    db   $05, $ff, $01, $00, $00, $00, $00, $05, $ff, $ff, $00, $00, $00, $00 ;; 03:5a98 ..???????.????
    db   $01, $01, $01, $00, $ff, $00, $00, $ff, $00, $ff, $00, $00, $00, $00 ;; 03:5aa6 ..??..???.????
    db   $01, $01, $01, $00, $ff, $00, $00, $ff, $00, $ff, $00, $00, $00, $00 ;; 03:5ab4 ?????????.????
    db   $01, $01, $01, $00, $ff, $00, $00, $ff, $00, $ff, $00, $00, $00, $00 ;; 03:5ac2 ??????????????
    db   $01, $01, $01, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $00 ;; 03:5ad0 ??????????????
    db   $08, $03, $01, $01, $00, $80, $0d, $02, $03, $03, $00, $00, $02, $02 ;; 03:5ade ..?.....?.?...
    db   $06, $01, $02, $04, $00, $80, $0a, $01, $ff, $00, $00, $00, $01, $02 ;; 03:5aec ..?.....?.?...
    db   $08, $02, $02, $00, $00, $90, $08, $02, $02, $00, $00, $00, $01, $03 ;; 03:5afa ..?.....?.?...
    db   $0a, $01, $01, $04, $00, $80, $08, $01, $02, $ff, $00, $00, $01, $01 ;; 03:5b08 ..?.....?.?...
    db   $09, $05, $02, $20, $00, $90, $0e, $03, $01, $ff, $00, $01, $03, $04 ;; 03:5b16 ..?.....?.?...
    db   $0a, $04, $03, $10, $05, $80, $14, $05, $02, $ff, $00, $00, $0a, $05 ;; 03:5b24 ..????.??.?.??
    db   $08, $06, $04, $20, $00, $80, $12, $02, $03, $10, $00, $00, $04, $05 ;; 03:5b32 ?????????.????
    db   $0a, $02, $04, $04, $00, $80, $0d, $04, $02, $ff, $00, $01, $03, $04 ;; 03:5b40 ..?.....?.?...
    db   $08, $03, $04, $10, $05, $20, $0c, $03, $05, $ff, $00, $00, $05, $04 ;; 03:5b4e ??????????????
    db   $0a, $05, $04, $01, $90, $90, $14, $04, $03, $12, $00, $00, $06, $07 ;; 03:5b5c ??????????????
    db   $05, $04, $05, $04, $00, $80, $0e, $03, $03, $ff, $00, $01, $04, $05 ;; 03:5b6a ??????????????
    db   $06, $04, $06, $20, $00, $90, $15, $05, $04, $ff, $00, $01, $0a, $0a ;; 03:5b78 ??????????????
    db   $0c, $07, $08, $01, $91, $80, $15, $03, $01, $ff, $00, $00, $0f, $06 ;; 03:5b86 ??????????????
    db   $04, $05, $09, $02, $00, $b0, $11, $04, $08, $11, $00, $01, $08, $0b ;; 03:5b94 ??????????????
    db   $06, $05, $0a, $04, $80, $a0, $12, $04, $0c, $ff, $00, $00, $09, $0f ;; 03:5ba2 ??????????????
    db   $06, $05, $0a, $04, $00, $90, $13, $02, $02, $ff, $00, $02, $09, $0c ;; 03:5bb0 ??????????????
    db   $02, $08, $0a, $00, $00, $b0, $1d, $04, $0f, $ff, $00, $01, $14, $0f ;; 03:5bbe ??????????????
    db   $0c, $08, $0a, $10, $05, $00, $2d, $0c, $19, $0e, $00, $02, $1b, $12 ;; 03:5bcc ??????????????
    db   $08, $0a, $0b, $04, $00, $90, $1e, $08, $14, $03, $00, $00, $1e, $17 ;; 03:5bda ??????????????
    db   $07, $04, $0b, $20, $10, $a0, $1f, $07, $0a, $07, $00, $00, $14, $14 ;; 03:5be8 ??????????????
    db   $0a, $04, $0b, $00, $00, $90, $1b, $07, $10, $0f, $00, $01, $12, $1a ;; 03:5bf6 ??????????????
    db   $06, $0a, $13, $04, $00, $a0, $16, $0c, $12, $15, $00, $00, $12, $23 ;; 03:5c04 ??????????????
    db   $06, $06, $0f, $08, $00, $b0, $16, $08, $0a, $17, $00, $02, $02, $21 ;; 03:5c12 ??????????????
    db   $03, $08, $0f, $00, $00, $b0, $1e, $08, $08, $ff, $00, $00, $21, $14 ;; 03:5c20 ??????????????
    db   $08, $0a, $10, $04, $00, $90, $26, $0c, $0b, $02, $00, $02, $28, $23 ;; 03:5c2e ??????????????
    db   $0c, $0e, $11, $04, $00, $80, $2b, $08, $0a, $01, $00, $00, $24, $28 ;; 03:5c3c ??????????????
    db   $10, $0f, $12, $08, $05, $00, $2b, $0d, $0f, $08, $00, $04, $1e, $19 ;; 03:5c4a ??????????????
    db   $06, $0f, $13, $04, $00, $a0, $28, $0f, $10, $15, $00, $00, $30, $28 ;; 03:5c58 ??????????????
    db   $04, $11, $14, $01, $95, $20, $31, $1e, $07, $ff, $00, $02, $2d, $2d ;; 03:5c66 ??????????????
    db   $08, $0a, $15, $04, $00, $80, $3a, $0d, $0f, $ff, $00, $04, $28, $2f ;; 03:5c74 ??????????????
    db   $0a, $15, $16, $00, $08, $90, $3f, $11, $1e, $13, $00, $01, $32, $0a ;; 03:5c82 ??????????????
    db   $06, $10, $16, $04, $08, $b0, $38, $0a, $23, $ff, $00, $00, $2f, $28 ;; 03:5c90 ??????????????
    db   $06, $10, $17, $20, $08, $a0, $37, $0a, $20, $ff, $00, $00, $2a, $2f ;; 03:5c9e ??????????????
    db   $0a, $14, $15, $01, $91, $80, $3f, $14, $01, $ff, $00, $04, $20, $14 ;; 03:5cac ??????????????
    db   $0a, $12, $16, $20, $00, $90, $3c, $0a, $0f, $ff, $00, $01, $38, $28 ;; 03:5cba ??????????????
    db   $04, $19, $1a, $10, $84, $30, $46, $14, $14, $ff, $00, $02, $50, $50 ;; 03:5cc8 ??????????????
    db   $05, $1e, $1b, $00, $38, $90, $3c, $12, $1e, $0c, $00, $00, $3e, $37 ;; 03:5cd6 ??????????????
    db   $08, $19, $1c, $10, $85, $00, $39, $1e, $0a, $ff, $00, $02, $50, $3c ;; 03:5ce4 ??????????????
    db   $06, $1c, $1c, $08, $81, $d0, $34, $0a, $08, $ff, $00, $00, $78, $25 ;; 03:5cf2 ??????????????
    db   $0a, $10, $1d, $04, $00, $a0, $3c, $19, $0c, $ff, $00, $00, $58, $46 ;; 03:5d00 ??????????????
    db   $06, $10, $1e, $04, $00, $90, $39, $14, $14, $15, $00, $01, $47, $1f ;; 03:5d0e ??????????????
    db   $08, $19, $20, $00, $00, $80, $43, $14, $1a, $09, $00, $00, $53, $51 ;; 03:5d1c ??????????????
    db   $04, $12, $1e, $08, $78, $a0, $55, $0a, $13, $ff, $00, $08, $41, $1e ;; 03:5d2a ??????????????
    db   $0c, $14, $20, $08, $01, $00, $4d, $0f, $21, $0b, $00, $08, $64, $50 ;; 03:5d38 ??????????????
    db   $08, $17, $21, $04, $00, $80, $56, $12, $14, $06, $00, $01, $60, $2d ;; 03:5d46 ??????????????
    db   $04, $14, $21, $00, $78, $80, $50, $19, $27, $0b, $00, $08, $6d, $46 ;; 03:5d54 ??????????????
    db   $08, $19, $22, $00, $80, $d0, $58, $19, $10, $11, $00, $02, $82, $40 ;; 03:5d62 ??????????????
    db   $03, $ff, $23, $00, $da, $f0, $63, $1f, $30, $11, $00, $00, $a0, $0a ;; 03:5d70 ..???????.????
    db   $04, $17, $23, $08, $7c, $80, $5b, $28, $28, $0f, $00, $00, $5a, $5a ;; 03:5d7e ??????????????
    db   $08, $13, $24, $02, $08, $90, $55, $24, $28, $0c, $00, $00, $7a, $5f ;; 03:5d8c ??????????????
    db   $0c, $01, $24, $04, $3b, $b0, $72, $28, $2d, $ff, $00, $00, $3f, $3c ;; 03:5d9a ??????????????
    db   $09, $10, $24, $80, $91, $90, $62, $32, $1e, $ff, $00, $00, $5f, $64 ;; 03:5da8 ??????????????
    db   $06, $14, $25, $04, $00, $b0, $5f, $1e, $1e, $ff, $00, $01, $7c, $73 ;; 03:5db6 ??????????????
    db   $0c, $19, $26, $20, $10, $80, $66, $0f, $28, $0d, $00, $00, $69, $69 ;; 03:5dc4 ??????????????
    db   $06, $1e, $26, $04, $00, $90, $69, $31, $1e, $11, $00, $01, $7d, $78 ;; 03:5dd2 ??????????????
    db   $08, $12, $28, $00, $01, $90, $65, $19, $2a, $ff, $00, $08, $73, $78 ;; 03:5de0 ??????????????
    db   $06, $14, $28, $10, $05, $00, $4f, $28, $02, $ff, $00, $02, $a5, $96 ;; 03:5dee ??????????????
    db   $0c, $1b, $29, $00, $78, $90, $5f, $23, $32, $ff, $00, $04, $c7, $0a ;; 03:5dfc ??????????????
    db   $0a, $1d, $29, $20, $00, $90, $71, $1e, $2f, $ff, $00, $01, $88, $84 ;; 03:5e0a ??????????????
    db   $04, $1e, $2a, $04, $80, $b0, $69, $1e, $12, $ff, $00, $08, $82, $8c ;; 03:5e18 ??????????????
    db   $0a, $14, $2c, $20, $0b, $d0, $63, $3c, $14, $03, $00, $00, $78, $a5 ;; 03:5e26 ??????????????
    db   $08, $28, $2c, $40, $08, $10, $77, $28, $0a, $0c, $00, $00, $e1, $82 ;; 03:5e34 ??????????????
    db   $0c, $1b, $2d, $40, $09, $00, $82, $40, $1a, $09, $00, $02, $dc, $ae ;; 03:5e42 ??????????????
    db   $0a, $21, $2d, $10, $38, $80, $79, $28, $21, $ff, $00, $02, $b9, $b4 ;; 03:5e50 ??????????????
    db   $0a, $23, $2f, $08, $b8, $00, $78, $2d, $31, $04, $00, $00, $df, $c8 ;; 03:5e5e ??????????????
    db   $08, $19, $30, $20, $db, $d0, $6e, $43, $28, $05, $00, $00, $be, $af ;; 03:5e6c ??????????????
    db   $04, $05, $31, $08, $b8, $30, $64, $0a, $32, $ff, $00, $00, $c8, $ba ;; 03:5e7a ??????????????
    db   $08, $1e, $2e, $08, $b8, $10, $80, $1e, $23, $ff, $00, $04, $b2, $64 ;; 03:5e88 ??????????????
    db   $07, $20, $31, $08, $00, $90, $6a, $28, $14, $12, $00, $01, $96, $ca ;; 03:5e96 ??????????????
    db   $0c, $24, $32, $08, $38, $80, $64, $34, $28, $08, $00, $08, $f0, $e6 ;; 03:5ea4 ??????????????
    db   $0c, $28, $32, $04, $10, $c0, $7d, $32, $1e, $09, $00, $00, $f2, $78 ;; 03:5eb2 ??????????????
    db   $04, $1e, $32, $00, $88, $f0, $70, $28, $28, $0a, $00, $00, $e6, $0a ;; 03:5ec0 ??????????????
    db   $02, $50, $32, $00, $b8, $f0, $a0, $46, $50, $16, $00, $00, $c8, $ff ;; 03:5ece ..???????.????
    db   $06, $24, $32, $20, $3c, $10, $7b, $49, $1e, $ff, $00, $02, $a5, $c8 ;; 03:5edc ??????????????
    db   $08, $01, $01, $00, $bf, $00, $00, $00, $0a, $ff, $00, $00, $00, $02 ;; 03:5eea ??????????????
    db   $08, $0e, $0a, $20, $00, $90, $0e, $0c, $09, $03, $00, $00, $02, $0b ;; 03:5ef8 ?????????.????
    db   $0c, $19, $15, $20, $18, $00, $44, $19, $13, $0c, $00, $00, $0c, $47 ;; 03:5f06 ??????????????
    db   $06, $19, $22, $20, $08, $10, $3c, $19, $0a, $ff, $00, $00, $32, $32 ;; 03:5f14 ??????????????
    db   $05, $ff, $01, $00, $ff, $00, $00, $05, $ff, $ff, $00, $00, $00, $00 ;; 03:5f22 ..??..???.????
    db   $0a, $ff, $01, $00, $ff, $00, $00, $05, $ff, $ff, $00, $00, $00, $00 ;; 03:5f30 ..???????.????
    db   $08, $03, $01, $01, $90, $00, $0d, $03, $03, $03, $00, $00, $02, $02 ;; 03:5f3e ??????????????
    db   $0a, $ff, $01, $00, $00, $00, $00, $05, $ff, $ff, $00, $00, $00, $00 ;; 03:5f4c ..???????.????

;@npc_data amount=191
;NPC related data, format unknown, source of the index unknown.
; Offset $00: Collision flags, see wObjectRuntimeData
; Offset $01: index into the monster stat table
; Offset $02: Tile index to load
; Offset $03: Amount of tiles to load
; Offset $04: Pointer to graphics (bank 8 and up)
; Offset $10: Movement pattern, one selected at random (4 bytes)
; Offset $14: script index value (2 bytes)
data_03_5f5a:
    NPC_DATA $a9, $00, $74, $02, gfxSnowman, data_03_7b5a, unlabeled_2c93, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_003d, $00, $00 ;; 03:5f5a ????????????????????????
    NPC_DATA $d9, $01, $20, $08, gfxNpcGirl, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $05, $05, $05, $05, script_0202, $00, $00 ;; 03:5f72 ..??????....?????.....??
    NPC_DATA $d9, $02, $20, $08, data_09_5b00, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $06, $06, $06, $06, script_0203, $00, $00 ;; 03:5f8a ????????????????????????
    NPC_DATA $d9, $03, $20, $08, data_09_5400, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $06, $06, $06, $06, script_0204, $00, $00 ;; 03:5fa2 ????????????????????????
    NPC_DATA $d9, $04, $20, $08, data_09_5200, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $06, $06, $06, $06, script_0205, $00, $00 ;; 03:5fba ????????????????????????
    NPC_DATA $d9, $05, $20, $08, data_09_5500, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $06, $06, $06, $06, script_0206, $00, $00 ;; 03:5fd2 ????????????????????????
    NPC_DATA $d9, $06, $20, $08, data_09_5600, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $06, $06, $06, $06, script_01ff, $00, $00 ;; 03:5fea ????????????????????????
    NPC_DATA $d9, $07, $20, $08, data_09_5700, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $06, $06, $06, $06, script_0200, $00, $00 ;; 03:6002 ????????????????????????
    NPC_DATA $d9, $08, $20, $08, data_09_5900, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $05, $05, $05, $05, script_0470, $00, $00 ;; 03:601a ????????????????????????
    NPC_DATA $d9, $09, $20, $08, data_09_5800, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $05, $05, $05, $05, script_0470, $00, $00 ;; 03:6032 ????????????????????????
    NPC_DATA $91, $25, $50, $08, gfxEnemyWerewolf, data_03_7b5a, data_03_7cfe, $00, $01, $00, $00, $01, $00, $0f, $05, $05, $05, script_003d, $00, $00 ;; 03:604a ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01f1, $00, $00 ;; 03:6062 ????????????????????????
    NPC_DATA $87, $0c, $78, $02, gfxChest, data_03_7b5a, unlabeled_2cab, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_000b, $00, $00 ;; 03:607a ............????.?....??
    NPC_DATA $87, $0d, $78, $02, gfxChest, data_03_7b5a, unlabeled_2cab, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_000f, $00, $00 ;; 03:6092 ?.......????????????????
    NPC_DATA $87, $0e, $78, $02, gfxChest, data_03_7b5a, unlabeled_2cab, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0013, $00, $00 ;; 03:60aa ????????????????????????
    NPC_DATA $a9, $00, $7c, $02, gfxChest, data_03_7b56, unlabeled_2cc3, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_003d, $00, $00 ;; 03:60c2 ..??????....??????..????
    NPC_DATA $91, $10, $40, $04, gfxEnemyChibidevil, data_03_7b5a, data_03_7b72, $00, $01, $00, $00, $00, $00, $0d, $0e, $0d, $0d, script_003d, $38, $04 ;; 03:60da ............??.?........
    NPC_DATA $91, $11, $50, $06, gfxEnemyRabite, data_03_7b5a, data_03_7b96, $00, $01, $02, $00, $00, $00, $0f, $10, $10, $10, script_003d, $00, $00 ;; 03:60f2 .............???.?....??
    NPC_DATA $91, $12, $40, $08, gfxEnemyGoblin, data_03_7b5a, data_03_7cb6, $00, $01, $00, $00, $00, $00, $02, $02, $03, $03, script_003d, $38, $04 ;; 03:610a ............??.?.?......
    NPC_DATA $91, $13, $50, $04, gfxEnemyMyconid, data_03_7b5a, data_03_7bde, $00, $01, $01, $00, $00, $00, $02, $02, $02, $02, script_003d, $00, $00 ;; 03:6122 ............????.?......
    NPC_DATA $93, $14, $40, $04, gfxEnemyGrell, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $12, $12, $0b, $0b, script_003d, $00, $00 ;; 03:613a ............????......??
    NPC_DATA $91, $15, $50, $04, gfxEnemyMudman, data_03_7b5a, data_03_7b96, $01, $01, $00, $00, $00, $00, $16, $16, $16, $16, script_003d, $4b, $04 ;; 03:6152 ............?.??.?..????
    NPC_DATA $91, $16, $60, $08, gfxEnemyLizardman, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $02, $02, $03, $03, script_003d, $3a, $04 ;; 03:616a ?.......????????????????
    NPC_DATA $91, $17, $50, $04, gfxEnemyDeathFlower, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $01, $00, $0d, $00, $0d, $0d, script_003d, $3c, $04 ;; 03:6182 ............????.?....??
    NPC_DATA $91, $18, $40, $06, gfxEnemyGreenSlime, data_03_7b5a, data_03_7b72, $00, $01, $00, $00, $02, $00, $0f, $0d, $10, $10, script_003d, $43, $04 ;; 03:619a ????????????????????????
    NPC_DATA $91, $19, $50, $08, gfxEnemySkeleton, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $03, $02, $03, $03, script_003d, $42, $04 ;; 03:61b2 ????????????????????????
    NPC_DATA $91, $1a, $40, $04, gfxEnemyRoper, data_03_7b5a, data_03_7d46, $01, $02, $00, $00, $00, $00, $16, $16, $16, $16, script_003d, $00, $00 ;; 03:61ca ????????????????????????
    NPC_DATA $91, $1b, $50, $04, gfxEnemyLandLeech, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $0d, $0d, $07, $08, script_003d, $43, $04 ;; 03:61e2 ????????????????????????
    NPC_DATA $91, $1c, $40, $06, gfxEnemyZombie, data_03_7b5a, data_03_7c4a, $00, $01, $01, $00, $00, $00, $05, $02, $05, $05, script_003d, $39, $04 ;; 03:61fa ????????????????????????
    NPC_DATA $91, $1d, $50, $08, gfxEnemyWarerat, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $02, $02, $07, $08, script_003d, $3a, $04 ;; 03:6212 ????????????????????????
    NPC_DATA $91, $1e, $40, $06, gfxEnemyPumpkinBomb, data_03_7b5a, data_03_7c6e, $00, $01, $02, $02, $00, $00, $18, $18, $18, $18, script_003d, $53, $04 ;; 03:622a ????????????????????????
    NPC_DATA $91, $1f, $50, $06, gfxEnemyBloodOwl, data_03_7b5a, data_03_7b96, $01, $02, $00, $00, $00, $00, $0b, $0b, $0d, $0d, script_003d, $47, $04 ;; 03:6242 ????????????????????????
    NPC_DATA $93, $20, $40, $04, gfxEnemyKillerBee, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $0b, $0b, $0b, $0b, script_003d, $00, $00 ;; 03:625a ????????????????????????
    NPC_DATA $93, $21, $50, $06, gfxEnemyGasCloud, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $02, $00, $01, $03, $12, $12, script_003d, $40, $04 ;; 03:6272 ????????????????????????
    NPC_DATA $91, $22, $40, $08, gfxEnemyOrc, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $02, $03, $03, $03, script_003d, $45, $04 ;; 03:628a ????????????????????????
    NPC_DATA $91, $23, $50, $06, gfxEnemyDeathCrab, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $02, $00, $0e, $0d, $0e, $0e, script_003d, $59, $04 ;; 03:62a2 ????????????????????????
    NPC_DATA $91, $24, $40, $08, gfxEnemyTarantula, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $02, $00, $03, $02, $03, $03, script_003d, $00, $00 ;; 03:62ba ????????????????????????
    NPC_DATA $81, $0a, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01fa, $00, $00 ;; 03:62d2 ????????????????????????
    NPC_DATA $81, $0a, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01fb, $00, $00 ;; 03:62ea ????????????????????????
    NPC_DATA $81, $0a, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01fc, $00, $00 ;; 03:6302 ????????????????????????
    NPC_DATA $81, $0a, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01fd, $00, $00 ;; 03:631a ????????????????????????
    NPC_DATA $91, $26, $60, $06, gfxEnemyMimic, data_03_7b5a, data_03_7bba, $00, $01, $00, $00, $02, $00, $1b, $1b, $0f, $0f, script_003d, $45, $04 ;; 03:6332 ????????????????????????
    NPC_DATA $91, $27, $50, $04, gfxEnemyRuster, data_03_7b5a, data_03_7b96, $00, $00, $01, $00, $00, $00, $0f, $10, $0f, $0f, script_003d, $00, $00 ;; 03:634a ????????????????????????
    NPC_DATA $91, $28, $50, $0a, gfxEnemyPorcupine, data_03_7b5a, data_03_7dfa, $00, $01, $02, $00, $02, $00, $02, $03, $03, $03, script_003d, $45, $04 ;; 03:6362 ????????????????????????
    NPC_DATA $91, $29, $40, $06, gfxEnemyMandrake, data_03_7b5a, data_03_7b72, $00, $01, $02, $02, $02, $02, $01, $00, $03, $03, script_003d, $00, $00 ;; 03:637a ????????????????????????
    NPC_DATA $91, $2a, $40, $08, gfxEnemyEyeSpy, data_03_7b5a, data_03_7d22, $00, $01, $01, $02, $02, $00, $00, $00, $01, $01, script_003d, $4b, $04 ;; 03:6392 ????????????????????????
    NPC_DATA $91, $2b, $50, $08, gfxEnemyWerewolf, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $11, $05, $03, $03, script_003d, $3a, $04 ;; 03:63aa ????????????????????????
    NPC_DATA $93, $2c, $60, $04, gfxEnemyGhost, data_03_7b5a, data_03_7bba, $00, $01, $01, $00, $00, $00, $0b, $12, $12, $12, script_003d, $39, $04 ;; 03:63c2 ????????????????????????
    NPC_DATA $91, $2d, $40, $04, gfxEnemyBasilisk, data_03_7b5a, data_03_7b72, $00, $01, $01, $01, $00, $00, $0b, $0b, $0b, $0b, script_003d, $55, $04 ;; 03:63da ????????????????????????
    NPC_DATA $91, $2e, $50, $06, gfxEnemyDeathScorpion, data_03_7b5a, data_03_7b96, $00, $01, $01, $01, $02, $00, $01, $02, $01, $01, script_003d, $00, $00 ;; 03:63f2 ????????????????????????
    NPC_DATA $91, $2f, $60, $08, gfxEnemySaurus, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $02, $02, $02, $02, script_003d, $44, $04 ;; 03:640a ????????????????????????
    NPC_DATA $91, $31, $40, $04, gfxEnemyMummy, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $02, $02, $05, $05, script_003d, $57, $04 ;; 03:6422 ????????????????????????
    NPC_DATA $91, $30, $50, $0a, gfxEnemyPakkunLizard, data_03_7b5a, data_03_7dfa, $00, $01, $01, $02, $02, $00, $05, $02, $02, $02, script_003d, $00, $00 ;; 03:643a ????????????????????????
    NPC_DATA $91, $32, $50, $08, gfxEnemyCobra, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $02, $02, $0d, $0d, script_003d, $00, $00 ;; 03:6452 ????????????????????????
    NPC_DATA $91, $33, $60, $06, gfxEnemyShadowZero, data_03_7b5a, data_03_7d6a, $00, $01, $01, $00, $00, $00, $16, $16, $07, $08, script_003d, $39, $04 ;; 03:646a ????????????????????????
    NPC_DATA $91, $34, $58, $0c, gfxEnemyMagician, data_03_7b5a, data_03_7e1e, $00, $01, $01, $02, $02, $00, $03, $13, $13, $13, script_003d, $58, $04 ;; 03:6482 ????????????????????????
    NPC_DATA $91, $35, $50, $04, gfxEnemyRedWisp, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $0d, $0d, $14, $14, script_003d, $3e, $04 ;; 03:649a ????????????????????????
    NPC_DATA $91, $36, $60, $08, gfxEnemyGargoyle, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $00, $00, $07, $08, script_003d, $47, $04 ;; 03:64b2 ????????????????????????
    NPC_DATA $91, $37, $40, $08, gfxEnemyApe, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $02, $02, $02, $02, script_003d, $00, $00 ;; 03:64ca ????????????????????????
    NPC_DATA $91, $38, $50, $08, gfxEnemyMolebear, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $02, $02, $03, $03, script_003d, $00, $00 ;; 03:64e2 ????????????????????????
    NPC_DATA $91, $39, $40, $08, gfxEnemyOrge, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $03, $03, $03, $03, script_003d, $3e, $04 ;; 03:64fa ????????????????????????
    NPC_DATA $91, $3a, $50, $04, gfxEnemyBarnaclejack, data_03_7b5a, data_03_7b96, $01, $00, $00, $00, $00, $00, $0f, $10, $0f, $0f, script_003d, $55, $04 ;; 03:6512 ????????????????????????
    NPC_DATA $91, $3b, $40, $08, gfxEnemyPhantasm, data_03_7b5a, data_03_7dd6, $00, $01, $01, $01, $00, $00, $0c, $0c, $12, $12, script_003d, $49, $04 ;; 03:652a ????????????????????????
    NPC_DATA $91, $3c, $50, $08, gfxEnemyMinotaur, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $03, $02, $03, $03, script_003d, $3a, $04 ;; 03:6542 ????????????????????????
    NPC_DATA $91, $3d, $40, $0c, gfxEnemyWizard, data_03_7b5a, data_03_7e42, $00, $01, $01, $02, $02, $00, $13, $12, $14, $14, script_003d, $49, $04 ;; 03:655a ????????????????????????
    NPC_DATA $91, $3e, $58, $0c, gfxEnemyDarkStalker, data_03_7b5a, data_03_7e8a, $00, $01, $01, $00, $00, $00, $03, $02, $03, $03, script_003d, $3e, $04 ;; 03:6572 ????????????????????????
    NPC_DATA $91, $3f, $40, $0c, gfxEnemyDarkLord, data_03_7b5a, data_03_7eae, $00, $01, $01, $00, $00, $00, $06, $06, $07, $08, script_003d, $00, $00 ;; 03:658a ............????????????
    NPC_DATA $91, $40, $40, $04, gfxEnemyMegaXorn, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $03, $02, $01, $01, script_003d, $67, $04 ;; 03:65a2 ????????????????????????
    NPC_DATA $93, $41, $50, $04, gfxEnemyDragonfly, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $0c, $0b, $0b, $0b, script_003d, $57, $04 ;; 03:65ba ????????????????????????
    NPC_DATA $91, $42, $60, $04, gfxEnemyBulette, data_03_7b5a, data_03_7bba, $00, $01, $01, $00, $00, $00, $02, $02, $07, $08, script_003d, $5a, $04 ;; 03:65d2 ????????????????????????
    NPC_DATA $91, $43, $40, $04, gfxEnemySnowman, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $0d, $0d, $0d, $0d, script_003d, $00, $00 ;; 03:65ea ????????????????????????
    NPC_DATA $91, $44, $50, $04, gfxEnemySabercat, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $10, $02, $02, $02, script_003d, $00, $00 ;; 03:6602 ????????????????????????
    NPC_DATA $91, $45, $60, $04, gfxEnemyWalrus, data_03_7b5a, data_03_7bba, $00, $01, $01, $00, $00, $00, $03, $02, $10, $10, script_003d, $58, $04 ;; 03:661a ????????????????????????
    NPC_DATA $91, $46, $40, $08, gfxEnemyDuckSolder, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $02, $02, $01, $01, script_003d, $00, $00 ;; 03:6632 ????????????????????????
    NPC_DATA $91, $47, $50, $04, gfxEnemyPoto, data_03_7b5a, data_03_7b96, $00, $00, $01, $01, $00, $00, $0f, $10, $10, $10, script_003d, $49, $04 ;; 03:664a ????????????????????????
    NPC_DATA $91, $48, $40, $06, gfxEnemyAirElemental, data_03_7b5a, data_03_7c92, $00, $01, $01, $00, $00, $00, $0b, $0b, $07, $08, script_003d, $00, $00 ;; 03:6662 ????????????????????????
    NPC_DATA $93, $49, $50, $08, gfxEnemyBeholder, data_03_7b5a, data_03_7cfe, $00, $01, $01, $02, $00, $00, $0c, $0b, $14, $14, script_003d, $00, $00 ;; 03:667a ????????????????????????
    NPC_DATA $93, $4a, $40, $04, gfxEnemyMantaRay, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $0d, $0d, $0d, $0d, script_003d, $52, $04 ;; 03:6692 ????????????????????????
    NPC_DATA $91, $4b, $50, $04, gfxEnemyGriffinHand, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $0f, $10, $0f, $0f, script_003d, $56, $04 ;; 03:66aa ????????????????????????
    NPC_DATA $91, $4c, $40, $08, gfxEnemyTortoiseKnight, data_03_7b5a, data_03_7cb6, $00, $01, $01, $02, $00, $01, $03, $02, $03, $03, script_003d, $3e, $04 ;; 03:66c2 ????????????????????????
    NPC_DATA $91, $4d, $40, $04, gfxEnemyFireMoth, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $0b, $0b, $0b, $0b, script_003d, $00, $00 ;; 03:66da ????????????????????????
    NPC_DATA $91, $4e, $50, $06, gfxEnemyEarthElemental, data_03_7b5a, data_03_7d8e, $00, $01, $01, $00, $00, $00, $16, $16, $16, $16, script_003d, $49, $04 ;; 03:66f2 ????????????????????????
    NPC_DATA $91, $4f, $40, $04, gfxEnemyDenden, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $0d, $0d, $0d, $0d, script_003d, $3e, $04 ;; 03:670a ????????????????????????
    NPC_DATA $91, $50, $50, $06, gfxEnemyDoppelMirror, data_03_7b5a, data_03_7db2, $00, $01, $01, $00, $00, $00, $12, $12, $13, $13, script_003d, $4a, $04 ;; 03:6722 ????????????????????????
    NPC_DATA $91, $51, $60, $04, gfxEnemyGuardian, data_03_7b5a, data_03_7c02, $00, $01, $01, $00, $00, $00, $02, $02, $03, $03, script_003d, $52, $04 ;; 03:673a ????????????????????????
    NPC_DATA $91, $52, $40, $04, gfxEnemyEvilSword, data_03_7b5a, data_03_7c26, $00, $01, $01, $00, $00, $00, $02, $02, $07, $08, script_003d, $00, $00 ;; 03:6752 ????????????????????????
    NPC_DATA $91, $53, $50, $0c, gfxEnemyDeathGauntlet, data_03_7b5a, data_03_7e66, $00, $01, $01, $00, $00, $00, $02, $02, $12, $12, script_003d, $49, $04 ;; 03:676a ????????????????????????
    NPC_DATA $91, $54, $40, $08, gfxEnemyGarasha, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $02, $02, $03, $03, script_003d, $3e, $04 ;; 03:6782 ????????????????????????
    NPC_DATA $91, $55, $50, $04, gfxEnemyWonder, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $03, $03, $12, $12, script_003d, $00, $00 ;; 03:679a ????????????????????????
    NPC_DATA $91, $56, $40, $04, gfxEnemyMammoth, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $03, $02, $0d, $0d, script_003d, $4d, $04 ;; 03:67b2 ????????????????????????
    NPC_DATA $91, $57, $50, $08, gfxEnemyNinja, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $15, $02, $09, $0a, script_003d, $4e, $04 ;; 03:67ca ????????????????????????
    NPC_DATA $91, $58, $58, $0c, gfxEnemyJulius, data_03_7b5a, data_03_7e1e, $00, $01, $01, $00, $02, $00, $0c, $13, $15, $15, script_003d, $00, $00 ;; 03:67e2 ...........?????????????
    NPC_DATA $91, $59, $40, $04, gfxEnemyDemon, data_03_7b5a, data_03_7b72, $00, $01, $01, $00, $00, $00, $14, $14, $14, $14, script_003d, $4f, $04 ;; 03:67fa ????????????????????????
    NPC_DATA $91, $5a, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_01e5, $00, $00 ;; 03:6812 ????????????????????????
    NPC_DATA $95, $5b, $60, $08, gfxEnemySahagin, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $06, $13, $06, $06, script_003d, $00, $00 ;; 03:682a ?.......????????????????
    NPC_DATA $95, $5c, $60, $06, gfxEnemySeaDragon, data_03_7b5a, data_03_7bba, $00, $01, $01, $02, $02, $02, $01, $16, $17, $17, script_003d, $00, $00 ;; 03:6842 ????????????????????????
    NPC_DATA $93, $5d, $60, $08, gfxEnemyGalFish, data_03_7b5a, data_03_7cda, $00, $01, $00, $00, $00, $00, $05, $05, $07, $08, script_003d, $00, $00 ;; 03:685a ????????????????????????
    NPC_DATA $81, $5e, $60, $02, data_09_6d80, data_03_7b5a, data_03_7f86, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0256, $00, $00 ;; 03:6872 ............?????.....??
    NPC_DATA $81, $5e, $40, $08, data_09_5b00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $02, $00, $04, $04, $04, $04, script_0259, $00, $00 ;; 03:688a ????????????????????????
    NPC_DATA $81, $5f, $60, $08, data_09_5500, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0261, $00, $00 ;; 03:68a2 ............?????.?...??
    NPC_DATA $91, $60, $40, $02, data_09_6ec0, data_03_7b5a, data_03_7b72, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0226, $00, $00 ;; 03:68ba ????????????????????????
    NPC_DATA $81, $5e, $5c, $02, data_09_6d40, data_03_7b5a, data_03_7ed2, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0228, $00, $00 ;; 03:68d2 ????????????????????????
    NPC_DATA $81, $01, $20, $08, gfxNpcGirl, data_03_7b5a, data_03_7f62, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0258, $00, $00 ;; 03:68ea ............?????..?????
    NPC_DATA $81, $5e, $40, $02, data_09_6e40, data_03_7b5a, data_03_7ef6, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0207, $00, $00 ;; 03:6902 ????????????????????????
    NPC_DATA $81, $5e, $5c, $02, data_09_6e80, data_03_7b5a, data_03_7ed2, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01fe, $00, $00 ;; 03:691a ????????????????????????
    NPC_DATA $81, $5f, $60, $08, data_09_5200, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0257, $00, $00 ;; 03:6932 ............?????..?..??
    NPC_DATA $81, $5e, $40, $08, data_09_5200, data_03_7b5a, data_03_7ef6, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0257, $00, $00 ;; 03:694a ????????????????????????
    NPC_DATA $81, $5f, $40, $08, data_09_6900, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_01e0, $00, $00 ;; 03:6962 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01e3, $00, $00 ;; 03:697a ????????????????????????
    NPC_DATA $81, $5f, $60, $08, data_09_5a00, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_025a, $00, $00 ;; 03:6992 ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01e6, $00, $00 ;; 03:69aa ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5400, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_01f8, $00, $00 ;; 03:69c2 ????????????????????????
    NPC_DATA $81, $5e, $5c, $02, data_09_6c80, data_03_7b5a, data_03_7ed2, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_01f9, $00, $00 ;; 03:69da ????????????????????????
    NPC_DATA $81, $5e, $40, $04, data_09_6dc0, data_03_7b5a, data_03_7d46, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0217, $00, $00 ;; 03:69f2 ????????????????????????
    NPC_DATA $81, $5f, $40, $08, data_09_5d00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0218, $00, $00 ;; 03:6a0a ????????????????????????
    NPC_DATA $81, $5e, $5c, $02, data_09_6f00, data_03_7b5a, data_03_7ed2, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0222, $00, $00 ;; 03:6a22 ????????????????????????
    NPC_DATA $81, $5f, $50, $04, data_09_6b80, data_03_7b5a, data_03_7b96, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0219, $00, $00 ;; 03:6a3a ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5c00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_022f, $00, $00 ;; 03:6a52 ????????????????????????
    NPC_DATA $81, $5f, $50, $08, data_09_6000, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0231, $00, $00 ;; 03:6a6a ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5700, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_023d, $00, $00 ;; 03:6a82 ????????????????????????
    NPC_DATA $81, $5f, $60, $08, data_09_6500, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0250, $00, $00 ;; 03:6a9a ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5100, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0265, $00, $00 ;; 03:6ab2 ............?????.....??
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_025f, $00, $00 ;; 03:6aca ..........??????????..??
    NPC_DATA $81, $61, $50, $08, data_09_6000, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0266, $00, $00 ;; 03:6ae2 ............?????.....??
    NPC_DATA $81, $0b, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0267, $00, $00 ;; 03:6afa ............?????.....??
    NPC_DATA $81, $0b, $40, $08, data_09_6100, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0268, $00, $00 ;; 03:6b12 ............?????.....??
    NPC_DATA $81, $61, $50, $08, data_09_6000, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0269, $00, $00 ;; 03:6b2a ............?????.....??
    NPC_DATA $81, $61, $60, $08, data_09_6400, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_026a, $00, $00 ;; 03:6b42 ............?????.?...??
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01e1, $00, $00 ;; 03:6b5a ????????????????????????
    NPC_DATA $81, $0b, $60, $08, data_09_6600, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01e2, $00, $00 ;; 03:6b72 ????????????????????????
    NPC_DATA $81, $61, $40, $08, data_09_6000, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01e9, $00, $00 ;; 03:6b8a ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6100, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01ea, $00, $00 ;; 03:6ba2 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01eb, $00, $00 ;; 03:6bba ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6200, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01ec, $00, $00 ;; 03:6bd2 ????????????????????????
    NPC_DATA $81, $61, $60, $08, data_09_6400, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01ed, $00, $00 ;; 03:6bea ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6700, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01f2, $00, $00 ;; 03:6c02 ????????????????????????
    NPC_DATA $81, $61, $40, $08, data_09_6700, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01f3, $00, $00 ;; 03:6c1a ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6700, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01f4, $00, $00 ;; 03:6c32 ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6700, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01f5, $00, $00 ;; 03:6c4a ????????????????????????
    NPC_DATA $81, $61, $50, $08, data_09_6700, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_01f6, $00, $00 ;; 03:6c62 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0209, $00, $00 ;; 03:6c7a ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_020b, $00, $00 ;; 03:6c92 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_020d, $00, $00 ;; 03:6caa ????????????????????????
    NPC_DATA $81, $0b, $60, $08, data_09_5f00, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_020e, $00, $00 ;; 03:6cc2 ????????????????????????
    NPC_DATA $81, $61, $40, $08, data_09_6400, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0211, $00, $00 ;; 03:6cda ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6100, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0212, $00, $00 ;; 03:6cf2 ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6600, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0213, $00, $00 ;; 03:6d0a ????????????????????????
    NPC_DATA $81, $61, $50, $08, data_09_6400, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0214, $00, $00 ;; 03:6d22 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6000, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0215, $00, $00 ;; 03:6d3a ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6200, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0216, $00, $00 ;; 03:6d52 ????????????????????????
    NPC_DATA $81, $0b, $60, $08, data_09_5e00, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021a, $00, $00 ;; 03:6d6a ????????????????????????
    NPC_DATA $81, $61, $40, $08, data_09_6400, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021b, $00, $00 ;; 03:6d82 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6200, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021c, $00, $00 ;; 03:6d9a ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6100, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021d, $00, $00 ;; 03:6db2 ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_6700, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021e, $00, $00 ;; 03:6dca ????????????????????????
    NPC_DATA $81, $0b, $60, $08, data_09_6300, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_021f, $00, $00 ;; 03:6de2 ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6000, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0220, $00, $00 ;; 03:6dfa ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0221, $00, $00 ;; 03:6e12 ????????????????????????
    NPC_DATA $81, $61, $40, $08, data_09_6400, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0230, $00, $00 ;; 03:6e2a ????????????????????????
    NPC_DATA $81, $0b, $50, $08, data_09_5f00, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0233, $00, $00 ;; 03:6e42 ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0234, $00, $00 ;; 03:6e5a ????????????????????????
    NPC_DATA $81, $61, $50, $08, data_09_6000, data_03_7b5a, data_03_7cfe, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0235, $00, $00 ;; 03:6e72 ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0236, $00, $00 ;; 03:6e8a ????????????????????????
    NPC_DATA $81, $0b, $40, $08, data_09_6100, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0237, $00, $00 ;; 03:6ea2 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_023e, $00, $00 ;; 03:6eba ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_023f, $00, $00 ;; 03:6ed2 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0240, $00, $00 ;; 03:6eea ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0241, $00, $00 ;; 03:6f02 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0242, $00, $00 ;; 03:6f1a ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0243, $00, $00 ;; 03:6f32 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0244, $00, $00 ;; 03:6f4a ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0245, $00, $00 ;; 03:6f62 ????????????????????????
    NPC_DATA $81, $5e, $50, $08, data_09_5f00, data_03_7b5a, data_03_7ed2, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, script_0251, $00, $00 ;; 03:6f7a ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0252, $00, $00 ;; 03:6f92 ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_5f00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_0253, $00, $00 ;; 03:6faa ????????????????????????
    NPC_DATA $81, $5f, $40, $08, data_09_6300, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_025d, $00, $00 ;; 03:6fc2 ............?????..?????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0260, $00, $00 ;; 03:6fda ............?????..?..??
    NPC_DATA $81, $5f, $40, $08, gfxNpcGirl, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_0258, $00, $00 ;; 03:6ff2 ????????????????????????
    NPC_DATA $81, $5e, $6e, $01, data_09_6fc0, data_03_7b5a, data_03_7f3e, $00, $01, $01, $00, $00, $00, $00, $00, $00, $00, script_025e, $00, $00 ;; 03:700a ............??????.?..??
    NPC_DATA $81, $02, $20, $08, data_09_5b00, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $02, $02, $02, $02, script_0259, $00, $00 ;; 03:7022 ????????????????????????
    NPC_DATA $81, $04, $20, $08, data_09_5200, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $02, $02, $02, $02, script_0257, $00, $00 ;; 03:703a ????????????????????????
    NPC_DATA $81, $05, $20, $08, data_09_5500, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $02, $02, $02, $02, script_003d, $00, $00 ;; 03:7052 ????????????????????????
    NPC_DATA $81, $06, $20, $08, data_09_5600, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $02, $02, $02, $02, script_003d, $00, $00 ;; 03:706a ????????????????????????
    NPC_DATA $81, $07, $20, $08, data_09_5700, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $01, $00, $02, $02, $02, $02, script_003d, $00, $00 ;; 03:7082 ????????????????????????
    NPC_DATA $81, $08, $20, $08, data_09_5900, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $02, $02, $02, $02, script_0472, $00, $00 ;; 03:709a ????????????????????????
    NPC_DATA $81, $09, $50, $08, data_09_5800, data_03_7b5a, data_03_7cfe, $00, $01, $00, $01, $00, $00, $00, $00, $00, $00, script_0472, $00, $00 ;; 03:70b2 ????????????????????????
    NPC_DATA $81, $09, $20, $08, data_09_5800, data_03_7b5a, data_03_7f62, $00, $01, $01, $01, $00, $00, $02, $02, $02, $02, script_0472, $00, $00 ;; 03:70ca ????????????????????????
    NPC_DATA $81, $5e, $50, $02, data_09_6b40, data_03_7b5a, data_03_7b96, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, script_0258, $00, $00 ;; 03:70e2 ????????????????????????
    NPC_DATA $81, $5f, $40, $04, data_09_6f40, data_03_7b5a, data_03_7d46, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, script_003d, $00, $00 ;; 03:70fa ????????????????????????
    NPC_DATA $81, $5e, $40, $08, data_09_6a00, data_03_7b5a, data_03_7cb6, $00, $01, $01, $00, $00, $00, $04, $04, $04, $04, script_025d, $00, $00 ;; 03:7112 ????????????????????????
    NPC_DATA $91, $3f, $60, $08, data_09_5300, data_03_7b5a, data_03_7cda, $00, $01, $01, $00, $00, $00, $06, $03, $07, $08, script_003d, $00, $00 ;; 03:712a ????????????????????????

;@data amount=109 format=ppp
; Size of the table not sure
; NPC spawn data, selected a row with sSET_NPC_TYPES, and spawn actual NPCs with sSPAWN_NPC to select the column to spawn.
NPCSpawnPointers:
    dw   data_03_7440, data_03_7448, data_03_7518      ;; 03:7142 ......
    dw   data_03_7450, data_03_7458, data_03_7458      ;; 03:7148 ......
    dw   data_03_7460, data_03_7468, data_03_7470      ;; 03:714e ......
    dw   data_03_7460, data_03_7480, data_03_7478      ;; 03:7154 ......
    dw   data_03_7488, data_03_7490, data_03_750e      ;; 03:715a ??????
    dw   data_03_7498, data_03_74a0, data_03_74fa      ;; 03:7160 ??????
    dw   data_03_74a8, data_03_74b0, data_03_7504      ;; 03:7166 ??????
    dw   data_03_74b8, data_03_74c0, data_03_74f0      ;; 03:716c ??????
    dw   data_03_74c8, data_03_74d0, data_03_7518      ;; 03:7172 ??????
    dw   data_03_74d8, data_03_74e0, data_03_74e0      ;; 03:7178 ??????
    dw   data_03_74e8, data_03_7542, data_03_753a      ;; 03:717e ??????
    dw   data_03_7552, data_03_7552, data_03_754a      ;; 03:7184 ??????
    dw   data_03_755a, data_03_7562, data_03_756a      ;; 03:718a ??????
    dw   data_03_7572, data_03_757a, data_03_7582      ;; 03:7190 ??????
    dw   data_03_758a, data_03_758a, data_03_7592      ;; 03:7196 ??????
    dw   data_03_758a, data_03_759a, data_03_75a2      ;; 03:719c ??????
    dw   data_03_758a, data_03_75b2, data_03_75ba      ;; 03:71a2 ??????
    dw   data_03_74a8, data_03_74a8, data_03_75aa      ;; 03:71a8 ??????
    dw   data_03_75c2, data_03_75ca, data_03_7528      ;; 03:71ae ??????
    dw   data_03_75d2, data_03_75da, data_03_7528      ;; 03:71b4 ??????
    dw   data_03_75e2, data_03_75ea, data_03_75ba      ;; 03:71ba ??????
    dw   data_03_75e2, data_03_75e2, data_03_750e      ;; 03:71c0 ??????
    dw   data_03_74f0, data_03_75f2, data_03_75fa      ;; 03:71c6 ??????
    dw   data_03_7602, data_03_760c, data_03_760c      ;; 03:71cc ??????
    dw   data_03_7616, data_03_761e, data_03_7626      ;; 03:71d2 ??????
    dw   data_03_762e, data_03_7636, data_03_763e      ;; 03:71d8 ??????
    dw   data_03_7646, data_03_764e, data_03_763e      ;; 03:71de ??????
    dw   data_03_7656, data_03_765e, data_03_763e      ;; 03:71e4 ??????
    dw   data_03_7666, data_03_766e, data_03_7520      ;; 03:71ea ??????
    dw   data_03_7676, data_03_766e, data_03_7520      ;; 03:71f0 ??????
    dw   data_03_767e, data_03_7686, data_03_75ba      ;; 03:71f6 ??????
    dw   data_03_768e, data_03_7696, data_03_769e      ;; 03:71fc ??????
    dw   data_03_7504, data_03_76a6, data_03_76ae      ;; 03:7202 ??????
    dw   data_03_76b6, data_03_76be, data_03_769e      ;; 03:7208 ??????
    dw   data_03_76c6, data_03_76ce, data_03_769e      ;; 03:720e ??????
    dw   data_03_76e0, data_03_76e0, data_03_76d6      ;; 03:7214 ??????
    dw   data_03_7738, data_03_7738, data_03_76e8      ;; 03:721a ......
    dw   data_03_7892, data_03_7892, data_03_7756      ;; 03:7220 ......
    dw   data_03_779a, data_03_771a, data_03_771a      ;; 03:7226 ??????
    dw   data_03_7742, data_03_76f2, data_03_76f2      ;; 03:722c ......
    dw   data_03_777c, data_03_76f2, data_03_7b02      ;; 03:7232 ??????
    dw   data_03_774c, data_03_774c, data_03_76e8      ;; 03:7238 ......
    dw   data_03_7a8e, data_03_7458, data_03_76e8      ;; 03:723e ......
    dw   data_03_78a2, data_03_789a, data_03_78ba      ;; 03:7244 ......
    dw   data_03_78aa, data_03_78b2, data_03_77b8      ;; 03:724a ......
    dw   data_03_7908, data_03_7910, data_03_7910      ;; 03:7250 ??????
    dw   data_03_7900, data_03_7900, data_03_7900      ;; 03:7256 ??????
    dw   data_03_7918, data_03_7920, data_03_7920      ;; 03:725c ??????
    dw   data_03_7808, data_03_7826, data_03_76e8      ;; 03:7262 ??????
    dw   data_03_77d6, data_03_78c2, data_03_78ca      ;; 03:7268 ??????
    dw   data_03_77ea, data_03_7a8e, data_03_7a8e      ;; 03:726e ??????
    dw   data_03_78d2, data_03_78ee, data_03_78f8      ;; 03:7274 ??????
    dw   data_03_78dc, data_03_78e6, data_03_7530      ;; 03:727a ??????
    dw   data_03_77fe, data_03_7530, data_03_7530      ;; 03:7280 ??????
    dw   data_03_7530, data_03_7530, data_03_7530      ;; 03:7286 ??????
    dw   data_03_7706, data_03_77a4, data_03_77f4      ;; 03:728c ??????
    dw   data_03_7948, data_03_7950, data_03_7530      ;; 03:7292 ??????
    dw   data_03_7958, data_03_7960, data_03_7530      ;; 03:7298 ??????
    dw   data_03_7970, data_03_7968, data_03_7530      ;; 03:729e ??????
    dw   data_03_7980, data_03_7988, data_03_7978      ;; 03:72a4 ??????
    dw   data_03_7990, data_03_7998, data_03_79a0      ;; 03:72aa ??????
    dw   data_03_79a8, data_03_79b0, data_03_79b0      ;; 03:72b0 ??????
    dw   data_03_7844, data_03_7844, data_03_784e      ;; 03:72b6 ??????
    dw   data_03_7928, data_03_7928, data_03_7928      ;; 03:72bc ??????
    dw   data_03_7930, data_03_7938, data_03_7940      ;; 03:72c2 ??????
    dw   data_03_783a, data_03_7858, data_03_7862      ;; 03:72c8 ??????
    dw   data_03_7768, data_03_7772, data_03_7772      ;; 03:72ce ??????
    dw   data_03_79e8, data_03_79f2, data_03_79fc      ;; 03:72d4 ??????
    dw   data_03_7a06, data_03_7a10, data_03_7a1a      ;; 03:72da ??????
    dw   data_03_7a24, data_03_7a2e, data_03_7a2e      ;; 03:72e0 ??????
    dw   data_03_7a42, data_03_7a38, data_03_7888      ;; 03:72e6 ??????
    dw   data_03_7a4a, data_03_7a38, data_03_7a38      ;; 03:72ec ??????
    dw   data_03_79b8, data_03_79c0, data_03_7530      ;; 03:72f2 ??????
    dw   data_03_79c8, data_03_79d0, data_03_7530      ;; 03:72f8 ??????
    dw   data_03_7530, data_03_7ae4, data_03_786c      ;; 03:72fe ??????
    dw   data_03_79d8, data_03_79e0, data_03_7530      ;; 03:7304 ??????
    dw   data_03_77c2, data_03_7876, data_03_7530      ;; 03:730a ??????
    dw   data_03_772e, data_03_7aee, data_03_7aee      ;; 03:7310 ??????
    dw   data_03_781c, data_03_7b02, data_03_7812      ;; 03:7316 ??????
    dw   data_03_77cc, data_03_77cc, data_03_77cc      ;; 03:731c ??????
    dw   data_03_7830, data_03_7ab6, data_03_7adc      ;; 03:7322 ??????
    dw   data_03_775e, data_03_775e, data_03_775e      ;; 03:7328 ??????
    dw   data_03_7af8, data_03_7af8, data_03_7af8      ;; 03:732e ??????
    dw   data_03_7aa2, data_03_7aac, data_03_76e8      ;; 03:7334 ??????
    dw   data_03_7a52, data_03_7a7a, data_03_7a7a      ;; 03:733a ......
    dw   data_03_7a66, data_03_7a70, data_03_7a70      ;; 03:7340 ......
    dw   data_03_7880, data_03_7530, data_03_7530      ;; 03:7346 ??????
    dw   data_03_7530, data_03_7530, data_03_77f4      ;; 03:734c ??????
    dw   data_03_777c, data_03_7b0c, data_03_77b8      ;; 03:7352 ??????
    dw   data_03_7b28, data_03_7b32, data_03_7b3c      ;; 03:7358 ......
    dw   data_03_7530, data_03_77d6, data_03_77e0      ;; 03:735e ??????
    dw   data_03_7a5c, data_03_7a84, data_03_7a84      ;; 03:7364 ......
    dw   data_03_7710, data_03_7786, data_03_7786      ;; 03:736a ??????
    dw   data_03_7706, data_03_7786, data_03_7786      ;; 03:7370 ??????
    dw   data_03_7b18, data_03_7b46, data_03_7b46      ;; 03:7376 ??????
    dw   data_03_742c, data_03_74b0, data_03_7436      ;; 03:737c ??????
    dw   data_03_7790, data_03_7530, data_03_76fc      ;; 03:7382 ??????
    dw   data_03_7ac0, data_03_7ac0, data_03_7ac0      ;; 03:7388 ??????
    dw   data_03_779a, data_03_77a4, data_03_77a4      ;; 03:738e ??????
    dw   data_03_7416, data_03_7416, data_03_7416      ;; 03:7394 ??????
    dw   data_03_73f8, data_03_7402, data_03_740c      ;; 03:739a ??????
    dw   data_03_7aca, data_03_7aca, data_03_7ad2      ;; 03:73a0 ??????
    dw   data_03_73ee, data_03_73ee, data_03_73ee      ;; 03:73a6 ??????
    dw   data_03_73e4, data_03_7844, data_03_7844      ;; 03:73ac ??????
    dw   data_03_7ac0, data_03_73da, data_03_73da      ;; 03:73b2 ??????
    dw   data_03_7420, data_03_7420, data_03_7420      ;; 03:73b8 ??????
    dw   data_03_73d0, data_03_73d0, data_03_73d0      ;; 03:73be ??????
    dw   data_03_77ae, data_03_77ae, data_03_77ae      ;; 03:73c4 ??????
    dw   data_03_7724, data_03_7724, data_03_7724      ;; 03:73ca ??????

; Spawn tables:
; MinSpawn, MaxSpawn, 4x ID (picked at random), Y, X (repeated, $80 $80 indicates random position and ends list)
data_03_73d0:
    db   $01, $01, $bd, $bd, $bd, $bd, $09, $06        ;; 03:73d0 ????????
    db   $80, $80                                      ;; 03:73d8 ??

data_03_73da:
    db   $01, $01, $b9, $b9, $b9, $b9, $10, $06        ;; 03:73da ????????
    db   $80, $80                                      ;; 03:73e2 ??

data_03_73e4:
    db   $01, $01, $95, $95, $95, $95, $12, $04        ;; 03:73e4 ????????
    db   $80, $80                                      ;; 03:73ec ??

data_03_73ee:
    db   $01, $01, $6f, $6f, $6f, $6f, $0c, $04        ;; 03:73ee ????????
    db   $80, $80                                      ;; 03:73f6 ??

data_03_73f8:
    db   $01, $01, $75, $75, $75, $75, $00, $07        ;; 03:73f8 ????????
    db   $80, $80                                      ;; 03:7400 ??

data_03_7402:
    db   $01, $01, $76, $76, $76, $76, $0a, $06        ;; 03:7402 ????????
    db   $80, $80                                      ;; 03:740a ??

data_03_740c:
    db   $01, $01, $69, $69, $69, $69, $0a, $08        ;; 03:740c ????????
    db   $80, $80                                      ;; 03:7414 ??

data_03_7416:
    db   $01, $01, $0b, $0b, $0b, $0b, $09, $0a        ;; 03:7416 ????????
    db   $80, $80                                      ;; 03:741e ??

data_03_7420:
    db   $02, $02, $3f, $3f, $3f, $3f, $0c, $0c        ;; 03:7420 ????????
    db   $06, $0c, $80, $80                            ;; 03:7428 ????

data_03_742c:
    db   $01, $01, $0f, $0f, $0f, $0f, $0a, $08        ;; 03:742c ????????
    db   $80, $80                                      ;; 03:7434 ??

data_03_7436:
    db   $01, $01, $00, $00, $00, $00, $08, $08        ;; 03:7436 ????????
    db   $80, $80                                      ;; 03:743e ??

data_03_7440:
    db   $01, $02, $10, $10, $10, $10, $80, $80        ;; 03:7440 ........

data_03_7448:
    db   $01, $02, $11, $11, $11, $11, $80, $80        ;; 03:7448 ........

data_03_7450:
    db   $01, $02, $12, $12, $12, $12, $80, $80        ;; 03:7450 ........

data_03_7458:
    db   $01, $03, $13, $13, $13, $13, $80, $80        ;; 03:7458 ........

data_03_7460:
    db   $00, $02, $14, $14, $14, $14, $80, $80        ;; 03:7460 ....?...

data_03_7468:
    db   $01, $02, $15, $15, $15, $15, $80, $80        ;; 03:7468 ...?.?..

data_03_7470:
    db   $01, $01, $16, $16, $16, $16, $80, $80        ;; 03:7470 ???.?.??

data_03_7478:
    db   $02, $03, $16, $16, $16, $16, $80, $80        ;; 03:7478 ??..????

data_03_7480:
    db   $01, $02, $17, $17, $17, $17, $80, $80        ;; 03:7480 ........

data_03_7488:
    db   $01, $03, $18, $18, $18, $18, $80, $80        ;; 03:7488 ????????

data_03_7490:
    db   $01, $02, $19, $19, $19, $19, $80, $80        ;; 03:7490 ????????

data_03_7498:
    db   $01, $02, $1a, $1a, $1a, $1a, $80, $80        ;; 03:7498 ????????

data_03_74a0:
    db   $01, $01, $1b, $1b, $1b, $1b, $80, $80        ;; 03:74a0 ????????

data_03_74a8:
    db   $01, $03, $1c, $1c, $1c, $1c, $80, $80        ;; 03:74a8 ????????

data_03_74b0:
    db   $01, $02, $1d, $1d, $1d, $1d, $80, $80        ;; 03:74b0 ????????

data_03_74b8:
    db   $01, $02, $1e, $1e, $1e, $1e, $80, $80        ;; 03:74b8 ????????

data_03_74c0:
    db   $01, $01, $1f, $1f, $1f, $1f, $80, $80        ;; 03:74c0 ????????

data_03_74c8:
    db   $02, $03, $20, $20, $20, $20, $80, $80        ;; 03:74c8 ????????

data_03_74d0:
    db   $00, $02, $21, $21, $21, $21, $80, $80        ;; 03:74d0 ????????

data_03_74d8:
    db   $01, $02, $22, $22, $22, $22, $80, $80        ;; 03:74d8 ????????

data_03_74e0:
    db   $01, $02, $23, $23, $23, $23, $80, $80        ;; 03:74e0 ????????

data_03_74e8:
    db   $02, $03, $24, $24, $24, $24, $80, $80        ;; 03:74e8 ????????

data_03_74f0:
    db   $01, $01, $25, $25, $25, $25, $09, $ff        ;; 03:74f0 ????????
    db   $80, $80                                      ;; 03:74f8 ??

data_03_74fa:
    db   $01, $01, $26, $26, $26, $26, $09, $0e        ;; 03:74fa ????????
    db   $80, $80                                      ;; 03:7502 ??

data_03_7504:
    db   $01, $01, $27, $27, $27, $27, $12, $07        ;; 03:7504 ????????
    db   $80, $80                                      ;; 03:750c ??

data_03_750e:
    db   $01, $01, $28, $28, $28, $28, $00, $07        ;; 03:750e ????????
    db   $80, $80                                      ;; 03:7516 ??

data_03_7518:
    db   $01, $02, $5e, $5e, $5e, $5e, $80, $80        ;; 03:7518 ??....??

data_03_7520:
    db   $01, $03, $5f, $5f, $5f, $5f, $80, $80        ;; 03:7520 ????????

data_03_7528:
    db   $01, $01, $60, $60, $60, $60, $80, $80        ;; 03:7528 ????????

data_03_7530:
    db   $01, $01, $5d, $5d, $5d, $5d, $0e, $0a        ;; 03:7530 ????????
    db   $80, $80                                      ;; 03:7538 ??

data_03_753a:
    db   $01, $01, $29, $29, $29, $29, $80, $80        ;; 03:753a ????????

data_03_7542:
    db   $01, $02, $2a, $2a, $2a, $2a, $80, $80        ;; 03:7542 ????????

data_03_754a:
    db   $01, $02, $2b, $2b, $2b, $2b, $80, $80        ;; 03:754a ????????

data_03_7552:
    db   $01, $01, $2c, $2c, $2c, $2c, $80, $80        ;; 03:7552 ????????

data_03_755a:
    db   $01, $03, $2d, $2d, $2d, $2d, $80, $80        ;; 03:755a ????????

data_03_7562:
    db   $01, $02, $2e, $2e, $2e, $2e, $80, $80        ;; 03:7562 ????????

data_03_756a:
    db   $01, $02, $2f, $2f, $2f, $2f, $80, $80        ;; 03:756a ????????

data_03_7572:
    db   $01, $02, $30, $30, $30, $30, $80, $80        ;; 03:7572 ????????

data_03_757a:
    db   $01, $01, $31, $31, $31, $31, $80, $80        ;; 03:757a ????????

data_03_7582:
    db   $01, $02, $32, $32, $32, $32, $80, $80        ;; 03:7582 ????????

data_03_758a:
    db   $02, $03, $33, $33, $33, $33, $80, $80        ;; 03:758a ????????

data_03_7592:
    db   $01, $01, $34, $34, $34, $34, $80, $80        ;; 03:7592 ????????

data_03_759a:
    db   $01, $02, $35, $35, $35, $35, $80, $80        ;; 03:759a ????????

data_03_75a2:
    db   $01, $02, $36, $36, $36, $36, $80, $80        ;; 03:75a2 ????????

data_03_75aa:
    db   $01, $02, $37, $37, $37, $37, $80, $80        ;; 03:75aa ????????

data_03_75b2:
    db   $01, $01, $38, $38, $38, $38, $80, $80        ;; 03:75b2 ????????

data_03_75ba:
    db   $01, $02, $39, $39, $39, $39, $80, $80        ;; 03:75ba ????????

data_03_75c2:
    db   $01, $01, $3a, $3a, $3a, $3a, $80, $80        ;; 03:75c2 ????????

data_03_75ca:
    db   $01, $02, $3b, $3b, $3b, $3b, $80, $80        ;; 03:75ca ????????

data_03_75d2:
    db   $01, $01, $3c, $3c, $3c, $3c, $80, $80        ;; 03:75d2 ????????

data_03_75da:
    db   $01, $02, $3d, $3d, $3d, $3d, $80, $80        ;; 03:75da ????????

data_03_75e2:
    db   $01, $02, $3e, $3e, $3e, $3e, $80, $80        ;; 03:75e2 ????????

data_03_75ea:
    db   $01, $01, $3f, $3f, $3f, $3f, $80, $80        ;; 03:75ea ????????

data_03_75f2:
    db   $01, $02, $40, $40, $40, $40, $80, $80        ;; 03:75f2 ????????

data_03_75fa:
    db   $02, $02, $41, $41, $41, $41, $80, $80        ;; 03:75fa ????????

data_03_7602:
    db   $01, $01, $42, $42, $42, $42, $0a, $07        ;; 03:7602 ????????
    db   $80, $80                                      ;; 03:760a ??

data_03_760c:
    db   $01, $01, $be, $be, $be, $be, $0a, $07        ;; 03:760c ????????
    db   $80, $80                                      ;; 03:7614 ??

data_03_7616:
    db   $01, $02, $43, $43, $43, $43, $80, $80        ;; 03:7616 ????????

data_03_761e:
    db   $01, $01, $44, $44, $44, $44, $80, $80        ;; 03:761e ????????

data_03_7626:
    db   $01, $03, $45, $45, $45, $45, $80, $80        ;; 03:7626 ????????

data_03_762e:
    db   $01, $02, $46, $46, $46, $46, $80, $80        ;; 03:762e ????????

data_03_7636:
    db   $01, $02, $47, $47, $47, $47, $80, $80        ;; 03:7636 ????????

data_03_763e:
    db   $01, $02, $48, $48, $48, $48, $80, $80        ;; 03:763e ????????

data_03_7646:
    db   $01, $02, $49, $49, $49, $49, $80, $80        ;; 03:7646 ????????

data_03_764e:
    db   $01, $02, $4a, $4a, $4a, $4a, $80, $80        ;; 03:764e ????????

data_03_7656:
    db   $01, $02, $4b, $4b, $4b, $4b, $80, $80        ;; 03:7656 ????????

data_03_765e:
    db   $01, $02, $4c, $4c, $4c, $4c, $80, $80        ;; 03:765e ????????

data_03_7666:
    db   $01, $02, $4d, $4d, $4d, $4d, $80, $80        ;; 03:7666 ????????

data_03_766e:
    db   $01, $01, $4e, $4e, $4e, $4e, $80, $80        ;; 03:766e ????????

data_03_7676:
    db   $01, $02, $4f, $4f, $4f, $4f, $80, $80        ;; 03:7676 ????????

data_03_767e:
    db   $01, $02, $50, $50, $50, $50, $80, $80        ;; 03:767e ????????

data_03_7686:
    db   $01, $03, $51, $51, $51, $51, $80, $80        ;; 03:7686 ????????

data_03_768e:
    db   $01, $03, $52, $52, $52, $52, $80, $80        ;; 03:768e ????????

data_03_7696:
    db   $01, $02, $53, $53, $53, $53, $80, $80        ;; 03:7696 ????????

data_03_769e:
    db   $01, $03, $54, $54, $54, $54, $80, $80        ;; 03:769e ????????

data_03_76a6:
    db   $01, $02, $55, $55, $55, $55, $80, $80        ;; 03:76a6 ????????

data_03_76ae:
    db   $01, $02, $56, $56, $56, $56, $80, $80        ;; 03:76ae ????????

data_03_76b6:
    db   $01, $02, $57, $57, $57, $57, $80, $80        ;; 03:76b6 ????????

data_03_76be:
    db   $01, $02, $58, $58, $58, $58, $80, $80        ;; 03:76be ????????

data_03_76c6:
    db   $01, $02, $59, $59, $59, $59, $80, $80        ;; 03:76c6 ????????

data_03_76ce:
    db   $01, $02, $5a, $5a, $5a, $5a, $80, $80        ;; 03:76ce ????????

data_03_76d6:
    db   $01, $01, $5b, $5b, $5b, $5b, $0a, $07        ;; 03:76d6 ????????
    db   $80, $80                                      ;; 03:76de ??

data_03_76e0:
    db   $01, $03, $5c, $5c, $5c, $5c, $80, $80        ;; 03:76e0 ????????

data_03_76e8:
    db   $01, $01, $61, $61, $61, $61, $08, $0a        ;; 03:76e8 ..?..?..
    db   $80, $80                                      ;; 03:76f0 ??

data_03_76f2:
    db   $01, $01, $5b, $5b, $5b, $5b, $0c, $0c        ;; 03:76f2 ..?..?..
    db   $80, $80                                      ;; 03:76fa ??

data_03_76fc:
    db   $01, $01, $5b, $5b, $5b, $5b, $00, $08        ;; 03:76fc ????????
    db   $80, $80                                      ;; 03:7704 ??

data_03_7706:
    db   $01, $01, $62, $62, $62, $62, $09, $0c        ;; 03:7706 ????????
    db   $80, $80                                      ;; 03:770e ??

data_03_7710:
    db   $01, $01, $5b, $5b, $5b, $5b, $09, $0c        ;; 03:7710 ????????
    db   $80, $80                                      ;; 03:7718 ??

data_03_771a:
    db   $01, $01, $5b, $5b, $5b, $5b, $08, $09        ;; 03:771a ????????
    db   $80, $80                                      ;; 03:7722 ??

data_03_7724:
    db   $03, $03, $5b, $5b, $5b, $5b, $09, $04        ;; 03:7724 ????????
    db   $80, $80                                      ;; 03:772c ??

data_03_772e:
    db   $01, $01, $b3, $b3, $b3, $b3, $09, $06        ;; 03:772e ????????
    db   $80, $80                                      ;; 03:7736 ??

data_03_7738:
    db   $01, $01, $42, $42, $42, $42, $09, $00        ;; 03:7738 ?????.??
    db   $80, $80                                      ;; 03:7740 ??

data_03_7742:
    db   $01, $01, $42, $42, $42, $42, $0a, $0c        ;; 03:7742 ...???..
    db   $80, $80                                      ;; 03:774a ??

data_03_774c:
    db   $01, $01, $42, $42, $42, $42, $12, $07        ;; 03:774c ..?.?...
    db   $80, $80                                      ;; 03:7754 ??

data_03_7756:
    db   $01, $01, $63, $63, $63, $63, $80, $80        ;; 03:7756 ...???..

data_03_775e:
    db   $01, $01, $b5, $b5, $b5, $b5, $09, $07        ;; 03:775e ????????
    db   $80, $80                                      ;; 03:7766 ??

data_03_7768:
    db   $01, $01, $64, $64, $64, $64, $0a, $08        ;; 03:7768 ????????
    db   $80, $80                                      ;; 03:7770 ??

data_03_7772:
    db   $01, $01, $65, $65, $65, $65, $0a, $08        ;; 03:7772 ????????
    db   $80, $80                                      ;; 03:777a ??

data_03_777c:
    db   $01, $01, $b1, $b1, $b1, $b1, $0a, $0c        ;; 03:777c ????????
    db   $80, $80                                      ;; 03:7784 ??

data_03_7786:
    db   $01, $01, $b1, $b1, $b1, $b1, $08, $0e        ;; 03:7786 ????????
    db   $80, $80                                      ;; 03:778e ??

data_03_7790:
    db   $01, $01, $67, $67, $67, $67, $0a, $06        ;; 03:7790 ????????
    db   $80, $80                                      ;; 03:7798 ??

data_03_779a:
    db   $01, $01, $b1, $b1, $b1, $b1, $0a, $09        ;; 03:779a ????????
    db   $80, $80                                      ;; 03:77a2 ??

data_03_77a4:
    db   $01, $01, $68, $68, $68, $68, $09, $03        ;; 03:77a4 ????????
    db   $80, $80                                      ;; 03:77ac ??

data_03_77ae:
    db   $01, $01, $68, $68, $68, $68, $0a, $0a        ;; 03:77ae ????????
    db   $80, $80                                      ;; 03:77b6 ??

data_03_77b8:
    db   $01, $01, $69, $69, $69, $69, $04, $02        ;; 03:77b8 .....?..
    db   $80, $80                                      ;; 03:77c0 ??

data_03_77c2:
    db   $01, $01, $6a, $6a, $6a, $6a, $0c, $03        ;; 03:77c2 ????????
    db   $80, $80                                      ;; 03:77ca ??

data_03_77cc:
    db   $01, $01, $b4, $b4, $b4, $b4, $06, $07        ;; 03:77cc ????????
    db   $80, $80                                      ;; 03:77d4 ??

data_03_77d6:
    db   $01, $01, $6b, $6b, $6b, $6b, $10, $07        ;; 03:77d6 ????????
    db   $80, $80                                      ;; 03:77de ??

data_03_77e0:
    db   $01, $01, $0a, $0a, $0a, $0a, $10, $07        ;; 03:77e0 ????????
    db   $80, $80                                      ;; 03:77e8 ??

data_03_77ea:
    db   $01, $01, $6c, $6c, $6c, $6c, $0a, $0a        ;; 03:77ea ????????
    db   $80, $80                                      ;; 03:77f2 ??

data_03_77f4:
    db   $01, $01, $6d, $6d, $6d, $6d, $0a, $06        ;; 03:77f4 ????????
    db   $80, $80                                      ;; 03:77fc ??

data_03_77fe:
    db   $01, $01, $6e, $6e, $6e, $6e, $0a, $08        ;; 03:77fe ????????
    db   $80, $80                                      ;; 03:7806 ??

data_03_7808:
    db   $01, $01, $6f, $6f, $6f, $6f, $0e, $08        ;; 03:7808 ????????
    db   $80, $80                                      ;; 03:7810 ??

data_03_7812:
    db   $01, $01, $03, $03, $03, $03, $0a, $0a        ;; 03:7812 ????????
    db   $80, $80                                      ;; 03:781a ??

data_03_781c:
    db   $01, $01, $6f, $6f, $6f, $6f, $0a, $0a        ;; 03:781c ????????
    db   $80, $80                                      ;; 03:7824 ??

data_03_7826:
    db   $01, $01, $70, $70, $70, $70, $00, $06        ;; 03:7826 ????????
    db   $80, $80                                      ;; 03:782e ??

data_03_7830:
    db   $01, $01, $71, $71, $71, $71, $0c, $06        ;; 03:7830 ????????
    db   $80, $80                                      ;; 03:7838 ??

data_03_783a:
    db   $01, $01, $72, $72, $72, $72, $09, $04        ;; 03:783a ????????
    db   $80, $80                                      ;; 03:7842 ??

data_03_7844:
    db   $01, $01, $73, $73, $73, $73, $0c, $08        ;; 03:7844 ????????
    db   $80, $80                                      ;; 03:784c ??

data_03_784e:
    db   $01, $01, $bc, $bc, $bc, $bc, $0e, $08        ;; 03:784e ????????
    db   $80, $80                                      ;; 03:7856 ??

data_03_7858:
    db   $01, $01, $74, $74, $74, $74, $0e, $04        ;; 03:7858 ????????
    db   $80, $80                                      ;; 03:7860 ??

data_03_7862:
    db   $01, $01, $b6, $b6, $b6, $b6, $0e, $04        ;; 03:7862 ????????
    db   $80, $80                                      ;; 03:786a ??

data_03_786c:
    db   $01, $01, $75, $75, $75, $75, $04, $02        ;; 03:786c ????????
    db   $80, $80                                      ;; 03:7874 ??

data_03_7876:
    db   $01, $01, $76, $76, $76, $76, $02, $0c        ;; 03:7876 ????????
    db   $80, $80                                      ;; 03:787e ??

data_03_7880:
    db   $01, $01, $77, $77, $77, $77, $80, $80        ;; 03:7880 ????????

data_03_7888:
    db   $01, $01, $78, $78, $78, $78, $09, $04        ;; 03:7888 ????????
    db   $80, $80                                      ;; 03:7890 ??

data_03_7892:
    db   $01, $01, $79, $79, $79, $79, $80, $80        ;; 03:7892 ..?.??..

data_03_789a:
    db   $01, $01, $7b, $7b, $7b, $7b, $80, $80        ;; 03:789a ........

data_03_78a2:
    db   $01, $01, $7c, $7c, $7c, $7c, $80, $80        ;; 03:78a2 ...?....

data_03_78aa:
    db   $01, $01, $7d, $7d, $7d, $7d, $80, $80        ;; 03:78aa ...??...

data_03_78b2:
    db   $01, $01, $7e, $7e, $7e, $7e, $80, $80        ;; 03:78b2 ..?.....

data_03_78ba:
    db   $01, $01, $7f, $7f, $7f, $7f, $80, $80        ;; 03:78ba ........

data_03_78c2:
    db   $01, $01, $80, $80, $80, $80, $80, $80        ;; 03:78c2 ????????

data_03_78ca:
    db   $01, $01, $81, $81, $81, $81, $80, $80        ;; 03:78ca ????????

data_03_78d2:
    db   $01, $01, $82, $82, $82, $82, $0c, $0c        ;; 03:78d2 ????????
    db   $80, $80                                      ;; 03:78da ??

data_03_78dc:
    db   $01, $01, $83, $83, $83, $83, $0a, $06        ;; 03:78dc ????????
    db   $80, $80                                      ;; 03:78e4 ??

data_03_78e6:
    db   $01, $01, $84, $84, $84, $84, $80, $80        ;; 03:78e6 ????????

data_03_78ee:
    db   $01, $01, $85, $85, $85, $85, $04, $06        ;; 03:78ee ????????
    db   $80, $80                                      ;; 03:78f6 ??

data_03_78f8:
    db   $01, $01, $86, $86, $86, $86, $80, $80        ;; 03:78f8 ????????

data_03_7900:
    db   $01, $01, $87, $87, $87, $87, $80, $80        ;; 03:7900 ????????

data_03_7908:
    db   $01, $01, $88, $88, $88, $88, $80, $80        ;; 03:7908 ????????

data_03_7910:
    db   $01, $01, $89, $89, $89, $89, $80, $80        ;; 03:7910 ????????

data_03_7918:
    db   $01, $01, $8a, $8a, $8a, $8a, $80, $80        ;; 03:7918 ????????

data_03_7920:
    db   $01, $01, $8b, $8b, $8b, $8b, $80, $80        ;; 03:7920 ????????

data_03_7928:
    db   $01, $01, $8c, $8c, $8c, $8c, $80, $80        ;; 03:7928 ????????

data_03_7930:
    db   $01, $01, $8d, $8d, $8d, $8d, $80, $80        ;; 03:7930 ????????

data_03_7938:
    db   $01, $01, $8e, $8e, $8e, $8e, $80, $80        ;; 03:7938 ????????

data_03_7940:
    db   $01, $01, $8f, $8f, $8f, $8f, $80, $80        ;; 03:7940 ????????

data_03_7948:
    db   $01, $01, $90, $90, $90, $90, $80, $80        ;; 03:7948 ????????

data_03_7950:
    db   $01, $01, $91, $91, $91, $91, $80, $80        ;; 03:7950 ????????

data_03_7958:
    db   $01, $01, $92, $92, $92, $92, $80, $80        ;; 03:7958 ????????

data_03_7960:
    db   $01, $01, $93, $93, $93, $93, $80, $80        ;; 03:7960 ????????

data_03_7968:
    db   $01, $01, $94, $94, $94, $94, $80, $80        ;; 03:7968 ????????

data_03_7970:
    db   $01, $01, $95, $95, $95, $95, $80, $80        ;; 03:7970 ????????

data_03_7978:
    db   $01, $01, $96, $96, $96, $96, $80, $80        ;; 03:7978 ????????

data_03_7980:
    db   $01, $01, $97, $97, $97, $97, $80, $80        ;; 03:7980 ????????

data_03_7988:
    db   $01, $01, $98, $98, $98, $98, $80, $80        ;; 03:7988 ????????

data_03_7990:
    db   $01, $01, $99, $99, $99, $99, $80, $80        ;; 03:7990 ????????

data_03_7998:
    db   $01, $01, $9a, $9a, $9a, $9a, $80, $80        ;; 03:7998 ????????

data_03_79a0:
    db   $01, $01, $9b, $9b, $9b, $9b, $80, $80        ;; 03:79a0 ????????

data_03_79a8:
    db   $01, $01, $9c, $9c, $9c, $9c, $80, $80        ;; 03:79a8 ????????

data_03_79b0:
    db   $01, $01, $9d, $9d, $9d, $9d, $80, $80        ;; 03:79b0 ????????

data_03_79b8:
    db   $01, $01, $9e, $9e, $9e, $9e, $80, $80        ;; 03:79b8 ????????

data_03_79c0:
    db   $01, $01, $9f, $9f, $9f, $9f, $80, $80        ;; 03:79c0 ????????

data_03_79c8:
    db   $01, $01, $a0, $a0, $a0, $a0, $80, $80        ;; 03:79c8 ????????

data_03_79d0:
    db   $01, $01, $a1, $a1, $a1, $a1, $80, $80        ;; 03:79d0 ????????

data_03_79d8:
    db   $01, $01, $a2, $a2, $a2, $a2, $80, $80        ;; 03:79d8 ????????

data_03_79e0:
    db   $01, $01, $a3, $a3, $a3, $a3, $80, $80        ;; 03:79e0 ????????

data_03_79e8:
    db   $01, $01, $a4, $a4, $a4, $a4, $09, $04        ;; 03:79e8 ????????
    db   $80, $80                                      ;; 03:79f0 ??

data_03_79f2:
    db   $01, $01, $a5, $a5, $a5, $a5, $09, $04        ;; 03:79f2 ????????
    db   $80, $80                                      ;; 03:79fa ??

data_03_79fc:
    db   $01, $01, $a6, $a6, $a6, $a6, $09, $06        ;; 03:79fc ????????
    db   $80, $80                                      ;; 03:7a04 ??

data_03_7a06:
    db   $01, $01, $a7, $a7, $a7, $a7, $09, $06        ;; 03:7a06 ????????
    db   $80, $80                                      ;; 03:7a0e ??

data_03_7a10:
    db   $01, $01, $a8, $a8, $a8, $a8, $09, $02        ;; 03:7a10 ????????
    db   $80, $80                                      ;; 03:7a18 ??

data_03_7a1a:
    db   $01, $01, $a9, $a9, $a9, $a9, $09, $02        ;; 03:7a1a ????????
    db   $80, $80                                      ;; 03:7a22 ??

data_03_7a24:
    db   $01, $01, $aa, $aa, $aa, $aa, $09, $06        ;; 03:7a24 ????????
    db   $80, $80                                      ;; 03:7a2c ??

data_03_7a2e:
    db   $01, $01, $ab, $ab, $ab, $ab, $09, $06        ;; 03:7a2e ????????
    db   $80, $80                                      ;; 03:7a36 ??

data_03_7a38:
    db   $01, $01, $ac, $ac, $ac, $ac, $06, $07        ;; 03:7a38 ????????
    db   $80, $80                                      ;; 03:7a40 ??

data_03_7a42:
    db   $01, $01, $ad, $ad, $ad, $ad, $80, $80        ;; 03:7a42 ????????

data_03_7a4a:
    db   $01, $01, $ae, $ae, $ae, $ae, $80, $80        ;; 03:7a4a ????????

data_03_7a52:
    db   $01, $01, $af, $af, $af, $af, $0d, $04        ;; 03:7a52 ..?..?..
    db   $80, $80                                      ;; 03:7a5a ??

data_03_7a5c:
    db   $01, $01, $af, $af, $af, $af, $09, $04        ;; 03:7a5c ..?.??..
    db   $80, $80                                      ;; 03:7a64 ??

data_03_7a66:
    db   $01, $01, $af, $af, $af, $af, $09, $08        ;; 03:7a66 ..???...
    db   $80, $80                                      ;; 03:7a6e ??

data_03_7a70:
    db   $01, $01, $7a, $7a, $7a, $7a, $09, $0a        ;; 03:7a70 ..??....
    db   $80, $80                                      ;; 03:7a78 ??

data_03_7a7a:
    db   $01, $01, $b0, $b0, $b0, $b0, $0d, $06        ;; 03:7a7a ....?...
    db   $80, $80                                      ;; 03:7a82 ??

data_03_7a84:
    db   $01, $01, $b2, $b2, $b2, $b2, $09, $06        ;; 03:7a84 ..??....
    db   $80, $80                                      ;; 03:7a8c ??

data_03_7a8e:
    db   $01, $01, $66, $66, $66, $66, $0a, $0a        ;; 03:7a8e ..?.??..
    db   $80, $80, $01, $01, $af, $af, $af, $af        ;; 03:7a96 ????????
    db   $09, $0c, $80, $80                            ;; 03:7a9e ????

data_03_7aa2:
    db   $01, $01, $ba, $ba, $ba, $ba, $12, $07        ;; 03:7aa2 ????????
    db   $80, $80                                      ;; 03:7aaa ??

data_03_7aac:
    db   $01, $01, $ba, $ba, $ba, $ba, $00, $07        ;; 03:7aac ????????
    db   $80, $80                                      ;; 03:7ab4 ??

data_03_7ab6:
    db   $01, $01, $ba, $ba, $ba, $ba, $0c, $06        ;; 03:7ab6 ????????
    db   $80, $80                                      ;; 03:7abe ??

data_03_7ac0:
    db   $01, $01, $b8, $b8, $b8, $b8, $fe, $00        ;; 03:7ac0 ????????
    db   $80, $80                                      ;; 03:7ac8 ??

data_03_7aca:
    db   $01, $01, $b8, $b8, $b8, $b8, $80, $80        ;; 03:7aca ????????

data_03_7ad2:
    db   $01, $01, $b8, $b8, $b8, $b8, $0e, $08        ;; 03:7ad2 ????????
    db   $80, $80                                      ;; 03:7ada ??

data_03_7adc:
    db   $01, $01, $ba, $ba, $ba, $ba, $80, $80        ;; 03:7adc ????????

data_03_7ae4:
    db   $01, $01, $b8, $b8, $b8, $b8, $04, $04        ;; 03:7ae4 ????????
    db   $80, $80                                      ;; 03:7aec ??

data_03_7aee:
    db   $01, $01, $63, $63, $63, $63, $09, $00        ;; 03:7aee ????????
    db   $80, $80                                      ;; 03:7af6 ??

data_03_7af8:
    db   $01, $01, $b7, $b7, $b7, $b7, $09, $07        ;; 03:7af8 ????????
    db   $80, $80                                      ;; 03:7b00 ??

data_03_7b02:
    db   $01, $01, $bb, $bb, $bb, $bb, $0a, $07        ;; 03:7b02 ????????
    db   $80, $80                                      ;; 03:7b0a ??

data_03_7b0c:
    db   $02, $02, $bb, $bb, $bb, $bb, $0a, $07        ;; 03:7b0c ????????
    db   $09, $0e, $80, $80                            ;; 03:7b14 ????

data_03_7b18:
    db   $04, $04, $2e, $2e, $2e, $2e, $02, $04        ;; 03:7b18 ????????
    db   $02, $06, $02, $08, $02, $0a, $80, $80        ;; 03:7b20 ????????

data_03_7b28:
    db   $01, $01, $0c, $0c, $0c, $0c, $09, $07        ;; 03:7b28 ???.????
    db   $80, $80                                      ;; 03:7b30 ??

data_03_7b32:
    db   $01, $01, $0c, $0c, $0c, $0c, $0a, $08        ;; 03:7b32 ..?.??..
    db   $80, $80                                      ;; 03:7b3a ??

data_03_7b3c:
    db   $01, $01, $0d, $0d, $0d, $0d, $0c, $08        ;; 03:7b3c ???.????
    db   $80, $80                                      ;; 03:7b44 ??

data_03_7b46:
    db   $04, $04, $0f, $0f, $0f, $0f, $06, $04        ;; 03:7b46 ????????
    db   $06, $0a, $0c, $0a, $0c, $04, $80, $80        ;; 03:7b4e ????????

data_03_7b56:
    db   $04, $02, $05, $03                            ;; 03:7b56 ????

data_03_7b5a:
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 03:7b5a ........
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 03:7b62 ........
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 03:7b6a ........

data_03_7b72:
    db   $30, $42, $40, $10, $40, $42, $10, $40        ;; 03:7b72 ........
    db   $42, $10, $40, $42, $30, $46, $44, $10        ;; 03:7b7a ........
    db   $44, $46, $10, $44, $46, $10, $44, $46        ;; 03:7b82 ........
    db   $30, $4a, $48, $10, $48, $4a, $10, $48        ;; 03:7b8a ????????
    db   $4a, $10, $48, $4a                            ;; 03:7b92 ????

data_03_7b96:
    db   $30, $52, $50, $10, $50, $52, $10, $50        ;; 03:7b96 ........
    db   $52, $10, $50, $52, $30, $56, $54, $10        ;; 03:7b9e ........
    db   $54, $56, $10, $54, $56, $10, $54, $56        ;; 03:7ba6 ........
    db   $30, $5a, $58, $10, $58, $5a, $10, $58        ;; 03:7bae ......??
    db   $5a, $10, $58, $5a                            ;; 03:7bb6 ?...

data_03_7bba:
    db   $30, $62, $60, $10, $60, $62, $10, $60        ;; 03:7bba ????????
    db   $62, $10, $60, $62, $30, $66, $64, $10        ;; 03:7bc2 ????????
    db   $64, $66, $10, $64, $66, $10, $64, $66        ;; 03:7bca ????????
    db   $30, $6a, $68, $10, $68, $6a, $10, $68        ;; 03:7bd2 ????????
    db   $6a, $10, $68, $6a                            ;; 03:7bda ????

data_03_7bde:
    db   $10, $50, $52, $10, $50, $52, $10, $54        ;; 03:7bde ........
    db   $56, $10, $50, $52, $30, $52, $50, $30        ;; 03:7be6 ........
    db   $52, $50, $30, $56, $54, $30, $52, $50        ;; 03:7bee ........
    db   $10, $54, $56, $10, $54, $56, $10, $54        ;; 03:7bf6 ????????
    db   $56, $10, $54, $56                            ;; 03:7bfe ????

data_03_7c02:
    db   $10, $60, $62, $10, $60, $62, $10, $64        ;; 03:7c02 ????????
    db   $66, $10, $60, $62, $30, $62, $60, $30        ;; 03:7c0a ????????
    db   $62, $60, $30, $66, $64, $30, $62, $60        ;; 03:7c12 ????????
    db   $10, $64, $66, $10, $64, $66, $10, $64        ;; 03:7c1a ????????
    db   $66, $10, $64, $66                            ;; 03:7c22 ????

data_03_7c26:
    db   $30, $46, $44, $10, $44, $46, $50, $40        ;; 03:7c26 ????????
    db   $42, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c2e ????????
    db   $44, $46, $50, $40, $42, $10, $40, $42        ;; 03:7c36 ????????
    db   $30, $46, $44, $10, $44, $46, $50, $40        ;; 03:7c3e ????????
    db   $42, $10, $40, $42                            ;; 03:7c46 ????

data_03_7c4a:
    db   $10, $40, $42, $10, $40, $42, $10, $48        ;; 03:7c4a ????????
    db   $4a, $10, $40, $42, $30, $42, $40, $30        ;; 03:7c52 ????????
    db   $42, $40, $30, $4a, $48, $30, $42, $40        ;; 03:7c5a ????????
    db   $10, $40, $42, $10, $40, $42, $10, $48        ;; 03:7c62 ????????
    db   $4a, $10, $40, $42                            ;; 03:7c6a ????

data_03_7c6e:
    db   $30, $46, $44, $10, $44, $46, $10, $48        ;; 03:7c6e ????????
    db   $4a, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c76 ????????
    db   $44, $46, $10, $48, $4a, $10, $40, $42        ;; 03:7c7e ????????
    db   $30, $46, $44, $10, $44, $46, $10, $48        ;; 03:7c86 ????????
    db   $4a, $10, $40, $42                            ;; 03:7c8e ????

data_03_7c92:
    db   $30, $4a, $48, $30, $42, $40, $10, $48        ;; 03:7c92 ????????
    db   $4a, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c9a ????????
    db   $48, $4a, $30, $4a, $48, $10, $44, $46        ;; 03:7ca2 ????????
    db   $30, $46, $44, $10, $48, $4a, $30, $4a        ;; 03:7caa ????????
    db   $48, $10, $44, $46                            ;; 03:7cb2 ????

data_03_7cb6:
    db   $30, $4a, $48, $10, $48, $4a, $10, $44        ;; 03:7cb6 ........
    db   $46, $10, $40, $42, $30, $4e, $4c, $10        ;; 03:7cbe ........
    db   $4c, $4e, $30, $46, $44, $30, $42, $40        ;; 03:7cc6 ........
    db   $30, $4a, $48, $10, $48, $4a, $10, $44        ;; 03:7cce ????????
    db   $46, $10, $40, $42                            ;; 03:7cd6 ????

data_03_7cda:
    db   $30, $6a, $68, $10, $68, $6a, $10, $64        ;; 03:7cda ........
    db   $66, $10, $60, $62, $30, $6e, $6c, $10        ;; 03:7ce2 ........
    db   $6c, $6e, $30, $66, $64, $30, $62, $60        ;; 03:7cea ........
    db   $30, $6a, $68, $10, $68, $6a, $10, $64        ;; 03:7cf2 ????????
    db   $66, $10, $60, $62                            ;; 03:7cfa ????

data_03_7cfe:
    db   $30, $5a, $58, $10, $58, $5a, $10, $54        ;; 03:7cfe ........
    db   $56, $10, $50, $52, $30, $5e, $5c, $10        ;; 03:7d06 ........
    db   $5c, $5e, $30, $56, $54, $30, $52, $50        ;; 03:7d0e ........
    db   $30, $5a, $58, $10, $58, $5a, $10, $54        ;; 03:7d16 ????????
    db   $56, $10, $50, $52                            ;; 03:7d1e ????

data_03_7d22:
    db   $30, $42, $40, $10, $40, $42, $10, $48        ;; 03:7d22 ????????
    db   $4a, $10, $44, $46, $30, $42, $40, $10        ;; 03:7d2a ????????
    db   $40, $42, $30, $4a, $48, $30, $46, $44        ;; 03:7d32 ????????
    db   $30, $4e, $4c, $10, $4c, $4e, $10, $4c        ;; 03:7d3a ????????
    db   $4e, $10, $4c, $4e                            ;; 03:7d42 ????

data_03_7d46:
    db   $10, $40, $42, $10, $40, $42, $10, $40        ;; 03:7d46 ????????
    db   $42, $10, $40, $42, $10, $44, $46, $10        ;; 03:7d4e ????????
    db   $44, $46, $10, $44, $46, $10, $44, $46        ;; 03:7d56 ????????
    db   $30, $46, $44, $30, $46, $44, $30, $46        ;; 03:7d5e ????????
    db   $44, $30, $46, $44                            ;; 03:7d66 ????

data_03_7d6a:
    db   $30, $6a, $68, $10, $68, $6a, $10, $60        ;; 03:7d6a ????????
    db   $62, $10, $60, $62, $30, $6a, $68, $10        ;; 03:7d72 ????????
    db   $68, $6a, $10, $64, $66, $30, $66, $64        ;; 03:7d7a ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7d82 ????????
    db   $62, $10, $60, $62                            ;; 03:7d8a ????

data_03_7d8e:
    db   $10, $50, $52, $10, $54, $56, $10, $50        ;; 03:7d8e ????????
    db   $52, $10, $54, $56, $30, $5a, $58, $10        ;; 03:7d96 ????????
    db   $58, $5a, $30, $56, $54, $10, $58, $5a        ;; 03:7d9e ????????
    db   $30, $5a, $58, $10, $58, $5a, $30, $56        ;; 03:7da6 ????????
    db   $54, $10, $58, $5a                            ;; 03:7dae ????

data_03_7db2:
    db   $30, $56, $54, $10, $54, $56, $10, $58        ;; 03:7db2 ????????
    db   $5a, $10, $50, $52, $30, $56, $54, $10        ;; 03:7dba ????????
    db   $54, $56, $10, $58, $5a, $10, $50, $52        ;; 03:7dc2 ????????
    db   $30, $56, $54, $10, $54, $56, $10, $58        ;; 03:7dca ????????
    db   $5a, $10, $50, $52                            ;; 03:7dd2 ????

data_03_7dd6:
    db   $10, $40, $42, $10, $44, $46, $10, $4c        ;; 03:7dd6 ????????
    db   $4e, $10, $48, $4a, $10, $44, $46, $10        ;; 03:7dde ????????
    db   $40, $42, $10, $48, $4a, $10, $4c, $4e        ;; 03:7de6 ????????
    db   $10, $44, $46, $10, $40, $42, $10, $48        ;; 03:7dee ????????
    db   $4a, $10, $4c, $4e                            ;; 03:7df6 ????

data_03_7dfa:
    db   $30, $5a, $58, $10, $58, $5a, $10, $54        ;; 03:7dfa ????????
    db   $56, $10, $50, $52, $30, $5e, $5c, $10        ;; 03:7e02 ????????
    db   $5c, $5e, $30, $56, $54, $30, $52, $50        ;; 03:7e0a ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7e12 ????????
    db   $62, $10, $60, $62                            ;; 03:7e1a ????

data_03_7e1e:
    db   $30, $62, $60, $10, $60, $62, $10, $5c        ;; 03:7e1e ........
    db   $5e, $10, $58, $5a, $30, $66, $64, $10        ;; 03:7e26 ....????
    db   $64, $66, $30, $5e, $5c, $30, $5a, $58        ;; 03:7e2e ????????
    db   $30, $6e, $6c, $10, $6c, $6e, $10, $68        ;; 03:7e36 ????????
    db   $6a, $10, $5c, $5a                            ;; 03:7e3e ????

data_03_7e42:
    db   $30, $4a, $48, $10, $48, $4a, $10, $44        ;; 03:7e42 ????????
    db   $46, $10, $40, $42, $30, $4e, $4c, $10        ;; 03:7e4a ????????
    db   $4c, $4e, $30, $46, $44, $30, $42, $40        ;; 03:7e52 ????????
    db   $30, $56, $54, $10, $54, $56, $10, $44        ;; 03:7e5a ????????
    db   $46, $10, $50, $52                            ;; 03:7e62 ????

data_03_7e66:
    db   $30, $5a, $58, $10, $58, $5a, $10, $60        ;; 03:7e66 ????????
    db   $62, $10, $50, $52, $30, $5e, $5c, $10        ;; 03:7e6e ????????
    db   $5c, $5e, $10, $64, $66, $10, $54, $56        ;; 03:7e76 ????????
    db   $30, $5e, $5c, $10, $5c, $5e, $10, $64        ;; 03:7e7e ????????
    db   $66, $10, $54, $56                            ;; 03:7e86 ????

data_03_7e8a:
    db   $30, $6a, $68, $10, $68, $6a, $10, $60        ;; 03:7e8a ????????
    db   $62, $10, $58, $5a, $30, $6e, $6c, $10        ;; 03:7e92 ????????
    db   $6c, $6e, $10, $64, $66, $10, $5c, $5e        ;; 03:7e9a ????????
    db   $30, $6e, $6c, $10, $6c, $6e, $10, $64        ;; 03:7ea2 ????????
    db   $66, $10, $5c, $5e                            ;; 03:7eaa ????

data_03_7eae:
    db   $30, $52, $50, $10, $50, $52, $10, $48        ;; 03:7eae ........
    db   $4a, $10, $40, $42, $30, $56, $54, $10        ;; 03:7eb6 ........
    db   $54, $56, $10, $4c, $4e, $10, $44, $46        ;; 03:7ebe ..??????
    db   $30, $52, $50, $10, $50, $52, $10, $48        ;; 03:7ec6 ????????
    db   $4a, $10, $40, $42                            ;; 03:7ece ????

data_03_7ed2:
    db   $10, $5c, $5e, $10, $5c, $5e, $10, $5c        ;; 03:7ed2 ????????
    db   $5e, $10, $5c, $5e, $10, $5c, $5e, $10        ;; 03:7eda ????????
    db   $5c, $5e, $10, $5c, $5e, $10, $5c, $5e        ;; 03:7ee2 ????????
    db   $10, $5c, $5e, $10, $5c, $5e, $10, $5c        ;; 03:7eea ????????
    db   $5e, $10, $5c, $5e                            ;; 03:7ef2 ????

data_03_7ef6:
    db   $10, $40, $42, $10, $40, $42, $10, $40        ;; 03:7ef6 ????????
    db   $42, $10, $40, $42, $30, $42, $40, $30        ;; 03:7efe ????????
    db   $42, $40, $30, $42, $40, $30, $42, $40        ;; 03:7f06 ????????
    db   $50, $40, $42, $50, $40, $42, $50, $40        ;; 03:7f0e ????????
    db   $42, $50, $40, $42, $30, $46, $44, $30        ;; 03:7f16 ????????
    db   $46, $44, $30, $46, $44, $30, $46, $44        ;; 03:7f1e ????????
    db   $70, $46, $44, $70, $46, $44, $70, $46        ;; 03:7f26 ????????
    db   $44, $70, $46, $44, $70, $46, $44, $70        ;; 03:7f2e ????????
    db   $46, $44, $70, $46, $44, $70, $46, $44        ;; 03:7f36 ????????

data_03_7f3e:
    db   $10, $6e, $6e, $10, $6e, $6e, $10, $6e        ;; 03:7f3e ........
    db   $6e, $10, $6e, $6e, $10, $6e, $6e, $10        ;; 03:7f46 ........
    db   $6e, $6e, $10, $6e, $6e, $10, $6e, $6e        ;; 03:7f4e ........
    db   $10, $6e, $6e, $10, $6e, $6e, $10, $6e        ;; 03:7f56 ????????
    db   $6e, $10, $6e, $6e                            ;; 03:7f5e ????

data_03_7f62:
    db   $30, $2a, $28, $10, $28, $2a, $10, $24        ;; 03:7f62 ........
    db   $26, $10, $20, $22, $30, $2e, $2c, $10        ;; 03:7f6a ........
    db   $2c, $2e, $30, $26, $24, $30, $22, $20        ;; 03:7f72 ........
    db   $30, $2a, $28, $10, $28, $2a, $10, $24        ;; 03:7f7a ????????
    db   $26, $10, $20, $22                            ;; 03:7f82 ????

data_03_7f86:
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7f86 ........
    db   $62, $10, $60, $62, $10, $60, $62, $10        ;; 03:7f8e ....????
    db   $60, $62, $10, $60, $62, $10, $60, $62        ;; 03:7f96 ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7f9e ????????
    db   $62, $10, $60, $62, $10, $60, $62, $10        ;; 03:7fa6 ????????
    db   $60, $62, $10, $60, $62, $10, $60, $62        ;; 03:7fae ????????
    db   $10, $64, $66, $10, $64, $66, $10, $64        ;; 03:7fb6 ????????
    db   $66, $10, $64, $66, $10, $60, $62, $10        ;; 03:7fbe ????????
    db   $60, $62, $10, $60, $62, $10, $60, $62        ;; 03:7fc6 ????????
