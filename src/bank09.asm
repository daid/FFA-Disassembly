;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank09", ROMX[$4000], BANK[$09]
;@call_to_bank_jumptable
    call_to_bank_target call_09_4016                   ;; 09:4000 pP
    call_to_bank_target call_09_4012                   ;; 09:4002 pP
    call_to_bank_target call_09_41e9                   ;; 09:4004 pP
    call_to_bank_target call_09_438a                   ;; 09:4006 pP
    call_to_bank_target spawnProjectile                ;; 09:4008 pP
    call_to_bank_target call_09_445e                   ;; 09:400a ??
    call_to_bank_target call_09_4467                   ;; 09:400c ??
    call_to_bank_target call_09_4470                   ;; 09:400e ??
    call_to_bank_target call_09_4399                   ;; 09:4010 pP

call_09_4012:
    call call_00_0695                                  ;; 09:4012 $cd $95 $06
    ret                                                ;; 09:4015 $c9

call_09_4016:
    ld   HL, wC5C0                                     ;; 09:4016 $21 $c0 $c5
    ld   B, $03                                        ;; 09:4019 $06 $03
    ld   C, $0a                                        ;; 09:401b $0e $0a
    push BC                                            ;; 09:401d $c5
    jr   .jr_09_4024                                   ;; 09:401e $18 $04
.jr_09_4020:
    push BC                                            ;; 09:4020 $c5
    ld   B, $00                                        ;; 09:4021 $06 $00
    add  HL, BC                                        ;; 09:4023 $09
.jr_09_4024:
    push HL                                            ;; 09:4024 $e5
    ld   A, [HL]                                       ;; 09:4025 $7e
    cp   A, $ff                                        ;; 09:4026 $fe $ff
    call NZ, call_09_4031                              ;; 09:4028 $c4 $31 $40
    pop  HL                                            ;; 09:402b $e1
    pop  BC                                            ;; 09:402c $c1
    dec  B                                             ;; 09:402d $05
    jr   NZ, .jr_09_4020                               ;; 09:402e $20 $f0
    ret                                                ;; 09:4030 $c9

call_09_4031:
    inc  HL                                            ;; 09:4031 $23
    dec  [HL]                                          ;; 09:4032 $35
    ret  NZ                                            ;; 09:4033 $c0
    inc  HL                                            ;; 09:4034 $23
    ld   A, [HL-]                                      ;; 09:4035 $3a
    ld   [HL-], A                                      ;; 09:4036 $32
    ld   D, H                                          ;; 09:4037 $54
    ld   E, L                                          ;; 09:4038 $5d
    ld   HL, $08                                       ;; 09:4039 $21 $08 $00
    add  HL, DE                                        ;; 09:403c $19
    ld   C, [HL]                                       ;; 09:403d $4e
    inc  HL                                            ;; 09:403e $23
    ld   B, [HL]                                       ;; 09:403f $46
    ld   A, [BC]                                       ;; 09:4040 $0a
    cp   A, $62                                        ;; 09:4041 $fe $62
    jp   Z, .jp_09_40be                                ;; 09:4043 $ca $be $40
    cp   A, $72                                        ;; 09:4046 $fe $72
    jp   Z, .jp_09_4142                                ;; 09:4048 $ca $42 $41
    cp   A, $3a                                        ;; 09:404b $fe $3a
    jp   Z, .jp_09_40be                                ;; 09:404d $ca $be $40
    ld   HL, $03                                       ;; 09:4050 $21 $03 $00
    add  HL, DE                                        ;; 09:4053 $19
    ld   A, [HL]                                       ;; 09:4054 $7e
    inc  [HL]                                          ;; 09:4055 $34
    push AF                                            ;; 09:4056 $f5
    ld   HL, $0e                                       ;; 09:4057 $21 $0e $00
    add  HL, BC                                        ;; 09:405a $09
    ld   A, [HL+]                                      ;; 09:405b $2a
    ld   H, [HL]                                       ;; 09:405c $66
    ld   L, A                                          ;; 09:405d $6f
    pop  AF                                            ;; 09:405e $f1
    add  A, A                                          ;; 09:405f $87
    add  A, A                                          ;; 09:4060 $87
    ld   C, A                                          ;; 09:4061 $4f
    ld   B, $00                                        ;; 09:4062 $06 $00
    add  HL, BC                                        ;; 09:4064 $09
    ld   A, [HL+]                                      ;; 09:4065 $2a
    cp   A, $00                                        ;; 09:4066 $fe $00
    jp   Z, .jp_09_4136                                ;; 09:4068 $ca $36 $41
    push AF                                            ;; 09:406b $f5
    push DE                                            ;; 09:406c $d5
    ld   C, [HL]                                       ;; 09:406d $4e
    inc  HL                                            ;; 09:406e $23
    ld   B, [HL]                                       ;; 09:406f $46
    push BC                                            ;; 09:4070 $c5
    inc  HL                                            ;; 09:4071 $23
    ld   A, [HL]                                       ;; 09:4072 $7e
    ld   HL, $06                                       ;; 09:4073 $21 $06 $00
    add  HL, DE                                        ;; 09:4076 $19
    ld   E, [HL]                                       ;; 09:4077 $5e
    inc  HL                                            ;; 09:4078 $23
    ld   D, [HL]                                       ;; 09:4079 $56
    call call_00_28bc                                  ;; 09:407a $cd $bc $28
    ld   A, [DE]                                       ;; 09:407d $1a
    pop  DE                                            ;; 09:407e $d1
    push AF                                            ;; 09:407f $f5
    call call_09_41ad                                  ;; 09:4080 $cd $ad $41
    pop  AF                                            ;; 09:4083 $f1
    ld   C, A                                          ;; 09:4084 $4f
    push DE                                            ;; 09:4085 $d5
    push BC                                            ;; 09:4086 $c5
    call getObjectDirection                            ;; 09:4087 $cd $99 $0c
    call call_00_2982                                  ;; 09:408a $cd $82 $29
    pop  BC                                            ;; 09:408d $c1
    ld   B, A                                          ;; 09:408e $47
    push BC                                            ;; 09:408f $c5
    call GetObjectY                                    ;; 09:4090 $cd $3e $0c
    pop  BC                                            ;; 09:4093 $c1
    pop  DE                                            ;; 09:4094 $d1
    add  A, D                                          ;; 09:4095 $82
    ld   D, A                                          ;; 09:4096 $57
    push DE                                            ;; 09:4097 $d5
    push BC                                            ;; 09:4098 $c5
    call GetObjectX                                    ;; 09:4099 $cd $2d $0c
    pop  BC                                            ;; 09:409c $c1
    pop  DE                                            ;; 09:409d $d1
    pop  HL                                            ;; 09:409e $e1
    push HL                                            ;; 09:409f $e5
    push BC                                            ;; 09:40a0 $c5
    add  A, E                                          ;; 09:40a1 $83
    ld   E, A                                          ;; 09:40a2 $5f
    ld   A, [HL]                                       ;; 09:40a3 $7e
    call call_09_41d3                                  ;; 09:40a4 $cd $d3 $41
    pop  BC                                            ;; 09:40a7 $c1
    pop  HL                                            ;; 09:40a8 $e1
    pop  AF                                            ;; 09:40a9 $f1
    ld   C, A                                          ;; 09:40aa $4f
    call call_00_2982                                  ;; 09:40ab $cd $82 $29
    add  A, B                                          ;; 09:40ae $80
    call call_00_299a                                  ;; 09:40af $cd $9a $29
    ld   B, A                                          ;; 09:40b2 $47
    ld   A, C                                          ;; 09:40b3 $79
    and  A, $f0                                        ;; 09:40b4 $e6 $f0
    or   A, B                                          ;; 09:40b6 $b0
    ld   C, [HL]                                       ;; 09:40b7 $4e
    ld   B, $00                                        ;; 09:40b8 $06 $00
    call call_00_08d4                                  ;; 09:40ba $cd $d4 $08
    ret                                                ;; 09:40bd $c9
.jp_09_40be:
    ld   HL, $03                                       ;; 09:40be $21 $03 $00
    add  HL, DE                                        ;; 09:40c1 $19
    ld   A, [HL]                                       ;; 09:40c2 $7e
    inc  [HL]                                          ;; 09:40c3 $34
    push AF                                            ;; 09:40c4 $f5
    ld   HL, $0e                                       ;; 09:40c5 $21 $0e $00
    add  HL, BC                                        ;; 09:40c8 $09
    ld   A, [HL+]                                      ;; 09:40c9 $2a
    ld   H, [HL]                                       ;; 09:40ca $66
    ld   L, A                                          ;; 09:40cb $6f
    pop  AF                                            ;; 09:40cc $f1
    ld   C, A                                          ;; 09:40cd $4f
    add  A, A                                          ;; 09:40ce $87
    add  A, C                                          ;; 09:40cf $81
    ld   C, A                                          ;; 09:40d0 $4f
    ld   B, $00                                        ;; 09:40d1 $06 $00
    add  HL, BC                                        ;; 09:40d3 $09
    ld   A, [HL+]                                      ;; 09:40d4 $2a
    cp   A, $00                                        ;; 09:40d5 $fe $00
    call Z, call_09_4197                               ;; 09:40d7 $cc $97 $41
    push AF                                            ;; 09:40da $f5
    push DE                                            ;; 09:40db $d5
    ld   A, [DE]                                       ;; 09:40dc $1a
    ld   E, [HL]                                       ;; 09:40dd $5e
    inc  HL                                            ;; 09:40de $23
    ld   D, [HL]                                       ;; 09:40df $56
    call call_09_41ad                                  ;; 09:40e0 $cd $ad $41
    pop  BC                                            ;; 09:40e3 $c1
    push DE                                            ;; 09:40e4 $d5
    push BC                                            ;; 09:40e5 $c5
    ld   A, [BC]                                       ;; 09:40e6 $0a
    ld   DE, $08                                       ;; 09:40e7 $11 $08 $00
    call call_09_41ad                                  ;; 09:40ea $cd $ad $41
    pop  BC                                            ;; 09:40ed $c1
    ld   HL, $04                                       ;; 09:40ee $21 $04 $00
    add  HL, BC                                        ;; 09:40f1 $09
    ld   A, [HL]                                       ;; 09:40f2 $7e
    add  A, D                                          ;; 09:40f3 $82
    ld   [HL+], A                                      ;; 09:40f4 $22
    ld   A, [HL]                                       ;; 09:40f5 $7e
    add  A, E                                          ;; 09:40f6 $83
    ld   [HL-], A                                      ;; 09:40f7 $32
    pop  DE                                            ;; 09:40f8 $d1
    ld   A, [HL+]                                      ;; 09:40f9 $2a
    add  A, D                                          ;; 09:40fa $82
    ld   D, A                                          ;; 09:40fb $57
    ld   A, [HL-]                                      ;; 09:40fc $3a
    add  A, E                                          ;; 09:40fd $83
    ld   E, A                                          ;; 09:40fe $5f
    pop  HL                                            ;; 09:40ff $e1
    cp   A, $a8                                        ;; 09:4100 $fe $a8
    jr   NC, .jr_09_413c                               ;; 09:4102 $30 $38
    ld   A, [wVideoWY]                                 ;; 09:4104 $fa $a9 $c0
    add  A, $08                                        ;; 09:4107 $c6 $08
    cp   A, D                                          ;; 09:4109 $ba
    jr   C, .jr_09_413c                                ;; 09:410a $38 $30
    push HL                                            ;; 09:410c $e5
    ld   A, [BC]                                       ;; 09:410d $0a
    push BC                                            ;; 09:410e $c5
    call call_09_41d3                                  ;; 09:410f $cd $d3 $41
    pop  HL                                            ;; 09:4112 $e1
    push HL                                            ;; 09:4113 $e5
    push DE                                            ;; 09:4114 $d5
    ld   C, [HL]                                       ;; 09:4115 $4e
    call getObjectDirection                            ;; 09:4116 $cd $99 $0c
    call call_00_2982                                  ;; 09:4119 $cd $82 $29
    ld   B, A                                          ;; 09:411c $47
    pop  DE                                            ;; 09:411d $d1
    pop  HL                                            ;; 09:411e $e1
    pop  AF                                            ;; 09:411f $f1
    push HL                                            ;; 09:4120 $e5
    ld   C, A                                          ;; 09:4121 $4f
    call call_00_2982                                  ;; 09:4122 $cd $82 $29
    add  A, B                                          ;; 09:4125 $80
    call call_00_299a                                  ;; 09:4126 $cd $9a $29
    ld   B, A                                          ;; 09:4129 $47
    ld   A, C                                          ;; 09:412a $79
    and  A, $f0                                        ;; 09:412b $e6 $f0
    or   A, B                                          ;; 09:412d $b0
    ld   C, [HL]                                       ;; 09:412e $4e
    ld   B, $00                                        ;; 09:412f $06 $00
    call call_00_08d4                                  ;; 09:4131 $cd $d4 $08
    pop  DE                                            ;; 09:4134 $d1
    ret  NZ                                            ;; 09:4135 $c0
.jp_09_4136:
    ld   A, [DE]                                       ;; 09:4136 $1a
    ld   C, A                                          ;; 09:4137 $4f
    call call_00_0ae3                                  ;; 09:4138 $cd $e3 $0a
    ret                                                ;; 09:413b $c9
.jr_09_413c:
    ld   A, [BC]                                       ;; 09:413c $0a
    ld   C, A                                          ;; 09:413d $4f
    call call_00_0ae3                                  ;; 09:413e $cd $e3 $0a
    ret                                                ;; 09:4141 $c9
.jp_09_4142:
    ld   HL, $03                                       ;; 09:4142 $21 $03 $00
    add  HL, DE                                        ;; 09:4145 $19
    ld   A, [HL]                                       ;; 09:4146 $7e
    inc  [HL]                                          ;; 09:4147 $34
    and  A, $07                                        ;; 09:4148 $e6 $07
    ld   C, A                                          ;; 09:414a $4f
    ld   HL, $04                                       ;; 09:414b $21 $04 $00
    add  HL, DE                                        ;; 09:414e $19
    ld   A, [HL+]                                      ;; 09:414f $2a
    add  A, C                                          ;; 09:4150 $81
    ld   B, A                                          ;; 09:4151 $47
    ld   A, [HL+]                                      ;; 09:4152 $2a
    add  A, C                                          ;; 09:4153 $81
    ld   L, C                                          ;; 09:4154 $69
    ld   C, A                                          ;; 09:4155 $4f
    sra  B                                             ;; 09:4156 $cb $28
    sra  B                                             ;; 09:4158 $cb $28
    sra  B                                             ;; 09:415a $cb $28
    sra  C                                             ;; 09:415c $cb $29
    sra  C                                             ;; 09:415e $cb $29
    sra  C                                             ;; 09:4160 $cb $29
    ld   A, [DE]                                       ;; 09:4162 $1a
    ld   D, B                                          ;; 09:4163 $50
    ld   E, C                                          ;; 09:4164 $59
    ld   C, A                                          ;; 09:4165 $4f
    ld   B, $00                                        ;; 09:4166 $06 $00
    ld   A, L                                          ;; 09:4168 $7d
    srl  A                                             ;; 09:4169 $cb $3f
    call call_00_299a                                  ;; 09:416b $cd $9a $29
    bit  0, L                                          ;; 09:416e $cb $45
    jr   Z, .jr_09_4174                                ;; 09:4170 $28 $02
    ld   B, $01                                        ;; 09:4172 $06 $01
.jr_09_4174:
    push BC                                            ;; 09:4174 $c5
    call call_00_08d4                                  ;; 09:4175 $cd $d4 $08
    pop  BC                                            ;; 09:4178 $c1
    jr   Z, .jr_09_4193                                ;; 09:4179 $28 $18
    push BC                                            ;; 09:417b $c5
    call GetObjectX                                    ;; 09:417c $cd $2d $0c
    pop  BC                                            ;; 09:417f $c1
    cp   A, $a8                                        ;; 09:4180 $fe $a8
    jr   NC, .jr_09_4193                               ;; 09:4182 $30 $0f
    push BC                                            ;; 09:4184 $c5
    call GetObjectY                                    ;; 09:4185 $cd $3e $0c
    pop  BC                                            ;; 09:4188 $c1
    ld   B, A                                          ;; 09:4189 $47
    ld   A, [wVideoWY]                                 ;; 09:418a $fa $a9 $c0
    add  A, $08                                        ;; 09:418d $c6 $08
    cp   A, B                                          ;; 09:418f $b8
    jr   C, .jr_09_4193                                ;; 09:4190 $38 $01
    ret                                                ;; 09:4192 $c9
.jr_09_4193:
    call call_00_0ae3                                  ;; 09:4193 $cd $e3 $0a
    ret                                                ;; 09:4196 $c9

call_09_4197:
    ld   HL, $03                                       ;; 09:4197 $21 $03 $00
    add  HL, DE                                        ;; 09:419a $19
    ld   [HL], $00                                     ;; 09:419b $36 $00
    ld   HL, $08                                       ;; 09:419d $21 $08 $00
    add  HL, DE                                        ;; 09:41a0 $19
    ld   C, [HL]                                       ;; 09:41a1 $4e
    inc  HL                                            ;; 09:41a2 $23
    ld   B, [HL]                                       ;; 09:41a3 $46
    ld   HL, $0e                                       ;; 09:41a4 $21 $0e $00
    add  HL, BC                                        ;; 09:41a7 $09
    ld   A, [HL+]                                      ;; 09:41a8 $2a
    ld   H, [HL]                                       ;; 09:41a9 $66
    ld   L, A                                          ;; 09:41aa $6f
    ld   A, [HL+]                                      ;; 09:41ab $2a
    ret                                                ;; 09:41ac $c9

call_09_41ad:
    push DE                                            ;; 09:41ad $d5
    ld   C, A                                          ;; 09:41ae $4f
    call getObjectDirection                            ;; 09:41af $cd $99 $0c
    pop  DE                                            ;; 09:41b2 $d1
    bit  0, A                                          ;; 09:41b3 $cb $47
    ret  NZ                                            ;; 09:41b5 $c0
    bit  1, A                                          ;; 09:41b6 $cb $4f
    jr   NZ, .jr_09_41c4                               ;; 09:41b8 $20 $0a
    bit  2, A                                          ;; 09:41ba $cb $57
    jr   NZ, .jr_09_41cd                               ;; 09:41bc $20 $0f
    ld   A, D                                          ;; 09:41be $7a
    cpl                                                ;; 09:41bf $2f
    inc  A                                             ;; 09:41c0 $3c
    ld   D, E                                          ;; 09:41c1 $53
    ld   E, A                                          ;; 09:41c2 $5f
    ret                                                ;; 09:41c3 $c9
.jr_09_41c4:
    ld   A, D                                          ;; 09:41c4 $7a
    cpl                                                ;; 09:41c5 $2f
    inc  A                                             ;; 09:41c6 $3c
    ld   D, A                                          ;; 09:41c7 $57
    ld   A, E                                          ;; 09:41c8 $7b
    cpl                                                ;; 09:41c9 $2f
    inc  A                                             ;; 09:41ca $3c
    ld   E, A                                          ;; 09:41cb $5f
    ret                                                ;; 09:41cc $c9
.jr_09_41cd:
    ld   A, E                                          ;; 09:41cd $7b
    cpl                                                ;; 09:41ce $2f
    inc  A                                             ;; 09:41cf $3c
    ld   E, D                                          ;; 09:41d0 $5a
    ld   D, A                                          ;; 09:41d1 $57
    ret                                                ;; 09:41d2 $c9

call_09_41d3:
    ld   C, A                                          ;; 09:41d3 $4f
    push DE                                            ;; 09:41d4 $d5
    push BC                                            ;; 09:41d5 $c5
    call GetObjectY                                    ;; 09:41d6 $cd $3e $0c
    pop  BC                                            ;; 09:41d9 $c1
    pop  DE                                            ;; 09:41da $d1
    sub  A, D                                          ;; 09:41db $92
    cpl                                                ;; 09:41dc $2f
    inc  A                                             ;; 09:41dd $3c
    ld   D, A                                          ;; 09:41de $57
    push DE                                            ;; 09:41df $d5
    call GetObjectX                                    ;; 09:41e0 $cd $2d $0c
    pop  DE                                            ;; 09:41e3 $d1
    sub  A, E                                          ;; 09:41e4 $93
    cpl                                                ;; 09:41e5 $2f
    inc  A                                             ;; 09:41e6 $3c
    ld   E, A                                          ;; 09:41e7 $5f
    ret                                                ;; 09:41e8 $c9

call_09_41e9:
    cp   A, $ff                                        ;; 09:41e9 $fe $ff
    ret  Z                                             ;; 09:41eb $c8
    ld   L, A                                          ;; 09:41ec $6f
    ld   H, $00                                        ;; 09:41ed $26 $00
    add  HL, HL                                        ;; 09:41ef $29
    add  HL, HL                                        ;; 09:41f0 $29
    add  HL, HL                                        ;; 09:41f1 $29
    add  HL, HL                                        ;; 09:41f2 $29
    ld   DE, projectileDataTable                       ;; 09:41f3 $11 $79 $44
    add  HL, DE                                        ;; 09:41f6 $19
    ld   DE, $06                                       ;; 09:41f7 $11 $06 $00
    add  HL, DE                                        ;; 09:41fa $19
    ld   A, [HL+]                                      ;; 09:41fb $2a
    swap A                                             ;; 09:41fc $cb $37
    ld   E, A                                          ;; 09:41fe $5f
    and  A, $0f                                        ;; 09:41ff $e6 $0f
    or   A, $80                                        ;; 09:4201 $f6 $80
    ld   D, A                                          ;; 09:4203 $57
    ld   A, E                                          ;; 09:4204 $7b
    and  A, $f0                                        ;; 09:4205 $e6 $f0
    ld   E, A                                          ;; 09:4207 $5f
    push DE                                            ;; 09:4208 $d5
    ld   A, [HL+]                                      ;; 09:4209 $2a
    ld   E, A                                          ;; 09:420a $5f
    ld   C, [HL]                                       ;; 09:420b $4e
    inc  HL                                            ;; 09:420c $23
    ld   B, [HL]                                       ;; 09:420d $46
    inc  HL                                            ;; 09:420e $23
    ld   A, [HL+]                                      ;; 09:420f $2a
    ld   H, [HL]                                       ;; 09:4210 $66
    ld   L, A                                          ;; 09:4211 $6f
    ld   A, E                                          ;; 09:4212 $7b
    add  A, A                                          ;; 09:4213 $87
    pop  DE                                            ;; 09:4214 $d1
    ret  Z                                             ;; 09:4215 $c8
.jr_09_4216:
    push AF                                            ;; 09:4216 $f5
    ld   A, [HL+]                                      ;; 09:4217 $2a
    push HL                                            ;; 09:4218 $e5
    swap A                                             ;; 09:4219 $cb $37
    ld   L, A                                          ;; 09:421b $6f
    and  A, $0f                                        ;; 09:421c $e6 $0f
    ld   H, A                                          ;; 09:421e $67
    ld   A, L                                          ;; 09:421f $7d
    and  A, $f0                                        ;; 09:4220 $e6 $f0
    ld   L, A                                          ;; 09:4222 $6f
    add  HL, BC                                        ;; 09:4223 $09
    push BC                                            ;; 09:4224 $c5
    push DE                                            ;; 09:4225 $d5
    ld   A, $09                                        ;; 09:4226 $3e $09
    call addTileGraphicCopyRequest                     ;; 09:4228 $cd $f5 $2d
    pop  DE                                            ;; 09:422b $d1
    ld   HL, $10                                       ;; 09:422c $21 $10 $00
    add  HL, DE                                        ;; 09:422f $19
    ld   E, L                                          ;; 09:4230 $5d
    ld   D, H                                          ;; 09:4231 $54
    pop  BC                                            ;; 09:4232 $c1
    pop  HL                                            ;; 09:4233 $e1
    pop  AF                                            ;; 09:4234 $f1
    dec  A                                             ;; 09:4235 $3d
    jr   NZ, .jr_09_4216                               ;; 09:4236 $20 $de
    ret                                                ;; 09:4238 $c9

spawnProjectile:
    cp   A, $ff                                        ;; 09:4239 $fe $ff
    ret  Z                                             ;; 09:423b $c8
    push DE                                            ;; 09:423c $d5
    ld   HL, $10                                       ;; 09:423d $21 $10 $00
    call MultiplyHL_by_A                               ;; 09:4240 $cd $7b $2b
    pop  DE                                            ;; 09:4243 $d1
    push DE                                            ;; 09:4244 $d5
    ld   BC, projectileDataTable                       ;; 09:4245 $01 $79 $44
    add  HL, BC                                        ;; 09:4248 $09
    push HL                                            ;; 09:4249 $e5
    ld   A, [HL+]                                      ;; 09:424a $2a
    ld   C, A                                          ;; 09:424b $4f
    ld   A, [HL-]                                      ;; 09:424c $3a
    ld   B, A                                          ;; 09:424d $47
    push BC                                            ;; 09:424e $c5
    ld   BC, $0c                                       ;; 09:424f $01 $0c $00
    add  HL, BC                                        ;; 09:4252 $09
    ld   C, [HL]                                       ;; 09:4253 $4e
    inc  HL                                            ;; 09:4254 $23
    ld   B, [HL]                                       ;; 09:4255 $46
    push BC                                            ;; 09:4256 $c5
    ld   A, [DE]                                       ;; 09:4257 $1a
    ld   C, A                                          ;; 09:4258 $4f
    push BC                                            ;; 09:4259 $c5
    call getObjectDirection                            ;; 09:425a $cd $99 $0c
    pop  BC                                            ;; 09:425d $c1
    ld   B, A                                          ;; 09:425e $47
    push BC                                            ;; 09:425f $c5
    call call_00_05ef                                  ;; 09:4260 $cd $ef $05
    pop  BC                                            ;; 09:4263 $c1
    ld   A, B                                          ;; 09:4264 $78
    and  A, $0f                                        ;; 09:4265 $e6 $0f
    pop  HL                                            ;; 09:4267 $e1
    pop  BC                                            ;; 09:4268 $c1
    push AF                                            ;; 09:4269 $f5
    push BC                                            ;; 09:426a $c5
    ld   A, $08                                        ;; 09:426b $3e $08
    call createObject                                  ;; 09:426d $cd $74 $0a
    ld   A, C                                          ;; 09:4270 $79
    cp   A, $ff                                        ;; 09:4271 $fe $ff
    pop  BC                                            ;; 09:4273 $c1
    ld   C, A                                          ;; 09:4274 $4f
    push BC                                            ;; 09:4275 $c5
    jr   Z, .jr_09_42a1                                ;; 09:4276 $28 $29
    ld   A, $ff                                        ;; 09:4278 $3e $ff
    call call_09_437a                                  ;; 09:427a $cd $7a $43
    jr   NZ, .jr_09_42a1                               ;; 09:427d $20 $22
    pop  BC                                            ;; 09:427f $c1
    ld   A, C                                          ;; 09:4280 $79
    ld   [HL+], A                                      ;; 09:4281 $22
    ld   A, $01                                        ;; 09:4282 $3e $01
    ld   [HL+], A                                      ;; 09:4284 $22
    ld   A, B                                          ;; 09:4285 $78
    ld   [HL+], A                                      ;; 09:4286 $22
    xor  A, A                                          ;; 09:4287 $af
    ld   [HL+], A                                      ;; 09:4288 $22
    pop  AF                                            ;; 09:4289 $f1
    push HL                                            ;; 09:428a $e5
    push BC                                            ;; 09:428b $c5
    call setObjectDirection                            ;; 09:428c $cd $a6 $0c
    pop  BC                                            ;; 09:428f $c1
    pop  HL                                            ;; 09:4290 $e1
    pop  DE                                            ;; 09:4291 $d1
    ld   A, [DE]                                       ;; 09:4292 $1a
    push DE                                            ;; 09:4293 $d5
    call call_09_42aa                                  ;; 09:4294 $cd $aa $42
    pop  DE                                            ;; 09:4297 $d1
    pop  BC                                            ;; 09:4298 $c1
    ld   [HL], C                                       ;; 09:4299 $71
    inc  HL                                            ;; 09:429a $23
    ld   [HL], B                                       ;; 09:429b $70
    inc  HL                                            ;; 09:429c $23
    ld   [HL], E                                       ;; 09:429d $73
    inc  HL                                            ;; 09:429e $23
    ld   [HL], D                                       ;; 09:429f $72
    ret                                                ;; 09:42a0 $c9
.jr_09_42a1:
    pop  BC                                            ;; 09:42a1 $c1
    call call_00_0ae3                                  ;; 09:42a2 $cd $e3 $0a
    pop  DE                                            ;; 09:42a5 $d1
    pop  DE                                            ;; 09:42a6 $d1
    pop  DE                                            ;; 09:42a7 $d1
    xor  A, A                                          ;; 09:42a8 $af
    ret                                                ;; 09:42a9 $c9

call_09_42aa:
    cp   A, $62                                        ;; 09:42aa $fe $62
    jr   Z, .jr_09_42ba                                ;; 09:42ac $28 $0c
    cp   A, $72                                        ;; 09:42ae $fe $72
    jr   Z, .jr_09_42cb                                ;; 09:42b0 $28 $19
    cp   A, $3a                                        ;; 09:42b2 $fe $3a
    jr   Z, .jr_09_42ba                                ;; 09:42b4 $28 $04
    inc  HL                                            ;; 09:42b6 $23
    inc  HL                                            ;; 09:42b7 $23
    xor  A, A                                          ;; 09:42b8 $af
    ret                                                ;; 09:42b9 $c9
.jr_09_42ba:
    push HL                                            ;; 09:42ba $e5
    push BC                                            ;; 09:42bb $c5
    call GetObjectY                                    ;; 09:42bc $cd $3e $0c
    pop  BC                                            ;; 09:42bf $c1
    pop  HL                                            ;; 09:42c0 $e1
    ld   [HL+], A                                      ;; 09:42c1 $22
    push HL                                            ;; 09:42c2 $e5
    call GetObjectX                                    ;; 09:42c3 $cd $2d $0c
    pop  HL                                            ;; 09:42c6 $e1
    ld   [HL+], A                                      ;; 09:42c7 $22
    xor  A, A                                          ;; 09:42c8 $af
    dec  A                                             ;; 09:42c9 $3d
    ret                                                ;; 09:42ca $c9
.jr_09_42cb:
    push HL                                            ;; 09:42cb $e5
    push BC                                            ;; 09:42cc $c5
    call GetObjectY                                    ;; 09:42cd $cd $3e $0c
    srl  A                                             ;; 09:42d0 $cb $3f
    pop  BC                                            ;; 09:42d2 $c1
    push AF                                            ;; 09:42d3 $f5
    call GetObjectX                                    ;; 09:42d4 $cd $2d $0c
    srl  A                                             ;; 09:42d7 $cb $3f
    ld   E, A                                          ;; 09:42d9 $5f
    pop  AF                                            ;; 09:42da $f1
    ld   D, A                                          ;; 09:42db $57
    push DE                                            ;; 09:42dc $d5
    call getPlayerY                                    ;; 09:42dd $cd $99 $02
    srl  A                                             ;; 09:42e0 $cb $3f
    pop  DE                                            ;; 09:42e2 $d1
    sub  A, D                                          ;; 09:42e3 $92
    ld   D, A                                          ;; 09:42e4 $57
    push DE                                            ;; 09:42e5 $d5
    call getPlayerX                                    ;; 09:42e6 $cd $93 $02
    srl  A                                             ;; 09:42e9 $cb $3f
    pop  DE                                            ;; 09:42eb $d1
    sub  A, E                                          ;; 09:42ec $93
    ld   E, A                                          ;; 09:42ed $5f
    ld   B, $06                                        ;; 09:42ee $06 $06
.jr_09_42f0:
    ld   A, D                                          ;; 09:42f0 $7a
    and  A, $c0                                        ;; 09:42f1 $e6 $c0
    cp   A, $80                                        ;; 09:42f3 $fe $80
    jr   Z, .jr_09_4319                                ;; 09:42f5 $28 $22
    cp   A, $40                                        ;; 09:42f7 $fe $40
    jr   Z, .jr_09_4319                                ;; 09:42f9 $28 $1e
    ld   A, E                                          ;; 09:42fb $7b
    and  A, $c0                                        ;; 09:42fc $e6 $c0
    cp   A, $80                                        ;; 09:42fe $fe $80
    jr   Z, .jr_09_4319                                ;; 09:4300 $28 $17
    cp   A, $40                                        ;; 09:4302 $fe $40
    jr   Z, .jr_09_4319                                ;; 09:4304 $28 $13
    rlc  D                                             ;; 09:4306 $cb $02
    rlc  E                                             ;; 09:4308 $cb $03
    dec  B                                             ;; 09:430a $05
    jr   NZ, .jr_09_42f0                               ;; 09:430b $20 $e3
    ld   A, D                                          ;; 09:430d $7a
    cpl                                                ;; 09:430e $2f
    srl  A                                             ;; 09:430f $cb $3f
    xor  A, D                                          ;; 09:4311 $aa
    ld   D, A                                          ;; 09:4312 $57
    ld   A, E                                          ;; 09:4313 $7b
    cpl                                                ;; 09:4314 $2f
    srl  A                                             ;; 09:4315 $cb $3f
    xor  A, E                                          ;; 09:4317 $ab
    ld   E, A                                          ;; 09:4318 $5f
.jr_09_4319:
    sra  D                                             ;; 09:4319 $cb $2a
    sra  E                                             ;; 09:431b $cb $2b
    pop  HL                                            ;; 09:431d $e1
    ld   A, D                                          ;; 09:431e $7a
    ld   [HL+], A                                      ;; 09:431f $22
    ld   A, E                                          ;; 09:4320 $7b
    ld   [HL+], A                                      ;; 09:4321 $22
    push HL                                            ;; 09:4322 $e5
    ld   BC, hFFFC                                     ;; 09:4323 $01 $fc $ff
    add  HL, BC                                        ;; 09:4326 $09
    push HL                                            ;; 09:4327 $e5
    push DE                                            ;; 09:4328 $d5
    ld   A, D                                          ;; 09:4329 $7a
    bit  7, A                                          ;; 09:432a $cb $7f
    jr   Z, .jr_09_4330                                ;; 09:432c $28 $02
    cpl                                                ;; 09:432e $2f
    inc  A                                             ;; 09:432f $3c
.jr_09_4330:
    sla  A                                             ;; 09:4330 $cb $27
    ld   L, A                                          ;; 09:4332 $6f
    ld   H, $00                                        ;; 09:4333 $26 $00
    call MultiplyHL_by_A                               ;; 09:4335 $cd $7b $2b
    pop  DE                                            ;; 09:4338 $d1
    push HL                                            ;; 09:4339 $e5
    ld   A, E                                          ;; 09:433a $7b
    bit  7, A                                          ;; 09:433b $cb $7f
    jr   Z, .jr_09_4341                                ;; 09:433d $28 $02
    cpl                                                ;; 09:433f $2f
    inc  A                                             ;; 09:4340 $3c
.jr_09_4341:
    sla  A                                             ;; 09:4341 $cb $27
    ld   L, A                                          ;; 09:4343 $6f
    ld   H, $00                                        ;; 09:4344 $26 $00
    call MultiplyHL_by_A                               ;; 09:4346 $cd $7b $2b
    pop  DE                                            ;; 09:4349 $d1
    add  HL, DE                                        ;; 09:434a $19
    ld   A, H                                          ;; 09:434b $7c
    ld   HL, .data_09_4376                             ;; 09:434c $21 $76 $43
    ld   B, $04                                        ;; 09:434f $06 $04
.jr_09_4351:
    cp   A, [HL]                                       ;; 09:4351 $be
    jr   NC, .jr_09_4358                               ;; 09:4352 $30 $04
    inc  HL                                            ;; 09:4354 $23
    dec  B                                             ;; 09:4355 $05
    jr   NZ, .jr_09_4351                               ;; 09:4356 $20 $f9
.jr_09_4358:
    ld   A, $04                                        ;; 09:4358 $3e $04
    add  A, B                                          ;; 09:435a $80
    pop  HL                                            ;; 09:435b $e1
    push HL                                            ;; 09:435c $e5
    ld   L, [HL]                                       ;; 09:435d $6e
    ld   H, $00                                        ;; 09:435e $26 $00
    call MultiplyHL_by_A                               ;; 09:4360 $cd $7b $2b
    srl  H                                             ;; 09:4363 $cb $3c
    rr   L                                             ;; 09:4365 $cb $1d
    srl  H                                             ;; 09:4367 $cb $3c
    rr   L                                             ;; 09:4369 $cb $1d
    srl  H                                             ;; 09:436b $cb $3c
    rr   L                                             ;; 09:436d $cb $1d
    ld   A, L                                          ;; 09:436f $7d
    pop  HL                                            ;; 09:4370 $e1
    ld   [HL], A                                       ;; 09:4371 $77
    pop  HL                                            ;; 09:4372 $e1
    xor  A, A                                          ;; 09:4373 $af
    dec  A                                             ;; 09:4374 $3d
    ret                                                ;; 09:4375 $c9
.data_09_4376:
    db   $40, $31, $24, $19                            ;; 09:4376 ????

call_09_437a:
    ld   B, $03                                        ;; 09:437a $06 $03
    ld   HL, wC5C0                                     ;; 09:437c $21 $c0 $c5
    ld   DE, $0a                                       ;; 09:437f $11 $0a $00
.jr_09_4382:
    cp   A, [HL]                                       ;; 09:4382 $be
    ret  Z                                             ;; 09:4383 $c8
    add  HL, DE                                        ;; 09:4384 $19
    dec  B                                             ;; 09:4385 $05
    jr   NZ, .jr_09_4382                               ;; 09:4386 $20 $fa
    dec  B                                             ;; 09:4388 $05
    ret                                                ;; 09:4389 $c9

call_09_438a:
    ld   A, C                                          ;; 09:438a $79
    cp   A, $ff                                        ;; 09:438b $fe $ff
    ret  Z                                             ;; 09:438d $c8
    call call_09_437a                                  ;; 09:438e $cd $7a $43
    ret  NZ                                            ;; 09:4391 $c0
    ld   C, [HL]                                       ;; 09:4392 $4e
    ld   [HL], $ff                                     ;; 09:4393 $36 $ff
    call call_00_0ae3                                  ;; 09:4395 $cd $e3 $0a
    ret                                                ;; 09:4398 $c9

call_09_4399:
    cp   A, $c9                                        ;; 09:4399 $fe $c9
    jr   Z, .jr_09_43ac                                ;; 09:439b $28 $0f
    ld   B, A                                          ;; 09:439d $47
    and  A, $f0                                        ;; 09:439e $e6 $f0
    cp   A, $40                                        ;; 09:43a0 $fe $40
    jp   Z, .jp_09_443c                                ;; 09:43a2 $ca $3c $44
    cp   A, $50                                        ;; 09:43a5 $fe $50
    jp   Z, .jp_09_443c                                ;; 09:43a7 $ca $3c $44
.jp_09_43aa:
    xor  A, A                                          ;; 09:43aa $af
    ret                                                ;; 09:43ab $c9
.jr_09_43ac:
    push BC                                            ;; 09:43ac $c5
    push DE                                            ;; 09:43ad $d5
    ld   A, C                                          ;; 09:43ae $79
    call call_09_437a                                  ;; 09:43af $cd $7a $43
    ld   D, H                                          ;; 09:43b2 $54
    ld   E, L                                          ;; 09:43b3 $5d
    ld   HL, $08                                       ;; 09:43b4 $21 $08 $00
    add  HL, DE                                        ;; 09:43b7 $19
    ld   C, [HL]                                       ;; 09:43b8 $4e
    inc  HL                                            ;; 09:43b9 $23
    ld   B, [HL]                                       ;; 09:43ba $46
    ld   HL, $02                                       ;; 09:43bb $21 $02 $00
    add  HL, BC                                        ;; 09:43be $09
    ld   C, [HL]                                       ;; 09:43bf $4e
    ld   H, D                                          ;; 09:43c0 $62
    ld   L, E                                          ;; 09:43c1 $6b
    pop  DE                                            ;; 09:43c2 $d1
    ld   A, C                                          ;; 09:43c3 $79
    pop  BC                                            ;; 09:43c4 $c1
    cp   A, D                                          ;; 09:43c5 $ba
    jr   C, .jp_09_43aa                                ;; 09:43c6 $38 $e2
    cp   A, E                                          ;; 09:43c8 $bb
    jr   C, .jp_09_43aa                                ;; 09:43c9 $38 $df
    push BC                                            ;; 09:43cb $c5
    ld   A, [wC0A0]                                    ;; 09:43cc $fa $a0 $c0
    cp   A, $02                                        ;; 09:43cf $fe $02
    jr   NC, .jr_09_440a                               ;; 09:43d1 $30 $37
    push HL                                            ;; 09:43d3 $e5
    call call_00_039a                                  ;; 09:43d4 $cd $9a $03
    call call_00_29e4                                  ;; 09:43d7 $cd $e4 $29
    push AF                                            ;; 09:43da $f5
    call getPlayerDirection                            ;; 09:43db $cd $ab $02
    and  A, $0f                                        ;; 09:43de $e6 $0f
    ld   B, A                                          ;; 09:43e0 $47
    pop  AF                                            ;; 09:43e1 $f1
    and  A, B                                          ;; 09:43e2 $a0
    pop  DE                                            ;; 09:43e3 $d1
    jr   Z, .jr_09_440a                                ;; 09:43e4 $28 $24
    push DE                                            ;; 09:43e6 $d5
    call call_00_3dcd                                  ;; 09:43e7 $cd $cd $3d
    pop  DE                                            ;; 09:43ea $d1
    or   A, A                                          ;; 09:43eb $b7
    jr   Z, .jr_09_440a                                ;; 09:43ec $28 $1c
    push AF                                            ;; 09:43ee $f5
    ld   HL, $08                                       ;; 09:43ef $21 $08 $00
    add  HL, DE                                        ;; 09:43f2 $19
    ld   A, [HL+]                                      ;; 09:43f3 $2a
    ld   H, [HL]                                       ;; 09:43f4 $66
    ld   L, A                                          ;; 09:43f5 $6f
    ld   BC, $03                                       ;; 09:43f6 $01 $03 $00
    add  HL, BC                                        ;; 09:43f9 $09
    ld   B, [HL]                                       ;; 09:43fa $46
    pop  AF                                            ;; 09:43fb $f1
    and  A, B                                          ;; 09:43fc $a0
    jr   Z, .jr_09_440a                                ;; 09:43fd $28 $0b
    pop  BC                                            ;; 09:43ff $c1
    call call_00_0ae3                                  ;; 09:4400 $cd $e3 $0a
    ld   A, $15                                        ;; 09:4403 $3e $15
    call playSFX                                       ;; 09:4405 $cd $7d $29
    xor  A, A                                          ;; 09:4408 $af
    ret                                                ;; 09:4409 $c9
.jr_09_440a:
    call call_00_3dd3                                  ;; 09:440a $cd $d3 $3d
    pop  BC                                            ;; 09:440d $c1
    push AF                                            ;; 09:440e $f5
    ld   A, C                                          ;; 09:440f $79
    call call_09_437a                                  ;; 09:4410 $cd $7a $43
    ld   DE, $08                                       ;; 09:4413 $11 $08 $00
    add  HL, DE                                        ;; 09:4416 $19
    ld   E, [HL]                                       ;; 09:4417 $5e
    inc  HL                                            ;; 09:4418 $23
    ld   D, [HL]                                       ;; 09:4419 $56
    ld   HL, $03                                       ;; 09:441a $21 $03 $00
    add  HL, DE                                        ;; 09:441d $19
    ld   C, [HL]                                       ;; 09:441e $4e
    ld   HL, $04                                       ;; 09:441f $21 $04 $00
    add  HL, DE                                        ;; 09:4422 $19
    ld   B, [HL]                                       ;; 09:4423 $46
    pop  AF                                            ;; 09:4424 $f1
    and  A, C                                          ;; 09:4425 $a1
    jr   Z, .jr_09_4431                                ;; 09:4426 $28 $09
    ld   A, B                                          ;; 09:4428 $78
    srl  A                                             ;; 09:4429 $cb $3f
    srl  A                                             ;; 09:442b $cb $3f
    sub  A, B                                          ;; 09:442d $90
    cpl                                                ;; 09:442e $2f
    inc  A                                             ;; 09:442f $3c
    ld   B, A                                          ;; 09:4430 $47
.jr_09_4431:
    ld   HL, $05                                       ;; 09:4431 $21 $05 $00
    add  HL, DE                                        ;; 09:4434 $19
    ld   C, [HL]                                       ;; 09:4435 $4e
    call call_00_0256                                  ;; 09:4436 $cd $56 $02
    ld   A, $c9                                        ;; 09:4439 $3e $c9
    ret                                                ;; 09:443b $c9
.jp_09_443c:
    ld   A, [wCF5B]                                    ;; 09:443c $fa $5b $cf
    cp   A, D                                          ;; 09:443f $ba
    jp   C, .jp_09_43aa                                ;; 09:4440 $da $aa $43
    ld   A, [wCF5B]                                    ;; 09:4443 $fa $5b $cf
    cp   A, E                                          ;; 09:4446 $bb
    jp   C, .jp_09_43aa                                ;; 09:4447 $da $aa $43
    push BC                                            ;; 09:444a $c5
    call call_00_0ae3                                  ;; 09:444b $cd $e3 $0a
    pop  BC                                            ;; 09:444e $c1
    ld   A, B                                          ;; 09:444f $78
    ret                                                ;; 09:4450 $c9

call_09_4451:
    call call_09_437a                                  ;; 09:4451 $cd $7a $43
    ld   D, H                                          ;; 09:4454 $54
    ld   E, L                                          ;; 09:4455 $5d
    ld   HL, $08                                       ;; 09:4456 $21 $08 $00
    add  HL, DE                                        ;; 09:4459 $19
    ld   E, [HL]                                       ;; 09:445a $5e
    inc  HL                                            ;; 09:445b $23
    ld   D, [HL]                                       ;; 09:445c $56
    ret                                                ;; 09:445d $c9

call_09_445e:
    call call_09_4451                                  ;; 09:445e $cd $51 $44
    ld   HL, $02                                       ;; 09:4461 $21 $02 $00
    add  HL, DE                                        ;; 09:4464 $19
    ld   A, [HL]                                       ;; 09:4465 $7e
    ret                                                ;; 09:4466 $c9

call_09_4467:
    call call_09_4451                                  ;; 09:4467 $cd $51 $44
    ld   HL, $03                                       ;; 09:446a $21 $03 $00
    add  HL, DE                                        ;; 09:446d $19
    ld   A, [HL]                                       ;; 09:446e $7e
    ret                                                ;; 09:446f $c9

call_09_4470:
    call call_09_4451                                  ;; 09:4470 $cd $51 $44
    ld   HL, $04                                       ;; 09:4473 $21 $04 $00
    add  HL, DE                                        ;; 09:4476 $19
    ld   A, [HL]                                       ;; 09:4477 $7e
    ret                                                ;; 09:4478 $c9

INCLUDE "data/projectiles.asm"

;@gfximg name=boss/julius width=2 height=16
bossGfxJulius:
    INCBIN "boss/julius.bin"                           ;; 09:4900
    db   $fb, $9f, $fd, $cf, $32, $ff, $0f, $ff        ;; 09:4b00 ????????
    db   $07, $ff, $86, $7b, $fe, $87, $fc, $ff        ;; 09:4b08 ????????
    db   $f9, $f9, $f0, $f0, $e1, $e1, $c0, $c0        ;; 09:4b10 ????????
    db   $c1, $c1, $c3, $c3, $e2, $e3, $f7, $f4        ;; 09:4b18 ????????
    db   $3f, $fd, $ff, $ef, $7f, $eb, $af, $f9        ;; 09:4b20 ????????
    db   $76, $bf, $f8, $df, $3d, $ef, $9c, $7f        ;; 09:4b28 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4b30 ????????
    db   $00, $00, $00, $00, $02, $02, $03, $03        ;; 09:4b38 ????????
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 09:4b40 ????????
    db   $01, $01, $03, $02, $03, $02, $03, $02        ;; 09:4b48 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4b50 ????????
    db   $00, $00, $80, $80, $80, $80, $81, $81        ;; 09:4b58 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4b60 ????????
    db   $00, $00, $00, $00, $80, $80, $80, $80        ;; 09:4b68 ????????
    db   $03, $03, $03, $02, $03, $02, $82, $83        ;; 09:4b70 ????????
    db   $c1, $c1, $e1, $a1, $71, $51, $59, $69        ;; 09:4b78 ????????
    db   $03, $02, $83, $82, $83, $82, $c4, $47        ;; 09:4b80 ????????
    db   $c4, $47, $64, $a7, $64, $a7, $34, $d7        ;; 09:4b88 ????????
    db   $81, $81, $83, $82, $83, $82, $c5, $46        ;; 09:4b90 ????????
    db   $c5, $47, $cb, $4d, $cb, $4d, $d3, $5d        ;; 09:4b98 ????????
    db   $80, $80, $80, $80, $80, $80, $82, $82        ;; 09:4ba0 ????????
    db   $06, $06, $0e, $0a, $1c, $14, $2c, $34        ;; 09:4ba8 ????????
    db   $2c, $34, $26, $3a, $13, $1d, $12, $1f        ;; 09:4bb0 ????????
    db   $08, $0f, $08, $0f, $10, $1f, $27, $3f        ;; 09:4bb8 ????????
    db   $b5, $d7, $a8, $ff, $80, $ff, $00, $ff        ;; 09:4bc0 ????????
    db   $40, $ff, $23, $fc, $27, $f8, $10, $ff        ;; 09:4bc8 ????????
    db   $56, $da, $2e, $fa, $03, $ff, $00, $ff        ;; 09:4bd0 ????????
    db   $00, $ff, $f0, $0f, $fc, $03, $1f, $e0        ;; 09:4bd8 ????????
    db   $58, $68, $98, $e8, $31, $d1, $73, $d3        ;; 09:4be0 ????????
    db   $27, $e5, $1a, $fe, $06, $fa, $04, $fc        ;; 09:4be8 ????????
    db   $2e, $39, $57, $78, $57, $7f, $9f, $fc        ;; 09:4bf0 ????????
    db   $9f, $fc, $8f, $ff, $70, $7f, $0f, $0f        ;; 09:4bf8 ????????
    db   $90, $ff, $50, $ff, $49, $ff, $cb, $fe        ;; 09:4c00 ????????
    db   $8e, $fd, $0c, $fb, $0f, $f8, $ff, $ff        ;; 09:4c08 ????????
    db   $03, $fc, $40, $ff, $80, $ff, $80, $ff        ;; 09:4c10 ????????
    db   $80, $ff, $60, $ff, $c0, $7f, $ff, $ff        ;; 09:4c18 ????????
    db   $84, $7c, $c2, $3e, $e2, $1e, $61, $9f        ;; 09:4c20 ????????
    db   $31, $cf, $31, $cf, $2e, $de, $f0, $f0        ;; 09:4c28 ????????
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 09:4c30 ????????
    db   $01, $01, $03, $02, $03, $02, $03, $02        ;; 09:4c38 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4c40 ????????
    db   $00, $00, $80, $80, $80, $80, $80, $80        ;; 09:4c48 ????????
    db   $03, $02, $03, $02, $03, $02, $04, $07        ;; 09:4c50 ????????
    db   $04, $07, $04, $07, $05, $07, $05, $07        ;; 09:4c58 ????????
    db   $80, $80, $80, $80, $80, $80, $c0, $40        ;; 09:4c60 ????????
    db   $c0, $40, $c0, $40, $c0, $40, $c0, $40        ;; 09:4c68 ????????
    db   $07, $06, $0b, $0e, $0b, $0e, $16, $1d        ;; 09:4c70 ????????
    db   $16, $1d, $16, $1d, $23, $3f, $21, $3e        ;; 09:4c78 ????????
    db   $c0, $c0, $a0, $e0, $a0, $e0, $50, $f0        ;; 09:4c80 ????????
    db   $50, $f0, $50, $f0, $88, $f8, $08, $f8        ;; 09:4c88 ????????
    db   $59, $7e, $75, $4e, $7d, $76, $7d, $4e        ;; 09:4c90 ????????
    db   $7d, $5e, $39, $3e, $10, $1f, $0f, $0f        ;; 09:4c98 ????????
    db   $34, $fc, $7c, $c4, $7c, $dc, $7c, $e4        ;; 09:4ca0 ????????
    db   $7c, $f4, $38, $f8, $10, $f0, $e0, $e0        ;; 09:4ca8 ????????
    db   $41, $7f, $43, $7e, $43, $7e, $41, $7f        ;; 09:4cb0 ????????
    db   $41, $7e, $21, $3e, $18, $1f, $07, $07        ;; 09:4cb8 ????????
    db   $04, $fc, $84, $fc, $84, $fc, $04, $fc        ;; 09:4cc0 ????????
    db   $04, $fc, $08, $f8, $30, $f0, $c0, $c0        ;; 09:4cc8 ????????

;@gfximg name=boss/hydra width=2 height=24
gfxBossHydra:
    INCBIN "boss/hydra.bin"                            ;; 09:4cd0
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4fd0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4fd8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4fe0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4fe8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4ff0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:4ff8 ????????

;@gfximg name=npc/follower/girl width=2 height=8
gfxNpcGirl:
    INCBIN "npc/follower/girl.bin"                     ;; 09:5000

data_09_5100:
    dw   `00033333                                     ;; 09:5100 $1f $1f
    dw   `00322222                                     ;; 09:5102 $20 $3f
    dw   `00032323                                     ;; 09:5104 $15 $1f
    dw   `00003111                                     ;; 09:5106 $0f $08
    dw   `00003111                                     ;; 09:5108 $0f $08
    dw   `00003331                                     ;; 09:510a $0f $0e
    dw   `00333131                                     ;; 09:510c $3f $3a
    dw   `03132311                                     ;; 09:510e $77 $5c

    dw   `33300000                                     ;; 09:5110 $e0 $e0
    dw   `22230000                                     ;; 09:5112 $10 $f0
    dw   `32223000                                     ;; 09:5114 $88 $f8
    dw   `11323000                                     ;; 09:5116 $e8 $38
    dw   `11323300                                     ;; 09:5118 $ec $3c
    dw   `33132230                                     ;; 09:511a $f2 $de
    dw   `13133323                                     ;; 09:511c $fd $5f
    dw   `11323130                                     ;; 09:511e $ee $3a

    dw   `31132333                                     ;; 09:5120 $f7 $9f
    dw   `32232231                                     ;; 09:5122 $93 $fe
    dw   `31133223                                     ;; 09:5124 $f9 $9f
    dw   `03303322                                     ;; 09:5126 $6c $6f
    dw   `00003222                                     ;; 09:5128 $08 $0f
    dw   `00003222                                     ;; 09:512a $08 $0f
    dw   `00000322                                     ;; 09:512c $04 $07
    dw   `00003333                                     ;; 09:512e $0f $0f

    dw   `33331113                                     ;; 09:5130 $ff $f1
    dw   `13233213                                     ;; 09:5132 $db $7d
    dw   `32311330                                     ;; 09:5134 $be $e6
    dw   `22311300                                     ;; 09:5136 $3c $e4
    dw   `33333300                                     ;; 09:5138 $fc $fc
    dw   `32230000                                     ;; 09:513a $90 $f0
    dw   `33300000                                     ;; 09:513c $e0 $e0
    dw   `33333300                                     ;; 09:513e $fc $fc

    dw   `00000333                                     ;; 09:5140 $07 $07
    dw   `00003222                                     ;; 09:5142 $08 $0f
    dw   `00032222                                     ;; 09:5144 $10 $1f
    dw   `00032222                                     ;; 09:5146 $10 $1f
    dw   `00032222                                     ;; 09:5148 $10 $1f
    dw   `00033223                                     ;; 09:514a $19 $1f
    dw   `00333133                                     ;; 09:514c $3f $3b
    dw   `03132332                                     ;; 09:514e $76 $5f

    dw   `33333000                                     ;; 09:5150 $f8 $f8
    dw   `22222300                                     ;; 09:5152 $04 $fc
    dw   `22223000                                     ;; 09:5154 $08 $f8
    dw   `22223000                                     ;; 09:5156 $08 $f8
    dw   `22223000                                     ;; 09:5158 $08 $f8
    dw   `32230000                                     ;; 09:515a $90 $f0
    dw   `33133300                                     ;; 09:515c $fc $dc
    dw   `23323130                                     ;; 09:515e $6e $fa

    dw   `31132232                                     ;; 09:5160 $f2 $9f
    dw   `32132232                                     ;; 09:5162 $b2 $df
    dw   `03333223                                     ;; 09:5164 $79 $7f
    dw   `00003222                                     ;; 09:5166 $08 $0f
    dw   `00003222                                     ;; 09:5168 $08 $0f
    dw   `00003222                                     ;; 09:516a $08 $0f
    dw   `00000322                                     ;; 09:516c $04 $07
    dw   `00003333                                     ;; 09:516e $0f $0f

    dw   `32231113                                     ;; 09:5170 $9f $f1
    dw   `32231113                                     ;; 09:5172 $9f $f1
    dw   `22233223                                     ;; 09:5174 $19 $ff
    dw   `22333113                                     ;; 09:5176 $3f $f9
    dw   `33333330                                     ;; 09:5178 $fe $fe
    dw   `32230000                                     ;; 09:517a $90 $f0
    dw   `33300000                                     ;; 09:517c $e0 $e0
    dw   `33333300                                     ;; 09:517e $fc $fc

    dw   `00333333                                     ;; 09:5180 $3f $3f
    dw   `00322222                                     ;; 09:5182 $20 $3f
    dw   `00032323                                     ;; 09:5184 $15 $1f
    dw   `00003111                                     ;; 09:5186 $0f $08
    dw   `00003111                                     ;; 09:5188 $0f $08
    dw   `00003133                                     ;; 09:518a $0f $0b
    dw   `00003131                                     ;; 09:518c $0f $0a
    dw   `00003111                                     ;; 09:518e $0f $08

    dw   `33300000                                     ;; 09:5190 $e0 $e0
    dw   `22230000                                     ;; 09:5192 $10 $f0
    dw   `22223000                                     ;; 09:5194 $08 $f8
    dw   `32223000                                     ;; 09:5196 $88 $f8
    dw   `33223000                                     ;; 09:5198 $c8 $f8
    dw   `31333000                                     ;; 09:519a $f8 $b8
    dw   `11332300                                     ;; 09:519c $f4 $3c
    dw   `13332230                                     ;; 09:519e $f2 $7e

    dw   `00000333                                     ;; 09:51a0 $07 $07
    dw   `00003132                                     ;; 09:51a2 $0e $0b
    dw   `00003322                                     ;; 09:51a4 $0c $0f
    dw   `00003223                                     ;; 09:51a6 $09 $0f
    dw   `00000323                                     ;; 09:51a8 $05 $07
    dw   `00000032                                     ;; 09:51aa $02 $03
    dw   `00000322                                     ;; 09:51ac $04 $07
    dw   `00000333                                     ;; 09:51ae $07 $07

    dw   `33133230                                     ;; 09:51b0 $fa $de
    dw   `31113300                                     ;; 09:51b2 $fc $8c
    dw   `32213000                                     ;; 09:51b4 $98 $e8
    dw   `11213000                                     ;; 09:51b6 $d8 $28
    dw   `11230000                                     ;; 09:51b8 $d0 $30
    dw   `33300000                                     ;; 09:51ba $e0 $e0
    dw   `22300000                                     ;; 09:51bc $20 $e0
    dw   `33300000                                     ;; 09:51be $e0 $e0

    dw   `00000000                                     ;; 09:51c0 $00 $00
    dw   `00333333                                     ;; 09:51c2 $3f $3f
    dw   `00322222                                     ;; 09:51c4 $20 $3f
    dw   `00032323                                     ;; 09:51c6 $15 $1f
    dw   `00003111                                     ;; 09:51c8 $0f $08
    dw   `00003111                                     ;; 09:51ca $0f $08
    dw   `00003133                                     ;; 09:51cc $0f $0b
    dw   `00003131                                     ;; 09:51ce $0f $0a

    dw   `00000000                                     ;; 09:51d0 $00 $00
    dw   `33300000                                     ;; 09:51d2 $e0 $e0
    dw   `22230000                                     ;; 09:51d4 $10 $f0
    dw   `22223000                                     ;; 09:51d6 $08 $f8
    dw   `32223000                                     ;; 09:51d8 $88 $f8
    dw   `33223000                                     ;; 09:51da $c8 $f8
    dw   `31333300                                     ;; 09:51dc $fc $bc
    dw   `11332230                                     ;; 09:51de $f2 $3e

    dw   `00003111                                     ;; 09:51e0 $0f $08
    dw   `00003333                                     ;; 09:51e2 $0f $0f
    dw   `00033132                                     ;; 09:51e4 $1e $1b
    dw   `00313322                                     ;; 09:51e6 $3c $2f
    dw   `00313322                                     ;; 09:51e8 $3c $2f
    dw   `00032222                                     ;; 09:51ea $10 $1f
    dw   `00033222                                     ;; 09:51ec $18 $1f
    dw   `00000323                                     ;; 09:51ee $05 $07

    dw   `13333323                                     ;; 09:51f0 $fd $7f
    dw   `32311333                                     ;; 09:51f2 $bf $e7
    dw   `22311130                                     ;; 09:51f4 $3e $e2
    dw   `22312230                                     ;; 09:51f6 $32 $ee
    dw   `33231130                                     ;; 09:51f8 $de $f2
    dw   `22331130                                     ;; 09:51fa $3e $f2
    dw   `33223300                                     ;; 09:51fc $cc $fc
    dw   `33233000                                     ;; 09:51fe $d8 $f8


data_09_5200:
    dw   `00000033                                     ;; 09:5200 $03 $03
    dw   `00000311                                     ;; 09:5202 $07 $04
    dw   `00003113                                     ;; 09:5204 $0f $09
    dw   `00031132                                     ;; 09:5206 $1e $13
    dw   `00031111                                     ;; 09:5208 $1f $10
    dw   `00311333                                     ;; 09:520a $3f $27
    dw   `00313232                                     ;; 09:520c $3a $2f
    dw   `03223313                                     ;; 09:520e $4f $7d

    dw   `33000000                                     ;; 09:5210 $c0 $c0
    dw   `11300000                                     ;; 09:5212 $e0 $20
    dw   `31130000                                     ;; 09:5214 $f0 $90
    dw   `23113000                                     ;; 09:5216 $78 $c8
    dw   `31113000                                     ;; 09:5218 $f8 $88
    dw   `23311300                                     ;; 09:521a $7c $e4
    dw   `23233300                                     ;; 09:521c $5c $fc
    dw   `31332230                                     ;; 09:521e $f2 $be

    dw   `03332311                                     ;; 09:5220 $77 $7c
    dw   `31123231                                     ;; 09:5222 $eb $9e
    dw   `31133323                                     ;; 09:5224 $fd $9f
    dw   `33333333                                     ;; 09:5226 $ff $ff
    dw   `32333133                                     ;; 09:5228 $bf $fb
    dw   `32333223                                     ;; 09:522a $b9 $ff
    dw   `03000333                                     ;; 09:522c $47 $47
    dw   `33333333                                     ;; 09:522e $ff $ff

    dw   `11323330                                     ;; 09:5230 $ee $3e
    dw   `13233233                                     ;; 09:5232 $db $7f
    dw   `32333313                                     ;; 09:5234 $bf $fd
    dw   `33133230                                     ;; 09:5236 $fa $de
    dw   `11333230                                     ;; 09:5238 $fa $3e
    dw   `33233230                                     ;; 09:523a $da $fe
    dw   `22303230                                     ;; 09:523c $2a $ee
    dw   `33333333                                     ;; 09:523e $ff $ff

    dw   `00000033                                     ;; 09:5240 $03 $03
    dw   `00000313                                     ;; 09:5242 $07 $05
    dw   `00003121                                     ;; 09:5244 $0d $0a
    dw   `00031213                                     ;; 09:5246 $1b $15
    dw   `00031211                                     ;; 09:5248 $1b $14
    dw   `00031211                                     ;; 09:524a $1b $14
    dw   `03311111                                     ;; 09:524c $7f $60
    dw   `32223113                                     ;; 09:524e $8f $f9

    dw   `33000000                                     ;; 09:5250 $c0 $c0
    dw   `11300000                                     ;; 09:5252 $e0 $20
    dw   `31130000                                     ;; 09:5254 $f0 $90
    dw   `11113000                                     ;; 09:5256 $f8 $08
    dw   `11113000                                     ;; 09:5258 $f8 $08
    dw   `11111300                                     ;; 09:525a $fc $04
    dw   `11111300                                     ;; 09:525c $fc $04
    dw   `11132230                                     ;; 09:525e $f2 $1e

    dw   `03232313                                     ;; 09:5260 $57 $7d
    dw   `31322231                                     ;; 09:5262 $e3 $be
    dw   `33222223                                     ;; 09:5264 $c1 $ff
    dw   `32222222                                     ;; 09:5266 $80 $ff
    dw   `32222222                                     ;; 09:5268 $80 $ff
    dw   `32233223                                     ;; 09:526a $99 $ff
    dw   `32333322                                     ;; 09:526c $bc $ff
    dw   `33333333                                     ;; 09:526e $ff $ff

    dw   `11323330                                     ;; 09:5270 $ee $3e
    dw   `31223113                                     ;; 09:5272 $cf $b9
    dw   `32232313                                     ;; 09:5274 $97 $fd
    dw   `22222233                                     ;; 09:5276 $03 $ff
    dw   `23322223                                     ;; 09:5278 $61 $ff
    dw   `32222223                                     ;; 09:527a $81 $ff
    dw   `22222230                                     ;; 09:527c $02 $fe
    dw   `33333333                                     ;; 09:527e $ff $ff

    dw   `00003333                                     ;; 09:5280 $0f $0f
    dw   `00031111                                     ;; 09:5282 $1f $10
    dw   `00313111                                     ;; 09:5284 $3f $28
    dw   `03132311                                     ;; 09:5286 $77 $5c
    dw   `03131131                                     ;; 09:5288 $7f $52
    dw   `00313323                                     ;; 09:528a $3d $2f
    dw   `00032321                                     ;; 09:528c $15 $1e
    dw   `00032113                                     ;; 09:528e $17 $19

    dw   `30000000                                     ;; 09:5290 $80 $80
    dw   `13000000                                     ;; 09:5292 $c0 $40
    dw   `11300000                                     ;; 09:5294 $e0 $20
    dw   `11130000                                     ;; 09:5296 $f0 $10
    dw   `11130000                                     ;; 09:5298 $f0 $10
    dw   `11113000                                     ;; 09:529a $f8 $08
    dw   `31113000                                     ;; 09:529c $f8 $88
    dw   `33313000                                     ;; 09:529e $f8 $e8

    dw   `00311113                                     ;; 09:52a0 $3f $21
    dw   `00311132                                     ;; 09:52a2 $3e $23
    dw   `00313331                                     ;; 09:52a4 $3f $2e
    dw   `00033231                                     ;; 09:52a6 $1b $1e
    dw   `00000313                                     ;; 09:52a8 $07 $05
    dw   `00000322                                     ;; 09:52aa $04 $07
    dw   `00003222                                     ;; 09:52ac $08 $0f
    dw   `00333333                                     ;; 09:52ae $3f $3f

    dw   `31132300                                     ;; 09:52b0 $f4 $9c
    dw   `31132300                                     ;; 09:52b2 $f4 $9c
    dw   `12132300                                     ;; 09:52b4 $b4 $5c
    dw   `12332300                                     ;; 09:52b6 $b4 $7c
    dw   `33032300                                     ;; 09:52b8 $d4 $dc
    dw   `23032230                                     ;; 09:52ba $52 $de
    dw   `23032223                                     ;; 09:52bc $51 $df
    dw   `33333333                                     ;; 09:52be $ff $ff

    dw   `00000000                                     ;; 09:52c0 $00 $00
    dw   `00003333                                     ;; 09:52c2 $0f $0f
    dw   `00331111                                     ;; 09:52c4 $3f $30
    dw   `03113311                                     ;; 09:52c6 $7f $4c
    dw   `31332331                                     ;; 09:52c8 $f7 $be
    dw   `03131131                                     ;; 09:52ca $7f $52
    dw   `00313323                                     ;; 09:52cc $3d $2f
    dw   `00032321                                     ;; 09:52ce $15 $1e

    dw   `00000000                                     ;; 09:52d0 $00 $00
    dw   `30000000                                     ;; 09:52d2 $80 $80
    dw   `13000000                                     ;; 09:52d4 $c0 $40
    dw   `11300000                                     ;; 09:52d6 $e0 $20
    dw   `11133000                                     ;; 09:52d8 $f8 $18
    dw   `11111300                                     ;; 09:52da $fc $04
    dw   `31113130                                     ;; 09:52dc $fe $8a
    dw   `32331300                                     ;; 09:52de $bc $f4

    dw   `00032113                                     ;; 09:52e0 $17 $19
    dw   `00311113                                     ;; 09:52e2 $3f $21
    dw   `03111132                                     ;; 09:52e4 $7e $43
    dw   `03133322                                     ;; 09:52e6 $7c $5f
    dw   `00333212                                     ;; 09:52e8 $3a $3d
    dw   `00322223                                     ;; 09:52ea $21 $3f
    dw   `00032233                                     ;; 09:52ec $13 $1f
    dw   `03333333                                     ;; 09:52ee $7f $7f

    dw   `23113230                                     ;; 09:52f0 $7a $ce
    dw   `31111330                                     ;; 09:52f2 $fe $86
    dw   `23221323                                     ;; 09:52f4 $4d $f7
    dw   `31123223                                     ;; 09:52f6 $e9 $9f
    dw   `31133223                                     ;; 09:52f8 $f9 $9f
    dw   `33323230                                     ;; 09:52fa $ea $fe
    dw   `32233300                                     ;; 09:52fc $9c $fc
    dw   `33333333                                     ;; 09:52fe $ff $ff


data_09_5300:
    db   $07, $07, $0f, $0f, $0f, $0f, $0f, $0f        ;; 09:5300 ????????
    db   $1f, $1e, $5f, $5e, $ff, $ba, $f7, $8c        ;; 09:5308 ????????
    db   $e0, $e0, $f0, $f0, $f0, $b0, $30, $f0        ;; 09:5310 ????????
    db   $f0, $30, $f2, $f2, $ff, $5d, $ef, $31        ;; 09:5318 ????????
    db   $6b, $5f, $b4, $fb, $d9, $bf, $ff, $be        ;; 09:5320 ????????
    db   $f8, $ff, $bb, $ff, $ac, $ef, $4c, $4f        ;; 09:5328 ????????
    db   $d7, $ff, $2f, $d9, $9f, $f9, $ff, $7f        ;; 09:5330 ????????
    db   $9f, $ff, $dd, $ff, $b5, $f7, $fa, $fa        ;; 09:5338 ????????
    db   $03, $03, $06, $07, $0d, $0f, $0f, $0f        ;; 09:5340 ????????
    db   $0f, $0f, $4f, $4f, $ff, $bf, $ff, $8f        ;; 09:5348 ????????
    db   $c0, $c0, $60, $e0, $f0, $f0, $f0, $f0        ;; 09:5350 ????????
    db   $f0, $f0, $f2, $f2, $ff, $fd, $ff, $f1        ;; 09:5358 ????????
    db   $4f, $7f, $77, $7f, $42, $7f, $84, $ff        ;; 09:5360 ????????
    db   $80, $ff, $98, $ff, $be, $ff, $ff, $ff        ;; 09:5368 ????????
    db   $fa, $fe, $be, $fe, $d9, $ff, $51, $ff        ;; 09:5370 ????????
    db   $41, $ff, $81, $ff, $06, $fe, $ff, $ff        ;; 09:5378 ????????
    db   $1f, $1f, $7f, $7f, $7f, $7b, $f3, $ff        ;; 09:5380 ????????
    db   $ff, $f2, $bf, $ae, $bf, $a9, $3e, $23        ;; 09:5388 ????????
    db   $00, $00, $80, $80, $c0, $c0, $c0, $c0        ;; 09:5390 ????????
    db   $e0, $e0, $f0, $f0, $f8, $b8, $f8, $18        ;; 09:5398 ????????
    db   $1d, $1e, $33, $3f, $2d, $3f, $3c, $33        ;; 09:53a0 ????????
    db   $1f, $13, $0e, $0f, $08, $0f, $10, $1f        ;; 09:53a8 ????????
    db   $fc, $fc, $64, $e4, $50, $f0, $d0, $f0        ;; 09:53b0 ????????
    db   $68, $f8, $a8, $f8, $f4, $fc, $f4, $fc        ;; 09:53b8 ????????
    db   $00, $00, $1f, $1f, $7f, $7f, $7f, $7b        ;; 09:53c0 ????????
    db   $f3, $ff, $ff, $f2, $bf, $ae, $bf, $a9        ;; 09:53c8 ????????
    db   $00, $00, $00, $00, $80, $80, $c0, $c0        ;; 09:53d0 ????????
    db   $c0, $c0, $e0, $e0, $f8, $f8, $fc, $bc        ;; 09:53d8 ????????
    db   $3e, $23, $1d, $1e, $23, $3f, $3a, $2f        ;; 09:53e0 ????????
    db   $17, $1f, $69, $7f, $45, $7f, $27, $3f        ;; 09:53e8 ????????
    db   $fe, $1e, $f2, $f2, $50, $f0, $28, $f8        ;; 09:53f0 ????????
    db   $e4, $3c, $f2, $3e, $d3, $ff, $39, $ff        ;; 09:53f8 ????????

data_09_5400:
    db   $13, $13, $3f, $2f, $7f, $5f, $7f, $47        ;; 09:5400 ????????
    db   $3f, $28, $1f, $17, $3f, $2d, $1f, $1d        ;; 09:5408 ????????
    db   $c8, $48, $fc, $74, $fe, $7a, $fe, $72        ;; 09:5410 ????????
    db   $fc, $14, $f8, $e8, $fc, $b4, $f8, $b8        ;; 09:5418 ????????
    db   $6f, $5b, $e7, $9c, $f7, $9e, $f5, $bf        ;; 09:5420 ????????
    db   $5f, $5b, $10, $1f, $08, $0f, $0f, $0f        ;; 09:5428 ????????
    db   $f4, $dc, $ec, $3c, $de, $72, $9e, $f2        ;; 09:5430 ????????
    db   $fc, $fc, $88, $f8, $f0, $f0, $fc, $fc        ;; 09:5438 ????????
    db   $13, $13, $3f, $2f, $7f, $5f, $7f, $4f        ;; 09:5440 ????????
    db   $3f, $2f, $1f, $1f, $3f, $27, $1f, $11        ;; 09:5448 ????????
    db   $c8, $48, $fc, $74, $fe, $7a, $fe, $72        ;; 09:5450 ????????
    db   $fc, $74, $f8, $78, $fc, $64, $fe, $0e        ;; 09:5458 ????????
    db   $3f, $2c, $77, $4f, $74, $5f, $34, $3f        ;; 09:5460 ????????
    db   $1f, $1b, $10, $1f, $08, $0f, $0f, $0f        ;; 09:5468 ????????
    db   $f6, $3a, $ef, $f1, $2f, $f1, $2f, $f9        ;; 09:5470 ????????
    db   $fe, $fe, $88, $f8, $f8, $f8, $fc, $fc        ;; 09:5478 ????????
    db   $07, $07, $0f, $0b, $1f, $17, $1f, $17        ;; 09:5480 ????????
    db   $3f, $21, $1f, $1e, $0f, $0b, $0f, $0b        ;; 09:5488 ????????
    db   $c0, $c0, $f0, $f0, $f8, $f8, $f8, $e8        ;; 09:5490 ????????
    db   $f8, $88, $f0, $90, $e8, $78, $fc, $84        ;; 09:5498 ????????
    db   $0f, $0e, $1f, $11, $3f, $23, $3f, $2e        ;; 09:54a0 ????????
    db   $1b, $1e, $07, $07, $04, $07, $0f, $0f        ;; 09:54a8 ????????
    db   $98, $f8, $68, $f8, $f0, $90, $f0, $50        ;; 09:54b0 ????????
    db   $e0, $60, $a0, $e0, $20, $e0, $f0, $f0        ;; 09:54b8 ????????
    db   $00, $00, $07, $07, $0f, $0b, $1f, $17        ;; 09:54c0 ????????
    db   $1f, $17, $3f, $21, $1f, $1e, $0f, $0b        ;; 09:54c8 ????????
    db   $00, $00, $c0, $c0, $f0, $f0, $f8, $f8        ;; 09:54d0 ????????
    db   $f8, $e8, $f8, $88, $f0, $90, $e8, $78        ;; 09:54d8 ????????
    db   $0f, $0b, $0f, $0e, $1f, $11, $3e, $23        ;; 09:54e0 ????????
    db   $3c, $2f, $1e, $1b, $27, $3d, $13, $1f        ;; 09:54e8 ????????
    db   $fc, $84, $98, $f8, $78, $c8, $7c, $d4        ;; 09:54f0 ????????
    db   $3c, $e4, $78, $d8, $e4, $bc, $c8, $f8        ;; 09:54f8 ????????

data_09_5500:
    dw   `00000033                                     ;; 09:5500 $03 $03
    dw   `00003333                                     ;; 09:5502 $0f $0f
    dw   `00033333                                     ;; 09:5504 $1f $1f
    dw   `00323331                                     ;; 09:5506 $2f $3e
    dw   `03332231                                     ;; 09:5508 $73 $7e
    dw   `33333312                                     ;; 09:550a $fe $fd
    dw   `03333131                                     ;; 09:550c $7f $7a
    dw   `00033131                                     ;; 09:550e $1f $1a

    dw   `33000000                                     ;; 09:5510 $c0 $c0
    dw   `33330000                                     ;; 09:5512 $f0 $f0
    dw   `33330000                                     ;; 09:5514 $f0 $f0
    dw   `33323000                                     ;; 09:5516 $e8 $f8
    dw   `13233000                                     ;; 09:5518 $d8 $78
    dw   `21333000                                     ;; 09:551a $78 $b8
    dw   `13130000                                     ;; 09:551c $f0 $50
    dw   `13133000                                     ;; 09:551e $f8 $58

    dw   `00322311                                     ;; 09:5520 $27 $3c
    dw   `03133133                                     ;; 09:5522 $7f $5b
    dw   `32113211                                     ;; 09:5524 $bb $cc
    dw   `31332323                                     ;; 09:5526 $f5 $bf
    dw   `03303133                                     ;; 09:5528 $6f $6b
    dw   `00003222                                     ;; 09:552a $08 $0f
    dw   `00000311                                     ;; 09:552c $07 $04
    dw   `00003333                                     ;; 09:552e $0f $0f

    dw   `11322300                                     ;; 09:5530 $e4 $3c
    dw   `33133300                                     ;; 09:5532 $fc $dc
    dw   `11311300                                     ;; 09:5534 $fc $24
    dw   `32311300                                     ;; 09:5536 $bc $e4
    dw   `22233000                                     ;; 09:5538 $18 $f8
    dw   `31330000                                     ;; 09:553a $f0 $b0
    dw   `33300000                                     ;; 09:553c $e0 $e0
    dw   `33330000                                     ;; 09:553e $f0 $f0

    dw   `00000033                                     ;; 09:5540 $03 $03
    dw   `00003333                                     ;; 09:5542 $0f $0f
    dw   `00003233                                     ;; 09:5544 $0b $0f
    dw   `00033232                                     ;; 09:5546 $1a $1f
    dw   `00033333                                     ;; 09:5548 $1f $1f
    dw   `00033333                                     ;; 09:554a $1f $1f
    dw   `00003333                                     ;; 09:554c $0f $0f
    dw   `00033333                                     ;; 09:554e $1f $1f

    dw   `33000000                                     ;; 09:5550 $c0 $c0
    dw   `33330000                                     ;; 09:5552 $f0 $f0
    dw   `33333000                                     ;; 09:5554 $f8 $f8
    dw   `33333330                                     ;; 09:5556 $fe $fe
    dw   `33333300                                     ;; 09:5558 $fc $fc
    dw   `33333300                                     ;; 09:555a $fc $fc
    dw   `33333000                                     ;; 09:555c $f8 $f8
    dw   `33333000                                     ;; 09:555e $f8 $f8

    dw   `00322313                                     ;; 09:5560 $27 $3d
    dw   `00333221                                     ;; 09:5562 $39 $3e
    dw   `03113222                                     ;; 09:5564 $78 $4f
    dw   `31213323                                     ;; 09:5566 $dd $af
    dw   `31133133                                     ;; 09:5568 $ff $9b
    dw   `03303222                                     ;; 09:556a $68 $6f
    dw   `00000311                                     ;; 09:556c $07 $04
    dw   `00003333                                     ;; 09:556e $0f $0f

    dw   `31322300                                     ;; 09:5570 $e4 $bc
    dw   `12233000                                     ;; 09:5572 $98 $78
    dw   `22231300                                     ;; 09:5574 $1c $f4
    dw   `32311300                                     ;; 09:5576 $bc $e4
    dw   `22233000                                     ;; 09:5578 $18 $f8
    dw   `31330000                                     ;; 09:557a $f0 $b0
    dw   `33300000                                     ;; 09:557c $e0 $e0
    dw   `33330000                                     ;; 09:557e $f0 $f0

    dw   `00003333                                     ;; 09:5580 $0f $0f
    dw   `00033333                                     ;; 09:5582 $1f $1f
    dw   `00331333                                     ;; 09:5584 $3f $37
    dw   `00331322                                     ;; 09:5586 $3c $37
    dw   `00332133                                     ;; 09:5588 $37 $3b
    dw   `00031313                                     ;; 09:558a $1f $15
    dw   `00031311                                     ;; 09:558c $1f $14
    dw   `00031111                                     ;; 09:558e $1f $10

    dw   `33000000                                     ;; 09:5590 $c0 $c0
    dw   `33300000                                     ;; 09:5592 $e0 $e0
    dw   `23300000                                     ;; 09:5594 $60 $e0
    dw   `33330000                                     ;; 09:5596 $f0 $f0
    dw   `33333000                                     ;; 09:5598 $f8 $f8
    dw   `13333300                                     ;; 09:559a $fc $7c
    dw   `13333000                                     ;; 09:559c $f8 $78
    dw   `33330000                                     ;; 09:559e $f0 $f0

    dw   `00003333                                     ;; 09:55a0 $0f $0f
    dw   `00031323                                     ;; 09:55a2 $1d $17
    dw   `00003231                                     ;; 09:55a4 $0b $0e
    dw   `00003231                                     ;; 09:55a6 $0b $0e
    dw   `00032313                                     ;; 09:55a8 $17 $1d
    dw   `00033322                                     ;; 09:55aa $1c $1f
    dw   `00000311                                     ;; 09:55ac $07 $04
    dw   `00000333                                     ;; 09:55ae $07 $07

    dw   `22230000                                     ;; 09:55b0 $10 $f0
    dw   `33300000                                     ;; 09:55b2 $e0 $e0
    dw   `21300000                                     ;; 09:55b4 $60 $a0
    dw   `13300000                                     ;; 09:55b6 $e0 $60
    dw   `33230000                                     ;; 09:55b8 $d0 $f0
    dw   `23230000                                     ;; 09:55ba $50 $f0
    dw   `33323000                                     ;; 09:55bc $e8 $f8
    dw   `33333000                                     ;; 09:55be $f8 $f8

    dw   `00000000                                     ;; 09:55c0 $00 $00
    dw   `00003333                                     ;; 09:55c2 $0f $0f
    dw   `00033333                                     ;; 09:55c4 $1f $1f
    dw   `00331333                                     ;; 09:55c6 $3f $37
    dw   `00331322                                     ;; 09:55c8 $3c $37
    dw   `00332133                                     ;; 09:55ca $37 $3b
    dw   `00031313                                     ;; 09:55cc $1f $15
    dw   `00031311                                     ;; 09:55ce $1f $14

    dw   `00000000                                     ;; 09:55d0 $00 $00
    dw   `33000000                                     ;; 09:55d2 $c0 $c0
    dw   `33300000                                     ;; 09:55d4 $e0 $e0
    dw   `23333000                                     ;; 09:55d6 $78 $f8
    dw   `33333330                                     ;; 09:55d8 $fe $fe
    dw   `33333300                                     ;; 09:55da $fc $fc
    dw   `13333300                                     ;; 09:55dc $fc $7c
    dw   `13333000                                     ;; 09:55de $f8 $78

    dw   `00031111                                     ;; 09:55e0 $1f $10
    dw   `00003333                                     ;; 09:55e2 $0f $0f
    dw   `00031323                                     ;; 09:55e4 $1d $17
    dw   `00003222                                     ;; 09:55e6 $08 $0f
    dw   `00032332                                     ;; 09:55e8 $16 $1f
    dw   `00312113                                     ;; 09:55ea $37 $29
    dw   `00031233                                     ;; 09:55ec $1b $17
    dw   `00333333                                     ;; 09:55ee $3f $3f

    dw   `33330000                                     ;; 09:55f0 $f0 $f0
    dw   `22230000                                     ;; 09:55f2 $10 $f0
    dw   `33330000                                     ;; 09:55f4 $f0 $f0
    dw   `32113000                                     ;; 09:55f6 $b8 $c8
    dw   `33113000                                     ;; 09:55f8 $f8 $c8
    dw   `11332300                                     ;; 09:55fa $f4 $3c
    dw   `32133230                                     ;; 09:55fc $ba $de
    dw   `33333330                                     ;; 09:55fe $fe $fe


data_09_5600:
    db   $03, $03, $07, $07, $0f, $0f, $0b, $0f        ;; 09:5600 ????????
    db   $1c, $1f, $3f, $3e, $3f, $3a, $3f, $3a        ;; 09:5608 ????????
    db   $c0, $c0, $e0, $e0, $f0, $f0, $d8, $f8        ;; 09:5610 ????????
    db   $78, $f8, $fc, $fc, $fe, $5e, $fa, $5a        ;; 09:5618 ????????
    db   $27, $3c, $3b, $3f, $7c, $4f, $7a, $4b        ;; 09:5620 ????????
    db   $37, $37, $05, $07, $03, $03, $1f, $1f        ;; 09:5628 ????????
    db   $e4, $3c, $ce, $fa, $3b, $f5, $ef, $ed        ;; 09:5630 ????????
    db   $f2, $12, $90, $70, $20, $e0, $f8, $f8        ;; 09:5638 ????????
    db   $03, $03, $07, $07, $0f, $0f, $0b, $0f        ;; 09:5640 ????????
    db   $0c, $0f, $1f, $1f, $3f, $3f, $2f, $3f        ;; 09:5648 ????????
    db   $c0, $c0, $e0, $e0, $f0, $f0, $d0, $f0        ;; 09:5650 ????????
    db   $b0, $f0, $f8, $f8, $ec, $fc, $d4, $fc        ;; 09:5658 ????????
    db   $35, $3f, $39, $2f, $1c, $1f, $0b, $0f        ;; 09:5660 ????????
    db   $0e, $09, $0b, $0c, $04, $07, $1f, $1f        ;; 09:5668 ????????
    db   $4c, $f4, $1e, $f2, $6e, $ea, $a4, $e4        ;; 09:5670 ????????
    db   $60, $e0, $a0, $e0, $e0, $e0, $f8, $f8        ;; 09:5678 ????????
    db   $07, $07, $0f, $0f, $1f, $1f, $3c, $3f        ;; 09:5680 ????????
    db   $3f, $3b, $1f, $1f, $0f, $0a, $0f, $0a        ;; 09:5688 ????????
    db   $c0, $c0, $e0, $e0, $f0, $f0, $b0, $f0        ;; 09:5690 ????????
    db   $f0, $f0, $f8, $78, $fc, $7c, $dc, $fc        ;; 09:5698 ????????
    db   $0f, $09, $06, $07, $04, $07, $05, $07        ;; 09:56a0 ????????
    db   $03, $02, $02, $03, $04, $07, $3f, $3f        ;; 09:56a8 ????????
    db   $0c, $fc, $74, $fc, $f8, $c8, $f8, $a8        ;; 09:56b0 ????????
    db   $f0, $90, $60, $e0, $20, $e0, $f0, $f0        ;; 09:56b8 ????????
    db   $00, $00, $07, $07, $0f, $0f, $1f, $1f        ;; 09:56c0 ????????
    db   $3e, $3f, $3f, $3b, $1f, $1f, $0f, $0a        ;; 09:56c8 ????????
    db   $00, $00, $c0, $c0, $e0, $e0, $f0, $f0        ;; 09:56d0 ????????
    db   $50, $f0, $fc, $fc, $f8, $f8, $ff, $ff        ;; 09:56d8 ????????
    db   $0f, $0a, $0f, $09, $1e, $17, $1c, $17        ;; 09:56e0 ????????
    db   $0d, $0f, $13, $1c, $09, $0f, $1f, $1f        ;; 09:56e8 ????????
    db   $de, $fe, $08, $f8, $74, $fc, $f8, $c8        ;; 09:56f0 ????????
    db   $7c, $d4, $fc, $e4, $98, $f8, $fc, $fc        ;; 09:56f8 ????????

data_09_5700:
    db   $01, $01, $07, $06, $0c, $0b, $0d, $0b        ;; 09:5700 ????????
    db   $3f, $3a, $7f, $4b, $cd, $bf, $e2, $ff        ;; 09:5708 ????????
    db   $80, $80, $60, $e0, $10, $f0, $90, $f0        ;; 09:5710 ????????
    db   $dc, $7c, $de, $f2, $b3, $fd, $47, $ff        ;; 09:5718 ????????
    db   $d3, $bf, $d9, $bf, $e6, $e7, $f9, $9f        ;; 09:5720 ????????
    db   $ef, $af, $f9, $9f, $7f, $70, $1f, $1f        ;; 09:5728 ????????
    db   $cb, $ff, $99, $ff, $67, $e7, $e7, $e5        ;; 09:5730 ????????
    db   $9f, $f9, $f7, $f5, $ff, $f9, $fe, $fe        ;; 09:5738 ????????
    db   $01, $01, $07, $06, $0e, $09, $0c, $0b        ;; 09:5740 ????????
    db   $3c, $3b, $7e, $45, $c3, $be, $e1, $ff        ;; 09:5748 ????????
    db   $80, $80, $60, $e0, $10, $f0, $10, $f0        ;; 09:5750 ????????
    db   $1c, $fc, $3e, $e2, $43, $fd, $87, $ff        ;; 09:5758 ????????
    db   $d7, $bf, $d8, $bf, $e6, $e7, $f9, $9f        ;; 09:5760 ????????
    db   $ef, $af, $79, $7f, $1f, $10, $1f, $1f        ;; 09:5768 ????????
    db   $e9, $ff, $19, $ff, $67, $e7, $ef, $ed        ;; 09:5770 ????????
    db   $9f, $f9, $ff, $fd, $ff, $f9, $fe, $fe        ;; 09:5778 ????????
    db   $03, $03, $07, $04, $0c, $0b, $0e, $0f        ;; 09:5780 ????????
    db   $0e, $0b, $0e, $0f, $05, $07, $09, $0f        ;; 09:5788 ????????
    db   $c0, $c0, $20, $e0, $10, $f0, $10, $f0        ;; 09:5790 ????????
    db   $30, $f0, $f8, $c8, $8c, $f4, $1c, $fc        ;; 09:5798 ????????
    db   $0e, $0f, $08, $0f, $05, $07, $02, $03        ;; 09:57a0 ????????
    db   $03, $03, $06, $07, $0f, $08, $0f, $0f        ;; 09:57a8 ????????
    db   $34, $ec, $74, $ec, $e4, $fc, $f8, $98        ;; 09:57b0 ????????
    db   $f8, $c8, $f0, $90, $60, $e0, $e0, $e0        ;; 09:57b8 ????????
    db   $00, $00, $03, $03, $07, $04, $0c, $0b        ;; 09:57c0 ????????
    db   $0e, $0f, $0e, $0b, $0e, $0f, $05, $07        ;; 09:57c8 ????????
    db   $00, $00, $c0, $c0, $20, $e0, $10, $f0        ;; 09:57d0 ????????
    db   $10, $f0, $30, $f0, $f8, $c8, $8c, $f4        ;; 09:57d8 ????????
    db   $09, $0f, $0e, $0f, $08, $0f, $05, $07        ;; 09:57e0 ????????
    db   $02, $03, $1d, $1f, $38, $27, $1d, $1b        ;; 09:57e8 ????????
    db   $1c, $fc, $34, $ec, $7a, $f6, $9e, $fe        ;; 09:57f0 ????????
    db   $7f, $f9, $cf, $fd, $e7, $fd, $ff, $f7        ;; 09:57f8 ????????

data_09_5800:
    db   $0f, $0f, $10, $1f, $2c, $33, $3c, $2f        ;; 09:5800 ????????
    db   $3c, $2f, $10, $1f, $08, $0f, $04, $07        ;; 09:5808 ????????
    db   $c0, $c0, $20, $e0, $d0, $30, $f0, $d0        ;; 09:5810 ????????
    db   $f0, $d0, $20, $e0, $40, $c0, $80, $80        ;; 09:5818 ????????
    db   $07, $05, $1f, $18, $2f, $30, $2f, $30        ;; 09:5820 ????????
    db   $27, $38, $1b, $1f, $04, $04, $1f, $1f        ;; 09:5828 ????????
    db   $e0, $a0, $f0, $10, $e8, $18, $e4, $1c        ;; 09:5830 ????????
    db   $e4, $3c, $68, $d8, $dc, $74, $88, $f8        ;; 09:5838 ????????
    db   $07, $07, $0b, $0c, $17, $18, $17, $18        ;; 09:5840 ????????
    db   $17, $18, $13, $1c, $17, $1c, $0b, $0a        ;; 09:5848 ????????
    db   $f8, $f8, $fc, $04, $f8, $08, $fc, $04        ;; 09:5850 ????????
    db   $e8, $18, $f0, $10, $f0, $00, $c0, $40        ;; 09:5858 ????????
    db   $07, $06, $0f, $08, $17, $18, $27, $38        ;; 09:5860 ????????
    db   $27, $3c, $13, $1e, $0b, $0f, $11, $1f        ;; 09:5868 ????????
    db   $ce, $4e, $ff, $35, $fe, $02, $f4, $0c        ;; 09:5870 ????????
    db   $f4, $0c, $e4, $1c, $d8, $f8, $f0, $f0        ;; 09:5878 ????????
    db   $07, $07, $18, $1f, $26, $39, $4e, $7d        ;; 09:5880 ????????
    db   $4e, $7d, $40, $7f, $5f, $7f, $27, $26        ;; 09:5888 ????????
    db   $f8, $f8, $3c, $c4, $78, $b8, $70, $d0        ;; 09:5890 ????????
    db   $60, $a0, $e1, $21, $c3, $42, $c7, $45        ;; 09:5898 ????????
    db   $0f, $08, $1f, $10, $1e, $11, $0c, $0b        ;; 09:58a0 ????????
    db   $06, $05, $03, $03, $01, $01, $1e, $1f        ;; 09:58a8 ????????
    db   $df, $5a, $ff, $21, $7e, $c2, $3c, $c4        ;; 09:58b0 ????????
    db   $38, $d8, $60, $e0, $b0, $f0, $0f, $ff        ;; 09:58b8 ????????
    db   $0f, $0f, $30, $3f, $4c, $73, $9c, $fb        ;; 09:58c0 ????????
    db   $9c, $fb, $81, $fe, $bf, $fe, $47, $44        ;; 09:58c8 ????????
    db   $f0, $f0, $78, $88, $f0, $70, $e0, $a0        ;; 09:58d0 ????????
    db   $c0, $40, $c1, $41, $83, $82, $87, $85        ;; 09:58d8 ????????
    db   $0f, $08, $1f, $10, $1f, $10, $0e, $09        ;; 09:58e0 ????????
    db   $ce, $cd, $b7, $ff, $48, $78, $27, $3f        ;; 09:58e8 ????????
    db   $df, $5a, $ff, $21, $3e, $c2, $1c, $e4        ;; 09:58f0 ????????
    db   $1a, $fa, $ed, $ff, $32, $3e, $c7, $ff        ;; 09:58f8 ????????

data_09_5900:
    db   $0f, $0f, $10, $1f, $2c, $33, $3c, $2f        ;; 09:5900 ????????
    db   $3c, $2f, $10, $1f, $08, $0f, $04, $07        ;; 09:5908 ????????
    db   $c0, $c0, $20, $e0, $d0, $30, $f0, $d0        ;; 09:5910 ????????
    db   $f0, $d0, $20, $e0, $40, $c0, $80, $80        ;; 09:5918 ????????
    db   $07, $05, $1f, $1a, $2f, $31, $2d, $32        ;; 09:5920 ????????
    db   $27, $38, $1b, $1f, $04, $04, $1f, $1f        ;; 09:5928 ????????
    db   $e0, $a0, $d8, $78, $f4, $9c, $74, $9c        ;; 09:5930 ????????
    db   $e4, $3c, $e8, $f8, $50, $70, $88, $f8        ;; 09:5938 ????????
    db   $07, $07, $0b, $0c, $17, $18, $17, $18        ;; 09:5940 ????????
    db   $17, $18, $13, $1c, $17, $1c, $0b, $0a        ;; 09:5948 ????????
    db   $f8, $f8, $fc, $04, $f8, $08, $fc, $04        ;; 09:5950 ????????
    db   $e8, $18, $f0, $10, $f8, $08, $f0, $70        ;; 09:5958 ????????
    db   $07, $06, $0e, $09, $17, $1c, $37, $2c        ;; 09:5960 ????????
    db   $37, $2c, $13, $1e, $0b, $0f, $11, $1f        ;; 09:5968 ????????
    db   $ce, $4e, $7f, $b5, $fe, $02, $f4, $0c        ;; 09:5970 ????????
    db   $f4, $0c, $e4, $1c, $d8, $f8, $f0, $f0        ;; 09:5978 ????????
    db   $07, $07, $18, $1f, $26, $39, $4e, $7d        ;; 09:5980 ????????
    db   $4e, $7d, $41, $7f, $5f, $7e, $27, $24        ;; 09:5988 ????????
    db   $fc, $f4, $7c, $cc, $7c, $d4, $f8, $88        ;; 09:5990 ????????
    db   $f0, $90, $e1, $21, $c3, $42, $c7, $c5        ;; 09:5998 ????????
    db   $0f, $0b, $1f, $10, $1b, $15, $0e, $0b        ;; 09:59a0 ????????
    db   $06, $07, $03, $03, $01, $01, $1f, $1e        ;; 09:59a8 ????????
    db   $df, $5a, $ff, $21, $fe, $c2, $3c, $e4        ;; 09:59b0 ????????
    db   $b8, $78, $60, $e0, $b0, $f0, $0f, $ff        ;; 09:59b8 ????????
    db   $0f, $0f, $30, $3f, $4c, $73, $9d, $fb        ;; 09:59c0 ????????
    db   $9d, $fb, $83, $fe, $bf, $fc, $47, $44        ;; 09:59c8 ????????
    db   $f8, $e8, $f8, $98, $f8, $a8, $f0, $10        ;; 09:59d0 ????????
    db   $e0, $20, $c1, $41, $83, $82, $87, $85        ;; 09:59d8 ????????
    db   $0f, $0b, $1f, $10, $15, $1e, $0f, $09        ;; 09:59e0 ????????
    db   $cf, $cd, $b7, $ff, $48, $78, $27, $3f        ;; 09:59e8 ????????
    db   $df, $5a, $ff, $21, $fe, $e2, $1c, $f4        ;; 09:59f0 ????????
    db   $5a, $ba, $ad, $ff, $72, $7e, $c7, $ff        ;; 09:59f8 ????????

data_09_5a00:
    db   $03, $03, $0f, $0f, $1f, $1e, $7f, $73        ;; 09:5a00 ????????
    db   $7f, $60, $7f, $47, $3f, $2a, $3f, $3a        ;; 09:5a08 ????????
    db   $e0, $e0, $f0, $f0, $f8, $b8, $fc, $ec        ;; 09:5a10 ????????
    db   $fc, $84, $7c, $e4, $f8, $58, $fc, $5c        ;; 09:5a18 ????????
    db   $7f, $4d, $8f, $f8, $ff, $f8, $ff, $a4        ;; 09:5a20 ????????
    db   $ff, $a4, $fb, $be, $e7, $bf, $7f, $79        ;; 09:5a28 ????????
    db   $fe, $b2, $f1, $1f, $ff, $1f, $ff, $19        ;; 09:5a30 ????????
    db   $ff, $39, $ff, $29, $fe, $7a, $fc, $fc        ;; 09:5a38 ????????
    db   $07, $07, $1f, $1f, $3f, $38, $7f, $60        ;; 09:5a40 ????????
    db   $7f, $40, $3f, $23, $1c, $1f, $13, $1c        ;; 09:5a48 ????????
    db   $e0, $e0, $f8, $f8, $fc, $1c, $fe, $06        ;; 09:5a50 ????????
    db   $fe, $02, $fc, $c4, $38, $f8, $c8, $38        ;; 09:5a58 ????????
    db   $2f, $30, $7f, $58, $7f, $47, $ff, $80        ;; 09:5a60 ????????
    db   $ff, $80, $ff, $b8, $7f, $7c, $ff, $ff        ;; 09:5a68 ????????
    db   $f4, $0c, $fe, $1a, $fe, $e2, $ff, $01        ;; 09:5a70 ????????
    db   $ff, $11, $fe, $e2, $fc, $1c, $ff, $ff        ;; 09:5a78 ????????
    db   $3e, $3e, $3f, $3f, $3f, $25, $3f, $38        ;; 09:5a80 ????????
    db   $3f, $30, $17, $1c, $1f, $16, $1f, $15        ;; 09:5a88 ????????
    db   $00, $00, $00, $00, $80, $80, $fc, $fc        ;; 09:5a90 ????????
    db   $fc, $7c, $f8, $08, $f0, $10, $e0, $e0        ;; 09:5a98 ????????
    db   $19, $16, $36, $29, $3f, $23, $3f, $25        ;; 09:5aa0 ????????
    db   $3f, $2c, $1b, $1f, $0e, $09, $1f, $1f        ;; 09:5aa8 ????????
    db   $f0, $90, $88, $f8, $f0, $30, $f0, $10        ;; 09:5ab0 ????????
    db   $f8, $88, $f8, $88, $fc, $84, $fe, $fe        ;; 09:5ab8 ????????
    db   $00, $00, $3e, $3e, $3f, $3f, $3f, $25        ;; 09:5ac0 ????????
    db   $3f, $38, $3f, $30, $17, $1c, $1f, $16        ;; 09:5ac8 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 09:5ad0 ????????
    db   $fc, $fc, $fc, $7c, $f8, $08, $f0, $10        ;; 09:5ad8 ????????
    db   $1f, $15, $19, $16, $36, $29, $7f, $43        ;; 09:5ae0 ????????
    db   $7f, $5f, $29, $2f, $1e, $13, $7f, $7f        ;; 09:5ae8 ????????
    db   $e0, $e0, $f0, $90, $88, $f8, $fc, $cc        ;; 09:5af0 ????????
    db   $fe, $22, $ff, $21, $fe, $e2, $ff, $ff        ;; 09:5af8 ????????

data_09_5b00:
    db   $03, $03, $7d, $7f, $8c, $fb, $47, $7c        ;; 09:5b00 ????????
    db   $23, $3f, $18, $1f, $2f, $37, $3f, $2a        ;; 09:5b08 ????????
    db   $d8, $d8, $3e, $e6, $b9, $ef, $f2, $1e        ;; 09:5b10 ????????
    db   $e4, $fc, $18, $f8, $f4, $ec, $fc, $54        ;; 09:5b18 ????????
    db   $5f, $7a, $bf, $e4, $bf, $e7, $be, $ff        ;; 09:5b20 ????????
    db   $b9, $ff, $bd, $ff, $a7, $e7, $4f, $4f        ;; 09:5b28 ????????
    db   $fa, $5e, $ed, $3f, $df, $f3, $3f, $f3        ;; 09:5b30 ????????
    db   $fd, $df, $1d, $ff, $25, $e7, $fa, $fa        ;; 09:5b38 ????????
    db   $7b, $7b, $3c, $27, $3f, $3f, $60, $7f        ;; 09:5b40 ????????
    db   $83, $ff, $6f, $7c, $3f, $38, $2b, $3c        ;; 09:5b48 ????????
    db   $c0, $c0, $20, $e0, $f8, $f8, $06, $fe        ;; 09:5b50 ????????
    db   $c1, $ff, $f6, $3e, $fc, $1c, $d6, $3e        ;; 09:5b58 ????????
    db   $4f, $7c, $45, $7f, $43, $7f, $80, $ff        ;; 09:5b60 ????????
    db   $80, $ff, $9c, $ff, $be, $ff, $ff, $ff        ;; 09:5b68 ????????
    db   $f2, $3e, $a6, $7e, $ca, $7e, $82, $fe        ;; 09:5b70 ????????
    db   $31, $ff, $c1, $ff, $02, $fe, $ff, $ff        ;; 09:5b78 ????????
    db   $03, $03, $0c, $0f, $09, $0f, $09, $0f        ;; 09:5b80 ????????
    db   $ff, $fe, $80, $ff, $7f, $7b, $0f, $0a        ;; 09:5b88 ????????
    db   $78, $78, $f7, $97, $f9, $3f, $e2, $7e        ;; 09:5b90 ????????
    db   $84, $fc, $18, $f8, $f8, $e8, $f8, $88        ;; 09:5b98 ????????
    db   $0f, $08, $17, $1f, $08, $0f, $0b, $0f        ;; 09:5ba0 ????????
    db   $05, $07, $03, $03, $04, $07, $07, $07        ;; 09:5ba8 ????????
    db   $fc, $c4, $1e, $f2, $6e, $fa, $ce, $fa        ;; 09:5bb0 ????????
    db   $e4, $3c, $e4, $3c, $e2, $fe, $ff, $ff        ;; 09:5bb8 ????????
    db   $00, $00, $03, $03, $0c, $0f, $09, $0f        ;; 09:5bc0 ????????
    db   $09, $0f, $ff, $fe, $80, $ff, $7f, $7b        ;; 09:5bc8 ????????
    db   $00, $00, $78, $78, $f7, $97, $f9, $3f        ;; 09:5bd0 ????????
    db   $e2, $7e, $84, $fc, $18, $f8, $fc, $ec        ;; 09:5bd8 ????????
    db   $0f, $0a, $0f, $08, $17, $1f, $08, $0f        ;; 09:5be0 ????????
    db   $0f, $0f, $1d, $1b, $21, $3f, $1b, $1f        ;; 09:5be8 ????????
    db   $fe, $82, $ff, $e5, $1f, $fa, $65, $fd        ;; 09:5bf0 ????????
    db   $f2, $fe, $79, $cf, $fd, $cf, $f7, $ff        ;; 09:5bf8 ????????

data_09_5c00:
    db   $3d, $3d, $1f, $1f, $7f, $7f, $ff, $ff        ;; 09:5c00 ????????
    db   $bf, $bb, $7f, $77, $ff, $f2, $7f, $78        ;; 09:5c08 ????????
    db   $5c, $5c, $f8, $f8, $fe, $fe, $ff, $ff        ;; 09:5c10 ????????
    db   $fc, $5c, $fe, $7e, $ff, $2f, $fc, $1c        ;; 09:5c18 ????????
    db   $ff, $df, $ff, $8f, $df, $bf, $ff, $8f        ;; 09:5c20 ????????
    db   $ff, $cf, $77, $7f, $3f, $21, $3f, $3f        ;; 09:5c28 ????????
    db   $f6, $fa, $ff, $f9, $fb, $fd, $ff, $fd        ;; 09:5c30 ????????
    db   $ea, $fa, $fc, $c4, $78, $78, $fe, $fe        ;; 09:5c38 ????????
    db   $3e, $3e, $1f, $1f, $7b, $7f, $f7, $ff        ;; 09:5c40 ????????
    db   $35, $3f, $7f, $7f, $ff, $ff, $3f, $3f        ;; 09:5c48 ????????
    db   $bc, $bc, $f8, $f8, $fe, $fe, $ff, $ff        ;; 09:5c50 ????????
    db   $fd, $fd, $fe, $fe, $ff, $ff, $fe, $fe        ;; 09:5c58 ????????
    db   $7f, $7f, $5f, $7f, $ef, $9f, $ff, $9f        ;; 09:5c60 ????????
    db   $d7, $bf, $7f, $63, $1e, $1e, $3f, $3f        ;; 09:5c68 ????????
    db   $fe, $fe, $f9, $ff, $fb, $fd, $ff, $fd        ;; 09:5c70 ????????
    db   $fa, $fa, $e8, $f8, $fc, $84, $fe, $fe        ;; 09:5c78 ????????
    db   $17, $1f, $7f, $7f, $ff, $ff, $bf, $bf        ;; 09:5c80 ????????
    db   $7d, $7b, $7f, $6e, $3f, $25, $7f, $43        ;; 09:5c88 ????????
    db   $e0, $e0, $dc, $fc, $fe, $fe, $f2, $f2        ;; 09:5c90 ????????
    db   $fc, $fc, $fe, $fe, $fe, $fe, $ff, $ff        ;; 09:5c98 ????????
    db   $3f, $3f, $7f, $7f, $7f, $7f, $7f, $7e        ;; 09:5ca0 ????????
    db   $7f, $7e, $3f, $3f, $0f, $0c, $1f, $1f        ;; 09:5ca8 ????????
    db   $ff, $ff, $3d, $fd, $fe, $3e, $fe, $3e        ;; 09:5cb0 ????????
    db   $fa, $7a, $bc, $fc, $f0, $10, $fc, $fc        ;; 09:5cb8 ????????
    db   $00, $00, $17, $1f, $7f, $7f, $ff, $ff        ;; 09:5cc0 ????????
    db   $bf, $bf, $7d, $7b, $7f, $6e, $3f, $25        ;; 09:5cc8 ????????
    db   $00, $00, $e0, $e0, $dc, $fc, $fe, $fe        ;; 09:5cd0 ????????
    db   $f2, $f2, $fc, $fc, $fe, $fe, $fe, $fe        ;; 09:5cd8 ????????
    db   $7f, $43, $3f, $3f, $7f, $7f, $7f, $7f        ;; 09:5ce0 ????????
    db   $ff, $bf, $ef, $9f, $77, $57, $7f, $7f        ;; 09:5ce8 ????????
    db   $ff, $ff, $bf, $ff, $7d, $9d, $fe, $9e        ;; 09:5cf0 ????????
    db   $fa, $1e, $f6, $3a, $fc, $e4, $fe, $fe        ;; 09:5cf8 ????????

data_09_5d00:
    db   $03, $03, $04, $07, $0f, $0b, $0e, $0d        ;; 09:5d00 ????????
    db   $16, $1f, $37, $3d, $5f, $7d, $eb, $9f        ;; 09:5d08 ????????
    db   $c0, $c0, $a0, $e0, $d0, $f0, $30, $f0        ;; 09:5d10 ????????
    db   $68, $f8, $ec, $bc, $fa, $be, $d7, $f9        ;; 09:5d18 ????????
    db   $ff, $e7, $5a, $7f, $c9, $bf, $fd, $9e        ;; 09:5d20 ????????
    db   $78, $7f, $b8, $ff, $a4, $e7, $cf, $cf        ;; 09:5d28 ????????
    db   $ff, $ef, $5e, $f2, $9e, $f2, $bd, $7f        ;; 09:5d30 ????????
    db   $dd, $ff, $b5, $f7, $e2, $e2, $f0, $f0        ;; 09:5d38 ????????
    db   $03, $03, $06, $05, $0c, $0b, $0c, $0f        ;; 09:5d40 ????????
    db   $17, $1f, $37, $3c, $7c, $4b, $c5, $bf        ;; 09:5d48 ????????
    db   $c0, $c0, $a0, $e0, $90, $f0, $b0, $f0        ;; 09:5d50 ????????
    db   $e8, $f8, $ec, $3c, $3e, $d2, $a3, $fd        ;; 09:5d58 ????????
    db   $66, $7f, $58, $7f, $44, $7f, $83, $ff        ;; 09:5d60 ????????
    db   $80, $ff, $b8, $ff, $fc, $ff, $ff, $ff        ;; 09:5d68 ????????
    db   $66, $fe, $1a, $fe, $22, $fe, $d1, $ff        ;; 09:5d70 ????????
    db   $21, $ff, $c1, $ff, $06, $fe, $ff, $ff        ;; 09:5d78 ????????
    db   $07, $07, $0c, $0b, $1f, $17, $10, $1f        ;; 09:5d80 ????????
    db   $17, $1f, $1f, $1b, $0f, $0b, $0f, $0f        ;; 09:5d88 ????????
    db   $c0, $c0, $60, $e0, $d0, $f0, $90, $f0        ;; 09:5d90 ????????
    db   $50, $f0, $38, $f8, $68, $f8, $8c, $f4        ;; 09:5d98 ????????
    db   $0d, $0f, $0b, $0e, $05, $07, $0b, $0e        ;; 09:5da0 ????????
    db   $0b, $0e, $05, $07, $08, $0f, $0f, $0f        ;; 09:5da8 ????????
    db   $fc, $04, $7c, $fc, $d0, $f0, $d0, $70        ;; 09:5db0 ????????
    db   $c8, $78, $c8, $f8, $64, $fc, $fc, $fc        ;; 09:5db8 ????????
    db   $00, $00, $07, $07, $0c, $0b, $1f, $17        ;; 09:5dc0 ????????
    db   $10, $1f, $17, $1f, $1f, $1b, $0f, $0b        ;; 09:5dc8 ????????
    db   $00, $00, $c0, $c0, $60, $e0, $d0, $f0        ;; 09:5dd0 ????????
    db   $90, $f0, $50, $f0, $38, $f8, $68, $f8        ;; 09:5dd8 ????????
    db   $0f, $0f, $0d, $0f, $0b, $0e, $0d, $0f        ;; 09:5de0 ????????
    db   $19, $1f, $27, $3f, $13, $1f, $1f, $1f        ;; 09:5de8 ????????
    db   $8c, $f4, $fc, $04, $7c, $fc, $d0, $f0        ;; 09:5df0 ????????
    db   $e8, $38, $e4, $3c, $e2, $fe, $ff, $ff        ;; 09:5df8 ????????

data_09_5e00:
    db   $1f, $1f, $21, $3f, $10, $1f, $20, $3f        ;; 09:5e00 ????????
    db   $2c, $3b, $2e, $39, $1f, $1e, $3f, $3a        ;; 09:5e08 ????????
    db   $e0, $e0, $f0, $10, $f8, $88, $78, $e8        ;; 09:5e10 ????????
    db   $3c, $ec, $9e, $72, $fc, $fc, $fc, $5c        ;; 09:5e18 ????????
    db   $57, $6c, $eb, $9f, $f8, $9f, $64, $67        ;; 09:5e20 ????????
    db   $0f, $0b, $09, $0f, $07, $07, $1f, $1f        ;; 09:5e28 ????????
    db   $ee, $32, $d9, $e7, $1f, $f9, $2f, $e9        ;; 09:5e30 ????????
    db   $f6, $16, $10, $f0, $30, $f0, $f8, $f8        ;; 09:5e38 ????????
    db   $1f, $1f, $2f, $38, $7f, $70, $1f, $10        ;; 09:5e40 ????????
    db   $1f, $10, $1f, $10, $0f, $08, $1f, $1e        ;; 09:5e48 ????????
    db   $e0, $e0, $f0, $10, $f8, $08, $f8, $08        ;; 09:5e50 ????????
    db   $f8, $08, $dc, $2c, $3e, $d2, $fc, $2c        ;; 09:5e58 ????????
    db   $33, $2f, $58, $6f, $78, $5f, $24, $27        ;; 09:5e60 ????????
    db   $0c, $0b, $0b, $0c, $04, $07, $7f, $7f        ;; 09:5e68 ????????
    db   $ce, $f2, $09, $f7, $1f, $f9, $2f, $e9        ;; 09:5e70 ????????
    db   $e6, $e6, $90, $f0, $e0, $e0, $fc, $fc        ;; 09:5e78 ????????
    db   $3d, $3d, $43, $7e, $31, $3f, $40, $7f        ;; 09:5e80 ????????
    db   $56, $7b, $3e, $3d, $1f, $14, $1f, $10        ;; 09:5e88 ????????
    db   $c0, $c0, $e0, $20, $f0, $10, $f0, $90        ;; 09:5e90 ????????
    db   $78, $d8, $fc, $54, $b8, $68, $bc, $f4        ;; 09:5e98 ????????
    db   $1f, $11, $0f, $0f, $09, $0f, $0b, $0e        ;; 09:5ea0 ????????
    db   $0b, $0e, $07, $05, $08, $0f, $3f, $3f        ;; 09:5ea8 ????????
    db   $98, $f8, $68, $f8, $f0, $90, $f0, $50        ;; 09:5eb0 ????????
    db   $e0, $60, $c0, $c0, $40, $c0, $f8, $f8        ;; 09:5eb8 ????????
    db   $00, $00, $3d, $3d, $43, $7e, $31, $3f        ;; 09:5ec0 ????????
    db   $40, $7f, $56, $7b, $3e, $3d, $1f, $14        ;; 09:5ec8 ????????
    db   $00, $00, $c0, $c0, $e0, $20, $f0, $10        ;; 09:5ed0 ????????
    db   $f0, $90, $78, $d8, $fc, $54, $b8, $68        ;; 09:5ed8 ????????
    db   $1f, $10, $1f, $11, $2f, $3f, $3a, $2f        ;; 09:5ee0 ????????
    db   $1c, $1f, $26, $3b, $13, $1f, $7f, $7f        ;; 09:5ee8 ????????
    db   $bc, $f4, $c8, $f8, $b8, $c8, $7c, $d4        ;; 09:5ef0 ????????
    db   $7c, $e4, $f8, $f8, $90, $f0, $fe, $fe        ;; 09:5ef8 ????????

data_09_5f00:
    dw   `00000333                                     ;; 09:5f00 $07 $07
    dw   `00003222                                     ;; 09:5f02 $08 $0f
    dw   `00032222                                     ;; 09:5f04 $10 $1f
    dw   `00032232                                     ;; 09:5f06 $12 $1f
    dw   `00032233                                     ;; 09:5f08 $13 $1f
    dw   `00032311                                     ;; 09:5f0a $17 $1c
    dw   `00003131                                     ;; 09:5f0c $0f $0a
    dw   `00033131                                     ;; 09:5f0e $1f $1a

    dw   `33300000                                     ;; 09:5f10 $e0 $e0
    dw   `22230000                                     ;; 09:5f12 $10 $f0
    dw   `22223000                                     ;; 09:5f14 $08 $f8
    dw   `22233000                                     ;; 09:5f16 $18 $f8
    dw   `22222300                                     ;; 09:5f18 $04 $fc
    dw   `33323000                                     ;; 09:5f1a $e8 $f8
    dw   `13130000                                     ;; 09:5f1c $f0 $50
    dw   `13133000                                     ;; 09:5f1e $f8 $58

    dw   `00322311                                     ;; 09:5f20 $27 $3c
    dw   `00332233                                     ;; 09:5f22 $33 $3f
    dw   `03113222                                     ;; 09:5f24 $78 $4f
    dw   `03113331                                     ;; 09:5f26 $7f $4e
    dw   `00333222                                     ;; 09:5f28 $38 $3f
    dw   `00003333                                     ;; 09:5f2a $0f $0f
    dw   `00003111                                     ;; 09:5f2c $0f $08
    dw   `00000322                                     ;; 09:5f2e $04 $07

    dw   `11332300                                     ;; 09:5f30 $f4 $3c
    dw   `33311300                                     ;; 09:5f32 $fc $e4
    dw   `22311300                                     ;; 09:5f34 $3c $e4
    dw   `13233000                                     ;; 09:5f36 $d8 $78
    dw   `23330000                                     ;; 09:5f38 $70 $f0
    dw   `32230000                                     ;; 09:5f3a $90 $f0
    dw   `33300000                                     ;; 09:5f3c $e0 $e0
    dw   `33333000                                     ;; 09:5f3e $f8 $f8

    dw   `00000333                                     ;; 09:5f40 $07 $07
    dw   `00003222                                     ;; 09:5f42 $08 $0f
    dw   `00032222                                     ;; 09:5f44 $10 $1f
    dw   `00033222                                     ;; 09:5f46 $18 $1f
    dw   `00322222                                     ;; 09:5f48 $20 $3f
    dw   `00032222                                     ;; 09:5f4a $10 $1f
    dw   `00003222                                     ;; 09:5f4c $08 $0f
    dw   `00033122                                     ;; 09:5f4e $1c $1b

    dw   `33300000                                     ;; 09:5f50 $e0 $e0
    dw   `22230000                                     ;; 09:5f52 $10 $f0
    dw   `22223000                                     ;; 09:5f54 $08 $f8
    dw   `22223000                                     ;; 09:5f56 $08 $f8
    dw   `22223000                                     ;; 09:5f58 $08 $f8
    dw   `22223000                                     ;; 09:5f5a $08 $f8
    dw   `22230000                                     ;; 09:5f5c $10 $f0
    dw   `22133000                                     ;; 09:5f5e $38 $d8

    dw   `00322311                                     ;; 09:5f60 $27 $3c
    dw   `00332233                                     ;; 09:5f62 $33 $3f
    dw   `00313222                                     ;; 09:5f64 $38 $2f
    dw   `00033333                                     ;; 09:5f66 $1f $1f
    dw   `00003222                                     ;; 09:5f68 $08 $0f
    dw   `00003333                                     ;; 09:5f6a $0f $0f
    dw   `00003111                                     ;; 09:5f6c $0f $08
    dw   `00000322                                     ;; 09:5f6e $04 $07

    dw   `11332300                                     ;; 09:5f70 $f4 $3c
    dw   `33223300                                     ;; 09:5f72 $cc $fc
    dw   `22231130                                     ;; 09:5f74 $1e $f2
    dw   `33231130                                     ;; 09:5f76 $de $f2
    dw   `23333300                                     ;; 09:5f78 $7c $fc
    dw   `32230000                                     ;; 09:5f7a $90 $f0
    dw   `33300000                                     ;; 09:5f7c $e0 $e0
    dw   `33333000                                     ;; 09:5f7e $f8 $f8

    dw   `00000333                                     ;; 09:5f80 $07 $07
    dw   `00003222                                     ;; 09:5f82 $08 $0f
    dw   `00032222                                     ;; 09:5f84 $10 $1f
    dw   `00032322                                     ;; 09:5f86 $14 $1f
    dw   `00322322                                     ;; 09:5f88 $24 $3f
    dw   `00033133                                     ;; 09:5f8a $1f $1b
    dw   `00003131                                     ;; 09:5f8c $0f $0a
    dw   `00003131                                     ;; 09:5f8e $0f $0a

    dw   `33300000                                     ;; 09:5f90 $e0 $e0
    dw   `22230000                                     ;; 09:5f92 $10 $f0
    dw   `22223000                                     ;; 09:5f94 $08 $f8
    dw   `22223000                                     ;; 09:5f96 $08 $f8
    dw   `22223000                                     ;; 09:5f98 $08 $f8
    dw   `23223000                                     ;; 09:5f9a $48 $f8
    dw   `31323000                                     ;; 09:5f9c $e8 $b8
    dw   `11330000                                     ;; 09:5f9e $f0 $30

    dw   `00003111                                     ;; 09:5fa0 $0f $08
    dw   `00000333                                     ;; 09:5fa2 $07 $07
    dw   `00000322                                     ;; 09:5fa4 $04 $07
    dw   `00000333                                     ;; 09:5fa6 $07 $07
    dw   `00000323                                     ;; 09:5fa8 $05 $07
    dw   `00000033                                     ;; 09:5faa $03 $03
    dw   `00000031                                     ;; 09:5fac $03 $02
    dw   `00000322                                     ;; 09:5fae $04 $07

    dw   `13330000                                     ;; 09:5fb0 $f0 $70
    dw   `22230000                                     ;; 09:5fb2 $10 $f0
    dw   `31130000                                     ;; 09:5fb4 $f0 $90
    dw   `11130000                                     ;; 09:5fb6 $f0 $10
    dw   `11300000                                     ;; 09:5fb8 $e0 $20
    dw   `33300000                                     ;; 09:5fba $e0 $e0
    dw   `11300000                                     ;; 09:5fbc $e0 $20
    dw   `22300000                                     ;; 09:5fbe $20 $e0

    dw   `00000000                                     ;; 09:5fc0 $00 $00
    dw   `00000333                                     ;; 09:5fc2 $07 $07
    dw   `00003222                                     ;; 09:5fc4 $08 $0f
    dw   `00032222                                     ;; 09:5fc6 $10 $1f
    dw   `00032322                                     ;; 09:5fc8 $14 $1f
    dw   `00322322                                     ;; 09:5fca $24 $3f
    dw   `00033133                                     ;; 09:5fcc $1f $1b
    dw   `00003131                                     ;; 09:5fce $0f $0a

    dw   `00000000                                     ;; 09:5fd0 $00 $00
    dw   `33300000                                     ;; 09:5fd2 $e0 $e0
    dw   `22230000                                     ;; 09:5fd4 $10 $f0
    dw   `22223000                                     ;; 09:5fd6 $08 $f8
    dw   `22223000                                     ;; 09:5fd8 $08 $f8
    dw   `22223000                                     ;; 09:5fda $08 $f8
    dw   `23223000                                     ;; 09:5fdc $48 $f8
    dw   `31323000                                     ;; 09:5fde $e8 $b8

    dw   `00003131                                     ;; 09:5fe0 $0f $0a
    dw   `00333111                                     ;; 09:5fe2 $3f $38
    dw   `03113333                                     ;; 09:5fe4 $7f $4f
    dw   `03113322                                     ;; 09:5fe6 $7c $4f
    dw   `00333232                                     ;; 09:5fe8 $3a $3f
    dw   `00322213                                     ;; 09:5fea $23 $3d
    dw   `00032233                                     ;; 09:5fec $13 $1f
    dw   `03333333                                     ;; 09:5fee $7f $7f

    dw   `11330000                                     ;; 09:5ff0 $f0 $30
    dw   `13330000                                     ;; 09:5ff2 $f0 $70
    dw   `33113000                                     ;; 09:5ff4 $f8 $c8
    dw   `23111300                                     ;; 09:5ff6 $7c $c4
    dw   `21311300                                     ;; 09:5ff8 $7c $a4
    dw   `12233000                                     ;; 09:5ffa $98 $78
    dw   `32223000                                     ;; 09:5ffc $88 $f8
    dw   `33333300                                     ;; 09:5ffe $fc $fc


data_09_6000:
    dw   `00000033                                     ;; 09:6000 $03 $03
    dw   `00000312                                     ;; 09:6002 $06 $05
    dw   `00003122                                     ;; 09:6004 $0c $0b
    dw   `00031232                                     ;; 09:6006 $1a $17
    dw   `00032313                                     ;; 09:6008 $17 $1d
    dw   `00312311                                     ;; 09:600a $37 $2c
    dw   `00323131                                     ;; 09:600c $2f $3a
    dw   `00323131                                     ;; 09:600e $2f $3a

    dw   `33000000                                     ;; 09:6010 $c0 $c0
    dw   `22300000                                     ;; 09:6012 $20 $e0
    dw   `22230000                                     ;; 09:6014 $10 $f0
    dw   `22223000                                     ;; 09:6016 $08 $f8
    dw   `23223000                                     ;; 09:6018 $48 $f8
    dw   `32322300                                     ;; 09:601a $a4 $fc
    dw   `13132300                                     ;; 09:601c $f4 $5c
    dw   `13132300                                     ;; 09:601e $f4 $5c

    dw   `00323311                                     ;; 09:6020 $2f $3c
    dw   `00032133                                     ;; 09:6022 $17 $1b
    dw   `00312211                                     ;; 09:6024 $33 $2c
    dw   `03112322                                     ;; 09:6026 $74 $4f
    dw   `03133222                                     ;; 09:6028 $78 $5f
    dw   `00322233                                     ;; 09:602a $23 $3f
    dw   `00032311                                     ;; 09:602c $17 $1c
    dw   `00333333                                     ;; 09:602e $3f $3f

    dw   `11332300                                     ;; 09:6030 $f4 $3c
    dw   `33133000                                     ;; 09:6032 $f8 $d8
    dw   `11311300                                     ;; 09:6034 $fc $24
    dw   `22311300                                     ;; 09:6036 $3c $e4
    dw   `22233000                                     ;; 09:6038 $18 $f8
    dw   `22222300                                     ;; 09:603a $04 $fc
    dw   `32223000                                     ;; 09:603c $88 $f8
    dw   `33333300                                     ;; 09:603e $fc $fc

    dw   `00000033                                     ;; 09:6040 $03 $03
    dw   `00000311                                     ;; 09:6042 $07 $04
    dw   `00003122                                     ;; 09:6044 $0c $0b
    dw   `00031222                                     ;; 09:6046 $18 $17
    dw   `00031222                                     ;; 09:6048 $18 $17
    dw   `00312222                                     ;; 09:604a $30 $2f
    dw   `00312222                                     ;; 09:604c $30 $2f
    dw   `00322222                                     ;; 09:604e $20 $3f

    dw   `33000000                                     ;; 09:6050 $c0 $c0
    dw   `22300000                                     ;; 09:6052 $20 $e0
    dw   `22230000                                     ;; 09:6054 $10 $f0
    dw   `22223000                                     ;; 09:6056 $08 $f8
    dw   `22223000                                     ;; 09:6058 $08 $f8
    dw   `22222300                                     ;; 09:605a $04 $fc
    dw   `22222300                                     ;; 09:605c $04 $fc
    dw   `22222300                                     ;; 09:605e $04 $fc

    dw   `00322322                                     ;; 09:6060 $24 $3f
    dw   `00032232                                     ;; 09:6062 $12 $1f
    dw   `00313333                                     ;; 09:6064 $3f $2f
    dw   `03112322                                     ;; 09:6066 $74 $4f
    dw   `03133222                                     ;; 09:6068 $78 $5f
    dw   `00322233                                     ;; 09:606a $23 $3f
    dw   `00032311                                     ;; 09:606c $17 $1c
    dw   `00333333                                     ;; 09:606e $3f $3f

    dw   `22232300                                     ;; 09:6070 $14 $fc
    dw   `32323000                                     ;; 09:6072 $a8 $f8
    dw   `33332300                                     ;; 09:6074 $f4 $fc
    dw   `22321300                                     ;; 09:6076 $2c $f4
    dw   `22233000                                     ;; 09:6078 $18 $f8
    dw   `22222300                                     ;; 09:607a $04 $fc
    dw   `32223000                                     ;; 09:607c $88 $f8
    dw   `33333300                                     ;; 09:607e $fc $fc

    dw   `00000333                                     ;; 09:6080 $07 $07
    dw   `00003222                                     ;; 09:6082 $08 $0f
    dw   `00032222                                     ;; 09:6084 $10 $1f
    dw   `00032322                                     ;; 09:6086 $14 $1f
    dw   `00032322                                     ;; 09:6088 $14 $1f
    dw   `00003133                                     ;; 09:608a $0f $0b
    dw   `00003131                                     ;; 09:608c $0f $0a
    dw   `00003131                                     ;; 09:608e $0f $0a

    dw   `33300000                                     ;; 09:6090 $e0 $e0
    dw   `22230000                                     ;; 09:6092 $10 $f0
    dw   `22223000                                     ;; 09:6094 $08 $f8
    dw   `22223000                                     ;; 09:6096 $08 $f8
    dw   `22223000                                     ;; 09:6098 $08 $f8
    dw   `23223000                                     ;; 09:609a $48 $f8
    dw   `31322300                                     ;; 09:609c $e4 $bc
    dw   `11322300                                     ;; 09:609e $e4 $3c

    dw   `00003111                                     ;; 09:60a0 $0f $08
    dw   `00000333                                     ;; 09:60a2 $07 $07
    dw   `00003111                                     ;; 09:60a4 $0f $08
    dw   `00003223                                     ;; 09:60a6 $09 $0f
    dw   `00000323                                     ;; 09:60a8 $05 $07
    dw   `00000322                                     ;; 09:60aa $04 $07
    dw   `00000322                                     ;; 09:60ac $04 $07
    dw   `00000333                                     ;; 09:60ae $07 $07

    dw   `13322300                                     ;; 09:60b0 $e4 $7c
    dw   `32232300                                     ;; 09:60b2 $94 $fc
    dw   `31133000                                     ;; 09:60b4 $f8 $98
    dw   `11130000                                     ;; 09:60b6 $f0 $10
    dw   `11330000                                     ;; 09:60b8 $f0 $30
    dw   `33230000                                     ;; 09:60ba $d0 $f0
    dw   `22223000                                     ;; 09:60bc $08 $f8
    dw   `33333000                                     ;; 09:60be $f8 $f8

    dw   `00000000                                     ;; 09:60c0 $00 $00
    dw   `00000333                                     ;; 09:60c2 $07 $07
    dw   `00003222                                     ;; 09:60c4 $08 $0f
    dw   `00032222                                     ;; 09:60c6 $10 $1f
    dw   `00032322                                     ;; 09:60c8 $14 $1f
    dw   `00032322                                     ;; 09:60ca $14 $1f
    dw   `00003133                                     ;; 09:60cc $0f $0b
    dw   `00003131                                     ;; 09:60ce $0f $0a

    dw   `00000000                                     ;; 09:60d0 $00 $00
    dw   `33300000                                     ;; 09:60d2 $e0 $e0
    dw   `22230000                                     ;; 09:60d4 $10 $f0
    dw   `22223000                                     ;; 09:60d6 $08 $f8
    dw   `22223000                                     ;; 09:60d8 $08 $f8
    dw   `22223000                                     ;; 09:60da $08 $f8
    dw   `23222300                                     ;; 09:60dc $44 $fc
    dw   `31322300                                     ;; 09:60de $e4 $bc

    dw   `00003131                                     ;; 09:60e0 $0f $0a
    dw   `00003111                                     ;; 09:60e2 $0f $08
    dw   `00000333                                     ;; 09:60e4 $07 $07
    dw   `00003111                                     ;; 09:60e6 $0f $08
    dw   `00003222                                     ;; 09:60e8 $08 $0f
    dw   `00003322                                     ;; 09:60ea $0c $0f
    dw   `00032222                                     ;; 09:60ec $10 $1f
    dw   `00033333                                     ;; 09:60ee $1f $1f

    dw   `11322230                                     ;; 09:60f0 $e2 $3e
    dw   `13332230                                     ;; 09:60f2 $f2 $7e
    dw   `32233230                                     ;; 09:60f4 $9a $fe
    dw   `23113300                                     ;; 09:60f6 $7c $cc
    dw   `23111300                                     ;; 09:60f8 $7c $c4
    dw   `22311300                                     ;; 09:60fa $3c $e4
    dw   `22233000                                     ;; 09:60fc $18 $f8
    dw   `33333330                                     ;; 09:60fe $fe $fe


data_09_6100:
    dw   `00000000                                     ;; 09:6100 $00 $00
    dw   `00000000                                     ;; 09:6102 $00 $00
    dw   `00000332                                     ;; 09:6104 $06 $07
    dw   `00003222                                     ;; 09:6106 $08 $0f
    dw   `00032222                                     ;; 09:6108 $10 $1f
    dw   `00032223                                     ;; 09:610a $11 $1f
    dw   `00032331                                     ;; 09:610c $17 $1e
    dw   `00003131                                     ;; 09:610e $0f $0a

    dw   `00000000                                     ;; 09:6110 $00 $00
    dw   `00000000                                     ;; 09:6112 $00 $00
    dw   `33330000                                     ;; 09:6114 $f0 $f0
    dw   `22223000                                     ;; 09:6116 $08 $f8
    dw   `22233000                                     ;; 09:6118 $18 $f8
    dw   `22222300                                     ;; 09:611a $04 $fc
    dw   `32323000                                     ;; 09:611c $a8 $f8
    dw   `13130000                                     ;; 09:611e $f0 $50

    dw   `00003131                                     ;; 09:6120 $0f $0a
    dw   `00003311                                     ;; 09:6122 $0f $0c
    dw   `00032233                                     ;; 09:6124 $13 $1f
    dw   `00322322                                     ;; 09:6126 $24 $3f
    dw   `00313333                                     ;; 09:6128 $3f $2f
    dw   `00030322                                     ;; 09:612a $14 $17
    dw   `00000031                                     ;; 09:612c $03 $02
    dw   `00003333                                     ;; 09:612e $0f $0f

    dw   `13130000                                     ;; 09:6130 $f0 $50
    dw   `11330000                                     ;; 09:6132 $f0 $30
    dw   `33223000                                     ;; 09:6134 $c8 $f8
    dw   `22313000                                     ;; 09:6136 $38 $e8
    dw   `33330000                                     ;; 09:6138 $f0 $f0
    dw   `32300000                                     ;; 09:613a $a0 $e0
    dw   `33000000                                     ;; 09:613c $c0 $c0
    dw   `33330000                                     ;; 09:613e $f0 $f0

    dw   `00000000                                     ;; 09:6140 $00 $00
    dw   `00000000                                     ;; 09:6142 $00 $00
    dw   `00003333                                     ;; 09:6144 $0f $0f
    dw   `00032222                                     ;; 09:6146 $10 $1f
    dw   `00033222                                     ;; 09:6148 $18 $1f
    dw   `00322222                                     ;; 09:614a $20 $3f
    dw   `00032222                                     ;; 09:614c $10 $1f
    dw   `00003222                                     ;; 09:614e $08 $0f

    dw   `00000000                                     ;; 09:6150 $00 $00
    dw   `00000000                                     ;; 09:6152 $00 $00
    dw   `23300000                                     ;; 09:6154 $60 $e0
    dw   `22230000                                     ;; 09:6156 $10 $f0
    dw   `22223000                                     ;; 09:6158 $08 $f8
    dw   `22223000                                     ;; 09:615a $08 $f8
    dw   `22223000                                     ;; 09:615c $08 $f8
    dw   `22230000                                     ;; 09:615e $10 $f0

    dw   `00003122                                     ;; 09:6160 $0c $0b
    dw   `00003311                                     ;; 09:6162 $0f $0c
    dw   `00032233                                     ;; 09:6164 $13 $1f
    dw   `00322322                                     ;; 09:6166 $24 $3f
    dw   `00313333                                     ;; 09:6168 $3f $2f
    dw   `00030322                                     ;; 09:616a $14 $17
    dw   `00000031                                     ;; 09:616c $03 $02
    dw   `00003333                                     ;; 09:616e $0f $0f

    dw   `22130000                                     ;; 09:6170 $30 $d0
    dw   `11330000                                     ;; 09:6172 $f0 $30
    dw   `33223000                                     ;; 09:6174 $c8 $f8
    dw   `22313000                                     ;; 09:6176 $38 $e8
    dw   `33330000                                     ;; 09:6178 $f0 $f0
    dw   `32300000                                     ;; 09:617a $a0 $e0
    dw   `33000000                                     ;; 09:617c $c0 $c0
    dw   `33330000                                     ;; 09:617e $f0 $f0

    dw   `00000000                                     ;; 09:6180 $00 $00
    dw   `00000000                                     ;; 09:6182 $00 $00
    dw   `00000333                                     ;; 09:6184 $07 $07
    dw   `00033222                                     ;; 09:6186 $18 $1f
    dw   `00322222                                     ;; 09:6188 $20 $3f
    dw   `00033223                                     ;; 09:618a $19 $1f
    dw   `00032231                                     ;; 09:618c $13 $1e
    dw   `00003331                                     ;; 09:618e $0f $0e

    dw   `00000000                                     ;; 09:6190 $00 $00
    dw   `00000000                                     ;; 09:6192 $00 $00
    dw   `33000000                                     ;; 09:6194 $c0 $c0
    dw   `22300000                                     ;; 09:6196 $20 $e0
    dw   `22230000                                     ;; 09:6198 $10 $f0
    dw   `22230000                                     ;; 09:619a $10 $f0
    dw   `23230000                                     ;; 09:619c $50 $f0
    dw   `31230000                                     ;; 09:619e $d0 $b0

    dw   `00003131                                     ;; 09:61a0 $0f $0a
    dw   `00003111                                     ;; 09:61a2 $0f $08
    dw   `00000333                                     ;; 09:61a4 $07 $07
    dw   `00000322                                     ;; 09:61a6 $04 $07
    dw   `00000333                                     ;; 09:61a8 $07 $07
    dw   `00000032                                     ;; 09:61aa $02 $03
    dw   `00000311                                     ;; 09:61ac $07 $04
    dw   `00000333                                     ;; 09:61ae $07 $07

    dw   `11300000                                     ;; 09:61b0 $e0 $20
    dw   `33300000                                     ;; 09:61b2 $e0 $e0
    dw   `22230000                                     ;; 09:61b4 $10 $f0
    dw   `32300000                                     ;; 09:61b6 $a0 $e0
    dw   `11300000                                     ;; 09:61b8 $e0 $20
    dw   `33000000                                     ;; 09:61ba $c0 $c0
    dw   `23000000                                     ;; 09:61bc $40 $c0
    dw   `33300000                                     ;; 09:61be $e0 $e0

    dw   `00000000                                     ;; 09:61c0 $00 $00
    dw   `00000000                                     ;; 09:61c2 $00 $00
    dw   `00000000                                     ;; 09:61c4 $00 $00
    dw   `00000333                                     ;; 09:61c6 $07 $07
    dw   `00033222                                     ;; 09:61c8 $18 $1f
    dw   `00322222                                     ;; 09:61ca $20 $3f
    dw   `00033223                                     ;; 09:61cc $19 $1f
    dw   `00032231                                     ;; 09:61ce $13 $1e

    dw   `00000000                                     ;; 09:61d0 $00 $00
    dw   `00000000                                     ;; 09:61d2 $00 $00
    dw   `00000000                                     ;; 09:61d4 $00 $00
    dw   `33000000                                     ;; 09:61d6 $c0 $c0
    dw   `22300000                                     ;; 09:61d8 $20 $e0
    dw   `22230000                                     ;; 09:61da $10 $f0
    dw   `22230000                                     ;; 09:61dc $10 $f0
    dw   `23230000                                     ;; 09:61de $50 $f0

    dw   `00003331                                     ;; 09:61e0 $0f $0e
    dw   `00003131                                     ;; 09:61e2 $0f $0a
    dw   `00003111                                     ;; 09:61e4 $0f $08
    dw   `00003333                                     ;; 09:61e6 $0f $0f
    dw   `00031322                                     ;; 09:61e8 $1c $17
    dw   `00003333                                     ;; 09:61ea $0f $0f
    dw   `00003122                                     ;; 09:61ec $0c $0b
    dw   `00000323                                     ;; 09:61ee $05 $07

    dw   `31230000                                     ;; 09:61f0 $d0 $b0
    dw   `11300000                                     ;; 09:61f2 $e0 $20
    dw   `33300000                                     ;; 09:61f4 $e0 $e0
    dw   `22330000                                     ;; 09:61f6 $30 $f0
    dw   `33113000                                     ;; 09:61f8 $f8 $c8
    dw   `33330000                                     ;; 09:61fa $f0 $f0
    dw   `32230000                                     ;; 09:61fc $90 $f0
    dw   `33130000                                     ;; 09:61fe $f0 $d0


data_09_6200:
    db   $1c, $1c, $27, $3b, $4c, $77, $48, $7f        ;; 09:6200 ????????
    db   $51, $7f, $51, $7e, $3f, $3a, $0f, $0a        ;; 09:6208 ????????
    db   $38, $38, $e4, $dc, $32, $ee, $12, $fe        ;; 09:6210 ????????
    db   $0a, $fe, $4a, $be, $fc, $5c, $f0, $50        ;; 09:6218 ????????
    db   $0f, $0c, $13, $1f, $0e, $0b, $1f, $17        ;; 09:6220 ????????
    db   $18, $1f, $10, $1f, $0f, $0c, $3f, $3f        ;; 09:6228 ????????
    db   $f0, $30, $c8, $f8, $50, $f0, $f8, $e8        ;; 09:6230 ????????
    db   $10, $f0, $08, $f8, $f0, $f0, $fc, $fc        ;; 09:6238 ????????
    db   $0c, $0c, $17, $1b, $2c, $37, $48, $7f        ;; 09:6240 ????????
    db   $49, $7f, $50, $7f, $38, $3f, $08, $0f        ;; 09:6248 ????????
    db   $30, $30, $e8, $d8, $34, $ec, $92, $fe        ;; 09:6250 ????????
    db   $12, $fe, $0a, $fe, $1c, $fc, $10, $f0        ;; 09:6258 ????????
    db   $0c, $0f, $13, $1e, $0e, $0b, $1f, $17        ;; 09:6260 ????????
    db   $1c, $1f, $10, $1f, $0f, $0c, $3f, $3f        ;; 09:6268 ????????
    db   $30, $f0, $c8, $78, $50, $f0, $f8, $e8        ;; 09:6270 ????????
    db   $10, $f0, $08, $f8, $f0, $f0, $fc, $fc        ;; 09:6278 ????????
    db   $00, $00, $00, $00, $07, $07, $08, $0f        ;; 09:6280 ????????
    db   $10, $1f, $14, $1b, $15, $1a, $0f, $0a        ;; 09:6288 ????????
    db   $00, $00, $00, $00, $d0, $d0, $e8, $b8        ;; 09:6290 ????????
    db   $44, $fc, $44, $fc, $44, $fc, $48, $f8        ;; 09:6298 ????????
    db   $0f, $0a, $0f, $08, $06, $07, $05, $07        ;; 09:62a0 ????????
    db   $03, $02, $05, $07, $08, $0f, $1f, $1f        ;; 09:62a8 ????????
    db   $70, $f0, $e0, $e0, $20, $e0, $c0, $40        ;; 09:62b0 ????????
    db   $a0, $e0, $10, $f0, $08, $f8, $fc, $fc        ;; 09:62b8 ????????
    db   $00, $00, $00, $00, $00, $00, $07, $07        ;; 09:62c0 ????????
    db   $08, $0f, $10, $1f, $14, $1b, $15, $1a        ;; 09:62c8 ????????
    db   $00, $00, $00, $00, $00, $00, $d0, $d0        ;; 09:62d0 ????????
    db   $e8, $b8, $44, $fc, $44, $fc, $44, $fc        ;; 09:62d8 ????????
    db   $0f, $0a, $0f, $0a, $0f, $08, $0f, $0f        ;; 09:62e0 ????????
    db   $1c, $17, $0f, $0f, $0f, $09, $1f, $1f        ;; 09:62e8 ????????
    db   $48, $f8, $70, $f0, $e0, $e0, $30, $f0        ;; 09:62f0 ????????
    db   $f8, $c8, $b8, $f8, $04, $fc, $fe, $fe        ;; 09:62f8 ????????

data_09_6300:
    dw   `00033333                                     ;; 09:6300 $1f $1f
    dw   `00311113                                     ;; 09:6302 $3f $21
    dw   `03111111                                     ;; 09:6304 $7f $40
    dw   `03111133                                     ;; 09:6306 $7f $43
    dw   `03113332                                     ;; 09:6308 $7e $4f
    dw   `00331113                                     ;; 09:630a $3f $31
    dw   `00033331                                     ;; 09:630c $1f $1e
    dw   `00331311                                     ;; 09:630e $3f $34

    dw   `33300000                                     ;; 09:6310 $e0 $e0
    dw   `11130000                                     ;; 09:6312 $f0 $10
    dw   `33330000                                     ;; 09:6314 $f0 $f0
    dw   `11113000                                     ;; 09:6316 $f8 $08
    dw   `33113000                                     ;; 09:6318 $f8 $c8
    dw   `11333000                                     ;; 09:631a $f8 $38
    dw   `33331330                                     ;; 09:631c $fe $f6
    dw   `31321113                                     ;; 09:631e $ef $b1

    dw   `03313111                                     ;; 09:6320 $7f $68
    dw   `31112333                                     ;; 09:6322 $f7 $8f
    dw   `03322212                                     ;; 09:6324 $62 $7d
    dw   `00322211                                     ;; 09:6326 $23 $3c
    dw   `00033131                                     ;; 09:6328 $1f $1a
    dw   `00003111                                     ;; 09:632a $0f $08
    dw   `00000311                                     ;; 09:632c $07 $04
    dw   `03333333                                     ;; 09:632e $7f $7f

    dw   `13222330                                     ;; 09:6330 $c6 $7e
    dw   `31223000                                     ;; 09:6332 $c8 $b8
    dw   `21330000                                     ;; 09:6334 $70 $b0
    dw   `13130000                                     ;; 09:6336 $f0 $50
    dw   `11113000                                     ;; 09:6338 $f8 $08
    dw   `31113000                                     ;; 09:633a $f8 $88
    dw   `33330000                                     ;; 09:633c $f0 $f0
    dw   `33333330                                     ;; 09:633e $fe $fe

    dw   `00000033                                     ;; 09:6340 $03 $03
    dw   `00000311                                     ;; 09:6342 $07 $04
    dw   `00003333                                     ;; 09:6344 $0f $0f
    dw   `00031111                                     ;; 09:6346 $1f $10
    dw   `00033311                                     ;; 09:6348 $1f $1c
    dw   `00031133                                     ;; 09:634a $1f $13
    dw   `00031111                                     ;; 09:634c $1f $10
    dw   `00003133                                     ;; 09:634e $0f $0b

    dw   `33333000                                     ;; 09:6350 $f8 $f8
    dw   `13111300                                     ;; 09:6352 $fc $44
    dw   `31113130                                     ;; 09:6354 $fe $8a
    dw   `13331130                                     ;; 09:6356 $fe $72
    dw   `11111130                                     ;; 09:6358 $fe $02
    dw   `11111130                                     ;; 09:635a $fe $02
    dw   `33111130                                     ;; 09:635c $fe $c2
    dw   `22331300                                     ;; 09:635e $3c $f4

    dw   `00003312                                     ;; 09:6360 $0e $0d
    dw   `00032211                                     ;; 09:6362 $13 $1c
    dw   `00322111                                     ;; 09:6364 $27 $38
    dw   `00032311                                     ;; 09:6366 $17 $1c
    dw   `00003111                                     ;; 09:6368 $0f $08
    dw   `00003111                                     ;; 09:636a $0f $08
    dw   `00000311                                     ;; 09:636c $07 $04
    dw   `03333333                                     ;; 09:636e $7f $7f

    dw   `22213330                                     ;; 09:6370 $1e $ee
    dw   `11112113                                     ;; 09:6372 $f7 $09
    dw   `11111230                                     ;; 09:6374 $fa $06
    dw   `11112300                                     ;; 09:6376 $f4 $0c
    dw   `13333000                                     ;; 09:6378 $f8 $78
    dw   `31130000                                     ;; 09:637a $f0 $90
    dw   `33300000                                     ;; 09:637c $e0 $e0
    dw   `33333330                                     ;; 09:637e $fe $fe

    dw   `00000333                                     ;; 09:6380 $07 $07
    dw   `00003111                                     ;; 09:6382 $0f $08
    dw   `00031133                                     ;; 09:6384 $1f $13
    dw   `00033311                                     ;; 09:6386 $1f $1c
    dw   `00332311                                     ;; 09:6388 $37 $3c
    dw   `03133331                                     ;; 09:638a $7f $5e
    dw   `03133133                                     ;; 09:638c $7f $5b
    dw   `03123131                                     ;; 09:638e $6f $5a

    dw   `33330000                                     ;; 09:6390 $f0 $f0
    dw   `11113000                                     ;; 09:6392 $f8 $08
    dw   `11131300                                     ;; 09:6394 $fc $14
    dw   `33311300                                     ;; 09:6396 $fc $e4
    dw   `11111300                                     ;; 09:6398 $fc $04
    dw   `11111300                                     ;; 09:639a $fc $04
    dw   `31113000                                     ;; 09:639c $f8 $88
    dw   `13330000                                     ;; 09:639e $f0 $70

    dw   `00323111                                     ;; 09:63a0 $2f $38
    dw   `00032333                                     ;; 09:63a2 $17 $1f
    dw   `00003321                                     ;; 09:63a4 $0d $0e
    dw   `00000313                                     ;; 09:63a6 $07 $05
    dw   `00000011                                     ;; 09:63a8 $03 $00
    dw   `00000031                                     ;; 09:63aa $03 $02
    dw   `00000311                                     ;; 09:63ac $07 $04
    dw   `00333333                                     ;; 09:63ae $3f $3f

    dw   `31130000                                     ;; 09:63b0 $f0 $90
    dw   `13223000                                     ;; 09:63b2 $c8 $78
    dw   `32223000                                     ;; 09:63b4 $88 $f8
    dw   `13113000                                     ;; 09:63b6 $f8 $48
    dw   `13113000                                     ;; 09:63b8 $f8 $48
    dw   `11330000                                     ;; 09:63ba $f0 $30
    dw   `11130000                                     ;; 09:63bc $f0 $10
    dw   `33333300                                     ;; 09:63be $fc $fc

    dw   `00000000                                     ;; 09:63c0 $00 $00
    dw   `00000333                                     ;; 09:63c2 $07 $07
    dw   `00003111                                     ;; 09:63c4 $0f $08
    dw   `00031133                                     ;; 09:63c6 $1f $13
    dw   `00033311                                     ;; 09:63c8 $1f $1c
    dw   `00032311                                     ;; 09:63ca $17 $1c
    dw   `00033331                                     ;; 09:63cc $1f $1e
    dw   `00003133                                     ;; 09:63ce $0f $0b

    dw   `00000000                                     ;; 09:63d0 $00 $00
    dw   `33330000                                     ;; 09:63d2 $f0 $f0
    dw   `11113000                                     ;; 09:63d4 $f8 $08
    dw   `11131300                                     ;; 09:63d6 $fc $14
    dw   `33311300                                     ;; 09:63d8 $fc $e4
    dw   `11111300                                     ;; 09:63da $fc $04
    dw   `11111300                                     ;; 09:63dc $fc $04
    dw   `31113000                                     ;; 09:63de $f8 $88

    dw   `00003131                                     ;; 09:63e0 $0f $0a
    dw   `00333111                                     ;; 09:63e2 $3f $38
    dw   `00311333                                     ;; 09:63e4 $3f $27
    dw   `00311321                                     ;; 09:63e6 $3d $26
    dw   `00033313                                     ;; 09:63e8 $1f $1d
    dw   `00031111                                     ;; 09:63ea $1f $10
    dw   `00003113                                     ;; 09:63ec $0f $09
    dw   `00033333                                     ;; 09:63ee $1f $1f

    dw   `13333000                                     ;; 09:63f0 $f8 $78
    dw   `31322300                                     ;; 09:63f2 $e4 $bc
    dw   `13221130                                     ;; 09:63f4 $ce $72
    dw   `32321130                                     ;; 09:63f6 $ae $f2
    dw   `11133300                                     ;; 09:63f8 $fc $1c
    dw   `31111130                                     ;; 09:63fa $fe $82
    dw   `33311300                                     ;; 09:63fc $fc $e4
    dw   `33333000                                     ;; 09:63fe $f8 $f8


data_09_6400:
    dw   `00000003                                     ;; 09:6400 $01 $01
    dw   `00000032                                     ;; 09:6402 $02 $03
    dw   `00000322                                     ;; 09:6404 $04 $07
    dw   `00003322                                     ;; 09:6406 $0c $0f
    dw   `00031113                                     ;; 09:6408 $1f $11
    dw   `00311332                                     ;; 09:640a $3e $27
    dw   `00033232                                     ;; 09:640c $1a $1f
    dw   `00033123                                     ;; 09:640e $1d $1b

    dw   `30000000                                     ;; 09:6410 $80 $80
    dw   `23000000                                     ;; 09:6412 $40 $c0
    dw   `22300000                                     ;; 09:6414 $20 $e0
    dw   `22330000                                     ;; 09:6416 $30 $f0
    dw   `31113000                                     ;; 09:6418 $f8 $88
    dw   `23313000                                     ;; 09:641a $78 $e8
    dw   `23230000                                     ;; 09:641c $50 $f0
    dw   `32133000                                     ;; 09:641e $b8 $d8

    dw   `00323111                                     ;; 09:6420 $2f $38
    dw   `03222311                                     ;; 09:6422 $47 $7c
    dw   `32322311                                     ;; 09:6424 $a7 $fc
    dw   `33113231                                     ;; 09:6426 $fb $ce
    dw   `33113223                                     ;; 09:6428 $f9 $cf
    dw   `32332222                                     ;; 09:642a $b0 $ff
    dw   `32322222                                     ;; 09:642c $a0 $ff
    dw   `03333333                                     ;; 09:642e $7f $7f

    dw   `11132300                                     ;; 09:6430 $f4 $1c
    dw   `11322330                                     ;; 09:6432 $e6 $3e
    dw   `11323113                                     ;; 09:6434 $ef $39
    dw   `13223113                                     ;; 09:6436 $cf $79
    dw   `32222333                                     ;; 09:6438 $87 $ff
    dw   `22222323                                     ;; 09:643a $05 $ff
    dw   `23332330                                     ;; 09:643c $76 $fe
    dw   `33333300                                     ;; 09:643e $fc $fc

    dw   `00000003                                     ;; 09:6440 $01 $01
    dw   `00000032                                     ;; 09:6442 $02 $03
    dw   `00000322                                     ;; 09:6444 $04 $07
    dw   `00000322                                     ;; 09:6446 $04 $07
    dw   `00003122                                     ;; 09:6448 $0c $0b
    dw   `00003112                                     ;; 09:644a $0e $09
    dw   `00003111                                     ;; 09:644c $0f $08
    dw   `00033311                                     ;; 09:644e $1f $1c

    dw   `30000000                                     ;; 09:6450 $80 $80
    dw   `23000000                                     ;; 09:6452 $40 $c0
    dw   `22300000                                     ;; 09:6454 $20 $e0
    dw   `22300000                                     ;; 09:6456 $20 $e0
    dw   `22130000                                     ;; 09:6458 $30 $d0
    dw   `21130000                                     ;; 09:645a $70 $90
    dw   `11130000                                     ;; 09:645c $f0 $10
    dw   `11333000                                     ;; 09:645e $f8 $38

    dw   `03322311                                     ;; 09:6460 $67 $7c
    dw   `03222311                                     ;; 09:6462 $47 $7c
    dw   `32332231                                     ;; 09:6464 $b3 $fe
    dw   `32232231                                     ;; 09:6466 $93 $fe
    dw   `32233333                                     ;; 09:6468 $9f $ff
    dw   `32233222                                     ;; 09:646a $98 $ff
    dw   `03232333                                     ;; 09:646c $57 $7f
    dw   `00333333                                     ;; 09:646e $3f $3f

    dw   `11322330                                     ;; 09:6470 $e6 $3e
    dw   `11322233                                     ;; 09:6472 $e3 $3f
    dw   `13223233                                     ;; 09:6474 $cb $7f
    dw   `33223223                                     ;; 09:6476 $c9 $ff
    dw   `33333223                                     ;; 09:6478 $f9 $ff
    dw   `22223323                                     ;; 09:647a $0d $ff
    dw   `22223223                                     ;; 09:647c $09 $ff
    dw   `33333330                                     ;; 09:647e $fe $fe

    dw   `00000003                                     ;; 09:6480 $01 $01
    dw   `00000032                                     ;; 09:6482 $02 $03
    dw   `00000322                                     ;; 09:6484 $04 $07
    dw   `00000332                                     ;; 09:6486 $06 $07
    dw   `00003113                                     ;; 09:6488 $0f $09
    dw   `00003331                                     ;; 09:648a $0f $0e
    dw   `00032233                                     ;; 09:648c $13 $1f
    dw   `00032232                                     ;; 09:648e $12 $1f

    dw   `30000000                                     ;; 09:6490 $80 $80
    dw   `23000000                                     ;; 09:6492 $40 $c0
    dw   `22300000                                     ;; 09:6494 $20 $e0
    dw   `22300000                                     ;; 09:6496 $20 $e0
    dw   `22230000                                     ;; 09:6498 $10 $f0
    dw   `32130000                                     ;; 09:649a $b0 $d0
    dw   `23113000                                     ;; 09:649c $78 $c8
    dw   `23113000                                     ;; 09:649e $78 $c8

    dw   `00003313                                     ;; 09:64a0 $0f $0d
    dw   `00031113                                     ;; 09:64a2 $1f $11
    dw   `00031133                                     ;; 09:64a4 $1f $13
    dw   `00031311                                     ;; 09:64a6 $1f $14
    dw   `00031311                                     ;; 09:64a8 $1f $14
    dw   `00003233                                     ;; 09:64aa $0b $0f
    dw   `00003222                                     ;; 09:64ac $08 $0f
    dw   `00003333                                     ;; 09:64ae $0f $0f

    dw   `22311300                                     ;; 09:64b0 $3c $e4
    dw   `22231130                                     ;; 09:64b2 $1e $f2
    dw   `22223300                                     ;; 09:64b4 $0c $fc
    dw   `32223000                                     ;; 09:64b6 $88 $f8
    dw   `32323000                                     ;; 09:64b8 $a8 $f8
    dw   `32323000                                     ;; 09:64ba $a8 $f8
    dw   `32322300                                     ;; 09:64bc $a4 $fc
    dw   `33233330                                     ;; 09:64be $de $fe

    dw   `00000000                                     ;; 09:64c0 $00 $00
    dw   `00000003                                     ;; 09:64c2 $01 $01
    dw   `00000032                                     ;; 09:64c4 $02 $03
    dw   `00000322                                     ;; 09:64c6 $04 $07
    dw   `00000332                                     ;; 09:64c8 $06 $07
    dw   `00003113                                     ;; 09:64ca $0f $09
    dw   `00003331                                     ;; 09:64cc $0f $0e
    dw   `00032233                                     ;; 09:64ce $13 $1f

    dw   `00000000                                     ;; 09:64d0 $00 $00
    dw   `30000000                                     ;; 09:64d2 $80 $80
    dw   `23000000                                     ;; 09:64d4 $40 $c0
    dw   `22300000                                     ;; 09:64d6 $20 $e0
    dw   `22300000                                     ;; 09:64d8 $20 $e0
    dw   `22230000                                     ;; 09:64da $10 $f0
    dw   `32130000                                     ;; 09:64dc $b0 $d0
    dw   `23113300                                     ;; 09:64de $7c $cc

    dw   `00032232                                     ;; 09:64e0 $12 $1f
    dw   `00003313                                     ;; 09:64e2 $0f $0d
    dw   `00031113                                     ;; 09:64e4 $1f $11
    dw   `00031132                                     ;; 09:64e6 $1e $13
    dw   `00031133                                     ;; 09:64e8 $1f $13
    dw   `00031323                                     ;; 09:64ea $1d $17
    dw   `00003222                                     ;; 09:64ec $08 $0f
    dw   `00033333                                     ;; 09:64ee $1f $1f

    dw   `23311130                                     ;; 09:64f0 $7e $e2
    dw   `22233113                                     ;; 09:64f2 $1f $f9
    dw   `22223330                                     ;; 09:64f4 $0e $fe
    dw   `32222300                                     ;; 09:64f6 $84 $fc
    dw   `13222300                                     ;; 09:64f8 $c4 $7c
    dw   `13223230                                     ;; 09:64fa $ca $7e
    dw   `33223230                                     ;; 09:64fc $ca $fe
    dw   `33322323                                     ;; 09:64fe $e5 $ff


data_09_6500:
    db   $0d, $0d, $0f, $0a, $0f, $0e, $0b, $0d        ;; 09:6500 ????????
    db   $1f, $1e, $3f, $2a, $67, $5c, $35, $2f        ;; 09:6508 ????????
    db   $b0, $b0, $f0, $50, $f0, $70, $d0, $b0        ;; 09:6510 ????????
    db   $f8, $f8, $fc, $54, $e6, $3a, $ac, $f4        ;; 09:6518 ????????
    db   $3e, $37, $4e, $7b, $65, $7f, $f6, $9d        ;; 09:6520 ????????
    db   $f7, $9a, $6f, $77, $b9, $ef, $ff, $ff        ;; 09:6528 ????????
    db   $7c, $ec, $76, $de, $af, $f9, $6f, $b9        ;; 09:6530 ????????
    db   $cf, $7f, $c5, $bf, $fe, $c6, $fe, $fe        ;; 09:6538 ????????
    db   $0d, $0d, $0f, $0a, $0a, $0f, $0f, $0f        ;; 09:6540 ????????
    db   $1f, $18, $38, $27, $67, $5f, $38, $3f        ;; 09:6548 ????????
    db   $b0, $b0, $f0, $50, $50, $f0, $f0, $f0        ;; 09:6550 ????????
    db   $f8, $18, $1c, $e4, $46, $fa, $1c, $fc        ;; 09:6558 ????????
    db   $3c, $2f, $57, $7b, $4f, $78, $47, $7f        ;; 09:6560 ????????
    db   $80, $ff, $cf, $b0, $7f, $4f, $ff, $ff        ;; 09:6568 ????????
    db   $3c, $f4, $ea, $de, $f2, $1e, $e2, $fe        ;; 09:6570 ????????
    db   $01, $ff, $03, $fd, $fe, $02, $ff, $ff        ;; 09:6578 ????????
    db   $0d, $0d, $0f, $0a, $0f, $09, $0e, $0f        ;; 09:6580 ????????
    db   $0f, $0a, $0f, $0a, $0f, $08, $0d, $0f        ;; 09:6588 ????????
    db   $40, $40, $e0, $a0, $e0, $e0, $20, $e0        ;; 09:6590 ????????
    db   $30, $f0, $e8, $78, $8c, $f4, $3c, $cc        ;; 09:6598 ????????
    db   $0b, $0e, $1b, $1e, $0f, $0f, $17, $1c        ;; 09:65a0 ????????
    db   $17, $1c, $0f, $0b, $0c, $0b, $0f, $0f        ;; 09:65a8 ????????
    db   $f0, $30, $d0, $f0, $08, $f8, $88, $f8        ;; 09:65b0 ????????
    db   $a8, $f8, $a4, $fc, $a4, $fc, $de, $fe        ;; 09:65b8 ????????
    db   $00, $00, $0d, $0d, $0f, $0a, $0f, $09        ;; 09:65c0 ????????
    db   $0e, $0f, $0f, $0a, $0f, $0a, $0f, $08        ;; 09:65c8 ????????
    db   $00, $00, $40, $40, $e0, $a0, $e0, $e0        ;; 09:65d0 ????????
    db   $20, $e0, $30, $f0, $e8, $78, $8c, $f4        ;; 09:65d8 ????????
    db   $0d, $0f, $0b, $0e, $0b, $0e, $17, $1f        ;; 09:65e0 ????????
    db   $17, $1e, $0f, $0a, $11, $1f, $1f, $1f        ;; 09:65e8 ????????
    db   $3c, $cc, $f0, $30, $d0, $f0, $08, $f8        ;; 09:65f0 ????????
    db   $c8, $78, $c4, $7c, $a2, $fe, $ff, $ff        ;; 09:65f8 ????????

data_09_6600:
    db   $03, $03, $07, $04, $0f, $08, $1f, $13        ;; 09:6600 ????????
    db   $3c, $27, $78, $4f, $7f, $5e, $7f, $5a        ;; 09:6608 ????????
    db   $c0, $c0, $e0, $20, $f0, $10, $f8, $c8        ;; 09:6610 ????????
    db   $3c, $e4, $be, $72, $fe, $da, $fe, $7a        ;; 09:6618 ????????
    db   $3f, $2a, $67, $5c, $db, $bf, $bf, $e4        ;; 09:6620 ????????
    db   $bf, $e4, $96, $ff, $4f, $79, $3f, $3f        ;; 09:6628 ????????
    db   $fc, $54, $fe, $22, $f9, $df, $fd, $27        ;; 09:6630 ????????
    db   $fd, $27, $b9, $5f, $0a, $fe, $fc, $fc        ;; 09:6638 ????????
    db   $03, $03, $07, $04, $0f, $0a, $1f, $13        ;; 09:6640 ????????
    db   $3f, $20, $3f, $20, $7f, $40, $7f, $40        ;; 09:6648 ????????
    db   $80, $80, $c0, $40, $e0, $20, $f0, $10        ;; 09:6650 ????????
    db   $f8, $08, $fc, $04, $fc, $04, $fc, $04        ;; 09:6658 ????????
    db   $3f, $20, $7f, $47, $ff, $80, $f5, $ba        ;; 09:6660 ????????
    db   $60, $7f, $2e, $3f, $1f, $11, $7f, $7f        ;; 09:6668 ????????
    db   $fc, $04, $fe, $1a, $ff, $01, $ff, $09        ;; 09:6670 ????????
    db   $fd, $07, $57, $af, $84, $fc, $fe, $fe        ;; 09:6678 ????????
    db   $0f, $0f, $1f, $10, $3f, $20, $7f, $4c        ;; 09:6680 ????????
    db   $73, $5e, $2d, $3f, $1e, $17, $1f, $14        ;; 09:6688 ????????
    db   $fc, $fc, $fc, $04, $f8, $08, $f0, $10        ;; 09:6690 ????????
    db   $f8, $08, $fc, $04, $fc, $84, $fc, $8c        ;; 09:6698 ????????
    db   $1f, $11, $0f, $0e, $06, $07, $0f, $09        ;; 09:66a0 ????????
    db   $0f, $09, $06, $07, $0f, $09, $3f, $3f        ;; 09:66a8 ????????
    db   $f8, $18, $f0, $30, $70, $90, $78, $88        ;; 09:66b0 ????????
    db   $3c, $c4, $9f, $e3, $41, $ff, $ff, $ff        ;; 09:66b8 ????????
    db   $00, $00, $0f, $0f, $1f, $10, $3f, $20        ;; 09:66c0 ????????
    db   $7f, $4c, $73, $5e, $2d, $3f, $1e, $17        ;; 09:66c8 ????????
    db   $00, $00, $fc, $fc, $fc, $04, $f8, $08        ;; 09:66d0 ????????
    db   $f0, $10, $f8, $08, $fc, $04, $fc, $84        ;; 09:66d8 ????????
    db   $1f, $14, $1f, $11, $1f, $1e, $3f, $28        ;; 09:66e0 ????????
    db   $3f, $29, $19, $1f, $3c, $27, $7f, $7f        ;; 09:66e8 ????????
    db   $fc, $8c, $f8, $18, $f0, $30, $f8, $c8        ;; 09:66f0 ????????
    db   $fe, $26, $e7, $39, $d1, $ff, $ff, $ff        ;; 09:66f8 ????????

data_09_6700:
    db   $13, $13, $3d, $2f, $79, $5f, $7f, $47        ;; 09:6700 ????????
    db   $3f, $28, $1f, $17, $3f, $2d, $1f, $1d        ;; 09:6708 ????????
    db   $c8, $48, $bc, $74, $9e, $7a, $fe, $72        ;; 09:6710 ????????
    db   $fc, $14, $f8, $e8, $fc, $b4, $f8, $b8        ;; 09:6718 ????????
    db   $6f, $5b, $e7, $9c, $f7, $9e, $f5, $bf        ;; 09:6720 ????????
    db   $5f, $5b, $10, $1f, $08, $0f, $3f, $3f        ;; 09:6728 ????????
    db   $f4, $dc, $ec, $3c, $de, $72, $9e, $f2        ;; 09:6730 ????????
    db   $fc, $fc, $90, $f0, $e0, $e0, $fc, $fc        ;; 09:6738 ????????
    db   $13, $13, $3d, $2f, $79, $5f, $79, $4f        ;; 09:6740 ????????
    db   $39, $2f, $19, $1f, $3f, $27, $1f, $11        ;; 09:6748 ????????
    db   $c8, $48, $fc, $74, $de, $7a, $de, $72        ;; 09:6750 ????????
    db   $dc, $74, $d8, $78, $fc, $64, $fe, $0e        ;; 09:6758 ????????
    db   $3f, $2c, $77, $4f, $74, $5f, $34, $3f        ;; 09:6760 ????????
    db   $1f, $1b, $10, $1f, $08, $0f, $3f, $3f        ;; 09:6768 ????????
    db   $f6, $3a, $ef, $f1, $2f, $f1, $2f, $f9        ;; 09:6770 ????????
    db   $fe, $fe, $90, $f0, $e0, $e0, $fc, $fc        ;; 09:6778 ????????
    db   $07, $07, $0e, $0b, $1c, $17, $1e, $17        ;; 09:6780 ????????
    db   $3f, $21, $1f, $1e, $0f, $0b, $0f, $0b        ;; 09:6788 ????????
    db   $c0, $c0, $30, $f0, $18, $f8, $38, $e8        ;; 09:6790 ????????
    db   $f8, $88, $f0, $90, $e8, $78, $fc, $84        ;; 09:6798 ????????
    db   $0f, $0e, $1f, $11, $3f, $23, $3f, $2e        ;; 09:67a0 ????????
    db   $1b, $1e, $05, $07, $08, $0f, $0f, $0f        ;; 09:67a8 ????????
    db   $98, $f8, $68, $f8, $f0, $90, $f0, $50        ;; 09:67b0 ????????
    db   $e0, $60, $e0, $a0, $20, $e0, $e0, $e0        ;; 09:67b8 ????????
    db   $00, $00, $07, $07, $0e, $0b, $1c, $17        ;; 09:67c0 ????????
    db   $1e, $17, $3f, $21, $1f, $1e, $0f, $0b        ;; 09:67c8 ????????
    db   $00, $00, $c0, $c0, $30, $f0, $18, $f8        ;; 09:67d0 ????????
    db   $38, $e8, $f8, $88, $f0, $90, $e8, $78        ;; 09:67d8 ????????
    db   $0f, $0b, $0f, $0e, $1f, $11, $3e, $23        ;; 09:67e0 ????????
    db   $3c, $2f, $1e, $1b, $27, $3d, $13, $1f        ;; 09:67e8 ????????
    db   $fc, $84, $98, $f8, $78, $c8, $7c, $d4        ;; 09:67f0 ????????
    db   $3c, $e4, $78, $d8, $e4, $bc, $c8, $f8        ;; 09:67f8 ????????
    db   $39, $39, $3f, $26, $37, $28, $7f, $60        ;; 09:6800 ????????
    db   $bf, $e0, $bf, $e2, $bf, $e2, $be, $e1        ;; 09:6808 ????????
    db   $9c, $9c, $fc, $64, $ec, $14, $fe, $06        ;; 09:6810 ????????
    db   $fd, $07, $fd, $47, $fd, $47, $7d, $87        ;; 09:6818 ????????
    db   $be, $f1, $ff, $e0, $7f, $40, $7f, $48        ;; 09:6820 ????????
    db   $3f, $31, $0f, $09, $07, $07, $3f, $3f        ;; 09:6828 ????????
    db   $7d, $8f, $ff, $27, $fe, $42, $fc, $44        ;; 09:6830 ????????
    db   $f8, $38, $f8, $08, $b0, $50, $fc, $fc        ;; 09:6838 ????????
    db   $39, $39, $3f, $26, $3f, $20, $3f, $30        ;; 09:6840 ????????
    db   $2f, $38, $4f, $78, $87, $fe, $81, $ff        ;; 09:6848 ????????
    db   $9c, $9c, $fc, $64, $fc, $04, $fc, $0c        ;; 09:6850 ????????
    db   $f4, $1c, $f2, $1e, $e1, $7f, $81, $ff        ;; 09:6858 ????????
    db   $a1, $ff, $6d, $7f, $7f, $52, $6f, $58        ;; 09:6860 ????????
    db   $3f, $30, $1f, $11, $0f, $0f, $1f, $1f        ;; 09:6868 ????????
    db   $85, $ff, $b6, $fe, $fe, $4e, $f8, $08        ;; 09:6870 ????????
    db   $f8, $08, $f8, $08, $b0, $50, $fc, $fc        ;; 09:6878 ????????
    db   $0e, $0e, $0b, $0d, $19, $16, $3d, $22        ;; 09:6880 ????????
    db   $7f, $40, $7f, $50, $7f, $50, $bf, $c0        ;; 09:6888 ????????
    db   $00, $00, $80, $80, $c0, $40, $e8, $28        ;; 09:6890 ????????
    db   $f4, $1c, $f2, $1e, $f2, $1e, $e2, $1e        ;; 09:6898 ????????
    db   $bf, $c0, $7f, $40, $3f, $24, $7f, $44        ;; 09:68a0 ????????
    db   $5f, $64, $3f, $33, $2f, $30, $3f, $3f        ;; 09:68a8 ????????
    db   $e2, $1e, $fa, $1e, $f4, $94, $f0, $90        ;; 09:68b0 ????????
    db   $f0, $90, $f0, $10, $e0, $20, $f0, $f0        ;; 09:68b8 ????????
    db   $00, $00, $0e, $0e, $0b, $0d, $19, $16        ;; 09:68c0 ????????
    db   $3d, $22, $7f, $40, $7f, $50, $7f, $50        ;; 09:68c8 ????????
    db   $00, $00, $00, $00, $80, $80, $c4, $44        ;; 09:68d0 ????????
    db   $ea, $2e, $f9, $1f, $f1, $1f, $f1, $1f        ;; 09:68d8 ????????
    db   $bf, $c0, $bf, $c0, $7f, $40, $3f, $24        ;; 09:68e0 ????????
    db   $7f, $62, $bf, $c1, $5f, $67, $ff, $ff        ;; 09:68e8 ????????
    db   $e1, $1f, $ed, $1f, $f2, $12, $f0, $50        ;; 09:68f0 ????????
    db   $f8, $48, $f8, $88, $b0, $d0, $fc, $fc        ;; 09:68f8 ????????

data_09_6900:
    db   $0f, $0f, $12, $1f, $0a, $0f, $0f, $08        ;; 09:6900 ????????
    db   $0f, $08, $0f, $0e, $0f, $0a, $3f, $3c        ;; 09:6908 ????????
    db   $e0, $e0, $50, $f0, $98, $f8, $e8, $38        ;; 09:6910 ????????
    db   $e8, $38, $f0, $d0, $f0, $50, $fc, $3c        ;; 09:6918 ????????
    db   $7f, $7f, $7e, $7d, $bf, $fd, $ff, $9f        ;; 09:6920 ????????
    db   $6f, $6f, $0f, $0f, $09, $0f, $07, $07        ;; 09:6928 ????????
    db   $fe, $fe, $7e, $b2, $fe, $b2, $fc, $fc        ;; 09:6930 ????????
    db   $f0, $f0, $70, $70, $60, $60, $00, $00        ;; 09:6938 ????????
    db   $07, $07, $0a, $0f, $08, $0f, $08, $0f        ;; 09:6940 ????????
    db   $08, $0f, $08, $0f, $06, $05, $1f, $1e        ;; 09:6948 ????????
    db   $e0, $e0, $10, $f0, $08, $f8, $10, $f0        ;; 09:6950 ????????
    db   $10, $f0, $10, $f0, $60, $a0, $f8, $78        ;; 09:6958 ????????
    db   $3f, $3f, $3f, $3f, $1f, $1f, $0f, $0f        ;; 09:6960 ????????
    db   $0f, $0f, $0f, $0f, $09, $0f, $07, $07        ;; 09:6968 ????????
    db   $fc, $fc, $fe, $fe, $fa, $fe, $fe, $fa        ;; 09:6970 ????????
    db   $f4, $f4, $70, $70, $60, $60, $00, $00        ;; 09:6978 ????????
    db   $0f, $0f, $12, $1f, $0a, $0f, $0f, $08        ;; 09:6980 ????????
    db   $0f, $08, $0f, $0f, $0f, $0a, $0f, $08        ;; 09:6988 ????????
    db   $c0, $c0, $60, $e0, $90, $f0, $10, $f0        ;; 09:6990 ????????
    db   $90, $f0, $e0, $60, $e0, $60, $c0, $c0        ;; 09:6998 ????????
    db   $07, $07, $0b, $0d, $07, $07, $07, $07        ;; 09:69a0 ????????
    db   $07, $07, $03, $03, $04, $07, $07, $07        ;; 09:69a8 ????????
    db   $e0, $e0, $f0, $f0, $f0, $f0, $f0, $30        ;; 09:69b0 ????????
    db   $e0, $20, $c0, $c0, $40, $c0, $c0, $c0        ;; 09:69b8 ????????
    db   $00, $00, $0f, $0f, $12, $1f, $0a, $0f        ;; 09:69c0 ????????
    db   $0f, $08, $0f, $08, $0f, $0f, $0f, $0a        ;; 09:69c8 ????????
    db   $00, $00, $c0, $c0, $60, $e0, $90, $f0        ;; 09:69d0 ????????
    db   $10, $f0, $90, $f0, $e0, $60, $e0, $60        ;; 09:69d8 ????????
    db   $0f, $08, $07, $07, $0b, $0d, $07, $07        ;; 09:69e0 ????????
    db   $07, $07, $1f, $1f, $17, $1f, $0c, $0c        ;; 09:69e8 ????????
    db   $c0, $c0, $e0, $e0, $f0, $f0, $f0, $f0        ;; 09:69f0 ????????
    db   $f8, $c8, $f8, $c8, $f0, $f0, $60, $60        ;; 09:69f8 ????????

data_09_6a00:
    db   $1a, $1a, $25, $3f, $30, $3f, $40, $7f        ;; 09:6a00 ????????
    db   $ae, $ff, $47, $7d, $50, $7f, $3b, $3d        ;; 09:6a08 ????????
    db   $d8, $d8, $24, $fc, $0c, $fc, $02, $fe        ;; 09:6a10 ????????
    db   $75, $ff, $e2, $be, $0a, $fe, $dc, $bc        ;; 09:6a18 ????????
    db   $4c, $77, $9f, $e3, $af, $f0, $70, $7f        ;; 09:6a20 ????????
    db   $1f, $10, $10, $1f, $0d, $0a, $1f, $1f        ;; 09:6a28 ????????
    db   $24, $fc, $f2, $ce, $f1, $0f, $09, $ff        ;; 09:6a30 ????????
    db   $e9, $1f, $96, $f6, $f0, $f0, $fc, $fc        ;; 09:6a38 ????????
    db   $1a, $1a, $25, $3f, $30, $3f, $40, $7f        ;; 09:6a40 ????????
    db   $a0, $ff, $40, $7f, $50, $7f, $38, $3f        ;; 09:6a48 ????????
    db   $d8, $d8, $24, $fc, $0c, $fc, $02, $fe        ;; 09:6a50 ????????
    db   $05, $ff, $02, $fe, $0a, $fe, $1c, $fc        ;; 09:6a58 ????????
    db   $4f, $70, $8f, $f0, $a7, $f8, $78, $77        ;; 09:6a60 ????????
    db   $17, $18, $10, $1f, $0d, $0a, $1f, $1f        ;; 09:6a68 ????????
    db   $f4, $0c, $f2, $0e, $f1, $0f, $09, $ff        ;; 09:6a70 ????????
    db   $e9, $1f, $96, $f6, $f0, $f0, $fc, $fc        ;; 09:6a78 ????????
    db   $03, $03, $04, $07, $08, $0f, $10, $1f        ;; 09:6a80 ????????
    db   $10, $1f, $2c, $3f, $3c, $37, $40, $7f        ;; 09:6a88 ????????
    db   $f8, $f8, $44, $fc, $88, $f8, $18, $f8        ;; 09:6a90 ????????
    db   $04, $fc, $18, $f8, $04, $fc, $08, $f8        ;; 09:6a98 ????????
    db   $2b, $37, $1f, $1c, $1f, $10, $10, $1f        ;; 09:6aa0 ????????
    db   $0f, $08, $0c, $0f, $0c, $0b, $1f, $1f        ;; 09:6aa8 ????????
    db   $d8, $f8, $04, $fc, $c4, $7c, $84, $fc        ;; 09:6ab0 ????????
    db   $88, $f8, $70, $f0, $20, $e0, $f8, $f8        ;; 09:6ab8 ????????
    db   $00, $00, $03, $03, $04, $07, $08, $0f        ;; 09:6ac0 ????????
    db   $10, $1f, $10, $1f, $2c, $3f, $3c, $37        ;; 09:6ac8 ????????
    db   $00, $00, $f8, $f8, $44, $fc, $88, $f8        ;; 09:6ad0 ????????
    db   $18, $f8, $04, $fc, $18, $f8, $04, $fc        ;; 09:6ad8 ????????
    db   $40, $7f, $2b, $37, $1f, $1c, $18, $17        ;; 09:6ae0 ????????
    db   $7f, $78, $60, $5f, $23, $3f, $7f, $7f        ;; 09:6ae8 ????????
    db   $08, $f8, $dc, $fc, $82, $7e, $21, $ff        ;; 09:6af0 ????????
    db   $d1, $3f, $0e, $fe, $e2, $de, $fe, $fe        ;; 09:6af8 ????????
    db   $00, $00, $01, $01, $03, $03, $23, $23        ;; 09:6b00 ????????
    db   $1b, $1b, $0d, $0d, $0f, $0f, $1f, $1f        ;; 09:6b08 ????????
    db   $80, $80, $00, $00, $20, $20, $a0, $a0        ;; 09:6b10 ????????
    db   $d8, $d8, $e8, $e8, $6c, $ec, $3c, $fc        ;; 09:6b18 ????????
    db   $1a, $1f, $33, $3e, $78, $7f, $35, $3e        ;; 09:6b20 ????????
    db   $38, $3f, $1a, $1f, $17, $17, $0b, $0b        ;; 09:6b28 ????????
    db   $b6, $7e, $56, $be, $e6, $1e, $ce, $3e        ;; 09:6b30 ????????
    db   $ac, $7c, $5c, $fc, $78, $f8, $b4, $b4        ;; 09:6b38 ????????

data_09_6b40:
    db   $66, $66, $66, $66, $bb, $ff, $66, $66        ;; 09:6b40 ????????
    db   $66, $66, $66, $66, $bb, $ff, $66, $66        ;; 09:6b48 ????????
    db   $66, $66, $66, $66, $bb, $ff, $66, $66        ;; 09:6b50 ????????
    db   $66, $66, $66, $66, $bb, $ff, $66, $66        ;; 09:6b58 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6b60 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6b68 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6b70 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6b78 ????????

data_09_6b80:
    db   $00, $00, $03, $03, $07, $05, $1e, $1f        ;; 09:6b80 ????????
    db   $21, $3f, $46, $7f, $4e, $7d, $ee, $bd        ;; 09:6b88 ????????
    db   $00, $00, $c0, $c0, $f0, $70, $f0, $d0        ;; 09:6b90 ????????
    db   $e0, $a0, $c0, $c0, $40, $c0, $40, $c0        ;; 09:6b98 ????????
    db   $f0, $9f, $e0, $bf, $63, $7e, $23, $3e        ;; 09:6ba0 ????????
    db   $11, $1f, $0e, $0f, $17, $1d, $1b, $1b        ;; 09:6ba8 ????????
    db   $40, $c0, $20, $e0, $20, $e0, $60, $a0        ;; 09:6bb0 ????????
    db   $f0, $30, $cc, $fc, $fe, $66, $9c, $9c        ;; 09:6bb8 ????????
    db   $01, $01, $03, $02, $0f, $0f, $10, $1f        ;; 09:6bc0 ????????
    db   $23, $3f, $67, $7e, $f7, $9e, $f8, $af        ;; 09:6bc8 ????????
    db   $e0, $e0, $f8, $b8, $78, $e8, $f0, $d0        ;; 09:6bd0 ????????
    db   $60, $e0, $20, $e0, $27, $e7, $3f, $f9        ;; 09:6bd8 ????????
    db   $78, $6f, $70, $5f, $30, $3f, $10, $1f        ;; 09:6be0 ????????
    db   $08, $0f, $07, $07, $0b, $0e, $0d, $0d        ;; 09:6be8 ????????
    db   $26, $fa, $4c, $fc, $06, $fa, $2c, $f4        ;; 09:6bf0 ????????
    db   $9a, $fe, $77, $f9, $ef, $af, $c0, $c0        ;; 09:6bf8 ????????
    db   $03, $03, $1c, $1f, $33, $3f, $6f, $76        ;; 09:6c00 ????????
    db   $5e, $69, $7c, $4b, $a0, $df, $a0, $df        ;; 09:6c08 ????????
    db   $f0, $f0, $38, $f8, $84, $fc, $94, $7c        ;; 09:6c10 ????????
    db   $0a, $fe, $0e, $fa, $2d, $df, $2f, $db        ;; 09:6c18 ????????
    db   $88, $ff, $a8, $ff, $ec, $ff, $50, $7f        ;; 09:6c20 ????????
    db   $5a, $7f, $36, $3f, $1b, $1f, $07, $07        ;; 09:6c28 ????????
    db   $15, $eb, $13, $ed, $23, $ff, $22, $fe        ;; 09:6c30 ????????
    db   $56, $fe, $d4, $fc, $bc, $fc, $f8, $f8        ;; 09:6c38 ????????
    db   $07, $07, $1f, $18, $3f, $27, $78, $5f        ;; 09:6c40 ????????
    db   $7f, $5f, $ff, $a7, $df, $b8, $df, $f7        ;; 09:6c48 ????????
    db   $e0, $e0, $98, $78, $e4, $fc, $1a, $fe        ;; 09:6c50 ????????
    db   $fa, $fe, $e5, $ff, $99, $7f, $eb, $ff        ;; 09:6c58 ????????
    db   $fb, $b6, $fb, $de, $a7, $ff, $58, $7f        ;; 09:6c60 ????????
    db   $5f, $77, $3b, $36, $1b, $1e, $07, $07        ;; 09:6c68 ????????
    db   $6d, $df, $7b, $df, $e5, $ff, $1a, $fe        ;; 09:6c70 ????????
    db   $eb, $ff, $6f, $df, $7e, $de, $fc, $fc        ;; 09:6c78 ????????

data_09_6c80:
    db   $7f, $7f, $7f, $40, $7f, $5f, $70, $5f        ;; 09:6c80 ????????
    db   $7f, $5f, $7f, $5f, $7f, $5f, $7f, $5f        ;; 09:6c88 ????????
    db   $fe, $fe, $fe, $02, $fa, $fe, $0a, $fe        ;; 09:6c90 ????????
    db   $fa, $fe, $fa, $fe, $fa, $fe, $fa, $fe        ;; 09:6c98 ????????
    db   $7c, $43, $7f, $7f, $20, $3f, $3f, $20        ;; 09:6ca0 ????????
    db   $7f, $50, $7c, $53, $7f, $5f, $3f, $3f        ;; 09:6ca8 ????????
    db   $02, $fe, $fe, $fe, $04, $fc, $04, $fc        ;; 09:6cb0 ????????
    db   $ce, $3a, $0e, $fa, $fe, $fa, $fc, $fc        ;; 09:6cb8 ????????
    db   $ff, $ff, $ff, $80, $ff, $bf, $e0, $bf        ;; 09:6cc0 ????????
    db   $ff, $bf, $ff, $bf, $ff, $bf, $ff, $bf        ;; 09:6cc8 ????????
    db   $ff, $ff, $ff, $01, $ff, $fd, $07, $fd        ;; 09:6cd0 ????????
    db   $ff, $fd, $fd, $ff, $fd, $ff, $fd, $ff        ;; 09:6cd8 ????????
    db   $f8, $87, $ff, $ff, $40, $7f, $7f, $40        ;; 09:6ce0 ????????
    db   $37, $38, $78, $4f, $6f, $5f, $30, $30        ;; 09:6ce8 ????????
    db   $01, $ff, $ff, $ff, $02, $fe, $c2, $3e        ;; 09:6cf0 ????????
    db   $8c, $7c, $1e, $f2, $fa, $f6, $0c, $0c        ;; 09:6cf8 ????????
    db   $03, $03, $0f, $0c, $3f, $3b, $7c, $57        ;; 09:6d00 ????????
    db   $7f, $57, $ff, $ab, $f7, $ac, $fb, $a7        ;; 09:6d08 ????????
    db   $c0, $c0, $f0, $30, $fc, $dc, $3a, $ee        ;; 09:6d10 ????????
    db   $fa, $ee, $f5, $df, $e5, $3f, $c5, $ff        ;; 09:6d18 ????????
    db   $fe, $91, $bf, $d8, $77, $4f, $58, $67        ;; 09:6d20 ????????
    db   $3f, $20, $1f, $10, $0c, $0b, $07, $07        ;; 09:6d28 ????????
    db   $09, $ff, $9b, $7f, $e2, $fe, $07, $ff        ;; 09:6d30 ????????
    db   $07, $ff, $0f, $ff, $1e, $fe, $f8, $f8        ;; 09:6d38 ????????

data_09_6d40:
    db   $00, $00, $00, $00, $00, $00, $1c, $1c        ;; 09:6d40 ????????
    db   $7f, $6f, $7e, $77, $f9, $ff, $fd, $ff        ;; 09:6d48 ????????
    db   $00, $00, $00, $00, $00, $00, $70, $70        ;; 09:6d50 ????????
    db   $c8, $b8, $ee, $be, $7d, $d7, $5f, $eb        ;; 09:6d58 ????????
    db   $f4, $ff, $f9, $ff, $7d, $ff, $7f, $7f        ;; 09:6d60 ????????
    db   $f7, $ff, $0e, $ff, $00, $0e, $00, $00        ;; 09:6d68 ????????
    db   $5f, $e1, $7e, $d3, $fc, $ae, $d0, $bc        ;; 09:6d70 ????????
    db   $48, $fc, $30, $78, $00, $30, $00, $00        ;; 09:6d78 ????????

data_09_6d80:
    dw   `00000000                                     ;; 09:6d80 $00 $00
    dw   `00000003                                     ;; 09:6d82 $01 $01
    dw   `00000003                                     ;; 09:6d84 $01 $01
    dw   `00333303                                     ;; 09:6d86 $3d $3d
    dw   `03222233                                     ;; 09:6d88 $43 $7f
    dw   `32223311                                     ;; 09:6d8a $8f $fc
    dw   `32223113                                     ;; 09:6d8c $8f $f9
    dw   `32222313                                     ;; 09:6d8e $87 $fd

    dw   `00000000                                     ;; 09:6d90 $00 $00
    dw   `30000000                                     ;; 09:6d92 $80 $80
    dw   `23000030                                     ;; 09:6d94 $42 $c2
    dw   `22330313                                     ;; 09:6d96 $37 $f5
    dw   `23113213                                     ;; 09:6d98 $7b $cd
    dw   `33113213                                     ;; 09:6d9a $fb $cd
    dw   `13333232                                     ;; 09:6d9c $fa $7f
    dw   `13323332                                     ;; 09:6d9e $ee $7f

    dw   `32232311                                     ;; 09:6da0 $97 $fc
    dw   `32223113                                     ;; 09:6da2 $8f $f9
    dw   `23222313                                     ;; 09:6da4 $47 $fd
    dw   `23232333                                     ;; 09:6da6 $57 $ff
    dw   `22332323                                     ;; 09:6da8 $35 $ff
    dw   `02323223                                     ;; 09:6daa $29 $7f
    dw   `00222202                                     ;; 09:6dac $00 $3d
    dw   `00000000                                     ;; 09:6dae $00 $00

    dw   `13323232                                     ;; 09:6db0 $ea $7f
    dw   `13223213                                     ;; 09:6db2 $cb $7d
    dw   `32232213                                     ;; 09:6db4 $93 $fd
    dw   `23333213                                     ;; 09:6db6 $7b $fd
    dw   `22332313                                     ;; 09:6db8 $37 $fd
    dw   `23113232                                     ;; 09:6dba $7a $cf
    dw   `33113222                                     ;; 09:6dbc $f8 $cf
    dw   `22332000                                     ;; 09:6dbe $30 $f8


data_09_6dc0:
    db   $00, $00, $00, $00, $03, $03, $04, $07        ;; 09:6dc0 ????????
    db   $0c, $0b, $16, $19, $2f, $30, $39, $26        ;; 09:6dc8 ????????
    db   $00, $00, $f0, $f0, $68, $98, $34, $cc        ;; 09:6dd0 ????????
    db   $3c, $c4, $72, $8e, $e2, $1e, $e2, $1e        ;; 09:6dd8 ????????
    db   $50, $6f, $50, $6f, $50, $6f, $59, $66        ;; 09:6de0 ????????
    db   $2f, $30, $23, $3c, $78, $7f, $1f, $1f        ;; 09:6de8 ????????
    db   $f2, $0e, $fe, $02, $fe, $02, $c4, $3c        ;; 09:6df0 ????????
    db   $84, $7c, $8c, $7c, $3e, $fe, $f8, $f8        ;; 09:6df8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6e00 ????????
    db   $09, $09, $17, $1f, $3e, $27, $53, $6f        ;; 09:6e08 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6e10 ????????
    db   $86, $86, $49, $cf, $33, $ff, $0f, $fd        ;; 09:6e18 ????????
    db   $63, $5f, $a3, $de, $b7, $cc, $bf, $c4        ;; 09:6e20 ????????
    db   $5f, $60, $49, $76, $f0, $ff, $3f, $3f        ;; 09:6e28 ????????
    db   $9f, $f1, $f5, $fb, $d2, $ee, $24, $fc        ;; 09:6e30 ????????
    db   $3e, $fe, $9f, $7f, $3c, $fc, $e0, $e0        ;; 09:6e38 ????????

data_09_6e40:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6e40 ????????
    db   $03, $03, $04, $07, $08, $0f, $08, $0f        ;; 09:6e48 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6e50 ????????
    db   $c0, $c0, $20, $e0, $10, $f0, $88, $f8        ;; 09:6e58 ????????
    db   $15, $1f, $13, $1f, $27, $3e, $4f, $7a        ;; 09:6e60 ????????
    db   $5f, $74, $23, $3f, $79, $6e, $7e, $4f        ;; 09:6e68 ????????
    db   $c8, $78, $e8, $78, $e4, $5c, $f4, $5c        ;; 09:6e70 ????????
    db   $f4, $2c, $f8, $d8, $dc, $34, $3e, $f2        ;; 09:6e78 ????????

data_09_6e80:
    db   $03, $07, $04, $1f, $19, $3f, $3b, $6d        ;; 09:6e80 ????????
    db   $1f, $32, $2f, $7e, $1f, $3a, $0f, $1a        ;; 09:6e88 ????????
    db   $c0, $e0, $20, $f8, $98, $7c, $dc, $b6        ;; 09:6e90 ????????
    db   $f8, $4c, $f4, $fe, $f8, $7c, $f0, $58        ;; 09:6e98 ????????
    db   $17, $3c, $1f, $3b, $3f, $70, $74, $cf        ;; 09:6ea0 ????????
    db   $26, $7f, $28, $7f, $10, $3f, $20, $6a        ;; 09:6ea8 ????????
    db   $e8, $3c, $f8, $dc, $f8, $0c, $38, $ec        ;; 09:6eb0 ????????
    db   $6c, $f6, $14, $fe, $08, $fc, $04, $56        ;; 09:6eb8 ????????

data_09_6ec0:
    db   $03, $03, $0f, $0f, $1f, $1f, $3e, $2f        ;; 09:6ec0 ????????
    db   $7e, $73, $fc, $ff, $7e, $7f, $1a, $1f        ;; 09:6ec8 ????????
    db   $c0, $c0, $f0, $f0, $f0, $f0, $f8, $e8        ;; 09:6ed0 ????????
    db   $78, $d8, $38, $f8, $f0, $f0, $58, $f8        ;; 09:6ed8 ????????
    db   $24, $3f, $3b, $27, $4c, $7b, $5f, $7d        ;; 09:6ee0 ????????
    db   $6b, $6e, $09, $0f, $04, $07, $0f, $0f        ;; 09:6ee8 ????????
    db   $34, $ec, $d2, $ee, $32, $de, $fa, $9e        ;; 09:6ef0 ????????
    db   $fc, $3c, $f0, $70, $a0, $e0, $f0, $f0        ;; 09:6ef8 ????????

data_09_6f00:
    db   $03, $03, $07, $07, $0f, $0f, $0b, $0f        ;; 09:6f00 ????????
    db   $1c, $1f, $3f, $3e, $3f, $3a, $3f, $3a        ;; 09:6f08 ????????
    db   $c0, $c0, $e0, $e0, $f0, $f0, $d8, $f8        ;; 09:6f10 ????????
    db   $7a, $fa, $ff, $fd, $ff, $5d, $ff, $59        ;; 09:6f18 ????????
    db   $37, $3c, $23, $3f, $1f, $19, $0f, $0a        ;; 09:6f20 ????????
    db   $07, $04, $0b, $0f, $04, $07, $3f, $3f        ;; 09:6f28 ????????
    db   $ff, $35, $ff, $e5, $7f, $d5, $ef, $c5        ;; 09:6f30 ????????
    db   $ff, $d5, $fe, $d2, $bc, $e4, $fe, $fe        ;; 09:6f38 ????????

data_09_6f40:
    db   $00, $00, $00, $00, $00, $00, $30, $30        ;; 09:6f40 ????????
    db   $38, $38, $28, $28, $28, $28, $60, $60        ;; 09:6f48 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6f50 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6f58 ????????
    db   $63, $63, $04, $04, $38, $38, $40, $40        ;; 09:6f60 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6f68 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6f70 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6f78 ????????
    db   $06, $06, $1a, $1a, $12, $12, $16, $16        ;; 09:6f80 ????????
    db   $36, $36, $30, $30, $00, $00, $00, $00        ;; 09:6f88 ????????
    db   $00, $00, $0c, $0c, $0e, $0e, $0a, $0a        ;; 09:6f90 ????????
    db   $1a, $1a, $18, $18, $00, $00, $06, $06        ;; 09:6f98 ????????
    db   $00, $00, $01, $01, $06, $06, $08, $08        ;; 09:6fa0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6fa8 ????????
    db   $f8, $f8, $00, $00, $00, $00, $00, $00        ;; 09:6fb0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6fb8 ????????

gfxBlankTiles09:
    dw   `00000000                                     ;; 09:6fc0 $00 $00
    dw   `00000000                                     ;; 09:6fc2 $00 $00
    dw   `00000000                                     ;; 09:6fc4 $00 $00
    dw   `00000000                                     ;; 09:6fc6 $00 $00
    dw   `00000000                                     ;; 09:6fc8 $00 $00
    dw   `00000000                                     ;; 09:6fca $00 $00
    dw   `00000000                                     ;; 09:6fcc $00 $00
    dw   `00000000                                     ;; 09:6fce $00 $00

    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6fd0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6fd8 ????????
    dw   `00000000                                     ;; 09:6fe0 $00 $00
    dw   `00000000                                     ;; 09:6fe2 $00 $00
    dw   `00000000                                     ;; 09:6fe4 $00 $00
    dw   `00000000                                     ;; 09:6fe6 $00 $00
    dw   `00000000                                     ;; 09:6fe8 $00 $00
    dw   `00000000                                     ;; 09:6fea $00 $00
    dw   `00000000                                     ;; 09:6fec $00 $00
    dw   `00000000                                     ;; 09:6fee $00 $00

    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6ff0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:6ff8 ????????

;@gfximg name=projectile/knife width=2 height=4
gfxProjectileKnife:
    INCBIN "projectile/knife.bin"                      ;; 09:7000

;@gfximg name=projectile/sun width=2 height=2
gfxProjectileSun:
    INCBIN "projectile/sun.bin"                        ;; 09:7080

;@gfximg name=projectile/needles width=2 height=4
gfxProjectileNeedles:
    INCBIN "projectile/needles.bin"                    ;; 09:70c0

;@gfximg name=projectile/pitchfork width=2 height=4
gfxProjectilePitchfork:
    INCBIN "projectile/pitchfork.bin"                  ;; 09:7140

;@gfximg name=projectile/mirrorimage width=2 height=2
gfxProjectileMirrorImage:
    INCBIN "projectile/mirrorimage.bin"                ;; 09:71c0

;@gfximg name=projectile/laser width=2 height=4
gfxProjectileLaser:
    INCBIN "projectile/laser.bin"                      ;; 09:7200

;@gfximg name=projectile/axe width=2 height=2
gfxProjectileAxe:
    INCBIN "projectile/axe.bin"                        ;; 09:7280

;@gfximg name=projectile/claw width=2 height=2
gfxProjectileClaw:
    INCBIN "projectile/claw.bin"                       ;; 09:72c0

;@gfximg name=projectile/ring width=2 height=2
gfxProjectileRing:
    INCBIN "projectile/ring.bin"                       ;; 09:7300

;@gfximg name=projectile/rock width=2 height=2
gfxProjectileRock:
    INCBIN "projectile/rock.bin"                       ;; 09:7340

;@gfximg name=projectile/ninjastar width=2 height=4
gfxProjectileNinjaStar:
    INCBIN "projectile/ninjastar.bin"                  ;; 09:7380

;@gfximg name=projectile/orb1 width=2 height=4
gfxProjectileOrb:
    INCBIN "projectile/orb1.bin"                       ;; 09:7400

;@gfximg name=projectile/fire width=2 height=4
gfxProjectileFire:
    INCBIN "projectile/fire.bin"                       ;; 09:7480

;@gfximg name=projectile/ice width=2 height=4
gfxProjectileIce:
    INCBIN "projectile/ice.bin"                        ;; 09:7500

;@gfximg name=projectile/lightning width=2 height=4
gfxProjectileLightning:
    INCBIN "projectile/lightning.bin"                  ;; 09:7580

;@gfximg name=projectile/wind width=2 height=4
gfxProjectileWind:
    INCBIN "projectile/wind.bin"                       ;; 09:7600

;@gfximg name=projectile/arrow width=2 height=4
gfxProjectileArrow:
    INCBIN "projectile/arrow.bin"                      ;; 09:7680

;@gfximg name=projectile/sword width=2 height=4
gfxProjectileSword:
    INCBIN "projectile/sword.bin"                      ;; 09:7700

;@gfximg name=projectile/needle width=2 height=4
gfxProjectileNeedle:
    INCBIN "projectile/needle.bin"                     ;; 09:7780

;@gfximg name=projectile/nail width=2 height=2
gfxProjectileNail:
    INCBIN "projectile/nail.bin"                       ;; 09:7800
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 09:7840 ????????
    db   $06, $07, $05, $06, $0b, $0c, $0b, $0c        ;; 09:7848 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 09:7850 ????????
    db   $60, $e0, $a0, $60, $d0, $30, $d0, $30        ;; 09:7858 ????????
    db   $0b, $0c, $05, $06, $06, $07, $01, $01        ;; 09:7860 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7868 ????????
    db   $d0, $30, $a0, $60, $60, $e0, $80, $80        ;; 09:7870 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7878 ????????
    db   $00, $00, $03, $03, $0c, $0f, $11, $1e        ;; 09:7880 ????????
    db   $27, $38, $2f, $30, $4f, $70, $5f, $60        ;; 09:7888 ????????
    db   $00, $00, $c0, $c0, $30, $f0, $88, $78        ;; 09:7890 ????????
    db   $e4, $1c, $f4, $0c, $f2, $0e, $fa, $06        ;; 09:7898 ????????
    db   $5f, $60, $4f, $70, $2f, $30, $27, $38        ;; 09:78a0 ????????
    db   $11, $1e, $0c, $0f, $03, $03, $00, $00        ;; 09:78a8 ????????
    db   $fa, $06, $f2, $0e, $f4, $0c, $e4, $1c        ;; 09:78b0 ????????
    db   $88, $78, $30, $f0, $c0, $c0, $00, $00        ;; 09:78b8 ????????

;@gfximg name=projectile/wave width=2 height=2
gfxProjectileWave:
    INCBIN "projectile/wave.bin"                       ;; 09:78c0

;@gfximg name=projectile/explosion width=2 height=4
gfxProjectileExplosion:
    INCBIN "projectile/explosion.bin"                  ;; 09:7900
    db   $00, $00, $00, $00, $00, $00, $0c, $0c        ;; 09:7980 ????????
    db   $38, $38, $7a, $7a, $fa, $fa, $ff, $ff        ;; 09:7988 ????????
    db   $00, $00, $00, $00, $00, $00, $30, $30        ;; 09:7990 ????????
    db   $1c, $1c, $5e, $5e, $5f, $5f, $ff, $ff        ;; 09:7998 ????????
    db   $ff, $fd, $9f, $9d, $bf, $bf, $27, $27        ;; 09:79a0 ????????
    db   $04, $04, $00, $00, $00, $00, $00, $00        ;; 09:79a8 ????????
    db   $ff, $bf, $f9, $b9, $fd, $fd, $e4, $e4        ;; 09:79b0 ????????
    db   $20, $20, $00, $00, $00, $00, $00, $00        ;; 09:79b8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:79c0 ????????
    db   $02, $02, $02, $02, $07, $07, $1f, $1d        ;; 09:79c8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:79d0 ????????
    db   $40, $40, $40, $40, $e0, $e0, $f8, $b8        ;; 09:79d8 ????????
    db   $7f, $7d, $7f, $7f, $f7, $f7, $f8, $f8        ;; 09:79e0 ????????
    db   $f8, $f8, $ac, $ac, $24, $24, $00, $00        ;; 09:79e8 ????????
    db   $fe, $be, $fe, $fe, $ef, $ef, $1f, $1f        ;; 09:79f0 ????????
    db   $1f, $1f, $35, $35, $24, $24, $00, $00        ;; 09:79f8 ????????
    db   $00, $00, $00, $00, $00, $00, $38, $38        ;; 09:7a00 ????????
    db   $5c, $74, $8a, $fe, $f3, $ff, $48, $4f        ;; 09:7a08 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7a10 ????????
    db   $70, $70, $88, $f8, $24, $dc, $76, $ae        ;; 09:7a18 ????????
    db   $09, $0e, $4b, $4d, $76, $7e, $38, $38        ;; 09:7a20 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7a28 ????????
    db   $fd, $73, $8e, $8e, $00, $00, $00, $00        ;; 09:7a30 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7a38 ????????
    db   $00, $00, $06, $06, $0c, $0c, $0c, $0c        ;; 09:7a40 ????????
    db   $0b, $0f, $04, $07, $06, $05, $03, $02        ;; 09:7a48 ????????
    db   $60, $60, $d0, $f0, $48, $78, $58, $78        ;; 09:7a50 ????????
    db   $b8, $e8, $10, $f0, $60, $e0, $40, $c0        ;; 09:7a58 ????????
    db   $03, $02, $01, $01, $01, $01, $01, $01        ;; 09:7a60 ????????
    db   $03, $02, $03, $02, $02, $03, $01, $01        ;; 09:7a68 ????????
    db   $20, $e0, $90, $70, $d0, $b0, $90, $70        ;; 09:7a70 ????????
    db   $20, $e0, $c0, $c0, $80, $80, $00, $00        ;; 09:7a78 ????????
    db   $c0, $c0, $e0, $a0, $70, $50, $68, $58        ;; 09:7a80 ????????
    db   $34, $2c, $2a, $36, $15, $1b, $09, $0e        ;; 09:7a88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7a90 ????????
    db   $00, $00, $00, $00, $00, $00, $80, $80        ;; 09:7a98 ????????
    db   $07, $04, $03, $02, $01, $01, $00, $00        ;; 09:7aa0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7aa8 ????????
    db   $40, $c0, $e0, $20, $10, $f0, $f8, $88        ;; 09:7ab0 ????????
    db   $7c, $74, $1e, $1a, $07, $05, $03, $03        ;; 09:7ab8 ????????

data_09_7ac0:
    db   $e0, $e0, $f8, $98, $f6, $8e, $bf, $c1        ;; 09:7ac0 ????????
    db   $7f, $50, $7e, $49, $36, $3d, $3f, $22        ;; 09:7ac8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7ad0 ????????
    db   $80, $80, $c0, $40, $e0, $60, $f0, $50        ;; 09:7ad8 ????????
    db   $1f, $11, $11, $1e, $0f, $08, $07, $07        ;; 09:7ae0 ????????
    db   $03, $02, $01, $01, $00, $00, $00, $00        ;; 09:7ae8 ????????
    db   $e8, $58, $e8, $98, $48, $f8, $d8, $b8        ;; 09:7af0 ????????
    db   $f8, $28, $fc, $f4, $0e, $0a, $07, $05        ;; 09:7af8 ????????

;@gfximg name=projectile/fire2 width=2 height=4
gfxProjectileFire2:
    INCBIN "projectile/fire2.bin"                      ;; 09:7b00

data_09_7b80:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7b80 ????????
    db   $00, $00, $27, $27, $78, $5f, $6f, $5f        ;; 09:7b88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7b90 ????????
    db   $00, $00, $70, $70, $f0, $90, $70, $90        ;; 09:7b98 ????????
    db   $ef, $d6, $ff, $ff, $ff, $80, $ff, $dd        ;; 09:7ba0 ????????
    db   $7f, $5d, $7f, $7f, $3f, $3f, $7f, $7f        ;; 09:7ba8 ????????
    db   $78, $b8, $ec, $f4, $fc, $14, $fe, $da        ;; 09:7bb0 ????????
    db   $fe, $ea, $fe, $ea, $fc, $f4, $fc, $f4        ;; 09:7bb8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7bc0 ????????
    db   $03, $03, $07, $07, $04, $07, $0d, $0e        ;; 09:7bc8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7bd0 ????????
    db   $c0, $c0, $60, $e0, $30, $f0, $b0, $70        ;; 09:7bd8 ????????
    db   $0d, $0e, $07, $07, $01, $01, $00, $00        ;; 09:7be0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7be8 ????????
    db   $d0, $70, $20, $e0, $c0, $c0, $00, $00        ;; 09:7bf0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7bf8 ????????
    db   $00, $00, $1c, $1c, $77, $7b, $cf, $f3        ;; 09:7c00 ????????
    db   $ce, $f7, $cd, $f6, $67, $7c, $b7, $f8        ;; 09:7c08 ????????
    db   $30, $30, $f8, $f8, $8c, $fc, $f6, $ce        ;; 09:7c10 ????????
    db   $36, $ee, $86, $7e, $ed, $3f, $f5, $3f        ;; 09:7c18 ????????
    db   $a3, $fc, $4b, $74, $dc, $e3, $8b, $fc        ;; 09:7c20 ????????
    db   $c8, $ff, $f6, $ff, $7b, $7f, $0f, $0f        ;; 09:7c28 ????????
    db   $e7, $1f, $b2, $6e, $c6, $7e, $66, $fe        ;; 09:7c30 ????????
    db   $7c, $fc, $dc, $dc, $c0, $c0, $80, $80        ;; 09:7c38 ????????
    db   $00, $03, $02, $0d, $0d, $12, $1b, $24        ;; 09:7c40 ????????
    db   $1b, $64, $3f, $40, $3f, $c0, $1f, $e0        ;; 09:7c48 ????????
    db   $00, $c0, $e0, $10, $f0, $08, $88, $74        ;; 09:7c50 ????????
    db   $e0, $1e, $f8, $06, $fc, $03, $fc, $03        ;; 09:7c58 ????????
    db   $4f, $b0, $7f, $80, $3f, $40, $0f, $70        ;; 09:7c60 ????????
    db   $13, $2c, $0f, $10, $03, $0c, $00, $03        ;; 09:7c68 ????????
    db   $f6, $09, $fa, $05, $fa, $04, $f8, $06        ;; 09:7c70 ????????
    db   $d8, $24, $90, $68, $20, $d0, $00, $c0        ;; 09:7c78 ????????
    db   $00, $03, $03, $0c, $06, $19, $16, $29        ;; 09:7c80 ????????
    db   $2f, $50, $2f, $50, $7f, $80, $7f, $80        ;; 09:7c88 ????????
    db   $00, $c0, $00, $f0, $60, $98, $f8, $04        ;; 09:7c90 ????????
    db   $fc, $02, $e4, $1a, $fa, $05, $fc, $03        ;; 09:7c98 ????????
    db   $3f, $c0, $1f, $e0, $4f, $30, $3f, $40        ;; 09:7ca0 ????????
    db   $1e, $21, $01, $1e, $07, $08, $00, $03        ;; 09:7ca8 ????????
    db   $fe, $01, $f6, $09, $f6, $08, $e4, $1a        ;; 09:7cb0 ????????
    db   $e8, $14, $c0, $38, $00, $f0, $00, $c0        ;; 09:7cb8 ????????

data_09_7cc0:
    db   $00, $00, $03, $03, $0d, $0e, $17, $18        ;; 09:7cc0 ????????
    db   $2e, $31, $26, $3f, $6e, $5f, $7e, $5f        ;; 09:7cc8 ????????
    db   $00, $00, $80, $80, $60, $e0, $d0, $30        ;; 09:7cd0 ????????
    db   $e8, $18, $c8, $f8, $ec, $f4, $fc, $f4        ;; 09:7cd8 ????????
    db   $7e, $5f, $5d, $6e, $2f, $31, $17, $1b        ;; 09:7ce0 ????????
    db   $0d, $0a, $0f, $0a, $07, $0f, $00, $00        ;; 09:7ce8 ????????
    db   $fc, $f4, $74, $ec, $e8, $18, $d0, $b0        ;; 09:7cf0 ????????
    db   $60, $a0, $e0, $a0, $c0, $e0, $00, $00        ;; 09:7cf8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d00 ????????
    db   $00, $00, $ff, $ff, $00, $ff, $ff, $00        ;; 09:7d08 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d10 ????????
    db   $00, $00, $ff, $ff, $00, $ff, $ff, $00        ;; 09:7d18 ????????
    db   $00, $ff, $ff, $ff, $00, $00, $00, $00        ;; 09:7d20 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d28 ????????
    db   $00, $ff, $ff, $ff, $00, $00, $00, $00        ;; 09:7d30 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d38 ????????
    db   $02, $03, $02, $03, $02, $03, $02, $03        ;; 09:7d40 ????????
    db   $02, $03, $02, $03, $02, $03, $02, $03        ;; 09:7d48 ????????
    db   $a0, $60, $a0, $60, $a0, $60, $a0, $60        ;; 09:7d50 ????????
    db   $a0, $60, $a0, $60, $a0, $60, $a0, $60        ;; 09:7d58 ????????
    db   $02, $03, $02, $03, $02, $03, $02, $03        ;; 09:7d60 ????????
    db   $02, $03, $02, $03, $02, $03, $02, $03        ;; 09:7d68 ????????
    db   $a0, $60, $a0, $60, $a0, $60, $a0, $60        ;; 09:7d70 ????????
    db   $a0, $60, $a0, $60, $a0, $60, $a0, $60        ;; 09:7d78 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d80 ????????
    db   $3c, $3c, $7f, $7f, $c7, $ff, $a3, $df        ;; 09:7d88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7d90 ????????
    db   $00, $00, $04, $04, $d8, $d8, $e1, $e1        ;; 09:7d98 ????????
    db   $b7, $cf, $c3, $ff, $7f, $7f, $38, $38        ;; 09:7da0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7da8 ????????
    db   $fe, $fe, $bc, $bc, $d8, $d8, $20, $20        ;; 09:7db0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7db8 ????????
    db   $03, $03, $06, $07, $0d, $0e, $0d, $0e        ;; 09:7dc0 ????????
    db   $0c, $0f, $05, $07, $07, $07, $07, $07        ;; 09:7dc8 ????????
    db   $c0, $c0, $60, $e0, $b0, $70, $30, $f0        ;; 09:7dd0 ????????
    db   $30, $f0, $70, $f0, $e0, $e0, $e0, $e0        ;; 09:7dd8 ????????
    db   $07, $07, $05, $05, $0b, $0b, $07, $07        ;; 09:7de0 ????????
    db   $07, $07, $03, $03, $01, $01, $00, $00        ;; 09:7de8 ????????
    db   $c0, $c0, $c0, $c0, $80, $80, $40, $40        ;; 09:7df0 ????????
    db   $40, $40, $20, $20, $00, $00, $80, $80        ;; 09:7df8 ????????
    db   $00, $00, $38, $38, $78, $78, $7c, $7c        ;; 09:7e00 ????????
    db   $3f, $3f, $1f, $1f, $03, $03, $01, $01        ;; 09:7e08 ????????
    db   $00, $00, $00, $00, $00, $00, $02, $02        ;; 09:7e10 ????????
    db   $0c, $0c, $fc, $fc, $f8, $f8, $f0, $f0        ;; 09:7e18 ????????
    db   $7f, $7f, $fe, $fe, $79, $79, $03, $03        ;; 09:7e20 ????????
    db   $0f, $0f, $1e, $1e, $1e, $1e, $1c, $1c        ;; 09:7e28 ????????
    db   $f0, $f0, $f8, $f8, $fc, $fc, $b2, $b2        ;; 09:7e30 ????????
    db   $10, $10, $38, $38, $38, $38, $10, $10        ;; 09:7e38 ????????
    db   $0c, $0c, $1e, $1e, $1e, $1e, $1e, $1e        ;; 09:7e40 ????????
    db   $0f, $0f, $07, $07, $03, $03, $73, $73        ;; 09:7e48 ????????
    db   $00, $00, $00, $00, $10, $10, $38, $38        ;; 09:7e50 ????????
    db   $38, $38, $30, $30, $66, $66, $ee, $ee        ;; 09:7e58 ????????
    db   $f9, $f9, $ff, $ff, $7f, $7f, $07, $07        ;; 09:7e60 ????????
    db   $01, $01, $01, $01, $00, $00, $00, $00        ;; 09:7e68 ????????
    db   $dc, $dc, $f0, $f0, $e0, $e0, $f8, $f8        ;; 09:7e70 ????????
    db   $e0, $e0, $80, $80, $80, $80, $80, $80        ;; 09:7e78 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7e80 ????????
    db   $00, $00, $00, $00, $18, $18, $70, $70        ;; 09:7e88 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7e90 ????????
    db   $00, $00, $00, $00, $1f, $1f, $22, $3e        ;; 09:7e98 ????????
    db   $ff, $ff, $70, $70, $18, $18, $00, $00        ;; 09:7ea0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7ea8 ????????
    db   $fc, $fc, $22, $3e, $1f, $1f, $00, $00        ;; 09:7eb0 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7eb8 ????????
    db   $01, $01, $01, $01, $03, $03, $07, $07        ;; 09:7ec0 ????????
    db   $05, $05, $01, $01, $01, $01, $01, $01        ;; 09:7ec8 ????????
    db   $00, $00, $00, $00, $80, $80, $c0, $c0        ;; 09:7ed0 ????????
    db   $40, $40, $00, $00, $00, $00, $00, $00        ;; 09:7ed8 ????????
    db   $01, $01, $01, $01, $03, $03, $05, $07        ;; 09:7ee0 ????????
    db   $05, $07, $05, $07, $06, $06, $04, $04        ;; 09:7ee8 ????????
    db   $00, $00, $00, $00, $80, $80, $40, $c0        ;; 09:7ef0 ????????
    db   $40, $c0, $40, $c0, $c0, $c0, $40, $40        ;; 09:7ef8 ????????
    db   $00, $00, $00, $00, $01, $01, $01, $01        ;; 09:7f00 ????????
    db   $01, $01, $02, $03, $03, $02, $05, $06        ;; 09:7f08 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7f10 ????????
    db   $00, $00, $80, $80, $80, $80, $40, $c0        ;; 09:7f18 ????????
    db   $3b, $3c, $05, $06, $03, $02, $02, $03        ;; 09:7f20 ????????
    db   $01, $01, $01, $01, $01, $01, $00, $00        ;; 09:7f28 ????????
    db   $b8, $78, $40, $c0, $80, $80, $80, $80        ;; 09:7f30 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7f38 ????????
    db   $80, $c0, $40, $f3, $33, $7c, $25, $7e        ;; 09:7f40 ????????
    db   $0f, $33, $1e, $31, $2f, $58, $3b, $4c        ;; 09:7f48 ????????
    db   $01, $03, $02, $cf, $cc, $3e, $a4, $7e        ;; 09:7f50 ????????
    db   $d0, $ec, $68, $9c, $f4, $1a, $dc, $32        ;; 09:7f58 ????????
    db   $3b, $4c, $2f, $58, $16, $39, $0b, $37        ;; 09:7f60 ????????
    db   $25, $7e, $33, $7c, $40, $f3, $80, $c0        ;; 09:7f68 ????????
    db   $dc, $32, $f4, $1a, $68, $9c, $d0, $ec        ;; 09:7f70 ????????
    db   $a4, $7e, $cc, $3e, $02, $cf, $01, $03        ;; 09:7f78 ????????
    db   $00, $07, $07, $1f, $1c, $3f, $30, $7c        ;; 09:7f80 ????????
    db   $30, $78, $60, $f0, $60, $f0, $60, $f0        ;; 09:7f88 ????????
    db   $00, $c0, $00, $f0, $00, $08, $00, $04        ;; 09:7f90 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7f98 ????????
    db   $70, $f8, $78, $ff, $3f, $7f, $3f, $7f        ;; 09:7fa0 ????????
    db   $1f, $3f, $0f, $1f, $03, $0f, $00, $03        ;; 09:7fa8 ????????
    db   $00, $e0, $e0, $f0, $f0, $f8, $f0, $f8        ;; 09:7fb0 ????????
    db   $f0, $f8, $e0, $f0, $c0, $e0, $00, $c0        ;; 09:7fb8 ????????
    db   $00, $03, $03, $07, $07, $0f, $0f, $1f        ;; 09:7fc0 ????????
    db   $0f, $1f, $0f, $1f, $07, $0f, $00, $07        ;; 09:7fc8 ????????
    db   $00, $c0, $c0, $f0, $f0, $f8, $f8, $fc        ;; 09:7fd0 ????????
    db   $fc, $fe, $fc, $fe, $9e, $ff, $0e, $9f        ;; 09:7fd8 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 09:7fe0 ????????
    db   $00, $20, $00, $10, $00, $0f, $00, $03        ;; 09:7fe8 ????????
    db   $06, $0f, $06, $0f, $06, $0f, $0c, $1e        ;; 09:7ff0 ????????
    db   $0c, $3e, $38, $fc, $e0, $f8, $00, $e0        ;; 09:7ff8 ????????
