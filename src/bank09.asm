;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

;@jumptable
data_009_4000:
    dw   code_009_4016                                 ;; 09:4000 $16 $40
    dw   code_009_4012                                 ;; 09:4002 $12 $40
    dw   code_009_41e9                                 ;; 09:4004 $e9 $41
    dw   code_009_438a                                 ;; 09:4006 $8a $43
    dw   code_009_4239                                 ;; 09:4008 $39 $42
    dw   code_009_445e                                 ;; 09:400a $5e $44
    dw   code_009_4467                                 ;; 09:400c $67 $44
    dw   code_009_4470                                 ;; 09:400e $70 $44
    dw   code_009_4399                                 ;; 09:4010 $99 $43

code_009_4012:
    call code_000_0695                                 ;; 09:4012 $cd $95 $06
    ret                                                ;; 09:4015 $c9

code_009_4016:
    ld   HL, wC5C0                                     ;; 09:4016 $21 $c0 $c5
    ld   B, $03                                        ;; 09:4019 $06 $03
    ld   C, $0a                                        ;; 09:401b $0e $0a
    push BC                                            ;; 09:401d $c5
    jr   .code_4024                                    ;; 09:401e $18 $04
.code_4020:
    push BC                                            ;; 09:4020 $c5
    ld   B, $00                                        ;; 09:4021 $06 $00
    add  HL, BC                                        ;; 09:4023 $09
.code_4024:
    push HL                                            ;; 09:4024 $e5
    ld   A, [HL]                                       ;; 09:4025 $7e
    cp   A, $ff                                        ;; 09:4026 $fe $ff
    call NZ, code_009_4031                             ;; 09:4028 $c4 $31 $40
    pop  HL                                            ;; 09:402b $e1
    pop  BC                                            ;; 09:402c $c1
    dec  B                                             ;; 09:402d $05
    jr   NZ, .code_4020                                ;; 09:402e $20 $f0
    ret                                                ;; 09:4030 $c9

code_009_4031:
    inc  HL                                            ;; 09:4031 $23
    dec  [HL]                                          ;; 09:4032 $35
    ret  NZ                                            ;; 09:4033 $c0
    inc  HL                                            ;; 09:4034 $23
    ld   A, [HL-]                                      ;; 09:4035 $3a
    ld   [HL-], A                                      ;; 09:4036 $32
    ld   D, H                                          ;; 09:4037 $54
    ld   E, L                                          ;; 09:4038 $5d
    ld   HL, $0008                                     ;; 09:4039 $21 $08 $00
    add  HL, DE                                        ;; 09:403c $19
    ld   C, [HL]                                       ;; 09:403d $4e
    inc  HL                                            ;; 09:403e $23
    ld   B, [HL]                                       ;; 09:403f $46
    ld   A, [BC]                                       ;; 09:4040 $0a
    cp   A, $62                                        ;; 09:4041 $fe $62
    jp   Z, code_009_40be                              ;; 09:4043 $ca $be $40
    cp   A, $72                                        ;; 09:4046 $fe $72
    jp   Z, code_009_4142                              ;; 09:4048 $ca $42 $41
    cp   A, $3a                                        ;; 09:404b $fe $3a
    jp   Z, code_009_40be                              ;; 09:404d $ca $be $40
    ld   HL, $0003                                     ;; 09:4050 $21 $03 $00
    add  HL, DE                                        ;; 09:4053 $19
    ld   A, [HL]                                       ;; 09:4054 $7e
    inc  [HL]                                          ;; 09:4055 $34
    push AF                                            ;; 09:4056 $f5
    ld   HL, $000e                                     ;; 09:4057 $21 $0e $00
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
    jp   Z, code_009_4136                              ;; 09:4068 $ca $36 $41
    push AF                                            ;; 09:406b $f5
    push DE                                            ;; 09:406c $d5
    ld   C, [HL]                                       ;; 09:406d $4e
    inc  HL                                            ;; 09:406e $23
    ld   B, [HL]                                       ;; 09:406f $46
    push BC                                            ;; 09:4070 $c5
    inc  HL                                            ;; 09:4071 $23
    ld   A, [HL]                                       ;; 09:4072 $7e
    ld   HL, $0006                                     ;; 09:4073 $21 $06 $00
    add  HL, DE                                        ;; 09:4076 $19
    ld   E, [HL]                                       ;; 09:4077 $5e
    inc  HL                                            ;; 09:4078 $23
    ld   D, [HL]                                       ;; 09:4079 $56
    call code_000_28bc                                 ;; 09:407a $cd $bc $28
    ld   A, [DE]                                       ;; 09:407d $1a
    pop  DE                                            ;; 09:407e $d1
    push AF                                            ;; 09:407f $f5
    call code_009_41ad                                 ;; 09:4080 $cd $ad $41
    pop  AF                                            ;; 09:4083 $f1
    ld   C, A                                          ;; 09:4084 $4f
    push DE                                            ;; 09:4085 $d5
    push BC                                            ;; 09:4086 $c5
    call getObjectDirection                            ;; 09:4087 $cd $99 $0c
    call code_000_2982                                 ;; 09:408a $cd $82 $29
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
    call code_009_41d3                                 ;; 09:40a4 $cd $d3 $41
    pop  BC                                            ;; 09:40a7 $c1
    pop  HL                                            ;; 09:40a8 $e1
    pop  AF                                            ;; 09:40a9 $f1
    ld   C, A                                          ;; 09:40aa $4f
    call code_000_2982                                 ;; 09:40ab $cd $82 $29
    add  A, B                                          ;; 09:40ae $80
    call code_000_299a                                 ;; 09:40af $cd $9a $29
    ld   B, A                                          ;; 09:40b2 $47
    ld   A, C                                          ;; 09:40b3 $79
    and  A, $f0                                        ;; 09:40b4 $e6 $f0
    or   A, B                                          ;; 09:40b6 $b0
    ld   C, [HL]                                       ;; 09:40b7 $4e
    ld   B, $00                                        ;; 09:40b8 $06 $00
    call code_000_08d4                                 ;; 09:40ba $cd $d4 $08
    ret                                                ;; 09:40bd $c9

code_009_40be:
    ld   HL, $0003                                     ;; 09:40be $21 $03 $00
    add  HL, DE                                        ;; 09:40c1 $19
    ld   A, [HL]                                       ;; 09:40c2 $7e
    inc  [HL]                                          ;; 09:40c3 $34
    push AF                                            ;; 09:40c4 $f5
    ld   HL, $000e                                     ;; 09:40c5 $21 $0e $00
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
    call Z, code_009_4197                              ;; 09:40d7 $cc $97 $41
    push AF                                            ;; 09:40da $f5
    push DE                                            ;; 09:40db $d5
    ld   A, [DE]                                       ;; 09:40dc $1a
    ld   E, [HL]                                       ;; 09:40dd $5e
    inc  HL                                            ;; 09:40de $23
    ld   D, [HL]                                       ;; 09:40df $56
    call code_009_41ad                                 ;; 09:40e0 $cd $ad $41
    pop  BC                                            ;; 09:40e3 $c1
    push DE                                            ;; 09:40e4 $d5
    push BC                                            ;; 09:40e5 $c5
    ld   A, [BC]                                       ;; 09:40e6 $0a
    ld   DE, $0008                                     ;; 09:40e7 $11 $08 $00
    call code_009_41ad                                 ;; 09:40ea $cd $ad $41
    pop  BC                                            ;; 09:40ed $c1
    ld   HL, $0004                                     ;; 09:40ee $21 $04 $00
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
    jr   NC, code_009_413c                             ;; 09:4102 $30 $38
    ld   A, [wVideoWY]                                 ;; 09:4104 $fa $a9 $c0
    add  A, $08                                        ;; 09:4107 $c6 $08
    cp   A, D                                          ;; 09:4109 $ba
    jr   C, code_009_413c                              ;; 09:410a $38 $30
    push HL                                            ;; 09:410c $e5
    ld   A, [BC]                                       ;; 09:410d $0a
    push BC                                            ;; 09:410e $c5
    call code_009_41d3                                 ;; 09:410f $cd $d3 $41
    pop  HL                                            ;; 09:4112 $e1
    push HL                                            ;; 09:4113 $e5
    push DE                                            ;; 09:4114 $d5
    ld   C, [HL]                                       ;; 09:4115 $4e
    call getObjectDirection                            ;; 09:4116 $cd $99 $0c
    call code_000_2982                                 ;; 09:4119 $cd $82 $29
    ld   B, A                                          ;; 09:411c $47
    pop  DE                                            ;; 09:411d $d1
    pop  HL                                            ;; 09:411e $e1
    pop  AF                                            ;; 09:411f $f1
    push HL                                            ;; 09:4120 $e5
    ld   C, A                                          ;; 09:4121 $4f
    call code_000_2982                                 ;; 09:4122 $cd $82 $29
    add  A, B                                          ;; 09:4125 $80
    call code_000_299a                                 ;; 09:4126 $cd $9a $29
    ld   B, A                                          ;; 09:4129 $47
    ld   A, C                                          ;; 09:412a $79
    and  A, $f0                                        ;; 09:412b $e6 $f0
    or   A, B                                          ;; 09:412d $b0
    ld   C, [HL]                                       ;; 09:412e $4e
    ld   B, $00                                        ;; 09:412f $06 $00
    call code_000_08d4                                 ;; 09:4131 $cd $d4 $08
    pop  DE                                            ;; 09:4134 $d1
    ret  NZ                                            ;; 09:4135 $c0

code_009_4136:
    ld   A, [DE]                                       ;; 09:4136 $1a
    ld   C, A                                          ;; 09:4137 $4f
    call code_000_0ae3                                 ;; 09:4138 $cd $e3 $0a
    ret                                                ;; 09:413b $c9

code_009_413c:
    ld   A, [BC]                                       ;; 09:413c $0a
    ld   C, A                                          ;; 09:413d $4f
    call code_000_0ae3                                 ;; 09:413e $cd $e3 $0a
    ret                                                ;; 09:4141 $c9

code_009_4142:
    ld   HL, $0003                                     ;; 09:4142 $21 $03 $00
    add  HL, DE                                        ;; 09:4145 $19
    ld   A, [HL]                                       ;; 09:4146 $7e
    inc  [HL]                                          ;; 09:4147 $34
    and  A, $07                                        ;; 09:4148 $e6 $07
    ld   C, A                                          ;; 09:414a $4f
    ld   HL, $0004                                     ;; 09:414b $21 $04 $00
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
    call code_000_299a                                 ;; 09:416b $cd $9a $29
    bit  $00, L                                        ;; 09:416e $cb $45
    jr   Z, .code_4174                                 ;; 09:4170 $28 $02
    ld   B, $01                                        ;; 09:4172 $06 $01
.code_4174:
    push BC                                            ;; 09:4174 $c5
    call code_000_08d4                                 ;; 09:4175 $cd $d4 $08
    pop  BC                                            ;; 09:4178 $c1
    jr   Z, .code_4193                                 ;; 09:4179 $28 $18
    push BC                                            ;; 09:417b $c5
    call GetObjectX                                    ;; 09:417c $cd $2d $0c
    pop  BC                                            ;; 09:417f $c1
    cp   A, $a8                                        ;; 09:4180 $fe $a8
    jr   NC, .code_4193                                ;; 09:4182 $30 $0f
    push BC                                            ;; 09:4184 $c5
    call GetObjectY                                    ;; 09:4185 $cd $3e $0c
    pop  BC                                            ;; 09:4188 $c1
    ld   B, A                                          ;; 09:4189 $47
    ld   A, [wVideoWY]                                 ;; 09:418a $fa $a9 $c0
    add  A, $08                                        ;; 09:418d $c6 $08
    cp   A, B                                          ;; 09:418f $b8
    jr   C, .code_4193                                 ;; 09:4190 $38 $01
    ret                                                ;; 09:4192 $c9
.code_4193:
    call code_000_0ae3                                 ;; 09:4193 $cd $e3 $0a
    ret                                                ;; 09:4196 $c9

code_009_4197:
    ld   HL, $0003                                     ;; 09:4197 $21 $03 $00
    add  HL, DE                                        ;; 09:419a $19
    ld   [HL], $00                                     ;; 09:419b $36 $00
    ld   HL, $0008                                     ;; 09:419d $21 $08 $00
    add  HL, DE                                        ;; 09:41a0 $19
    ld   C, [HL]                                       ;; 09:41a1 $4e
    inc  HL                                            ;; 09:41a2 $23
    ld   B, [HL]                                       ;; 09:41a3 $46
    ld   HL, $000e                                     ;; 09:41a4 $21 $0e $00
    add  HL, BC                                        ;; 09:41a7 $09
    ld   A, [HL+]                                      ;; 09:41a8 $2a
    ld   H, [HL]                                       ;; 09:41a9 $66
    ld   L, A                                          ;; 09:41aa $6f
    ld   A, [HL+]                                      ;; 09:41ab $2a
    ret                                                ;; 09:41ac $c9

code_009_41ad:
    push DE                                            ;; 09:41ad $d5
    ld   C, A                                          ;; 09:41ae $4f
    call getObjectDirection                            ;; 09:41af $cd $99 $0c
    pop  DE                                            ;; 09:41b2 $d1
    bit  $00, A                                        ;; 09:41b3 $cb $47
    ret  NZ                                            ;; 09:41b5 $c0
    bit  $01, A                                        ;; 09:41b6 $cb $4f
    jr   NZ, .code_41c4                                ;; 09:41b8 $20 $0a
    bit  $02, A                                        ;; 09:41ba $cb $57
    jr   NZ, .code_41cd                                ;; 09:41bc $20 $0f
    ld   A, D                                          ;; 09:41be $7a
    cpl                                                ;; 09:41bf $2f
    inc  A                                             ;; 09:41c0 $3c
    ld   D, E                                          ;; 09:41c1 $53
    ld   E, A                                          ;; 09:41c2 $5f
    ret                                                ;; 09:41c3 $c9
.code_41c4:
    ld   A, D                                          ;; 09:41c4 $7a
    cpl                                                ;; 09:41c5 $2f
    inc  A                                             ;; 09:41c6 $3c
    ld   D, A                                          ;; 09:41c7 $57
    ld   A, E                                          ;; 09:41c8 $7b
    cpl                                                ;; 09:41c9 $2f
    inc  A                                             ;; 09:41ca $3c
    ld   E, A                                          ;; 09:41cb $5f
    ret                                                ;; 09:41cc $c9
.code_41cd:
    ld   A, E                                          ;; 09:41cd $7b
    cpl                                                ;; 09:41ce $2f
    inc  A                                             ;; 09:41cf $3c
    ld   E, D                                          ;; 09:41d0 $5a
    ld   D, A                                          ;; 09:41d1 $57
    ret                                                ;; 09:41d2 $c9

code_009_41d3:
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

code_009_41e9:
    cp   A, $ff                                        ;; 09:41e9 $fe $ff
    ret  Z                                             ;; 09:41eb $c8
    ld   L, A                                          ;; 09:41ec $6f
    ld   H, $00                                        ;; 09:41ed $26 $00
    add  HL, HL                                        ;; 09:41ef $29
    add  HL, HL                                        ;; 09:41f0 $29
    add  HL, HL                                        ;; 09:41f1 $29
    add  HL, HL                                        ;; 09:41f2 $29
    ld   DE, data_009_4479                             ;; 09:41f3 $11 $79 $44
    add  HL, DE                                        ;; 09:41f6 $19
    ld   DE, $0006                                     ;; 09:41f7 $11 $06 $00
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
.code_4216:
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
    ld   A, $09                                        ;; 09:4226 $3e $09 Bank
    call addTileGraphicCopyRequest                     ;; 09:4228 $cd $f5 $2d
    pop  DE                                            ;; 09:422b $d1
    ld   HL, $0010                                     ;; 09:422c $21 $10 $00
    add  HL, DE                                        ;; 09:422f $19
    ld   E, L                                          ;; 09:4230 $5d
    ld   D, H                                          ;; 09:4231 $54
    pop  BC                                            ;; 09:4232 $c1
    pop  HL                                            ;; 09:4233 $e1
    pop  AF                                            ;; 09:4234 $f1
    dec  A                                             ;; 09:4235 $3d
    jr   NZ, .code_4216                                ;; 09:4236 $20 $de
    ret                                                ;; 09:4238 $c9

code_009_4239:
    cp   A, $ff                                        ;; 09:4239 $fe $ff
    ret  Z                                             ;; 09:423b $c8
    push DE                                            ;; 09:423c $d5
    ld   HL, $0010                                     ;; 09:423d $21 $10 $00
    call MultiplyHL_by_A                               ;; 09:4240 $cd $7b $2b
    pop  DE                                            ;; 09:4243 $d1
    push DE                                            ;; 09:4244 $d5
    ld   BC, data_009_4479                             ;; 09:4245 $01 $79 $44
    add  HL, BC                                        ;; 09:4248 $09
    push HL                                            ;; 09:4249 $e5
    ld   A, [HL+]                                      ;; 09:424a $2a
    ld   C, A                                          ;; 09:424b $4f
    ld   A, [HL-]                                      ;; 09:424c $3a
    ld   B, A                                          ;; 09:424d $47
    push BC                                            ;; 09:424e $c5
    ld   BC, $000c                                     ;; 09:424f $01 $0c $00
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
    call code_000_05ef                                 ;; 09:4260 $cd $ef $05
    pop  BC                                            ;; 09:4263 $c1
    ld   A, B                                          ;; 09:4264 $78
    and  A, $0f                                        ;; 09:4265 $e6 $0f
    pop  HL                                            ;; 09:4267 $e1
    pop  BC                                            ;; 09:4268 $c1
    push AF                                            ;; 09:4269 $f5
    push BC                                            ;; 09:426a $c5
    ld   A, $08                                        ;; 09:426b $3e $08
    call code_000_0a74                                 ;; 09:426d $cd $74 $0a
    ld   A, C                                          ;; 09:4270 $79
    cp   A, $ff                                        ;; 09:4271 $fe $ff
    pop  BC                                            ;; 09:4273 $c1
    ld   C, A                                          ;; 09:4274 $4f
    push BC                                            ;; 09:4275 $c5
    jr   Z, .code_42a1                                 ;; 09:4276 $28 $29
    ld   A, $ff                                        ;; 09:4278 $3e $ff
    call code_009_437a                                 ;; 09:427a $cd $7a $43
    jr   NZ, .code_42a1                                ;; 09:427d $20 $22
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
    call code_000_0ca6                                 ;; 09:428c $cd $a6 $0c
    pop  BC                                            ;; 09:428f $c1
    pop  HL                                            ;; 09:4290 $e1
    pop  DE                                            ;; 09:4291 $d1
    ld   A, [DE]                                       ;; 09:4292 $1a
    push DE                                            ;; 09:4293 $d5
    call code_009_42aa                                 ;; 09:4294 $cd $aa $42
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
.code_42a1:
    pop  BC                                            ;; 09:42a1 $c1
    call code_000_0ae3                                 ;; 09:42a2 $cd $e3 $0a
    pop  DE                                            ;; 09:42a5 $d1
    pop  DE                                            ;; 09:42a6 $d1
    pop  DE                                            ;; 09:42a7 $d1
    xor  A, A                                          ;; 09:42a8 $af
    ret                                                ;; 09:42a9 $c9

code_009_42aa:
    cp   A, $62                                        ;; 09:42aa $fe $62
    jr   Z, .code_42ba                                 ;; 09:42ac $28 $0c
    cp   A, $72                                        ;; 09:42ae $fe $72
    jr   Z, .code_42cb                                 ;; 09:42b0 $28 $19
    cp   A, $3a                                        ;; 09:42b2 $fe $3a
    jr   Z, .code_42ba                                 ;; 09:42b4 $28 $04
    inc  HL                                            ;; 09:42b6 $23
    inc  HL                                            ;; 09:42b7 $23
    xor  A, A                                          ;; 09:42b8 $af
    ret                                                ;; 09:42b9 $c9
.code_42ba:
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
.code_42cb:
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
    call code_000_0299                                 ;; 09:42dd $cd $99 $02
    srl  A                                             ;; 09:42e0 $cb $3f
    pop  DE                                            ;; 09:42e2 $d1
    sub  A, D                                          ;; 09:42e3 $92
    ld   D, A                                          ;; 09:42e4 $57
    push DE                                            ;; 09:42e5 $d5
    call code_000_0293                                 ;; 09:42e6 $cd $93 $02
    srl  A                                             ;; 09:42e9 $cb $3f
    pop  DE                                            ;; 09:42eb $d1
    sub  A, E                                          ;; 09:42ec $93
    ld   E, A                                          ;; 09:42ed $5f
    ld   B, $06                                        ;; 09:42ee $06 $06
.code_42f0:
    ld   A, D                                          ;; 09:42f0 $7a
    and  A, $c0                                        ;; 09:42f1 $e6 $c0
    cp   A, $80                                        ;; 09:42f3 $fe $80
    jr   Z, .code_4319                                 ;; 09:42f5 $28 $22
    cp   A, $40                                        ;; 09:42f7 $fe $40
    jr   Z, .code_4319                                 ;; 09:42f9 $28 $1e
    ld   A, E                                          ;; 09:42fb $7b
    and  A, $c0                                        ;; 09:42fc $e6 $c0
    cp   A, $80                                        ;; 09:42fe $fe $80
    jr   Z, .code_4319                                 ;; 09:4300 $28 $17
    cp   A, $40                                        ;; 09:4302 $fe $40
    jr   Z, .code_4319                                 ;; 09:4304 $28 $13
    rlc  D                                             ;; 09:4306 $cb $02
    rlc  E                                             ;; 09:4308 $cb $03
    dec  B                                             ;; 09:430a $05
    jr   NZ, .code_42f0                                ;; 09:430b $20 $e3
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
.code_4319:
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
    bit  $07, A                                        ;; 09:432a $cb $7f
    jr   Z, .code_4330                                 ;; 09:432c $28 $02
    cpl                                                ;; 09:432e $2f
    inc  A                                             ;; 09:432f $3c
.code_4330:
    sla  A                                             ;; 09:4330 $cb $27
    ld   L, A                                          ;; 09:4332 $6f
    ld   H, $00                                        ;; 09:4333 $26 $00
    call MultiplyHL_by_A                               ;; 09:4335 $cd $7b $2b
    pop  DE                                            ;; 09:4338 $d1
    push HL                                            ;; 09:4339 $e5
    ld   A, E                                          ;; 09:433a $7b
    bit  $07, A                                        ;; 09:433b $cb $7f
    jr   Z, .code_4341                                 ;; 09:433d $28 $02
    cpl                                                ;; 09:433f $2f
    inc  A                                             ;; 09:4340 $3c
.code_4341:
    sla  A                                             ;; 09:4341 $cb $27
    ld   L, A                                          ;; 09:4343 $6f
    ld   H, $00                                        ;; 09:4344 $26 $00
    call MultiplyHL_by_A                               ;; 09:4346 $cd $7b $2b
    pop  DE                                            ;; 09:4349 $d1
    add  HL, DE                                        ;; 09:434a $19
    ld   A, H                                          ;; 09:434b $7c
    ld   HL, unknown_009_4376                          ;; 09:434c $21 $76 $43
    ld   B, $04                                        ;; 09:434f $06 $04
.code_4351:
    cp   A, [HL]                                       ;; 09:4351 $be
    jr   NC, .code_4358                                ;; 09:4352 $30 $04
    inc  HL                                            ;; 09:4354 $23
    dec  B                                             ;; 09:4355 $05
    jr   NZ, .code_4351                                ;; 09:4356 $20 $f9
.code_4358:
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

unknown_009_4376:
    db   $40, $31, $24, $19                            ;; 09:4376 ????

code_009_437a:
    ld   B, $03                                        ;; 09:437a $06 $03
    ld   HL, wC5C0                                     ;; 09:437c $21 $c0 $c5
    ld   DE, $000a                                     ;; 09:437f $11 $0a $00
.code_4382:
    cp   A, [HL]                                       ;; 09:4382 $be
    ret  Z                                             ;; 09:4383 $c8
    add  HL, DE                                        ;; 09:4384 $19
    dec  B                                             ;; 09:4385 $05
    jr   NZ, .code_4382                                ;; 09:4386 $20 $fa
    dec  B                                             ;; 09:4388 $05
    ret                                                ;; 09:4389 $c9

code_009_438a:
    ld   A, C                                          ;; 09:438a $79
    cp   A, $ff                                        ;; 09:438b $fe $ff
    ret  Z                                             ;; 09:438d $c8
    call code_009_437a                                 ;; 09:438e $cd $7a $43
    ret  NZ                                            ;; 09:4391 $c0
    ld   C, [HL]                                       ;; 09:4392 $4e
    ld   [HL], $ff                                     ;; 09:4393 $36 $ff
    call code_000_0ae3                                 ;; 09:4395 $cd $e3 $0a
    ret                                                ;; 09:4398 $c9

code_009_4399:
    cp   A, $c9                                        ;; 09:4399 $fe $c9
    jr   Z, code_009_43ac                              ;; 09:439b $28 $0f
    ld   B, A                                          ;; 09:439d $47
    and  A, $f0                                        ;; 09:439e $e6 $f0
    cp   A, $40                                        ;; 09:43a0 $fe $40
    jp   Z, code_009_443c                              ;; 09:43a2 $ca $3c $44
    cp   A, $50                                        ;; 09:43a5 $fe $50
    jp   Z, code_009_443c                              ;; 09:43a7 $ca $3c $44

code_009_43aa:
    xor  A, A                                          ;; 09:43aa $af
    ret                                                ;; 09:43ab $c9

code_009_43ac:
    push BC                                            ;; 09:43ac $c5
    push DE                                            ;; 09:43ad $d5
    ld   A, C                                          ;; 09:43ae $79
    call code_009_437a                                 ;; 09:43af $cd $7a $43
    ld   D, H                                          ;; 09:43b2 $54
    ld   E, L                                          ;; 09:43b3 $5d
    ld   HL, $0008                                     ;; 09:43b4 $21 $08 $00
    add  HL, DE                                        ;; 09:43b7 $19
    ld   C, [HL]                                       ;; 09:43b8 $4e
    inc  HL                                            ;; 09:43b9 $23
    ld   B, [HL]                                       ;; 09:43ba $46
    ld   HL, $0002                                     ;; 09:43bb $21 $02 $00
    add  HL, BC                                        ;; 09:43be $09
    ld   C, [HL]                                       ;; 09:43bf $4e
    ld   H, D                                          ;; 09:43c0 $62
    ld   L, E                                          ;; 09:43c1 $6b
    pop  DE                                            ;; 09:43c2 $d1
    ld   A, C                                          ;; 09:43c3 $79
    pop  BC                                            ;; 09:43c4 $c1
    cp   A, D                                          ;; 09:43c5 $ba
    jr   C, code_009_43aa                              ;; 09:43c6 $38 $e2
    cp   A, E                                          ;; 09:43c8 $bb
    jr   C, code_009_43aa                              ;; 09:43c9 $38 $df
    push BC                                            ;; 09:43cb $c5
    ld   A, [wC0A0]                                    ;; 09:43cc $fa $a0 $c0
    cp   A, $02                                        ;; 09:43cf $fe $02
    jr   NC, .code_440a                                ;; 09:43d1 $30 $37
    push HL                                            ;; 09:43d3 $e5
    call code_000_039a                                 ;; 09:43d4 $cd $9a $03
    call code_000_29e4                                 ;; 09:43d7 $cd $e4 $29
    push AF                                            ;; 09:43da $f5
    call code_000_02ab                                 ;; 09:43db $cd $ab $02
    and  A, $0f                                        ;; 09:43de $e6 $0f
    ld   B, A                                          ;; 09:43e0 $47
    pop  AF                                            ;; 09:43e1 $f1
    and  A, B                                          ;; 09:43e2 $a0
    pop  DE                                            ;; 09:43e3 $d1
    jr   Z, .code_440a                                 ;; 09:43e4 $28 $24
    push DE                                            ;; 09:43e6 $d5
    call code_000_3dcd                                 ;; 09:43e7 $cd $cd $3d
    pop  DE                                            ;; 09:43ea $d1
    or   A, A                                          ;; 09:43eb $b7
    jr   Z, .code_440a                                 ;; 09:43ec $28 $1c
    push AF                                            ;; 09:43ee $f5
    ld   HL, $0008                                     ;; 09:43ef $21 $08 $00
    add  HL, DE                                        ;; 09:43f2 $19
    ld   A, [HL+]                                      ;; 09:43f3 $2a
    ld   H, [HL]                                       ;; 09:43f4 $66
    ld   L, A                                          ;; 09:43f5 $6f
    ld   BC, $0003                                     ;; 09:43f6 $01 $03 $00
    add  HL, BC                                        ;; 09:43f9 $09
    ld   B, [HL]                                       ;; 09:43fa $46
    pop  AF                                            ;; 09:43fb $f1
    and  A, B                                          ;; 09:43fc $a0
    jr   Z, .code_440a                                 ;; 09:43fd $28 $0b
    pop  BC                                            ;; 09:43ff $c1
    call code_000_0ae3                                 ;; 09:4400 $cd $e3 $0a
    ld   A, $15                                        ;; 09:4403 $3e $15
    call code_000_297d                                 ;; 09:4405 $cd $7d $29
    xor  A, A                                          ;; 09:4408 $af
    ret                                                ;; 09:4409 $c9
.code_440a:
    call code_000_3dd3                                 ;; 09:440a $cd $d3 $3d
    pop  BC                                            ;; 09:440d $c1
    push AF                                            ;; 09:440e $f5
    ld   A, C                                          ;; 09:440f $79
    call code_009_437a                                 ;; 09:4410 $cd $7a $43
    ld   DE, $0008                                     ;; 09:4413 $11 $08 $00
    add  HL, DE                                        ;; 09:4416 $19
    ld   E, [HL]                                       ;; 09:4417 $5e
    inc  HL                                            ;; 09:4418 $23
    ld   D, [HL]                                       ;; 09:4419 $56
    ld   HL, $0003                                     ;; 09:441a $21 $03 $00
    add  HL, DE                                        ;; 09:441d $19
    ld   C, [HL]                                       ;; 09:441e $4e
    ld   HL, $0004                                     ;; 09:441f $21 $04 $00
    add  HL, DE                                        ;; 09:4422 $19
    ld   B, [HL]                                       ;; 09:4423 $46
    pop  AF                                            ;; 09:4424 $f1
    and  A, C                                          ;; 09:4425 $a1
    jr   Z, .code_4431                                 ;; 09:4426 $28 $09
    ld   A, B                                          ;; 09:4428 $78
    srl  A                                             ;; 09:4429 $cb $3f
    srl  A                                             ;; 09:442b $cb $3f
    sub  A, B                                          ;; 09:442d $90
    cpl                                                ;; 09:442e $2f
    inc  A                                             ;; 09:442f $3c
    ld   B, A                                          ;; 09:4430 $47
.code_4431:
    ld   HL, $0005                                     ;; 09:4431 $21 $05 $00
    add  HL, DE                                        ;; 09:4434 $19
    ld   C, [HL]                                       ;; 09:4435 $4e
    call code_000_0256                                 ;; 09:4436 $cd $56 $02
    ld   A, $c9                                        ;; 09:4439 $3e $c9
    ret                                                ;; 09:443b $c9

code_009_443c:
    ld   A, [wCF5B]                                    ;; 09:443c $fa $5b $cf
    cp   A, D                                          ;; 09:443f $ba
    jp   C, code_009_43aa                              ;; 09:4440 $da $aa $43
    ld   A, [wCF5B]                                    ;; 09:4443 $fa $5b $cf
    cp   A, E                                          ;; 09:4446 $bb
    jp   C, code_009_43aa                              ;; 09:4447 $da $aa $43
    push BC                                            ;; 09:444a $c5
    call code_000_0ae3                                 ;; 09:444b $cd $e3 $0a
    pop  BC                                            ;; 09:444e $c1
    ld   A, B                                          ;; 09:444f $78
    ret                                                ;; 09:4450 $c9

code_009_4451:
    call code_009_437a                                 ;; 09:4451 $cd $7a $43
    ld   D, H                                          ;; 09:4454 $54
    ld   E, L                                          ;; 09:4455 $5d
    ld   HL, $0008                                     ;; 09:4456 $21 $08 $00
    add  HL, DE                                        ;; 09:4459 $19
    ld   E, [HL]                                       ;; 09:445a $5e
    inc  HL                                            ;; 09:445b $23
    ld   D, [HL]                                       ;; 09:445c $56
    ret                                                ;; 09:445d $c9

code_009_445e:
    call code_009_4451                                 ;; 09:445e $cd $51 $44
    ld   HL, $0002                                     ;; 09:4461 $21 $02 $00
    add  HL, DE                                        ;; 09:4464 $19
    ld   A, [HL]                                       ;; 09:4465 $7e
    ret                                                ;; 09:4466 $c9

code_009_4467:
    call code_009_4451                                 ;; 09:4467 $cd $51 $44
    ld   HL, $0003                                     ;; 09:446a $21 $03 $00
    add  HL, DE                                        ;; 09:446d $19
    ld   A, [HL]                                       ;; 09:446e $7e
    ret                                                ;; 09:446f $c9

code_009_4470:
    call code_009_4451                                 ;; 09:4470 $cd $51 $44
    ld   HL, $0004                                     ;; 09:4473 $21 $04 $00
    add  HL, DE                                        ;; 09:4476 $19
    ld   A, [HL]                                       ;; 09:4477 $7e
    ret                                                ;; 09:4478 $c9

data_009_4479:
    db   $62, $08, $08, $01, $0a, $00, $30, $04        ;; 09:4479 ........
    db   $00, $70, $f9, $46, $71, $47, $c3, $48        ;; 09:4481 ........
    db   $72, $08, $08, $04, $20, $00, $30, $04        ;; 09:4489 ????????
    db   $80, $70, $f9, $46, $b9, $47, $c3, $48        ;; 09:4491 ????????
    db   $62, $08, $08, $04, $1e, $00, $38, $04        ;; 09:4499 ????????
    db   $c0, $70, $f9, $46, $89, $47, $c3, $48        ;; 09:44a1 ????????
    db   $62, $08, $08, $04, $1e, $00, $30, $04        ;; 09:44a9 ..????..
    db   $40, $71, $f9, $46, $71, $47, $c3, $48        ;; 09:44b1 ........
    db   $72, $08, $08, $40, $50, $00, $38, $04        ;; 09:44b9 ????????
    db   $c0, $71, $f9, $46, $d1, $47, $c3, $48        ;; 09:44c1 ????????
    db   $62, $08, $08, $40, $64, $00, $68, $04        ;; 09:44c9 ????????
    db   $00, $72, $f9, $46, $a1, $47, $c3, $48        ;; 09:44d1 ????????
    db   $72, $08, $08, $08, $46, $00, $38, $04        ;; 09:44d9 ????????
    db   $80, $72, $f9, $46, $01, $48, $c3, $48        ;; 09:44e1 ????????
    db   $72, $0a, $08, $04, $1c, $00, $38, $04        ;; 09:44e9 ????????
    db   $c0, $72, $f9, $46, $01, $48, $c3, $48        ;; 09:44f1 ????????
    db   $72, $08, $08, $08, $32, $08, $30, $04        ;; 09:44f9 ????????
    db   $00, $73, $f9, $46, $b9, $47, $c3, $48        ;; 09:4501 ????????
    db   $62, $08, $08, $08, $46, $00, $30, $04        ;; 09:4509 ????????
    db   $40, $73, $f9, $46, $e9, $47, $c3, $48        ;; 09:4511 ????????
    db   $72, $08, $08, $40, $89, $00, $38, $04        ;; 09:4519 ????????
    db   $80, $73, $f9, $46, $31, $48, $c3, $48        ;; 09:4521 ????????
    db   $72, $08, $08, $40, $3e, $04, $30, $04        ;; 09:4529 ????????
    db   $00, $74, $f9, $46, $19, $48, $c3, $48        ;; 09:4531 ????????
    db   $72, $08, $08, $10, $50, $00, $38, $04        ;; 09:4539 ????????
    db   $80, $74, $f9, $46, $89, $47, $c3, $48        ;; 09:4541 ????????
    db   $62, $08, $08, $20, $5f, $00, $30, $04        ;; 09:4549 ????????
    db   $00, $75, $f9, $46, $71, $47, $c3, $48        ;; 09:4551 ????????
    db   $62, $08, $08, $40, $30, $00, $38, $04        ;; 09:4559 ????????
    db   $80, $75, $f9, $46, $89, $47, $c3, $48        ;; 09:4561 ????????
    db   $62, $08, $08, $04, $21, $01, $30, $04        ;; 09:4569 ????????
    db   $00, $76, $f9, $46, $71, $47, $c3, $48        ;; 09:4571 ????????
    db   $60, $08, $08, $01, $0f, $00, $30, $04        ;; 09:4579 ??????..
    db   $80, $76, $f9, $46, $71, $47, $a9, $48        ;; 09:4581 ....????
    db   $60, $08, $08, $08, $46, $00, $38, $04        ;; 09:4589 ??????..
    db   $00, $77, $f9, $46, $89, $47, $a9, $48        ;; 09:4591 ....????
    db   $60, $0a, $08, $02, $14, $00, $38, $04        ;; 09:4599 ????????
    db   $80, $77, $f9, $46, $89, $47, $a9, $48        ;; 09:45a1 ????????
    db   $60, $0a, $08, $04, $2d, $01, $38, $04        ;; 09:45a9 ????????
    db   $00, $78, $f9, $46, $49, $48, $b6, $48        ;; 09:45b1 ????????
    db   $72, $0a, $08, $40, $5f, $00, $30, $04        ;; 09:45b9 ????????
    db   $00, $7b, $f9, $46, $e9, $47, $c3, $48        ;; 09:45c1 ????????
    db   $60, $08, $08, $04, $26, $02, $38, $04        ;; 09:45c9 ????????
    db   $c0, $78, $f9, $46, $61, $48, $a9, $48        ;; 09:45d1 ????????
    db   $72, $08, $08, $40, $63, $00, $38, $04        ;; 09:45d9 ??????..
    db   $00, $79, $f9, $46, $31, $48, $c3, $48        ;; 09:45e1 ....????
    db   $60, $08, $08, $01, $1e, $00, $38, $04        ;; 09:45e9 ????????
    db   $80, $7b, $f9, $46, $49, $48, $c7, $48        ;; 09:45f1 ????????
    db   $38, $08, $0c, $01, $27, $00, $18, $04        ;; 09:45f9 ????????
    db   $00, $77, $f9, $46, $79, $48, $a9, $48        ;; 09:4601 ????????
    db   $3a, $0a, $0c, $01, $19, $00, $18, $04        ;; 09:4609 ????????
    db   $80, $72, $f9, $46, $91, $48, $c3, $48        ;; 09:4611 ????????
    db   $3a, $08, $0c, $01, $2b, $00, $18, $04        ;; 09:4619 ????????
    db   $00, $70, $f9, $46, $79, $48, $c3, $48        ;; 09:4621 ????????
    db   $3a, $08, $0c, $01, $2c, $00, $18, $04        ;; 09:4629 ????????
    db   $80, $76, $f9, $46, $79, $48, $c3, $48        ;; 09:4631 ????????
    db   $3a, $08, $0c, $01, $5f, $00, $18, $04        ;; 09:4639 ????????
    db   $00, $72, $f9, $46, $79, $48, $c3, $48        ;; 09:4641 ????????
    db   $3a, $06, $08, $08, $0d, $00, $18, $04        ;; 09:4649 ????????
    db   $80, $74, $f9, $46, $79, $48, $c3, $48        ;; 09:4651 ????????
    db   $72, $08, $08, $02, $1e, $00, $30, $08        ;; 09:4659 ????????
    db   $00, $79, $01, $47, $19, $48, $c3, $48        ;; 09:4661 ????????
    db   $62, $0c, $08, $80, $17, $00, $30, $08        ;; 09:4669 ????????
    db   $00, $79, $11, $47, $71, $47, $c3, $48        ;; 09:4671 ????????
    db   $72, $0a, $08, $04, $40, $04, $30, $08        ;; 09:4679 ????????
    db   $00, $79, $21, $47, $19, $48, $c3, $48        ;; 09:4681 ????????
    db   $72, $0a, $08, $40, $a0, $00, $30, $02        ;; 09:4689 ????????
    db   $c0, $7a, $f9, $46, $b9, $47, $c3, $48        ;; 09:4691 ????????
    db   $72, $0a, $08, $40, $a6, $00, $30, $02        ;; 09:4699 ????????
    db   $c0, $7c, $f9, $46, $b9, $47, $c3, $48        ;; 09:46a1 ????????
    db   $62, $08, $08, $40, $50, $00, $30, $08        ;; 09:46a9 ????????
    db   $00, $79, $31, $47, $71, $47, $c3, $48        ;; 09:46b1 ????????
    db   $62, $08, $08, $40, $a8, $00, $30, $08        ;; 09:46b9 ????????
    db   $80, $75, $41, $47, $71, $47, $c3, $48        ;; 09:46c1 ????????
    db   $72, $08, $0a, $40, $a3, $00, $30, $08        ;; 09:46c9 ????????
    db   $00, $79, $51, $47, $19, $48, $c3, $48        ;; 09:46d1 ????????
    db   $72, $0a, $08, $40, $4f, $00, $30, $08        ;; 09:46d9 ????????
    db   $00, $79, $61, $47, $b9, $47, $c3, $48        ;; 09:46e1 ????????
    db   $72, $0a, $08, $40, $88, $00, $30, $08        ;; 09:46e9 ????????
    db   $00, $79, $61, $47, $b9, $47, $c3, $48        ;; 09:46f1 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:46f9 ........
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 09:4701 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4709 ????????
    db   $48, $4a, $49, $4b, $4c, $4e, $4d, $4f        ;; 09:4711 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4719 ????????
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 09:4721 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4729 ????????
    db   $48, $4a, $49, $4b, $4c, $4e, $4d, $4f        ;; 09:4731 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4739 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4741 ????????
    db   $38, $3a, $39, $3b, $3c, $3e, $3d, $3f        ;; 09:4749 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4751 ????????
    db   $60, $62, $61, $63, $64, $66, $65, $67        ;; 09:4759 ????????
    db   $34, $36, $35, $37, $38, $3a, $39, $3b        ;; 09:4761 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 09:4769 ????????
    db   $20, $32, $30, $00, $30, $32, $00, $34        ;; 09:4771 ATT...AT
    db   $36, $40, $34, $36, $20, $32, $30, $00        ;; 09:4779 T...????
    db   $30, $32, $00, $34, $36, $40, $34, $36        ;; 09:4781 ????????
    db   $20, $3a, $38, $00, $38, $3a, $00, $3c        ;; 09:4789 ????????
    db   $3e, $40, $3c, $3e, $20, $3a, $38, $00        ;; 09:4791 ????????
    db   $38, $3a, $00, $3c, $3e, $40, $3c, $3e        ;; 09:4799 ????????
    db   $20, $6a, $68, $00, $68, $6a, $00, $6c        ;; 09:47a1 ????????
    db   $6e, $40, $6c, $6e, $20, $6a, $68, $00        ;; 09:47a9 ????????
    db   $68, $6a, $00, $6c, $6e, $40, $6c, $6e        ;; 09:47b1 ????????
    db   $00, $30, $32, $00, $30, $32, $00, $30        ;; 09:47b9 ????????
    db   $32, $00, $30, $32, $00, $30, $32, $00        ;; 09:47c1 ????????
    db   $30, $32, $00, $30, $32, $00, $30, $32        ;; 09:47c9 ????????
    db   $00, $38, $3a, $00, $38, $3a, $00, $38        ;; 09:47d1 ????????
    db   $3a, $00, $38, $3a, $00, $38, $3a, $00        ;; 09:47d9 ????????
    db   $38, $3a, $00, $38, $3a, $00, $38, $3a        ;; 09:47e1 ????????
    db   $20, $32, $30, $40, $30, $32, $00, $30        ;; 09:47e9 ????????
    db   $32, $60, $32, $30, $20, $32, $30, $40        ;; 09:47f1 ????????
    db   $30, $32, $00, $30, $32, $60, $32, $30        ;; 09:47f9 ????????
    db   $20, $3a, $38, $40, $38, $3a, $00, $38        ;; 09:4801 ????????
    db   $3a, $60, $3a, $38, $20, $3a, $38, $40        ;; 09:4809 ????????
    db   $38, $3a, $00, $38, $3a, $60, $3a, $38        ;; 09:4811 ????????
    db   $00, $30, $32, $00, $30, $32, $00, $30        ;; 09:4819 ????????
    db   $32, $00, $30, $32, $00, $34, $36, $00        ;; 09:4821 ????????
    db   $34, $36, $00, $34, $36, $00, $34, $36        ;; 09:4829 ????????
    db   $00, $38, $3a, $00, $38, $3a, $00, $38        ;; 09:4831 ????????
    db   $3a, $00, $38, $3a, $00, $3c, $3e, $00        ;; 09:4839 ????????
    db   $3c, $3e, $00, $3c, $3e, $00, $3c, $3e        ;; 09:4841 ????????
    db   $20, $3a, $38, $00, $38, $3a, $00, $38        ;; 09:4849 ????????
    db   $3a, $00, $38, $3a, $20, $3a, $38, $00        ;; 09:4851 ????????
    db   $38, $3a, $00, $38, $3a, $00, $38, $3a        ;; 09:4859 ????????
    db   $20, $3a, $38, $00, $38, $3a, $20, $3a        ;; 09:4861 ????????
    db   $38, $40, $38, $3a, $20, $3a, $38, $00        ;; 09:4869 ????????
    db   $38, $3a, $20, $3a, $38, $40, $38, $3a        ;; 09:4871 ????????
    db   $20, $1a, $18, $00, $18, $1a, $00, $1c        ;; 09:4879 ????????
    db   $1e, $40, $1c, $1e, $20, $1a, $18, $00        ;; 09:4881 ????????
    db   $18, $1a, $00, $1c, $1e, $40, $1c, $1e        ;; 09:4889 ????????
    db   $20, $1a, $18, $40, $18, $1a, $00, $18        ;; 09:4891 ????????
    db   $1a, $60, $1a, $18, $20, $1a, $18, $40        ;; 09:4899 ????????
    db   $18, $1a, $00, $18, $1a, $60, $1a, $18        ;; 09:48a1 ????????
    db   $11, $08, $00, $04, $11, $10, $00, $04        ;; 09:48a9 ????????
    db   $11, $08, $00, $04, $00, $11, $16, $00        ;; 09:48b1 ????????
    db   $04, $11, $13, $00, $04, $11, $10, $00        ;; 09:48b9 ????????
    db   $04, $00, $11, $08, $00, $00, $11, $f0        ;; 09:48c1 ??....??
    db   $00, $04, $11, $f0, $00, $04, $00, $17        ;; 09:48c9 ????????
    db   $31, $50, $56, $14, $40, $90, $12, $30        ;; 09:48d1 ????????
    db   $50, $11, $32, $50, $10, $20, $8c, $60        ;; 09:48d9 ????????
    db   $cc, $5c, $1d, $10, $ca, $15, $10, $ce        ;; 09:48e1 ????????
    db   $15, $22, $0c, $62, $cc, $44, $05, $62        ;; 09:48e9 ????????
    db   $4c, $53, $0f, $20, $18, $33, $67, $12        ;; 09:48f1 ????????
    db   $33, $27, $11, $42, $e7, $53, $14, $00        ;; 09:48f9 ????????
    db   $00, $c0, $c0, $60, $60, $50, $70, $30        ;; 09:4901 ????????
    db   $30, $38, $38, $38, $38, $38, $38, $00        ;; 09:4909 ????????
    db   $00, $1f, $1f, $0f, $08, $07, $07, $00        ;; 09:4911 ????????
    db   $00, $08, $08, $14, $1c, $16, $1e, $38        ;; 09:4919 ????????
    db   $38, $7b, $7b, $77, $7f, $6d, $7f, $ef        ;; 09:4921 ????????
    db   $ff, $ee, $fe, $ee, $fe, $ef, $ff, $f9        ;; 09:4929 ????????
    db   $ff, $fe, $ff, $ec, $ff, $ff, $ff, $3e        ;; 09:4931 ????????
    db   $3f, $18, $1f, $10, $1f, $21, $3f, $00        ;; 09:4939 ????????
    db   $00, $c0, $c0, $f0, $30, $b8, $c8, $6e        ;; 09:4941 ????????
    db   $76, $17, $19, $09, $0e, $7c, $7f, $00        ;; 09:4949 ????????
    db   $00, $03, $03, $0d, $0f, $11, $1f, $13        ;; 09:4951 ????????
    db   $1f, $fb, $ff, $bf, $7e, $1b, $fe, $f7        ;; 09:4959 ????????
    db   $8f, $ff, $0f, $7f, $9f, $bf, $de, $5f        ;; 09:4961 ????????
    db   $fe, $3e, $ff, $1f, $ff, $ef, $ff, $9d        ;; 09:4969 ????????
    db   $ff, $fe, $ff, $5f, $f7, $5f, $f9, $2f        ;; 09:4971 ????????
    db   $fd, $72, $ff, $f7, $fd, $fb, $3f, $ef        ;; 09:4979 ????????
    db   $ff, $f5, $ff, $77, $7f, $7f, $7f, $39        ;; 09:4981 ????????
    db   $3f, $39, $3e, $13, $1d, $13, $1d, $23        ;; 09:4989 ????????
    db   $3f, $e5, $ff, $c4, $ff, $ee, $f7, $fb        ;; 09:4991 ????????
    db   $ff, $fc, $fc, $f8, $f8, $6c, $fc, $26        ;; 09:4999 ????????
    db   $3b, $27, $3b, $47, $7b, $c6, $ba, $ec        ;; 09:49a1 ????????
    db   $94, $7f, $67, $fc, $fc, $8f, $8f, $fc        ;; 09:49a9 ????????
    db   $fc, $fd, $fd, $f9, $f9, $db, $fb, $72        ;; 09:49b1 ????????
    db   $73, $03, $03, $81, $81, $01, $01, $3f        ;; 09:49b9 ????????
    db   $ff, $bf, $f3, $9e, $f3, $77, $f9, $8f        ;; 09:49c1 ????????
    db   $88, $1c, $1f, $3e, $3f, $7d, $7d, $fb        ;; 09:49c9 ????????
    db   $9f, $7d, $cf, $7e, $c7, $f9, $87, $e3        ;; 09:49d1 ????????
    db   $1f, $0c, $ff, $38, $f7, $fe, $d5, $d9        ;; 09:49d9 ????????
    db   $f9, $f0, $f0, $e1, $e1, $c0, $c0, $c1        ;; 09:49e1 ????????
    db   $c1, $c3, $c3, $e2, $e3, $f7, $f4, $3f        ;; 09:49e9 ????????
    db   $fd, $ff, $ef, $7f, $eb, $af, $f9, $76        ;; 09:49f1 ????????
    db   $bf, $f8, $df, $3d, $ef, $9c, $7f             ;; 09:49f9 ???????
;@gfx
    dw   `33233111                                     ;; 09:4a00 $df $f8 GFX GFX
    dw   `03333333                                     ;; 09:4a02 $7f $7f GFX GFX
    dw   `00332222                                     ;; 09:4a04 $30 $3f GFX GFX
    dw   `00031111                                     ;; 09:4a06 $1f $10 GFX GFX
    dw   `00321111                                     ;; 09:4a08 $2f $30 GFX GFX
    dw   `00321111                                     ;; 09:4a0a $2f $30 GFX GFX
    dw   `00333311                                     ;; 09:4a0c $3f $3c GFX GFX
    dw   `00322233                                     ;; 09:4a0e $23 $3f GFX GFX
    dw   `11223232                                     ;; 09:4a10 $ca $3f GFX GFX
    dw   `11123223                                     ;; 09:4a12 $e9 $1f GFX GFX
    dw   `31132230                                     ;; 09:4a14 $f2 $9e GFX GFX
    dw   `23332230                                     ;; 09:4a16 $72 $fe GFX GFX
    dw   `12322300                                     ;; 09:4a18 $a4 $7c GFX GFX
    dw   `13223300                                     ;; 09:4a1a $cc $7c GFX GFX
    dw   `32233233                                     ;; 09:4a1c $9b $ff GFX GFX
    dw   `22332223                                     ;; 09:4a1e $31 $ff GFX GFX
    dw   `00321223                                     ;; 09:4a20 $29 $37 GFX GFX
    dw   `00032233                                     ;; 09:4a22 $13 $1f GFX GFX
    dw   `00033322                                     ;; 09:4a24 $1c $1f GFX GFX
    dw   `00003232                                     ;; 09:4a26 $0a $0f GFX GFX
    dw   `00032323                                     ;; 09:4a28 $15 $1f GFX GFX
    dw   `00033333                                     ;; 09:4a2a $1f $1f GFX GFX
    dw   `00003303                                     ;; 09:4a2c $0d $0d GFX GFX
    dw   `00000330                                     ;; 09:4a2e $06 $06 GFX GFX
    dw   `33222233                                     ;; 09:4a30 $c3 $ff GFX GFX
    dw   `22222230                                     ;; 09:4a32 $02 $fe GFX GFX
    dw   `22312300                                     ;; 09:4a34 $34 $ec GFX GFX
    dw   `23122300                                     ;; 09:4a36 $64 $dc GFX GFX
    dw   `32332300                                     ;; 09:4a38 $b4 $fc GFX GFX
    dw   `33333000                                     ;; 09:4a3a $f8 $f8 GFX GFX
    dw   `30330000                                     ;; 09:4a3c $b0 $b0 GFX GFX
    dw   `30033000                                     ;; 09:4a3e $98 $98 GFX GFX
    dw   `23232211                                     ;; 09:4a40 $53 $fc GFX GFX
    dw   `32232111                                     ;; 09:4a42 $97 $f8 GFX GFX
    dw   `03232133                                     ;; 09:4a44 $57 $7b GFX GFX
    dw   `03223333                                     ;; 09:4a46 $4f $7f GFX GFX
    dw   `00333233                                     ;; 09:4a48 $3b $3f GFX GFX
    dw   `00333332                                     ;; 09:4a4a $3e $3f GFX GFX
    dw   `03333321                                     ;; 09:4a4c $7d $7e GFX GFX
    dw   `03333211                                     ;; 09:4a4e $7b $7c GFX GFX
    dw   `11333333                                     ;; 09:4a50 $ff $3f GFX GFX
    dw   `33332330                                     ;; 09:4a52 $f6 $fe GFX GFX
    dw   `33333300                                     ;; 09:4a54 $fc $fc GFX GFX
    dw   `33330000                                     ;; 09:4a56 $f0 $f0 GFX GFX
    dw   `32230000                                     ;; 09:4a58 $90 $f0 GFX GFX
    dw   `21113000                                     ;; 09:4a5a $78 $88 GFX GFX
    dw   `11113000                                     ;; 09:4a5c $f8 $08 GFX GFX
    dw   `33313000                                     ;; 09:4a5e $f8 $e8 GFX GFX
    dw   `33333313                                     ;; 09:4a60 $ff $fd GFX GFX
    dw   `32330332                                     ;; 09:4a62 $b6 $f7 GFX GFX
    dw   `33330332                                     ;; 09:4a64 $f6 $f7 GFX GFX
    dw   `03333232                                     ;; 09:4a66 $7a $7f GFX GFX
    dw   `03333113                                     ;; 09:4a68 $7f $79 GFX GFX
    dw   `00332111                                     ;; 09:4a6a $37 $38 GFX GFX
    dw   `00033111                                     ;; 09:4a6c $1f $18 GFX GFX
    dw   `00032311                                     ;; 09:4a6e $17 $1c GFX GFX
    dw   `22233000                                     ;; 09:4a70 $18 $f8 GFX GFX
    dw   `21123000                                     ;; 09:4a72 $68 $98 GFX GFX
    dw   `21123000                                     ;; 09:4a74 $68 $98 GFX GFX
    dw   `21123000                                     ;; 09:4a76 $68 $98 GFX GFX
    dw   `22230000                                     ;; 09:4a78 $10 $f0 GFX GFX
    dw   `32313000                                     ;; 09:4a7a $b8 $e8 GFX GFX
    dw   `32313000                                     ;; 09:4a7c $b8 $e8 GFX GFX
    dw   `32323000                                     ;; 09:4a7e $a8 $f8 GFX GFX
    dw   `00032133                                     ;; 09:4a80 $17 $1b GFX GFX
    dw   `00003113                                     ;; 09:4a82 $0f $09 GFX GFX
    dw   `00003213                                     ;; 09:4a84 $0b $0d GFX GFX
    dw   `00000313                                     ;; 09:4a86 $07 $05 GFX GFX
    dw   `00000313                                     ;; 09:4a88 $07 $05 GFX GFX
    dw   `00000332                                     ;; 09:4a8a $06 $07 GFX GFX
    dw   `00000332                                     ;; 09:4a8c $06 $07 GFX GFX
    dw   `00000322                                     ;; 09:4a8e $04 $07 GFX GFX
    dw   `32333003                                     ;; 09:4a90 $b9 $f9 GFX GFX
    dw   `23233333                                     ;; 09:4a92 $5f $ff GFX GFX
    dw   `23333330                                     ;; 09:4a94 $7e $fe GFX GFX
    dw   `23303300                                     ;; 09:4a96 $6c $ec GFX GFX
    dw   `23000000                                     ;; 09:4a98 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:4a9a $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:4a9c $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:4a9e $40 $c0 GFX GFX
    dw   `00003222                                     ;; 09:4aa0 $08 $0f GFX GFX
    dw   `00032221                                     ;; 09:4aa2 $11 $1e GFX GFX
    dw   `00032221                                     ;; 09:4aa4 $11 $1e GFX GFX
    dw   `00322322                                     ;; 09:4aa6 $24 $3f GFX GFX
    dw   `00332323                                     ;; 09:4aa8 $35 $3f GFX GFX
    dw   `00333033                                     ;; 09:4aaa $3b $3b GFX GFX
    dw   `00330003                                     ;; 09:4aac $31 $31 GFX GFX
    dw   `00030000                                     ;; 09:4aae $10 $10 GFX GFX
    dw   `22300000                                     ;; 09:4ab0 $20 $e0 GFX GFX
    dw   `31300000                                     ;; 09:4ab2 $e0 $a0 GFX GFX
    dw   `32133300                                     ;; 09:4ab4 $bc $dc GFX GFX
    dw   `13211130                                     ;; 09:4ab6 $de $62 GFX GFX
    dw   `31322333                                     ;; 09:4ab8 $e7 $bf GFX GFX
    dw   `33033333                                     ;; 09:4aba $df $df GFX GFX
    dw   `33000003                                     ;; 09:4abc $c1 $c1 GFX GFX
    dw   `30000000                                     ;; 09:4abe $80 $80 GFX GFX
    dw   `33332323                                     ;; 09:4ac0 $f5 $ff GFX GFX
    dw   `33332333                                     ;; 09:4ac2 $f7 $ff GFX GFX
    dw   `03333233                                     ;; 09:4ac4 $7b $7f GFX GFX
    dw   `03333322                                     ;; 09:4ac6 $7c $7f GFX GFX
    dw   `00333333                                     ;; 09:4ac8 $3f $3f GFX GFX
    dw   `00033333                                     ;; 09:4aca $1f $1f GFX GFX
    dw   `00003333                                     ;; 09:4acc $0f $0f GFX GFX
    dw   `00000033                                     ;; 09:4ace $03 $03 GFX GFX
    dw   `33333333                                     ;; 09:4ad0 $ff $ff GFX GFX
    dw   `33233332                                     ;; 09:4ad2 $de $ff GFX GFX
    dw   `33332221                                     ;; 09:4ad4 $f1 $fe GFX GFX
    dw   `23222113                                     ;; 09:4ad6 $47 $f9 GFX GFX
    dw   `32221332                                     ;; 09:4ad8 $8e $f7 GFX GFX
    dw   `32213232                                     ;; 09:4ada $9a $ef GFX GFX
    dw   `32213233                                     ;; 09:4adc $9b $ef GFX GFX
    dw   `33213223                                     ;; 09:4ade $d9 $ef GFX GFX
    dw   `33333333                                     ;; 09:4ae0 $ff $ff GFX GFX
    dw   `00033333                                     ;; 09:4ae2 $1f $1f GFX GFX
    dw   `00000003                                     ;; 09:4ae4 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:4ae6 $03 $03 GFX GFX
    dw   `00000032                                     ;; 09:4ae8 $02 $03 GFX GFX
    dw   `00000033                                     ;; 09:4aea $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:4aec $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:4aee $01 $01 GFX GFX
    dw   `33333333                                     ;; 09:4af0 $ff $ff GFX GFX
    dw   `22222223                                     ;; 09:4af2 $01 $ff GFX GFX
    dw   `11122222                                     ;; 09:4af4 $e0 $1f GFX GFX
    dw   `33311111                                     ;; 09:4af6 $ff $e0 GFX GFX
    dw   `23233331                                     ;; 09:4af8 $5f $fe GFX GFX
    dw   `23223233                                     ;; 09:4afa $4b $ff GFX GFX
    dw   `22333333                                     ;; 09:4afc $3f $ff GFX GFX
    dw   `33333303                                     ;; 09:4afe $fd $fd GFX GFX
    dw   `31133233                                     ;; 09:4b00 $fb $9f GFX GFX
    dw   `33113323                                     ;; 09:4b02 $fd $cf GFX GFX
    dw   `22332232                                     ;; 09:4b04 $32 $ff GFX GFX
    dw   `22223333                                     ;; 09:4b06 $0f $ff GFX GFX
    dw   `22222333                                     ;; 09:4b08 $07 $ff GFX GFX
    dw   `12222132                                     ;; 09:4b0a $86 $7b GFX GFX
    dw   `31111332                                     ;; 09:4b0c $fe $87 GFX GFX
    dw   `33333322                                     ;; 09:4b0e $fc $ff GFX GFX
    dw   `33333003                                     ;; 09:4b10 $f9 $f9 GFX GFX
    dw   `33330000                                     ;; 09:4b12 $f0 $f0 GFX GFX
    dw   `33300003                                     ;; 09:4b14 $e1 $e1 GFX GFX
    dw   `33000000                                     ;; 09:4b16 $c0 $c0 GFX GFX
    dw   `33000003                                     ;; 09:4b18 $c1 $c1 GFX GFX
    dw   `33000033                                     ;; 09:4b1a $c3 $c3 GFX GFX
    dw   `33300032                                     ;; 09:4b1c $e2 $e3 GFX GFX
    dw   `33330311                                     ;; 09:4b1e $f7 $f4 GFX GFX
    dw   `22333313                                     ;; 09:4b20 $3f $fd GFX GFX
    dw   `33313333                                     ;; 09:4b22 $ff $ef GFX GFX
    dw   `23313133                                     ;; 09:4b24 $7f $eb GFX GFX
    dw   `32323113                                     ;; 09:4b26 $af $f9 GFX GFX
    dw   `21332332                                     ;; 09:4b28 $76 $bf GFX GFX
    dw   `33133222                                     ;; 09:4b2a $f8 $df GFX GFX
    dw   `22313323                                     ;; 09:4b2c $3d $ef GFX GFX
    dw   `12233322                                     ;; 09:4b2e $9c $7f GFX GFX
    dw   `00000000                                     ;; 09:4b30 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b32 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b34 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b36 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b38 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b3a $00 $00 GFX GFX
    dw   `00000030                                     ;; 09:4b3c $02 $02 GFX GFX
    dw   `00000033                                     ;; 09:4b3e $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:4b40 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b42 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b44 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:4b46 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:4b48 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:4b4a $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4b4c $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4b4e $03 $02 GFX GFX
    dw   `00000000                                     ;; 09:4b50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b52 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b54 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b56 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b58 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4b5a $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4b5c $80 $80 GFX GFX
    dw   `30000003                                     ;; 09:4b5e $81 $81 GFX GFX
    dw   `00000000                                     ;; 09:4b60 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b62 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b64 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b66 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b68 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4b6a $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4b6c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4b6e $80 $80 GFX GFX
    dw   `00000033                                     ;; 09:4b70 $03 $03 GFX GFX
    dw   `00000031                                     ;; 09:4b72 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4b74 $03 $02 GFX GFX
    dw   `30000032                                     ;; 09:4b76 $82 $83 GFX GFX
    dw   `33000003                                     ;; 09:4b78 $c1 $c1 GFX GFX
    dw   `31300003                                     ;; 09:4b7a $e1 $a1 GFX GFX
    dw   `03130003                                     ;; 09:4b7c $71 $51 GFX GFX
    dw   `03213003                                     ;; 09:4b7e $59 $69 GFX GFX
    dw   `00000031                                     ;; 09:4b80 $03 $02 GFX GFX
    dw   `30000031                                     ;; 09:4b82 $83 $82 GFX GFX
    dw   `30000031                                     ;; 09:4b84 $83 $82 GFX GFX
    dw   `13000322                                     ;; 09:4b86 $c4 $47 GFX GFX
    dw   `13000322                                     ;; 09:4b88 $c4 $47 GFX GFX
    dw   `21300322                                     ;; 09:4b8a $64 $a7 GFX GFX
    dw   `21300322                                     ;; 09:4b8c $64 $a7 GFX GFX
    dw   `22130322                                     ;; 09:4b8e $34 $d7 GFX GFX
    dw   `30000003                                     ;; 09:4b90 $81 $81 GFX GFX
    dw   `30000031                                     ;; 09:4b92 $83 $82 GFX GFX
    dw   `30000031                                     ;; 09:4b94 $83 $82 GFX GFX
    dw   `13000321                                     ;; 09:4b96 $c5 $46 GFX GFX
    dw   `13000323                                     ;; 09:4b98 $c5 $47 GFX GFX
    dw   `13003213                                     ;; 09:4b9a $cb $4d GFX GFX
    dw   `13003213                                     ;; 09:4b9c $cb $4d GFX GFX
    dw   `13032213                                     ;; 09:4b9e $d3 $5d GFX GFX
    dw   `30000000                                     ;; 09:4ba0 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4ba2 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4ba4 $80 $80 GFX GFX
    dw   `30000030                                     ;; 09:4ba6 $82 $82 GFX GFX
    dw   `00000330                                     ;; 09:4ba8 $06 $06 GFX GFX
    dw   `00003130                                     ;; 09:4baa $0e $0a GFX GFX
    dw   `00031300                                     ;; 09:4bac $1c $14 GFX GFX
    dw   `00321300                                     ;; 09:4bae $2c $34 GFX GFX
    dw   `00321300                                     ;; 09:4bb0 $2c $34 GFX GFX
    dw   `00322130                                     ;; 09:4bb2 $26 $3a GFX GFX
    dw   `00032213                                     ;; 09:4bb4 $13 $1d GFX GFX
    dw   `00032232                                     ;; 09:4bb6 $12 $1f GFX GFX
    dw   `00003222                                     ;; 09:4bb8 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:4bba $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:4bbc $10 $1f GFX GFX
    dw   `00322333                                     ;; 09:4bbe $27 $3f GFX GFX
    dw   `32130323                                     ;; 09:4bc0 $b5 $d7 GFX GFX
    dw   `32323222                                     ;; 09:4bc2 $a8 $ff GFX GFX
    dw   `32222222                                     ;; 09:4bc4 $80 $ff GFX GFX
    dw   `22222222                                     ;; 09:4bc6 $00 $ff GFX GFX
    dw   `23222222                                     ;; 09:4bc8 $40 $ff GFX GFX
    dw   `22322211                                     ;; 09:4bca $23 $fc GFX GFX
    dw   `22322111                                     ;; 09:4bcc $27 $f8 GFX GFX
    dw   `22232222                                     ;; 09:4bce $10 $ff GFX GFX
    dw   `23032130                                     ;; 09:4bd0 $56 $da GFX GFX
    dw   `22323130                                     ;; 09:4bd2 $2e $fa GFX GFX
    dw   `22222233                                     ;; 09:4bd4 $03 $ff GFX GFX
    dw   `22222222                                     ;; 09:4bd6 $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4bd8 $00 $ff GFX GFX
    dw   `11112222                                     ;; 09:4bda $f0 $0f GFX GFX
    dw   `11111122                                     ;; 09:4bdc $fc $03 GFX GFX
    dw   `22211111                                     ;; 09:4bde $1f $e0 GFX GFX
    dw   `03213000                                     ;; 09:4be0 $58 $68 GFX GFX
    dw   `32213000                                     ;; 09:4be2 $98 $e8 GFX GFX
    dw   `22130003                                     ;; 09:4be4 $31 $d1 GFX GFX
    dw   `23130033                                     ;; 09:4be6 $73 $d3 GFX GFX
    dw   `22300313                                     ;; 09:4be8 $27 $e5 GFX GFX
    dw   `22233230                                     ;; 09:4bea $1a $fe GFX GFX
    dw   `22222130                                     ;; 09:4bec $06 $fa GFX GFX
    dw   `22222300                                     ;; 09:4bee $04 $fc GFX GFX
    dw   `00323112                                     ;; 09:4bf0 $2e $39 GFX GFX
    dw   `03232111                                     ;; 09:4bf2 $57 $78 GFX GFX
    dw   `03232333                                     ;; 09:4bf4 $57 $7f GFX GFX
    dw   `32233311                                     ;; 09:4bf6 $9f $fc GFX GFX
    dw   `32233311                                     ;; 09:4bf8 $9f $fc GFX GFX
    dw   `32223333                                     ;; 09:4bfa $8f $ff GFX GFX
    dw   `03332222                                     ;; 09:4bfc $70 $7f GFX GFX
    dw   `00003333                                     ;; 09:4bfe $0f $0f GFX GFX
    dw   `32232222                                     ;; 09:4c00 $90 $ff GFX GFX
    dw   `23232222                                     ;; 09:4c02 $50 $ff GFX GFX
    dw   `23223223                                     ;; 09:4c04 $49 $ff GFX GFX
    dw   `33223231                                     ;; 09:4c06 $cb $fe GFX GFX
    dw   `32223312                                     ;; 09:4c08 $8e $fd GFX GFX
    dw   `22223122                                     ;; 09:4c0a $0c $fb GFX GFX
    dw   `22223111                                     ;; 09:4c0c $0f $f8 GFX GFX
    dw   `33333333                                     ;; 09:4c0e $ff $ff GFX GFX
    dw   `22222211                                     ;; 09:4c10 $03 $fc GFX GFX
    dw   `23222222                                     ;; 09:4c12 $40 $ff GFX GFX
    dw   `32222222                                     ;; 09:4c14 $80 $ff GFX GFX
    dw   `32222222                                     ;; 09:4c16 $80 $ff GFX GFX
    dw   `32222222                                     ;; 09:4c18 $80 $ff GFX GFX
    dw   `23322222                                     ;; 09:4c1a $60 $ff GFX GFX
    dw   `13222222                                     ;; 09:4c1c $c0 $7f GFX GFX
    dw   `33333333                                     ;; 09:4c1e $ff $ff GFX GFX
    dw   `12222300                                     ;; 09:4c20 $84 $7c GFX GFX
    dw   `11222230                                     ;; 09:4c22 $c2 $3e GFX GFX
    dw   `11122230                                     ;; 09:4c24 $e2 $1e GFX GFX
    dw   `21122223                                     ;; 09:4c26 $61 $9f GFX GFX
    dw   `22112223                                     ;; 09:4c28 $31 $cf GFX GFX
    dw   `22112223                                     ;; 09:4c2a $31 $cf GFX GFX
    dw   `22123330                                     ;; 09:4c2c $2e $de GFX GFX
    dw   `33330000                                     ;; 09:4c2e $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:4c30 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c32 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c34 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:4c36 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:4c38 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:4c3a $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4c3c $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4c3e $03 $02 GFX GFX
    dw   `00000000                                     ;; 09:4c40 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c42 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c44 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c46 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4c48 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4c4a $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4c4c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4c4e $80 $80 GFX GFX
    dw   `00000031                                     ;; 09:4c50 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4c52 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4c54 $03 $02 GFX GFX
    dw   `00000322                                     ;; 09:4c56 $04 $07 GFX GFX
    dw   `00000322                                     ;; 09:4c58 $04 $07 GFX GFX
    dw   `00000322                                     ;; 09:4c5a $04 $07 GFX GFX
    dw   `00000323                                     ;; 09:4c5c $05 $07 GFX GFX
    dw   `00000323                                     ;; 09:4c5e $05 $07 GFX GFX
    dw   `30000000                                     ;; 09:4c60 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4c62 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:4c64 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:4c66 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:4c68 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:4c6a $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:4c6c $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:4c6e $c0 $40 GFX GFX
    dw   `00000331                                     ;; 09:4c70 $07 $06 GFX GFX
    dw   `00003231                                     ;; 09:4c72 $0b $0e GFX GFX
    dw   `00003231                                     ;; 09:4c74 $0b $0e GFX GFX
    dw   `00032312                                     ;; 09:4c76 $16 $1d GFX GFX
    dw   `00032312                                     ;; 09:4c78 $16 $1d GFX GFX
    dw   `00032312                                     ;; 09:4c7a $16 $1d GFX GFX
    dw   `00322233                                     ;; 09:4c7c $23 $3f GFX GFX
    dw   `00322221                                     ;; 09:4c7e $21 $3e GFX GFX
    dw   `33000000                                     ;; 09:4c80 $c0 $c0 GFX GFX
    dw   `32300000                                     ;; 09:4c82 $a0 $e0 GFX GFX
    dw   `32300000                                     ;; 09:4c84 $a0 $e0 GFX GFX
    dw   `23230000                                     ;; 09:4c86 $50 $f0 GFX GFX
    dw   `23230000                                     ;; 09:4c88 $50 $f0 GFX GFX
    dw   `23230000                                     ;; 09:4c8a $50 $f0 GFX GFX
    dw   `32223000                                     ;; 09:4c8c $88 $f8 GFX GFX
    dw   `22223000                                     ;; 09:4c8e $08 $f8 GFX GFX
    dw   `03233221                                     ;; 09:4c90 $59 $7e GFX GFX
    dw   `03112321                                     ;; 09:4c92 $75 $4e GFX GFX
    dw   `03331321                                     ;; 09:4c94 $7d $76 GFX GFX
    dw   `03113321                                     ;; 09:4c96 $7d $4e GFX GFX
    dw   `03133321                                     ;; 09:4c98 $7d $5e GFX GFX
    dw   `00333221                                     ;; 09:4c9a $39 $3e GFX GFX
    dw   `00032222                                     ;; 09:4c9c $10 $1f GFX GFX
    dw   `00003333                                     ;; 09:4c9e $0f $0f GFX GFX
    dw   `22332300                                     ;; 09:4ca0 $34 $fc GFX GFX
    dw   `23111300                                     ;; 09:4ca2 $7c $c4 GFX GFX
    dw   `23133300                                     ;; 09:4ca4 $7c $dc GFX GFX
    dw   `23311300                                     ;; 09:4ca6 $7c $e4 GFX GFX
    dw   `23331300                                     ;; 09:4ca8 $7c $f4 GFX GFX
    dw   `22333000                                     ;; 09:4caa $38 $f8 GFX GFX
    dw   `22230000                                     ;; 09:4cac $10 $f0 GFX GFX
    dw   `33300000                                     ;; 09:4cae $e0 $e0 GFX GFX
    dw   `03222223                                     ;; 09:4cb0 $41 $7f GFX GFX
    dw   `03222231                                     ;; 09:4cb2 $43 $7e GFX GFX
    dw   `03222231                                     ;; 09:4cb4 $43 $7e GFX GFX
    dw   `03222223                                     ;; 09:4cb6 $41 $7f GFX GFX
    dw   `03222221                                     ;; 09:4cb8 $41 $7e GFX GFX
    dw   `00322221                                     ;; 09:4cba $21 $3e GFX GFX
    dw   `00033222                                     ;; 09:4cbc $18 $1f GFX GFX
    dw   `00000333                                     ;; 09:4cbe $07 $07 GFX GFX
    dw   `22222300                                     ;; 09:4cc0 $04 $fc GFX GFX
    dw   `32222300                                     ;; 09:4cc2 $84 $fc GFX GFX
    dw   `32222300                                     ;; 09:4cc4 $84 $fc GFX GFX
    dw   `22222300                                     ;; 09:4cc6 $04 $fc GFX GFX
    dw   `22222300                                     ;; 09:4cc8 $04 $fc GFX GFX
    dw   `22223000                                     ;; 09:4cca $08 $f8 GFX GFX
    dw   `22330000                                     ;; 09:4ccc $30 $f0 GFX GFX
    dw   `33000000                                     ;; 09:4cce $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:4cd0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4cd2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4cd4 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:4cd6 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:4cd8 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:4cda $02 $03 GFX GFX
    dw   `00300323                                     ;; 09:4cdc $25 $27 GFX GFX
    dw   `03233223                                     ;; 09:4cde $59 $7f GFX GFX
    dw   `00030330                                     ;; 09:4ce0 $16 $16 GFX GFX
    dw   `00313130                                     ;; 09:4ce2 $3e $2a GFX GFX
    dw   `03131233                                     ;; 09:4ce4 $7b $57 GFX GFX
    dw   `33311322                                     ;; 09:4ce6 $fc $e7 GFX GFX
    dw   `22222332                                     ;; 09:4ce8 $06 $ff GFX GFX
    dw   `33322323                                     ;; 09:4cea $e5 $ff GFX GFX
    dw   `31323223                                     ;; 09:4cec $e9 $bf GFX GFX
    dw   `31322223                                     ;; 09:4cee $e1 $bf GFX GFX
    dw   `32222223                                     ;; 09:4cf0 $81 $ff GFX GFX
    dw   `33223232                                     ;; 09:4cf2 $ca $ff GFX GFX
    dw   `31331333                                     ;; 09:4cf4 $ff $b7 GFX GFX
    dw   `33003331                                     ;; 09:4cf6 $cf $ce GFX GFX
    dw   `00033322                                     ;; 09:4cf8 $1c $1f GFX GFX
    dw   `00032233                                     ;; 09:4cfa $13 $1f GFX GFX
    dw   `00003300                                     ;; 09:4cfc $0c $0c GFX GFX
    dw   `00000000                                     ;; 09:4cfe $00 $00 GFX GFX
    dw   `33222232                                     ;; 09:4d00 $c2 $ff GFX GFX
    dw   `22332232                                     ;; 09:4d02 $32 $ff GFX GFX
    dw   `33223223                                     ;; 09:4d04 $c9 $ff GFX GFX
    dw   `32223323                                     ;; 09:4d06 $8d $ff GFX GFX
    dw   `23330323                                     ;; 09:4d08 $75 $f7 GFX GFX
    dw   `30000030                                     ;; 09:4d0a $82 $82 GFX GFX
    dw   `00000000                                     ;; 09:4d0c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4d0e $00 $00 GFX GFX
    dw   `00333000                                     ;; 09:4d10 $38 $38 GFX GFX
    dw   `33221333                                     ;; 09:4d12 $cf $f7 GFX GFX
    dw   `22233222                                     ;; 09:4d14 $18 $ff GFX GFX
    dw   `22222222                                     ;; 09:4d16 $00 $ff GFX GFX
    dw   `22122212                                     ;; 09:4d18 $22 $dd GFX GFX
    dw   `22222222                                     ;; 09:4d1a $00 $ff GFX GFX
    dw   `23332222                                     ;; 09:4d1c $70 $ff GFX GFX
    dw   `32213322                                     ;; 09:4d1e $9c $ef GFX GFX
    dw   `00000000                                     ;; 09:4d20 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4d22 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:4d24 $c0 $40 GFX GFX
    dw   `33330000                                     ;; 09:4d26 $f0 $f0 GFX GFX
    dw   `22213000                                     ;; 09:4d28 $18 $e8 GFX GFX
    dw   `22233000                                     ;; 09:4d2a $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:4d2c $04 $fc GFX GFX
    dw   `22123300                                     ;; 09:4d2e $2c $dc GFX GFX
    dw   `23113233                                     ;; 09:4d30 $7b $cf GFX GFX
    dw   `23332211                                     ;; 09:4d32 $73 $fc GFX GFX
    dw   `30033113                                     ;; 09:4d34 $9f $99 GFX GFX
    dw   `00000332                                     ;; 09:4d36 $06 $07 GFX GFX
    dw   `00000321                                     ;; 09:4d38 $05 $06 GFX GFX
    dw   `00000031                                     ;; 09:4d3a $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:4d3c $03 $02 GFX GFX
    dw   `00000033                                     ;; 09:4d3e $03 $03 GFX GFX
    dw   `22222130                                     ;; 09:4d40 $06 $fa GFX GFX
    dw   `32222330                                     ;; 09:4d42 $86 $fe GFX GFX
    dw   `32222230                                     ;; 09:4d44 $82 $fe GFX GFX
    dw   `23221223                                     ;; 09:4d46 $49 $f7 GFX GFX
    dw   `13222313                                     ;; 09:4d48 $c7 $7d GFX GFX
    dw   `11322230                                     ;; 09:4d4a $e2 $3e GFX GFX
    dw   `13322223                                     ;; 09:4d4c $e1 $7f GFX GFX
    dw   `32322313                                     ;; 09:4d4e $a7 $fd GFX GFX
    dw   `00000000                                     ;; 09:4d50 $00 $00 GFX GFX
    dw   `00030000                                     ;; 09:4d52 $10 $10 GFX GFX
    dw   `03323000                                     ;; 09:4d54 $68 $78 GFX GFX
    dw   `32223003                                     ;; 09:4d56 $89 $f9 GFX GFX
    dw   `32222332                                     ;; 09:4d58 $86 $ff GFX GFX
    dw   `33222222                                     ;; 09:4d5a $c0 $ff GFX GFX
    dw   `31323223                                     ;; 09:4d5c $e9 $bf GFX GFX
    dw   `03031323                                     ;; 09:4d5e $5d $57 GFX GFX
    dw   `00003033                                     ;; 09:4d60 $0b $0b GFX GFX
    dw   `00032313                                     ;; 09:4d62 $17 $1d GFX GFX
    dw   `00313123                                     ;; 09:4d64 $3d $2b GFX GFX
    dw   `33331132                                     ;; 09:4d66 $fe $f3 GFX GFX
    dw   `22222332                                     ;; 09:4d68 $06 $ff GFX GFX
    dw   `33322323                                     ;; 09:4d6a $e5 $ff GFX GFX
    dw   `31132223                                     ;; 09:4d6c $f1 $9f GFX GFX
    dw   `31322223                                     ;; 09:4d6e $e1 $bf GFX GFX
    dw   `00033032                                     ;; 09:4d70 $1a $1b GFX GFX
    dw   `00000003                                     ;; 09:4d72 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:4d74 $03 $03 GFX GFX
    dw   `00000313                                     ;; 09:4d76 $07 $05 GFX GFX
    dw   `00033332                                     ;; 09:4d78 $1e $1f GFX GFX
    dw   `00032322                                     ;; 09:4d7a $14 $1f GFX GFX
    dw   `00003223                                     ;; 09:4d7c $09 $0f GFX GFX
    dw   `00000330                                     ;; 09:4d7e $06 $06 GFX GFX
    dw   `33222232                                     ;; 09:4d80 $c2 $ff GFX GFX
    dw   `22332232                                     ;; 09:4d82 $32 $ff GFX GFX
    dw   `33223223                                     ;; 09:4d84 $c9 $ff GFX GFX
    dw   `22223323                                     ;; 09:4d86 $0d $ff GFX GFX
    dw   `23330323                                     ;; 09:4d88 $75 $f7 GFX GFX
    dw   `30000030                                     ;; 09:4d8a $82 $82 GFX GFX
    dw   `00000000                                     ;; 09:4d8c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4d8e $00 $00 GFX GFX
    dw   `00330033                                     ;; 09:4d90 $33 $33 GFX GFX
    dw   `03213322                                     ;; 09:4d92 $5c $6f GFX GFX
    dw   `32232222                                     ;; 09:4d94 $90 $ff GFX GFX
    dw   `21222212                                     ;; 09:4d96 $42 $bd GFX GFX
    dw   `22222222                                     ;; 09:4d98 $00 $ff GFX GFX
    dw   `22223333                                     ;; 09:4d9a $0f $ff GFX GFX
    dw   `23331321                                     ;; 09:4d9c $7d $f6 GFX GFX
    dw   `33221321                                     ;; 09:4d9e $cd $f6 GFX GFX
    dw   `30033300                                     ;; 09:4da0 $9c $9c GFX GFX
    dw   `13322130                                     ;; 09:4da2 $e6 $7a GFX GFX
    dw   `32222323                                     ;; 09:4da4 $85 $ff GFX GFX
    dw   `22222222                                     ;; 09:4da6 $00 $ff GFX GFX
    dw   `22212222                                     ;; 09:4da8 $10 $ef GFX GFX
    dw   `32222222                                     ;; 09:4daa $80 $ff GFX GFX
    dw   `13332221                                     ;; 09:4dac $f1 $7e GFX GFX
    dw   `13213332                                     ;; 09:4dae $de $6f GFX GFX
    dw   `23213211                                     ;; 09:4db0 $5b $ec GFX GFX
    dw   `13333333                                     ;; 09:4db2 $ff $7f GFX GFX
    dw   `33000000                                     ;; 09:4db4 $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:4db6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4db8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4dba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4dbc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4dbe $00 $00 GFX GFX
    dw   `13211323                                     ;; 09:4dc0 $dd $67 GFX GFX
    dw   `32111321                                     ;; 09:4dc2 $bd $c6 GFX GFX
    dw   `03333211                                     ;; 09:4dc4 $7b $7c GFX GFX
    dw   `00000331                                     ;; 09:4dc6 $07 $06 GFX GFX
    dw   `00000003                                     ;; 09:4dc8 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:4dca $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4dcc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4dce $00 $00 GFX GFX
    dw   `00000032                                     ;; 09:4dd0 $02 $03 GFX GFX
    dw   `00000031                                     ;; 09:4dd2 $03 $02 GFX GFX
    dw   `33000033                                     ;; 09:4dd4 $c3 $c3 GFX GFX
    dw   `22330322                                     ;; 09:4dd6 $34 $f7 GFX GFX
    dw   `22223311                                     ;; 09:4dd8 $0f $fc GFX GFX
    dw   `22123111                                     ;; 09:4dda $2f $d8 GFX GFX
    dw   `22223333                                     ;; 09:4ddc $0f $ff GFX GFX
    dw   `22233222                                     ;; 09:4dde $18 $ff GFX GFX
    dw   `21322230                                     ;; 09:4de0 $62 $be GFX GFX
    dw   `13322230                                     ;; 09:4de2 $e2 $7e GFX GFX
    dw   `32321223                                     ;; 09:4de4 $a9 $f7 GFX GFX
    dw   `23222313                                     ;; 09:4de6 $47 $fd GFX GFX
    dw   `13222230                                     ;; 09:4de8 $c2 $7e GFX GFX
    dw   `33222230                                     ;; 09:4dea $c2 $fe GFX GFX
    dw   `23212300                                     ;; 09:4dec $54 $ec GFX GFX
    dw   `32222300                                     ;; 09:4dee $84 $fc GFX GFX
    dw   `22231111                                     ;; 09:4df0 $1f $f0 GFX GFX
    dw   `32231113                                     ;; 09:4df2 $9f $f1 GFX GFX
    dw   `13233332                                     ;; 09:4df4 $de $7f GFX GFX
    dw   `13322223                                     ;; 09:4df6 $e1 $7f GFX GFX
    dw   `32311113                                     ;; 09:4df8 $bf $e1 GFX GFX
    dw   `32311132                                     ;; 09:4dfa $be $e3 GFX GFX
    dw   `03333322                                     ;; 09:4dfc $7c $7f GFX GFX
    dw   `03222232                                     ;; 09:4dfe $42 $7f GFX GFX
    dw   `32222230                                     ;; 09:4e00 $82 $fe GFX GFX
    dw   `22223130                                     ;; 09:4e02 $0e $fa GFX GFX
    dw   `22123300                                     ;; 09:4e04 $2c $dc GFX GFX
    dw   `22223000                                     ;; 09:4e06 $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:4e08 $04 $fc GFX GFX
    dw   `22231300                                     ;; 09:4e0a $1c $f4 GFX GFX
    dw   `21223000                                     ;; 09:4e0c $48 $b8 GFX GFX
    dw   `22223000                                     ;; 09:4e0e $08 $f8 GFX GFX
    dw   `03111132                                     ;; 09:4e10 $7e $43 GFX GFX
    dw   `03111132                                     ;; 09:4e12 $7e $43 GFX GFX
    dw   `03333322                                     ;; 09:4e14 $7c $7f GFX GFX
    dw   `32222232                                     ;; 09:4e16 $82 $ff GFX GFX
    dw   `31111132                                     ;; 09:4e18 $fe $83 GFX GFX
    dw   `31111322                                     ;; 09:4e1a $fc $87 GFX GFX
    dw   `33333321                                     ;; 09:4e1c $fd $fe GFX GFX
    dw   `32222232                                     ;; 09:4e1e $82 $ff GFX GFX
    dw   `22223000                                     ;; 09:4e20 $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:4e22 $04 $fc GFX GFX
    dw   `21222300                                     ;; 09:4e24 $44 $bc GFX GFX
    dw   `22223130                                     ;; 09:4e26 $0e $fa GFX GFX
    dw   `22222300                                     ;; 09:4e28 $04 $fc GFX GFX
    dw   `22222233                                     ;; 09:4e2a $03 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e2c $00 $ff GFX GFX
    dw   `22222223                                     ;; 09:4e2e $01 $ff GFX GFX
    dw   `31111132                                     ;; 09:4e30 $fe $83 GFX GFX
    dw   `31111332                                     ;; 09:4e32 $fe $87 GFX GFX
    dw   `33333232                                     ;; 09:4e34 $fa $ff GFX GFX
    dw   `03222132                                     ;; 09:4e36 $46 $7b GFX GFX
    dw   `03111113                                     ;; 09:4e38 $7f $41 GFX GFX
    dw   `00311113                                     ;; 09:4e3a $3f $21 GFX GFX
    dw   `00322222                                     ;; 09:4e3c $20 $3f GFX GFX
    dw   `00000022                                     ;; 09:4e3e $00 $03 GFX GFX
    dw   `22212222                                     ;; 09:4e40 $10 $ef GFX GFX
    dw   `22222222                                     ;; 09:4e42 $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e44 $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e46 $00 $ff GFX GFX
    dw   `22122221                                     ;; 09:4e48 $21 $de GFX GFX
    dw   `22222222                                     ;; 09:4e4a $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e4c $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e4e $00 $ff GFX GFX
    dw   `00000000                                     ;; 09:4e50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e52 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e54 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e56 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e58 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e5a $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4e5c $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:4e5e $c0 $40 GFX GFX
    dw   `33000000                                     ;; 09:4e60 $c0 $c0 GFX GFX
    dw   `22330000                                     ;; 09:4e62 $30 $f0 GFX GFX
    dw   `22223330                                     ;; 09:4e64 $0e $fe GFX GFX
    dw   `22222223                                     ;; 09:4e66 $01 $ff GFX GFX
    dw   `22222222                                     ;; 09:4e68 $00 $ff GFX GFX
    dw   `22222212                                     ;; 09:4e6a $02 $fd GFX GFX
    dw   `22212222                                     ;; 09:4e6c $10 $ef GFX GFX
    dw   `22222222                                     ;; 09:4e6e $00 $ff GFX GFX
    dw   `00000000                                     ;; 09:4e70 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e72 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4e74 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:4e76 $c0 $c0 GFX GFX
    dw   `22333000                                     ;; 09:4e78 $38 $f8 GFX GFX
    dw   `22222330                                     ;; 09:4e7a $06 $fe GFX GFX
    dw   `22222223                                     ;; 09:4e7c $01 $ff GFX GFX
    dw   `22220000                                     ;; 09:4e7e $00 $f0 GFX GFX
    dw   `00000032                                     ;; 09:4e80 $02 $03 GFX GFX
    dw   `00000031                                     ;; 09:4e82 $03 $02 GFX GFX
    dw   `00000033                                     ;; 09:4e84 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:4e86 $04 $07 GFX GFX
    dw   `00000311                                     ;; 09:4e88 $07 $04 GFX GFX
    dw   `00003111                                     ;; 09:4e8a $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:4e8c $0f $0f GFX GFX
    dw   `00003222                                     ;; 09:4e8e $08 $0f GFX GFX
    dw   `21322230                                     ;; 09:4e90 $62 $be GFX GFX
    dw   `13322230                                     ;; 09:4e92 $e2 $7e GFX GFX
    dw   `32321223                                     ;; 09:4e94 $a9 $f7 GFX GFX
    dw   `23222313                                     ;; 09:4e96 $47 $fd GFX GFX
    dw   `13222230                                     ;; 09:4e98 $c2 $7e GFX GFX
    dw   `33222230                                     ;; 09:4e9a $c2 $fe GFX GFX
    dw   `23212300                                     ;; 09:4e9c $54 $ec GFX GFX
    dw   `32222300                                     ;; 09:4e9e $84 $fc GFX GFX
    dw   `00031111                                     ;; 09:4ea0 $1f $10 GFX GFX
    dw   `00031113                                     ;; 09:4ea2 $1f $11 GFX GFX
    dw   `00033332                                     ;; 09:4ea4 $1e $1f GFX GFX
    dw   `00322223                                     ;; 09:4ea6 $21 $3f GFX GFX
    dw   `00311113                                     ;; 09:4ea8 $3f $21 GFX GFX
    dw   `00311132                                     ;; 09:4eaa $3e $23 GFX GFX
    dw   `00333322                                     ;; 09:4eac $3c $3f GFX GFX
    dw   `03222232                                     ;; 09:4eae $42 $7f GFX GFX
    dw   `32222230                                     ;; 09:4eb0 $82 $fe GFX GFX
    dw   `22223130                                     ;; 09:4eb2 $0e $fa GFX GFX
    dw   `22123300                                     ;; 09:4eb4 $2c $dc GFX GFX
    dw   `22223000                                     ;; 09:4eb6 $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:4eb8 $04 $fc GFX GFX
    dw   `22231300                                     ;; 09:4eba $1c $f4 GFX GFX
    dw   `21233000                                     ;; 09:4ebc $58 $b8 GFX GFX
    dw   `22230000                                     ;; 09:4ebe $10 $f0 GFX GFX
    dw   `00330033                                     ;; 09:4ec0 $33 $33 GFX GFX
    dw   `33213322                                     ;; 09:4ec2 $dc $ef GFX GFX
    dw   `22232222                                     ;; 09:4ec4 $10 $ff GFX GFX
    dw   `21222212                                     ;; 09:4ec6 $42 $bd GFX GFX
    dw   `22222222                                     ;; 09:4ec8 $00 $ff GFX GFX
    dw   `22222233                                     ;; 09:4eca $03 $ff GFX GFX
    dw   `22233321                                     ;; 09:4ecc $1d $fe GFX GFX
    dw   `33321321                                     ;; 09:4ece $ed $f6 GFX GFX
    dw   `30033300                                     ;; 09:4ed0 $9c $9c GFX GFX
    dw   `13322133                                     ;; 09:4ed2 $e7 $7b GFX GFX
    dw   `32222322                                     ;; 09:4ed4 $84 $ff GFX GFX
    dw   `22222222                                     ;; 09:4ed6 $00 $ff GFX GFX
    dw   `22212222                                     ;; 09:4ed8 $10 $ef GFX GFX
    dw   `33222222                                     ;; 09:4eda $c0 $ff GFX GFX
    dw   `11333321                                     ;; 09:4edc $fd $3e GFX GFX
    dw   `11321133                                     ;; 09:4ede $ef $33 GFX GFX
    dw   `23211333                                     ;; 09:4ee0 $5f $e7 GFX GFX
    dw   `13333000                                     ;; 09:4ee2 $f8 $78 GFX GFX
    dw   `33000000                                     ;; 09:4ee4 $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:4ee6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ee8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4eea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4eec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4eee $00 $00 GFX GFX
    dw   `33211132                                     ;; 09:4ef0 $de $e3 GFX GFX
    dw   `00331132                                     ;; 09:4ef2 $3e $33 GFX GFX
    dw   `00003321                                     ;; 09:4ef4 $0d $0e GFX GFX
    dw   `00000033                                     ;; 09:4ef6 $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:4ef8 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:4efa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4efc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4efe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f00 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4f02 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:4f04 $60 $e0 GFX GFX
    dw   `22133000                                     ;; 09:4f06 $38 $d8 GFX GFX
    dw   `22322300                                     ;; 09:4f08 $24 $fc GFX GFX
    dw   `22222233                                     ;; 09:4f0a $03 $ff GFX GFX
    dw   `22222222                                     ;; 09:4f0c $00 $ff GFX GFX
    dw   `22222223                                     ;; 09:4f0e $01 $ff GFX GFX
    dw   `00000000                                     ;; 09:4f10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f14 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f16 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f18 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4f1a $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:4f1c $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:4f1e $c0 $40 GFX GFX
    dw   `32212222                                     ;; 09:4f20 $90 $ef GFX GFX
    dw   `13222222                                     ;; 09:4f22 $c0 $7f GFX GFX
    dw   `11322222                                     ;; 09:4f24 $e0 $3f GFX GFX
    dw   `12332212                                     ;; 09:4f26 $b2 $7d GFX GFX
    dw   `33223222                                     ;; 09:4f28 $c8 $ff GFX GFX
    dw   `32113222                                     ;; 09:4f2a $b8 $cf GFX GFX
    dw   `31113322                                     ;; 09:4f2c $fc $8f GFX GFX
    dw   `03332322                                     ;; 09:4f2e $74 $7f GFX GFX
    dw   `33000000                                     ;; 09:4f30 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:4f32 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:4f34 $10 $f0 GFX GFX
    dw   `23130000                                     ;; 09:4f36 $70 $d0 GFX GFX
    dw   `22323000                                     ;; 09:4f38 $28 $f8 GFX GFX
    dw   `22223000                                     ;; 09:4f3a $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:4f3c $04 $fc GFX GFX
    dw   `22231300                                     ;; 09:4f3e $1c $f4 GFX GFX
    dw   `03111132                                     ;; 09:4f40 $7e $43 GFX GFX
    dw   `03333132                                     ;; 09:4f42 $7e $7b GFX GFX
    dw   `32221333                                     ;; 09:4f44 $8f $f7 GFX GFX
    dw   `22123321                                     ;; 09:4f46 $2d $de GFX GFX
    dw   `22222223                                     ;; 09:4f48 $01 $ff GFX GFX
    dw   `22222122                                     ;; 09:4f4a $04 $fb GFX GFX
    dw   `22222222                                     ;; 09:4f4c $00 $ff GFX GFX
    dw   `22122222                                     ;; 09:4f4e $20 $df GFX GFX
    dw   `22230000                                     ;; 09:4f50 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:4f52 $08 $f8 GFX GFX
    dw   `21223000                                     ;; 09:4f54 $48 $b8 GFX GFX
    dw   `32223000                                     ;; 09:4f56 $88 $f8 GFX GFX
    dw   `33221300                                     ;; 09:4f58 $cc $f4 GFX GFX
    dw   `21333300                                     ;; 09:4f5a $7c $bc GFX GFX
    dw   `22221330                                     ;; 09:4f5c $0e $f6 GFX GFX
    dw   `22223213                                     ;; 09:4f5e $0b $fd GFX GFX
    dw   `33222212                                     ;; 09:4f60 $c2 $fd GFX GFX
    dw   `11332222                                     ;; 09:4f62 $f0 $3f GFX GFX
    dw   `11323332                                     ;; 09:4f64 $ee $3f GFX GFX
    dw   `11321133                                     ;; 09:4f66 $ef $33 GFX GFX
    dw   `33221132                                     ;; 09:4f68 $ce $f3 GFX GFX
    dw   `03111132                                     ;; 09:4f6a $7e $43 GFX GFX
    dw   `00322321                                     ;; 09:4f6c $25 $3e GFX GFX
    dw   `00000022                                     ;; 09:4f6e $00 $03 GFX GFX
    dw   `22122222                                     ;; 09:4f70 $20 $df GFX GFX
    dw   `22222222                                     ;; 09:4f72 $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4f74 $00 $ff GFX GFX
    dw   `22212212                                     ;; 09:4f76 $12 $ed GFX GFX
    dw   `33222222                                     ;; 09:4f78 $c0 $ff GFX GFX
    dw   `11322222                                     ;; 09:4f7a $e0 $3f GFX GFX
    dw   `11132222                                     ;; 09:4f7c $f0 $1f GFX GFX
    dw   `22222222                                     ;; 09:4f7e $00 $ff GFX GFX
    dw   `00000032                                     ;; 09:4f80 $02 $03 GFX GFX
    dw   `33300031                                     ;; 09:4f82 $e3 $e2 GFX GFX
    dw   `22133033                                     ;; 09:4f84 $3b $db GFX GFX
    dw   `22323322                                     ;; 09:4f86 $2c $ff GFX GFX
    dw   `22222331                                     ;; 09:4f88 $07 $fe GFX GFX
    dw   `22212223                                     ;; 09:4f8a $11 $ef GFX GFX
    dw   `22222222                                     ;; 09:4f8c $00 $ff GFX GFX
    dw   `22222222                                     ;; 09:4f8e $00 $ff GFX GFX
    dw   `21322230                                     ;; 09:4f90 $62 $be GFX GFX
    dw   `13322230                                     ;; 09:4f92 $e2 $7e GFX GFX
    dw   `32321223                                     ;; 09:4f94 $a9 $f7 GFX GFX
    dw   `23222313                                     ;; 09:4f96 $47 $fd GFX GFX
    dw   `13222230                                     ;; 09:4f98 $c2 $7e GFX GFX
    dw   `33222230                                     ;; 09:4f9a $c2 $fe GFX GFX
    dw   `13212300                                     ;; 09:4f9c $d4 $6c GFX GFX
    dw   `33222300                                     ;; 09:4f9e $c4 $fc GFX GFX
    dw   `32222222                                     ;; 09:4fa0 $80 $ff GFX GFX
    dw   `13322212                                     ;; 09:4fa2 $e2 $7d GFX GFX
    dw   `11332222                                     ;; 09:4fa4 $f0 $3f GFX GFX
    dw   `13223222                                     ;; 09:4fa6 $c8 $7f GFX GFX
    dw   `32111322                                     ;; 09:4fa8 $bc $c7 GFX GFX
    dw   `31111322                                     ;; 09:4faa $fc $87 GFX GFX
    dw   `03333232                                     ;; 09:4fac $7a $7f GFX GFX
    dw   `03222232                                     ;; 09:4fae $42 $7f GFX GFX
    dw   `23222230                                     ;; 09:4fb0 $42 $fe GFX GFX
    dw   `22323130                                     ;; 09:4fb2 $2e $fa GFX GFX
    dw   `22323300                                     ;; 09:4fb4 $2c $fc GFX GFX
    dw   `22323000                                     ;; 09:4fb6 $28 $f8 GFX GFX
    dw   `22232300                                     ;; 09:4fb8 $14 $fc GFX GFX
    dw   `22231300                                     ;; 09:4fba $1c $f4 GFX GFX
    dw   `21233000                                     ;; 09:4fbc $58 $b8 GFX GFX
    dw   `22233000                                     ;; 09:4fbe $18 $f8 GFX GFX
    dw   `00000000                                     ;; 09:4fc0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fc2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fc4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fc6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fc8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fca $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fcc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fce $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fd0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fd2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fd4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fd6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fd8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fda $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fdc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fde $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fe0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fe2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fe4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fe6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fe8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4fee $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ff0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ff2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ff4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ff6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ff8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ffa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ffc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:4ffe $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:5000 $03 $03 GFX GFX
    dw   `00000312                                     ;; 09:5002 $06 $05 GFX GFX
    dw   `00003122                                     ;; 09:5004 $0c $0b GFX GFX
    dw   `00031222                                     ;; 09:5006 $18 $17 GFX GFX
    dw   `00031223                                     ;; 09:5008 $19 $17 GFX GFX
    dw   `00032233                                     ;; 09:500a $13 $1f GFX GFX
    dw   `00322331                                     ;; 09:500c $27 $3e GFX GFX
    dw   `03223131                                     ;; 09:500e $4f $7a GFX GFX
    dw   `33000000                                     ;; 09:5010 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5012 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5014 $10 $f0 GFX GFX
    dw   `32223000                                     ;; 09:5016 $88 $f8 GFX GFX
    dw   `13223000                                     ;; 09:5018 $c8 $78 GFX GFX
    dw   `13322000                                     ;; 09:501a $e0 $78 GFX GFX
    dw   `13132300                                     ;; 09:501c $f4 $5c GFX GFX
    dw   `13132300                                     ;; 09:501e $f4 $5c GFX GFX
    dw   `03233311                                     ;; 09:5020 $5f $7c GFX GFX
    dw   `03231233                                     ;; 09:5022 $5b $77 GFX GFX
    dw   `00311321                                     ;; 09:5024 $3d $26 GFX GFX
    dw   `03113332                                     ;; 09:5026 $7e $4f GFX GFX
    dw   `00333222                                     ;; 09:5028 $38 $3f GFX GFX
    dw   `00332332                                     ;; 09:502a $36 $3f GFX GFX
    dw   `03223113                                     ;; 09:502c $4f $79 GFX GFX
    dw   `00333333                                     ;; 09:502e $3f $3f GFX GFX
    dw   `11332300                                     ;; 09:5030 $f4 $3c GFX GFX
    dw   `33213000                                     ;; 09:5032 $d8 $e8 GFX GFX
    dw   `12311300                                     ;; 09:5034 $bc $64 GFX GFX
    dw   `23331300                                     ;; 09:5036 $7c $f4 GFX GFX
    dw   `22233000                                     ;; 09:5038 $18 $f8 GFX GFX
    dw   `22223300                                     ;; 09:503a $0c $fc GFX GFX
    dw   `22222230                                     ;; 09:503c $02 $fe GFX GFX
    dw   `33333300                                     ;; 09:503e $fc $fc GFX GFX
    dw   `00000033                                     ;; 09:5040 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:5042 $07 $04 GFX GFX
    dw   `00003123                                     ;; 09:5044 $0d $0b GFX GFX
    dw   `00031222                                     ;; 09:5046 $18 $17 GFX GFX
    dw   `00031222                                     ;; 09:5048 $18 $17 GFX GFX
    dw   `00031222                                     ;; 09:504a $18 $17 GFX GFX
    dw   `00312222                                     ;; 09:504c $30 $2f GFX GFX
    dw   `00322222                                     ;; 09:504e $20 $3f GFX GFX
    dw   `33000000                                     ;; 09:5050 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5052 $20 $e0 GFX GFX
    dw   `32230000                                     ;; 09:5054 $90 $f0 GFX GFX
    dw   `32230000                                     ;; 09:5056 $90 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5058 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:505a $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:505c $04 $fc GFX GFX
    dw   `23232230                                     ;; 09:505e $52 $fe GFX GFX
    dw   `00323232                                     ;; 09:5060 $2a $3f GFX GFX
    dw   `00031232                                     ;; 09:5062 $1a $17 GFX GFX
    dw   `00031323                                     ;; 09:5064 $1d $17 GFX GFX
    dw   `00313332                                     ;; 09:5066 $3e $2f GFX GFX
    dw   `00033222                                     ;; 09:5068 $18 $1f GFX GFX
    dw   `00322222                                     ;; 09:506a $20 $3f GFX GFX
    dw   `03223332                                     ;; 09:506c $4e $7f GFX GFX
    dw   `00333333                                     ;; 09:506e $3f $3f GFX GFX
    dw   `23333230                                     ;; 09:5070 $7a $fe GFX GFX
    dw   `33213300                                     ;; 09:5072 $dc $ec GFX GFX
    dw   `22311300                                     ;; 09:5074 $3c $e4 GFX GFX
    dw   `23331300                                     ;; 09:5076 $7c $f4 GFX GFX
    dw   `22233000                                     ;; 09:5078 $18 $f8 GFX GFX
    dw   `22223000                                     ;; 09:507a $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:507c $04 $fc GFX GFX
    dw   `33333000                                     ;; 09:507e $f8 $f8 GFX GFX
    dw   `00003333                                     ;; 09:5080 $0f $0f GFX GFX
    dw   `00032211                                     ;; 09:5082 $13 $1c GFX GFX
    dw   `00322222                                     ;; 09:5084 $20 $3f GFX GFX
    dw   `03221222                                     ;; 09:5086 $48 $77 GFX GFX
    dw   `03231122                                     ;; 09:5088 $5c $73 GFX GFX
    dw   `00323322                                     ;; 09:508a $2c $3f GFX GFX
    dw   `00031332                                     ;; 09:508c $1e $17 GFX GFX
    dw   `00031313                                     ;; 09:508e $1f $15 GFX GFX
    dw   `30000000                                     ;; 09:5090 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:5092 $40 $c0 GFX GFX
    dw   `12300000                                     ;; 09:5094 $a0 $60 GFX GFX
    dw   `21300000                                     ;; 09:5096 $60 $a0 GFX GFX
    dw   `22230000                                     ;; 09:5098 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:509a $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:509c $08 $f8 GFX GFX
    dw   `23223000                                     ;; 09:509e $48 $f8 GFX GFX
    dw   `00031132                                     ;; 09:50a0 $1e $13 GFX GFX
    dw   `00003321                                     ;; 09:50a2 $0d $0e GFX GFX
    dw   `00003123                                     ;; 09:50a4 $0d $0b GFX GFX
    dw   `00003231                                     ;; 09:50a6 $0b $0e GFX GFX
    dw   `00003331                                     ;; 09:50a8 $0f $0e GFX GFX
    dw   `00003223                                     ;; 09:50aa $09 $0f GFX GFX
    dw   `00032222                                     ;; 09:50ac $10 $1f GFX GFX
    dw   `03333333                                     ;; 09:50ae $7f $7f GFX GFX
    dw   `32322300                                     ;; 09:50b0 $a4 $fc GFX GFX
    dw   `13232300                                     ;; 09:50b2 $d4 $7c GFX GFX
    dw   `13232300                                     ;; 09:50b4 $d4 $7c GFX GFX
    dw   `13303000                                     ;; 09:50b6 $e8 $68 GFX GFX
    dw   `32300000                                     ;; 09:50b8 $a0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:50ba $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:50bc $08 $f8 GFX GFX
    dw   `33333330                                     ;; 09:50be $fe $fe GFX GFX
    dw   `00000000                                     ;; 09:50c0 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:50c2 $0f $0f GFX GFX
    dw   `00032211                                     ;; 09:50c4 $13 $1c GFX GFX
    dw   `00322222                                     ;; 09:50c6 $20 $3f GFX GFX
    dw   `03221222                                     ;; 09:50c8 $48 $77 GFX GFX
    dw   `03231122                                     ;; 09:50ca $5c $73 GFX GFX
    dw   `00323322                                     ;; 09:50cc $2c $3f GFX GFX
    dw   `00031332                                     ;; 09:50ce $1e $17 GFX GFX
    dw   `00000000                                     ;; 09:50d0 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:50d2 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:50d4 $40 $c0 GFX GFX
    dw   `12300000                                     ;; 09:50d6 $a0 $60 GFX GFX
    dw   `21300000                                     ;; 09:50d8 $60 $a0 GFX GFX
    dw   `22230000                                     ;; 09:50da $10 $f0 GFX GFX
    dw   `22223300                                     ;; 09:50dc $0c $fc GFX GFX
    dw   `22222230                                     ;; 09:50de $02 $fe GFX GFX
    dw   `00031313                                     ;; 09:50e0 $1f $15 GFX GFX
    dw   `00031132                                     ;; 09:50e2 $1e $13 GFX GFX
    dw   `00313313                                     ;; 09:50e4 $3f $2d GFX GFX
    dw   `00313223                                     ;; 09:50e6 $39 $2f GFX GFX
    dw   `00032332                                     ;; 09:50e8 $16 $1f GFX GFX
    dw   `00032222                                     ;; 09:50ea $10 $1f GFX GFX
    dw   `00311322                                     ;; 09:50ec $3c $27 GFX GFX
    dw   `03333333                                     ;; 09:50ee $7f $7f GFX GFX
    dw   `23223323                                     ;; 09:50f0 $4d $ff GFX GFX
    dw   `32322233                                     ;; 09:50f2 $a3 $ff GFX GFX
    dw   `11333323                                     ;; 09:50f4 $fd $3f GFX GFX
    dw   `31130030                                     ;; 09:50f6 $f2 $92 GFX GFX
    dw   `23133000                                     ;; 09:50f8 $78 $d8 GFX GFX
    dw   `22322300                                     ;; 09:50fa $24 $fc GFX GFX
    dw   `22223000                                     ;; 09:50fc $08 $f8 GFX GFX
    dw   `33333300                                     ;; 09:50fe $fc $fc GFX GFX
    dw   `00033333                                     ;; 09:5100 $1f $1f GFX GFX
    dw   `00322222                                     ;; 09:5102 $20 $3f GFX GFX
    dw   `00032323                                     ;; 09:5104 $15 $1f GFX GFX
    dw   `00003111                                     ;; 09:5106 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:5108 $0f $08 GFX GFX
    dw   `00003331                                     ;; 09:510a $0f $0e GFX GFX
    dw   `00333131                                     ;; 09:510c $3f $3a GFX GFX
    dw   `03132311                                     ;; 09:510e $77 $5c GFX GFX
    dw   `33300000                                     ;; 09:5110 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5112 $10 $f0 GFX GFX
    dw   `32223000                                     ;; 09:5114 $88 $f8 GFX GFX
    dw   `11323000                                     ;; 09:5116 $e8 $38 GFX GFX
    dw   `11323300                                     ;; 09:5118 $ec $3c GFX GFX
    dw   `33132230                                     ;; 09:511a $f2 $de GFX GFX
    dw   `13133323                                     ;; 09:511c $fd $5f GFX GFX
    dw   `11323130                                     ;; 09:511e $ee $3a GFX GFX
    dw   `31132333                                     ;; 09:5120 $f7 $9f GFX GFX
    dw   `32232231                                     ;; 09:5122 $93 $fe GFX GFX
    dw   `31133223                                     ;; 09:5124 $f9 $9f GFX GFX
    dw   `03303322                                     ;; 09:5126 $6c $6f GFX GFX
    dw   `00003222                                     ;; 09:5128 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:512a $08 $0f GFX GFX
    dw   `00000322                                     ;; 09:512c $04 $07 GFX GFX
    dw   `00003333                                     ;; 09:512e $0f $0f GFX GFX
    dw   `33331113                                     ;; 09:5130 $ff $f1 GFX GFX
    dw   `13233213                                     ;; 09:5132 $db $7d GFX GFX
    dw   `32311330                                     ;; 09:5134 $be $e6 GFX GFX
    dw   `22311300                                     ;; 09:5136 $3c $e4 GFX GFX
    dw   `33333300                                     ;; 09:5138 $fc $fc GFX GFX
    dw   `32230000                                     ;; 09:513a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:513c $e0 $e0 GFX GFX
    dw   `33333300                                     ;; 09:513e $fc $fc GFX GFX
    dw   `00000333                                     ;; 09:5140 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:5142 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:5144 $10 $1f GFX GFX
    dw   `00032222                                     ;; 09:5146 $10 $1f GFX GFX
    dw   `00032222                                     ;; 09:5148 $10 $1f GFX GFX
    dw   `00033223                                     ;; 09:514a $19 $1f GFX GFX
    dw   `00333133                                     ;; 09:514c $3f $3b GFX GFX
    dw   `03132332                                     ;; 09:514e $76 $5f GFX GFX
    dw   `33333000                                     ;; 09:5150 $f8 $f8 GFX GFX
    dw   `22222300                                     ;; 09:5152 $04 $fc GFX GFX
    dw   `22223000                                     ;; 09:5154 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5156 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5158 $08 $f8 GFX GFX
    dw   `32230000                                     ;; 09:515a $90 $f0 GFX GFX
    dw   `33133300                                     ;; 09:515c $fc $dc GFX GFX
    dw   `23323130                                     ;; 09:515e $6e $fa GFX GFX
    dw   `31132232                                     ;; 09:5160 $f2 $9f GFX GFX
    dw   `32132232                                     ;; 09:5162 $b2 $df GFX GFX
    dw   `03333223                                     ;; 09:5164 $79 $7f GFX GFX
    dw   `00003222                                     ;; 09:5166 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:5168 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:516a $08 $0f GFX GFX
    dw   `00000322                                     ;; 09:516c $04 $07 GFX GFX
    dw   `00003333                                     ;; 09:516e $0f $0f GFX GFX
    dw   `32231113                                     ;; 09:5170 $9f $f1 GFX GFX
    dw   `32231113                                     ;; 09:5172 $9f $f1 GFX GFX
    dw   `22233223                                     ;; 09:5174 $19 $ff GFX GFX
    dw   `22333113                                     ;; 09:5176 $3f $f9 GFX GFX
    dw   `33333330                                     ;; 09:5178 $fe $fe GFX GFX
    dw   `32230000                                     ;; 09:517a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:517c $e0 $e0 GFX GFX
    dw   `33333300                                     ;; 09:517e $fc $fc GFX GFX
    dw   `00333333                                     ;; 09:5180 $3f $3f GFX GFX
    dw   `00322222                                     ;; 09:5182 $20 $3f GFX GFX
    dw   `00032323                                     ;; 09:5184 $15 $1f GFX GFX
    dw   `00003111                                     ;; 09:5186 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:5188 $0f $08 GFX GFX
    dw   `00003133                                     ;; 09:518a $0f $0b GFX GFX
    dw   `00003131                                     ;; 09:518c $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:518e $0f $08 GFX GFX
    dw   `33300000                                     ;; 09:5190 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5192 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5194 $08 $f8 GFX GFX
    dw   `32223000                                     ;; 09:5196 $88 $f8 GFX GFX
    dw   `33223000                                     ;; 09:5198 $c8 $f8 GFX GFX
    dw   `31333000                                     ;; 09:519a $f8 $b8 GFX GFX
    dw   `11332300                                     ;; 09:519c $f4 $3c GFX GFX
    dw   `13332230                                     ;; 09:519e $f2 $7e GFX GFX
    dw   `00000333                                     ;; 09:51a0 $07 $07 GFX GFX
    dw   `00003132                                     ;; 09:51a2 $0e $0b GFX GFX
    dw   `00003322                                     ;; 09:51a4 $0c $0f GFX GFX
    dw   `00003223                                     ;; 09:51a6 $09 $0f GFX GFX
    dw   `00000323                                     ;; 09:51a8 $05 $07 GFX GFX
    dw   `00000032                                     ;; 09:51aa $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:51ac $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:51ae $07 $07 GFX GFX
    dw   `33133230                                     ;; 09:51b0 $fa $de GFX GFX
    dw   `31113300                                     ;; 09:51b2 $fc $8c GFX GFX
    dw   `32213000                                     ;; 09:51b4 $98 $e8 GFX GFX
    dw   `11213000                                     ;; 09:51b6 $d8 $28 GFX GFX
    dw   `11230000                                     ;; 09:51b8 $d0 $30 GFX GFX
    dw   `33300000                                     ;; 09:51ba $e0 $e0 GFX GFX
    dw   `22300000                                     ;; 09:51bc $20 $e0 GFX GFX
    dw   `33300000                                     ;; 09:51be $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:51c0 $00 $00 GFX GFX
    dw   `00333333                                     ;; 09:51c2 $3f $3f GFX GFX
    dw   `00322222                                     ;; 09:51c4 $20 $3f GFX GFX
    dw   `00032323                                     ;; 09:51c6 $15 $1f GFX GFX
    dw   `00003111                                     ;; 09:51c8 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:51ca $0f $08 GFX GFX
    dw   `00003133                                     ;; 09:51cc $0f $0b GFX GFX
    dw   `00003131                                     ;; 09:51ce $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:51d0 $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:51d2 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:51d4 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:51d6 $08 $f8 GFX GFX
    dw   `32223000                                     ;; 09:51d8 $88 $f8 GFX GFX
    dw   `33223000                                     ;; 09:51da $c8 $f8 GFX GFX
    dw   `31333300                                     ;; 09:51dc $fc $bc GFX GFX
    dw   `11332230                                     ;; 09:51de $f2 $3e GFX GFX
    dw   `00003111                                     ;; 09:51e0 $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:51e2 $0f $0f GFX GFX
    dw   `00033132                                     ;; 09:51e4 $1e $1b GFX GFX
    dw   `00313322                                     ;; 09:51e6 $3c $2f GFX GFX
    dw   `00313322                                     ;; 09:51e8 $3c $2f GFX GFX
    dw   `00032222                                     ;; 09:51ea $10 $1f GFX GFX
    dw   `00033222                                     ;; 09:51ec $18 $1f GFX GFX
    dw   `00000323                                     ;; 09:51ee $05 $07 GFX GFX
    dw   `13333323                                     ;; 09:51f0 $fd $7f GFX GFX
    dw   `32311333                                     ;; 09:51f2 $bf $e7 GFX GFX
    dw   `22311130                                     ;; 09:51f4 $3e $e2 GFX GFX
    dw   `22312230                                     ;; 09:51f6 $32 $ee GFX GFX
    dw   `33231130                                     ;; 09:51f8 $de $f2 GFX GFX
    dw   `22331130                                     ;; 09:51fa $3e $f2 GFX GFX
    dw   `33223300                                     ;; 09:51fc $cc $fc GFX GFX
    dw   `33233000                                     ;; 09:51fe $d8 $f8 GFX GFX
    dw   `00000033                                     ;; 09:5200 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:5202 $07 $04 GFX GFX
    dw   `00003113                                     ;; 09:5204 $0f $09 GFX GFX
    dw   `00031132                                     ;; 09:5206 $1e $13 GFX GFX
    dw   `00031111                                     ;; 09:5208 $1f $10 GFX GFX
    dw   `00311333                                     ;; 09:520a $3f $27 GFX GFX
    dw   `00313232                                     ;; 09:520c $3a $2f GFX GFX
    dw   `03223313                                     ;; 09:520e $4f $7d GFX GFX
    dw   `33000000                                     ;; 09:5210 $c0 $c0 GFX GFX
    dw   `11300000                                     ;; 09:5212 $e0 $20 GFX GFX
    dw   `31130000                                     ;; 09:5214 $f0 $90 GFX GFX
    dw   `23113000                                     ;; 09:5216 $78 $c8 GFX GFX
    dw   `31113000                                     ;; 09:5218 $f8 $88 GFX GFX
    dw   `23311300                                     ;; 09:521a $7c $e4 GFX GFX
    dw   `23233300                                     ;; 09:521c $5c $fc GFX GFX
    dw   `31332230                                     ;; 09:521e $f2 $be GFX GFX
    dw   `03332311                                     ;; 09:5220 $77 $7c GFX GFX
    dw   `31123231                                     ;; 09:5222 $eb $9e GFX GFX
    dw   `31133323                                     ;; 09:5224 $fd $9f GFX GFX
    dw   `33333333                                     ;; 09:5226 $ff $ff GFX GFX
    dw   `32333133                                     ;; 09:5228 $bf $fb GFX GFX
    dw   `32333223                                     ;; 09:522a $b9 $ff GFX GFX
    dw   `03000333                                     ;; 09:522c $47 $47 GFX GFX
    dw   `33333333                                     ;; 09:522e $ff $ff GFX GFX
    dw   `11323330                                     ;; 09:5230 $ee $3e GFX GFX
    dw   `13233233                                     ;; 09:5232 $db $7f GFX GFX
    dw   `32333313                                     ;; 09:5234 $bf $fd GFX GFX
    dw   `33133230                                     ;; 09:5236 $fa $de GFX GFX
    dw   `11333230                                     ;; 09:5238 $fa $3e GFX GFX
    dw   `33233230                                     ;; 09:523a $da $fe GFX GFX
    dw   `22303230                                     ;; 09:523c $2a $ee GFX GFX
    dw   `33333333                                     ;; 09:523e $ff $ff GFX GFX
    dw   `00000033                                     ;; 09:5240 $03 $03 GFX GFX
    dw   `00000313                                     ;; 09:5242 $07 $05 GFX GFX
    dw   `00003121                                     ;; 09:5244 $0d $0a GFX GFX
    dw   `00031213                                     ;; 09:5246 $1b $15 GFX GFX
    dw   `00031211                                     ;; 09:5248 $1b $14 GFX GFX
    dw   `00031211                                     ;; 09:524a $1b $14 GFX GFX
    dw   `03311111                                     ;; 09:524c $7f $60 GFX GFX
    dw   `32223113                                     ;; 09:524e $8f $f9 GFX GFX
    dw   `33000000                                     ;; 09:5250 $c0 $c0 GFX GFX
    dw   `11300000                                     ;; 09:5252 $e0 $20 GFX GFX
    dw   `31130000                                     ;; 09:5254 $f0 $90 GFX GFX
    dw   `11113000                                     ;; 09:5256 $f8 $08 GFX GFX
    dw   `11113000                                     ;; 09:5258 $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:525a $fc $04 GFX GFX
    dw   `11111300                                     ;; 09:525c $fc $04 GFX GFX
    dw   `11132230                                     ;; 09:525e $f2 $1e GFX GFX
    dw   `03232313                                     ;; 09:5260 $57 $7d GFX GFX
    dw   `31322231                                     ;; 09:5262 $e3 $be GFX GFX
    dw   `33222223                                     ;; 09:5264 $c1 $ff GFX GFX
    dw   `32222222                                     ;; 09:5266 $80 $ff GFX GFX
    dw   `32222222                                     ;; 09:5268 $80 $ff GFX GFX
    dw   `32233223                                     ;; 09:526a $99 $ff GFX GFX
    dw   `32333322                                     ;; 09:526c $bc $ff GFX GFX
    dw   `33333333                                     ;; 09:526e $ff $ff GFX GFX
    dw   `11323330                                     ;; 09:5270 $ee $3e GFX GFX
    dw   `31223113                                     ;; 09:5272 $cf $b9 GFX GFX
    dw   `32232313                                     ;; 09:5274 $97 $fd GFX GFX
    dw   `22222233                                     ;; 09:5276 $03 $ff GFX GFX
    dw   `23322223                                     ;; 09:5278 $61 $ff GFX GFX
    dw   `32222223                                     ;; 09:527a $81 $ff GFX GFX
    dw   `22222230                                     ;; 09:527c $02 $fe GFX GFX
    dw   `33333333                                     ;; 09:527e $ff $ff GFX GFX
    dw   `00003333                                     ;; 09:5280 $0f $0f GFX GFX
    dw   `00031111                                     ;; 09:5282 $1f $10 GFX GFX
    dw   `00313111                                     ;; 09:5284 $3f $28 GFX GFX
    dw   `03132311                                     ;; 09:5286 $77 $5c GFX GFX
    dw   `03131131                                     ;; 09:5288 $7f $52 GFX GFX
    dw   `00313323                                     ;; 09:528a $3d $2f GFX GFX
    dw   `00032321                                     ;; 09:528c $15 $1e GFX GFX
    dw   `00032113                                     ;; 09:528e $17 $19 GFX GFX
    dw   `30000000                                     ;; 09:5290 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:5292 $c0 $40 GFX GFX
    dw   `11300000                                     ;; 09:5294 $e0 $20 GFX GFX
    dw   `11130000                                     ;; 09:5296 $f0 $10 GFX GFX
    dw   `11130000                                     ;; 09:5298 $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:529a $f8 $08 GFX GFX
    dw   `31113000                                     ;; 09:529c $f8 $88 GFX GFX
    dw   `33313000                                     ;; 09:529e $f8 $e8 GFX GFX
    dw   `00311113                                     ;; 09:52a0 $3f $21 GFX GFX
    dw   `00311132                                     ;; 09:52a2 $3e $23 GFX GFX
    dw   `00313331                                     ;; 09:52a4 $3f $2e GFX GFX
    dw   `00033231                                     ;; 09:52a6 $1b $1e GFX GFX
    dw   `00000313                                     ;; 09:52a8 $07 $05 GFX GFX
    dw   `00000322                                     ;; 09:52aa $04 $07 GFX GFX
    dw   `00003222                                     ;; 09:52ac $08 $0f GFX GFX
    dw   `00333333                                     ;; 09:52ae $3f $3f GFX GFX
    dw   `31132300                                     ;; 09:52b0 $f4 $9c GFX GFX
    dw   `31132300                                     ;; 09:52b2 $f4 $9c GFX GFX
    dw   `12132300                                     ;; 09:52b4 $b4 $5c GFX GFX
    dw   `12332300                                     ;; 09:52b6 $b4 $7c GFX GFX
    dw   `33032300                                     ;; 09:52b8 $d4 $dc GFX GFX
    dw   `23032230                                     ;; 09:52ba $52 $de GFX GFX
    dw   `23032223                                     ;; 09:52bc $51 $df GFX GFX
    dw   `33333333                                     ;; 09:52be $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:52c0 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:52c2 $0f $0f GFX GFX
    dw   `00331111                                     ;; 09:52c4 $3f $30 GFX GFX
    dw   `03113311                                     ;; 09:52c6 $7f $4c GFX GFX
    dw   `31332331                                     ;; 09:52c8 $f7 $be GFX GFX
    dw   `03131131                                     ;; 09:52ca $7f $52 GFX GFX
    dw   `00313323                                     ;; 09:52cc $3d $2f GFX GFX
    dw   `00032321                                     ;; 09:52ce $15 $1e GFX GFX
    dw   `00000000                                     ;; 09:52d0 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:52d2 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:52d4 $c0 $40 GFX GFX
    dw   `11300000                                     ;; 09:52d6 $e0 $20 GFX GFX
    dw   `11133000                                     ;; 09:52d8 $f8 $18 GFX GFX
    dw   `11111300                                     ;; 09:52da $fc $04 GFX GFX
    dw   `31113130                                     ;; 09:52dc $fe $8a GFX GFX
    dw   `32331300                                     ;; 09:52de $bc $f4 GFX GFX
    dw   `00032113                                     ;; 09:52e0 $17 $19 GFX GFX
    dw   `00311113                                     ;; 09:52e2 $3f $21 GFX GFX
    dw   `03111132                                     ;; 09:52e4 $7e $43 GFX GFX
    dw   `03133322                                     ;; 09:52e6 $7c $5f GFX GFX
    dw   `00333212                                     ;; 09:52e8 $3a $3d GFX GFX
    dw   `00322223                                     ;; 09:52ea $21 $3f GFX GFX
    dw   `00032233                                     ;; 09:52ec $13 $1f GFX GFX
    dw   `03333333                                     ;; 09:52ee $7f $7f GFX GFX
    dw   `23113230                                     ;; 09:52f0 $7a $ce GFX GFX
    dw   `31111330                                     ;; 09:52f2 $fe $86 GFX GFX
    dw   `23221323                                     ;; 09:52f4 $4d $f7 GFX GFX
    dw   `31123223                                     ;; 09:52f6 $e9 $9f GFX GFX
    dw   `31133223                                     ;; 09:52f8 $f9 $9f GFX GFX
    dw   `33323230                                     ;; 09:52fa $ea $fe GFX GFX
    dw   `32233300                                     ;; 09:52fc $9c $fc GFX GFX
    dw   `33333333                                     ;; 09:52fe $ff $ff GFX GFX
    dw   `00000333                                     ;; 09:5300 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:5302 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:5304 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:5306 $0f $0f GFX GFX
    dw   `00033331                                     ;; 09:5308 $1f $1e GFX GFX
    dw   `03033331                                     ;; 09:530a $5f $5e GFX GFX
    dw   `31333131                                     ;; 09:530c $ff $ba GFX GFX
    dw   `31112311                                     ;; 09:530e $f7 $8c GFX GFX
    dw   `33300000                                     ;; 09:5310 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5312 $f0 $f0 GFX GFX
    dw   `31330000                                     ;; 09:5314 $f0 $b0 GFX GFX
    dw   `22330000                                     ;; 09:5316 $30 $f0 GFX GFX
    dw   `11330000                                     ;; 09:5318 $f0 $30 GFX GFX
    dw   `33330030                                     ;; 09:531a $f2 $f2 GFX GFX
    dw   `13133313                                     ;; 09:531c $ff $5d GFX GFX
    dw   `11321113                                     ;; 09:531e $ef $31 GFX GFX
    dw   `03123233                                     ;; 09:5320 $6b $5f GFX GFX
    dw   `32332122                                     ;; 09:5322 $b4 $fb GFX GFX
    dw   `31233223                                     ;; 09:5324 $d9 $bf GFX GFX
    dw   `31333331                                     ;; 09:5326 $ff $be GFX GFX
    dw   `33333222                                     ;; 09:5328 $f8 $ff GFX GFX
    dw   `32333233                                     ;; 09:532a $bb $ff GFX GFX
    dw   `32303322                                     ;; 09:532c $ac $ef GFX GFX
    dw   `03003322                                     ;; 09:532e $4c $4f GFX GFX
    dw   `33232333                                     ;; 09:5330 $d7 $ff GFX GFX
    dw   `22123113                                     ;; 09:5332 $2f $d9 GFX GFX
    dw   `32233113                                     ;; 09:5334 $9f $f9 GFX GFX
    dw   `13333333                                     ;; 09:5336 $ff $7f GFX GFX
    dw   `32233333                                     ;; 09:5338 $9f $ff GFX GFX
    dw   `33233323                                     ;; 09:533a $dd $ff GFX GFX
    dw   `32330323                                     ;; 09:533c $b5 $f7 GFX GFX
    dw   `33333030                                     ;; 09:533e $fa $fa GFX GFX
    dw   `00000033                                     ;; 09:5340 $03 $03 GFX GFX
    dw   `00000332                                     ;; 09:5342 $06 $07 GFX GFX
    dw   `00003323                                     ;; 09:5344 $0d $0f GFX GFX
    dw   `00003333                                     ;; 09:5346 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:5348 $0f $0f GFX GFX
    dw   `03003333                                     ;; 09:534a $4f $4f GFX GFX
    dw   `31333333                                     ;; 09:534c $ff $bf GFX GFX
    dw   `31113333                                     ;; 09:534e $ff $8f GFX GFX
    dw   `33000000                                     ;; 09:5350 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:5352 $60 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5354 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:5356 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:5358 $f0 $f0 GFX GFX
    dw   `33330030                                     ;; 09:535a $f2 $f2 GFX GFX
    dw   `33333313                                     ;; 09:535c $ff $fd GFX GFX
    dw   `33331113                                     ;; 09:535e $ff $f1 GFX GFX
    dw   `03223333                                     ;; 09:5360 $4f $7f GFX GFX
    dw   `03332333                                     ;; 09:5362 $77 $7f GFX GFX
    dw   `03222232                                     ;; 09:5364 $42 $7f GFX GFX
    dw   `32222322                                     ;; 09:5366 $84 $ff GFX GFX
    dw   `32222222                                     ;; 09:5368 $80 $ff GFX GFX
    dw   `32233222                                     ;; 09:536a $98 $ff GFX GFX
    dw   `32333332                                     ;; 09:536c $be $ff GFX GFX
    dw   `33333333                                     ;; 09:536e $ff $ff GFX GFX
    dw   `33333230                                     ;; 09:5370 $fa $fe GFX GFX
    dw   `32333330                                     ;; 09:5372 $be $fe GFX GFX
    dw   `33233223                                     ;; 09:5374 $d9 $ff GFX GFX
    dw   `23232223                                     ;; 09:5376 $51 $ff GFX GFX
    dw   `23222223                                     ;; 09:5378 $41 $ff GFX GFX
    dw   `32222223                                     ;; 09:537a $81 $ff GFX GFX
    dw   `22222330                                     ;; 09:537c $06 $fe GFX GFX
    dw   `33333333                                     ;; 09:537e $ff $ff GFX GFX
    dw   `00033333                                     ;; 09:5380 $1f $1f GFX GFX
    dw   `03333333                                     ;; 09:5382 $7f $7f GFX GFX
    dw   `03333133                                     ;; 09:5384 $7f $7b GFX GFX
    dw   `33332233                                     ;; 09:5386 $f3 $ff GFX GFX
    dw   `33331131                                     ;; 09:5388 $ff $f2 GFX GFX
    dw   `30313331                                     ;; 09:538a $bf $ae GFX GFX
    dw   `30313113                                     ;; 09:538c $bf $a9 GFX GFX
    dw   `00311132                                     ;; 09:538e $3e $23 GFX GFX
    dw   `00000000                                     ;; 09:5390 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:5392 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:5394 $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:5396 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:5398 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:539a $f0 $f0 GFX GFX
    dw   `31333000                                     ;; 09:539c $f8 $b8 GFX GFX
    dw   `11133000                                     ;; 09:539e $f8 $18 GFX GFX
    dw   `00033321                                     ;; 09:53a0 $1d $1e GFX GFX
    dw   `00332233                                     ;; 09:53a2 $33 $3f GFX GFX
    dw   `00323323                                     ;; 09:53a4 $2d $3f GFX GFX
    dw   `00331122                                     ;; 09:53a6 $3c $33 GFX GFX
    dw   `00031133                                     ;; 09:53a8 $1f $13 GFX GFX
    dw   `00003332                                     ;; 09:53aa $0e $0f GFX GFX
    dw   `00003222                                     ;; 09:53ac $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:53ae $10 $1f GFX GFX
    dw   `33333300                                     ;; 09:53b0 $fc $fc GFX GFX
    dw   `23300300                                     ;; 09:53b2 $64 $e4 GFX GFX
    dw   `23230000                                     ;; 09:53b4 $50 $f0 GFX GFX
    dw   `33230000                                     ;; 09:53b6 $d0 $f0 GFX GFX
    dw   `23323000                                     ;; 09:53b8 $68 $f8 GFX GFX
    dw   `32323000                                     ;; 09:53ba $a8 $f8 GFX GFX
    dw   `33332300                                     ;; 09:53bc $f4 $fc GFX GFX
    dw   `33332300                                     ;; 09:53be $f4 $fc GFX GFX
    dw   `00000000                                     ;; 09:53c0 $00 $00 GFX GFX
    dw   `00033333                                     ;; 09:53c2 $1f $1f GFX GFX
    dw   `03333333                                     ;; 09:53c4 $7f $7f GFX GFX
    dw   `03333133                                     ;; 09:53c6 $7f $7b GFX GFX
    dw   `33332233                                     ;; 09:53c8 $f3 $ff GFX GFX
    dw   `33331131                                     ;; 09:53ca $ff $f2 GFX GFX
    dw   `30313331                                     ;; 09:53cc $bf $ae GFX GFX
    dw   `30313113                                     ;; 09:53ce $bf $a9 GFX GFX
    dw   `00000000                                     ;; 09:53d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:53d2 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:53d4 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:53d6 $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:53d8 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:53da $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:53dc $f8 $f8 GFX GFX
    dw   `31333300                                     ;; 09:53de $fc $bc GFX GFX
    dw   `00311132                                     ;; 09:53e0 $3e $23 GFX GFX
    dw   `00033321                                     ;; 09:53e2 $1d $1e GFX GFX
    dw   `00322233                                     ;; 09:53e4 $23 $3f GFX GFX
    dw   `00313232                                     ;; 09:53e6 $3a $2f GFX GFX
    dw   `00032333                                     ;; 09:53e8 $17 $1f GFX GFX
    dw   `03323223                                     ;; 09:53ea $69 $7f GFX GFX
    dw   `03222323                                     ;; 09:53ec $45 $7f GFX GFX
    dw   `00322333                                     ;; 09:53ee $27 $3f GFX GFX
    dw   `11133330                                     ;; 09:53f0 $fe $1e GFX GFX
    dw   `33330030                                     ;; 09:53f2 $f2 $f2 GFX GFX
    dw   `23230000                                     ;; 09:53f4 $50 $f0 GFX GFX
    dw   `22323000                                     ;; 09:53f6 $28 $f8 GFX GFX
    dw   `11322300                                     ;; 09:53f8 $e4 $3c GFX GFX
    dw   `11332230                                     ;; 09:53fa $f2 $3e GFX GFX
    dw   `33232233                                     ;; 09:53fc $d3 $ff GFX GFX
    dw   `22333223                                     ;; 09:53fe $39 $ff GFX GFX
    dw   `00030033                                     ;; 09:5400 $13 $13 GFX GFX
    dw   `00313333                                     ;; 09:5402 $3f $2f GFX GFX
    dw   `03133333                                     ;; 09:5404 $7f $5f GFX GFX
    dw   `03111333                                     ;; 09:5406 $7f $47 GFX GFX
    dw   `00313111                                     ;; 09:5408 $3f $28 GFX GFX
    dw   `00031333                                     ;; 09:540a $1f $17 GFX GFX
    dw   `00313313                                     ;; 09:540c $3f $2d GFX GFX
    dw   `00033313                                     ;; 09:540e $1f $1d GFX GFX
    dw   `13003000                                     ;; 09:5410 $c8 $48 GFX GFX
    dw   `13331300                                     ;; 09:5412 $fc $74 GFX GFX
    dw   `13333130                                     ;; 09:5414 $fe $7a GFX GFX
    dw   `13331130                                     ;; 09:5416 $fe $72 GFX GFX
    dw   `11131300                                     ;; 09:5418 $fc $14 GFX GFX
    dw   `33313000                                     ;; 09:541a $f8 $e8 GFX GFX
    dw   `31331300                                     ;; 09:541c $fc $b4 GFX GFX
    dw   `31333000                                     ;; 09:541e $f8 $b8 GFX GFX
    dw   `03123133                                     ;; 09:5420 $6f $5b GFX GFX
    dw   `31122311                                     ;; 09:5422 $e7 $9c GFX GFX
    dw   `31132331                                     ;; 09:5424 $f7 $9e GFX GFX
    dw   `31332323                                     ;; 09:5426 $f5 $bf GFX GFX
    dw   `03033133                                     ;; 09:5428 $5f $5b GFX GFX
    dw   `00032222                                     ;; 09:542a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:542c $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:542e $0f $0f GFX GFX
    dw   `33132300                                     ;; 09:5430 $f4 $dc GFX GFX
    dw   `11323300                                     ;; 09:5432 $ec $3c GFX GFX
    dw   `13231130                                     ;; 09:5434 $de $72 GFX GFX
    dw   `32231130                                     ;; 09:5436 $9e $f2 GFX GFX
    dw   `33333300                                     ;; 09:5438 $fc $fc GFX GFX
    dw   `32223000                                     ;; 09:543a $88 $f8 GFX GFX
    dw   `33330000                                     ;; 09:543c $f0 $f0 GFX GFX
    dw   `33333300                                     ;; 09:543e $fc $fc GFX GFX
    dw   `00030033                                     ;; 09:5440 $13 $13 GFX GFX
    dw   `00313333                                     ;; 09:5442 $3f $2f GFX GFX
    dw   `03133333                                     ;; 09:5444 $7f $5f GFX GFX
    dw   `03113333                                     ;; 09:5446 $7f $4f GFX GFX
    dw   `00313333                                     ;; 09:5448 $3f $2f GFX GFX
    dw   `00033333                                     ;; 09:544a $1f $1f GFX GFX
    dw   `00311333                                     ;; 09:544c $3f $27 GFX GFX
    dw   `00031113                                     ;; 09:544e $1f $11 GFX GFX
    dw   `13003000                                     ;; 09:5450 $c8 $48 GFX GFX
    dw   `13331300                                     ;; 09:5452 $fc $74 GFX GFX
    dw   `13333130                                     ;; 09:5454 $fe $7a GFX GFX
    dw   `13331130                                     ;; 09:5456 $fe $72 GFX GFX
    dw   `13331300                                     ;; 09:5458 $fc $74 GFX GFX
    dw   `13333000                                     ;; 09:545a $f8 $78 GFX GFX
    dw   `13311300                                     ;; 09:545c $fc $64 GFX GFX
    dw   `11113330                                     ;; 09:545e $fe $0e GFX GFX
    dw   `00313311                                     ;; 09:5460 $3f $2c GFX GFX
    dw   `03112333                                     ;; 09:5462 $77 $4f GFX GFX
    dw   `03132322                                     ;; 09:5464 $74 $5f GFX GFX
    dw   `00332322                                     ;; 09:5466 $34 $3f GFX GFX
    dw   `00033133                                     ;; 09:5468 $1f $1b GFX GFX
    dw   `00032222                                     ;; 09:546a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:546c $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:546e $0f $0f GFX GFX
    dw   `11332130                                     ;; 09:5470 $f6 $3a GFX GFX
    dw   `33321113                                     ;; 09:5472 $ef $f1 GFX GFX
    dw   `22321113                                     ;; 09:5474 $2f $f1 GFX GFX
    dw   `22323113                                     ;; 09:5476 $2f $f9 GFX GFX
    dw   `33333330                                     ;; 09:5478 $fe $fe GFX GFX
    dw   `32223000                                     ;; 09:547a $88 $f8 GFX GFX
    dw   `33333000                                     ;; 09:547c $f8 $f8 GFX GFX
    dw   `33333300                                     ;; 09:547e $fc $fc GFX GFX
    dw   `00000333                                     ;; 09:5480 $07 $07 GFX GFX
    dw   `00003133                                     ;; 09:5482 $0f $0b GFX GFX
    dw   `00031333                                     ;; 09:5484 $1f $17 GFX GFX
    dw   `00031333                                     ;; 09:5486 $1f $17 GFX GFX
    dw   `00311113                                     ;; 09:5488 $3f $21 GFX GFX
    dw   `00033331                                     ;; 09:548a $1f $1e GFX GFX
    dw   `00003133                                     ;; 09:548c $0f $0b GFX GFX
    dw   `00003133                                     ;; 09:548e $0f $0b GFX GFX
    dw   `33000000                                     ;; 09:5490 $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:5492 $f0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:5494 $f8 $f8 GFX GFX
    dw   `33313000                                     ;; 09:5496 $f8 $e8 GFX GFX
    dw   `31113000                                     ;; 09:5498 $f8 $88 GFX GFX
    dw   `31130000                                     ;; 09:549a $f0 $90 GFX GFX
    dw   `13323000                                     ;; 09:549c $e8 $78 GFX GFX
    dw   `31111300                                     ;; 09:549e $fc $84 GFX GFX
    dw   `00003331                                     ;; 09:54a0 $0f $0e GFX GFX
    dw   `00031113                                     ;; 09:54a2 $1f $11 GFX GFX
    dw   `00311133                                     ;; 09:54a4 $3f $23 GFX GFX
    dw   `00313331                                     ;; 09:54a6 $3f $2e GFX GFX
    dw   `00033231                                     ;; 09:54a8 $1b $1e GFX GFX
    dw   `00000333                                     ;; 09:54aa $07 $07 GFX GFX
    dw   `00000322                                     ;; 09:54ac $04 $07 GFX GFX
    dw   `00003333                                     ;; 09:54ae $0f $0f GFX GFX
    dw   `32233000                                     ;; 09:54b0 $98 $f8 GFX GFX
    dw   `23323000                                     ;; 09:54b2 $68 $f8 GFX GFX
    dw   `31130000                                     ;; 09:54b4 $f0 $90 GFX GFX
    dw   `13130000                                     ;; 09:54b6 $f0 $50 GFX GFX
    dw   `13300000                                     ;; 09:54b8 $e0 $60 GFX GFX
    dw   `32300000                                     ;; 09:54ba $a0 $e0 GFX GFX
    dw   `22300000                                     ;; 09:54bc $20 $e0 GFX GFX
    dw   `33330000                                     ;; 09:54be $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:54c0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:54c2 $07 $07 GFX GFX
    dw   `00003133                                     ;; 09:54c4 $0f $0b GFX GFX
    dw   `00031333                                     ;; 09:54c6 $1f $17 GFX GFX
    dw   `00031333                                     ;; 09:54c8 $1f $17 GFX GFX
    dw   `00311113                                     ;; 09:54ca $3f $21 GFX GFX
    dw   `00033331                                     ;; 09:54cc $1f $1e GFX GFX
    dw   `00003133                                     ;; 09:54ce $0f $0b GFX GFX
    dw   `00000000                                     ;; 09:54d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:54d2 $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:54d4 $f0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:54d6 $f8 $f8 GFX GFX
    dw   `33313000                                     ;; 09:54d8 $f8 $e8 GFX GFX
    dw   `31113000                                     ;; 09:54da $f8 $88 GFX GFX
    dw   `31130000                                     ;; 09:54dc $f0 $90 GFX GFX
    dw   `13323000                                     ;; 09:54de $e8 $78 GFX GFX
    dw   `00003133                                     ;; 09:54e0 $0f $0b GFX GFX
    dw   `00003331                                     ;; 09:54e2 $0f $0e GFX GFX
    dw   `00031113                                     ;; 09:54e4 $1f $11 GFX GFX
    dw   `00311132                                     ;; 09:54e6 $3e $23 GFX GFX
    dw   `00313322                                     ;; 09:54e8 $3c $2f GFX GFX
    dw   `00033132                                     ;; 09:54ea $1e $1b GFX GFX
    dw   `00322313                                     ;; 09:54ec $27 $3d GFX GFX
    dw   `00032233                                     ;; 09:54ee $13 $1f GFX GFX
    dw   `31111300                                     ;; 09:54f0 $fc $84 GFX GFX
    dw   `32233000                                     ;; 09:54f2 $98 $f8 GFX GFX
    dw   `23113000                                     ;; 09:54f4 $78 $c8 GFX GFX
    dw   `23131300                                     ;; 09:54f6 $7c $d4 GFX GFX
    dw   `22311300                                     ;; 09:54f8 $3c $e4 GFX GFX
    dw   `23133000                                     ;; 09:54fa $78 $d8 GFX GFX
    dw   `31322300                                     ;; 09:54fc $e4 $bc GFX GFX
    dw   `33223000                                     ;; 09:54fe $c8 $f8 GFX GFX
    dw   `00000033                                     ;; 09:5500 $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:5502 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:5504 $1f $1f GFX GFX
    dw   `00323331                                     ;; 09:5506 $2f $3e GFX GFX
    dw   `03332231                                     ;; 09:5508 $73 $7e GFX GFX
    dw   `33333312                                     ;; 09:550a $fe $fd GFX GFX
    dw   `03333131                                     ;; 09:550c $7f $7a GFX GFX
    dw   `00033131                                     ;; 09:550e $1f $1a GFX GFX
    dw   `33000000                                     ;; 09:5510 $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:5512 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:5514 $f0 $f0 GFX GFX
    dw   `33323000                                     ;; 09:5516 $e8 $f8 GFX GFX
    dw   `13233000                                     ;; 09:5518 $d8 $78 GFX GFX
    dw   `21333000                                     ;; 09:551a $78 $b8 GFX GFX
    dw   `13130000                                     ;; 09:551c $f0 $50 GFX GFX
    dw   `13133000                                     ;; 09:551e $f8 $58 GFX GFX
    dw   `00322311                                     ;; 09:5520 $27 $3c GFX GFX
    dw   `03133133                                     ;; 09:5522 $7f $5b GFX GFX
    dw   `32113211                                     ;; 09:5524 $bb $cc GFX GFX
    dw   `31332323                                     ;; 09:5526 $f5 $bf GFX GFX
    dw   `03303133                                     ;; 09:5528 $6f $6b GFX GFX
    dw   `00003222                                     ;; 09:552a $08 $0f GFX GFX
    dw   `00000311                                     ;; 09:552c $07 $04 GFX GFX
    dw   `00003333                                     ;; 09:552e $0f $0f GFX GFX
    dw   `11322300                                     ;; 09:5530 $e4 $3c GFX GFX
    dw   `33133300                                     ;; 09:5532 $fc $dc GFX GFX
    dw   `11311300                                     ;; 09:5534 $fc $24 GFX GFX
    dw   `32311300                                     ;; 09:5536 $bc $e4 GFX GFX
    dw   `22233000                                     ;; 09:5538 $18 $f8 GFX GFX
    dw   `31330000                                     ;; 09:553a $f0 $b0 GFX GFX
    dw   `33300000                                     ;; 09:553c $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:553e $f0 $f0 GFX GFX
    dw   `00000033                                     ;; 09:5540 $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:5542 $0f $0f GFX GFX
    dw   `00003233                                     ;; 09:5544 $0b $0f GFX GFX
    dw   `00033232                                     ;; 09:5546 $1a $1f GFX GFX
    dw   `00033333                                     ;; 09:5548 $1f $1f GFX GFX
    dw   `00033333                                     ;; 09:554a $1f $1f GFX GFX
    dw   `00003333                                     ;; 09:554c $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:554e $1f $1f GFX GFX
    dw   `33000000                                     ;; 09:5550 $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:5552 $f0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:5554 $f8 $f8 GFX GFX
    dw   `33333330                                     ;; 09:5556 $fe $fe GFX GFX
    dw   `33333300                                     ;; 09:5558 $fc $fc GFX GFX
    dw   `33333300                                     ;; 09:555a $fc $fc GFX GFX
    dw   `33333000                                     ;; 09:555c $f8 $f8 GFX GFX
    dw   `33333000                                     ;; 09:555e $f8 $f8 GFX GFX
    dw   `00322313                                     ;; 09:5560 $27 $3d GFX GFX
    dw   `00333221                                     ;; 09:5562 $39 $3e GFX GFX
    dw   `03113222                                     ;; 09:5564 $78 $4f GFX GFX
    dw   `31213323                                     ;; 09:5566 $dd $af GFX GFX
    dw   `31133133                                     ;; 09:5568 $ff $9b GFX GFX
    dw   `03303222                                     ;; 09:556a $68 $6f GFX GFX
    dw   `00000311                                     ;; 09:556c $07 $04 GFX GFX
    dw   `00003333                                     ;; 09:556e $0f $0f GFX GFX
    dw   `31322300                                     ;; 09:5570 $e4 $bc GFX GFX
    dw   `12233000                                     ;; 09:5572 $98 $78 GFX GFX
    dw   `22231300                                     ;; 09:5574 $1c $f4 GFX GFX
    dw   `32311300                                     ;; 09:5576 $bc $e4 GFX GFX
    dw   `22233000                                     ;; 09:5578 $18 $f8 GFX GFX
    dw   `31330000                                     ;; 09:557a $f0 $b0 GFX GFX
    dw   `33300000                                     ;; 09:557c $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:557e $f0 $f0 GFX GFX
    dw   `00003333                                     ;; 09:5580 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:5582 $1f $1f GFX GFX
    dw   `00331333                                     ;; 09:5584 $3f $37 GFX GFX
    dw   `00331322                                     ;; 09:5586 $3c $37 GFX GFX
    dw   `00332133                                     ;; 09:5588 $37 $3b GFX GFX
    dw   `00031313                                     ;; 09:558a $1f $15 GFX GFX
    dw   `00031311                                     ;; 09:558c $1f $14 GFX GFX
    dw   `00031111                                     ;; 09:558e $1f $10 GFX GFX
    dw   `33000000                                     ;; 09:5590 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:5592 $e0 $e0 GFX GFX
    dw   `23300000                                     ;; 09:5594 $60 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5596 $f0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:5598 $f8 $f8 GFX GFX
    dw   `13333300                                     ;; 09:559a $fc $7c GFX GFX
    dw   `13333000                                     ;; 09:559c $f8 $78 GFX GFX
    dw   `33330000                                     ;; 09:559e $f0 $f0 GFX GFX
    dw   `00003333                                     ;; 09:55a0 $0f $0f GFX GFX
    dw   `00031323                                     ;; 09:55a2 $1d $17 GFX GFX
    dw   `00003231                                     ;; 09:55a4 $0b $0e GFX GFX
    dw   `00003231                                     ;; 09:55a6 $0b $0e GFX GFX
    dw   `00032313                                     ;; 09:55a8 $17 $1d GFX GFX
    dw   `00033322                                     ;; 09:55aa $1c $1f GFX GFX
    dw   `00000311                                     ;; 09:55ac $07 $04 GFX GFX
    dw   `00000333                                     ;; 09:55ae $07 $07 GFX GFX
    dw   `22230000                                     ;; 09:55b0 $10 $f0 GFX GFX
    dw   `33300000                                     ;; 09:55b2 $e0 $e0 GFX GFX
    dw   `21300000                                     ;; 09:55b4 $60 $a0 GFX GFX
    dw   `13300000                                     ;; 09:55b6 $e0 $60 GFX GFX
    dw   `33230000                                     ;; 09:55b8 $d0 $f0 GFX GFX
    dw   `23230000                                     ;; 09:55ba $50 $f0 GFX GFX
    dw   `33323000                                     ;; 09:55bc $e8 $f8 GFX GFX
    dw   `33333000                                     ;; 09:55be $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:55c0 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:55c2 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:55c4 $1f $1f GFX GFX
    dw   `00331333                                     ;; 09:55c6 $3f $37 GFX GFX
    dw   `00331322                                     ;; 09:55c8 $3c $37 GFX GFX
    dw   `00332133                                     ;; 09:55ca $37 $3b GFX GFX
    dw   `00031313                                     ;; 09:55cc $1f $15 GFX GFX
    dw   `00031311                                     ;; 09:55ce $1f $14 GFX GFX
    dw   `00000000                                     ;; 09:55d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:55d2 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:55d4 $e0 $e0 GFX GFX
    dw   `23333000                                     ;; 09:55d6 $78 $f8 GFX GFX
    dw   `33333330                                     ;; 09:55d8 $fe $fe GFX GFX
    dw   `33333300                                     ;; 09:55da $fc $fc GFX GFX
    dw   `13333300                                     ;; 09:55dc $fc $7c GFX GFX
    dw   `13333000                                     ;; 09:55de $f8 $78 GFX GFX
    dw   `00031111                                     ;; 09:55e0 $1f $10 GFX GFX
    dw   `00003333                                     ;; 09:55e2 $0f $0f GFX GFX
    dw   `00031323                                     ;; 09:55e4 $1d $17 GFX GFX
    dw   `00003222                                     ;; 09:55e6 $08 $0f GFX GFX
    dw   `00032332                                     ;; 09:55e8 $16 $1f GFX GFX
    dw   `00312113                                     ;; 09:55ea $37 $29 GFX GFX
    dw   `00031233                                     ;; 09:55ec $1b $17 GFX GFX
    dw   `00333333                                     ;; 09:55ee $3f $3f GFX GFX
    dw   `33330000                                     ;; 09:55f0 $f0 $f0 GFX GFX
    dw   `22230000                                     ;; 09:55f2 $10 $f0 GFX GFX
    dw   `33330000                                     ;; 09:55f4 $f0 $f0 GFX GFX
    dw   `32113000                                     ;; 09:55f6 $b8 $c8 GFX GFX
    dw   `33113000                                     ;; 09:55f8 $f8 $c8 GFX GFX
    dw   `11332300                                     ;; 09:55fa $f4 $3c GFX GFX
    dw   `32133230                                     ;; 09:55fc $ba $de GFX GFX
    dw   `33333330                                     ;; 09:55fe $fe $fe GFX GFX
    dw   `00000033                                     ;; 09:5600 $03 $03 GFX GFX
    dw   `00000333                                     ;; 09:5602 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:5604 $0f $0f GFX GFX
    dw   `00003233                                     ;; 09:5606 $0b $0f GFX GFX
    dw   `00033322                                     ;; 09:5608 $1c $1f GFX GFX
    dw   `00333331                                     ;; 09:560a $3f $3e GFX GFX
    dw   `00333131                                     ;; 09:560c $3f $3a GFX GFX
    dw   `00333131                                     ;; 09:560e $3f $3a GFX GFX
    dw   `33000000                                     ;; 09:5610 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:5612 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5614 $f0 $f0 GFX GFX
    dw   `33233000                                     ;; 09:5616 $d8 $f8 GFX GFX
    dw   `23333000                                     ;; 09:5618 $78 $f8 GFX GFX
    dw   `33333300                                     ;; 09:561a $fc $fc GFX GFX
    dw   `13133330                                     ;; 09:561c $fe $5e GFX GFX
    dw   `13133030                                     ;; 09:561e $fa $5a GFX GFX
    dw   `00322311                                     ;; 09:5620 $27 $3c GFX GFX
    dw   `00333233                                     ;; 09:5622 $3b $3f GFX GFX
    dw   `03113322                                     ;; 09:5624 $7c $4f GFX GFX
    dw   `03113032                                     ;; 09:5626 $7a $4b GFX GFX
    dw   `00330333                                     ;; 09:5628 $37 $37 GFX GFX
    dw   `00000323                                     ;; 09:562a $05 $07 GFX GFX
    dw   `00000033                                     ;; 09:562c $03 $03 GFX GFX
    dw   `00033333                                     ;; 09:562e $1f $1f GFX GFX
    dw   `11322300                                     ;; 09:5630 $e4 $3c GFX GFX
    dw   `33223130                                     ;; 09:5632 $ce $fa GFX GFX
    dw   `22331213                                     ;; 09:5634 $3b $f5 GFX GFX
    dw   `33303313                                     ;; 09:5636 $ef $ed GFX GFX
    dw   `11130030                                     ;; 09:5638 $f2 $12 GFX GFX
    dw   `12230000                                     ;; 09:563a $90 $70 GFX GFX
    dw   `22300000                                     ;; 09:563c $20 $e0 GFX GFX
    dw   `33333000                                     ;; 09:563e $f8 $f8 GFX GFX
    dw   `00000033                                     ;; 09:5640 $03 $03 GFX GFX
    dw   `00000333                                     ;; 09:5642 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:5644 $0f $0f GFX GFX
    dw   `00003233                                     ;; 09:5646 $0b $0f GFX GFX
    dw   `00003322                                     ;; 09:5648 $0c $0f GFX GFX
    dw   `00033333                                     ;; 09:564a $1f $1f GFX GFX
    dw   `00333333                                     ;; 09:564c $3f $3f GFX GFX
    dw   `00323333                                     ;; 09:564e $2f $3f GFX GFX
    dw   `33000000                                     ;; 09:5650 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:5652 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5654 $f0 $f0 GFX GFX
    dw   `33230000                                     ;; 09:5656 $d0 $f0 GFX GFX
    dw   `32330000                                     ;; 09:5658 $b0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:565a $f8 $f8 GFX GFX
    dw   `33323300                                     ;; 09:565c $ec $fc GFX GFX
    dw   `33232300                                     ;; 09:565e $d4 $fc GFX GFX
    dw   `00332323                                     ;; 09:5660 $35 $3f GFX GFX
    dw   `00313223                                     ;; 09:5662 $39 $2f GFX GFX
    dw   `00033322                                     ;; 09:5664 $1c $1f GFX GFX
    dw   `00003233                                     ;; 09:5666 $0b $0f GFX GFX
    dw   `00003112                                     ;; 09:5668 $0e $09 GFX GFX
    dw   `00003211                                     ;; 09:566a $0b $0c GFX GFX
    dw   `00000322                                     ;; 09:566c $04 $07 GFX GFX
    dw   `00033333                                     ;; 09:566e $1f $1f GFX GFX
    dw   `23221300                                     ;; 09:5670 $4c $f4 GFX GFX
    dw   `22231130                                     ;; 09:5672 $1e $f2 GFX GFX
    dw   `23303130                                     ;; 09:5674 $6e $ea GFX GFX
    dw   `32300300                                     ;; 09:5676 $a4 $e4 GFX GFX
    dw   `23300000                                     ;; 09:5678 $60 $e0 GFX GFX
    dw   `32300000                                     ;; 09:567a $a0 $e0 GFX GFX
    dw   `33300000                                     ;; 09:567c $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:567e $f8 $f8 GFX GFX
    dw   `00000333                                     ;; 09:5680 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:5682 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:5684 $1f $1f GFX GFX
    dw   `00333322                                     ;; 09:5686 $3c $3f GFX GFX
    dw   `00333133                                     ;; 09:5688 $3f $3b GFX GFX
    dw   `00033333                                     ;; 09:568a $1f $1f GFX GFX
    dw   `00003131                                     ;; 09:568c $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:568e $0f $0a GFX GFX
    dw   `33000000                                     ;; 09:5690 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:5692 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5694 $f0 $f0 GFX GFX
    dw   `32330000                                     ;; 09:5696 $b0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:5698 $f0 $f0 GFX GFX
    dw   `13333000                                     ;; 09:569a $f8 $78 GFX GFX
    dw   `13333300                                     ;; 09:569c $fc $7c GFX GFX
    dw   `33233300                                     ;; 09:569e $dc $fc GFX GFX
    dw   `00003113                                     ;; 09:56a0 $0f $09 GFX GFX
    dw   `00000332                                     ;; 09:56a2 $06 $07 GFX GFX
    dw   `00000322                                     ;; 09:56a4 $04 $07 GFX GFX
    dw   `00000323                                     ;; 09:56a6 $05 $07 GFX GFX
    dw   `00000031                                     ;; 09:56a8 $03 $02 GFX GFX
    dw   `00000032                                     ;; 09:56aa $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:56ac $04 $07 GFX GFX
    dw   `00333333                                     ;; 09:56ae $3f $3f GFX GFX
    dw   `22223300                                     ;; 09:56b0 $0c $fc GFX GFX
    dw   `23332300                                     ;; 09:56b2 $74 $fc GFX GFX
    dw   `33113000                                     ;; 09:56b4 $f8 $c8 GFX GFX
    dw   `31313000                                     ;; 09:56b6 $f8 $a8 GFX GFX
    dw   `31130000                                     ;; 09:56b8 $f0 $90 GFX GFX
    dw   `23300000                                     ;; 09:56ba $60 $e0 GFX GFX
    dw   `22300000                                     ;; 09:56bc $20 $e0 GFX GFX
    dw   `33330000                                     ;; 09:56be $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:56c0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:56c2 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:56c4 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:56c6 $1f $1f GFX GFX
    dw   `00333332                                     ;; 09:56c8 $3e $3f GFX GFX
    dw   `00333133                                     ;; 09:56ca $3f $3b GFX GFX
    dw   `00033333                                     ;; 09:56cc $1f $1f GFX GFX
    dw   `00003131                                     ;; 09:56ce $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:56d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:56d2 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:56d4 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:56d6 $f0 $f0 GFX GFX
    dw   `23230000                                     ;; 09:56d8 $50 $f0 GFX GFX
    dw   `33333300                                     ;; 09:56da $fc $fc GFX GFX
    dw   `33333000                                     ;; 09:56dc $f8 $f8 GFX GFX
    dw   `33333333                                     ;; 09:56de $ff $ff GFX GFX
    dw   `00003131                                     ;; 09:56e0 $0f $0a GFX GFX
    dw   `00003113                                     ;; 09:56e2 $0f $09 GFX GFX
    dw   `00031332                                     ;; 09:56e4 $1e $17 GFX GFX
    dw   `00031322                                     ;; 09:56e6 $1c $17 GFX GFX
    dw   `00003323                                     ;; 09:56e8 $0d $0f GFX GFX
    dw   `00032211                                     ;; 09:56ea $13 $1c GFX GFX
    dw   `00003223                                     ;; 09:56ec $09 $0f GFX GFX
    dw   `00033333                                     ;; 09:56ee $1f $1f GFX GFX
    dw   `33233330                                     ;; 09:56f0 $de $fe GFX GFX
    dw   `22223000                                     ;; 09:56f2 $08 $f8 GFX GFX
    dw   `23332300                                     ;; 09:56f4 $74 $fc GFX GFX
    dw   `33113000                                     ;; 09:56f6 $f8 $c8 GFX GFX
    dw   `23131300                                     ;; 09:56f8 $7c $d4 GFX GFX
    dw   `33311300                                     ;; 09:56fa $fc $e4 GFX GFX
    dw   `32233000                                     ;; 09:56fc $98 $f8 GFX GFX
    dw   `33333300                                     ;; 09:56fe $fc $fc GFX GFX
    dw   `00000003                                     ;; 09:5700 $01 $01 GFX GFX
    dw   `00000331                                     ;; 09:5702 $07 $06 GFX GFX
    dw   `00003122                                     ;; 09:5704 $0c $0b GFX GFX
    dw   `00003123                                     ;; 09:5706 $0d $0b GFX GFX
    dw   `00333131                                     ;; 09:5708 $3f $3a GFX GFX
    dw   `03113133                                     ;; 09:570a $7f $4b GFX GFX
    dw   `31223323                                     ;; 09:570c $cd $bf GFX GFX
    dw   `33322232                                     ;; 09:570e $e2 $ff GFX GFX
    dw   `30000000                                     ;; 09:5710 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:5712 $60 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5714 $10 $f0 GFX GFX
    dw   `32230000                                     ;; 09:5716 $90 $f0 GFX GFX
    dw   `13233300                                     ;; 09:5718 $dc $7c GFX GFX
    dw   `33231130                                     ;; 09:571a $de $f2 GFX GFX
    dw   `32332213                                     ;; 09:571c $b3 $fd GFX GFX
    dw   `23222333                                     ;; 09:571e $47 $ff GFX GFX
    dw   `31232233                                     ;; 09:5720 $d3 $bf GFX GFX
    dw   `31233223                                     ;; 09:5722 $d9 $bf GFX GFX
    dw   `33300332                                     ;; 09:5724 $e6 $e7 GFX GFX
    dw   `31133223                                     ;; 09:5726 $f9 $9f GFX GFX
    dw   `31303333                                     ;; 09:5728 $ef $af GFX GFX
    dw   `31133223                                     ;; 09:572a $f9 $9f GFX GFX
    dw   `03331111                                     ;; 09:572c $7f $70 GFX GFX
    dw   `00033333                                     ;; 09:572e $1f $1f GFX GFX
    dw   `33223233                                     ;; 09:5730 $cb $ff GFX GFX
    dw   `32233223                                     ;; 09:5732 $99 $ff GFX GFX
    dw   `23300333                                     ;; 09:5734 $67 $e7 GFX GFX
    dw   `33300313                                     ;; 09:5736 $e7 $e5 GFX GFX
    dw   `32233113                                     ;; 09:5738 $9f $f9 GFX GFX
    dw   `33330313                                     ;; 09:573a $f7 $f5 GFX GFX
    dw   `33333113                                     ;; 09:573c $ff $f9 GFX GFX
    dw   `33333330                                     ;; 09:573e $fe $fe GFX GFX
    dw   `00000003                                     ;; 09:5740 $01 $01 GFX GFX
    dw   `00000331                                     ;; 09:5742 $07 $06 GFX GFX
    dw   `00003112                                     ;; 09:5744 $0e $09 GFX GFX
    dw   `00003122                                     ;; 09:5746 $0c $0b GFX GFX
    dw   `00333122                                     ;; 09:5748 $3c $3b GFX GFX
    dw   `03111312                                     ;; 09:574a $7e $45 GFX GFX
    dw   `31222231                                     ;; 09:574c $c3 $be GFX GFX
    dw   `33322223                                     ;; 09:574e $e1 $ff GFX GFX
    dw   `30000000                                     ;; 09:5750 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:5752 $60 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5754 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:5756 $10 $f0 GFX GFX
    dw   `22233300                                     ;; 09:5758 $1c $fc GFX GFX
    dw   `22311130                                     ;; 09:575a $3e $e2 GFX GFX
    dw   `23222213                                     ;; 09:575c $43 $fd GFX GFX
    dw   `32222333                                     ;; 09:575e $87 $ff GFX GFX
    dw   `31232333                                     ;; 09:5760 $d7 $bf GFX GFX
    dw   `31233222                                     ;; 09:5762 $d8 $bf GFX GFX
    dw   `33300332                                     ;; 09:5764 $e6 $e7 GFX GFX
    dw   `31133223                                     ;; 09:5766 $f9 $9f GFX GFX
    dw   `31303333                                     ;; 09:5768 $ef $af GFX GFX
    dw   `03333223                                     ;; 09:576a $79 $7f GFX GFX
    dw   `00031111                                     ;; 09:576c $1f $10 GFX GFX
    dw   `00033333                                     ;; 09:576e $1f $1f GFX GFX
    dw   `33323223                                     ;; 09:5770 $e9 $ff GFX GFX
    dw   `22233223                                     ;; 09:5772 $19 $ff GFX GFX
    dw   `23300333                                     ;; 09:5774 $67 $e7 GFX GFX
    dw   `33303313                                     ;; 09:5776 $ef $ed GFX GFX
    dw   `32233113                                     ;; 09:5778 $9f $f9 GFX GFX
    dw   `33333313                                     ;; 09:577a $ff $fd GFX GFX
    dw   `33333113                                     ;; 09:577c $ff $f9 GFX GFX
    dw   `33333330                                     ;; 09:577e $fe $fe GFX GFX
    dw   `00000033                                     ;; 09:5780 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:5782 $07 $04 GFX GFX
    dw   `00003122                                     ;; 09:5784 $0c $0b GFX GFX
    dw   `00003332                                     ;; 09:5786 $0e $0f GFX GFX
    dw   `00003132                                     ;; 09:5788 $0e $0b GFX GFX
    dw   `00003332                                     ;; 09:578a $0e $0f GFX GFX
    dw   `00000323                                     ;; 09:578c $05 $07 GFX GFX
    dw   `00003223                                     ;; 09:578e $09 $0f GFX GFX
    dw   `33000000                                     ;; 09:5790 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5792 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5794 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:5796 $10 $f0 GFX GFX
    dw   `22330000                                     ;; 09:5798 $30 $f0 GFX GFX
    dw   `33113000                                     ;; 09:579a $f8 $c8 GFX GFX
    dw   `32221300                                     ;; 09:579c $8c $f4 GFX GFX
    dw   `22233300                                     ;; 09:579e $1c $fc GFX GFX
    dw   `00003332                                     ;; 09:57a0 $0e $0f GFX GFX
    dw   `00003222                                     ;; 09:57a2 $08 $0f GFX GFX
    dw   `00000323                                     ;; 09:57a4 $05 $07 GFX GFX
    dw   `00000032                                     ;; 09:57a6 $02 $03 GFX GFX
    dw   `00000033                                     ;; 09:57a8 $03 $03 GFX GFX
    dw   `00000332                                     ;; 09:57aa $06 $07 GFX GFX
    dw   `00003111                                     ;; 09:57ac $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:57ae $0f $0f GFX GFX
    dw   `22312300                                     ;; 09:57b0 $34 $ec GFX GFX
    dw   `23312300                                     ;; 09:57b2 $74 $ec GFX GFX
    dw   `33322300                                     ;; 09:57b4 $e4 $fc GFX GFX
    dw   `31133000                                     ;; 09:57b6 $f8 $98 GFX GFX
    dw   `33113000                                     ;; 09:57b8 $f8 $c8 GFX GFX
    dw   `31130000                                     ;; 09:57ba $f0 $90 GFX GFX
    dw   `23300000                                     ;; 09:57bc $60 $e0 GFX GFX
    dw   `33300000                                     ;; 09:57be $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:57c0 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:57c2 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:57c4 $07 $04 GFX GFX
    dw   `00003122                                     ;; 09:57c6 $0c $0b GFX GFX
    dw   `00003332                                     ;; 09:57c8 $0e $0f GFX GFX
    dw   `00003132                                     ;; 09:57ca $0e $0b GFX GFX
    dw   `00003332                                     ;; 09:57cc $0e $0f GFX GFX
    dw   `00000323                                     ;; 09:57ce $05 $07 GFX GFX
    dw   `00000000                                     ;; 09:57d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:57d2 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:57d4 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:57d6 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:57d8 $10 $f0 GFX GFX
    dw   `22330000                                     ;; 09:57da $30 $f0 GFX GFX
    dw   `33113000                                     ;; 09:57dc $f8 $c8 GFX GFX
    dw   `32221300                                     ;; 09:57de $8c $f4 GFX GFX
    dw   `00003223                                     ;; 09:57e0 $09 $0f GFX GFX
    dw   `00003332                                     ;; 09:57e2 $0e $0f GFX GFX
    dw   `00003222                                     ;; 09:57e4 $08 $0f GFX GFX
    dw   `00000323                                     ;; 09:57e6 $05 $07 GFX GFX
    dw   `00000032                                     ;; 09:57e8 $02 $03 GFX GFX
    dw   `00033323                                     ;; 09:57ea $1d $1f GFX GFX
    dw   `00311222                                     ;; 09:57ec $38 $27 GFX GFX
    dw   `00033123                                     ;; 09:57ee $1d $1b GFX GFX
    dw   `22233300                                     ;; 09:57f0 $1c $fc GFX GFX
    dw   `22312300                                     ;; 09:57f2 $34 $ec GFX GFX
    dw   `23331230                                     ;; 09:57f4 $7a $f6 GFX GFX
    dw   `32233330                                     ;; 09:57f6 $9e $fe GFX GFX
    dw   `23333113                                     ;; 09:57f8 $7f $f9 GFX GFX
    dw   `33223313                                     ;; 09:57fa $cf $fd GFX GFX
    dw   `33322313                                     ;; 09:57fc $e7 $fd GFX GFX
    dw   `33331333                                     ;; 09:57fe $ff $f7 GFX GFX
    dw   `00003333                                     ;; 09:5800 $0f $0f GFX GFX
    dw   `00032222                                     ;; 09:5802 $10 $1f GFX GFX
    dw   `00321122                                     ;; 09:5804 $2c $33 GFX GFX
    dw   `00313322                                     ;; 09:5806 $3c $2f GFX GFX
    dw   `00313322                                     ;; 09:5808 $3c $2f GFX GFX
    dw   `00032222                                     ;; 09:580a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:580c $08 $0f GFX GFX
    dw   `00000322                                     ;; 09:580e $04 $07 GFX GFX
    dw   `33000000                                     ;; 09:5810 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5812 $20 $e0 GFX GFX
    dw   `11230000                                     ;; 09:5814 $d0 $30 GFX GFX
    dw   `33130000                                     ;; 09:5816 $f0 $d0 GFX GFX
    dw   `33130000                                     ;; 09:5818 $f0 $d0 GFX GFX
    dw   `22300000                                     ;; 09:581a $20 $e0 GFX GFX
    dw   `23000000                                     ;; 09:581c $40 $c0 GFX GFX
    dw   `30000000                                     ;; 09:581e $80 $80 GFX GFX
    dw   `00000313                                     ;; 09:5820 $07 $05 GFX GFX
    dw   `00033111                                     ;; 09:5822 $1f $18 GFX GFX
    dw   `00321111                                     ;; 09:5824 $2f $30 GFX GFX
    dw   `00321111                                     ;; 09:5826 $2f $30 GFX GFX
    dw   `00322111                                     ;; 09:5828 $27 $38 GFX GFX
    dw   `00033233                                     ;; 09:582a $1b $1f GFX GFX
    dw   `00000300                                     ;; 09:582c $04 $04 GFX GFX
    dw   `00033333                                     ;; 09:582e $1f $1f GFX GFX
    dw   `31300000                                     ;; 09:5830 $e0 $a0 GFX GFX
    dw   `11130000                                     ;; 09:5832 $f0 $10 GFX GFX
    dw   `11123000                                     ;; 09:5834 $e8 $18 GFX GFX
    dw   `11122300                                     ;; 09:5836 $e4 $1c GFX GFX
    dw   `11322300                                     ;; 09:5838 $e4 $3c GFX GFX
    dw   `23123000                                     ;; 09:583a $68 $d8 GFX GFX
    dw   `13231300                                     ;; 09:583c $dc $74 GFX GFX
    dw   `32223000                                     ;; 09:583e $88 $f8 GFX GFX
    dw   `00000333                                     ;; 09:5840 $07 $07 GFX GFX
    dw   `00003211                                     ;; 09:5842 $0b $0c GFX GFX
    dw   `00032111                                     ;; 09:5844 $17 $18 GFX GFX
    dw   `00032111                                     ;; 09:5846 $17 $18 GFX GFX
    dw   `00032111                                     ;; 09:5848 $17 $18 GFX GFX
    dw   `00032211                                     ;; 09:584a $13 $1c GFX GFX
    dw   `00032311                                     ;; 09:584c $17 $1c GFX GFX
    dw   `00003031                                     ;; 09:584e $0b $0a GFX GFX
    dw   `33333000                                     ;; 09:5850 $f8 $f8 GFX GFX
    dw   `11111300                                     ;; 09:5852 $fc $04 GFX GFX
    dw   `11113000                                     ;; 09:5854 $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:5856 $fc $04 GFX GFX
    dw   `11123000                                     ;; 09:5858 $e8 $18 GFX GFX
    dw   `11130000                                     ;; 09:585a $f0 $10 GFX GFX
    dw   `11110000                                     ;; 09:585c $f0 $00 GFX GFX
    dw   `13000000                                     ;; 09:585e $c0 $40 GFX GFX
    dw   `00000331                                     ;; 09:5860 $07 $06 GFX GFX
    dw   `00003111                                     ;; 09:5862 $0f $08 GFX GFX
    dw   `00032111                                     ;; 09:5864 $17 $18 GFX GFX
    dw   `00322111                                     ;; 09:5866 $27 $38 GFX GFX
    dw   `00322311                                     ;; 09:5868 $27 $3c GFX GFX
    dw   `00032231                                     ;; 09:586a $13 $1e GFX GFX
    dw   `00003233                                     ;; 09:586c $0b $0f GFX GFX
    dw   `00032223                                     ;; 09:586e $11 $1f GFX GFX
    dw   `13003330                                     ;; 09:5870 $ce $4e GFX GFX
    dw   `11331313                                     ;; 09:5872 $ff $35 GFX GFX
    dw   `11111130                                     ;; 09:5874 $fe $02 GFX GFX
    dw   `11112300                                     ;; 09:5876 $f4 $0c GFX GFX
    dw   `11112300                                     ;; 09:5878 $f4 $0c GFX GFX
    dw   `11122300                                     ;; 09:587a $e4 $1c GFX GFX
    dw   `33233000                                     ;; 09:587c $d8 $f8 GFX GFX
    dw   `33330000                                     ;; 09:587e $f0 $f0 GFX GFX
    dw   `00000333                                     ;; 09:5880 $07 $07 GFX GFX
    dw   `00033222                                     ;; 09:5882 $18 $1f GFX GFX
    dw   `00322112                                     ;; 09:5884 $26 $39 GFX GFX
    dw   `03223312                                     ;; 09:5886 $4e $7d GFX GFX
    dw   `03223312                                     ;; 09:5888 $4e $7d GFX GFX
    dw   `03222222                                     ;; 09:588a $40 $7f GFX GFX
    dw   `03233333                                     ;; 09:588c $5f $7f GFX GFX
    dw   `00300331                                     ;; 09:588e $27 $26 GFX GFX
    dw   `33333000                                     ;; 09:5890 $f8 $f8 GFX GFX
    dw   `22111300                                     ;; 09:5892 $3c $c4 GFX GFX
    dw   `21333000                                     ;; 09:5894 $78 $b8 GFX GFX
    dw   `23130000                                     ;; 09:5896 $70 $d0 GFX GFX
    dw   `21300000                                     ;; 09:5898 $60 $a0 GFX GFX
    dw   `11300003                                     ;; 09:589a $e1 $21 GFX GFX
    dw   `13000031                                     ;; 09:589c $c3 $42 GFX GFX
    dw   `13000313                                     ;; 09:589e $c7 $45 GFX GFX
    dw   `00003111                                     ;; 09:58a0 $0f $08 GFX GFX
    dw   `00031111                                     ;; 09:58a2 $1f $10 GFX GFX
    dw   `00031112                                     ;; 09:58a4 $1e $11 GFX GFX
    dw   `00003122                                     ;; 09:58a6 $0c $0b GFX GFX
    dw   `00000312                                     ;; 09:58a8 $06 $05 GFX GFX
    dw   `00000033                                     ;; 09:58aa $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:58ac $01 $01 GFX GFX
    dw   `00033332                                     ;; 09:58ae $1e $1f GFX GFX
    dw   `13033131                                     ;; 09:58b0 $df $5a GFX GFX
    dw   `11311113                                     ;; 09:58b2 $ff $21 GFX GFX
    dw   `23111130                                     ;; 09:58b4 $7e $c2 GFX GFX
    dw   `22111300                                     ;; 09:58b6 $3c $c4 GFX GFX
    dw   `22133000                                     ;; 09:58b8 $38 $d8 GFX GFX
    dw   `23300000                                     ;; 09:58ba $60 $e0 GFX GFX
    dw   `32330000                                     ;; 09:58bc $b0 $f0 GFX GFX
    dw   `22223333                                     ;; 09:58be $0f $ff GFX GFX
    dw   `00003333                                     ;; 09:58c0 $0f $0f GFX GFX
    dw   `00332222                                     ;; 09:58c2 $30 $3f GFX GFX
    dw   `03221122                                     ;; 09:58c4 $4c $73 GFX GFX
    dw   `32233122                                     ;; 09:58c6 $9c $fb GFX GFX
    dw   `32233122                                     ;; 09:58c8 $9c $fb GFX GFX
    dw   `32222221                                     ;; 09:58ca $81 $fe GFX GFX
    dw   `32333331                                     ;; 09:58cc $bf $fe GFX GFX
    dw   `03000311                                     ;; 09:58ce $47 $44 GFX GFX
    dw   `33330000                                     ;; 09:58d0 $f0 $f0 GFX GFX
    dw   `21113000                                     ;; 09:58d2 $78 $88 GFX GFX
    dw   `13330000                                     ;; 09:58d4 $f0 $70 GFX GFX
    dw   `31300000                                     ;; 09:58d6 $e0 $a0 GFX GFX
    dw   `13000000                                     ;; 09:58d8 $c0 $40 GFX GFX
    dw   `13000003                                     ;; 09:58da $c1 $41 GFX GFX
    dw   `30000031                                     ;; 09:58dc $83 $82 GFX GFX
    dw   `30000313                                     ;; 09:58de $87 $85 GFX GFX
    dw   `00003111                                     ;; 09:58e0 $0f $08 GFX GFX
    dw   `00031111                                     ;; 09:58e2 $1f $10 GFX GFX
    dw   `00031111                                     ;; 09:58e4 $1f $10 GFX GFX
    dw   `00003112                                     ;; 09:58e6 $0e $09 GFX GFX
    dw   `33003312                                     ;; 09:58e8 $ce $cd GFX GFX
    dw   `32332333                                     ;; 09:58ea $b7 $ff GFX GFX
    dw   `03223000                                     ;; 09:58ec $48 $78 GFX GFX
    dw   `00322333                                     ;; 09:58ee $27 $3f GFX GFX
    dw   `13033131                                     ;; 09:58f0 $df $5a GFX GFX
    dw   `11311113                                     ;; 09:58f2 $ff $21 GFX GFX
    dw   `22111130                                     ;; 09:58f4 $3e $c2 GFX GFX
    dw   `22211300                                     ;; 09:58f6 $1c $e4 GFX GFX
    dw   `22233030                                     ;; 09:58f8 $1a $fa GFX GFX
    dw   `33323323                                     ;; 09:58fa $ed $ff GFX GFX
    dw   `00332230                                     ;; 09:58fc $32 $3e GFX GFX
    dw   `33222333                                     ;; 09:58fe $c7 $ff GFX GFX
    dw   `00003333                                     ;; 09:5900 $0f $0f GFX GFX
    dw   `00032222                                     ;; 09:5902 $10 $1f GFX GFX
    dw   `00321122                                     ;; 09:5904 $2c $33 GFX GFX
    dw   `00313322                                     ;; 09:5906 $3c $2f GFX GFX
    dw   `00313322                                     ;; 09:5908 $3c $2f GFX GFX
    dw   `00032222                                     ;; 09:590a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:590c $08 $0f GFX GFX
    dw   `00000322                                     ;; 09:590e $04 $07 GFX GFX
    dw   `33000000                                     ;; 09:5910 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5912 $20 $e0 GFX GFX
    dw   `11230000                                     ;; 09:5914 $d0 $30 GFX GFX
    dw   `33130000                                     ;; 09:5916 $f0 $d0 GFX GFX
    dw   `33130000                                     ;; 09:5918 $f0 $d0 GFX GFX
    dw   `22300000                                     ;; 09:591a $20 $e0 GFX GFX
    dw   `23000000                                     ;; 09:591c $40 $c0 GFX GFX
    dw   `30000000                                     ;; 09:591e $80 $80 GFX GFX
    dw   `00000313                                     ;; 09:5920 $07 $05 GFX GFX
    dw   `00033131                                     ;; 09:5922 $1f $1a GFX GFX
    dw   `00321113                                     ;; 09:5924 $2f $31 GFX GFX
    dw   `00321121                                     ;; 09:5926 $2d $32 GFX GFX
    dw   `00322111                                     ;; 09:5928 $27 $38 GFX GFX
    dw   `00033233                                     ;; 09:592a $1b $1f GFX GFX
    dw   `00000300                                     ;; 09:592c $04 $04 GFX GFX
    dw   `00033333                                     ;; 09:592e $1f $1f GFX GFX
    dw   `31300000                                     ;; 09:5930 $e0 $a0 GFX GFX
    dw   `13233000                                     ;; 09:5932 $d8 $78 GFX GFX
    dw   `31132300                                     ;; 09:5934 $f4 $9c GFX GFX
    dw   `21132300                                     ;; 09:5936 $74 $9c GFX GFX
    dw   `11322300                                     ;; 09:5938 $e4 $3c GFX GFX
    dw   `33323000                                     ;; 09:593a $e8 $f8 GFX GFX
    dw   `03230000                                     ;; 09:593c $50 $70 GFX GFX
    dw   `32223000                                     ;; 09:593e $88 $f8 GFX GFX
    dw   `00000333                                     ;; 09:5940 $07 $07 GFX GFX
    dw   `00003211                                     ;; 09:5942 $0b $0c GFX GFX
    dw   `00032111                                     ;; 09:5944 $17 $18 GFX GFX
    dw   `00032111                                     ;; 09:5946 $17 $18 GFX GFX
    dw   `00032111                                     ;; 09:5948 $17 $18 GFX GFX
    dw   `00032211                                     ;; 09:594a $13 $1c GFX GFX
    dw   `00032311                                     ;; 09:594c $17 $1c GFX GFX
    dw   `00003031                                     ;; 09:594e $0b $0a GFX GFX
    dw   `33333000                                     ;; 09:5950 $f8 $f8 GFX GFX
    dw   `11111300                                     ;; 09:5952 $fc $04 GFX GFX
    dw   `11113000                                     ;; 09:5954 $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:5956 $fc $04 GFX GFX
    dw   `11123000                                     ;; 09:5958 $e8 $18 GFX GFX
    dw   `11130000                                     ;; 09:595a $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:595c $f8 $08 GFX GFX
    dw   `13330000                                     ;; 09:595e $f0 $70 GFX GFX
    dw   `00000331                                     ;; 09:5960 $07 $06 GFX GFX
    dw   `00003112                                     ;; 09:5962 $0e $09 GFX GFX
    dw   `00032311                                     ;; 09:5964 $17 $1c GFX GFX
    dw   `00312311                                     ;; 09:5966 $37 $2c GFX GFX
    dw   `00312311                                     ;; 09:5968 $37 $2c GFX GFX
    dw   `00032231                                     ;; 09:596a $13 $1e GFX GFX
    dw   `00003233                                     ;; 09:596c $0b $0f GFX GFX
    dw   `00032223                                     ;; 09:596e $11 $1f GFX GFX
    dw   `13003330                                     ;; 09:5970 $ce $4e GFX GFX
    dw   `21331313                                     ;; 09:5972 $7f $b5 GFX GFX
    dw   `11111130                                     ;; 09:5974 $fe $02 GFX GFX
    dw   `11112300                                     ;; 09:5976 $f4 $0c GFX GFX
    dw   `11112300                                     ;; 09:5978 $f4 $0c GFX GFX
    dw   `11122300                                     ;; 09:597a $e4 $1c GFX GFX
    dw   `33233000                                     ;; 09:597c $d8 $f8 GFX GFX
    dw   `33330000                                     ;; 09:597e $f0 $f0 GFX GFX
    dw   `00000333                                     ;; 09:5980 $07 $07 GFX GFX
    dw   `00033222                                     ;; 09:5982 $18 $1f GFX GFX
    dw   `00322112                                     ;; 09:5984 $26 $39 GFX GFX
    dw   `03223312                                     ;; 09:5986 $4e $7d GFX GFX
    dw   `03223312                                     ;; 09:5988 $4e $7d GFX GFX
    dw   `03222223                                     ;; 09:598a $41 $7f GFX GFX
    dw   `03233331                                     ;; 09:598c $5f $7e GFX GFX
    dw   `00300311                                     ;; 09:598e $27 $24 GFX GFX
    dw   `33331300                                     ;; 09:5990 $fc $f4 GFX GFX
    dw   `23113300                                     ;; 09:5992 $7c $cc GFX GFX
    dw   `23131300                                     ;; 09:5994 $7c $d4 GFX GFX
    dw   `31113000                                     ;; 09:5996 $f8 $88 GFX GFX
    dw   `31130000                                     ;; 09:5998 $f0 $90 GFX GFX
    dw   `11300003                                     ;; 09:599a $e1 $21 GFX GFX
    dw   `13000031                                     ;; 09:599c $c3 $42 GFX GFX
    dw   `33000313                                     ;; 09:599e $c7 $c5 GFX GFX
    dw   `00003133                                     ;; 09:59a0 $0f $0b GFX GFX
    dw   `00031111                                     ;; 09:59a2 $1f $10 GFX GFX
    dw   `00031213                                     ;; 09:59a4 $1b $15 GFX GFX
    dw   `00003132                                     ;; 09:59a6 $0e $0b GFX GFX
    dw   `00000332                                     ;; 09:59a8 $06 $07 GFX GFX
    dw   `00000033                                     ;; 09:59aa $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:59ac $01 $01 GFX GFX
    dw   `00033331                                     ;; 09:59ae $1f $1e GFX GFX
    dw   `13033131                                     ;; 09:59b0 $df $5a GFX GFX
    dw   `11311113                                     ;; 09:59b2 $ff $21 GFX GFX
    dw   `33111130                                     ;; 09:59b4 $fe $c2 GFX GFX
    dw   `22311300                                     ;; 09:59b6 $3c $e4 GFX GFX
    dw   `12333000                                     ;; 09:59b8 $b8 $78 GFX GFX
    dw   `23300000                                     ;; 09:59ba $60 $e0 GFX GFX
    dw   `32330000                                     ;; 09:59bc $b0 $f0 GFX GFX
    dw   `22223333                                     ;; 09:59be $0f $ff GFX GFX
    dw   `00003333                                     ;; 09:59c0 $0f $0f GFX GFX
    dw   `00332222                                     ;; 09:59c2 $30 $3f GFX GFX
    dw   `03221122                                     ;; 09:59c4 $4c $73 GFX GFX
    dw   `32233123                                     ;; 09:59c6 $9d $fb GFX GFX
    dw   `32233123                                     ;; 09:59c8 $9d $fb GFX GFX
    dw   `32222231                                     ;; 09:59ca $83 $fe GFX GFX
    dw   `32333311                                     ;; 09:59cc $bf $fc GFX GFX
    dw   `03000311                                     ;; 09:59ce $47 $44 GFX GFX
    dw   `33313000                                     ;; 09:59d0 $f8 $e8 GFX GFX
    dw   `31133000                                     ;; 09:59d2 $f8 $98 GFX GFX
    dw   `31313000                                     ;; 09:59d4 $f8 $a8 GFX GFX
    dw   `11130000                                     ;; 09:59d6 $f0 $10 GFX GFX
    dw   `11300000                                     ;; 09:59d8 $e0 $20 GFX GFX
    dw   `13000003                                     ;; 09:59da $c1 $41 GFX GFX
    dw   `30000031                                     ;; 09:59dc $83 $82 GFX GFX
    dw   `30000313                                     ;; 09:59de $87 $85 GFX GFX
    dw   `00003133                                     ;; 09:59e0 $0f $0b GFX GFX
    dw   `00031111                                     ;; 09:59e2 $1f $10 GFX GFX
    dw   `00032321                                     ;; 09:59e4 $15 $1e GFX GFX
    dw   `00003113                                     ;; 09:59e6 $0f $09 GFX GFX
    dw   `33003313                                     ;; 09:59e8 $cf $cd GFX GFX
    dw   `32332333                                     ;; 09:59ea $b7 $ff GFX GFX
    dw   `03223000                                     ;; 09:59ec $48 $78 GFX GFX
    dw   `00322333                                     ;; 09:59ee $27 $3f GFX GFX
    dw   `13033131                                     ;; 09:59f0 $df $5a GFX GFX
    dw   `11311113                                     ;; 09:59f2 $ff $21 GFX GFX
    dw   `33311130                                     ;; 09:59f4 $fe $e2 GFX GFX
    dw   `22231300                                     ;; 09:59f6 $1c $f4 GFX GFX
    dw   `21233030                                     ;; 09:59f8 $5a $ba GFX GFX
    dw   `32323323                                     ;; 09:59fa $ad $ff GFX GFX
    dw   `03332230                                     ;; 09:59fc $72 $7e GFX GFX
    dw   `33222333                                     ;; 09:59fe $c7 $ff GFX GFX
    dw   `00000033                                     ;; 09:5a00 $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:5a02 $0f $0f GFX GFX
    dw   `00033331                                     ;; 09:5a04 $1f $1e GFX GFX
    dw   `03331133                                     ;; 09:5a06 $7f $73 GFX GFX
    dw   `03311111                                     ;; 09:5a08 $7f $60 GFX GFX
    dw   `03111333                                     ;; 09:5a0a $7f $47 GFX GFX
    dw   `00313131                                     ;; 09:5a0c $3f $2a GFX GFX
    dw   `00333131                                     ;; 09:5a0e $3f $3a GFX GFX
    dw   `33300000                                     ;; 09:5a10 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:5a12 $f0 $f0 GFX GFX
    dw   `31333000                                     ;; 09:5a14 $f8 $b8 GFX GFX
    dw   `33313300                                     ;; 09:5a16 $fc $ec GFX GFX
    dw   `31111300                                     ;; 09:5a18 $fc $84 GFX GFX
    dw   `23311300                                     ;; 09:5a1a $7c $e4 GFX GFX
    dw   `13133000                                     ;; 09:5a1c $f8 $58 GFX GFX
    dw   `13133300                                     ;; 09:5a1e $fc $5c GFX GFX
    dw   `03113313                                     ;; 09:5a20 $7f $4d GFX GFX
    dw   `32223111                                     ;; 09:5a22 $8f $f8 GFX GFX
    dw   `33333111                                     ;; 09:5a24 $ff $f8 GFX GFX
    dw   `31311311                                     ;; 09:5a26 $ff $a4 GFX GFX
    dw   `31311311                                     ;; 09:5a28 $ff $a4 GFX GFX
    dw   `31333231                                     ;; 09:5a2a $fb $be GFX GFX
    dw   `31322333                                     ;; 09:5a2c $e7 $bf GFX GFX
    dw   `03333113                                     ;; 09:5a2e $7f $79 GFX GFX
    dw   `31331130                                     ;; 09:5a30 $fe $b2 GFX GFX
    dw   `11132223                                     ;; 09:5a32 $f1 $1f GFX GFX
    dw   `11133333                                     ;; 09:5a34 $ff $1f GFX GFX
    dw   `11133113                                     ;; 09:5a36 $ff $19 GFX GFX
    dw   `11333113                                     ;; 09:5a38 $ff $39 GFX GFX
    dw   `11313113                                     ;; 09:5a3a $ff $29 GFX GFX
    dw   `13333130                                     ;; 09:5a3c $fe $7a GFX GFX
    dw   `33333300                                     ;; 09:5a3e $fc $fc GFX GFX
    dw   `00000333                                     ;; 09:5a40 $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:5a42 $1f $1f GFX GFX
    dw   `00333111                                     ;; 09:5a44 $3f $38 GFX GFX
    dw   `03311111                                     ;; 09:5a46 $7f $60 GFX GFX
    dw   `03111111                                     ;; 09:5a48 $7f $40 GFX GFX
    dw   `00311133                                     ;; 09:5a4a $3f $23 GFX GFX
    dw   `00033322                                     ;; 09:5a4c $1c $1f GFX GFX
    dw   `00032211                                     ;; 09:5a4e $13 $1c GFX GFX
    dw   `33300000                                     ;; 09:5a50 $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:5a52 $f8 $f8 GFX GFX
    dw   `11133300                                     ;; 09:5a54 $fc $1c GFX GFX
    dw   `11111330                                     ;; 09:5a56 $fe $06 GFX GFX
    dw   `11111130                                     ;; 09:5a58 $fe $02 GFX GFX
    dw   `33111300                                     ;; 09:5a5a $fc $c4 GFX GFX
    dw   `22333000                                     ;; 09:5a5c $38 $f8 GFX GFX
    dw   `11223000                                     ;; 09:5a5e $c8 $38 GFX GFX
    dw   `00321111                                     ;; 09:5a60 $2f $30 GFX GFX
    dw   `03133111                                     ;; 09:5a62 $7f $58 GFX GFX
    dw   `03111333                                     ;; 09:5a64 $7f $47 GFX GFX
    dw   `31111111                                     ;; 09:5a66 $ff $80 GFX GFX
    dw   `31111111                                     ;; 09:5a68 $ff $80 GFX GFX
    dw   `31333111                                     ;; 09:5a6a $ff $b8 GFX GFX
    dw   `03333311                                     ;; 09:5a6c $7f $7c GFX GFX
    dw   `33333333                                     ;; 09:5a6e $ff $ff GFX GFX
    dw   `11112300                                     ;; 09:5a70 $f4 $0c GFX GFX
    dw   `11133130                                     ;; 09:5a72 $fe $1a GFX GFX
    dw   `33311130                                     ;; 09:5a74 $fe $e2 GFX GFX
    dw   `11111113                                     ;; 09:5a76 $ff $01 GFX GFX
    dw   `11131113                                     ;; 09:5a78 $ff $11 GFX GFX
    dw   `33311130                                     ;; 09:5a7a $fe $e2 GFX GFX
    dw   `11133300                                     ;; 09:5a7c $fc $1c GFX GFX
    dw   `33333333                                     ;; 09:5a7e $ff $ff GFX GFX
    dw   `00333330                                     ;; 09:5a80 $3e $3e GFX GFX
    dw   `00333333                                     ;; 09:5a82 $3f $3f GFX GFX
    dw   `00311313                                     ;; 09:5a84 $3f $25 GFX GFX
    dw   `00333111                                     ;; 09:5a86 $3f $38 GFX GFX
    dw   `00331111                                     ;; 09:5a88 $3f $30 GFX GFX
    dw   `00032311                                     ;; 09:5a8a $17 $1c GFX GFX
    dw   `00031331                                     ;; 09:5a8c $1f $16 GFX GFX
    dw   `00031313                                     ;; 09:5a8e $1f $15 GFX GFX
    dw   `00000000                                     ;; 09:5a90 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:5a92 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:5a94 $80 $80 GFX GFX
    dw   `33333300                                     ;; 09:5a96 $fc $fc GFX GFX
    dw   `13333300                                     ;; 09:5a98 $fc $7c GFX GFX
    dw   `11113000                                     ;; 09:5a9a $f8 $08 GFX GFX
    dw   `11130000                                     ;; 09:5a9c $f0 $10 GFX GFX
    dw   `33300000                                     ;; 09:5a9e $e0 $e0 GFX GFX
    dw   `00031221                                     ;; 09:5aa0 $19 $16 GFX GFX
    dw   `00312112                                     ;; 09:5aa2 $36 $29 GFX GFX
    dw   `00311133                                     ;; 09:5aa4 $3f $23 GFX GFX
    dw   `00311313                                     ;; 09:5aa6 $3f $25 GFX GFX
    dw   `00313311                                     ;; 09:5aa8 $3f $2c GFX GFX
    dw   `00033233                                     ;; 09:5aaa $1b $1f GFX GFX
    dw   `00003112                                     ;; 09:5aac $0e $09 GFX GFX
    dw   `00033333                                     ;; 09:5aae $1f $1f GFX GFX
    dw   `31130000                                     ;; 09:5ab0 $f0 $90 GFX GFX
    dw   `32223000                                     ;; 09:5ab2 $88 $f8 GFX GFX
    dw   `11330000                                     ;; 09:5ab4 $f0 $30 GFX GFX
    dw   `11130000                                     ;; 09:5ab6 $f0 $10 GFX GFX
    dw   `31113000                                     ;; 09:5ab8 $f8 $88 GFX GFX
    dw   `31113000                                     ;; 09:5aba $f8 $88 GFX GFX
    dw   `31111300                                     ;; 09:5abc $fc $84 GFX GFX
    dw   `33333330                                     ;; 09:5abe $fe $fe GFX GFX
    dw   `00000000                                     ;; 09:5ac0 $00 $00 GFX GFX
    dw   `00333330                                     ;; 09:5ac2 $3e $3e GFX GFX
    dw   `00333333                                     ;; 09:5ac4 $3f $3f GFX GFX
    dw   `00311313                                     ;; 09:5ac6 $3f $25 GFX GFX
    dw   `00333111                                     ;; 09:5ac8 $3f $38 GFX GFX
    dw   `00331111                                     ;; 09:5aca $3f $30 GFX GFX
    dw   `00032311                                     ;; 09:5acc $17 $1c GFX GFX
    dw   `00031331                                     ;; 09:5ace $1f $16 GFX GFX
    dw   `00000000                                     ;; 09:5ad0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:5ad2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:5ad4 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:5ad6 $80 $80 GFX GFX
    dw   `33333300                                     ;; 09:5ad8 $fc $fc GFX GFX
    dw   `13333300                                     ;; 09:5ada $fc $7c GFX GFX
    dw   `11113000                                     ;; 09:5adc $f8 $08 GFX GFX
    dw   `11130000                                     ;; 09:5ade $f0 $10 GFX GFX
    dw   `00031313                                     ;; 09:5ae0 $1f $15 GFX GFX
    dw   `00031221                                     ;; 09:5ae2 $19 $16 GFX GFX
    dw   `00312112                                     ;; 09:5ae4 $36 $29 GFX GFX
    dw   `03111133                                     ;; 09:5ae6 $7f $43 GFX GFX
    dw   `03133333                                     ;; 09:5ae8 $7f $5f GFX GFX
    dw   `00303223                                     ;; 09:5aea $29 $2f GFX GFX
    dw   `00031132                                     ;; 09:5aec $1e $13 GFX GFX
    dw   `03333333                                     ;; 09:5aee $7f $7f GFX GFX
    dw   `33300000                                     ;; 09:5af0 $e0 $e0 GFX GFX
    dw   `31130000                                     ;; 09:5af2 $f0 $90 GFX GFX
    dw   `32223000                                     ;; 09:5af4 $88 $f8 GFX GFX
    dw   `33113300                                     ;; 09:5af6 $fc $cc GFX GFX
    dw   `11311130                                     ;; 09:5af8 $fe $22 GFX GFX
    dw   `11311113                                     ;; 09:5afa $ff $21 GFX GFX
    dw   `33311130                                     ;; 09:5afc $fe $e2 GFX GFX
    dw   `33333333                                     ;; 09:5afe $ff $ff GFX GFX
    dw   `00000033                                     ;; 09:5b00 $03 $03 GFX GFX
    dw   `03333323                                     ;; 09:5b02 $7d $7f GFX GFX
    dw   `32223122                                     ;; 09:5b04 $8c $fb GFX GFX
    dw   `03222311                                     ;; 09:5b06 $47 $7c GFX GFX
    dw   `00322233                                     ;; 09:5b08 $23 $3f GFX GFX
    dw   `00033222                                     ;; 09:5b0a $18 $1f GFX GFX
    dw   `00321333                                     ;; 09:5b0c $2f $37 GFX GFX
    dw   `00313131                                     ;; 09:5b0e $3f $2a GFX GFX
    dw   `33033000                                     ;; 09:5b10 $d8 $d8 GFX GFX
    dw   `22311330                                     ;; 09:5b12 $3e $e6 GFX GFX
    dw   `32313223                                     ;; 09:5b14 $b9 $ef GFX GFX
    dw   `11132230                                     ;; 09:5b16 $f2 $1e GFX GFX
    dw   `33322300                                     ;; 09:5b18 $e4 $fc GFX GFX
    dw   `22233000                                     ;; 09:5b1a $18 $f8 GFX GFX
    dw   `33312300                                     ;; 09:5b1c $f4 $ec GFX GFX
    dw   `13131300                                     ;; 09:5b1e $fc $54 GFX GFX
    dw   `03233131                                     ;; 09:5b20 $5f $7a GFX GFX
    dw   `32311311                                     ;; 09:5b22 $bf $e4 GFX GFX
    dw   `32311333                                     ;; 09:5b24 $bf $e7 GFX GFX
    dw   `32333332                                     ;; 09:5b26 $be $ff GFX GFX
    dw   `32333223                                     ;; 09:5b28 $b9 $ff GFX GFX
    dw   `32333323                                     ;; 09:5b2a $bd $ff GFX GFX
    dw   `32300333                                     ;; 09:5b2c $a7 $e7 GFX GFX
    dw   `03003333                                     ;; 09:5b2e $4f $4f GFX GFX
    dw   `13133230                                     ;; 09:5b30 $fa $5e GFX GFX
    dw   `11323323                                     ;; 09:5b32 $ed $3f GFX GFX
    dw   `33231133                                     ;; 09:5b34 $df $f3 GFX GFX
    dw   `22331133                                     ;; 09:5b36 $3f $f3 GFX GFX
    dw   `33133323                                     ;; 09:5b38 $fd $df GFX GFX
    dw   `22233323                                     ;; 09:5b3a $1d $ff GFX GFX
    dw   `22300323                                     ;; 09:5b3c $25 $e7 GFX GFX
    dw   `33333030                                     ;; 09:5b3e $fa $fa GFX GFX
    dw   `03333033                                     ;; 09:5b40 $7b $7b GFX GFX
    dw   `00311322                                     ;; 09:5b42 $3c $27 GFX GFX
    dw   `00333333                                     ;; 09:5b44 $3f $3f GFX GFX
    dw   `03322222                                     ;; 09:5b46 $60 $7f GFX GFX
    dw   `32222233                                     ;; 09:5b48 $83 $ff GFX GFX
    dw   `03323311                                     ;; 09:5b4a $6f $7c GFX GFX
    dw   `00333111                                     ;; 09:5b4c $3f $38 GFX GFX
    dw   `00323211                                     ;; 09:5b4e $2b $3c GFX GFX
    dw   `33000000                                     ;; 09:5b50 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:5b52 $20 $e0 GFX GFX
    dw   `33333000                                     ;; 09:5b54 $f8 $f8 GFX GFX
    dw   `22222330                                     ;; 09:5b56 $06 $fe GFX GFX
    dw   `33222223                                     ;; 09:5b58 $c1 $ff GFX GFX
    dw   `11332330                                     ;; 09:5b5a $f6 $3e GFX GFX
    dw   `11133300                                     ;; 09:5b5c $fc $1c GFX GFX
    dw   `11232330                                     ;; 09:5b5e $d6 $3e GFX GFX
    dw   `03223311                                     ;; 09:5b60 $4f $7c GFX GFX
    dw   `03222323                                     ;; 09:5b62 $45 $7f GFX GFX
    dw   `03222233                                     ;; 09:5b64 $43 $7f GFX GFX
    dw   `32222222                                     ;; 09:5b66 $80 $ff GFX GFX
    dw   `32222222                                     ;; 09:5b68 $80 $ff GFX GFX
    dw   `32233322                                     ;; 09:5b6a $9c $ff GFX GFX
    dw   `32333332                                     ;; 09:5b6c $be $ff GFX GFX
    dw   `33333333                                     ;; 09:5b6e $ff $ff GFX GFX
    dw   `11332230                                     ;; 09:5b70 $f2 $3e GFX GFX
    dw   `12322330                                     ;; 09:5b72 $a6 $7e GFX GFX
    dw   `13223230                                     ;; 09:5b74 $ca $7e GFX GFX
    dw   `32222230                                     ;; 09:5b76 $82 $fe GFX GFX
    dw   `22332223                                     ;; 09:5b78 $31 $ff GFX GFX
    dw   `33222223                                     ;; 09:5b7a $c1 $ff GFX GFX
    dw   `22222230                                     ;; 09:5b7c $02 $fe GFX GFX
    dw   `33333333                                     ;; 09:5b7e $ff $ff GFX GFX
    dw   `00000033                                     ;; 09:5b80 $03 $03 GFX GFX
    dw   `00003322                                     ;; 09:5b82 $0c $0f GFX GFX
    dw   `00003223                                     ;; 09:5b84 $09 $0f GFX GFX
    dw   `00003223                                     ;; 09:5b86 $09 $0f GFX GFX
    dw   `33333331                                     ;; 09:5b88 $ff $fe GFX GFX
    dw   `32222222                                     ;; 09:5b8a $80 $ff GFX GFX
    dw   `03333133                                     ;; 09:5b8c $7f $7b GFX GFX
    dw   `00003131                                     ;; 09:5b8e $0f $0a GFX GFX
    dw   `03333000                                     ;; 09:5b90 $78 $78 GFX GFX
    dw   `31130333                                     ;; 09:5b92 $f7 $97 GFX GFX
    dw   `11333223                                     ;; 09:5b94 $f9 $3f GFX GFX
    dw   `13322230                                     ;; 09:5b96 $e2 $7e GFX GFX
    dw   `32222300                                     ;; 09:5b98 $84 $fc GFX GFX
    dw   `22233000                                     ;; 09:5b9a $18 $f8 GFX GFX
    dw   `33313000                                     ;; 09:5b9c $f8 $e8 GFX GFX
    dw   `31113000                                     ;; 09:5b9e $f8 $88 GFX GFX
    dw   `00003111                                     ;; 09:5ba0 $0f $08 GFX GFX
    dw   `00032333                                     ;; 09:5ba2 $17 $1f GFX GFX
    dw   `00003222                                     ;; 09:5ba4 $08 $0f GFX GFX
    dw   `00003233                                     ;; 09:5ba6 $0b $0f GFX GFX
    dw   `00000323                                     ;; 09:5ba8 $05 $07 GFX GFX
    dw   `00000033                                     ;; 09:5baa $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:5bac $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:5bae $07 $07 GFX GFX
    dw   `33111300                                     ;; 09:5bb0 $fc $c4 GFX GFX
    dw   `22231130                                     ;; 09:5bb2 $1e $f2 GFX GFX
    dw   `23323130                                     ;; 09:5bb4 $6e $fa GFX GFX
    dw   `33223130                                     ;; 09:5bb6 $ce $fa GFX GFX
    dw   `11322300                                     ;; 09:5bb8 $e4 $3c GFX GFX
    dw   `11322300                                     ;; 09:5bba $e4 $3c GFX GFX
    dw   `33322230                                     ;; 09:5bbc $e2 $fe GFX GFX
    dw   `33333333                                     ;; 09:5bbe $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:5bc0 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:5bc2 $03 $03 GFX GFX
    dw   `00003322                                     ;; 09:5bc4 $0c $0f GFX GFX
    dw   `00003223                                     ;; 09:5bc6 $09 $0f GFX GFX
    dw   `00003223                                     ;; 09:5bc8 $09 $0f GFX GFX
    dw   `33333331                                     ;; 09:5bca $ff $fe GFX GFX
    dw   `32222222                                     ;; 09:5bcc $80 $ff GFX GFX
    dw   `03333133                                     ;; 09:5bce $7f $7b GFX GFX
    dw   `00000000                                     ;; 09:5bd0 $00 $00 GFX GFX
    dw   `03333000                                     ;; 09:5bd2 $78 $78 GFX GFX
    dw   `31130333                                     ;; 09:5bd4 $f7 $97 GFX GFX
    dw   `11333223                                     ;; 09:5bd6 $f9 $3f GFX GFX
    dw   `13322230                                     ;; 09:5bd8 $e2 $7e GFX GFX
    dw   `32222300                                     ;; 09:5bda $84 $fc GFX GFX
    dw   `22233000                                     ;; 09:5bdc $18 $f8 GFX GFX
    dw   `33313300                                     ;; 09:5bde $fc $ec GFX GFX
    dw   `00003131                                     ;; 09:5be0 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:5be2 $0f $08 GFX GFX
    dw   `00032333                                     ;; 09:5be4 $17 $1f GFX GFX
    dw   `00003222                                     ;; 09:5be6 $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:5be8 $0f $0f GFX GFX
    dw   `00033123                                     ;; 09:5bea $1d $1b GFX GFX
    dw   `00322223                                     ;; 09:5bec $21 $3f GFX GFX
    dw   `00033233                                     ;; 09:5bee $1b $1f GFX GFX
    dw   `31111130                                     ;; 09:5bf0 $fe $82 GFX GFX
    dw   `33311313                                     ;; 09:5bf2 $ff $e5 GFX GFX
    dw   `22233131                                     ;; 09:5bf4 $1f $fa GFX GFX
    dw   `23322303                                     ;; 09:5bf6 $65 $fd GFX GFX
    dw   `33332230                                     ;; 09:5bf8 $f2 $fe GFX GFX
    dw   `23113223                                     ;; 09:5bfa $79 $cf GFX GFX
    dw   `33113323                                     ;; 09:5bfc $fd $cf GFX GFX
    dw   `33332333                                     ;; 09:5bfe $f7 $ff GFX GFX
    dw   `00333303                                     ;; 09:5c00 $3d $3d GFX GFX
    dw   `00033333                                     ;; 09:5c02 $1f $1f GFX GFX
    dw   `03333333                                     ;; 09:5c04 $7f $7f GFX GFX
    dw   `33333333                                     ;; 09:5c06 $ff $ff GFX GFX
    dw   `30333133                                     ;; 09:5c08 $bf $bb GFX GFX
    dw   `03331333                                     ;; 09:5c0a $7f $77 GFX GFX
    dw   `33331131                                     ;; 09:5c0c $ff $f2 GFX GFX
    dw   `03333111                                     ;; 09:5c0e $7f $78 GFX GFX
    dw   `03033300                                     ;; 09:5c10 $5c $5c GFX GFX
    dw   `33333000                                     ;; 09:5c12 $f8 $f8 GFX GFX
    dw   `33333330                                     ;; 09:5c14 $fe $fe GFX GFX
    dw   `33333333                                     ;; 09:5c16 $ff $ff GFX GFX
    dw   `13133300                                     ;; 09:5c18 $fc $5c GFX GFX
    dw   `13333330                                     ;; 09:5c1a $fe $7e GFX GFX
    dw   `11313333                                     ;; 09:5c1c $ff $2f GFX GFX
    dw   `11133300                                     ;; 09:5c1e $fc $1c GFX GFX
    dw   `33133333                                     ;; 09:5c20 $ff $df GFX GFX
    dw   `31113333                                     ;; 09:5c22 $ff $8f GFX GFX
    dw   `31233333                                     ;; 09:5c24 $df $bf GFX GFX
    dw   `31113333                                     ;; 09:5c26 $ff $8f GFX GFX
    dw   `33113333                                     ;; 09:5c28 $ff $cf GFX GFX
    dw   `03332333                                     ;; 09:5c2a $77 $7f GFX GFX
    dw   `00311113                                     ;; 09:5c2c $3f $21 GFX GFX
    dw   `00333333                                     ;; 09:5c2e $3f $3f GFX GFX
    dw   `33332130                                     ;; 09:5c30 $f6 $fa GFX GFX
    dw   `33333113                                     ;; 09:5c32 $ff $f9 GFX GFX
    dw   `33333213                                     ;; 09:5c34 $fb $fd GFX GFX
    dw   `33333313                                     ;; 09:5c36 $ff $fd GFX GFX
    dw   `33323030                                     ;; 09:5c38 $ea $fa GFX GFX
    dw   `33111300                                     ;; 09:5c3a $fc $c4 GFX GFX
    dw   `03333000                                     ;; 09:5c3c $78 $78 GFX GFX
    dw   `33333330                                     ;; 09:5c3e $fe $fe GFX GFX
    dw   `00333330                                     ;; 09:5c40 $3e $3e GFX GFX
    dw   `00033333                                     ;; 09:5c42 $1f $1f GFX GFX
    dw   `03333233                                     ;; 09:5c44 $7b $7f GFX GFX
    dw   `33332333                                     ;; 09:5c46 $f7 $ff GFX GFX
    dw   `00332323                                     ;; 09:5c48 $35 $3f GFX GFX
    dw   `03333333                                     ;; 09:5c4a $7f $7f GFX GFX
    dw   `33333333                                     ;; 09:5c4c $ff $ff GFX GFX
    dw   `00333333                                     ;; 09:5c4e $3f $3f GFX GFX
    dw   `30333300                                     ;; 09:5c50 $bc $bc GFX GFX
    dw   `33333000                                     ;; 09:5c52 $f8 $f8 GFX GFX
    dw   `33333330                                     ;; 09:5c54 $fe $fe GFX GFX
    dw   `33333333                                     ;; 09:5c56 $ff $ff GFX GFX
    dw   `33333303                                     ;; 09:5c58 $fd $fd GFX GFX
    dw   `33333330                                     ;; 09:5c5a $fe $fe GFX GFX
    dw   `33333333                                     ;; 09:5c5c $ff $ff GFX GFX
    dw   `33333330                                     ;; 09:5c5e $fe $fe GFX GFX
    dw   `03333333                                     ;; 09:5c60 $7f $7f GFX GFX
    dw   `03233333                                     ;; 09:5c62 $5f $7f GFX GFX
    dw   `31123333                                     ;; 09:5c64 $ef $9f GFX GFX
    dw   `31133333                                     ;; 09:5c66 $ff $9f GFX GFX
    dw   `31232333                                     ;; 09:5c68 $d7 $bf GFX GFX
    dw   `03311133                                     ;; 09:5c6a $7f $63 GFX GFX
    dw   `00033330                                     ;; 09:5c6c $1e $1e GFX GFX
    dw   `00333333                                     ;; 09:5c6e $3f $3f GFX GFX
    dw   `33333330                                     ;; 09:5c70 $fe $fe GFX GFX
    dw   `33333223                                     ;; 09:5c72 $f9 $ff GFX GFX
    dw   `33333213                                     ;; 09:5c74 $fb $fd GFX GFX
    dw   `33333313                                     ;; 09:5c76 $ff $fd GFX GFX
    dw   `33333030                                     ;; 09:5c78 $fa $fa GFX GFX
    dw   `33323000                                     ;; 09:5c7a $e8 $f8 GFX GFX
    dw   `31111300                                     ;; 09:5c7c $fc $84 GFX GFX
    dw   `33333330                                     ;; 09:5c7e $fe $fe GFX GFX
    dw   `00032333                                     ;; 09:5c80 $17 $1f GFX GFX
    dw   `03333333                                     ;; 09:5c82 $7f $7f GFX GFX
    dw   `33333333                                     ;; 09:5c84 $ff $ff GFX GFX
    dw   `30333333                                     ;; 09:5c86 $bf $bf GFX GFX
    dw   `03333123                                     ;; 09:5c88 $7d $7b GFX GFX
    dw   `03313331                                     ;; 09:5c8a $7f $6e GFX GFX
    dw   `00311313                                     ;; 09:5c8c $3f $25 GFX GFX
    dw   `03111133                                     ;; 09:5c8e $7f $43 GFX GFX
    dw   `33300000                                     ;; 09:5c90 $e0 $e0 GFX GFX
    dw   `33233300                                     ;; 09:5c92 $dc $fc GFX GFX
    dw   `33333330                                     ;; 09:5c94 $fe $fe GFX GFX
    dw   `33330030                                     ;; 09:5c96 $f2 $f2 GFX GFX
    dw   `33333300                                     ;; 09:5c98 $fc $fc GFX GFX
    dw   `33333330                                     ;; 09:5c9a $fe $fe GFX GFX
    dw   `33333330                                     ;; 09:5c9c $fe $fe GFX GFX
    dw   `33333333                                     ;; 09:5c9e $ff $ff GFX GFX
    dw   `00333333                                     ;; 09:5ca0 $3f $3f GFX GFX
    dw   `03333333                                     ;; 09:5ca2 $7f $7f GFX GFX
    dw   `03333333                                     ;; 09:5ca4 $7f $7f GFX GFX
    dw   `03333331                                     ;; 09:5ca6 $7f $7e GFX GFX
    dw   `03333331                                     ;; 09:5ca8 $7f $7e GFX GFX
    dw   `00333333                                     ;; 09:5caa $3f $3f GFX GFX
    dw   `00003311                                     ;; 09:5cac $0f $0c GFX GFX
    dw   `00033333                                     ;; 09:5cae $1f $1f GFX GFX
    dw   `33333333                                     ;; 09:5cb0 $ff $ff GFX GFX
    dw   `22333303                                     ;; 09:5cb2 $3d $fd GFX GFX
    dw   `11333330                                     ;; 09:5cb4 $fe $3e GFX GFX
    dw   `11333330                                     ;; 09:5cb6 $fe $3e GFX GFX
    dw   `13333030                                     ;; 09:5cb8 $fa $7a GFX GFX
    dw   `32333300                                     ;; 09:5cba $bc $fc GFX GFX
    dw   `11130000                                     ;; 09:5cbc $f0 $10 GFX GFX
    dw   `33333300                                     ;; 09:5cbe $fc $fc GFX GFX
    dw   `00000000                                     ;; 09:5cc0 $00 $00 GFX GFX
    dw   `00032333                                     ;; 09:5cc2 $17 $1f GFX GFX
    dw   `03333333                                     ;; 09:5cc4 $7f $7f GFX GFX
    dw   `33333333                                     ;; 09:5cc6 $ff $ff GFX GFX
    dw   `30333333                                     ;; 09:5cc8 $bf $bf GFX GFX
    dw   `03333123                                     ;; 09:5cca $7d $7b GFX GFX
    dw   `03313331                                     ;; 09:5ccc $7f $6e GFX GFX
    dw   `00311313                                     ;; 09:5cce $3f $25 GFX GFX
    dw   `00000000                                     ;; 09:5cd0 $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:5cd2 $e0 $e0 GFX GFX
    dw   `33233300                                     ;; 09:5cd4 $dc $fc GFX GFX
    dw   `33333330                                     ;; 09:5cd6 $fe $fe GFX GFX
    dw   `33330030                                     ;; 09:5cd8 $f2 $f2 GFX GFX
    dw   `33333300                                     ;; 09:5cda $fc $fc GFX GFX
    dw   `33333330                                     ;; 09:5cdc $fe $fe GFX GFX
    dw   `33333330                                     ;; 09:5cde $fe $fe GFX GFX
    dw   `03111133                                     ;; 09:5ce0 $7f $43 GFX GFX
    dw   `00333333                                     ;; 09:5ce2 $3f $3f GFX GFX
    dw   `03333333                                     ;; 09:5ce4 $7f $7f GFX GFX
    dw   `03333333                                     ;; 09:5ce6 $7f $7f GFX GFX
    dw   `31333333                                     ;; 09:5ce8 $ff $bf GFX GFX
    dw   `31123333                                     ;; 09:5cea $ef $9f GFX GFX
    dw   `03130333                                     ;; 09:5cec $77 $57 GFX GFX
    dw   `03333333                                     ;; 09:5cee $7f $7f GFX GFX
    dw   `33333333                                     ;; 09:5cf0 $ff $ff GFX GFX
    dw   `32333333                                     ;; 09:5cf2 $bf $ff GFX GFX
    dw   `21133303                                     ;; 09:5cf4 $7d $9d GFX GFX
    dw   `31133330                                     ;; 09:5cf6 $fe $9e GFX GFX
    dw   `11133230                                     ;; 09:5cf8 $fa $1e GFX GFX
    dw   `11332130                                     ;; 09:5cfa $f6 $3a GFX GFX
    dw   `33311300                                     ;; 09:5cfc $fc $e4 GFX GFX
    dw   `33333330                                     ;; 09:5cfe $fe $fe GFX GFX
    dw   `00000033                                     ;; 09:5d00 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:5d02 $04 $07 GFX GFX
    dw   `00003133                                     ;; 09:5d04 $0f $0b GFX GFX
    dw   `00003312                                     ;; 09:5d06 $0e $0d GFX GFX
    dw   `00032332                                     ;; 09:5d08 $16 $1f GFX GFX
    dw   `00332313                                     ;; 09:5d0a $37 $3d GFX GFX
    dw   `03233313                                     ;; 09:5d0c $5f $7d GFX GFX
    dw   `31123233                                     ;; 09:5d0e $eb $9f GFX GFX
    dw   `33000000                                     ;; 09:5d10 $c0 $c0 GFX GFX
    dw   `32300000                                     ;; 09:5d12 $a0 $e0 GFX GFX
    dw   `33230000                                     ;; 09:5d14 $d0 $f0 GFX GFX
    dw   `22330000                                     ;; 09:5d16 $30 $f0 GFX GFX
    dw   `23323000                                     ;; 09:5d18 $68 $f8 GFX GFX
    dw   `31323300                                     ;; 09:5d1a $ec $bc GFX GFX
    dw   `31333230                                     ;; 09:5d1c $fa $be GFX GFX
    dw   `33232113                                     ;; 09:5d1e $d7 $f9 GFX GFX
    dw   `33311333                                     ;; 09:5d20 $ff $e7 GFX GFX
    dw   `03233232                                     ;; 09:5d22 $5a $7f GFX GFX
    dw   `31223223                                     ;; 09:5d24 $c9 $bf GFX GFX
    dw   `31133321                                     ;; 09:5d26 $fd $9e GFX GFX
    dw   `03333222                                     ;; 09:5d28 $78 $7f GFX GFX
    dw   `32333222                                     ;; 09:5d2a $b8 $ff GFX GFX
    dw   `32300322                                     ;; 09:5d2c $a4 $e7 GFX GFX
    dw   `33003333                                     ;; 09:5d2e $cf $cf GFX GFX
    dw   `33313333                                     ;; 09:5d30 $ff $ef GFX GFX
    dw   `23231130                                     ;; 09:5d32 $5e $f2 GFX GFX
    dw   `32231130                                     ;; 09:5d34 $9e $f2 GFX GFX
    dw   `12333323                                     ;; 09:5d36 $bd $7f GFX GFX
    dw   `33233323                                     ;; 09:5d38 $dd $ff GFX GFX
    dw   `32330323                                     ;; 09:5d3a $b5 $f7 GFX GFX
    dw   `33300030                                     ;; 09:5d3c $e2 $e2 GFX GFX
    dw   `33330000                                     ;; 09:5d3e $f0 $f0 GFX GFX
    dw   `00000033                                     ;; 09:5d40 $03 $03 GFX GFX
    dw   `00000312                                     ;; 09:5d42 $06 $05 GFX GFX
    dw   `00003122                                     ;; 09:5d44 $0c $0b GFX GFX
    dw   `00003322                                     ;; 09:5d46 $0c $0f GFX GFX
    dw   `00032333                                     ;; 09:5d48 $17 $1f GFX GFX
    dw   `00332311                                     ;; 09:5d4a $37 $3c GFX GFX
    dw   `03113122                                     ;; 09:5d4c $7c $4b GFX GFX
    dw   `31222323                                     ;; 09:5d4e $c5 $bf GFX GFX
    dw   `33000000                                     ;; 09:5d50 $c0 $c0 GFX GFX
    dw   `32300000                                     ;; 09:5d52 $a0 $e0 GFX GFX
    dw   `32230000                                     ;; 09:5d54 $90 $f0 GFX GFX
    dw   `32330000                                     ;; 09:5d56 $b0 $f0 GFX GFX
    dw   `33323000                                     ;; 09:5d58 $e8 $f8 GFX GFX
    dw   `11323300                                     ;; 09:5d5a $ec $3c GFX GFX
    dw   `22131130                                     ;; 09:5d5c $3e $d2 GFX GFX
    dw   `32322213                                     ;; 09:5d5e $a3 $fd GFX GFX
    dw   `03322332                                     ;; 09:5d60 $66 $7f GFX GFX
    dw   `03233222                                     ;; 09:5d62 $58 $7f GFX GFX
    dw   `03222322                                     ;; 09:5d64 $44 $7f GFX GFX
    dw   `32222233                                     ;; 09:5d66 $83 $ff GFX GFX
    dw   `32222222                                     ;; 09:5d68 $80 $ff GFX GFX
    dw   `32333222                                     ;; 09:5d6a $b8 $ff GFX GFX
    dw   `33333322                                     ;; 09:5d6c $fc $ff GFX GFX
    dw   `33333333                                     ;; 09:5d6e $ff $ff GFX GFX
    dw   `23322330                                     ;; 09:5d70 $66 $fe GFX GFX
    dw   `22233230                                     ;; 09:5d72 $1a $fe GFX GFX
    dw   `22322230                                     ;; 09:5d74 $22 $fe GFX GFX
    dw   `33232223                                     ;; 09:5d76 $d1 $ff GFX GFX
    dw   `22322223                                     ;; 09:5d78 $21 $ff GFX GFX
    dw   `33222223                                     ;; 09:5d7a $c1 $ff GFX GFX
    dw   `22222330                                     ;; 09:5d7c $06 $fe GFX GFX
    dw   `33333333                                     ;; 09:5d7e $ff $ff GFX GFX
    dw   `00000333                                     ;; 09:5d80 $07 $07 GFX GFX
    dw   `00003122                                     ;; 09:5d82 $0c $0b GFX GFX
    dw   `00031333                                     ;; 09:5d84 $1f $17 GFX GFX
    dw   `00032222                                     ;; 09:5d86 $10 $1f GFX GFX
    dw   `00032333                                     ;; 09:5d88 $17 $1f GFX GFX
    dw   `00033133                                     ;; 09:5d8a $1f $1b GFX GFX
    dw   `00003133                                     ;; 09:5d8c $0f $0b GFX GFX
    dw   `00003333                                     ;; 09:5d8e $0f $0f GFX GFX
    dw   `33000000                                     ;; 09:5d90 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:5d92 $60 $e0 GFX GFX
    dw   `33230000                                     ;; 09:5d94 $d0 $f0 GFX GFX
    dw   `32230000                                     ;; 09:5d96 $90 $f0 GFX GFX
    dw   `23230000                                     ;; 09:5d98 $50 $f0 GFX GFX
    dw   `22333000                                     ;; 09:5d9a $38 $f8 GFX GFX
    dw   `23323000                                     ;; 09:5d9c $68 $f8 GFX GFX
    dw   `32221300                                     ;; 09:5d9e $8c $f4 GFX GFX
    dw   `00003323                                     ;; 09:5da0 $0d $0f GFX GFX
    dw   `00003231                                     ;; 09:5da2 $0b $0e GFX GFX
    dw   `00000323                                     ;; 09:5da4 $05 $07 GFX GFX
    dw   `00003231                                     ;; 09:5da6 $0b $0e GFX GFX
    dw   `00003231                                     ;; 09:5da8 $0b $0e GFX GFX
    dw   `00000323                                     ;; 09:5daa $05 $07 GFX GFX
    dw   `00003222                                     ;; 09:5dac $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:5dae $0f $0f GFX GFX
    dw   `11111300                                     ;; 09:5db0 $fc $04 GFX GFX
    dw   `23333300                                     ;; 09:5db2 $7c $fc GFX GFX
    dw   `33230000                                     ;; 09:5db4 $d0 $f0 GFX GFX
    dw   `13230000                                     ;; 09:5db6 $d0 $70 GFX GFX
    dw   `13223000                                     ;; 09:5db8 $c8 $78 GFX GFX
    dw   `33223000                                     ;; 09:5dba $c8 $f8 GFX GFX
    dw   `23322300                                     ;; 09:5dbc $64 $fc GFX GFX
    dw   `33333300                                     ;; 09:5dbe $fc $fc GFX GFX
    dw   `00000000                                     ;; 09:5dc0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:5dc2 $07 $07 GFX GFX
    dw   `00003122                                     ;; 09:5dc4 $0c $0b GFX GFX
    dw   `00031333                                     ;; 09:5dc6 $1f $17 GFX GFX
    dw   `00032222                                     ;; 09:5dc8 $10 $1f GFX GFX
    dw   `00032333                                     ;; 09:5dca $17 $1f GFX GFX
    dw   `00033133                                     ;; 09:5dcc $1f $1b GFX GFX
    dw   `00003133                                     ;; 09:5dce $0f $0b GFX GFX
    dw   `00000000                                     ;; 09:5dd0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:5dd2 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:5dd4 $60 $e0 GFX GFX
    dw   `33230000                                     ;; 09:5dd6 $d0 $f0 GFX GFX
    dw   `32230000                                     ;; 09:5dd8 $90 $f0 GFX GFX
    dw   `23230000                                     ;; 09:5dda $50 $f0 GFX GFX
    dw   `22333000                                     ;; 09:5ddc $38 $f8 GFX GFX
    dw   `23323000                                     ;; 09:5dde $68 $f8 GFX GFX
    dw   `00003333                                     ;; 09:5de0 $0f $0f GFX GFX
    dw   `00003323                                     ;; 09:5de2 $0d $0f GFX GFX
    dw   `00003231                                     ;; 09:5de4 $0b $0e GFX GFX
    dw   `00003323                                     ;; 09:5de6 $0d $0f GFX GFX
    dw   `00033223                                     ;; 09:5de8 $19 $1f GFX GFX
    dw   `00322333                                     ;; 09:5dea $27 $3f GFX GFX
    dw   `00032233                                     ;; 09:5dec $13 $1f GFX GFX
    dw   `00033333                                     ;; 09:5dee $1f $1f GFX GFX
    dw   `32221300                                     ;; 09:5df0 $8c $f4 GFX GFX
    dw   `11111300                                     ;; 09:5df2 $fc $04 GFX GFX
    dw   `23333300                                     ;; 09:5df4 $7c $fc GFX GFX
    dw   `33230000                                     ;; 09:5df6 $d0 $f0 GFX GFX
    dw   `11323000                                     ;; 09:5df8 $e8 $38 GFX GFX
    dw   `11322300                                     ;; 09:5dfa $e4 $3c GFX GFX
    dw   `33322230                                     ;; 09:5dfc $e2 $fe GFX GFX
    dw   `33333333                                     ;; 09:5dfe $ff $ff GFX GFX
    dw   `00033333                                     ;; 09:5e00 $1f $1f GFX GFX
    dw   `00322223                                     ;; 09:5e02 $21 $3f GFX GFX
    dw   `00032222                                     ;; 09:5e04 $10 $1f GFX GFX
    dw   `00322222                                     ;; 09:5e06 $20 $3f GFX GFX
    dw   `00323122                                     ;; 09:5e08 $2c $3b GFX GFX
    dw   `00323112                                     ;; 09:5e0a $2e $39 GFX GFX
    dw   `00033331                                     ;; 09:5e0c $1f $1e GFX GFX
    dw   `00333131                                     ;; 09:5e0e $3f $3a GFX GFX
    dw   `33300000                                     ;; 09:5e10 $e0 $e0 GFX GFX
    dw   `11130000                                     ;; 09:5e12 $f0 $10 GFX GFX
    dw   `31113000                                     ;; 09:5e14 $f8 $88 GFX GFX
    dw   `23313000                                     ;; 09:5e16 $78 $e8 GFX GFX
    dw   `22313300                                     ;; 09:5e18 $3c $ec GFX GFX
    dw   `12231130                                     ;; 09:5e1a $9e $72 GFX GFX
    dw   `33333300                                     ;; 09:5e1c $fc $fc GFX GFX
    dw   `13133300                                     ;; 09:5e1e $fc $5c GFX GFX
    dw   `03212311                                     ;; 09:5e20 $57 $6c GFX GFX
    dw   `31123233                                     ;; 09:5e22 $eb $9f GFX GFX
    dw   `31133222                                     ;; 09:5e24 $f8 $9f GFX GFX
    dw   `03300322                                     ;; 09:5e26 $64 $67 GFX GFX
    dw   `00003133                                     ;; 09:5e28 $0f $0b GFX GFX
    dw   `00003223                                     ;; 09:5e2a $09 $0f GFX GFX
    dw   `00000333                                     ;; 09:5e2c $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:5e2e $1f $1f GFX GFX
    dw   `11321130                                     ;; 09:5e30 $ee $32 GFX GFX
    dw   `33211223                                     ;; 09:5e32 $d9 $e7 GFX GFX
    dw   `22233113                                     ;; 09:5e34 $1f $f9 GFX GFX
    dw   `22303113                                     ;; 09:5e36 $2f $e9 GFX GFX
    dw   `11130330                                     ;; 09:5e38 $f6 $16 GFX GFX
    dw   `22230000                                     ;; 09:5e3a $10 $f0 GFX GFX
    dw   `22330000                                     ;; 09:5e3c $30 $f0 GFX GFX
    dw   `33333000                                     ;; 09:5e3e $f8 $f8 GFX GFX
    dw   `00033333                                     ;; 09:5e40 $1f $1f GFX GFX
    dw   `00323111                                     ;; 09:5e42 $2f $38 GFX GFX
    dw   `03331111                                     ;; 09:5e44 $7f $70 GFX GFX
    dw   `00031111                                     ;; 09:5e46 $1f $10 GFX GFX
    dw   `00031111                                     ;; 09:5e48 $1f $10 GFX GFX
    dw   `00031111                                     ;; 09:5e4a $1f $10 GFX GFX
    dw   `00003111                                     ;; 09:5e4c $0f $08 GFX GFX
    dw   `00033331                                     ;; 09:5e4e $1f $1e GFX GFX
    dw   `33300000                                     ;; 09:5e50 $e0 $e0 GFX GFX
    dw   `11130000                                     ;; 09:5e52 $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:5e54 $f8 $08 GFX GFX
    dw   `11113000                                     ;; 09:5e56 $f8 $08 GFX GFX
    dw   `11113000                                     ;; 09:5e58 $f8 $08 GFX GFX
    dw   `11213300                                     ;; 09:5e5a $dc $2c GFX GFX
    dw   `22131130                                     ;; 09:5e5c $3e $d2 GFX GFX
    dw   `11313300                                     ;; 09:5e5e $fc $2c GFX GFX
    dw   `00312233                                     ;; 09:5e60 $33 $2f GFX GFX
    dw   `03213222                                     ;; 09:5e62 $58 $6f GFX GFX
    dw   `03133222                                     ;; 09:5e64 $78 $5f GFX GFX
    dw   `00300322                                     ;; 09:5e66 $24 $27 GFX GFX
    dw   `00003122                                     ;; 09:5e68 $0c $0b GFX GFX
    dw   `00003211                                     ;; 09:5e6a $0b $0c GFX GFX
    dw   `00000322                                     ;; 09:5e6c $04 $07 GFX GFX
    dw   `03333333                                     ;; 09:5e6e $7f $7f GFX GFX
    dw   `33221130                                     ;; 09:5e70 $ce $f2 GFX GFX
    dw   `22221223                                     ;; 09:5e72 $09 $f7 GFX GFX
    dw   `22233113                                     ;; 09:5e74 $1f $f9 GFX GFX
    dw   `22303113                                     ;; 09:5e76 $2f $e9 GFX GFX
    dw   `33300330                                     ;; 09:5e78 $e6 $e6 GFX GFX
    dw   `32230000                                     ;; 09:5e7a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:5e7c $e0 $e0 GFX GFX
    dw   `33333300                                     ;; 09:5e7e $fc $fc GFX GFX
    dw   `00333303                                     ;; 09:5e80 $3d $3d GFX GFX
    dw   `03222231                                     ;; 09:5e82 $43 $7e GFX GFX
    dw   `00332223                                     ;; 09:5e84 $31 $3f GFX GFX
    dw   `03222222                                     ;; 09:5e86 $40 $7f GFX GFX
    dw   `03232132                                     ;; 09:5e88 $56 $7b GFX GFX
    dw   `00333312                                     ;; 09:5e8a $3e $3d GFX GFX
    dw   `00031311                                     ;; 09:5e8c $1f $14 GFX GFX
    dw   `00031111                                     ;; 09:5e8e $1f $10 GFX GFX
    dw   `33000000                                     ;; 09:5e90 $c0 $c0 GFX GFX
    dw   `11300000                                     ;; 09:5e92 $e0 $20 GFX GFX
    dw   `11130000                                     ;; 09:5e94 $f0 $10 GFX GFX
    dw   `31130000                                     ;; 09:5e96 $f0 $90 GFX GFX
    dw   `23133000                                     ;; 09:5e98 $78 $d8 GFX GFX
    dw   `13131300                                     ;; 09:5e9a $fc $54 GFX GFX
    dw   `12313000                                     ;; 09:5e9c $b8 $68 GFX GFX
    dw   `32331300                                     ;; 09:5e9e $bc $f4 GFX GFX
    dw   `00031113                                     ;; 09:5ea0 $1f $11 GFX GFX
    dw   `00003333                                     ;; 09:5ea2 $0f $0f GFX GFX
    dw   `00003223                                     ;; 09:5ea4 $09 $0f GFX GFX
    dw   `00003231                                     ;; 09:5ea6 $0b $0e GFX GFX
    dw   `00003231                                     ;; 09:5ea8 $0b $0e GFX GFX
    dw   `00000313                                     ;; 09:5eaa $07 $05 GFX GFX
    dw   `00003222                                     ;; 09:5eac $08 $0f GFX GFX
    dw   `00333333                                     ;; 09:5eae $3f $3f GFX GFX
    dw   `32233000                                     ;; 09:5eb0 $98 $f8 GFX GFX
    dw   `23323000                                     ;; 09:5eb2 $68 $f8 GFX GFX
    dw   `31130000                                     ;; 09:5eb4 $f0 $90 GFX GFX
    dw   `13130000                                     ;; 09:5eb6 $f0 $50 GFX GFX
    dw   `13300000                                     ;; 09:5eb8 $e0 $60 GFX GFX
    dw   `33000000                                     ;; 09:5eba $c0 $c0 GFX GFX
    dw   `23000000                                     ;; 09:5ebc $40 $c0 GFX GFX
    dw   `33333000                                     ;; 09:5ebe $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:5ec0 $00 $00 GFX GFX
    dw   `00333303                                     ;; 09:5ec2 $3d $3d GFX GFX
    dw   `03222231                                     ;; 09:5ec4 $43 $7e GFX GFX
    dw   `00332223                                     ;; 09:5ec6 $31 $3f GFX GFX
    dw   `03222222                                     ;; 09:5ec8 $40 $7f GFX GFX
    dw   `03232132                                     ;; 09:5eca $56 $7b GFX GFX
    dw   `00333312                                     ;; 09:5ecc $3e $3d GFX GFX
    dw   `00031311                                     ;; 09:5ece $1f $14 GFX GFX
    dw   `00000000                                     ;; 09:5ed0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:5ed2 $c0 $c0 GFX GFX
    dw   `11300000                                     ;; 09:5ed4 $e0 $20 GFX GFX
    dw   `11130000                                     ;; 09:5ed6 $f0 $10 GFX GFX
    dw   `31130000                                     ;; 09:5ed8 $f0 $90 GFX GFX
    dw   `23133000                                     ;; 09:5eda $78 $d8 GFX GFX
    dw   `13131300                                     ;; 09:5edc $fc $54 GFX GFX
    dw   `12313000                                     ;; 09:5ede $b8 $68 GFX GFX
    dw   `00031111                                     ;; 09:5ee0 $1f $10 GFX GFX
    dw   `00031113                                     ;; 09:5ee2 $1f $11 GFX GFX
    dw   `00323333                                     ;; 09:5ee4 $2f $3f GFX GFX
    dw   `00313232                                     ;; 09:5ee6 $3a $2f GFX GFX
    dw   `00033322                                     ;; 09:5ee8 $1c $1f GFX GFX
    dw   `00322132                                     ;; 09:5eea $26 $3b GFX GFX
    dw   `00032233                                     ;; 09:5eec $13 $1f GFX GFX
    dw   `03333333                                     ;; 09:5eee $7f $7f GFX GFX
    dw   `32331300                                     ;; 09:5ef0 $bc $f4 GFX GFX
    dw   `33223000                                     ;; 09:5ef2 $c8 $f8 GFX GFX
    dw   `32113000                                     ;; 09:5ef4 $b8 $c8 GFX GFX
    dw   `23131300                                     ;; 09:5ef6 $7c $d4 GFX GFX
    dw   `23311300                                     ;; 09:5ef8 $7c $e4 GFX GFX
    dw   `33333000                                     ;; 09:5efa $f8 $f8 GFX GFX
    dw   `32230000                                     ;; 09:5efc $90 $f0 GFX GFX
    dw   `33333330                                     ;; 09:5efe $fe $fe GFX GFX
    dw   `00000333                                     ;; 09:5f00 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:5f02 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:5f04 $10 $1f GFX GFX
    dw   `00032232                                     ;; 09:5f06 $12 $1f GFX GFX
    dw   `00032233                                     ;; 09:5f08 $13 $1f GFX GFX
    dw   `00032311                                     ;; 09:5f0a $17 $1c GFX GFX
    dw   `00003131                                     ;; 09:5f0c $0f $0a GFX GFX
    dw   `00033131                                     ;; 09:5f0e $1f $1a GFX GFX
    dw   `33300000                                     ;; 09:5f10 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5f12 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5f14 $08 $f8 GFX GFX
    dw   `22233000                                     ;; 09:5f16 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:5f18 $04 $fc GFX GFX
    dw   `33323000                                     ;; 09:5f1a $e8 $f8 GFX GFX
    dw   `13130000                                     ;; 09:5f1c $f0 $50 GFX GFX
    dw   `13133000                                     ;; 09:5f1e $f8 $58 GFX GFX
    dw   `00322311                                     ;; 09:5f20 $27 $3c GFX GFX
    dw   `00332233                                     ;; 09:5f22 $33 $3f GFX GFX
    dw   `03113222                                     ;; 09:5f24 $78 $4f GFX GFX
    dw   `03113331                                     ;; 09:5f26 $7f $4e GFX GFX
    dw   `00333222                                     ;; 09:5f28 $38 $3f GFX GFX
    dw   `00003333                                     ;; 09:5f2a $0f $0f GFX GFX
    dw   `00003111                                     ;; 09:5f2c $0f $08 GFX GFX
    dw   `00000322                                     ;; 09:5f2e $04 $07 GFX GFX
    dw   `11332300                                     ;; 09:5f30 $f4 $3c GFX GFX
    dw   `33311300                                     ;; 09:5f32 $fc $e4 GFX GFX
    dw   `22311300                                     ;; 09:5f34 $3c $e4 GFX GFX
    dw   `13233000                                     ;; 09:5f36 $d8 $78 GFX GFX
    dw   `23330000                                     ;; 09:5f38 $70 $f0 GFX GFX
    dw   `32230000                                     ;; 09:5f3a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:5f3c $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:5f3e $f8 $f8 GFX GFX
    dw   `00000333                                     ;; 09:5f40 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:5f42 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:5f44 $10 $1f GFX GFX
    dw   `00033222                                     ;; 09:5f46 $18 $1f GFX GFX
    dw   `00322222                                     ;; 09:5f48 $20 $3f GFX GFX
    dw   `00032222                                     ;; 09:5f4a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:5f4c $08 $0f GFX GFX
    dw   `00033122                                     ;; 09:5f4e $1c $1b GFX GFX
    dw   `33300000                                     ;; 09:5f50 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5f52 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5f54 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5f56 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5f58 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5f5a $08 $f8 GFX GFX
    dw   `22230000                                     ;; 09:5f5c $10 $f0 GFX GFX
    dw   `22133000                                     ;; 09:5f5e $38 $d8 GFX GFX
    dw   `00322311                                     ;; 09:5f60 $27 $3c GFX GFX
    dw   `00332233                                     ;; 09:5f62 $33 $3f GFX GFX
    dw   `00313222                                     ;; 09:5f64 $38 $2f GFX GFX
    dw   `00033333                                     ;; 09:5f66 $1f $1f GFX GFX
    dw   `00003222                                     ;; 09:5f68 $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:5f6a $0f $0f GFX GFX
    dw   `00003111                                     ;; 09:5f6c $0f $08 GFX GFX
    dw   `00000322                                     ;; 09:5f6e $04 $07 GFX GFX
    dw   `11332300                                     ;; 09:5f70 $f4 $3c GFX GFX
    dw   `33223300                                     ;; 09:5f72 $cc $fc GFX GFX
    dw   `22231130                                     ;; 09:5f74 $1e $f2 GFX GFX
    dw   `33231130                                     ;; 09:5f76 $de $f2 GFX GFX
    dw   `23333300                                     ;; 09:5f78 $7c $fc GFX GFX
    dw   `32230000                                     ;; 09:5f7a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:5f7c $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:5f7e $f8 $f8 GFX GFX
    dw   `00000333                                     ;; 09:5f80 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:5f82 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:5f84 $10 $1f GFX GFX
    dw   `00032322                                     ;; 09:5f86 $14 $1f GFX GFX
    dw   `00322322                                     ;; 09:5f88 $24 $3f GFX GFX
    dw   `00033133                                     ;; 09:5f8a $1f $1b GFX GFX
    dw   `00003131                                     ;; 09:5f8c $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:5f8e $0f $0a GFX GFX
    dw   `33300000                                     ;; 09:5f90 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5f92 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5f94 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5f96 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5f98 $08 $f8 GFX GFX
    dw   `23223000                                     ;; 09:5f9a $48 $f8 GFX GFX
    dw   `31323000                                     ;; 09:5f9c $e8 $b8 GFX GFX
    dw   `11330000                                     ;; 09:5f9e $f0 $30 GFX GFX
    dw   `00003111                                     ;; 09:5fa0 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:5fa2 $07 $07 GFX GFX
    dw   `00000322                                     ;; 09:5fa4 $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:5fa6 $07 $07 GFX GFX
    dw   `00000323                                     ;; 09:5fa8 $05 $07 GFX GFX
    dw   `00000033                                     ;; 09:5faa $03 $03 GFX GFX
    dw   `00000031                                     ;; 09:5fac $03 $02 GFX GFX
    dw   `00000322                                     ;; 09:5fae $04 $07 GFX GFX
    dw   `13330000                                     ;; 09:5fb0 $f0 $70 GFX GFX
    dw   `22230000                                     ;; 09:5fb2 $10 $f0 GFX GFX
    dw   `31130000                                     ;; 09:5fb4 $f0 $90 GFX GFX
    dw   `11130000                                     ;; 09:5fb6 $f0 $10 GFX GFX
    dw   `11300000                                     ;; 09:5fb8 $e0 $20 GFX GFX
    dw   `33300000                                     ;; 09:5fba $e0 $e0 GFX GFX
    dw   `11300000                                     ;; 09:5fbc $e0 $20 GFX GFX
    dw   `22300000                                     ;; 09:5fbe $20 $e0 GFX GFX
    dw   `00000000                                     ;; 09:5fc0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:5fc2 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:5fc4 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:5fc6 $10 $1f GFX GFX
    dw   `00032322                                     ;; 09:5fc8 $14 $1f GFX GFX
    dw   `00322322                                     ;; 09:5fca $24 $3f GFX GFX
    dw   `00033133                                     ;; 09:5fcc $1f $1b GFX GFX
    dw   `00003131                                     ;; 09:5fce $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:5fd0 $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:5fd2 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:5fd4 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:5fd6 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5fd8 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:5fda $08 $f8 GFX GFX
    dw   `23223000                                     ;; 09:5fdc $48 $f8 GFX GFX
    dw   `31323000                                     ;; 09:5fde $e8 $b8 GFX GFX
    dw   `00003131                                     ;; 09:5fe0 $0f $0a GFX GFX
    dw   `00333111                                     ;; 09:5fe2 $3f $38 GFX GFX
    dw   `03113333                                     ;; 09:5fe4 $7f $4f GFX GFX
    dw   `03113322                                     ;; 09:5fe6 $7c $4f GFX GFX
    dw   `00333232                                     ;; 09:5fe8 $3a $3f GFX GFX
    dw   `00322213                                     ;; 09:5fea $23 $3d GFX GFX
    dw   `00032233                                     ;; 09:5fec $13 $1f GFX GFX
    dw   `03333333                                     ;; 09:5fee $7f $7f GFX GFX
    dw   `11330000                                     ;; 09:5ff0 $f0 $30 GFX GFX
    dw   `13330000                                     ;; 09:5ff2 $f0 $70 GFX GFX
    dw   `33113000                                     ;; 09:5ff4 $f8 $c8 GFX GFX
    dw   `23111300                                     ;; 09:5ff6 $7c $c4 GFX GFX
    dw   `21311300                                     ;; 09:5ff8 $7c $a4 GFX GFX
    dw   `12233000                                     ;; 09:5ffa $98 $78 GFX GFX
    dw   `32223000                                     ;; 09:5ffc $88 $f8 GFX GFX
    dw   `33333300                                     ;; 09:5ffe $fc $fc GFX GFX
    dw   `00000033                                     ;; 09:6000 $03 $03 GFX GFX
    dw   `00000312                                     ;; 09:6002 $06 $05 GFX GFX
    dw   `00003122                                     ;; 09:6004 $0c $0b GFX GFX
    dw   `00031232                                     ;; 09:6006 $1a $17 GFX GFX
    dw   `00032313                                     ;; 09:6008 $17 $1d GFX GFX
    dw   `00312311                                     ;; 09:600a $37 $2c GFX GFX
    dw   `00323131                                     ;; 09:600c $2f $3a GFX GFX
    dw   `00323131                                     ;; 09:600e $2f $3a GFX GFX
    dw   `33000000                                     ;; 09:6010 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6012 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6014 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6016 $08 $f8 GFX GFX
    dw   `23223000                                     ;; 09:6018 $48 $f8 GFX GFX
    dw   `32322300                                     ;; 09:601a $a4 $fc GFX GFX
    dw   `13132300                                     ;; 09:601c $f4 $5c GFX GFX
    dw   `13132300                                     ;; 09:601e $f4 $5c GFX GFX
    dw   `00323311                                     ;; 09:6020 $2f $3c GFX GFX
    dw   `00032133                                     ;; 09:6022 $17 $1b GFX GFX
    dw   `00312211                                     ;; 09:6024 $33 $2c GFX GFX
    dw   `03112322                                     ;; 09:6026 $74 $4f GFX GFX
    dw   `03133222                                     ;; 09:6028 $78 $5f GFX GFX
    dw   `00322233                                     ;; 09:602a $23 $3f GFX GFX
    dw   `00032311                                     ;; 09:602c $17 $1c GFX GFX
    dw   `00333333                                     ;; 09:602e $3f $3f GFX GFX
    dw   `11332300                                     ;; 09:6030 $f4 $3c GFX GFX
    dw   `33133000                                     ;; 09:6032 $f8 $d8 GFX GFX
    dw   `11311300                                     ;; 09:6034 $fc $24 GFX GFX
    dw   `22311300                                     ;; 09:6036 $3c $e4 GFX GFX
    dw   `22233000                                     ;; 09:6038 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:603a $04 $fc GFX GFX
    dw   `32223000                                     ;; 09:603c $88 $f8 GFX GFX
    dw   `33333300                                     ;; 09:603e $fc $fc GFX GFX
    dw   `00000033                                     ;; 09:6040 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:6042 $07 $04 GFX GFX
    dw   `00003122                                     ;; 09:6044 $0c $0b GFX GFX
    dw   `00031222                                     ;; 09:6046 $18 $17 GFX GFX
    dw   `00031222                                     ;; 09:6048 $18 $17 GFX GFX
    dw   `00312222                                     ;; 09:604a $30 $2f GFX GFX
    dw   `00312222                                     ;; 09:604c $30 $2f GFX GFX
    dw   `00322222                                     ;; 09:604e $20 $3f GFX GFX
    dw   `33000000                                     ;; 09:6050 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6052 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6054 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6056 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:6058 $08 $f8 GFX GFX
    dw   `22222300                                     ;; 09:605a $04 $fc GFX GFX
    dw   `22222300                                     ;; 09:605c $04 $fc GFX GFX
    dw   `22222300                                     ;; 09:605e $04 $fc GFX GFX
    dw   `00322322                                     ;; 09:6060 $24 $3f GFX GFX
    dw   `00032232                                     ;; 09:6062 $12 $1f GFX GFX
    dw   `00313333                                     ;; 09:6064 $3f $2f GFX GFX
    dw   `03112322                                     ;; 09:6066 $74 $4f GFX GFX
    dw   `03133222                                     ;; 09:6068 $78 $5f GFX GFX
    dw   `00322233                                     ;; 09:606a $23 $3f GFX GFX
    dw   `00032311                                     ;; 09:606c $17 $1c GFX GFX
    dw   `00333333                                     ;; 09:606e $3f $3f GFX GFX
    dw   `22232300                                     ;; 09:6070 $14 $fc GFX GFX
    dw   `32323000                                     ;; 09:6072 $a8 $f8 GFX GFX
    dw   `33332300                                     ;; 09:6074 $f4 $fc GFX GFX
    dw   `22321300                                     ;; 09:6076 $2c $f4 GFX GFX
    dw   `22233000                                     ;; 09:6078 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:607a $04 $fc GFX GFX
    dw   `32223000                                     ;; 09:607c $88 $f8 GFX GFX
    dw   `33333300                                     ;; 09:607e $fc $fc GFX GFX
    dw   `00000333                                     ;; 09:6080 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:6082 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:6084 $10 $1f GFX GFX
    dw   `00032322                                     ;; 09:6086 $14 $1f GFX GFX
    dw   `00032322                                     ;; 09:6088 $14 $1f GFX GFX
    dw   `00003133                                     ;; 09:608a $0f $0b GFX GFX
    dw   `00003131                                     ;; 09:608c $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:608e $0f $0a GFX GFX
    dw   `33300000                                     ;; 09:6090 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6092 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6094 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:6096 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:6098 $08 $f8 GFX GFX
    dw   `23223000                                     ;; 09:609a $48 $f8 GFX GFX
    dw   `31322300                                     ;; 09:609c $e4 $bc GFX GFX
    dw   `11322300                                     ;; 09:609e $e4 $3c GFX GFX
    dw   `00003111                                     ;; 09:60a0 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:60a2 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:60a4 $0f $08 GFX GFX
    dw   `00003223                                     ;; 09:60a6 $09 $0f GFX GFX
    dw   `00000323                                     ;; 09:60a8 $05 $07 GFX GFX
    dw   `00000322                                     ;; 09:60aa $04 $07 GFX GFX
    dw   `00000322                                     ;; 09:60ac $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:60ae $07 $07 GFX GFX
    dw   `13322300                                     ;; 09:60b0 $e4 $7c GFX GFX
    dw   `32232300                                     ;; 09:60b2 $94 $fc GFX GFX
    dw   `31133000                                     ;; 09:60b4 $f8 $98 GFX GFX
    dw   `11130000                                     ;; 09:60b6 $f0 $10 GFX GFX
    dw   `11330000                                     ;; 09:60b8 $f0 $30 GFX GFX
    dw   `33230000                                     ;; 09:60ba $d0 $f0 GFX GFX
    dw   `22223000                                     ;; 09:60bc $08 $f8 GFX GFX
    dw   `33333000                                     ;; 09:60be $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:60c0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:60c2 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:60c4 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:60c6 $10 $1f GFX GFX
    dw   `00032322                                     ;; 09:60c8 $14 $1f GFX GFX
    dw   `00032322                                     ;; 09:60ca $14 $1f GFX GFX
    dw   `00003133                                     ;; 09:60cc $0f $0b GFX GFX
    dw   `00003131                                     ;; 09:60ce $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:60d0 $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:60d2 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:60d4 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:60d6 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:60d8 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:60da $08 $f8 GFX GFX
    dw   `23222300                                     ;; 09:60dc $44 $fc GFX GFX
    dw   `31322300                                     ;; 09:60de $e4 $bc GFX GFX
    dw   `00003131                                     ;; 09:60e0 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:60e2 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:60e4 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:60e6 $0f $08 GFX GFX
    dw   `00003222                                     ;; 09:60e8 $08 $0f GFX GFX
    dw   `00003322                                     ;; 09:60ea $0c $0f GFX GFX
    dw   `00032222                                     ;; 09:60ec $10 $1f GFX GFX
    dw   `00033333                                     ;; 09:60ee $1f $1f GFX GFX
    dw   `11322230                                     ;; 09:60f0 $e2 $3e GFX GFX
    dw   `13332230                                     ;; 09:60f2 $f2 $7e GFX GFX
    dw   `32233230                                     ;; 09:60f4 $9a $fe GFX GFX
    dw   `23113300                                     ;; 09:60f6 $7c $cc GFX GFX
    dw   `23111300                                     ;; 09:60f8 $7c $c4 GFX GFX
    dw   `22311300                                     ;; 09:60fa $3c $e4 GFX GFX
    dw   `22233000                                     ;; 09:60fc $18 $f8 GFX GFX
    dw   `33333330                                     ;; 09:60fe $fe $fe GFX GFX
    dw   `00000000                                     ;; 09:6100 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6102 $00 $00 GFX GFX
    dw   `00000332                                     ;; 09:6104 $06 $07 GFX GFX
    dw   `00003222                                     ;; 09:6106 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:6108 $10 $1f GFX GFX
    dw   `00032223                                     ;; 09:610a $11 $1f GFX GFX
    dw   `00032331                                     ;; 09:610c $17 $1e GFX GFX
    dw   `00003131                                     ;; 09:610e $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:6110 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6112 $00 $00 GFX GFX
    dw   `33330000                                     ;; 09:6114 $f0 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6116 $08 $f8 GFX GFX
    dw   `22233000                                     ;; 09:6118 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:611a $04 $fc GFX GFX
    dw   `32323000                                     ;; 09:611c $a8 $f8 GFX GFX
    dw   `13130000                                     ;; 09:611e $f0 $50 GFX GFX
    dw   `00003131                                     ;; 09:6120 $0f $0a GFX GFX
    dw   `00003311                                     ;; 09:6122 $0f $0c GFX GFX
    dw   `00032233                                     ;; 09:6124 $13 $1f GFX GFX
    dw   `00322322                                     ;; 09:6126 $24 $3f GFX GFX
    dw   `00313333                                     ;; 09:6128 $3f $2f GFX GFX
    dw   `00030322                                     ;; 09:612a $14 $17 GFX GFX
    dw   `00000031                                     ;; 09:612c $03 $02 GFX GFX
    dw   `00003333                                     ;; 09:612e $0f $0f GFX GFX
    dw   `13130000                                     ;; 09:6130 $f0 $50 GFX GFX
    dw   `11330000                                     ;; 09:6132 $f0 $30 GFX GFX
    dw   `33223000                                     ;; 09:6134 $c8 $f8 GFX GFX
    dw   `22313000                                     ;; 09:6136 $38 $e8 GFX GFX
    dw   `33330000                                     ;; 09:6138 $f0 $f0 GFX GFX
    dw   `32300000                                     ;; 09:613a $a0 $e0 GFX GFX
    dw   `33000000                                     ;; 09:613c $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:613e $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:6140 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6142 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:6144 $0f $0f GFX GFX
    dw   `00032222                                     ;; 09:6146 $10 $1f GFX GFX
    dw   `00033222                                     ;; 09:6148 $18 $1f GFX GFX
    dw   `00322222                                     ;; 09:614a $20 $3f GFX GFX
    dw   `00032222                                     ;; 09:614c $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:614e $08 $0f GFX GFX
    dw   `00000000                                     ;; 09:6150 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6152 $00 $00 GFX GFX
    dw   `23300000                                     ;; 09:6154 $60 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6156 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6158 $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:615a $08 $f8 GFX GFX
    dw   `22223000                                     ;; 09:615c $08 $f8 GFX GFX
    dw   `22230000                                     ;; 09:615e $10 $f0 GFX GFX
    dw   `00003122                                     ;; 09:6160 $0c $0b GFX GFX
    dw   `00003311                                     ;; 09:6162 $0f $0c GFX GFX
    dw   `00032233                                     ;; 09:6164 $13 $1f GFX GFX
    dw   `00322322                                     ;; 09:6166 $24 $3f GFX GFX
    dw   `00313333                                     ;; 09:6168 $3f $2f GFX GFX
    dw   `00030322                                     ;; 09:616a $14 $17 GFX GFX
    dw   `00000031                                     ;; 09:616c $03 $02 GFX GFX
    dw   `00003333                                     ;; 09:616e $0f $0f GFX GFX
    dw   `22130000                                     ;; 09:6170 $30 $d0 GFX GFX
    dw   `11330000                                     ;; 09:6172 $f0 $30 GFX GFX
    dw   `33223000                                     ;; 09:6174 $c8 $f8 GFX GFX
    dw   `22313000                                     ;; 09:6176 $38 $e8 GFX GFX
    dw   `33330000                                     ;; 09:6178 $f0 $f0 GFX GFX
    dw   `32300000                                     ;; 09:617a $a0 $e0 GFX GFX
    dw   `33000000                                     ;; 09:617c $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:617e $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:6180 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6182 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:6184 $07 $07 GFX GFX
    dw   `00033222                                     ;; 09:6186 $18 $1f GFX GFX
    dw   `00322222                                     ;; 09:6188 $20 $3f GFX GFX
    dw   `00033223                                     ;; 09:618a $19 $1f GFX GFX
    dw   `00032231                                     ;; 09:618c $13 $1e GFX GFX
    dw   `00003331                                     ;; 09:618e $0f $0e GFX GFX
    dw   `00000000                                     ;; 09:6190 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6192 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:6194 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6196 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6198 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:619a $10 $f0 GFX GFX
    dw   `23230000                                     ;; 09:619c $50 $f0 GFX GFX
    dw   `31230000                                     ;; 09:619e $d0 $b0 GFX GFX
    dw   `00003131                                     ;; 09:61a0 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:61a2 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:61a4 $07 $07 GFX GFX
    dw   `00000322                                     ;; 09:61a6 $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:61a8 $07 $07 GFX GFX
    dw   `00000032                                     ;; 09:61aa $02 $03 GFX GFX
    dw   `00000311                                     ;; 09:61ac $07 $04 GFX GFX
    dw   `00000333                                     ;; 09:61ae $07 $07 GFX GFX
    dw   `11300000                                     ;; 09:61b0 $e0 $20 GFX GFX
    dw   `33300000                                     ;; 09:61b2 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:61b4 $10 $f0 GFX GFX
    dw   `32300000                                     ;; 09:61b6 $a0 $e0 GFX GFX
    dw   `11300000                                     ;; 09:61b8 $e0 $20 GFX GFX
    dw   `33000000                                     ;; 09:61ba $c0 $c0 GFX GFX
    dw   `23000000                                     ;; 09:61bc $40 $c0 GFX GFX
    dw   `33300000                                     ;; 09:61be $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:61c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:61c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:61c4 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:61c6 $07 $07 GFX GFX
    dw   `00033222                                     ;; 09:61c8 $18 $1f GFX GFX
    dw   `00322222                                     ;; 09:61ca $20 $3f GFX GFX
    dw   `00033223                                     ;; 09:61cc $19 $1f GFX GFX
    dw   `00032231                                     ;; 09:61ce $13 $1e GFX GFX
    dw   `00000000                                     ;; 09:61d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:61d2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:61d4 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:61d6 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:61d8 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:61da $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:61dc $10 $f0 GFX GFX
    dw   `23230000                                     ;; 09:61de $50 $f0 GFX GFX
    dw   `00003331                                     ;; 09:61e0 $0f $0e GFX GFX
    dw   `00003131                                     ;; 09:61e2 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:61e4 $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:61e6 $0f $0f GFX GFX
    dw   `00031322                                     ;; 09:61e8 $1c $17 GFX GFX
    dw   `00003333                                     ;; 09:61ea $0f $0f GFX GFX
    dw   `00003122                                     ;; 09:61ec $0c $0b GFX GFX
    dw   `00000323                                     ;; 09:61ee $05 $07 GFX GFX
    dw   `31230000                                     ;; 09:61f0 $d0 $b0 GFX GFX
    dw   `11300000                                     ;; 09:61f2 $e0 $20 GFX GFX
    dw   `33300000                                     ;; 09:61f4 $e0 $e0 GFX GFX
    dw   `22330000                                     ;; 09:61f6 $30 $f0 GFX GFX
    dw   `33113000                                     ;; 09:61f8 $f8 $c8 GFX GFX
    dw   `33330000                                     ;; 09:61fa $f0 $f0 GFX GFX
    dw   `32230000                                     ;; 09:61fc $90 $f0 GFX GFX
    dw   `33130000                                     ;; 09:61fe $f0 $d0 GFX GFX
    dw   `00033300                                     ;; 09:6200 $1c $1c GFX GFX
    dw   `00322133                                     ;; 09:6202 $27 $3b GFX GFX
    dw   `03221322                                     ;; 09:6204 $4c $77 GFX GFX
    dw   `03223222                                     ;; 09:6206 $48 $7f GFX GFX
    dw   `03232223                                     ;; 09:6208 $51 $7f GFX GFX
    dw   `03232221                                     ;; 09:620a $51 $7e GFX GFX
    dw   `00333131                                     ;; 09:620c $3f $3a GFX GFX
    dw   `00003131                                     ;; 09:620e $0f $0a GFX GFX
    dw   `00333000                                     ;; 09:6210 $38 $38 GFX GFX
    dw   `33122300                                     ;; 09:6212 $e4 $dc GFX GFX
    dw   `22312230                                     ;; 09:6214 $32 $ee GFX GFX
    dw   `22232230                                     ;; 09:6216 $12 $fe GFX GFX
    dw   `22223230                                     ;; 09:6218 $0a $fe GFX GFX
    dw   `21223230                                     ;; 09:621a $4a $be GFX GFX
    dw   `13133300                                     ;; 09:621c $fc $5c GFX GFX
    dw   `13130000                                     ;; 09:621e $f0 $50 GFX GFX
    dw   `00003311                                     ;; 09:6220 $0f $0c GFX GFX
    dw   `00032233                                     ;; 09:6222 $13 $1f GFX GFX
    dw   `00003132                                     ;; 09:6224 $0e $0b GFX GFX
    dw   `00031333                                     ;; 09:6226 $1f $17 GFX GFX
    dw   `00033222                                     ;; 09:6228 $18 $1f GFX GFX
    dw   `00032222                                     ;; 09:622a $10 $1f GFX GFX
    dw   `00003311                                     ;; 09:622c $0f $0c GFX GFX
    dw   `00333333                                     ;; 09:622e $3f $3f GFX GFX
    dw   `11330000                                     ;; 09:6230 $f0 $30 GFX GFX
    dw   `33223000                                     ;; 09:6232 $c8 $f8 GFX GFX
    dw   `23230000                                     ;; 09:6234 $50 $f0 GFX GFX
    dw   `33313000                                     ;; 09:6236 $f8 $e8 GFX GFX
    dw   `22230000                                     ;; 09:6238 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:623a $08 $f8 GFX GFX
    dw   `33330000                                     ;; 09:623c $f0 $f0 GFX GFX
    dw   `33333300                                     ;; 09:623e $fc $fc GFX GFX
    dw   `00003300                                     ;; 09:6240 $0c $0c GFX GFX
    dw   `00032133                                     ;; 09:6242 $17 $1b GFX GFX
    dw   `00321322                                     ;; 09:6244 $2c $37 GFX GFX
    dw   `03223222                                     ;; 09:6246 $48 $7f GFX GFX
    dw   `03223223                                     ;; 09:6248 $49 $7f GFX GFX
    dw   `03232222                                     ;; 09:624a $50 $7f GFX GFX
    dw   `00333222                                     ;; 09:624c $38 $3f GFX GFX
    dw   `00003222                                     ;; 09:624e $08 $0f GFX GFX
    dw   `00330000                                     ;; 09:6250 $30 $30 GFX GFX
    dw   `33123000                                     ;; 09:6252 $e8 $d8 GFX GFX
    dw   `22312300                                     ;; 09:6254 $34 $ec GFX GFX
    dw   `32232230                                     ;; 09:6256 $92 $fe GFX GFX
    dw   `22232230                                     ;; 09:6258 $12 $fe GFX GFX
    dw   `22223230                                     ;; 09:625a $0a $fe GFX GFX
    dw   `22233300                                     ;; 09:625c $1c $fc GFX GFX
    dw   `22230000                                     ;; 09:625e $10 $f0 GFX GFX
    dw   `00003322                                     ;; 09:6260 $0c $0f GFX GFX
    dw   `00032231                                     ;; 09:6262 $13 $1e GFX GFX
    dw   `00003132                                     ;; 09:6264 $0e $0b GFX GFX
    dw   `00031333                                     ;; 09:6266 $1f $17 GFX GFX
    dw   `00033322                                     ;; 09:6268 $1c $1f GFX GFX
    dw   `00032222                                     ;; 09:626a $10 $1f GFX GFX
    dw   `00003311                                     ;; 09:626c $0f $0c GFX GFX
    dw   `00333333                                     ;; 09:626e $3f $3f GFX GFX
    dw   `22330000                                     ;; 09:6270 $30 $f0 GFX GFX
    dw   `13223000                                     ;; 09:6272 $c8 $78 GFX GFX
    dw   `23230000                                     ;; 09:6274 $50 $f0 GFX GFX
    dw   `33313000                                     ;; 09:6276 $f8 $e8 GFX GFX
    dw   `22230000                                     ;; 09:6278 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:627a $08 $f8 GFX GFX
    dw   `33330000                                     ;; 09:627c $f0 $f0 GFX GFX
    dw   `33333300                                     ;; 09:627e $fc $fc GFX GFX
    dw   `00000000                                     ;; 09:6280 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6282 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:6284 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:6286 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:6288 $10 $1f GFX GFX
    dw   `00032122                                     ;; 09:628a $14 $1b GFX GFX
    dw   `00032121                                     ;; 09:628c $15 $1a GFX GFX
    dw   `00003131                                     ;; 09:628e $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:6290 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6292 $00 $00 GFX GFX
    dw   `33030000                                     ;; 09:6294 $d0 $d0 GFX GFX
    dw   `31323000                                     ;; 09:6296 $e8 $b8 GFX GFX
    dw   `23222300                                     ;; 09:6298 $44 $fc GFX GFX
    dw   `23222300                                     ;; 09:629a $44 $fc GFX GFX
    dw   `23222300                                     ;; 09:629c $44 $fc GFX GFX
    dw   `23223000                                     ;; 09:629e $48 $f8 GFX GFX
    dw   `00003131                                     ;; 09:62a0 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:62a2 $0f $08 GFX GFX
    dw   `00000332                                     ;; 09:62a4 $06 $07 GFX GFX
    dw   `00000323                                     ;; 09:62a6 $05 $07 GFX GFX
    dw   `00000031                                     ;; 09:62a8 $03 $02 GFX GFX
    dw   `00000323                                     ;; 09:62aa $05 $07 GFX GFX
    dw   `00003222                                     ;; 09:62ac $08 $0f GFX GFX
    dw   `00033333                                     ;; 09:62ae $1f $1f GFX GFX
    dw   `23330000                                     ;; 09:62b0 $70 $f0 GFX GFX
    dw   `33300000                                     ;; 09:62b2 $e0 $e0 GFX GFX
    dw   `22300000                                     ;; 09:62b4 $20 $e0 GFX GFX
    dw   `13000000                                     ;; 09:62b6 $c0 $40 GFX GFX
    dw   `32300000                                     ;; 09:62b8 $a0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:62ba $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:62bc $08 $f8 GFX GFX
    dw   `33333300                                     ;; 09:62be $fc $fc GFX GFX
    dw   `00000000                                     ;; 09:62c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:62c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:62c4 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:62c6 $07 $07 GFX GFX
    dw   `00003222                                     ;; 09:62c8 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:62ca $10 $1f GFX GFX
    dw   `00032122                                     ;; 09:62cc $14 $1b GFX GFX
    dw   `00032121                                     ;; 09:62ce $15 $1a GFX GFX
    dw   `00000000                                     ;; 09:62d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:62d2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:62d4 $00 $00 GFX GFX
    dw   `33030000                                     ;; 09:62d6 $d0 $d0 GFX GFX
    dw   `31323000                                     ;; 09:62d8 $e8 $b8 GFX GFX
    dw   `23222300                                     ;; 09:62da $44 $fc GFX GFX
    dw   `23222300                                     ;; 09:62dc $44 $fc GFX GFX
    dw   `23222300                                     ;; 09:62de $44 $fc GFX GFX
    dw   `00003131                                     ;; 09:62e0 $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:62e2 $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:62e4 $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:62e6 $0f $0f GFX GFX
    dw   `00031322                                     ;; 09:62e8 $1c $17 GFX GFX
    dw   `00003333                                     ;; 09:62ea $0f $0f GFX GFX
    dw   `00003113                                     ;; 09:62ec $0f $09 GFX GFX
    dw   `00033333                                     ;; 09:62ee $1f $1f GFX GFX
    dw   `23223000                                     ;; 09:62f0 $48 $f8 GFX GFX
    dw   `23330000                                     ;; 09:62f2 $70 $f0 GFX GFX
    dw   `33300000                                     ;; 09:62f4 $e0 $e0 GFX GFX
    dw   `22330000                                     ;; 09:62f6 $30 $f0 GFX GFX
    dw   `33113000                                     ;; 09:62f8 $f8 $c8 GFX GFX
    dw   `32333000                                     ;; 09:62fa $b8 $f8 GFX GFX
    dw   `22222300                                     ;; 09:62fc $04 $fc GFX GFX
    dw   `33333330                                     ;; 09:62fe $fe $fe GFX GFX
    dw   `00033333                                     ;; 09:6300 $1f $1f GFX GFX
    dw   `00311113                                     ;; 09:6302 $3f $21 GFX GFX
    dw   `03111111                                     ;; 09:6304 $7f $40 GFX GFX
    dw   `03111133                                     ;; 09:6306 $7f $43 GFX GFX
    dw   `03113332                                     ;; 09:6308 $7e $4f GFX GFX
    dw   `00331113                                     ;; 09:630a $3f $31 GFX GFX
    dw   `00033331                                     ;; 09:630c $1f $1e GFX GFX
    dw   `00331311                                     ;; 09:630e $3f $34 GFX GFX
    dw   `33300000                                     ;; 09:6310 $e0 $e0 GFX GFX
    dw   `11130000                                     ;; 09:6312 $f0 $10 GFX GFX
    dw   `33330000                                     ;; 09:6314 $f0 $f0 GFX GFX
    dw   `11113000                                     ;; 09:6316 $f8 $08 GFX GFX
    dw   `33113000                                     ;; 09:6318 $f8 $c8 GFX GFX
    dw   `11333000                                     ;; 09:631a $f8 $38 GFX GFX
    dw   `33331330                                     ;; 09:631c $fe $f6 GFX GFX
    dw   `31321113                                     ;; 09:631e $ef $b1 GFX GFX
    dw   `03313111                                     ;; 09:6320 $7f $68 GFX GFX
    dw   `31112333                                     ;; 09:6322 $f7 $8f GFX GFX
    dw   `03322212                                     ;; 09:6324 $62 $7d GFX GFX
    dw   `00322211                                     ;; 09:6326 $23 $3c GFX GFX
    dw   `00033131                                     ;; 09:6328 $1f $1a GFX GFX
    dw   `00003111                                     ;; 09:632a $0f $08 GFX GFX
    dw   `00000311                                     ;; 09:632c $07 $04 GFX GFX
    dw   `03333333                                     ;; 09:632e $7f $7f GFX GFX
    dw   `13222330                                     ;; 09:6330 $c6 $7e GFX GFX
    dw   `31223000                                     ;; 09:6332 $c8 $b8 GFX GFX
    dw   `21330000                                     ;; 09:6334 $70 $b0 GFX GFX
    dw   `13130000                                     ;; 09:6336 $f0 $50 GFX GFX
    dw   `11113000                                     ;; 09:6338 $f8 $08 GFX GFX
    dw   `31113000                                     ;; 09:633a $f8 $88 GFX GFX
    dw   `33330000                                     ;; 09:633c $f0 $f0 GFX GFX
    dw   `33333330                                     ;; 09:633e $fe $fe GFX GFX
    dw   `00000033                                     ;; 09:6340 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:6342 $07 $04 GFX GFX
    dw   `00003333                                     ;; 09:6344 $0f $0f GFX GFX
    dw   `00031111                                     ;; 09:6346 $1f $10 GFX GFX
    dw   `00033311                                     ;; 09:6348 $1f $1c GFX GFX
    dw   `00031133                                     ;; 09:634a $1f $13 GFX GFX
    dw   `00031111                                     ;; 09:634c $1f $10 GFX GFX
    dw   `00003133                                     ;; 09:634e $0f $0b GFX GFX
    dw   `33333000                                     ;; 09:6350 $f8 $f8 GFX GFX
    dw   `13111300                                     ;; 09:6352 $fc $44 GFX GFX
    dw   `31113130                                     ;; 09:6354 $fe $8a GFX GFX
    dw   `13331130                                     ;; 09:6356 $fe $72 GFX GFX
    dw   `11111130                                     ;; 09:6358 $fe $02 GFX GFX
    dw   `11111130                                     ;; 09:635a $fe $02 GFX GFX
    dw   `33111130                                     ;; 09:635c $fe $c2 GFX GFX
    dw   `22331300                                     ;; 09:635e $3c $f4 GFX GFX
    dw   `00003312                                     ;; 09:6360 $0e $0d GFX GFX
    dw   `00032211                                     ;; 09:6362 $13 $1c GFX GFX
    dw   `00322111                                     ;; 09:6364 $27 $38 GFX GFX
    dw   `00032311                                     ;; 09:6366 $17 $1c GFX GFX
    dw   `00003111                                     ;; 09:6368 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:636a $0f $08 GFX GFX
    dw   `00000311                                     ;; 09:636c $07 $04 GFX GFX
    dw   `03333333                                     ;; 09:636e $7f $7f GFX GFX
    dw   `22213330                                     ;; 09:6370 $1e $ee GFX GFX
    dw   `11112113                                     ;; 09:6372 $f7 $09 GFX GFX
    dw   `11111230                                     ;; 09:6374 $fa $06 GFX GFX
    dw   `11112300                                     ;; 09:6376 $f4 $0c GFX GFX
    dw   `13333000                                     ;; 09:6378 $f8 $78 GFX GFX
    dw   `31130000                                     ;; 09:637a $f0 $90 GFX GFX
    dw   `33300000                                     ;; 09:637c $e0 $e0 GFX GFX
    dw   `33333330                                     ;; 09:637e $fe $fe GFX GFX
    dw   `00000333                                     ;; 09:6380 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:6382 $0f $08 GFX GFX
    dw   `00031133                                     ;; 09:6384 $1f $13 GFX GFX
    dw   `00033311                                     ;; 09:6386 $1f $1c GFX GFX
    dw   `00332311                                     ;; 09:6388 $37 $3c GFX GFX
    dw   `03133331                                     ;; 09:638a $7f $5e GFX GFX
    dw   `03133133                                     ;; 09:638c $7f $5b GFX GFX
    dw   `03123131                                     ;; 09:638e $6f $5a GFX GFX
    dw   `33330000                                     ;; 09:6390 $f0 $f0 GFX GFX
    dw   `11113000                                     ;; 09:6392 $f8 $08 GFX GFX
    dw   `11131300                                     ;; 09:6394 $fc $14 GFX GFX
    dw   `33311300                                     ;; 09:6396 $fc $e4 GFX GFX
    dw   `11111300                                     ;; 09:6398 $fc $04 GFX GFX
    dw   `11111300                                     ;; 09:639a $fc $04 GFX GFX
    dw   `31113000                                     ;; 09:639c $f8 $88 GFX GFX
    dw   `13330000                                     ;; 09:639e $f0 $70 GFX GFX
    dw   `00323111                                     ;; 09:63a0 $2f $38 GFX GFX
    dw   `00032333                                     ;; 09:63a2 $17 $1f GFX GFX
    dw   `00003321                                     ;; 09:63a4 $0d $0e GFX GFX
    dw   `00000313                                     ;; 09:63a6 $07 $05 GFX GFX
    dw   `00000011                                     ;; 09:63a8 $03 $00 GFX GFX
    dw   `00000031                                     ;; 09:63aa $03 $02 GFX GFX
    dw   `00000311                                     ;; 09:63ac $07 $04 GFX GFX
    dw   `00333333                                     ;; 09:63ae $3f $3f GFX GFX
    dw   `31130000                                     ;; 09:63b0 $f0 $90 GFX GFX
    dw   `13223000                                     ;; 09:63b2 $c8 $78 GFX GFX
    dw   `32223000                                     ;; 09:63b4 $88 $f8 GFX GFX
    dw   `13113000                                     ;; 09:63b6 $f8 $48 GFX GFX
    dw   `13113000                                     ;; 09:63b8 $f8 $48 GFX GFX
    dw   `11330000                                     ;; 09:63ba $f0 $30 GFX GFX
    dw   `11130000                                     ;; 09:63bc $f0 $10 GFX GFX
    dw   `33333300                                     ;; 09:63be $fc $fc GFX GFX
    dw   `00000000                                     ;; 09:63c0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:63c2 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:63c4 $0f $08 GFX GFX
    dw   `00031133                                     ;; 09:63c6 $1f $13 GFX GFX
    dw   `00033311                                     ;; 09:63c8 $1f $1c GFX GFX
    dw   `00032311                                     ;; 09:63ca $17 $1c GFX GFX
    dw   `00033331                                     ;; 09:63cc $1f $1e GFX GFX
    dw   `00003133                                     ;; 09:63ce $0f $0b GFX GFX
    dw   `00000000                                     ;; 09:63d0 $00 $00 GFX GFX
    dw   `33330000                                     ;; 09:63d2 $f0 $f0 GFX GFX
    dw   `11113000                                     ;; 09:63d4 $f8 $08 GFX GFX
    dw   `11131300                                     ;; 09:63d6 $fc $14 GFX GFX
    dw   `33311300                                     ;; 09:63d8 $fc $e4 GFX GFX
    dw   `11111300                                     ;; 09:63da $fc $04 GFX GFX
    dw   `11111300                                     ;; 09:63dc $fc $04 GFX GFX
    dw   `31113000                                     ;; 09:63de $f8 $88 GFX GFX
    dw   `00003131                                     ;; 09:63e0 $0f $0a GFX GFX
    dw   `00333111                                     ;; 09:63e2 $3f $38 GFX GFX
    dw   `00311333                                     ;; 09:63e4 $3f $27 GFX GFX
    dw   `00311321                                     ;; 09:63e6 $3d $26 GFX GFX
    dw   `00033313                                     ;; 09:63e8 $1f $1d GFX GFX
    dw   `00031111                                     ;; 09:63ea $1f $10 GFX GFX
    dw   `00003113                                     ;; 09:63ec $0f $09 GFX GFX
    dw   `00033333                                     ;; 09:63ee $1f $1f GFX GFX
    dw   `13333000                                     ;; 09:63f0 $f8 $78 GFX GFX
    dw   `31322300                                     ;; 09:63f2 $e4 $bc GFX GFX
    dw   `13221130                                     ;; 09:63f4 $ce $72 GFX GFX
    dw   `32321130                                     ;; 09:63f6 $ae $f2 GFX GFX
    dw   `11133300                                     ;; 09:63f8 $fc $1c GFX GFX
    dw   `31111130                                     ;; 09:63fa $fe $82 GFX GFX
    dw   `33311300                                     ;; 09:63fc $fc $e4 GFX GFX
    dw   `33333000                                     ;; 09:63fe $f8 $f8 GFX GFX
    dw   `00000003                                     ;; 09:6400 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:6402 $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:6404 $04 $07 GFX GFX
    dw   `00003322                                     ;; 09:6406 $0c $0f GFX GFX
    dw   `00031113                                     ;; 09:6408 $1f $11 GFX GFX
    dw   `00311332                                     ;; 09:640a $3e $27 GFX GFX
    dw   `00033232                                     ;; 09:640c $1a $1f GFX GFX
    dw   `00033123                                     ;; 09:640e $1d $1b GFX GFX
    dw   `30000000                                     ;; 09:6410 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:6412 $40 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6414 $20 $e0 GFX GFX
    dw   `22330000                                     ;; 09:6416 $30 $f0 GFX GFX
    dw   `31113000                                     ;; 09:6418 $f8 $88 GFX GFX
    dw   `23313000                                     ;; 09:641a $78 $e8 GFX GFX
    dw   `23230000                                     ;; 09:641c $50 $f0 GFX GFX
    dw   `32133000                                     ;; 09:641e $b8 $d8 GFX GFX
    dw   `00323111                                     ;; 09:6420 $2f $38 GFX GFX
    dw   `03222311                                     ;; 09:6422 $47 $7c GFX GFX
    dw   `32322311                                     ;; 09:6424 $a7 $fc GFX GFX
    dw   `33113231                                     ;; 09:6426 $fb $ce GFX GFX
    dw   `33113223                                     ;; 09:6428 $f9 $cf GFX GFX
    dw   `32332222                                     ;; 09:642a $b0 $ff GFX GFX
    dw   `32322222                                     ;; 09:642c $a0 $ff GFX GFX
    dw   `03333333                                     ;; 09:642e $7f $7f GFX GFX
    dw   `11132300                                     ;; 09:6430 $f4 $1c GFX GFX
    dw   `11322330                                     ;; 09:6432 $e6 $3e GFX GFX
    dw   `11323113                                     ;; 09:6434 $ef $39 GFX GFX
    dw   `13223113                                     ;; 09:6436 $cf $79 GFX GFX
    dw   `32222333                                     ;; 09:6438 $87 $ff GFX GFX
    dw   `22222323                                     ;; 09:643a $05 $ff GFX GFX
    dw   `23332330                                     ;; 09:643c $76 $fe GFX GFX
    dw   `33333300                                     ;; 09:643e $fc $fc GFX GFX
    dw   `00000003                                     ;; 09:6440 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:6442 $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:6444 $04 $07 GFX GFX
    dw   `00000322                                     ;; 09:6446 $04 $07 GFX GFX
    dw   `00003122                                     ;; 09:6448 $0c $0b GFX GFX
    dw   `00003112                                     ;; 09:644a $0e $09 GFX GFX
    dw   `00003111                                     ;; 09:644c $0f $08 GFX GFX
    dw   `00033311                                     ;; 09:644e $1f $1c GFX GFX
    dw   `30000000                                     ;; 09:6450 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:6452 $40 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6454 $20 $e0 GFX GFX
    dw   `22300000                                     ;; 09:6456 $20 $e0 GFX GFX
    dw   `22130000                                     ;; 09:6458 $30 $d0 GFX GFX
    dw   `21130000                                     ;; 09:645a $70 $90 GFX GFX
    dw   `11130000                                     ;; 09:645c $f0 $10 GFX GFX
    dw   `11333000                                     ;; 09:645e $f8 $38 GFX GFX
    dw   `03322311                                     ;; 09:6460 $67 $7c GFX GFX
    dw   `03222311                                     ;; 09:6462 $47 $7c GFX GFX
    dw   `32332231                                     ;; 09:6464 $b3 $fe GFX GFX
    dw   `32232231                                     ;; 09:6466 $93 $fe GFX GFX
    dw   `32233333                                     ;; 09:6468 $9f $ff GFX GFX
    dw   `32233222                                     ;; 09:646a $98 $ff GFX GFX
    dw   `03232333                                     ;; 09:646c $57 $7f GFX GFX
    dw   `00333333                                     ;; 09:646e $3f $3f GFX GFX
    dw   `11322330                                     ;; 09:6470 $e6 $3e GFX GFX
    dw   `11322233                                     ;; 09:6472 $e3 $3f GFX GFX
    dw   `13223233                                     ;; 09:6474 $cb $7f GFX GFX
    dw   `33223223                                     ;; 09:6476 $c9 $ff GFX GFX
    dw   `33333223                                     ;; 09:6478 $f9 $ff GFX GFX
    dw   `22223323                                     ;; 09:647a $0d $ff GFX GFX
    dw   `22223223                                     ;; 09:647c $09 $ff GFX GFX
    dw   `33333330                                     ;; 09:647e $fe $fe GFX GFX
    dw   `00000003                                     ;; 09:6480 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:6482 $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:6484 $04 $07 GFX GFX
    dw   `00000332                                     ;; 09:6486 $06 $07 GFX GFX
    dw   `00003113                                     ;; 09:6488 $0f $09 GFX GFX
    dw   `00003331                                     ;; 09:648a $0f $0e GFX GFX
    dw   `00032233                                     ;; 09:648c $13 $1f GFX GFX
    dw   `00032232                                     ;; 09:648e $12 $1f GFX GFX
    dw   `30000000                                     ;; 09:6490 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:6492 $40 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6494 $20 $e0 GFX GFX
    dw   `22300000                                     ;; 09:6496 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6498 $10 $f0 GFX GFX
    dw   `32130000                                     ;; 09:649a $b0 $d0 GFX GFX
    dw   `23113000                                     ;; 09:649c $78 $c8 GFX GFX
    dw   `23113000                                     ;; 09:649e $78 $c8 GFX GFX
    dw   `00003313                                     ;; 09:64a0 $0f $0d GFX GFX
    dw   `00031113                                     ;; 09:64a2 $1f $11 GFX GFX
    dw   `00031133                                     ;; 09:64a4 $1f $13 GFX GFX
    dw   `00031311                                     ;; 09:64a6 $1f $14 GFX GFX
    dw   `00031311                                     ;; 09:64a8 $1f $14 GFX GFX
    dw   `00003233                                     ;; 09:64aa $0b $0f GFX GFX
    dw   `00003222                                     ;; 09:64ac $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:64ae $0f $0f GFX GFX
    dw   `22311300                                     ;; 09:64b0 $3c $e4 GFX GFX
    dw   `22231130                                     ;; 09:64b2 $1e $f2 GFX GFX
    dw   `22223300                                     ;; 09:64b4 $0c $fc GFX GFX
    dw   `32223000                                     ;; 09:64b6 $88 $f8 GFX GFX
    dw   `32323000                                     ;; 09:64b8 $a8 $f8 GFX GFX
    dw   `32323000                                     ;; 09:64ba $a8 $f8 GFX GFX
    dw   `32322300                                     ;; 09:64bc $a4 $fc GFX GFX
    dw   `33233330                                     ;; 09:64be $de $fe GFX GFX
    dw   `00000000                                     ;; 09:64c0 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:64c2 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:64c4 $02 $03 GFX GFX
    dw   `00000322                                     ;; 09:64c6 $04 $07 GFX GFX
    dw   `00000332                                     ;; 09:64c8 $06 $07 GFX GFX
    dw   `00003113                                     ;; 09:64ca $0f $09 GFX GFX
    dw   `00003331                                     ;; 09:64cc $0f $0e GFX GFX
    dw   `00032233                                     ;; 09:64ce $13 $1f GFX GFX
    dw   `00000000                                     ;; 09:64d0 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:64d2 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:64d4 $40 $c0 GFX GFX
    dw   `22300000                                     ;; 09:64d6 $20 $e0 GFX GFX
    dw   `22300000                                     ;; 09:64d8 $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:64da $10 $f0 GFX GFX
    dw   `32130000                                     ;; 09:64dc $b0 $d0 GFX GFX
    dw   `23113300                                     ;; 09:64de $7c $cc GFX GFX
    dw   `00032232                                     ;; 09:64e0 $12 $1f GFX GFX
    dw   `00003313                                     ;; 09:64e2 $0f $0d GFX GFX
    dw   `00031113                                     ;; 09:64e4 $1f $11 GFX GFX
    dw   `00031132                                     ;; 09:64e6 $1e $13 GFX GFX
    dw   `00031133                                     ;; 09:64e8 $1f $13 GFX GFX
    dw   `00031323                                     ;; 09:64ea $1d $17 GFX GFX
    dw   `00003222                                     ;; 09:64ec $08 $0f GFX GFX
    dw   `00033333                                     ;; 09:64ee $1f $1f GFX GFX
    dw   `23311130                                     ;; 09:64f0 $7e $e2 GFX GFX
    dw   `22233113                                     ;; 09:64f2 $1f $f9 GFX GFX
    dw   `22223330                                     ;; 09:64f4 $0e $fe GFX GFX
    dw   `32222300                                     ;; 09:64f6 $84 $fc GFX GFX
    dw   `13222300                                     ;; 09:64f8 $c4 $7c GFX GFX
    dw   `13223230                                     ;; 09:64fa $ca $7e GFX GFX
    dw   `33223230                                     ;; 09:64fc $ca $fe GFX GFX
    dw   `33322323                                     ;; 09:64fe $e5 $ff GFX GFX
    dw   `00003303                                     ;; 09:6500 $0d $0d GFX GFX
    dw   `00003131                                     ;; 09:6502 $0f $0a GFX GFX
    dw   `00003331                                     ;; 09:6504 $0f $0e GFX GFX
    dw   `00003213                                     ;; 09:6506 $0b $0d GFX GFX
    dw   `00033331                                     ;; 09:6508 $1f $1e GFX GFX
    dw   `00313131                                     ;; 09:650a $3f $2a GFX GFX
    dw   `03122311                                     ;; 09:650c $67 $5c GFX GFX
    dw   `00312323                                     ;; 09:650e $35 $2f GFX GFX
    dw   `30330000                                     ;; 09:6510 $b0 $b0 GFX GFX
    dw   `13130000                                     ;; 09:6512 $f0 $50 GFX GFX
    dw   `13330000                                     ;; 09:6514 $f0 $70 GFX GFX
    dw   `31230000                                     ;; 09:6516 $d0 $b0 GFX GFX
    dw   `33333000                                     ;; 09:6518 $f8 $f8 GFX GFX
    dw   `13131300                                     ;; 09:651a $fc $54 GFX GFX
    dw   `11322130                                     ;; 09:651c $e6 $3a GFX GFX
    dw   `32321300                                     ;; 09:651e $ac $f4 GFX GFX
    dw   `00331332                                     ;; 09:6520 $3e $37 GFX GFX
    dw   `03223132                                     ;; 09:6522 $4e $7b GFX GFX
    dw   `03322323                                     ;; 09:6524 $65 $7f GFX GFX
    dw   `31132312                                     ;; 09:6526 $f6 $9d GFX GFX
    dw   `31132131                                     ;; 09:6528 $f7 $9a GFX GFX
    dw   `03321333                                     ;; 09:652a $6f $77 GFX GFX
    dw   `32313223                                     ;; 09:652c $b9 $ef GFX GFX
    dw   `33333333                                     ;; 09:652e $ff $ff GFX GFX
    dw   `23313300                                     ;; 09:6530 $7c $ec GFX GFX
    dw   `23132330                                     ;; 09:6532 $76 $de GFX GFX
    dw   `32323113                                     ;; 09:6534 $af $f9 GFX GFX
    dw   `21323113                                     ;; 09:6536 $6f $b9 GFX GFX
    dw   `13223333                                     ;; 09:6538 $cf $7f GFX GFX
    dw   `31222323                                     ;; 09:653a $c5 $bf GFX GFX
    dw   `33111330                                     ;; 09:653c $fe $c6 GFX GFX
    dw   `33333330                                     ;; 09:653e $fe $fe GFX GFX
    dw   `00003303                                     ;; 09:6540 $0d $0d GFX GFX
    dw   `00003131                                     ;; 09:6542 $0f $0a GFX GFX
    dw   `00003232                                     ;; 09:6544 $0a $0f GFX GFX
    dw   `00003333                                     ;; 09:6546 $0f $0f GFX GFX
    dw   `00033111                                     ;; 09:6548 $1f $18 GFX GFX
    dw   `00311222                                     ;; 09:654a $38 $27 GFX GFX
    dw   `03122333                                     ;; 09:654c $67 $5f GFX GFX
    dw   `00333222                                     ;; 09:654e $38 $3f GFX GFX
    dw   `30330000                                     ;; 09:6550 $b0 $b0 GFX GFX
    dw   `13130000                                     ;; 09:6552 $f0 $50 GFX GFX
    dw   `23230000                                     ;; 09:6554 $50 $f0 GFX GFX
    dw   `33330000                                     ;; 09:6556 $f0 $f0 GFX GFX
    dw   `11133000                                     ;; 09:6558 $f8 $18 GFX GFX
    dw   `22211300                                     ;; 09:655a $1c $e4 GFX GFX
    dw   `23222130                                     ;; 09:655c $46 $fa GFX GFX
    dw   `22233300                                     ;; 09:655e $1c $fc GFX GFX
    dw   `00313322                                     ;; 09:6560 $3c $2f GFX GFX
    dw   `03232133                                     ;; 09:6562 $57 $7b GFX GFX
    dw   `03223111                                     ;; 09:6564 $4f $78 GFX GFX
    dw   `03222333                                     ;; 09:6566 $47 $7f GFX GFX
    dw   `32222222                                     ;; 09:6568 $80 $ff GFX GFX
    dw   `31221111                                     ;; 09:656a $cf $b0 GFX GFX
    dw   `03113333                                     ;; 09:656c $7f $4f GFX GFX
    dw   `33333333                                     ;; 09:656e $ff $ff GFX GFX
    dw   `22331300                                     ;; 09:6570 $3c $f4 GFX GFX
    dw   `33123230                                     ;; 09:6572 $ea $de GFX GFX
    dw   `11132230                                     ;; 09:6574 $f2 $1e GFX GFX
    dw   `33322230                                     ;; 09:6576 $e2 $fe GFX GFX
    dw   `22222223                                     ;; 09:6578 $01 $ff GFX GFX
    dw   `22222213                                     ;; 09:657a $03 $fd GFX GFX
    dw   `11111130                                     ;; 09:657c $fe $02 GFX GFX
    dw   `33333333                                     ;; 09:657e $ff $ff GFX GFX
    dw   `00003303                                     ;; 09:6580 $0d $0d GFX GFX
    dw   `00003131                                     ;; 09:6582 $0f $0a GFX GFX
    dw   `00003113                                     ;; 09:6584 $0f $09 GFX GFX
    dw   `00003332                                     ;; 09:6586 $0e $0f GFX GFX
    dw   `00003131                                     ;; 09:6588 $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:658a $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:658c $0f $08 GFX GFX
    dw   `00003323                                     ;; 09:658e $0d $0f GFX GFX
    dw   `03000000                                     ;; 09:6590 $40 $40 GFX GFX
    dw   `31300000                                     ;; 09:6592 $e0 $a0 GFX GFX
    dw   `33300000                                     ;; 09:6594 $e0 $e0 GFX GFX
    dw   `22300000                                     ;; 09:6596 $20 $e0 GFX GFX
    dw   `22330000                                     ;; 09:6598 $30 $f0 GFX GFX
    dw   `13323000                                     ;; 09:659a $e8 $78 GFX GFX
    dw   `32221300                                     ;; 09:659c $8c $f4 GFX GFX
    dw   `22113300                                     ;; 09:659e $3c $cc GFX GFX
    dw   `00003231                                     ;; 09:65a0 $0b $0e GFX GFX
    dw   `00033231                                     ;; 09:65a2 $1b $1e GFX GFX
    dw   `00003333                                     ;; 09:65a4 $0f $0f GFX GFX
    dw   `00032311                                     ;; 09:65a6 $17 $1c GFX GFX
    dw   `00032311                                     ;; 09:65a8 $17 $1c GFX GFX
    dw   `00003133                                     ;; 09:65aa $0f $0b GFX GFX
    dw   `00003122                                     ;; 09:65ac $0c $0b GFX GFX
    dw   `00003333                                     ;; 09:65ae $0f $0f GFX GFX
    dw   `11330000                                     ;; 09:65b0 $f0 $30 GFX GFX
    dw   `33230000                                     ;; 09:65b2 $d0 $f0 GFX GFX
    dw   `22223000                                     ;; 09:65b4 $08 $f8 GFX GFX
    dw   `32223000                                     ;; 09:65b6 $88 $f8 GFX GFX
    dw   `32323000                                     ;; 09:65b8 $a8 $f8 GFX GFX
    dw   `32322300                                     ;; 09:65ba $a4 $fc GFX GFX
    dw   `32322300                                     ;; 09:65bc $a4 $fc GFX GFX
    dw   `33233330                                     ;; 09:65be $de $fe GFX GFX
    dw   `00000000                                     ;; 09:65c0 $00 $00 GFX GFX
    dw   `00003303                                     ;; 09:65c2 $0d $0d GFX GFX
    dw   `00003131                                     ;; 09:65c4 $0f $0a GFX GFX
    dw   `00003113                                     ;; 09:65c6 $0f $09 GFX GFX
    dw   `00003332                                     ;; 09:65c8 $0e $0f GFX GFX
    dw   `00003131                                     ;; 09:65ca $0f $0a GFX GFX
    dw   `00003131                                     ;; 09:65cc $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:65ce $0f $08 GFX GFX
    dw   `00000000                                     ;; 09:65d0 $00 $00 GFX GFX
    dw   `03000000                                     ;; 09:65d2 $40 $40 GFX GFX
    dw   `31300000                                     ;; 09:65d4 $e0 $a0 GFX GFX
    dw   `33300000                                     ;; 09:65d6 $e0 $e0 GFX GFX
    dw   `22300000                                     ;; 09:65d8 $20 $e0 GFX GFX
    dw   `22330000                                     ;; 09:65da $30 $f0 GFX GFX
    dw   `13323000                                     ;; 09:65dc $e8 $78 GFX GFX
    dw   `32221300                                     ;; 09:65de $8c $f4 GFX GFX
    dw   `00003323                                     ;; 09:65e0 $0d $0f GFX GFX
    dw   `00003231                                     ;; 09:65e2 $0b $0e GFX GFX
    dw   `00003231                                     ;; 09:65e4 $0b $0e GFX GFX
    dw   `00032333                                     ;; 09:65e6 $17 $1f GFX GFX
    dw   `00032331                                     ;; 09:65e8 $17 $1e GFX GFX
    dw   `00003131                                     ;; 09:65ea $0f $0a GFX GFX
    dw   `00032223                                     ;; 09:65ec $11 $1f GFX GFX
    dw   `00033333                                     ;; 09:65ee $1f $1f GFX GFX
    dw   `22113300                                     ;; 09:65f0 $3c $cc GFX GFX
    dw   `11330000                                     ;; 09:65f2 $f0 $30 GFX GFX
    dw   `33230000                                     ;; 09:65f4 $d0 $f0 GFX GFX
    dw   `22223000                                     ;; 09:65f6 $08 $f8 GFX GFX
    dw   `13223000                                     ;; 09:65f8 $c8 $78 GFX GFX
    dw   `13222300                                     ;; 09:65fa $c4 $7c GFX GFX
    dw   `32322230                                     ;; 09:65fc $a2 $fe GFX GFX
    dw   `33333333                                     ;; 09:65fe $ff $ff GFX GFX
    dw   `00000033                                     ;; 09:6600 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:6602 $07 $04 GFX GFX
    dw   `00003111                                     ;; 09:6604 $0f $08 GFX GFX
    dw   `00031133                                     ;; 09:6606 $1f $13 GFX GFX
    dw   `00311322                                     ;; 09:6608 $3c $27 GFX GFX
    dw   `03113222                                     ;; 09:660a $78 $4f GFX GFX
    dw   `03133331                                     ;; 09:660c $7f $5e GFX GFX
    dw   `03133131                                     ;; 09:660e $7f $5a GFX GFX
    dw   `33000000                                     ;; 09:6610 $c0 $c0 GFX GFX
    dw   `11300000                                     ;; 09:6612 $e0 $20 GFX GFX
    dw   `11130000                                     ;; 09:6614 $f0 $10 GFX GFX
    dw   `33113000                                     ;; 09:6616 $f8 $c8 GFX GFX
    dw   `22311300                                     ;; 09:6618 $3c $e4 GFX GFX
    dw   `12331130                                     ;; 09:661a $be $72 GFX GFX
    dw   `33133130                                     ;; 09:661c $fe $da GFX GFX
    dw   `13333130                                     ;; 09:661e $fe $7a GFX GFX
    dw   `00313131                                     ;; 09:6620 $3f $2a GFX GFX
    dw   `03122311                                     ;; 09:6622 $67 $5c GFX GFX
    dw   `31233233                                     ;; 09:6624 $db $bf GFX GFX
    dw   `32311311                                     ;; 09:6626 $bf $e4 GFX GFX
    dw   `32311311                                     ;; 09:6628 $bf $e4 GFX GFX
    dw   `32232332                                     ;; 09:662a $96 $ff GFX GFX
    dw   `03223113                                     ;; 09:662c $4f $79 GFX GFX
    dw   `00333333                                     ;; 09:662e $3f $3f GFX GFX
    dw   `13131300                                     ;; 09:6630 $fc $54 GFX GFX
    dw   `11311130                                     ;; 09:6632 $fe $22 GFX GFX
    dw   `33133223                                     ;; 09:6634 $f9 $df GFX GFX
    dw   `11311323                                     ;; 09:6636 $fd $27 GFX GFX
    dw   `11311323                                     ;; 09:6638 $fd $27 GFX GFX
    dw   `12133223                                     ;; 09:663a $b9 $5f GFX GFX
    dw   `22223230                                     ;; 09:663c $0a $fe GFX GFX
    dw   `33333300                                     ;; 09:663e $fc $fc GFX GFX
    dw   `00000033                                     ;; 09:6640 $03 $03 GFX GFX
    dw   `00000311                                     ;; 09:6642 $07 $04 GFX GFX
    dw   `00003131                                     ;; 09:6644 $0f $0a GFX GFX
    dw   `00031133                                     ;; 09:6646 $1f $13 GFX GFX
    dw   `00311111                                     ;; 09:6648 $3f $20 GFX GFX
    dw   `00311111                                     ;; 09:664a $3f $20 GFX GFX
    dw   `03111111                                     ;; 09:664c $7f $40 GFX GFX
    dw   `03111111                                     ;; 09:664e $7f $40 GFX GFX
    dw   `30000000                                     ;; 09:6650 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:6652 $c0 $40 GFX GFX
    dw   `11300000                                     ;; 09:6654 $e0 $20 GFX GFX
    dw   `11130000                                     ;; 09:6656 $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:6658 $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:665a $fc $04 GFX GFX
    dw   `11111300                                     ;; 09:665c $fc $04 GFX GFX
    dw   `11111300                                     ;; 09:665e $fc $04 GFX GFX
    dw   `00311111                                     ;; 09:6660 $3f $20 GFX GFX
    dw   `03111333                                     ;; 09:6662 $7f $47 GFX GFX
    dw   `31111111                                     ;; 09:6664 $ff $80 GFX GFX
    dw   `31332121                                     ;; 09:6666 $f5 $ba GFX GFX
    dw   `03322222                                     ;; 09:6668 $60 $7f GFX GFX
    dw   `00323332                                     ;; 09:666a $2e $3f GFX GFX
    dw   `00031113                                     ;; 09:666c $1f $11 GFX GFX
    dw   `03333333                                     ;; 09:666e $7f $7f GFX GFX
    dw   `11111300                                     ;; 09:6670 $fc $04 GFX GFX
    dw   `11133130                                     ;; 09:6672 $fe $1a GFX GFX
    dw   `11111113                                     ;; 09:6674 $ff $01 GFX GFX
    dw   `11113113                                     ;; 09:6676 $ff $09 GFX GFX
    dw   `11111323                                     ;; 09:6678 $fd $07 GFX GFX
    dw   `21212333                                     ;; 09:667a $57 $af GFX GFX
    dw   `32222300                                     ;; 09:667c $84 $fc GFX GFX
    dw   `33333330                                     ;; 09:667e $fe $fe GFX GFX
    dw   `00003333                                     ;; 09:6680 $0f $0f GFX GFX
    dw   `00031111                                     ;; 09:6682 $1f $10 GFX GFX
    dw   `00311111                                     ;; 09:6684 $3f $20 GFX GFX
    dw   `03113311                                     ;; 09:6686 $7f $4c GFX GFX
    dw   `03132231                                     ;; 09:6688 $73 $5e GFX GFX
    dw   `00323323                                     ;; 09:668a $2d $3f GFX GFX
    dw   `00031332                                     ;; 09:668c $1e $17 GFX GFX
    dw   `00031311                                     ;; 09:668e $1f $14 GFX GFX
    dw   `33333300                                     ;; 09:6690 $fc $fc GFX GFX
    dw   `11111300                                     ;; 09:6692 $fc $04 GFX GFX
    dw   `11113000                                     ;; 09:6694 $f8 $08 GFX GFX
    dw   `11130000                                     ;; 09:6696 $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:6698 $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:669a $fc $04 GFX GFX
    dw   `31111300                                     ;; 09:669c $fc $84 GFX GFX
    dw   `31113300                                     ;; 09:669e $fc $8c GFX GFX
    dw   `00031113                                     ;; 09:66a0 $1f $11 GFX GFX
    dw   `00003331                                     ;; 09:66a2 $0f $0e GFX GFX
    dw   `00000332                                     ;; 09:66a4 $06 $07 GFX GFX
    dw   `00003113                                     ;; 09:66a6 $0f $09 GFX GFX
    dw   `00003113                                     ;; 09:66a8 $0f $09 GFX GFX
    dw   `00000332                                     ;; 09:66aa $06 $07 GFX GFX
    dw   `00003113                                     ;; 09:66ac $0f $09 GFX GFX
    dw   `00333333                                     ;; 09:66ae $3f $3f GFX GFX
    dw   `11133000                                     ;; 09:66b0 $f8 $18 GFX GFX
    dw   `11330000                                     ;; 09:66b2 $f0 $30 GFX GFX
    dw   `21130000                                     ;; 09:66b4 $70 $90 GFX GFX
    dw   `21113000                                     ;; 09:66b6 $78 $88 GFX GFX
    dw   `22111300                                     ;; 09:66b8 $3c $c4 GFX GFX
    dw   `32211133                                     ;; 09:66ba $9f $e3 GFX GFX
    dw   `23222223                                     ;; 09:66bc $41 $ff GFX GFX
    dw   `33333333                                     ;; 09:66be $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:66c0 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:66c2 $0f $0f GFX GFX
    dw   `00031111                                     ;; 09:66c4 $1f $10 GFX GFX
    dw   `00311111                                     ;; 09:66c6 $3f $20 GFX GFX
    dw   `03113311                                     ;; 09:66c8 $7f $4c GFX GFX
    dw   `03132231                                     ;; 09:66ca $73 $5e GFX GFX
    dw   `00323323                                     ;; 09:66cc $2d $3f GFX GFX
    dw   `00031332                                     ;; 09:66ce $1e $17 GFX GFX
    dw   `00000000                                     ;; 09:66d0 $00 $00 GFX GFX
    dw   `33333300                                     ;; 09:66d2 $fc $fc GFX GFX
    dw   `11111300                                     ;; 09:66d4 $fc $04 GFX GFX
    dw   `11113000                                     ;; 09:66d6 $f8 $08 GFX GFX
    dw   `11130000                                     ;; 09:66d8 $f0 $10 GFX GFX
    dw   `11113000                                     ;; 09:66da $f8 $08 GFX GFX
    dw   `11111300                                     ;; 09:66dc $fc $04 GFX GFX
    dw   `31111300                                     ;; 09:66de $fc $84 GFX GFX
    dw   `00031311                                     ;; 09:66e0 $1f $14 GFX GFX
    dw   `00031113                                     ;; 09:66e2 $1f $11 GFX GFX
    dw   `00033331                                     ;; 09:66e4 $1f $1e GFX GFX
    dw   `00313111                                     ;; 09:66e6 $3f $28 GFX GFX
    dw   `00313113                                     ;; 09:66e8 $3f $29 GFX GFX
    dw   `00033223                                     ;; 09:66ea $19 $1f GFX GFX
    dw   `00311322                                     ;; 09:66ec $3c $27 GFX GFX
    dw   `03333333                                     ;; 09:66ee $7f $7f GFX GFX
    dw   `31113300                                     ;; 09:66f0 $fc $8c GFX GFX
    dw   `11133000                                     ;; 09:66f2 $f8 $18 GFX GFX
    dw   `11330000                                     ;; 09:66f4 $f0 $30 GFX GFX
    dw   `33113000                                     ;; 09:66f6 $f8 $c8 GFX GFX
    dw   `11311330                                     ;; 09:66f8 $fe $26 GFX GFX
    dw   `11322113                                     ;; 09:66fa $e7 $39 GFX GFX
    dw   `33232223                                     ;; 09:66fc $d1 $ff GFX GFX
    dw   `33333333                                     ;; 09:66fe $ff $ff GFX GFX
    dw   `00030033                                     ;; 09:6700 $13 $13 GFX GFX
    dw   `00313323                                     ;; 09:6702 $3d $2f GFX GFX
    dw   `03133223                                     ;; 09:6704 $79 $5f GFX GFX
    dw   `03111333                                     ;; 09:6706 $7f $47 GFX GFX
    dw   `00313111                                     ;; 09:6708 $3f $28 GFX GFX
    dw   `00031333                                     ;; 09:670a $1f $17 GFX GFX
    dw   `00313313                                     ;; 09:670c $3f $2d GFX GFX
    dw   `00033313                                     ;; 09:670e $1f $1d GFX GFX
    dw   `13003000                                     ;; 09:6710 $c8 $48 GFX GFX
    dw   `12331300                                     ;; 09:6712 $bc $74 GFX GFX
    dw   `12233130                                     ;; 09:6714 $9e $7a GFX GFX
    dw   `13331130                                     ;; 09:6716 $fe $72 GFX GFX
    dw   `11131300                                     ;; 09:6718 $fc $14 GFX GFX
    dw   `33313000                                     ;; 09:671a $f8 $e8 GFX GFX
    dw   `31331300                                     ;; 09:671c $fc $b4 GFX GFX
    dw   `31333000                                     ;; 09:671e $f8 $b8 GFX GFX
    dw   `03123133                                     ;; 09:6720 $6f $5b GFX GFX
    dw   `31122311                                     ;; 09:6722 $e7 $9c GFX GFX
    dw   `31132331                                     ;; 09:6724 $f7 $9e GFX GFX
    dw   `31332323                                     ;; 09:6726 $f5 $bf GFX GFX
    dw   `03033133                                     ;; 09:6728 $5f $5b GFX GFX
    dw   `00032222                                     ;; 09:672a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:672c $08 $0f GFX GFX
    dw   `00333333                                     ;; 09:672e $3f $3f GFX GFX
    dw   `33132300                                     ;; 09:6730 $f4 $dc GFX GFX
    dw   `11323300                                     ;; 09:6732 $ec $3c GFX GFX
    dw   `13231130                                     ;; 09:6734 $de $72 GFX GFX
    dw   `32231130                                     ;; 09:6736 $9e $f2 GFX GFX
    dw   `33333300                                     ;; 09:6738 $fc $fc GFX GFX
    dw   `32230000                                     ;; 09:673a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:673c $e0 $e0 GFX GFX
    dw   `33333300                                     ;; 09:673e $fc $fc GFX GFX
    dw   `00030033                                     ;; 09:6740 $13 $13 GFX GFX
    dw   `00313323                                     ;; 09:6742 $3d $2f GFX GFX
    dw   `03133223                                     ;; 09:6744 $79 $5f GFX GFX
    dw   `03113223                                     ;; 09:6746 $79 $4f GFX GFX
    dw   `00313223                                     ;; 09:6748 $39 $2f GFX GFX
    dw   `00033223                                     ;; 09:674a $19 $1f GFX GFX
    dw   `00311333                                     ;; 09:674c $3f $27 GFX GFX
    dw   `00031113                                     ;; 09:674e $1f $11 GFX GFX
    dw   `13003000                                     ;; 09:6750 $c8 $48 GFX GFX
    dw   `13331300                                     ;; 09:6752 $fc $74 GFX GFX
    dw   `13233130                                     ;; 09:6754 $de $7a GFX GFX
    dw   `13231130                                     ;; 09:6756 $de $72 GFX GFX
    dw   `13231300                                     ;; 09:6758 $dc $74 GFX GFX
    dw   `13233000                                     ;; 09:675a $d8 $78 GFX GFX
    dw   `13311300                                     ;; 09:675c $fc $64 GFX GFX
    dw   `11113330                                     ;; 09:675e $fe $0e GFX GFX
    dw   `00313311                                     ;; 09:6760 $3f $2c GFX GFX
    dw   `03112333                                     ;; 09:6762 $77 $4f GFX GFX
    dw   `03132322                                     ;; 09:6764 $74 $5f GFX GFX
    dw   `00332322                                     ;; 09:6766 $34 $3f GFX GFX
    dw   `00033133                                     ;; 09:6768 $1f $1b GFX GFX
    dw   `00032222                                     ;; 09:676a $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:676c $08 $0f GFX GFX
    dw   `00333333                                     ;; 09:676e $3f $3f GFX GFX
    dw   `11332130                                     ;; 09:6770 $f6 $3a GFX GFX
    dw   `33321113                                     ;; 09:6772 $ef $f1 GFX GFX
    dw   `22321113                                     ;; 09:6774 $2f $f1 GFX GFX
    dw   `22323113                                     ;; 09:6776 $2f $f9 GFX GFX
    dw   `33333330                                     ;; 09:6778 $fe $fe GFX GFX
    dw   `32230000                                     ;; 09:677a $90 $f0 GFX GFX
    dw   `33300000                                     ;; 09:677c $e0 $e0 GFX GFX
    dw   `33333300                                     ;; 09:677e $fc $fc GFX GFX
    dw   `00000333                                     ;; 09:6780 $07 $07 GFX GFX
    dw   `00003132                                     ;; 09:6782 $0e $0b GFX GFX
    dw   `00031322                                     ;; 09:6784 $1c $17 GFX GFX
    dw   `00031332                                     ;; 09:6786 $1e $17 GFX GFX
    dw   `00311113                                     ;; 09:6788 $3f $21 GFX GFX
    dw   `00033331                                     ;; 09:678a $1f $1e GFX GFX
    dw   `00003133                                     ;; 09:678c $0f $0b GFX GFX
    dw   `00003133                                     ;; 09:678e $0f $0b GFX GFX
    dw   `33000000                                     ;; 09:6790 $c0 $c0 GFX GFX
    dw   `22330000                                     ;; 09:6792 $30 $f0 GFX GFX
    dw   `22233000                                     ;; 09:6794 $18 $f8 GFX GFX
    dw   `22313000                                     ;; 09:6796 $38 $e8 GFX GFX
    dw   `31113000                                     ;; 09:6798 $f8 $88 GFX GFX
    dw   `31130000                                     ;; 09:679a $f0 $90 GFX GFX
    dw   `13323000                                     ;; 09:679c $e8 $78 GFX GFX
    dw   `31111300                                     ;; 09:679e $fc $84 GFX GFX
    dw   `00003331                                     ;; 09:67a0 $0f $0e GFX GFX
    dw   `00031113                                     ;; 09:67a2 $1f $11 GFX GFX
    dw   `00311133                                     ;; 09:67a4 $3f $23 GFX GFX
    dw   `00313331                                     ;; 09:67a6 $3f $2e GFX GFX
    dw   `00033231                                     ;; 09:67a8 $1b $1e GFX GFX
    dw   `00000323                                     ;; 09:67aa $05 $07 GFX GFX
    dw   `00003222                                     ;; 09:67ac $08 $0f GFX GFX
    dw   `00003333                                     ;; 09:67ae $0f $0f GFX GFX
    dw   `32233000                                     ;; 09:67b0 $98 $f8 GFX GFX
    dw   `23323000                                     ;; 09:67b2 $68 $f8 GFX GFX
    dw   `31130000                                     ;; 09:67b4 $f0 $90 GFX GFX
    dw   `13130000                                     ;; 09:67b6 $f0 $50 GFX GFX
    dw   `13300000                                     ;; 09:67b8 $e0 $60 GFX GFX
    dw   `31300000                                     ;; 09:67ba $e0 $a0 GFX GFX
    dw   `22300000                                     ;; 09:67bc $20 $e0 GFX GFX
    dw   `33300000                                     ;; 09:67be $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:67c0 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:67c2 $07 $07 GFX GFX
    dw   `00003132                                     ;; 09:67c4 $0e $0b GFX GFX
    dw   `00031322                                     ;; 09:67c6 $1c $17 GFX GFX
    dw   `00031332                                     ;; 09:67c8 $1e $17 GFX GFX
    dw   `00311113                                     ;; 09:67ca $3f $21 GFX GFX
    dw   `00033331                                     ;; 09:67cc $1f $1e GFX GFX
    dw   `00003133                                     ;; 09:67ce $0f $0b GFX GFX
    dw   `00000000                                     ;; 09:67d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:67d2 $c0 $c0 GFX GFX
    dw   `22330000                                     ;; 09:67d4 $30 $f0 GFX GFX
    dw   `22233000                                     ;; 09:67d6 $18 $f8 GFX GFX
    dw   `22313000                                     ;; 09:67d8 $38 $e8 GFX GFX
    dw   `31113000                                     ;; 09:67da $f8 $88 GFX GFX
    dw   `31130000                                     ;; 09:67dc $f0 $90 GFX GFX
    dw   `13323000                                     ;; 09:67de $e8 $78 GFX GFX
    dw   `00003133                                     ;; 09:67e0 $0f $0b GFX GFX
    dw   `00003331                                     ;; 09:67e2 $0f $0e GFX GFX
    dw   `00031113                                     ;; 09:67e4 $1f $11 GFX GFX
    dw   `00311132                                     ;; 09:67e6 $3e $23 GFX GFX
    dw   `00313322                                     ;; 09:67e8 $3c $2f GFX GFX
    dw   `00033132                                     ;; 09:67ea $1e $1b GFX GFX
    dw   `00322313                                     ;; 09:67ec $27 $3d GFX GFX
    dw   `00032233                                     ;; 09:67ee $13 $1f GFX GFX
    dw   `31111300                                     ;; 09:67f0 $fc $84 GFX GFX
    dw   `32233000                                     ;; 09:67f2 $98 $f8 GFX GFX
    dw   `23113000                                     ;; 09:67f4 $78 $c8 GFX GFX
    dw   `23131300                                     ;; 09:67f6 $7c $d4 GFX GFX
    dw   `22311300                                     ;; 09:67f8 $3c $e4 GFX GFX
    dw   `23133000                                     ;; 09:67fa $78 $d8 GFX GFX
    dw   `31322300                                     ;; 09:67fc $e4 $bc GFX GFX
    dw   `33223000                                     ;; 09:67fe $c8 $f8 GFX GFX
    dw   `00333003                                     ;; 09:6800 $39 $39 GFX GFX
    dw   `00311331                                     ;; 09:6802 $3f $26 GFX GFX
    dw   `00312111                                     ;; 09:6804 $37 $28 GFX GFX
    dw   `03311111                                     ;; 09:6806 $7f $60 GFX GFX
    dw   `32311111                                     ;; 09:6808 $bf $e0 GFX GFX
    dw   `32311131                                     ;; 09:680a $bf $e2 GFX GFX
    dw   `32311131                                     ;; 09:680c $bf $e2 GFX GFX
    dw   `32311112                                     ;; 09:680e $be $e1 GFX GFX
    dw   `30033300                                     ;; 09:6810 $9c $9c GFX GFX
    dw   `13311300                                     ;; 09:6812 $fc $64 GFX GFX
    dw   `11121300                                     ;; 09:6814 $ec $14 GFX GFX
    dw   `11111330                                     ;; 09:6816 $fe $06 GFX GFX
    dw   `11111323                                     ;; 09:6818 $fd $07 GFX GFX
    dw   `13111323                                     ;; 09:681a $fd $47 GFX GFX
    dw   `13111323                                     ;; 09:681c $fd $47 GFX GFX
    dw   `21111323                                     ;; 09:681e $7d $87 GFX GFX
    dw   `32331112                                     ;; 09:6820 $be $f1 GFX GFX
    dw   `33311111                                     ;; 09:6822 $ff $e0 GFX GFX
    dw   `03111111                                     ;; 09:6824 $7f $40 GFX GFX
    dw   `03113111                                     ;; 09:6826 $7f $48 GFX GFX
    dw   `00331113                                     ;; 09:6828 $3f $31 GFX GFX
    dw   `00003113                                     ;; 09:682a $0f $09 GFX GFX
    dw   `00000333                                     ;; 09:682c $07 $07 GFX GFX
    dw   `00333333                                     ;; 09:682e $3f $3f GFX GFX
    dw   `21113323                                     ;; 09:6830 $7d $8f GFX GFX
    dw   `11311333                                     ;; 09:6832 $ff $27 GFX GFX
    dw   `13111130                                     ;; 09:6834 $fe $42 GFX GFX
    dw   `13111300                                     ;; 09:6836 $fc $44 GFX GFX
    dw   `11333000                                     ;; 09:6838 $f8 $38 GFX GFX
    dw   `11113000                                     ;; 09:683a $f8 $08 GFX GFX
    dw   `12130000                                     ;; 09:683c $b0 $50 GFX GFX
    dw   `33333300                                     ;; 09:683e $fc $fc GFX GFX
    dw   `00333003                                     ;; 09:6840 $39 $39 GFX GFX
    dw   `00311331                                     ;; 09:6842 $3f $26 GFX GFX
    dw   `00311111                                     ;; 09:6844 $3f $20 GFX GFX
    dw   `00331111                                     ;; 09:6846 $3f $30 GFX GFX
    dw   `00323111                                     ;; 09:6848 $2f $38 GFX GFX
    dw   `03223111                                     ;; 09:684a $4f $78 GFX GFX
    dw   `32222331                                     ;; 09:684c $87 $fe GFX GFX
    dw   `32222223                                     ;; 09:684e $81 $ff GFX GFX
    dw   `30033300                                     ;; 09:6850 $9c $9c GFX GFX
    dw   `13311300                                     ;; 09:6852 $fc $64 GFX GFX
    dw   `11111300                                     ;; 09:6854 $fc $04 GFX GFX
    dw   `11113300                                     ;; 09:6856 $fc $0c GFX GFX
    dw   `11132300                                     ;; 09:6858 $f4 $1c GFX GFX
    dw   `11132230                                     ;; 09:685a $f2 $1e GFX GFX
    dw   `13322223                                     ;; 09:685c $e1 $7f GFX GFX
    dw   `32222223                                     ;; 09:685e $81 $ff GFX GFX
    dw   `32322223                                     ;; 09:6860 $a1 $ff GFX GFX
    dw   `03323323                                     ;; 09:6862 $6d $7f GFX GFX
    dw   `03131131                                     ;; 09:6864 $7f $52 GFX GFX
    dw   `03123111                                     ;; 09:6866 $6f $58 GFX GFX
    dw   `00331111                                     ;; 09:6868 $3f $30 GFX GFX
    dw   `00031113                                     ;; 09:686a $1f $11 GFX GFX
    dw   `00003333                                     ;; 09:686c $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:686e $1f $1f GFX GFX
    dw   `32222323                                     ;; 09:6870 $85 $ff GFX GFX
    dw   `32332330                                     ;; 09:6872 $b6 $fe GFX GFX
    dw   `13113330                                     ;; 09:6874 $fe $4e GFX GFX
    dw   `11113000                                     ;; 09:6876 $f8 $08 GFX GFX
    dw   `11113000                                     ;; 09:6878 $f8 $08 GFX GFX
    dw   `11113000                                     ;; 09:687a $f8 $08 GFX GFX
    dw   `12130000                                     ;; 09:687c $b0 $50 GFX GFX
    dw   `33333300                                     ;; 09:687e $fc $fc GFX GFX
    dw   `00003330                                     ;; 09:6880 $0e $0e GFX GFX
    dw   `00003213                                     ;; 09:6882 $0b $0d GFX GFX
    dw   `00031221                                     ;; 09:6884 $19 $16 GFX GFX
    dw   `00311121                                     ;; 09:6886 $3d $22 GFX GFX
    dw   `03111111                                     ;; 09:6888 $7f $40 GFX GFX
    dw   `03131111                                     ;; 09:688a $7f $50 GFX GFX
    dw   `03131111                                     ;; 09:688c $7f $50 GFX GFX
    dw   `32111111                                     ;; 09:688e $bf $c0 GFX GFX
    dw   `00000000                                     ;; 09:6890 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:6892 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:6894 $c0 $40 GFX GFX
    dw   `11303000                                     ;; 09:6896 $e8 $28 GFX GFX
    dw   `11132300                                     ;; 09:6898 $f4 $1c GFX GFX
    dw   `11132230                                     ;; 09:689a $f2 $1e GFX GFX
    dw   `11132230                                     ;; 09:689c $f2 $1e GFX GFX
    dw   `11122230                                     ;; 09:689e $e2 $1e GFX GFX
    dw   `32111111                                     ;; 09:68a0 $bf $c0 GFX GFX
    dw   `03111111                                     ;; 09:68a2 $7f $40 GFX GFX
    dw   `00311311                                     ;; 09:68a4 $3f $24 GFX GFX
    dw   `03111311                                     ;; 09:68a6 $7f $44 GFX GFX
    dw   `03211311                                     ;; 09:68a8 $5f $64 GFX GFX
    dw   `00331133                                     ;; 09:68aa $3f $33 GFX GFX
    dw   `00321111                                     ;; 09:68ac $2f $30 GFX GFX
    dw   `00333333                                     ;; 09:68ae $3f $3f GFX GFX
    dw   `11122230                                     ;; 09:68b0 $e2 $1e GFX GFX
    dw   `11133230                                     ;; 09:68b2 $fa $1e GFX GFX
    dw   `31130300                                     ;; 09:68b4 $f4 $94 GFX GFX
    dw   `31130000                                     ;; 09:68b6 $f0 $90 GFX GFX
    dw   `31130000                                     ;; 09:68b8 $f0 $90 GFX GFX
    dw   `11130000                                     ;; 09:68ba $f0 $10 GFX GFX
    dw   `11300000                                     ;; 09:68bc $e0 $20 GFX GFX
    dw   `33330000                                     ;; 09:68be $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:68c0 $00 $00 GFX GFX
    dw   `00003330                                     ;; 09:68c2 $0e $0e GFX GFX
    dw   `00003213                                     ;; 09:68c4 $0b $0d GFX GFX
    dw   `00031221                                     ;; 09:68c6 $19 $16 GFX GFX
    dw   `00311121                                     ;; 09:68c8 $3d $22 GFX GFX
    dw   `03111111                                     ;; 09:68ca $7f $40 GFX GFX
    dw   `03131111                                     ;; 09:68cc $7f $50 GFX GFX
    dw   `03131111                                     ;; 09:68ce $7f $50 GFX GFX
    dw   `00000000                                     ;; 09:68d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:68d2 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:68d4 $80 $80 GFX GFX
    dw   `13000300                                     ;; 09:68d6 $c4 $44 GFX GFX
    dw   `11303230                                     ;; 09:68d8 $ea $2e GFX GFX
    dw   `11133223                                     ;; 09:68da $f9 $1f GFX GFX
    dw   `11132223                                     ;; 09:68dc $f1 $1f GFX GFX
    dw   `11132223                                     ;; 09:68de $f1 $1f GFX GFX
    dw   `32111111                                     ;; 09:68e0 $bf $c0 GFX GFX
    dw   `32111111                                     ;; 09:68e2 $bf $c0 GFX GFX
    dw   `03111111                                     ;; 09:68e4 $7f $40 GFX GFX
    dw   `00311311                                     ;; 09:68e6 $3f $24 GFX GFX
    dw   `03311131                                     ;; 09:68e8 $7f $62 GFX GFX
    dw   `32111113                                     ;; 09:68ea $bf $c1 GFX GFX
    dw   `03211333                                     ;; 09:68ec $5f $67 GFX GFX
    dw   `33333333                                     ;; 09:68ee $ff $ff GFX GFX
    dw   `11122223                                     ;; 09:68f0 $e1 $1f GFX GFX
    dw   `11123323                                     ;; 09:68f2 $ed $1f GFX GFX
    dw   `11130030                                     ;; 09:68f4 $f2 $12 GFX GFX
    dw   `13130000                                     ;; 09:68f6 $f0 $50 GFX GFX
    dw   `13113000                                     ;; 09:68f8 $f8 $48 GFX GFX
    dw   `31113000                                     ;; 09:68fa $f8 $88 GFX GFX
    dw   `32130000                                     ;; 09:68fc $b0 $d0 GFX GFX
    dw   `33333300                                     ;; 09:68fe $fc $fc GFX GFX
    dw   `00003333                                     ;; 09:6900 $0f $0f GFX GFX
    dw   `00032232                                     ;; 09:6902 $12 $1f GFX GFX
    dw   `00003232                                     ;; 09:6904 $0a $0f GFX GFX
    dw   `00003111                                     ;; 09:6906 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:6908 $0f $08 GFX GFX
    dw   `00003331                                     ;; 09:690a $0f $0e GFX GFX
    dw   `00003131                                     ;; 09:690c $0f $0a GFX GFX
    dw   `00333311                                     ;; 09:690e $3f $3c GFX GFX
    dw   `33300000                                     ;; 09:6910 $e0 $e0 GFX GFX
    dw   `23230000                                     ;; 09:6912 $50 $f0 GFX GFX
    dw   `32233000                                     ;; 09:6914 $98 $f8 GFX GFX
    dw   `11323000                                     ;; 09:6916 $e8 $38 GFX GFX
    dw   `11323000                                     ;; 09:6918 $e8 $38 GFX GFX
    dw   `33130000                                     ;; 09:691a $f0 $d0 GFX GFX
    dw   `13130000                                     ;; 09:691c $f0 $50 GFX GFX
    dw   `11333300                                     ;; 09:691e $fc $3c GFX GFX
    dw   `03333333                                     ;; 09:6920 $7f $7f GFX GFX
    dw   `03333312                                     ;; 09:6922 $7e $7d GFX GFX
    dw   `32333313                                     ;; 09:6924 $bf $fd GFX GFX
    dw   `31133333                                     ;; 09:6926 $ff $9f GFX GFX
    dw   `03303333                                     ;; 09:6928 $6f $6f GFX GFX
    dw   `00003333                                     ;; 09:692a $0f $0f GFX GFX
    dw   `00003223                                     ;; 09:692c $09 $0f GFX GFX
    dw   `00000333                                     ;; 09:692e $07 $07 GFX GFX
    dw   `33333330                                     ;; 09:6930 $fe $fe GFX GFX
    dw   `21331130                                     ;; 09:6932 $7e $b2 GFX GFX
    dw   `31331130                                     ;; 09:6934 $fe $b2 GFX GFX
    dw   `33333300                                     ;; 09:6936 $fc $fc GFX GFX
    dw   `33330000                                     ;; 09:6938 $f0 $f0 GFX GFX
    dw   `03330000                                     ;; 09:693a $70 $70 GFX GFX
    dw   `03300000                                     ;; 09:693c $60 $60 GFX GFX
    dw   `00000000                                     ;; 09:693e $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:6940 $07 $07 GFX GFX
    dw   `00003232                                     ;; 09:6942 $0a $0f GFX GFX
    dw   `00003222                                     ;; 09:6944 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:6946 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:6948 $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:694a $08 $0f GFX GFX
    dw   `00000312                                     ;; 09:694c $06 $05 GFX GFX
    dw   `00033331                                     ;; 09:694e $1f $1e GFX GFX
    dw   `33300000                                     ;; 09:6950 $e0 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6952 $10 $f0 GFX GFX
    dw   `22223000                                     ;; 09:6954 $08 $f8 GFX GFX
    dw   `22230000                                     ;; 09:6956 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:6958 $10 $f0 GFX GFX
    dw   `22230000                                     ;; 09:695a $10 $f0 GFX GFX
    dw   `21300000                                     ;; 09:695c $60 $a0 GFX GFX
    dw   `13333000                                     ;; 09:695e $f8 $78 GFX GFX
    dw   `00333333                                     ;; 09:6960 $3f $3f GFX GFX
    dw   `00333333                                     ;; 09:6962 $3f $3f GFX GFX
    dw   `00033333                                     ;; 09:6964 $1f $1f GFX GFX
    dw   `00003333                                     ;; 09:6966 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:6968 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:696a $0f $0f GFX GFX
    dw   `00003223                                     ;; 09:696c $09 $0f GFX GFX
    dw   `00000333                                     ;; 09:696e $07 $07 GFX GFX
    dw   `33333300                                     ;; 09:6970 $fc $fc GFX GFX
    dw   `33333330                                     ;; 09:6972 $fe $fe GFX GFX
    dw   `33333230                                     ;; 09:6974 $fa $fe GFX GFX
    dw   `33333130                                     ;; 09:6976 $fe $fa GFX GFX
    dw   `33330300                                     ;; 09:6978 $f4 $f4 GFX GFX
    dw   `03330000                                     ;; 09:697a $70 $70 GFX GFX
    dw   `03300000                                     ;; 09:697c $60 $60 GFX GFX
    dw   `00000000                                     ;; 09:697e $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:6980 $0f $0f GFX GFX
    dw   `00032232                                     ;; 09:6982 $12 $1f GFX GFX
    dw   `00003232                                     ;; 09:6984 $0a $0f GFX GFX
    dw   `00003111                                     ;; 09:6986 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:6988 $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:698a $0f $0f GFX GFX
    dw   `00003131                                     ;; 09:698c $0f $0a GFX GFX
    dw   `00003111                                     ;; 09:698e $0f $08 GFX GFX
    dw   `33000000                                     ;; 09:6990 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:6992 $60 $e0 GFX GFX
    dw   `32230000                                     ;; 09:6994 $90 $f0 GFX GFX
    dw   `22230000                                     ;; 09:6996 $10 $f0 GFX GFX
    dw   `32230000                                     ;; 09:6998 $90 $f0 GFX GFX
    dw   `13300000                                     ;; 09:699a $e0 $60 GFX GFX
    dw   `13300000                                     ;; 09:699c $e0 $60 GFX GFX
    dw   `33000000                                     ;; 09:699e $c0 $c0 GFX GFX
    dw   `00000333                                     ;; 09:69a0 $07 $07 GFX GFX
    dw   `00003213                                     ;; 09:69a2 $0b $0d GFX GFX
    dw   `00000333                                     ;; 09:69a4 $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:69a6 $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:69a8 $07 $07 GFX GFX
    dw   `00000033                                     ;; 09:69aa $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:69ac $04 $07 GFX GFX
    dw   `00000333                                     ;; 09:69ae $07 $07 GFX GFX
    dw   `33300000                                     ;; 09:69b0 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:69b2 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:69b4 $f0 $f0 GFX GFX
    dw   `11330000                                     ;; 09:69b6 $f0 $30 GFX GFX
    dw   `11300000                                     ;; 09:69b8 $e0 $20 GFX GFX
    dw   `33000000                                     ;; 09:69ba $c0 $c0 GFX GFX
    dw   `23000000                                     ;; 09:69bc $40 $c0 GFX GFX
    dw   `33000000                                     ;; 09:69be $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:69c0 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:69c2 $0f $0f GFX GFX
    dw   `00032232                                     ;; 09:69c4 $12 $1f GFX GFX
    dw   `00003232                                     ;; 09:69c6 $0a $0f GFX GFX
    dw   `00003111                                     ;; 09:69c8 $0f $08 GFX GFX
    dw   `00003111                                     ;; 09:69ca $0f $08 GFX GFX
    dw   `00003333                                     ;; 09:69cc $0f $0f GFX GFX
    dw   `00003131                                     ;; 09:69ce $0f $0a GFX GFX
    dw   `00000000                                     ;; 09:69d0 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:69d2 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:69d4 $60 $e0 GFX GFX
    dw   `32230000                                     ;; 09:69d6 $90 $f0 GFX GFX
    dw   `22230000                                     ;; 09:69d8 $10 $f0 GFX GFX
    dw   `32230000                                     ;; 09:69da $90 $f0 GFX GFX
    dw   `13300000                                     ;; 09:69dc $e0 $60 GFX GFX
    dw   `13300000                                     ;; 09:69de $e0 $60 GFX GFX
    dw   `00003111                                     ;; 09:69e0 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:69e2 $07 $07 GFX GFX
    dw   `00003213                                     ;; 09:69e4 $0b $0d GFX GFX
    dw   `00000333                                     ;; 09:69e6 $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:69e8 $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:69ea $1f $1f GFX GFX
    dw   `00032333                                     ;; 09:69ec $17 $1f GFX GFX
    dw   `00003300                                     ;; 09:69ee $0c $0c GFX GFX
    dw   `33000000                                     ;; 09:69f0 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:69f2 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:69f4 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:69f6 $f0 $f0 GFX GFX
    dw   `33113000                                     ;; 09:69f8 $f8 $c8 GFX GFX
    dw   `33113000                                     ;; 09:69fa $f8 $c8 GFX GFX
    dw   `33330000                                     ;; 09:69fc $f0 $f0 GFX GFX
    dw   `03300000                                     ;; 09:69fe $60 $60 GFX GFX
    dw   `00033030                                     ;; 09:6a00 $1a $1a GFX GFX
    dw   `00322323                                     ;; 09:6a02 $25 $3f GFX GFX
    dw   `00332222                                     ;; 09:6a04 $30 $3f GFX GFX
    dw   `03222222                                     ;; 09:6a06 $40 $7f GFX GFX
    dw   `32323332                                     ;; 09:6a08 $ae $ff GFX GFX
    dw   `03222313                                     ;; 09:6a0a $47 $7d GFX GFX
    dw   `03232222                                     ;; 09:6a0c $50 $7f GFX GFX
    dw   `00333213                                     ;; 09:6a0e $3b $3d GFX GFX
    dw   `33033000                                     ;; 09:6a10 $d8 $d8 GFX GFX
    dw   `22322300                                     ;; 09:6a12 $24 $fc GFX GFX
    dw   `22223300                                     ;; 09:6a14 $0c $fc GFX GFX
    dw   `22222230                                     ;; 09:6a16 $02 $fe GFX GFX
    dw   `23332323                                     ;; 09:6a18 $75 $ff GFX GFX
    dw   `31322230                                     ;; 09:6a1a $e2 $be GFX GFX
    dw   `22223230                                     ;; 09:6a1c $0a $fe GFX GFX
    dw   `31233300                                     ;; 09:6a1e $dc $bc GFX GFX
    dw   `03221322                                     ;; 09:6a20 $4c $77 GFX GFX
    dw   `32211133                                     ;; 09:6a22 $9f $e3 GFX GFX
    dw   `32321111                                     ;; 09:6a24 $af $f0 GFX GFX
    dw   `03332222                                     ;; 09:6a26 $70 $7f GFX GFX
    dw   `00031111                                     ;; 09:6a28 $1f $10 GFX GFX
    dw   `00032222                                     ;; 09:6a2a $10 $1f GFX GFX
    dw   `00003121                                     ;; 09:6a2c $0d $0a GFX GFX
    dw   `00033333                                     ;; 09:6a2e $1f $1f GFX GFX
    dw   `22322300                                     ;; 09:6a30 $24 $fc GFX GFX
    dw   `33112230                                     ;; 09:6a32 $f2 $ce GFX GFX
    dw   `11112223                                     ;; 09:6a34 $f1 $0f GFX GFX
    dw   `22223223                                     ;; 09:6a36 $09 $ff GFX GFX
    dw   `11123223                                     ;; 09:6a38 $e9 $1f GFX GFX
    dw   `32230330                                     ;; 09:6a3a $96 $f6 GFX GFX
    dw   `33330000                                     ;; 09:6a3c $f0 $f0 GFX GFX
    dw   `33333300                                     ;; 09:6a3e $fc $fc GFX GFX
    dw   `00033030                                     ;; 09:6a40 $1a $1a GFX GFX
    dw   `00322323                                     ;; 09:6a42 $25 $3f GFX GFX
    dw   `00332222                                     ;; 09:6a44 $30 $3f GFX GFX
    dw   `03222222                                     ;; 09:6a46 $40 $7f GFX GFX
    dw   `32322222                                     ;; 09:6a48 $a0 $ff GFX GFX
    dw   `03222222                                     ;; 09:6a4a $40 $7f GFX GFX
    dw   `03232222                                     ;; 09:6a4c $50 $7f GFX GFX
    dw   `00333222                                     ;; 09:6a4e $38 $3f GFX GFX
    dw   `33033000                                     ;; 09:6a50 $d8 $d8 GFX GFX
    dw   `22322300                                     ;; 09:6a52 $24 $fc GFX GFX
    dw   `22223300                                     ;; 09:6a54 $0c $fc GFX GFX
    dw   `22222230                                     ;; 09:6a56 $02 $fe GFX GFX
    dw   `22222323                                     ;; 09:6a58 $05 $ff GFX GFX
    dw   `22222230                                     ;; 09:6a5a $02 $fe GFX GFX
    dw   `22223230                                     ;; 09:6a5c $0a $fe GFX GFX
    dw   `22233300                                     ;; 09:6a5e $1c $fc GFX GFX
    dw   `03221111                                     ;; 09:6a60 $4f $70 GFX GFX
    dw   `32221111                                     ;; 09:6a62 $8f $f0 GFX GFX
    dw   `32322111                                     ;; 09:6a64 $a7 $f8 GFX GFX
    dw   `03331222                                     ;; 09:6a66 $78 $77 GFX GFX
    dw   `00032111                                     ;; 09:6a68 $17 $18 GFX GFX
    dw   `00032222                                     ;; 09:6a6a $10 $1f GFX GFX
    dw   `00003121                                     ;; 09:6a6c $0d $0a GFX GFX
    dw   `00033333                                     ;; 09:6a6e $1f $1f GFX GFX
    dw   `11112300                                     ;; 09:6a70 $f4 $0c GFX GFX
    dw   `11112230                                     ;; 09:6a72 $f2 $0e GFX GFX
    dw   `11112223                                     ;; 09:6a74 $f1 $0f GFX GFX
    dw   `22223223                                     ;; 09:6a76 $09 $ff GFX GFX
    dw   `11123223                                     ;; 09:6a78 $e9 $1f GFX GFX
    dw   `32230330                                     ;; 09:6a7a $96 $f6 GFX GFX
    dw   `33330000                                     ;; 09:6a7c $f0 $f0 GFX GFX
    dw   `33333300                                     ;; 09:6a7e $fc $fc GFX GFX
    dw   `00000033                                     ;; 09:6a80 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:6a82 $04 $07 GFX GFX
    dw   `00003222                                     ;; 09:6a84 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:6a86 $10 $1f GFX GFX
    dw   `00032222                                     ;; 09:6a88 $10 $1f GFX GFX
    dw   `00323322                                     ;; 09:6a8a $2c $3f GFX GFX
    dw   `00331322                                     ;; 09:6a8c $3c $37 GFX GFX
    dw   `03222222                                     ;; 09:6a8e $40 $7f GFX GFX
    dw   `33333000                                     ;; 09:6a90 $f8 $f8 GFX GFX
    dw   `23222300                                     ;; 09:6a92 $44 $fc GFX GFX
    dw   `32223000                                     ;; 09:6a94 $88 $f8 GFX GFX
    dw   `22233000                                     ;; 09:6a96 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:6a98 $04 $fc GFX GFX
    dw   `22233000                                     ;; 09:6a9a $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:6a9c $04 $fc GFX GFX
    dw   `22223000                                     ;; 09:6a9e $08 $f8 GFX GFX
    dw   `00321233                                     ;; 09:6aa0 $2b $37 GFX GFX
    dw   `00033311                                     ;; 09:6aa2 $1f $1c GFX GFX
    dw   `00031111                                     ;; 09:6aa4 $1f $10 GFX GFX
    dw   `00032222                                     ;; 09:6aa6 $10 $1f GFX GFX
    dw   `00003111                                     ;; 09:6aa8 $0f $08 GFX GFX
    dw   `00003322                                     ;; 09:6aaa $0c $0f GFX GFX
    dw   `00003122                                     ;; 09:6aac $0c $0b GFX GFX
    dw   `00033333                                     ;; 09:6aae $1f $1f GFX GFX
    dw   `33233000                                     ;; 09:6ab0 $d8 $f8 GFX GFX
    dw   `22222300                                     ;; 09:6ab2 $04 $fc GFX GFX
    dw   `13222300                                     ;; 09:6ab4 $c4 $7c GFX GFX
    dw   `32222300                                     ;; 09:6ab6 $84 $fc GFX GFX
    dw   `32223000                                     ;; 09:6ab8 $88 $f8 GFX GFX
    dw   `23330000                                     ;; 09:6aba $70 $f0 GFX GFX
    dw   `22300000                                     ;; 09:6abc $20 $e0 GFX GFX
    dw   `33333000                                     ;; 09:6abe $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:6ac0 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:6ac2 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:6ac4 $04 $07 GFX GFX
    dw   `00003222                                     ;; 09:6ac6 $08 $0f GFX GFX
    dw   `00032222                                     ;; 09:6ac8 $10 $1f GFX GFX
    dw   `00032222                                     ;; 09:6aca $10 $1f GFX GFX
    dw   `00323322                                     ;; 09:6acc $2c $3f GFX GFX
    dw   `00331322                                     ;; 09:6ace $3c $37 GFX GFX
    dw   `00000000                                     ;; 09:6ad0 $00 $00 GFX GFX
    dw   `33333000                                     ;; 09:6ad2 $f8 $f8 GFX GFX
    dw   `23222300                                     ;; 09:6ad4 $44 $fc GFX GFX
    dw   `32223000                                     ;; 09:6ad6 $88 $f8 GFX GFX
    dw   `22233000                                     ;; 09:6ad8 $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:6ada $04 $fc GFX GFX
    dw   `22233000                                     ;; 09:6adc $18 $f8 GFX GFX
    dw   `22222300                                     ;; 09:6ade $04 $fc GFX GFX
    dw   `03222222                                     ;; 09:6ae0 $40 $7f GFX GFX
    dw   `00321233                                     ;; 09:6ae2 $2b $37 GFX GFX
    dw   `00033311                                     ;; 09:6ae4 $1f $1c GFX GFX
    dw   `00031222                                     ;; 09:6ae6 $18 $17 GFX GFX
    dw   `03333111                                     ;; 09:6ae8 $7f $78 GFX GFX
    dw   `03122222                                     ;; 09:6aea $60 $5f GFX GFX
    dw   `00322233                                     ;; 09:6aec $23 $3f GFX GFX
    dw   `03333333                                     ;; 09:6aee $7f $7f GFX GFX
    dw   `22223000                                     ;; 09:6af0 $08 $f8 GFX GFX
    dw   `33233300                                     ;; 09:6af2 $dc $fc GFX GFX
    dw   `12222230                                     ;; 09:6af4 $82 $7e GFX GFX
    dw   `22322223                                     ;; 09:6af6 $21 $ff GFX GFX
    dw   `11232223                                     ;; 09:6af8 $d1 $3f GFX GFX
    dw   `22223330                                     ;; 09:6afa $0e $fe GFX GFX
    dw   `33122230                                     ;; 09:6afc $e2 $de GFX GFX
    dw   `33333330                                     ;; 09:6afe $fe $fe GFX GFX
    dw   `00000000                                     ;; 09:6b00 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:6b02 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:6b04 $03 $03 GFX GFX
    dw   `00300033                                     ;; 09:6b06 $23 $23 GFX GFX
    dw   `00033033                                     ;; 09:6b08 $1b $1b GFX GFX
    dw   `00003303                                     ;; 09:6b0a $0d $0d GFX GFX
    dw   `00003333                                     ;; 09:6b0c $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:6b0e $1f $1f GFX GFX
    dw   `30000000                                     ;; 09:6b10 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:6b12 $00 $00 GFX GFX
    dw   `00300000                                     ;; 09:6b14 $20 $20 GFX GFX
    dw   `30300000                                     ;; 09:6b16 $a0 $a0 GFX GFX
    dw   `33033000                                     ;; 09:6b18 $d8 $d8 GFX GFX
    dw   `33303000                                     ;; 09:6b1a $e8 $e8 GFX GFX
    dw   `23303300                                     ;; 09:6b1c $6c $ec GFX GFX
    dw   `22333300                                     ;; 09:6b1e $3c $fc GFX GFX
    dw   `00033232                                     ;; 09:6b20 $1a $1f GFX GFX
    dw   `00332231                                     ;; 09:6b22 $33 $3e GFX GFX
    dw   `03333222                                     ;; 09:6b24 $78 $7f GFX GFX
    dw   `00332321                                     ;; 09:6b26 $35 $3e GFX GFX
    dw   `00333222                                     ;; 09:6b28 $38 $3f GFX GFX
    dw   `00033232                                     ;; 09:6b2a $1a $1f GFX GFX
    dw   `00030333                                     ;; 09:6b2c $17 $17 GFX GFX
    dw   `00003033                                     ;; 09:6b2e $0b $0b GFX GFX
    dw   `12332330                                     ;; 09:6b30 $b6 $7e GFX GFX
    dw   `21232330                                     ;; 09:6b32 $56 $be GFX GFX
    dw   `11122330                                     ;; 09:6b34 $e6 $1e GFX GFX
    dw   `11223330                                     ;; 09:6b36 $ce $3e GFX GFX
    dw   `12323300                                     ;; 09:6b38 $ac $7c GFX GFX
    dw   `23233300                                     ;; 09:6b3a $5c $fc GFX GFX
    dw   `23333000                                     ;; 09:6b3c $78 $f8 GFX GFX
    dw   `30330300                                     ;; 09:6b3e $b4 $b4 GFX GFX
    dw   `03300330                                     ;; 09:6b40 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b42 $66 $66 GFX GFX
    dw   `32333233                                     ;; 09:6b44 $bb $ff GFX GFX
    dw   `03300330                                     ;; 09:6b46 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b48 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b4a $66 $66 GFX GFX
    dw   `32333233                                     ;; 09:6b4c $bb $ff GFX GFX
    dw   `03300330                                     ;; 09:6b4e $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b50 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b52 $66 $66 GFX GFX
    dw   `32333233                                     ;; 09:6b54 $bb $ff GFX GFX
    dw   `03300330                                     ;; 09:6b56 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b58 $66 $66 GFX GFX
    dw   `03300330                                     ;; 09:6b5a $66 $66 GFX GFX
    dw   `32333233                                     ;; 09:6b5c $bb $ff GFX GFX
    dw   `03300330                                     ;; 09:6b5e $66 $66 GFX GFX
    dw   `00000000                                     ;; 09:6b60 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b62 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b64 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b66 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b68 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b6a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b6c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b6e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b70 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b72 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b74 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b76 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b78 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b7a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b7c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b7e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6b80 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:6b82 $03 $03 GFX GFX
    dw   `00000313                                     ;; 09:6b84 $07 $05 GFX GFX
    dw   `00033332                                     ;; 09:6b86 $1e $1f GFX GFX
    dw   `00322223                                     ;; 09:6b88 $21 $3f GFX GFX
    dw   `03222332                                     ;; 09:6b8a $46 $7f GFX GFX
    dw   `03223312                                     ;; 09:6b8c $4e $7d GFX GFX
    dw   `31323312                                     ;; 09:6b8e $ee $bd GFX GFX
    dw   `00000000                                     ;; 09:6b90 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:6b92 $c0 $c0 GFX GFX
    dw   `13330000                                     ;; 09:6b94 $f0 $70 GFX GFX
    dw   `33130000                                     ;; 09:6b96 $f0 $d0 GFX GFX
    dw   `31300000                                     ;; 09:6b98 $e0 $a0 GFX GFX
    dw   `33000000                                     ;; 09:6b9a $c0 $c0 GFX GFX
    dw   `23000000                                     ;; 09:6b9c $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:6b9e $40 $c0 GFX GFX
    dw   `31132222                                     ;; 09:6ba0 $f0 $9f GFX GFX
    dw   `31322222                                     ;; 09:6ba2 $e0 $bf GFX GFX
    dw   `03322231                                     ;; 09:6ba4 $63 $7e GFX GFX
    dw   `00322231                                     ;; 09:6ba6 $23 $3e GFX GFX
    dw   `00032223                                     ;; 09:6ba8 $11 $1f GFX GFX
    dw   `00003332                                     ;; 09:6baa $0e $0f GFX GFX
    dw   `00032313                                     ;; 09:6bac $17 $1d GFX GFX
    dw   `00033033                                     ;; 09:6bae $1b $1b GFX GFX
    dw   `23000000                                     ;; 09:6bb0 $40 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6bb2 $20 $e0 GFX GFX
    dw   `22300000                                     ;; 09:6bb4 $20 $e0 GFX GFX
    dw   `21300000                                     ;; 09:6bb6 $60 $a0 GFX GFX
    dw   `11330000                                     ;; 09:6bb8 $f0 $30 GFX GFX
    dw   `33223300                                     ;; 09:6bba $cc $fc GFX GFX
    dw   `13311330                                     ;; 09:6bbc $fe $66 GFX GFX
    dw   `30033300                                     ;; 09:6bbe $9c $9c GFX GFX
    dw   `00000003                                     ;; 09:6bc0 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:6bc2 $03 $02 GFX GFX
    dw   `00003333                                     ;; 09:6bc4 $0f $0f GFX GFX
    dw   `00032222                                     ;; 09:6bc6 $10 $1f GFX GFX
    dw   `00322233                                     ;; 09:6bc8 $23 $3f GFX GFX
    dw   `03322331                                     ;; 09:6bca $67 $7e GFX GFX
    dw   `31132331                                     ;; 09:6bcc $f7 $9e GFX GFX
    dw   `31313222                                     ;; 09:6bce $f8 $af GFX GFX
    dw   `33300000                                     ;; 09:6bd0 $e0 $e0 GFX GFX
    dw   `31333000                                     ;; 09:6bd2 $f8 $b8 GFX GFX
    dw   `23313000                                     ;; 09:6bd4 $78 $e8 GFX GFX
    dw   `33130000                                     ;; 09:6bd6 $f0 $d0 GFX GFX
    dw   `23300000                                     ;; 09:6bd8 $60 $e0 GFX GFX
    dw   `22300000                                     ;; 09:6bda $20 $e0 GFX GFX
    dw   `22300333                                     ;; 09:6bdc $27 $e7 GFX GFX
    dw   `22333113                                     ;; 09:6bde $3f $f9 GFX GFX
    dw   `03313222                                     ;; 09:6be0 $78 $6f GFX GFX
    dw   `03132222                                     ;; 09:6be2 $70 $5f GFX GFX
    dw   `00332222                                     ;; 09:6be4 $30 $3f GFX GFX
    dw   `00032222                                     ;; 09:6be6 $10 $1f GFX GFX
    dw   `00003222                                     ;; 09:6be8 $08 $0f GFX GFX
    dw   `00000333                                     ;; 09:6bea $07 $07 GFX GFX
    dw   `00003231                                     ;; 09:6bec $0b $0e GFX GFX
    dw   `00003303                                     ;; 09:6bee $0d $0d GFX GFX
    dw   `22322130                                     ;; 09:6bf0 $26 $fa GFX GFX
    dw   `23223300                                     ;; 09:6bf2 $4c $fc GFX GFX
    dw   `22222130                                     ;; 09:6bf4 $06 $fa GFX GFX
    dw   `22321300                                     ;; 09:6bf6 $2c $f4 GFX GFX
    dw   `32233230                                     ;; 09:6bf8 $9a $fe GFX GFX
    dw   `23332113                                     ;; 09:6bfa $77 $f9 GFX GFX
    dw   `31303333                                     ;; 09:6bfc $ef $af GFX GFX
    dw   `33000000                                     ;; 09:6bfe $c0 $c0 GFX GFX
    dw   `00000033                                     ;; 09:6c00 $03 $03 GFX GFX
    dw   `00033322                                     ;; 09:6c02 $1c $1f GFX GFX
    dw   `00332233                                     ;; 09:6c04 $33 $3f GFX GFX
    dw   `03321331                                     ;; 09:6c06 $6f $76 GFX GFX
    dw   `03213112                                     ;; 09:6c08 $5e $69 GFX GFX
    dw   `03113122                                     ;; 09:6c0a $7c $4b GFX GFX
    dw   `32122222                                     ;; 09:6c0c $a0 $df GFX GFX
    dw   `32122222                                     ;; 09:6c0e $a0 $df GFX GFX
    dw   `33330000                                     ;; 09:6c10 $f0 $f0 GFX GFX
    dw   `22333000                                     ;; 09:6c12 $38 $f8 GFX GFX
    dw   `32222300                                     ;; 09:6c14 $84 $fc GFX GFX
    dw   `12232300                                     ;; 09:6c16 $94 $7c GFX GFX
    dw   `22223230                                     ;; 09:6c18 $0a $fe GFX GFX
    dw   `22223130                                     ;; 09:6c1a $0e $fa GFX GFX
    dw   `22123323                                     ;; 09:6c1c $2d $df GFX GFX
    dw   `22123133                                     ;; 09:6c1e $2f $db GFX GFX
    dw   `32223222                                     ;; 09:6c20 $88 $ff GFX GFX
    dw   `32323222                                     ;; 09:6c22 $a8 $ff GFX GFX
    dw   `33323322                                     ;; 09:6c24 $ec $ff GFX GFX
    dw   `03232222                                     ;; 09:6c26 $50 $7f GFX GFX
    dw   `03233232                                     ;; 09:6c28 $5a $7f GFX GFX
    dw   `00332332                                     ;; 09:6c2a $36 $3f GFX GFX
    dw   `00033233                                     ;; 09:6c2c $1b $1f GFX GFX
    dw   `00000333                                     ;; 09:6c2e $07 $07 GFX GFX
    dw   `22212123                                     ;; 09:6c30 $15 $eb GFX GFX
    dw   `22212213                                     ;; 09:6c32 $13 $ed GFX GFX
    dw   `22322233                                     ;; 09:6c34 $23 $ff GFX GFX
    dw   `22322230                                     ;; 09:6c36 $22 $fe GFX GFX
    dw   `23232330                                     ;; 09:6c38 $56 $fe GFX GFX
    dw   `33232300                                     ;; 09:6c3a $d4 $fc GFX GFX
    dw   `32333300                                     ;; 09:6c3c $bc $fc GFX GFX
    dw   `33333000                                     ;; 09:6c3e $f8 $f8 GFX GFX
    dw   `00000333                                     ;; 09:6c40 $07 $07 GFX GFX
    dw   `00033111                                     ;; 09:6c42 $1f $18 GFX GFX
    dw   `00311333                                     ;; 09:6c44 $3f $27 GFX GFX
    dw   `03133222                                     ;; 09:6c46 $78 $5f GFX GFX
    dw   `03133333                                     ;; 09:6c48 $7f $5f GFX GFX
    dw   `31311333                                     ;; 09:6c4a $ff $a7 GFX GFX
    dw   `31233111                                     ;; 09:6c4c $df $b8 GFX GFX
    dw   `33231333                                     ;; 09:6c4e $df $f7 GFX GFX
    dw   `33300000                                     ;; 09:6c50 $e0 $e0 GFX GFX
    dw   `12233000                                     ;; 09:6c52 $98 $78 GFX GFX
    dw   `33322300                                     ;; 09:6c54 $e4 $fc GFX GFX
    dw   `22233230                                     ;; 09:6c56 $1a $fe GFX GFX
    dw   `33333230                                     ;; 09:6c58 $fa $fe GFX GFX
    dw   `33322323                                     ;; 09:6c5a $e5 $ff GFX GFX
    dw   `12233223                                     ;; 09:6c5c $99 $7f GFX GFX
    dw   `33323233                                     ;; 09:6c5e $eb $ff GFX GFX
    dw   `31331231                                     ;; 09:6c60 $fb $b6 GFX GFX
    dw   `33133231                                     ;; 09:6c62 $fb $de GFX GFX
    dw   `32322333                                     ;; 09:6c64 $a7 $ff GFX GFX
    dw   `03233222                                     ;; 09:6c66 $58 $7f GFX GFX
    dw   `03231333                                     ;; 09:6c68 $5f $77 GFX GFX
    dw   `00331231                                     ;; 09:6c6a $3b $36 GFX GFX
    dw   `00033231                                     ;; 09:6c6c $1b $1e GFX GFX
    dw   `00000333                                     ;; 09:6c6e $07 $07 GFX GFX
    dw   `23123323                                     ;; 09:6c70 $6d $df GFX GFX
    dw   `23133233                                     ;; 09:6c72 $7b $df GFX GFX
    dw   `33322323                                     ;; 09:6c74 $e5 $ff GFX GFX
    dw   `22233230                                     ;; 09:6c76 $1a $fe GFX GFX
    dw   `33323233                                     ;; 09:6c78 $eb $ff GFX GFX
    dw   `23123333                                     ;; 09:6c7a $6f $df GFX GFX
    dw   `23133330                                     ;; 09:6c7c $7e $de GFX GFX
    dw   `33333300                                     ;; 09:6c7e $fc $fc GFX GFX
    dw   `03333333                                     ;; 09:6c80 $7f $7f GFX GFX
    dw   `03111111                                     ;; 09:6c82 $7f $40 GFX GFX
    dw   `03133333                                     ;; 09:6c84 $7f $5f GFX GFX
    dw   `03132222                                     ;; 09:6c86 $70 $5f GFX GFX
    dw   `03133333                                     ;; 09:6c88 $7f $5f GFX GFX
    dw   `03133333                                     ;; 09:6c8a $7f $5f GFX GFX
    dw   `03133333                                     ;; 09:6c8c $7f $5f GFX GFX
    dw   `03133333                                     ;; 09:6c8e $7f $5f GFX GFX
    dw   `33333330                                     ;; 09:6c90 $fe $fe GFX GFX
    dw   `11111130                                     ;; 09:6c92 $fe $02 GFX GFX
    dw   `33333230                                     ;; 09:6c94 $fa $fe GFX GFX
    dw   `22223230                                     ;; 09:6c96 $0a $fe GFX GFX
    dw   `33333230                                     ;; 09:6c98 $fa $fe GFX GFX
    dw   `33333230                                     ;; 09:6c9a $fa $fe GFX GFX
    dw   `33333230                                     ;; 09:6c9c $fa $fe GFX GFX
    dw   `33333230                                     ;; 09:6c9e $fa $fe GFX GFX
    dw   `03111122                                     ;; 09:6ca0 $7c $43 GFX GFX
    dw   `03333333                                     ;; 09:6ca2 $7f $7f GFX GFX
    dw   `00322222                                     ;; 09:6ca4 $20 $3f GFX GFX
    dw   `00311111                                     ;; 09:6ca6 $3f $20 GFX GFX
    dw   `03131111                                     ;; 09:6ca8 $7f $50 GFX GFX
    dw   `03131122                                     ;; 09:6caa $7c $53 GFX GFX
    dw   `03133333                                     ;; 09:6cac $7f $5f GFX GFX
    dw   `00333333                                     ;; 09:6cae $3f $3f GFX GFX
    dw   `22222230                                     ;; 09:6cb0 $02 $fe GFX GFX
    dw   `33333330                                     ;; 09:6cb2 $fe $fe GFX GFX
    dw   `22222300                                     ;; 09:6cb4 $04 $fc GFX GFX
    dw   `22222300                                     ;; 09:6cb6 $04 $fc GFX GFX
    dw   `11223130                                     ;; 09:6cb8 $ce $3a GFX GFX
    dw   `22223130                                     ;; 09:6cba $0e $fa GFX GFX
    dw   `33333130                                     ;; 09:6cbc $fe $fa GFX GFX
    dw   `33333300                                     ;; 09:6cbe $fc $fc GFX GFX
    dw   `33333333                                     ;; 09:6cc0 $ff $ff GFX GFX
    dw   `31111111                                     ;; 09:6cc2 $ff $80 GFX GFX
    dw   `31333333                                     ;; 09:6cc4 $ff $bf GFX GFX
    dw   `31322222                                     ;; 09:6cc6 $e0 $bf GFX GFX
    dw   `31333333                                     ;; 09:6cc8 $ff $bf GFX GFX
    dw   `31333333                                     ;; 09:6cca $ff $bf GFX GFX
    dw   `31333333                                     ;; 09:6ccc $ff $bf GFX GFX
    dw   `31333333                                     ;; 09:6cce $ff $bf GFX GFX
    dw   `33333333                                     ;; 09:6cd0 $ff $ff GFX GFX
    dw   `11111113                                     ;; 09:6cd2 $ff $01 GFX GFX
    dw   `33333313                                     ;; 09:6cd4 $ff $fd GFX GFX
    dw   `22222313                                     ;; 09:6cd6 $07 $fd GFX GFX
    dw   `33333313                                     ;; 09:6cd8 $ff $fd GFX GFX
    dw   `33333323                                     ;; 09:6cda $fd $ff GFX GFX
    dw   `33333323                                     ;; 09:6cdc $fd $ff GFX GFX
    dw   `33333323                                     ;; 09:6cde $fd $ff GFX GFX
    dw   `31111222                                     ;; 09:6ce0 $f8 $87 GFX GFX
    dw   `33333333                                     ;; 09:6ce2 $ff $ff GFX GFX
    dw   `03222222                                     ;; 09:6ce4 $40 $7f GFX GFX
    dw   `03111111                                     ;; 09:6ce6 $7f $40 GFX GFX
    dw   `00332111                                     ;; 09:6ce8 $37 $38 GFX GFX
    dw   `03113222                                     ;; 09:6cea $78 $4f GFX GFX
    dw   `03123333                                     ;; 09:6cec $6f $5f GFX GFX
    dw   `00330000                                     ;; 09:6cee $30 $30 GFX GFX
    dw   `22222223                                     ;; 09:6cf0 $01 $ff GFX GFX
    dw   `33333333                                     ;; 09:6cf2 $ff $ff GFX GFX
    dw   `22222230                                     ;; 09:6cf4 $02 $fe GFX GFX
    dw   `11222230                                     ;; 09:6cf6 $c2 $3e GFX GFX
    dw   `12223300                                     ;; 09:6cf8 $8c $7c GFX GFX
    dw   `22231130                                     ;; 09:6cfa $1e $f2 GFX GFX
    dw   `33331230                                     ;; 09:6cfc $fa $f6 GFX GFX
    dw   `00003300                                     ;; 09:6cfe $0c $0c GFX GFX
    dw   `00000033                                     ;; 09:6d00 $03 $03 GFX GFX
    dw   `00003311                                     ;; 09:6d02 $0f $0c GFX GFX
    dw   `00333133                                     ;; 09:6d04 $3f $3b GFX GFX
    dw   `03131322                                     ;; 09:6d06 $7c $57 GFX GFX
    dw   `03131333                                     ;; 09:6d08 $7f $57 GFX GFX
    dw   `31313133                                     ;; 09:6d0a $ff $ab GFX GFX
    dw   `31312311                                     ;; 09:6d0c $f7 $ac GFX GFX
    dw   `31311233                                     ;; 09:6d0e $fb $a7 GFX GFX
    dw   `33000000                                     ;; 09:6d10 $c0 $c0 GFX GFX
    dw   `11330000                                     ;; 09:6d12 $f0 $30 GFX GFX
    dw   `33133300                                     ;; 09:6d14 $fc $dc GFX GFX
    dw   `22313230                                     ;; 09:6d16 $3a $ee GFX GFX
    dw   `33313230                                     ;; 09:6d18 $fa $ee GFX GFX
    dw   `33132323                                     ;; 09:6d1a $f5 $df GFX GFX
    dw   `11322323                                     ;; 09:6d1c $e5 $3f GFX GFX
    dw   `33222323                                     ;; 09:6d1e $c5 $ff GFX GFX
    dw   `31131112                                     ;; 09:6d20 $fe $91 GFX GFX
    dw   `32133111                                     ;; 09:6d22 $bf $d8 GFX GFX
    dw   `03112333                                     ;; 09:6d24 $77 $4f GFX GFX
    dw   `03211222                                     ;; 09:6d26 $58 $67 GFX GFX
    dw   `00311111                                     ;; 09:6d28 $3f $20 GFX GFX
    dw   `00031111                                     ;; 09:6d2a $1f $10 GFX GFX
    dw   `00003122                                     ;; 09:6d2c $0c $0b GFX GFX
    dw   `00000333                                     ;; 09:6d2e $07 $07 GFX GFX
    dw   `22223223                                     ;; 09:6d30 $09 $ff GFX GFX
    dw   `12233233                                     ;; 09:6d32 $9b $7f GFX GFX
    dw   `33322230                                     ;; 09:6d34 $e2 $fe GFX GFX
    dw   `22222333                                     ;; 09:6d36 $07 $ff GFX GFX
    dw   `22222333                                     ;; 09:6d38 $07 $ff GFX GFX
    dw   `22223333                                     ;; 09:6d3a $0f $ff GFX GFX
    dw   `22233330                                     ;; 09:6d3c $1e $fe GFX GFX
    dw   `33333000                                     ;; 09:6d3e $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:6d40 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6d42 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6d44 $00 $00 GFX GFX
    dw   `00033300                                     ;; 09:6d46 $1c $1c GFX GFX
    dw   `03313333                                     ;; 09:6d48 $7f $6f GFX GFX
    dw   `03331332                                     ;; 09:6d4a $7e $77 GFX GFX
    dw   `33333223                                     ;; 09:6d4c $f9 $ff GFX GFX
    dw   `33333323                                     ;; 09:6d4e $fd $ff GFX GFX
    dw   `00000000                                     ;; 09:6d50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6d52 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6d54 $00 $00 GFX GFX
    dw   `03330000                                     ;; 09:6d56 $70 $70 GFX GFX
    dw   `31223000                                     ;; 09:6d58 $c8 $b8 GFX GFX
    dw   `31323330                                     ;; 09:6d5a $ee $be GFX GFX
    dw   `23131323                                     ;; 09:6d5c $7d $d7 GFX GFX
    dw   `23213133                                     ;; 09:6d5e $5f $eb GFX GFX
    dw   `33332322                                     ;; 09:6d60 $f4 $ff GFX GFX
    dw   `33333223                                     ;; 09:6d62 $f9 $ff GFX GFX
    dw   `23333323                                     ;; 09:6d64 $7d $ff GFX GFX
    dw   `03333333                                     ;; 09:6d66 $7f $7f GFX GFX
    dw   `33332333                                     ;; 09:6d68 $f7 $ff GFX GFX
    dw   `22223332                                     ;; 09:6d6a $0e $ff GFX GFX
    dw   `00002220                                     ;; 09:6d6c $00 $0e GFX GFX
    dw   `00000000                                     ;; 09:6d6e $00 $00 GFX GFX
    dw   `23211113                                     ;; 09:6d70 $5f $e1 GFX GFX
    dw   `23131132                                     ;; 09:6d72 $7e $d3 GFX GFX
    dw   `31313320                                     ;; 09:6d74 $fc $ae GFX GFX
    dw   `31232200                                     ;; 09:6d76 $d0 $bc GFX GFX
    dw   `23223200                                     ;; 09:6d78 $48 $fc GFX GFX
    dw   `02332000                                     ;; 09:6d7a $30 $78 GFX GFX
    dw   `00220000                                     ;; 09:6d7c $00 $30 GFX GFX
    dw   `00000000                                     ;; 09:6d7e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6d80 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:6d82 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:6d84 $01 $01 GFX GFX
    dw   `00333303                                     ;; 09:6d86 $3d $3d GFX GFX
    dw   `03222233                                     ;; 09:6d88 $43 $7f GFX GFX
    dw   `32223311                                     ;; 09:6d8a $8f $fc GFX GFX
    dw   `32223113                                     ;; 09:6d8c $8f $f9 GFX GFX
    dw   `32222313                                     ;; 09:6d8e $87 $fd GFX GFX
    dw   `00000000                                     ;; 09:6d90 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:6d92 $80 $80 GFX GFX
    dw   `23000030                                     ;; 09:6d94 $42 $c2 GFX GFX
    dw   `22330313                                     ;; 09:6d96 $37 $f5 GFX GFX
    dw   `23113213                                     ;; 09:6d98 $7b $cd GFX GFX
    dw   `33113213                                     ;; 09:6d9a $fb $cd GFX GFX
    dw   `13333232                                     ;; 09:6d9c $fa $7f GFX GFX
    dw   `13323332                                     ;; 09:6d9e $ee $7f GFX GFX
    dw   `32232311                                     ;; 09:6da0 $97 $fc GFX GFX
    dw   `32223113                                     ;; 09:6da2 $8f $f9 GFX GFX
    dw   `23222313                                     ;; 09:6da4 $47 $fd GFX GFX
    dw   `23232333                                     ;; 09:6da6 $57 $ff GFX GFX
    dw   `22332323                                     ;; 09:6da8 $35 $ff GFX GFX
    dw   `02323223                                     ;; 09:6daa $29 $7f GFX GFX
    dw   `00222202                                     ;; 09:6dac $00 $3d GFX GFX
    dw   `00000000                                     ;; 09:6dae $00 $00 GFX GFX
    dw   `13323232                                     ;; 09:6db0 $ea $7f GFX GFX
    dw   `13223213                                     ;; 09:6db2 $cb $7d GFX GFX
    dw   `32232213                                     ;; 09:6db4 $93 $fd GFX GFX
    dw   `23333213                                     ;; 09:6db6 $7b $fd GFX GFX
    dw   `22332313                                     ;; 09:6db8 $37 $fd GFX GFX
    dw   `23113232                                     ;; 09:6dba $7a $cf GFX GFX
    dw   `33113222                                     ;; 09:6dbc $f8 $cf GFX GFX
    dw   `22332000                                     ;; 09:6dbe $30 $f8 GFX GFX
    dw   `00000000                                     ;; 09:6dc0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6dc2 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:6dc4 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:6dc6 $04 $07 GFX GFX
    dw   `00003122                                     ;; 09:6dc8 $0c $0b GFX GFX
    dw   `00032112                                     ;; 09:6dca $16 $19 GFX GFX
    dw   `00321111                                     ;; 09:6dcc $2f $30 GFX GFX
    dw   `00311221                                     ;; 09:6dce $39 $26 GFX GFX
    dw   `00000000                                     ;; 09:6dd0 $00 $00 GFX GFX
    dw   `33330000                                     ;; 09:6dd2 $f0 $f0 GFX GFX
    dw   `21123000                                     ;; 09:6dd4 $68 $98 GFX GFX
    dw   `22112300                                     ;; 09:6dd6 $34 $cc GFX GFX
    dw   `22111300                                     ;; 09:6dd8 $3c $c4 GFX GFX
    dw   `21112230                                     ;; 09:6dda $72 $8e GFX GFX
    dw   `11122230                                     ;; 09:6ddc $e2 $1e GFX GFX
    dw   `11122230                                     ;; 09:6dde $e2 $1e GFX GFX
    dw   `03212222                                     ;; 09:6de0 $50 $6f GFX GFX
    dw   `03212222                                     ;; 09:6de2 $50 $6f GFX GFX
    dw   `03212222                                     ;; 09:6de4 $50 $6f GFX GFX
    dw   `03211221                                     ;; 09:6de6 $59 $66 GFX GFX
    dw   `00321111                                     ;; 09:6de8 $2f $30 GFX GFX
    dw   `00322211                                     ;; 09:6dea $23 $3c GFX GFX
    dw   `03333222                                     ;; 09:6dec $78 $7f GFX GFX
    dw   `00033333                                     ;; 09:6dee $1f $1f GFX GFX
    dw   `11112230                                     ;; 09:6df0 $f2 $0e GFX GFX
    dw   `11111130                                     ;; 09:6df2 $fe $02 GFX GFX
    dw   `11111130                                     ;; 09:6df4 $fe $02 GFX GFX
    dw   `11222300                                     ;; 09:6df6 $c4 $3c GFX GFX
    dw   `12222300                                     ;; 09:6df8 $84 $7c GFX GFX
    dw   `12223300                                     ;; 09:6dfa $8c $7c GFX GFX
    dw   `22333330                                     ;; 09:6dfc $3e $fe GFX GFX
    dw   `33333000                                     ;; 09:6dfe $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:6e00 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e02 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e04 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e06 $00 $00 GFX GFX
    dw   `00003003                                     ;; 09:6e08 $09 $09 GFX GFX
    dw   `00032333                                     ;; 09:6e0a $17 $1f GFX GFX
    dw   `00311332                                     ;; 09:6e0c $3e $27 GFX GFX
    dw   `03212233                                     ;; 09:6e0e $53 $6f GFX GFX
    dw   `00000000                                     ;; 09:6e10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e14 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e16 $00 $00 GFX GFX
    dw   `30000330                                     ;; 09:6e18 $86 $86 GFX GFX
    dw   `23003223                                     ;; 09:6e1a $49 $cf GFX GFX
    dw   `22332233                                     ;; 09:6e1c $33 $ff GFX GFX
    dw   `22223313                                     ;; 09:6e1e $0f $fd GFX GFX
    dw   `03122233                                     ;; 09:6e20 $63 $5f GFX GFX
    dw   `32122231                                     ;; 09:6e22 $a3 $de GFX GFX
    dw   `32112311                                     ;; 09:6e24 $b7 $cc GFX GFX
    dw   `32111311                                     ;; 09:6e26 $bf $c4 GFX GFX
    dw   `03211111                                     ;; 09:6e28 $5f $60 GFX GFX
    dw   `03221221                                     ;; 09:6e2a $49 $76 GFX GFX
    dw   `33332222                                     ;; 09:6e2c $f0 $ff GFX GFX
    dw   `00333333                                     ;; 09:6e2e $3f $3f GFX GFX
    dw   `32231113                                     ;; 09:6e30 $9f $f1 GFX GFX
    dw   `33332123                                     ;; 09:6e32 $f5 $fb GFX GFX
    dw   `33212230                                     ;; 09:6e34 $d2 $ee GFX GFX
    dw   `22322300                                     ;; 09:6e36 $24 $fc GFX GFX
    dw   `22333330                                     ;; 09:6e38 $3e $fe GFX GFX
    dw   `12233333                                     ;; 09:6e3a $9f $7f GFX GFX
    dw   `22333300                                     ;; 09:6e3c $3c $fc GFX GFX
    dw   `33300000                                     ;; 09:6e3e $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:6e40 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e42 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e44 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e46 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:6e48 $03 $03 GFX GFX
    dw   `00000322                                     ;; 09:6e4a $04 $07 GFX GFX
    dw   `00003222                                     ;; 09:6e4c $08 $0f GFX GFX
    dw   `00003222                                     ;; 09:6e4e $08 $0f GFX GFX
    dw   `00000000                                     ;; 09:6e50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e52 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e54 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6e56 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:6e58 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:6e5a $20 $e0 GFX GFX
    dw   `22230000                                     ;; 09:6e5c $10 $f0 GFX GFX
    dw   `32223000                                     ;; 09:6e5e $88 $f8 GFX GFX
    dw   `00032323                                     ;; 09:6e60 $15 $1f GFX GFX
    dw   `00032233                                     ;; 09:6e62 $13 $1f GFX GFX
    dw   `00322331                                     ;; 09:6e64 $27 $3e GFX GFX
    dw   `03223131                                     ;; 09:6e66 $4f $7a GFX GFX
    dw   `03231311                                     ;; 09:6e68 $5f $74 GFX GFX
    dw   `00322233                                     ;; 09:6e6a $23 $3f GFX GFX
    dw   `03313221                                     ;; 09:6e6c $79 $6e GFX GFX
    dw   `03113332                                     ;; 09:6e6e $7e $4f GFX GFX
    dw   `13223000                                     ;; 09:6e70 $c8 $78 GFX GFX
    dw   `13323000                                     ;; 09:6e72 $e8 $78 GFX GFX
    dw   `13122300                                     ;; 09:6e74 $e4 $5c GFX GFX
    dw   `13132300                                     ;; 09:6e76 $f4 $5c GFX GFX
    dw   `11312300                                     ;; 09:6e78 $f4 $2c GFX GFX
    dw   `33133000                                     ;; 09:6e7a $f8 $d8 GFX GFX
    dw   `11231300                                     ;; 09:6e7c $dc $34 GFX GFX
    dw   `22331130                                     ;; 09:6e7e $3e $f2 GFX GFX
    dw   `00000233                                     ;; 09:6e80 $03 $07 GFX GFX
    dw   `00022322                                     ;; 09:6e82 $04 $1f GFX GFX
    dw   `00233223                                     ;; 09:6e84 $19 $3f GFX GFX
    dw   `02313213                                     ;; 09:6e86 $3b $6d GFX GFX
    dw   `00231131                                     ;; 09:6e88 $1f $32 GFX GFX
    dw   `02323331                                     ;; 09:6e8a $2f $7e GFX GFX
    dw   `00233131                                     ;; 09:6e8c $1f $3a GFX GFX
    dw   `00023131                                     ;; 09:6e8e $0f $1a GFX GFX
    dw   `33200000                                     ;; 09:6e90 $c0 $e0 GFX GFX
    dw   `22322000                                     ;; 09:6e92 $20 $f8 GFX GFX
    dw   `12233200                                     ;; 09:6e94 $98 $7c GFX GFX
    dw   `31231320                                     ;; 09:6e96 $dc $b6 GFX GFX
    dw   `13113200                                     ;; 09:6e98 $f8 $4c GFX GFX
    dw   `33332320                                     ;; 09:6e9a $f4 $fe GFX GFX
    dw   `13333200                                     ;; 09:6e9c $f8 $7c GFX GFX
    dw   `13132000                                     ;; 09:6e9e $f0 $58 GFX GFX
    dw   `00232311                                     ;; 09:6ea0 $17 $3c GFX GFX
    dw   `00233133                                     ;; 09:6ea2 $1f $3b GFX GFX
    dw   `02331111                                     ;; 09:6ea4 $3f $70 GFX GFX
    dw   `23112322                                     ;; 09:6ea6 $74 $cf GFX GFX
    dw   `02322332                                     ;; 09:6ea8 $26 $7f GFX GFX
    dw   `02323222                                     ;; 09:6eaa $28 $7f GFX GFX
    dw   `00232222                                     ;; 09:6eac $10 $3f GFX GFX
    dw   `02302020                                     ;; 09:6eae $20 $6a GFX GFX
    dw   `11323200                                     ;; 09:6eb0 $e8 $3c GFX GFX
    dw   `33133200                                     ;; 09:6eb2 $f8 $dc GFX GFX
    dw   `11113200                                     ;; 09:6eb4 $f8 $0c GFX GFX
    dw   `22313200                                     ;; 09:6eb6 $38 $ec GFX GFX
    dw   `23321320                                     ;; 09:6eb8 $6c $f6 GFX GFX
    dw   `22232320                                     ;; 09:6eba $14 $fe GFX GFX
    dw   `22223200                                     ;; 09:6ebc $08 $fc GFX GFX
    dw   `02020320                                     ;; 09:6ebe $04 $56 GFX GFX
    dw   `00000033                                     ;; 09:6ec0 $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:6ec2 $0f $0f GFX GFX
    dw   `00033333                                     ;; 09:6ec4 $1f $1f GFX GFX
    dw   `00313332                                     ;; 09:6ec6 $3e $2f GFX GFX
    dw   `03331132                                     ;; 09:6ec8 $7e $73 GFX GFX
    dw   `33333322                                     ;; 09:6eca $fc $ff GFX GFX
    dw   `03333332                                     ;; 09:6ecc $7e $7f GFX GFX
    dw   `00033232                                     ;; 09:6ece $1a $1f GFX GFX
    dw   `33000000                                     ;; 09:6ed0 $c0 $c0 GFX GFX
    dw   `33330000                                     ;; 09:6ed2 $f0 $f0 GFX GFX
    dw   `33330000                                     ;; 09:6ed4 $f0 $f0 GFX GFX
    dw   `33313000                                     ;; 09:6ed6 $f8 $e8 GFX GFX
    dw   `23133000                                     ;; 09:6ed8 $78 $d8 GFX GFX
    dw   `22333000                                     ;; 09:6eda $38 $f8 GFX GFX
    dw   `33330000                                     ;; 09:6edc $f0 $f0 GFX GFX
    dw   `23233000                                     ;; 09:6ede $58 $f8 GFX GFX
    dw   `00322322                                     ;; 09:6ee0 $24 $3f GFX GFX
    dw   `00311233                                     ;; 09:6ee2 $3b $27 GFX GFX
    dw   `03223122                                     ;; 09:6ee4 $4c $7b GFX GFX
    dw   `03233313                                     ;; 09:6ee6 $5f $7d GFX GFX
    dw   `03303231                                     ;; 09:6ee8 $6b $6e GFX GFX
    dw   `00003223                                     ;; 09:6eea $09 $0f GFX GFX
    dw   `00000322                                     ;; 09:6eec $04 $07 GFX GFX
    dw   `00003333                                     ;; 09:6eee $0f $0f GFX GFX
    dw   `22312300                                     ;; 09:6ef0 $34 $ec GFX GFX
    dw   `33212230                                     ;; 09:6ef2 $d2 $ee GFX GFX
    dw   `22132230                                     ;; 09:6ef4 $32 $de GFX GFX
    dw   `31133230                                     ;; 09:6ef6 $fa $9e GFX GFX
    dw   `11333300                                     ;; 09:6ef8 $fc $3c GFX GFX
    dw   `13330000                                     ;; 09:6efa $f0 $70 GFX GFX
    dw   `32300000                                     ;; 09:6efc $a0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:6efe $f0 $f0 GFX GFX
    dw   `00000033                                     ;; 09:6f00 $03 $03 GFX GFX
    dw   `00000333                                     ;; 09:6f02 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:6f04 $0f $0f GFX GFX
    dw   `00003233                                     ;; 09:6f06 $0b $0f GFX GFX
    dw   `00033322                                     ;; 09:6f08 $1c $1f GFX GFX
    dw   `00333331                                     ;; 09:6f0a $3f $3e GFX GFX
    dw   `00333131                                     ;; 09:6f0c $3f $3a GFX GFX
    dw   `00333131                                     ;; 09:6f0e $3f $3a GFX GFX
    dw   `33000000                                     ;; 09:6f10 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:6f12 $e0 $e0 GFX GFX
    dw   `33330000                                     ;; 09:6f14 $f0 $f0 GFX GFX
    dw   `33233000                                     ;; 09:6f16 $d8 $f8 GFX GFX
    dw   `23333030                                     ;; 09:6f18 $7a $fa GFX GFX
    dw   `33333313                                     ;; 09:6f1a $ff $fd GFX GFX
    dw   `13133313                                     ;; 09:6f1c $ff $5d GFX GFX
    dw   `13133113                                     ;; 09:6f1e $ff $59 GFX GFX
    dw   `00332311                                     ;; 09:6f20 $37 $3c GFX GFX
    dw   `00322233                                     ;; 09:6f22 $23 $3f GFX GFX
    dw   `00033113                                     ;; 09:6f24 $1f $19 GFX GFX
    dw   `00003131                                     ;; 09:6f26 $0f $0a GFX GFX
    dw   `00000311                                     ;; 09:6f28 $07 $04 GFX GFX
    dw   `00003233                                     ;; 09:6f2a $0b $0f GFX GFX
    dw   `00000322                                     ;; 09:6f2c $04 $07 GFX GFX
    dw   `00333333                                     ;; 09:6f2e $3f $3f GFX GFX
    dw   `11331313                                     ;; 09:6f30 $ff $35 GFX GFX
    dw   `33311313                                     ;; 09:6f32 $ff $e5 GFX GFX
    dw   `23131313                                     ;; 09:6f34 $7f $d5 GFX GFX
    dw   `33101313                                     ;; 09:6f36 $ef $c5 GFX GFX
    dw   `33131313                                     ;; 09:6f38 $ff $d5 GFX GFX
    dw   `33131130                                     ;; 09:6f3a $fe $d2 GFX GFX
    dw   `32311300                                     ;; 09:6f3c $bc $e4 GFX GFX
    dw   `33333330                                     ;; 09:6f3e $fe $fe GFX GFX
    dw   `00000000                                     ;; 09:6f40 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f42 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f44 $00 $00 GFX GFX
    dw   `00330000                                     ;; 09:6f46 $30 $30 GFX GFX
    dw   `00333000                                     ;; 09:6f48 $38 $38 GFX GFX
    dw   `00303000                                     ;; 09:6f4a $28 $28 GFX GFX
    dw   `00303000                                     ;; 09:6f4c $28 $28 GFX GFX
    dw   `03300000                                     ;; 09:6f4e $60 $60 GFX GFX
    dw   `00000000                                     ;; 09:6f50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f52 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f54 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f56 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f58 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f5a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f5c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f5e $00 $00 GFX GFX
    dw   `03300033                                     ;; 09:6f60 $63 $63 GFX GFX
    dw   `00000300                                     ;; 09:6f62 $04 $04 GFX GFX
    dw   `00333000                                     ;; 09:6f64 $38 $38 GFX GFX
    dw   `03000000                                     ;; 09:6f66 $40 $40 GFX GFX
    dw   `00000000                                     ;; 09:6f68 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f6a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f6c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f6e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f70 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f72 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f74 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f76 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f78 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f7a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f7c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f7e $00 $00 GFX GFX
    dw   `00000330                                     ;; 09:6f80 $06 $06 GFX GFX
    dw   `00033030                                     ;; 09:6f82 $1a $1a GFX GFX
    dw   `00030030                                     ;; 09:6f84 $12 $12 GFX GFX
    dw   `00030330                                     ;; 09:6f86 $16 $16 GFX GFX
    dw   `00330330                                     ;; 09:6f88 $36 $36 GFX GFX
    dw   `00330000                                     ;; 09:6f8a $30 $30 GFX GFX
    dw   `00000000                                     ;; 09:6f8c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f8e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6f90 $00 $00 GFX GFX
    dw   `00003300                                     ;; 09:6f92 $0c $0c GFX GFX
    dw   `00003330                                     ;; 09:6f94 $0e $0e GFX GFX
    dw   `00003030                                     ;; 09:6f96 $0a $0a GFX GFX
    dw   `00033030                                     ;; 09:6f98 $1a $1a GFX GFX
    dw   `00033000                                     ;; 09:6f9a $18 $18 GFX GFX
    dw   `00000000                                     ;; 09:6f9c $00 $00 GFX GFX
    dw   `00000330                                     ;; 09:6f9e $06 $06 GFX GFX
    dw   `00000000                                     ;; 09:6fa0 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:6fa2 $01 $01 GFX GFX
    dw   `00000330                                     ;; 09:6fa4 $06 $06 GFX GFX
    dw   `00003000                                     ;; 09:6fa6 $08 $08 GFX GFX
    dw   `00000000                                     ;; 09:6fa8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6faa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fae $00 $00 GFX GFX
    dw   `33333000                                     ;; 09:6fb0 $f8 $f8 GFX GFX
    dw   `00000000                                     ;; 09:6fb2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fb4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fb6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fb8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fbc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fbe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fc0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fc2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fc4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fc6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fc8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fca $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fcc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fce $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fd0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fd2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fd4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fd6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fd8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fda $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fdc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fde $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fe0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fe2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fe4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fe6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fe8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6fee $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ff0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ff2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ff4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ff6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ff8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ffa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ffc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:6ffe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7000 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7002 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7004 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7006 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7008 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:700a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:700c $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:700e $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:7010 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7012 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7014 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7016 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7018 $00 $00 GFX GFX
    dw   `00000300                                     ;; 09:701a $04 $04 GFX GFX
    dw   `33333230                                     ;; 09:701c $fa $fe GFX GFX
    dw   `22222323                                     ;; 09:701e $05 $ff GFX GFX
    dw   `00000311                                     ;; 09:7020 $07 $04 GFX GFX
    dw   `00000033                                     ;; 09:7022 $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:7024 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7026 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7028 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:702a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:702c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:702e $00 $00 GFX GFX
    dw   `11111323                                     ;; 09:7030 $fd $07 GFX GFX
    dw   `33333230                                     ;; 09:7032 $fa $fe GFX GFX
    dw   `00000300                                     ;; 09:7034 $04 $04 GFX GFX
    dw   `00000000                                     ;; 09:7036 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7038 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:703a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:703c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:703e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7040 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7042 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7044 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7046 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7048 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:704a $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:704c $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:704e $03 $02 GFX GFX
    dw   `00000000                                     ;; 09:7050 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7052 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7054 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7056 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7058 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:705a $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:705c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:705e $80 $80 GFX GFX
    dw   `00000031                                     ;; 09:7060 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:7062 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:7064 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:7066 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:7068 $03 $02 GFX GFX
    dw   `00000323                                     ;; 09:706a $05 $07 GFX GFX
    dw   `00000032                                     ;; 09:706c $02 $03 GFX GFX
    dw   `00000003                                     ;; 09:706e $01 $01 GFX GFX
    dw   `23000000                                     ;; 09:7070 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7072 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7074 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7076 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7078 $40 $c0 GFX GFX
    dw   `32300000                                     ;; 09:707a $a0 $e0 GFX GFX
    dw   `23000000                                     ;; 09:707c $40 $c0 GFX GFX
    dw   `30000000                                     ;; 09:707e $80 $80 GFX GFX
    dw   `33000003                                     ;; 09:7080 $c1 $c1 GFX GFX
    dw   `31330031                                     ;; 09:7082 $f3 $b2 GFX GFX
    dw   `03123311                                     ;; 09:7084 $6f $5c GFX GFX
    dw   `03211111                                     ;; 09:7086 $5f $60 GFX GFX
    dw   `00313131                                     ;; 09:7088 $3f $2a GFX GFX
    dw   `00313131                                     ;; 09:708a $3f $2a GFX GFX
    dw   `03213313                                     ;; 09:708c $5f $6d GFX GFX
    dw   `31111111                                     ;; 09:708e $ff $80 GFX GFX
    dw   `00000033                                     ;; 09:7090 $03 $03 GFX GFX
    dw   `30003313                                     ;; 09:7092 $8f $8d GFX GFX
    dw   `13332130                                     ;; 09:7094 $f6 $7a GFX GFX
    dw   `11111230                                     ;; 09:7096 $fa $06 GFX GFX
    dw   `31112300                                     ;; 09:7098 $f4 $8c GFX GFX
    dw   `31112300                                     ;; 09:709a $f4 $8c GFX GFX
    dw   `31111300                                     ;; 09:709c $fc $84 GFX GFX
    dw   `11133230                                     ;; 09:709e $fa $1e GFX GFX
    dw   `03211133                                     ;; 09:70a0 $5f $63 GFX GFX
    dw   `00321311                                     ;; 09:70a2 $2f $34 GFX GFX
    dw   `00321333                                     ;; 09:70a4 $2f $37 GFX GFX
    dw   `00321311                                     ;; 09:70a6 $2f $34 GFX GFX
    dw   `03211111                                     ;; 09:70a8 $5f $60 GFX GFX
    dw   `03123331                                     ;; 09:70aa $6f $5e GFX GFX
    dw   `31330003                                     ;; 09:70ac $f1 $b1 GFX GFX
    dw   `33000000                                     ;; 09:70ae $c0 $c0 GFX GFX
    dw   `11133113                                     ;; 09:70b0 $ff $19 GFX GFX
    dw   `31131230                                     ;; 09:70b2 $fa $96 GFX GFX
    dw   `31112300                                     ;; 09:70b4 $f4 $8c GFX GFX
    dw   `31312300                                     ;; 09:70b6 $f4 $ac GFX GFX
    dw   `11111230                                     ;; 09:70b8 $fa $06 GFX GFX
    dw   `11332130                                     ;; 09:70ba $f6 $3a GFX GFX
    dw   `13003313                                     ;; 09:70bc $cf $4d GFX GFX
    dw   `30000033                                     ;; 09:70be $83 $83 GFX GFX
    dw   `00000000                                     ;; 09:70c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70c4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70c6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70c8 $00 $00 GFX GFX
    dw   `00000222                                     ;; 09:70ca $00 $07 GFX GFX
    dw   `00000333                                     ;; 09:70cc $07 $07 GFX GFX
    dw   `00000000                                     ;; 09:70ce $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70d2 $00 $00 GFX GFX
    dw   `00222220                                     ;; 09:70d4 $00 $3e GFX GFX
    dw   `00333330                                     ;; 09:70d6 $3e $3e GFX GFX
    dw   `00000000                                     ;; 09:70d8 $00 $00 GFX GFX
    dw   `22000000                                     ;; 09:70da $00 $c0 GFX GFX
    dw   `33000000                                     ;; 09:70dc $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:70de $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70e0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70e2 $00 $00 GFX GFX
    dw   `00222220                                     ;; 09:70e4 $00 $3e GFX GFX
    dw   `00333330                                     ;; 09:70e6 $3e $3e GFX GFX
    dw   `00000000                                     ;; 09:70e8 $00 $00 GFX GFX
    dw   `00000002                                     ;; 09:70ea $00 $01 GFX GFX
    dw   `00000003                                     ;; 09:70ec $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:70ee $00 $00 GFX GFX
    dw   `02222200                                     ;; 09:70f0 $00 $7c GFX GFX
    dw   `03333300                                     ;; 09:70f2 $7c $7c GFX GFX
    dw   `00000000                                     ;; 09:70f4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70f6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:70f8 $00 $00 GFX GFX
    dw   `22220000                                     ;; 09:70fa $00 $f0 GFX GFX
    dw   `33330000                                     ;; 09:70fc $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:70fe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7100 $00 $00 GFX GFX
    dw   `00230000                                     ;; 09:7102 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7104 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7106 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7108 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:710a $10 $30 GFX GFX
    dw   `00000230                                     ;; 09:710c $02 $06 GFX GFX
    dw   `00000230                                     ;; 09:710e $02 $06 GFX GFX
    dw   `00000000                                     ;; 09:7110 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7112 $00 $00 GFX GFX
    dw   `23000000                                     ;; 09:7114 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7116 $40 $c0 GFX GFX
    dw   `23000230                                     ;; 09:7118 $42 $c6 GFX GFX
    dw   `23000230                                     ;; 09:711a $42 $c6 GFX GFX
    dw   `23000230                                     ;; 09:711c $42 $c6 GFX GFX
    dw   `00000230                                     ;; 09:711e $02 $06 GFX GFX
    dw   `00000230                                     ;; 09:7120 $02 $06 GFX GFX
    dw   `00000230                                     ;; 09:7122 $02 $06 GFX GFX
    dw   `00000230                                     ;; 09:7124 $02 $06 GFX GFX
    dw   `00000000                                     ;; 09:7126 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7128 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:712a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:712c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:712e $00 $00 GFX GFX
    dw   `00000230                                     ;; 09:7130 $02 $06 GFX GFX
    dw   `00230000                                     ;; 09:7132 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7134 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7136 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:7138 $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:713a $10 $30 GFX GFX
    dw   `00000000                                     ;; 09:713c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:713e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7140 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7142 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7144 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7146 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7148 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:714a $00 $00 GFX GFX
    dw   `00333300                                     ;; 09:714c $3c $3c GFX GFX
    dw   `00000330                                     ;; 09:714e $06 $06 GFX GFX
    dw   `00000000                                     ;; 09:7150 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7152 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7154 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7156 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7158 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:715a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:715c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:715e $00 $00 GFX GFX
    dw   `33333333                                     ;; 09:7160 $ff $ff GFX GFX
    dw   `00000330                                     ;; 09:7162 $06 $06 GFX GFX
    dw   `00333300                                     ;; 09:7164 $3c $3c GFX GFX
    dw   `00000000                                     ;; 09:7166 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7168 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:716a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:716c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:716e $00 $00 GFX GFX
    dw   `33333333                                     ;; 09:7170 $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7172 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7174 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7176 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7178 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:717a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:717c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:717e $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7180 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7182 $01 $01 GFX GFX
    dw   `00000303                                     ;; 09:7184 $05 $05 GFX GFX
    dw   `00000303                                     ;; 09:7186 $05 $05 GFX GFX
    dw   `00000303                                     ;; 09:7188 $05 $05 GFX GFX
    dw   `00000333                                     ;; 09:718a $07 $07 GFX GFX
    dw   `00000033                                     ;; 09:718c $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:718e $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7190 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7192 $00 $00 GFX GFX
    dw   `03000000                                     ;; 09:7194 $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:7196 $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:7198 $40 $40 GFX GFX
    dw   `33000000                                     ;; 09:719a $c0 $c0 GFX GFX
    dw   `30000000                                     ;; 09:719c $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:719e $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:71a0 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71a2 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71a4 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71a6 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71a8 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71aa $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71ac $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:71ae $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:71b0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71b2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71b4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71b6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71b8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:71be $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:71c0 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:71c2 $03 $03 GFX GFX
    dw   `00003033                                     ;; 09:71c4 $0b $0b GFX GFX
    dw   `00003333                                     ;; 09:71c6 $0f $0f GFX GFX
    dw   `00003313                                     ;; 09:71c8 $0f $0d GFX GFX
    dw   `03300313                                     ;; 09:71ca $67 $65 GFX GFX
    dw   `31133322                                     ;; 09:71cc $fc $9f GFX GFX
    dw   `31132333                                     ;; 09:71ce $f7 $9f GFX GFX
    dw   `33300000                                     ;; 09:71d0 $e0 $e0 GFX GFX
    dw   `30033300                                     ;; 09:71d2 $9c $9c GFX GFX
    dw   `33333000                                     ;; 09:71d4 $f8 $f8 GFX GFX
    dw   `33333330                                     ;; 09:71d6 $fe $fe GFX GFX
    dw   `33333333                                     ;; 09:71d8 $ff $ff GFX GFX
    dw   `31333300                                     ;; 09:71da $fc $bc GFX GFX
    dw   `32233333                                     ;; 09:71dc $9f $ff GFX GFX
    dw   `13331123                                     ;; 09:71de $fd $73 GFX GFX
    dw   `03332313                                     ;; 09:71e0 $77 $7d GFX GFX
    dw   `00333231                                     ;; 09:71e2 $3b $3e GFX GFX
    dw   `03223323                                     ;; 09:71e4 $4d $7f GFX GFX
    dw   `03332322                                     ;; 09:71e6 $74 $7f GFX GFX
    dw   `03132232                                     ;; 09:71e8 $72 $5f GFX GFX
    dw   `03132333                                     ;; 09:71ea $77 $5f GFX GFX
    dw   `00333000                                     ;; 09:71ec $38 $38 GFX GFX
    dw   `00000000                                     ;; 09:71ee $00 $00 GFX GFX
    dw   `13131333                                     ;; 09:71f0 $ff $57 GFX GFX
    dw   `31131333                                     ;; 09:71f2 $ff $97 GFX GFX
    dw   `33331133                                     ;; 09:71f4 $ff $f3 GFX GFX
    dw   `32223123                                     ;; 09:71f6 $8d $fb GFX GFX
    dw   `22333330                                     ;; 09:71f8 $3e $fe GFX GFX
    dw   `33222300                                     ;; 09:71fa $c4 $fc GFX GFX
    dw   `03322230                                     ;; 09:71fc $62 $7e GFX GFX
    dw   `00323300                                     ;; 09:71fe $2c $3c GFX GFX
    dw   `00000000                                     ;; 09:7200 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7202 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7204 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7206 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7208 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:720a $00 $00 GFX GFX
    dw   `22222222                                     ;; 09:720c $00 $ff GFX GFX
    dw   `33333333                                     ;; 09:720e $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7210 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7212 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7214 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7216 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7218 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:721a $00 $00 GFX GFX
    dw   `22222222                                     ;; 09:721c $00 $ff GFX GFX
    dw   `33333333                                     ;; 09:721e $ff $ff GFX GFX
    dw   `22222222                                     ;; 09:7220 $00 $ff GFX GFX
    dw   `00000000                                     ;; 09:7222 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7224 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7226 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7228 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:722a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:722c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:722e $00 $00 GFX GFX
    dw   `22222222                                     ;; 09:7230 $00 $ff GFX GFX
    dw   `00000000                                     ;; 09:7232 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7234 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7236 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7238 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:723a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:723c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:723e $00 $00 GFX GFX
    dw   `00000002                                     ;; 09:7240 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7242 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7244 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7246 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7248 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:724a $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:724c $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:724e $00 $01 GFX GFX
    dw   `32000000                                     ;; 09:7250 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7252 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7254 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7256 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7258 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:725a $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:725c $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:725e $80 $c0 GFX GFX
    dw   `00000002                                     ;; 09:7260 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7262 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7264 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7266 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7268 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:726a $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:726c $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:726e $00 $01 GFX GFX
    dw   `32000000                                     ;; 09:7270 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7272 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7274 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7276 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:7278 $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:727a $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:727c $80 $c0 GFX GFX
    dw   `32000000                                     ;; 09:727e $80 $c0 GFX GFX
    dw   `00000033                                     ;; 09:7280 $03 $03 GFX GFX
    dw   `03330311                                     ;; 09:7282 $77 $74 GFX GFX
    dw   `03113031                                     ;; 09:7284 $7b $4a GFX GFX
    dw   `03212332                                     ;; 09:7286 $56 $6f GFX GFX
    dw   `00322333                                     ;; 09:7288 $27 $3f GFX GFX
    dw   `03033333                                     ;; 09:728a $5f $5f GFX GFX
    dw   `31333333                                     ;; 09:728c $ff $bf GFX GFX
    dw   `31233333                                     ;; 09:728e $df $bf GFX GFX
    dw   `30000000                                     ;; 09:7290 $80 $80 GFX GFX
    dw   `13300000                                     ;; 09:7292 $e0 $60 GFX GFX
    dw   `11130000                                     ;; 09:7294 $f0 $10 GFX GFX
    dw   `21113000                                     ;; 09:7296 $78 $88 GFX GFX
    dw   `32113000                                     ;; 09:7298 $b8 $c8 GFX GFX
    dw   `32111300                                     ;; 09:729a $bc $c4 GFX GFX
    dw   `33221300                                     ;; 09:729c $cc $f4 GFX GFX
    dw   `33331300                                     ;; 09:729e $fc $f4 GFX GFX
    dw   `31123333                                     ;; 09:72a0 $ef $9f GFX GFX
    dw   `03123333                                     ;; 09:72a2 $6f $5f GFX GFX
    dw   `03112233                                     ;; 09:72a4 $73 $4f GFX GFX
    dw   `00311123                                     ;; 09:72a6 $3d $23 GFX GFX
    dw   `00033111                                     ;; 09:72a8 $1f $18 GFX GFX
    dw   `00000333                                     ;; 09:72aa $07 $07 GFX GFX
    dw   `00000000                                     ;; 09:72ac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72ae $00 $00 GFX GFX
    dw   `31333000                                     ;; 09:72b0 $f8 $b8 GFX GFX
    dw   `11130000                                     ;; 09:72b2 $f0 $10 GFX GFX
    dw   `32113000                                     ;; 09:72b4 $b8 $c8 GFX GFX
    dw   `03211300                                     ;; 09:72b6 $5c $64 GFX GFX
    dw   `30323330                                     ;; 09:72b8 $ae $be GFX GFX
    dw   `00033333                                     ;; 09:72ba $1f $1f GFX GFX
    dw   `00003333                                     ;; 09:72bc $0f $0f GFX GFX
    dw   `00000333                                     ;; 09:72be $07 $07 GFX GFX
    dw   `00000000                                     ;; 09:72c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72c4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72c6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72c8 $00 $00 GFX GFX
    dw   `03000000                                     ;; 09:72ca $40 $40 GFX GFX
    dw   `32300000                                     ;; 09:72cc $a0 $e0 GFX GFX
    dw   `32233000                                     ;; 09:72ce $98 $f8 GFX GFX
    dw   `03330000                                     ;; 09:72d0 $70 $70 GFX GFX
    dw   `03223000                                     ;; 09:72d2 $48 $78 GFX GFX
    dw   `00322300                                     ;; 09:72d4 $24 $3c GFX GFX
    dw   `00322300                                     ;; 09:72d6 $24 $3c GFX GFX
    dw   `00321230                                     ;; 09:72d8 $2a $36 GFX GFX
    dw   `00321230                                     ;; 09:72da $2a $36 GFX GFX
    dw   `00321230                                     ;; 09:72dc $2a $36 GFX GFX
    dw   `03212230                                     ;; 09:72de $52 $6e GFX GFX
    dw   `32222333                                     ;; 09:72e0 $87 $ff GFX GFX
    dw   `03212222                                     ;; 09:72e2 $50 $6f GFX GFX
    dw   `03221111                                     ;; 09:72e4 $4f $70 GFX GFX
    dw   `00322222                                     ;; 09:72e6 $20 $3f GFX GFX
    dw   `00033222                                     ;; 09:72e8 $18 $1f GFX GFX
    dw   `00000333                                     ;; 09:72ea $07 $07 GFX GFX
    dw   `00000000                                     ;; 09:72ec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:72ee $00 $00 GFX GFX
    dw   `32212230                                     ;; 09:72f0 $92 $ee GFX GFX
    dw   `21122300                                     ;; 09:72f2 $64 $9c GFX GFX
    dw   `11222300                                     ;; 09:72f4 $c4 $3c GFX GFX
    dw   `21122230                                     ;; 09:72f6 $62 $9e GFX GFX
    dw   `22122230                                     ;; 09:72f8 $22 $de GFX GFX
    dw   `33212230                                     ;; 09:72fa $d2 $ee GFX GFX
    dw   `00322230                                     ;; 09:72fc $22 $3e GFX GFX
    dw   `00033300                                     ;; 09:72fe $1c $1c GFX GFX
    dw   `00000000                                     ;; 09:7300 $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:7302 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:7304 $0f $08 GFX GFX
    dw   `00031122                                     ;; 09:7306 $1c $13 GFX GFX
    dw   `00311233                                     ;; 09:7308 $3b $27 GFX GFX
    dw   `03112300                                     ;; 09:730a $74 $4c GFX GFX
    dw   `03123000                                     ;; 09:730c $68 $58 GFX GFX
    dw   `03123000                                     ;; 09:730e $68 $58 GFX GFX
    dw   `00000000                                     ;; 09:7310 $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:7312 $e0 $e0 GFX GFX
    dw   `11130000                                     ;; 09:7314 $f0 $10 GFX GFX
    dw   `22113000                                     ;; 09:7316 $38 $c8 GFX GFX
    dw   `33211300                                     ;; 09:7318 $dc $e4 GFX GFX
    dw   `00321130                                     ;; 09:731a $2e $32 GFX GFX
    dw   `00032130                                     ;; 09:731c $16 $1a GFX GFX
    dw   `00032130                                     ;; 09:731e $16 $1a GFX GFX
    dw   `03123000                                     ;; 09:7320 $68 $58 GFX GFX
    dw   `03123000                                     ;; 09:7322 $68 $58 GFX GFX
    dw   `03112300                                     ;; 09:7324 $74 $4c GFX GFX
    dw   `00311233                                     ;; 09:7326 $3b $27 GFX GFX
    dw   `00031122                                     ;; 09:7328 $1c $13 GFX GFX
    dw   `00003111                                     ;; 09:732a $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:732c $07 $07 GFX GFX
    dw   `00000000                                     ;; 09:732e $00 $00 GFX GFX
    dw   `00032130                                     ;; 09:7330 $16 $1a GFX GFX
    dw   `00032130                                     ;; 09:7332 $16 $1a GFX GFX
    dw   `00321130                                     ;; 09:7334 $2e $32 GFX GFX
    dw   `33211300                                     ;; 09:7336 $dc $e4 GFX GFX
    dw   `22113000                                     ;; 09:7338 $38 $c8 GFX GFX
    dw   `11130000                                     ;; 09:733a $f0 $10 GFX GFX
    dw   `33300000                                     ;; 09:733c $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:733e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7340 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7342 $03 $03 GFX GFX
    dw   `00003312                                     ;; 09:7344 $0e $0d GFX GFX
    dw   `00031223                                     ;; 09:7346 $19 $17 GFX GFX
    dw   `00312231                                     ;; 09:7348 $33 $2e GFX GFX
    dw   `00312312                                     ;; 09:734a $36 $2d GFX GFX
    dw   `03122312                                     ;; 09:734c $66 $5d GFX GFX
    dw   `03122222                                     ;; 09:734e $60 $5f GFX GFX
    dw   `00000000                                     ;; 09:7350 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7352 $c0 $c0 GFX GFX
    dw   `23330000                                     ;; 09:7354 $70 $f0 GFX GFX
    dw   `22223000                                     ;; 09:7356 $08 $f8 GFX GFX
    dw   `22322300                                     ;; 09:7358 $24 $fc GFX GFX
    dw   `22232300                                     ;; 09:735a $14 $fc GFX GFX
    dw   `22232230                                     ;; 09:735c $12 $fe GFX GFX
    dw   `22233230                                     ;; 09:735e $1a $fe GFX GFX
    dw   `03132322                                     ;; 09:7360 $74 $5f GFX GFX
    dw   `03332322                                     ;; 09:7362 $74 $7f GFX GFX
    dw   `00323222                                     ;; 09:7364 $28 $3f GFX GFX
    dw   `00323322                                     ;; 09:7366 $2c $3f GFX GFX
    dw   `00033233                                     ;; 09:7368 $1b $1f GFX GFX
    dw   `00003332                                     ;; 09:736a $0e $0f GFX GFX
    dw   `00000033                                     ;; 09:736c $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:736e $00 $00 GFX GFX
    dw   `22222230                                     ;; 09:7370 $02 $fe GFX GFX
    dw   `23222330                                     ;; 09:7372 $46 $fe GFX GFX
    dw   `23232300                                     ;; 09:7374 $54 $fc GFX GFX
    dw   `33323300                                     ;; 09:7376 $ec $fc GFX GFX
    dw   `33223000                                     ;; 09:7378 $c8 $f8 GFX GFX
    dw   `32333000                                     ;; 09:737a $b8 $f8 GFX GFX
    dw   `33300000                                     ;; 09:737c $e0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:737e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7380 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7382 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7384 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7386 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:7388 $03 $03 GFX GFX
    dw   `00000033                                     ;; 09:738a $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:738c $0f $0f GFX GFX
    dw   `00333330                                     ;; 09:738e $3e $3e GFX GFX
    dw   `00000000                                     ;; 09:7390 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7392 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7394 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7396 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7398 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:739a $80 $80 GFX GFX
    dw   `33300000                                     ;; 09:739c $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:739e $f8 $f8 GFX GFX
    dw   `00003333                                     ;; 09:73a0 $0f $0f GFX GFX
    dw   `00000033                                     ;; 09:73a2 $03 $03 GFX GFX
    dw   `00000033                                     ;; 09:73a4 $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:73a6 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:73a8 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:73aa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ae $00 $00 GFX GFX
    dw   `33300000                                     ;; 09:73b0 $e0 $e0 GFX GFX
    dw   `30000000                                     ;; 09:73b2 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:73b4 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:73b6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73b8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73be $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73c4 $00 $00 GFX GFX
    dw   `00030000                                     ;; 09:73c6 $10 $10 GFX GFX
    dw   `00003300                                     ;; 09:73c8 $0c $0c GFX GFX
    dw   `00003333                                     ;; 09:73ca $0f $0f GFX GFX
    dw   `00000333                                     ;; 09:73cc $07 $07 GFX GFX
    dw   `00000330                                     ;; 09:73ce $06 $06 GFX GFX
    dw   `00000000                                     ;; 09:73d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73d2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73d4 $00 $00 GFX GFX
    dw   `00030000                                     ;; 09:73d6 $10 $10 GFX GFX
    dw   `03300000                                     ;; 09:73d8 $60 $60 GFX GFX
    dw   `33300000                                     ;; 09:73da $e0 $e0 GFX GFX
    dw   `33000000                                     ;; 09:73dc $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:73de $c0 $c0 GFX GFX
    dw   `00000333                                     ;; 09:73e0 $07 $07 GFX GFX
    dw   `00003333                                     ;; 09:73e2 $0f $0f GFX GFX
    dw   `00003300                                     ;; 09:73e4 $0c $0c GFX GFX
    dw   `00030000                                     ;; 09:73e6 $10 $10 GFX GFX
    dw   `00000000                                     ;; 09:73e8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73ee $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:73f0 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:73f2 $e0 $e0 GFX GFX
    dw   `03300000                                     ;; 09:73f4 $60 $60 GFX GFX
    dw   `00030000                                     ;; 09:73f6 $10 $10 GFX GFX
    dw   `00000000                                     ;; 09:73f8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73fa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73fc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:73fe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7400 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7402 $03 $03 GFX GFX
    dw   `00003322                                     ;; 09:7404 $0c $0f GFX GFX
    dw   `00032221                                     ;; 09:7406 $11 $1e GFX GFX
    dw   `00322111                                     ;; 09:7408 $27 $38 GFX GFX
    dw   `00321111                                     ;; 09:740a $2f $30 GFX GFX
    dw   `03221111                                     ;; 09:740c $4f $70 GFX GFX
    dw   `03211111                                     ;; 09:740e $5f $60 GFX GFX
    dw   `00000000                                     ;; 09:7410 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7412 $c0 $c0 GFX GFX
    dw   `22330000                                     ;; 09:7414 $30 $f0 GFX GFX
    dw   `12223000                                     ;; 09:7416 $88 $78 GFX GFX
    dw   `11122300                                     ;; 09:7418 $e4 $1c GFX GFX
    dw   `11112300                                     ;; 09:741a $f4 $0c GFX GFX
    dw   `11112230                                     ;; 09:741c $f2 $0e GFX GFX
    dw   `11111230                                     ;; 09:741e $fa $06 GFX GFX
    dw   `03211111                                     ;; 09:7420 $5f $60 GFX GFX
    dw   `03221111                                     ;; 09:7422 $4f $70 GFX GFX
    dw   `00321111                                     ;; 09:7424 $2f $30 GFX GFX
    dw   `00322111                                     ;; 09:7426 $27 $38 GFX GFX
    dw   `00032221                                     ;; 09:7428 $11 $1e GFX GFX
    dw   `00003322                                     ;; 09:742a $0c $0f GFX GFX
    dw   `00000033                                     ;; 09:742c $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:742e $00 $00 GFX GFX
    dw   `11111230                                     ;; 09:7430 $fa $06 GFX GFX
    dw   `11112230                                     ;; 09:7432 $f2 $0e GFX GFX
    dw   `11112300                                     ;; 09:7434 $f4 $0c GFX GFX
    dw   `11122300                                     ;; 09:7436 $e4 $1c GFX GFX
    dw   `12223000                                     ;; 09:7438 $88 $78 GFX GFX
    dw   `22330000                                     ;; 09:743a $30 $f0 GFX GFX
    dw   `33000000                                     ;; 09:743c $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:743e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7440 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7442 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7444 $01 $01 GFX GFX
    dw   `00000332                                     ;; 09:7446 $06 $07 GFX GFX
    dw   `00003222                                     ;; 09:7448 $08 $0f GFX GFX
    dw   `00032211                                     ;; 09:744a $13 $1c GFX GFX
    dw   `00032111                                     ;; 09:744c $17 $18 GFX GFX
    dw   `00322111                                     ;; 09:744e $27 $38 GFX GFX
    dw   `00000000                                     ;; 09:7450 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7452 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7454 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:7456 $60 $e0 GFX GFX
    dw   `22230000                                     ;; 09:7458 $10 $f0 GFX GFX
    dw   `11223000                                     ;; 09:745a $c8 $38 GFX GFX
    dw   `11123000                                     ;; 09:745c $e8 $18 GFX GFX
    dw   `11122300                                     ;; 09:745e $e4 $1c GFX GFX
    dw   `00322111                                     ;; 09:7460 $27 $38 GFX GFX
    dw   `00032111                                     ;; 09:7462 $17 $18 GFX GFX
    dw   `00032211                                     ;; 09:7464 $13 $1c GFX GFX
    dw   `00003222                                     ;; 09:7466 $08 $0f GFX GFX
    dw   `00000332                                     ;; 09:7468 $06 $07 GFX GFX
    dw   `00000003                                     ;; 09:746a $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:746c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:746e $00 $00 GFX GFX
    dw   `11122300                                     ;; 09:7470 $e4 $1c GFX GFX
    dw   `11123000                                     ;; 09:7472 $e8 $18 GFX GFX
    dw   `11223000                                     ;; 09:7474 $c8 $38 GFX GFX
    dw   `22230000                                     ;; 09:7476 $10 $f0 GFX GFX
    dw   `23300000                                     ;; 09:7478 $60 $e0 GFX GFX
    dw   `30000000                                     ;; 09:747a $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:747c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:747e $00 $00 GFX GFX
    dw   `00000300                                     ;; 09:7480 $04 $04 GFX GFX
    dw   `00033033                                     ;; 09:7482 $1b $1b GFX GFX
    dw   `00330332                                     ;; 09:7484 $36 $37 GFX GFX
    dw   `00330322                                     ;; 09:7486 $34 $37 GFX GFX
    dw   `03333322                                     ;; 09:7488 $7c $7f GFX GFX
    dw   `03323321                                     ;; 09:748a $6d $7e GFX GFX
    dw   `03322221                                     ;; 09:748c $61 $7e GFX GFX
    dw   `00332211                                     ;; 09:748e $33 $3c GFX GFX
    dw   `33330000                                     ;; 09:7490 $f0 $f0 GFX GFX
    dw   `23333000                                     ;; 09:7492 $78 $f8 GFX GFX
    dw   `33000300                                     ;; 09:7494 $c4 $c4 GFX GFX
    dw   `33330000                                     ;; 09:7496 $f0 $f0 GFX GFX
    dw   `32233300                                     ;; 09:7498 $9c $fc GFX GFX
    dw   `22223330                                     ;; 09:749a $0e $fe GFX GFX
    dw   `11222330                                     ;; 09:749c $c6 $3e GFX GFX
    dw   `11233333                                     ;; 09:749e $df $3f GFX GFX
    dw   `30332111                                     ;; 09:74a0 $b7 $b8 GFX GFX
    dw   `30033211                                     ;; 09:74a2 $9b $9c GFX GFX
    dw   `33332221                                     ;; 09:74a4 $f1 $fe GFX GFX
    dw   `03333222                                     ;; 09:74a6 $78 $7f GFX GFX
    dw   `00033333                                     ;; 09:74a8 $1f $1f GFX GFX
    dw   `00300332                                     ;; 09:74aa $26 $27 GFX GFX
    dw   `00033333                                     ;; 09:74ac $1f $1f GFX GFX
    dw   `00000333                                     ;; 09:74ae $07 $07 GFX GFX
    dw   `11123333                                     ;; 09:74b0 $ef $1f GFX GFX
    dw   `11123033                                     ;; 09:74b2 $eb $1b GFX GFX
    dw   `11222303                                     ;; 09:74b4 $c5 $3d GFX GFX
    dw   `12332303                                     ;; 09:74b6 $b5 $7d GFX GFX
    dw   `22333300                                     ;; 09:74b8 $3c $fc GFX GFX
    dw   `23303300                                     ;; 09:74ba $6c $ec GFX GFX
    dw   `33003000                                     ;; 09:74bc $c8 $c8 GFX GFX
    dw   `30030000                                     ;; 09:74be $90 $90 GFX GFX
    dw   `00000330                                     ;; 09:74c0 $06 $06 GFX GFX
    dw   `00003300                                     ;; 09:74c2 $0c $0c GFX GFX
    dw   `00303303                                     ;; 09:74c4 $2d $2d GFX GFX
    dw   `03033333                                     ;; 09:74c6 $5f $5f GFX GFX
    dw   `03033232                                     ;; 09:74c8 $5a $5f GFX GFX
    dw   `33333221                                     ;; 09:74ca $f9 $fe GFX GFX
    dw   `33332211                                     ;; 09:74cc $f3 $fc GFX GFX
    dw   `33232111                                     ;; 09:74ce $d7 $f8 GFX GFX
    dw   `00000000                                     ;; 09:74d0 $00 $00 GFX GFX
    dw   `03330000                                     ;; 09:74d2 $70 $70 GFX GFX
    dw   `33333300                                     ;; 09:74d4 $fc $fc GFX GFX
    dw   `32333330                                     ;; 09:74d6 $be $fe GFX GFX
    dw   `22330030                                     ;; 09:74d8 $32 $f2 GFX GFX
    dw   `22333303                                     ;; 09:74da $3d $fd GFX GFX
    dw   `12233330                                     ;; 09:74dc $9e $7e GFX GFX
    dw   `11122330                                     ;; 09:74de $e6 $1e GFX GFX
    dw   `33221111                                     ;; 09:74e0 $cf $f0 GFX GFX
    dw   `03322111                                     ;; 09:74e2 $67 $78 GFX GFX
    dw   `00332212                                     ;; 09:74e4 $32 $3d GFX GFX
    dw   `30033222                                     ;; 09:74e6 $98 $9f GFX GFX
    dw   `03332233                                     ;; 09:74e8 $73 $7f GFX GFX
    dw   `00333333                                     ;; 09:74ea $3f $3f GFX GFX
    dw   `00003330                                     ;; 09:74ec $0e $0e GFX GFX
    dw   `00000003                                     ;; 09:74ee $01 $01 GFX GFX
    dw   `11222233                                     ;; 09:74f0 $c3 $3f GFX GFX
    dw   `11233233                                     ;; 09:74f2 $db $3f GFX GFX
    dw   `12223333                                     ;; 09:74f4 $8f $7f GFX GFX
    dw   `23223033                                     ;; 09:74f6 $4b $fb GFX GFX
    dw   `33233030                                     ;; 09:74f8 $da $fa GFX GFX
    dw   `03330300                                     ;; 09:74fa $74 $74 GFX GFX
    dw   `33330000                                     ;; 09:74fc $f0 $f0 GFX GFX
    dw   `33000000                                     ;; 09:74fe $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:7500 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7502 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7504 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7506 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7508 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:750a $03 $03 GFX GFX
    dw   `00333311                                     ;; 09:750c $3f $3c GFX GFX
    dw   `33311233                                     ;; 09:750e $fb $e7 GFX GFX
    dw   `00000000                                     ;; 09:7510 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7512 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7514 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7516 $00 $00 GFX GFX
    dw   `00333300                                     ;; 09:7518 $3c $3c GFX GFX
    dw   `33113130                                     ;; 09:751a $fe $ca GFX GFX
    dw   `11132113                                     ;; 09:751c $f7 $19 GFX GFX
    dw   `33332123                                     ;; 09:751e $f5 $fb GFX GFX
    dw   `33222211                                     ;; 09:7520 $c3 $fc GFX GFX
    dw   `00333322                                     ;; 09:7522 $3c $3f GFX GFX
    dw   `00000033                                     ;; 09:7524 $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:7526 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7528 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:752a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:752c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:752e $00 $00 GFX GFX
    dw   `11132213                                     ;; 09:7530 $f3 $1d GFX GFX
    dw   `22232113                                     ;; 09:7532 $17 $f9 GFX GFX
    dw   `33223230                                     ;; 09:7534 $ca $fe GFX GFX
    dw   `00333330                                     ;; 09:7536 $3e $3e GFX GFX
    dw   `00000000                                     ;; 09:7538 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:753a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:753c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:753e $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7540 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7542 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:7544 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7546 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7548 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:754a $02 $03 GFX GFX
    dw   `00000321                                     ;; 09:754c $05 $06 GFX GFX
    dw   `00000321                                     ;; 09:754e $05 $06 GFX GFX
    dw   `30000000                                     ;; 09:7550 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7552 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:7554 $c0 $c0 GFX GFX
    dw   `13000000                                     ;; 09:7556 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:7558 $c0 $40 GFX GFX
    dw   `23000000                                     ;; 09:755a $40 $c0 GFX GFX
    dw   `31300000                                     ;; 09:755c $e0 $a0 GFX GFX
    dw   `31300000                                     ;; 09:755e $e0 $a0 GFX GFX
    dw   `00000321                                     ;; 09:7560 $05 $06 GFX GFX
    dw   `00000321                                     ;; 09:7562 $05 $06 GFX GFX
    dw   `00003221                                     ;; 09:7564 $09 $0e GFX GFX
    dw   `00003233                                     ;; 09:7566 $0b $0f GFX GFX
    dw   `00003322                                     ;; 09:7568 $0c $0f GFX GFX
    dw   `00003212                                     ;; 09:756a $0a $0d GFX GFX
    dw   `00003311                                     ;; 09:756c $0f $0c GFX GFX
    dw   `00000033                                     ;; 09:756e $03 $03 GFX GFX
    dw   `31300000                                     ;; 09:7570 $e0 $a0 GFX GFX
    dw   `31300000                                     ;; 09:7572 $e0 $a0 GFX GFX
    dw   `31130000                                     ;; 09:7574 $f0 $90 GFX GFX
    dw   `33130000                                     ;; 09:7576 $f0 $d0 GFX GFX
    dw   `22330000                                     ;; 09:7578 $30 $f0 GFX GFX
    dw   `11130000                                     ;; 09:757a $f0 $10 GFX GFX
    dw   `21300000                                     ;; 09:757c $60 $a0 GFX GFX
    dw   `33000000                                     ;; 09:757e $c0 $c0 GFX GFX
    dw   `00000300                                     ;; 09:7580 $04 $04 GFX GFX
    dw   `00000330                                     ;; 09:7582 $06 $06 GFX GFX
    dw   `03300333                                     ;; 09:7584 $67 $67 GFX GFX
    dw   `00033330                                     ;; 09:7586 $1e $1e GFX GFX
    dw   `00000330                                     ;; 09:7588 $06 $06 GFX GFX
    dw   `00000000                                     ;; 09:758a $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:758c $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:758e $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7590 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7592 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7594 $80 $80 GFX GFX
    dw   `03300000                                     ;; 09:7596 $60 $60 GFX GFX
    dw   `00000000                                     ;; 09:7598 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:759a $00 $00 GFX GFX
    dw   `33333333                                     ;; 09:759c $ff $ff GFX GFX
    dw   `12233000                                     ;; 09:759e $98 $78 GFX GFX
    dw   `00333333                                     ;; 09:75a0 $3f $3f GFX GFX
    dw   `00031111                                     ;; 09:75a2 $1f $10 GFX GFX
    dw   `00003322                                     ;; 09:75a4 $0c $0f GFX GFX
    dw   `00003123                                     ;; 09:75a6 $0d $0b GFX GFX
    dw   `00032233                                     ;; 09:75a8 $13 $1f GFX GFX
    dw   `00323300                                     ;; 09:75aa $2c $3c GFX GFX
    dw   `03330000                                     ;; 09:75ac $70 $70 GFX GFX
    dw   `33000000                                     ;; 09:75ae $c0 $c0 GFX GFX
    dw   `13300000                                     ;; 09:75b0 $e0 $60 GFX GFX
    dw   `22300000                                     ;; 09:75b2 $20 $e0 GFX GFX
    dw   `33330000                                     ;; 09:75b4 $f0 $f0 GFX GFX
    dw   `00000000                                     ;; 09:75b6 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:75b8 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:75ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:75bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:75be $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:75c0 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:75c2 $c0 $c0 GFX GFX
    dw   `03300003                                     ;; 09:75c4 $61 $61 GFX GFX
    dw   `03230033                                     ;; 09:75c6 $53 $73 GFX GFX
    dw   `00323313                                     ;; 09:75c8 $2f $3d GFX GFX
    dw   `00321313                                     ;; 09:75ca $2f $35 GFX GFX
    dw   `00032213                                     ;; 09:75cc $13 $1d GFX GFX
    dw   `00033213                                     ;; 09:75ce $1b $1d GFX GFX
    dw   `00000000                                     ;; 09:75d0 $00 $00 GFX GFX
    dw   `00000300                                     ;; 09:75d2 $04 $04 GFX GFX
    dw   `00000300                                     ;; 09:75d4 $04 $04 GFX GFX
    dw   `00003000                                     ;; 09:75d6 $08 $08 GFX GFX
    dw   `00003000                                     ;; 09:75d8 $08 $08 GFX GFX
    dw   `00033333                                     ;; 09:75da $1f $1f GFX GFX
    dw   `03033330                                     ;; 09:75dc $5e $5e GFX GFX
    dw   `33000300                                     ;; 09:75de $c4 $c4 GFX GFX
    dw   `00030321                                     ;; 09:75e0 $15 $16 GFX GFX
    dw   `00000323                                     ;; 09:75e2 $05 $07 GFX GFX
    dw   `00000333                                     ;; 09:75e4 $07 $07 GFX GFX
    dw   `00000300                                     ;; 09:75e6 $04 $04 GFX GFX
    dw   `00000000                                     ;; 09:75e8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:75ea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:75ec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:75ee $00 $00 GFX GFX
    dw   `13000300                                     ;; 09:75f0 $c4 $44 GFX GFX
    dw   `23003000                                     ;; 09:75f2 $48 $c8 GFX GFX
    dw   `23003000                                     ;; 09:75f4 $48 $c8 GFX GFX
    dw   `33000000                                     ;; 09:75f6 $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:75f8 $c0 $c0 GFX GFX
    dw   `03000000                                     ;; 09:75fa $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:75fc $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:75fe $40 $40 GFX GFX
    dw   `00023000                                     ;; 09:7600 $08 $18 GFX GFX
    dw   `00023000                                     ;; 09:7602 $08 $18 GFX GFX
    dw   `00002300                                     ;; 09:7604 $04 $0c GFX GFX
    dw   `00002300                                     ;; 09:7606 $04 $0c GFX GFX
    dw   `00000233                                     ;; 09:7608 $03 $07 GFX GFX
    dw   `00000022                                     ;; 09:760a $00 $03 GFX GFX
    dw   `00000000                                     ;; 09:760c $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:760e $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:7610 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7612 $00 $00 GFX GFX
    dw   `00333000                                     ;; 09:7614 $38 $38 GFX GFX
    dw   `03222300                                     ;; 09:7616 $44 $7c GFX GFX
    dw   `32000200                                     ;; 09:7618 $80 $c4 GFX GFX
    dw   `20000000                                     ;; 09:761a $00 $80 GFX GFX
    dw   `03333000                                     ;; 09:761c $78 $78 GFX GFX
    dw   `32222330                                     ;; 09:761e $86 $fe GFX GFX
    dw   `22300033                                     ;; 09:7620 $23 $e3 GFX GFX
    dw   `00233322                                     ;; 09:7622 $1c $3f GFX GFX
    dw   `00022200                                     ;; 09:7624 $00 $1c GFX GFX
    dw   `00000003                                     ;; 09:7626 $01 $01 GFX GFX
    dw   `00000332                                     ;; 09:7628 $06 $07 GFX GFX
    dw   `00000220                                     ;; 09:762a $00 $06 GFX GFX
    dw   `00000000                                     ;; 09:762c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:762e $00 $00 GFX GFX
    dw   `22000220                                     ;; 09:7630 $00 $c6 GFX GFX
    dw   `00000000                                     ;; 09:7632 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7634 $03 $03 GFX GFX
    dw   `30000322                                     ;; 09:7636 $84 $87 GFX GFX
    dw   `23000320                                     ;; 09:7638 $44 $c6 GFX GFX
    dw   `02333200                                     ;; 09:763a $38 $7c GFX GFX
    dw   `00222000                                     ;; 09:763c $00 $38 GFX GFX
    dw   `00000000                                     ;; 09:763e $00 $00 GFX GFX
    dw   `00000002                                     ;; 09:7640 $00 $01 GFX GFX
    dw   `00000002                                     ;; 09:7642 $00 $01 GFX GFX
    dw   `00000023                                     ;; 09:7644 $01 $03 GFX GFX
    dw   `00000230                                     ;; 09:7646 $02 $06 GFX GFX
    dw   `00000230                                     ;; 09:7648 $02 $06 GFX GFX
    dw   `00230230                                     ;; 09:764a $12 $36 GFX GFX
    dw   `00230023                                     ;; 09:764c $11 $33 GFX GFX
    dw   `00023023                                     ;; 09:764e $09 $1b GFX GFX
    dw   `30000000                                     ;; 09:7650 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7652 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7654 $00 $00 GFX GFX
    dw   `00000022                                     ;; 09:7656 $00 $03 GFX GFX
    dw   `00002233                                     ;; 09:7658 $03 $0f GFX GFX
    dw   `00023300                                     ;; 09:765a $0c $1c GFX GFX
    dw   `00230000                                     ;; 09:765c $10 $30 GFX GFX
    dw   `00230000                                     ;; 09:765e $10 $30 GFX GFX
    dw   `00023002                                     ;; 09:7660 $08 $19 GFX GFX
    dw   `00230002                                     ;; 09:7662 $10 $31 GFX GFX
    dw   `02300000                                     ;; 09:7664 $20 $60 GFX GFX
    dw   `02300000                                     ;; 09:7666 $20 $60 GFX GFX
    dw   `02300000                                     ;; 09:7668 $20 $60 GFX GFX
    dw   `00233002                                     ;; 09:766a $18 $39 GFX GFX
    dw   `00022302                                     ;; 09:766c $04 $1d GFX GFX
    dw   `00002300                                     ;; 09:766e $04 $0c GFX GFX
    dw   `30230000                                     ;; 09:7670 $90 $b0 GFX GFX
    dw   `23023000                                     ;; 09:7672 $48 $d8 GFX GFX
    dw   `23002300                                     ;; 09:7674 $44 $cc GFX GFX
    dw   `23002300                                     ;; 09:7676 $44 $cc GFX GFX
    dw   `23002300                                     ;; 09:7678 $44 $cc GFX GFX
    dw   `30023000                                     ;; 09:767a $88 $98 GFX GFX
    dw   `30000000                                     ;; 09:767c $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:767e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7680 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7682 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7684 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7686 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7688 $00 $00 GFX GFX
    dw   `00033000                                     ;; 09:768a $18 $18 GFX GFX
    dw   `00330000                                     ;; 09:768c $30 $30 GFX GFX
    dw   `33333333                                     ;; 09:768e $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7690 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7692 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7694 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7696 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7698 $00 $00 GFX GFX
    dw   `00003333                                     ;; 09:769a $0f $0f GFX GFX
    dw   `00031230                                     ;; 09:769c $1a $16 GFX GFX
    dw   `33333330                                     ;; 09:769e $fe $fe GFX GFX
    dw   `00330000                                     ;; 09:76a0 $30 $30 GFX GFX
    dw   `00033000                                     ;; 09:76a2 $18 $18 GFX GFX
    dw   `00000000                                     ;; 09:76a4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76a6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76a8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76aa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76ac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76ae $00 $00 GFX GFX
    dw   `00031230                                     ;; 09:76b0 $1a $16 GFX GFX
    dw   `00003333                                     ;; 09:76b2 $0f $0f GFX GFX
    dw   `00000000                                     ;; 09:76b4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76b6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76b8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76be $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76c2 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:76c4 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:76c6 $03 $03 GFX GFX
    dw   `00000030                                     ;; 09:76c8 $02 $02 GFX GFX
    dw   `00000000                                     ;; 09:76ca $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76cc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76ce $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:76d0 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:76d2 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:76d4 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:76d6 $e0 $e0 GFX GFX
    dw   `30300000                                     ;; 09:76d8 $a0 $a0 GFX GFX
    dw   `30000000                                     ;; 09:76da $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:76dc $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:76de $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:76e0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76e2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:76e4 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:76e6 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:76e8 $03 $02 GFX GFX
    dw   `00000032                                     ;; 09:76ea $02 $03 GFX GFX
    dw   `00000033                                     ;; 09:76ec $03 $03 GFX GFX
    dw   `00000030                                     ;; 09:76ee $02 $02 GFX GFX
    dw   `30000000                                     ;; 09:76f0 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:76f2 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:76f4 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:76f6 $c0 $c0 GFX GFX
    dw   `31300000                                     ;; 09:76f8 $e0 $a0 GFX GFX
    dw   `32300000                                     ;; 09:76fa $a0 $e0 GFX GFX
    dw   `33300000                                     ;; 09:76fc $e0 $e0 GFX GFX
    dw   `00300000                                     ;; 09:76fe $20 $20 GFX GFX
    dw   `00000000                                     ;; 09:7700 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7702 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7704 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7706 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7708 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:770a $00 $00 GFX GFX
    dw   `00333333                                     ;; 09:770c $3f $3f GFX GFX
    dw   `03111111                                     ;; 09:770e $7f $40 GFX GFX
    dw   `00000000                                     ;; 09:7710 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7712 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7714 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7716 $00 $00 GFX GFX
    dw   `00033000                                     ;; 09:7718 $18 $18 GFX GFX
    dw   `00003000                                     ;; 09:771a $08 $08 GFX GFX
    dw   `33333300                                     ;; 09:771c $fc $fc GFX GFX
    dw   `11133233                                     ;; 09:771e $fb $1f GFX GFX
    dw   `32222222                                     ;; 09:7720 $80 $ff GFX GFX
    dw   `03111111                                     ;; 09:7722 $7f $40 GFX GFX
    dw   `00333333                                     ;; 09:7724 $3f $3f GFX GFX
    dw   `00000000                                     ;; 09:7726 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7728 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:772a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:772c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:772e $00 $00 GFX GFX
    dw   `22233223                                     ;; 09:7730 $19 $ff GFX GFX
    dw   `11133233                                     ;; 09:7732 $fb $1f GFX GFX
    dw   `33333300                                     ;; 09:7734 $fc $fc GFX GFX
    dw   `00003000                                     ;; 09:7736 $08 $08 GFX GFX
    dw   `00033000                                     ;; 09:7738 $18 $18 GFX GFX
    dw   `00000000                                     ;; 09:773a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:773c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:773e $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7740 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:7742 $02 $03 GFX GFX
    dw   `00000312                                     ;; 09:7744 $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:7746 $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:7748 $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:774a $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:774c $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:774e $06 $05 GFX GFX
    dw   `00000000                                     ;; 09:7750 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7752 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:7754 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:7756 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:7758 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:775a $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:775c $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:775e $c0 $40 GFX GFX
    dw   `00000312                                     ;; 09:7760 $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:7762 $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:7764 $06 $05 GFX GFX
    dw   `00030333                                     ;; 09:7766 $17 $17 GFX GFX
    dw   `00033333                                     ;; 09:7768 $1f $1f GFX GFX
    dw   `00000322                                     ;; 09:776a $04 $07 GFX GFX
    dw   `00000032                                     ;; 09:776c $02 $03 GFX GFX
    dw   `00000033                                     ;; 09:776e $03 $03 GFX GFX
    dw   `13000000                                     ;; 09:7770 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:7772 $c0 $40 GFX GFX
    dw   `13000000                                     ;; 09:7774 $c0 $40 GFX GFX
    dw   `33030000                                     ;; 09:7776 $d0 $d0 GFX GFX
    dw   `33330000                                     ;; 09:7778 $f0 $f0 GFX GFX
    dw   `23000000                                     ;; 09:777a $40 $c0 GFX GFX
    dw   `30000000                                     ;; 09:777c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:777e $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7780 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7782 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7784 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7786 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7788 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:778a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:778c $00 $00 GFX GFX
    dw   `00033333                                     ;; 09:778e $1f $1f GFX GFX
    dw   `00000000                                     ;; 09:7790 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7792 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7794 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7796 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7798 $00 $00 GFX GFX
    dw   `00003330                                     ;; 09:779a $0e $0e GFX GFX
    dw   `00031130                                     ;; 09:779c $1e $12 GFX GFX
    dw   `33331233                                     ;; 09:779e $fb $f7 GFX GFX
    dw   `33311111                                     ;; 09:77a0 $ff $e0 GFX GFX
    dw   `00033333                                     ;; 09:77a2 $1f $1f GFX GFX
    dw   `00000000                                     ;; 09:77a4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77a6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77a8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77aa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77ac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77ae $00 $00 GFX GFX
    dw   `11132233                                     ;; 09:77b0 $f3 $1f GFX GFX
    dw   `33332233                                     ;; 09:77b2 $f3 $ff GFX GFX
    dw   `00032230                                     ;; 09:77b4 $12 $1e GFX GFX
    dw   `00003330                                     ;; 09:77b6 $0e $0e GFX GFX
    dw   `00000000                                     ;; 09:77b8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77be $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:77c0 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:77c2 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:77c4 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:77c6 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77c8 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77ca $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77cc $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77ce $03 $02 GFX GFX
    dw   `00000000                                     ;; 09:77d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77d2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:77d4 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:77d6 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77d8 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77da $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77dc $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77de $80 $80 GFX GFX
    dw   `00000031                                     ;; 09:77e0 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77e2 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:77e4 $03 $02 GFX GFX
    dw   `00000333                                     ;; 09:77e6 $07 $07 GFX GFX
    dw   `00003111                                     ;; 09:77e8 $0f $08 GFX GFX
    dw   `00003122                                     ;; 09:77ea $0c $0b GFX GFX
    dw   `00003333                                     ;; 09:77ec $0f $0f GFX GFX
    dw   `00000033                                     ;; 09:77ee $03 $03 GFX GFX
    dw   `30000000                                     ;; 09:77f0 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77f2 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:77f4 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:77f6 $c0 $c0 GFX GFX
    dw   `22300000                                     ;; 09:77f8 $20 $e0 GFX GFX
    dw   `22300000                                     ;; 09:77fa $20 $e0 GFX GFX
    dw   `33300000                                     ;; 09:77fc $e0 $e0 GFX GFX
    dw   `30000000                                     ;; 09:77fe $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7800 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7802 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7804 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:7806 $03 $02 GFX GFX
    dw   `00000032                                     ;; 09:7808 $02 $03 GFX GFX
    dw   `00000312                                     ;; 09:780a $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:780c $06 $05 GFX GFX
    dw   `00000312                                     ;; 09:780e $06 $05 GFX GFX
    dw   `03300000                                     ;; 09:7810 $60 $60 GFX GFX
    dw   `33000000                                     ;; 09:7812 $c0 $c0 GFX GFX
    dw   `20000000                                     ;; 09:7814 $00 $80 GFX GFX
    dw   `30000000                                     ;; 09:7816 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7818 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:781a $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:781c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:781e $80 $80 GFX GFX
    dw   `00003312                                     ;; 09:7820 $0e $0d GFX GFX
    dw   `00003333                                     ;; 09:7822 $0f $0f GFX GFX
    dw   `00003333                                     ;; 09:7824 $0f $0f GFX GFX
    dw   `00000333                                     ;; 09:7826 $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:7828 $07 $07 GFX GFX
    dw   `00022033                                     ;; 09:782a $03 $1b GFX GFX
    dw   `00000222                                     ;; 09:782c $00 $07 GFX GFX
    dw   `00000000                                     ;; 09:782e $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7830 $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:7832 $c0 $c0 GFX GFX
    dw   `33300000                                     ;; 09:7834 $e0 $e0 GFX GFX
    dw   `13300000                                     ;; 09:7836 $e0 $60 GFX GFX
    dw   `33300000                                     ;; 09:7838 $e0 $e0 GFX GFX
    dw   `33022000                                     ;; 09:783a $c0 $d8 GFX GFX
    dw   `22200000                                     ;; 09:783c $00 $e0 GFX GFX
    dw   `00000000                                     ;; 09:783e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7840 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7842 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7844 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7846 $01 $01 GFX GFX
    dw   `00000332                                     ;; 09:7848 $06 $07 GFX GFX
    dw   `00000321                                     ;; 09:784a $05 $06 GFX GFX
    dw   `00003211                                     ;; 09:784c $0b $0c GFX GFX
    dw   `00003211                                     ;; 09:784e $0b $0c GFX GFX
    dw   `00000000                                     ;; 09:7850 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7852 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7854 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7856 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:7858 $60 $e0 GFX GFX
    dw   `12300000                                     ;; 09:785a $a0 $60 GFX GFX
    dw   `11230000                                     ;; 09:785c $d0 $30 GFX GFX
    dw   `11230000                                     ;; 09:785e $d0 $30 GFX GFX
    dw   `00003211                                     ;; 09:7860 $0b $0c GFX GFX
    dw   `00000321                                     ;; 09:7862 $05 $06 GFX GFX
    dw   `00000332                                     ;; 09:7864 $06 $07 GFX GFX
    dw   `00000003                                     ;; 09:7866 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7868 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:786a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:786c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:786e $00 $00 GFX GFX
    dw   `11230000                                     ;; 09:7870 $d0 $30 GFX GFX
    dw   `12300000                                     ;; 09:7872 $a0 $60 GFX GFX
    dw   `23300000                                     ;; 09:7874 $60 $e0 GFX GFX
    dw   `30000000                                     ;; 09:7876 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7878 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:787a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:787c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:787e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7880 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7882 $03 $03 GFX GFX
    dw   `00003322                                     ;; 09:7884 $0c $0f GFX GFX
    dw   `00032221                                     ;; 09:7886 $11 $1e GFX GFX
    dw   `00322111                                     ;; 09:7888 $27 $38 GFX GFX
    dw   `00321111                                     ;; 09:788a $2f $30 GFX GFX
    dw   `03221111                                     ;; 09:788c $4f $70 GFX GFX
    dw   `03211111                                     ;; 09:788e $5f $60 GFX GFX
    dw   `00000000                                     ;; 09:7890 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7892 $c0 $c0 GFX GFX
    dw   `22330000                                     ;; 09:7894 $30 $f0 GFX GFX
    dw   `12223000                                     ;; 09:7896 $88 $78 GFX GFX
    dw   `11122300                                     ;; 09:7898 $e4 $1c GFX GFX
    dw   `11112300                                     ;; 09:789a $f4 $0c GFX GFX
    dw   `11112230                                     ;; 09:789c $f2 $0e GFX GFX
    dw   `11111230                                     ;; 09:789e $fa $06 GFX GFX
    dw   `03211111                                     ;; 09:78a0 $5f $60 GFX GFX
    dw   `03221111                                     ;; 09:78a2 $4f $70 GFX GFX
    dw   `00321111                                     ;; 09:78a4 $2f $30 GFX GFX
    dw   `00322111                                     ;; 09:78a6 $27 $38 GFX GFX
    dw   `00032221                                     ;; 09:78a8 $11 $1e GFX GFX
    dw   `00003322                                     ;; 09:78aa $0c $0f GFX GFX
    dw   `00000033                                     ;; 09:78ac $03 $03 GFX GFX
    dw   `00000000                                     ;; 09:78ae $00 $00 GFX GFX
    dw   `11111230                                     ;; 09:78b0 $fa $06 GFX GFX
    dw   `11112230                                     ;; 09:78b2 $f2 $0e GFX GFX
    dw   `11112300                                     ;; 09:78b4 $f4 $0c GFX GFX
    dw   `11122300                                     ;; 09:78b6 $e4 $1c GFX GFX
    dw   `12223000                                     ;; 09:78b8 $88 $78 GFX GFX
    dw   `22330000                                     ;; 09:78ba $30 $f0 GFX GFX
    dw   `33000000                                     ;; 09:78bc $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:78be $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:78c0 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:78c2 $01 $01 GFX GFX
    dw   `00000332                                     ;; 09:78c4 $06 $07 GFX GFX
    dw   `00003223                                     ;; 09:78c6 $09 $0f GFX GFX
    dw   `00032230                                     ;; 09:78c8 $12 $1e GFX GFX
    dw   `00322300                                     ;; 09:78ca $24 $3c GFX GFX
    dw   `00323000                                     ;; 09:78cc $28 $38 GFX GFX
    dw   `03230003                                     ;; 09:78ce $51 $71 GFX GFX
    dw   `00333333                                     ;; 09:78d0 $3f $3f GFX GFX
    dw   `33233000                                     ;; 09:78d2 $d8 $f8 GFX GFX
    dw   `23300000                                     ;; 09:78d4 $60 $e0 GFX GFX
    dw   `30000000                                     ;; 09:78d6 $80 $80 GFX GFX
    dw   `00003330                                     ;; 09:78d8 $0e $0e GFX GFX
    dw   `00333000                                     ;; 09:78da $38 $38 GFX GFX
    dw   `33300000                                     ;; 09:78dc $e0 $e0 GFX GFX
    dw   `33000000                                     ;; 09:78de $c0 $c0 GFX GFX
    dw   `03230003                                     ;; 09:78e0 $51 $71 GFX GFX
    dw   `03300033                                     ;; 09:78e2 $63 $63 GFX GFX
    dw   `32300030                                     ;; 09:78e4 $a2 $e2 GFX GFX
    dw   `33000330                                     ;; 09:78e6 $c6 $c6 GFX GFX
    dw   `33000300                                     ;; 09:78e8 $c4 $c4 GFX GFX
    dw   `30000300                                     ;; 09:78ea $84 $84 GFX GFX
    dw   `30000300                                     ;; 09:78ec $84 $84 GFX GFX
    dw   `30000000                                     ;; 09:78ee $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:78f0 $80 $80 GFX GFX
    dw   `00003330                                     ;; 09:78f2 $0e $0e GFX GFX
    dw   `00333000                                     ;; 09:78f4 $38 $38 GFX GFX
    dw   `00330000                                     ;; 09:78f6 $30 $30 GFX GFX
    dw   `03300000                                     ;; 09:78f8 $60 $60 GFX GFX
    dw   `03000000                                     ;; 09:78fa $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:78fc $40 $40 GFX GFX
    dw   `00000000                                     ;; 09:78fe $00 $00 GFX GFX
    dw   `00000333                                     ;; 09:7900 $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:7902 $1f $1f GFX GFX
    dw   `00333333                                     ;; 09:7904 $3f $3f GFX GFX
    dw   `03333232                                     ;; 09:7906 $7a $7f GFX GFX
    dw   `03333323                                     ;; 09:7908 $7d $7f GFX GFX
    dw   `33323230                                     ;; 09:790a $ea $fe GFX GFX
    dw   `33332202                                     ;; 09:790c $f0 $fd GFX GFX
    dw   `33323020                                     ;; 09:790e $e8 $fa GFX GFX
    dw   `33300000                                     ;; 09:7910 $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:7912 $f8 $f8 GFX GFX
    dw   `23333300                                     ;; 09:7914 $7c $fc GFX GFX
    dw   `32323330                                     ;; 09:7916 $ae $fe GFX GFX
    dw   `23232330                                     ;; 09:7918 $56 $fe GFX GFX
    dw   `20223233                                     ;; 09:791a $0b $bf GFX GFX
    dw   `02020233                                     ;; 09:791c $03 $57 GFX GFX
    dw   `20202023                                     ;; 09:791e $01 $ab GFX GFX
    dw   `33232202                                     ;; 09:7920 $d0 $fd GFX GFX
    dw   `33322020                                     ;; 09:7922 $e0 $fa GFX GFX
    dw   `33332200                                     ;; 09:7924 $f0 $fc GFX GFX
    dw   `03323020                                     ;; 09:7926 $68 $7a GFX GFX
    dw   `03332202                                     ;; 09:7928 $70 $7d GFX GFX
    dw   `00333220                                     ;; 09:792a $38 $3e GFX GFX
    dw   `00033322                                     ;; 09:792c $1c $1f GFX GFX
    dw   `00000333                                     ;; 09:792e $07 $07 GFX GFX
    dw   `02000203                                     ;; 09:7930 $01 $45 GFX GFX
    dw   `00000022                                     ;; 09:7932 $00 $03 GFX GFX
    dw   `20000002                                     ;; 09:7934 $00 $81 GFX GFX
    dw   `00000020                                     ;; 09:7936 $00 $02 GFX GFX
    dw   `00000000                                     ;; 09:7938 $00 $00 GFX GFX
    dw   `02000000                                     ;; 09:793a $00 $40 GFX GFX
    dw   `20022000                                     ;; 09:793c $00 $98 GFX GFX
    dw   `32300000                                     ;; 09:793e $a0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:7940 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7942 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7944 $01 $01 GFX GFX
    dw   `00000332                                     ;; 09:7946 $06 $07 GFX GFX
    dw   `00003222                                     ;; 09:7948 $08 $0f GFX GFX
    dw   `00032211                                     ;; 09:794a $13 $1c GFX GFX
    dw   `00032111                                     ;; 09:794c $17 $18 GFX GFX
    dw   `00322111                                     ;; 09:794e $27 $38 GFX GFX
    dw   `00000000                                     ;; 09:7950 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7952 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7954 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:7956 $60 $e0 GFX GFX
    dw   `22230000                                     ;; 09:7958 $10 $f0 GFX GFX
    dw   `11223000                                     ;; 09:795a $c8 $38 GFX GFX
    dw   `11123000                                     ;; 09:795c $e8 $18 GFX GFX
    dw   `11122300                                     ;; 09:795e $e4 $1c GFX GFX
    dw   `00322111                                     ;; 09:7960 $27 $38 GFX GFX
    dw   `00032111                                     ;; 09:7962 $17 $18 GFX GFX
    dw   `00032211                                     ;; 09:7964 $13 $1c GFX GFX
    dw   `00003222                                     ;; 09:7966 $08 $0f GFX GFX
    dw   `00000332                                     ;; 09:7968 $06 $07 GFX GFX
    dw   `00000003                                     ;; 09:796a $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:796c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:796e $00 $00 GFX GFX
    dw   `11122300                                     ;; 09:7970 $e4 $1c GFX GFX
    dw   `11123000                                     ;; 09:7972 $e8 $18 GFX GFX
    dw   `11223000                                     ;; 09:7974 $c8 $38 GFX GFX
    dw   `22230000                                     ;; 09:7976 $10 $f0 GFX GFX
    dw   `23300000                                     ;; 09:7978 $60 $e0 GFX GFX
    dw   `30000000                                     ;; 09:797a $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:797c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:797e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7980 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7982 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7984 $00 $00 GFX GFX
    dw   `00003300                                     ;; 09:7986 $0c $0c GFX GFX
    dw   `00333000                                     ;; 09:7988 $38 $38 GFX GFX
    dw   `03333030                                     ;; 09:798a $7a $7a GFX GFX
    dw   `33333030                                     ;; 09:798c $fa $fa GFX GFX
    dw   `33333333                                     ;; 09:798e $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7990 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7992 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7994 $00 $00 GFX GFX
    dw   `00330000                                     ;; 09:7996 $30 $30 GFX GFX
    dw   `00033300                                     ;; 09:7998 $1c $1c GFX GFX
    dw   `03033330                                     ;; 09:799a $5e $5e GFX GFX
    dw   `03033333                                     ;; 09:799c $5f $5f GFX GFX
    dw   `33333333                                     ;; 09:799e $ff $ff GFX GFX
    dw   `33333313                                     ;; 09:79a0 $ff $fd GFX GFX
    dw   `30033313                                     ;; 09:79a2 $9f $9d GFX GFX
    dw   `30333333                                     ;; 09:79a4 $bf $bf GFX GFX
    dw   `00300333                                     ;; 09:79a6 $27 $27 GFX GFX
    dw   `00000300                                     ;; 09:79a8 $04 $04 GFX GFX
    dw   `00000000                                     ;; 09:79aa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79ac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79ae $00 $00 GFX GFX
    dw   `31333333                                     ;; 09:79b0 $ff $bf GFX GFX
    dw   `31333003                                     ;; 09:79b2 $f9 $b9 GFX GFX
    dw   `33333303                                     ;; 09:79b4 $fd $fd GFX GFX
    dw   `33300300                                     ;; 09:79b6 $e4 $e4 GFX GFX
    dw   `00300000                                     ;; 09:79b8 $20 $20 GFX GFX
    dw   `00000000                                     ;; 09:79ba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79bc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79be $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79c0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79c2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79c4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79c6 $00 $00 GFX GFX
    dw   `00000030                                     ;; 09:79c8 $02 $02 GFX GFX
    dw   `00000030                                     ;; 09:79ca $02 $02 GFX GFX
    dw   `00000333                                     ;; 09:79cc $07 $07 GFX GFX
    dw   `00033313                                     ;; 09:79ce $1f $1d GFX GFX
    dw   `00000000                                     ;; 09:79d0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79d2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79d4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:79d6 $00 $00 GFX GFX
    dw   `03000000                                     ;; 09:79d8 $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:79da $40 $40 GFX GFX
    dw   `33300000                                     ;; 09:79dc $e0 $e0 GFX GFX
    dw   `31333000                                     ;; 09:79de $f8 $b8 GFX GFX
    dw   `03333313                                     ;; 09:79e0 $7f $7d GFX GFX
    dw   `03333333                                     ;; 09:79e2 $7f $7f GFX GFX
    dw   `33330333                                     ;; 09:79e4 $f7 $f7 GFX GFX
    dw   `33333000                                     ;; 09:79e6 $f8 $f8 GFX GFX
    dw   `33333000                                     ;; 09:79e8 $f8 $f8 GFX GFX
    dw   `30303300                                     ;; 09:79ea $ac $ac GFX GFX
    dw   `00300300                                     ;; 09:79ec $24 $24 GFX GFX
    dw   `00000000                                     ;; 09:79ee $00 $00 GFX GFX
    dw   `31333330                                     ;; 09:79f0 $fe $be GFX GFX
    dw   `33333330                                     ;; 09:79f2 $fe $fe GFX GFX
    dw   `33303333                                     ;; 09:79f4 $ef $ef GFX GFX
    dw   `00033333                                     ;; 09:79f6 $1f $1f GFX GFX
    dw   `00033333                                     ;; 09:79f8 $1f $1f GFX GFX
    dw   `00330303                                     ;; 09:79fa $35 $35 GFX GFX
    dw   `00300300                                     ;; 09:79fc $24 $24 GFX GFX
    dw   `00000000                                     ;; 09:79fe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a00 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a02 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a04 $00 $00 GFX GFX
    dw   `00333000                                     ;; 09:7a06 $38 $38 GFX GFX
    dw   `03231300                                     ;; 09:7a08 $5c $74 GFX GFX
    dw   `32223230                                     ;; 09:7a0a $8a $fe GFX GFX
    dw   `33332233                                     ;; 09:7a0c $f3 $ff GFX GFX
    dw   `03003222                                     ;; 09:7a0e $48 $4f GFX GFX
    dw   `00000000                                     ;; 09:7a10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a14 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a16 $00 $00 GFX GFX
    dw   `03330000                                     ;; 09:7a18 $70 $70 GFX GFX
    dw   `32223000                                     ;; 09:7a1a $88 $f8 GFX GFX
    dw   `22122300                                     ;; 09:7a1c $24 $dc GFX GFX
    dw   `21312330                                     ;; 09:7a1e $76 $ae GFX GFX
    dw   `00003221                                     ;; 09:7a20 $09 $0e GFX GFX
    dw   `03003213                                     ;; 09:7a22 $4b $4d GFX GFX
    dw   `03332330                                     ;; 09:7a24 $76 $7e GFX GFX
    dw   `00333000                                     ;; 09:7a26 $38 $38 GFX GFX
    dw   `00000000                                     ;; 09:7a28 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a2a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a2c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a2e $00 $00 GFX GFX
    dw   `13331123                                     ;; 09:7a30 $fd $73 GFX GFX
    dw   `30003330                                     ;; 09:7a32 $8e $8e GFX GFX
    dw   `00000000                                     ;; 09:7a34 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a36 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a38 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a3a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a3c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a3e $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a40 $00 $00 GFX GFX
    dw   `00000330                                     ;; 09:7a42 $06 $06 GFX GFX
    dw   `00003300                                     ;; 09:7a44 $0c $0c GFX GFX
    dw   `00003300                                     ;; 09:7a46 $0c $0c GFX GFX
    dw   `00003233                                     ;; 09:7a48 $0b $0f GFX GFX
    dw   `00000322                                     ;; 09:7a4a $04 $07 GFX GFX
    dw   `00000312                                     ;; 09:7a4c $06 $05 GFX GFX
    dw   `00000031                                     ;; 09:7a4e $03 $02 GFX GFX
    dw   `03300000                                     ;; 09:7a50 $60 $60 GFX GFX
    dw   `33230000                                     ;; 09:7a52 $d0 $f0 GFX GFX
    dw   `03223000                                     ;; 09:7a54 $48 $78 GFX GFX
    dw   `03233000                                     ;; 09:7a56 $58 $78 GFX GFX
    dw   `32313000                                     ;; 09:7a58 $b8 $e8 GFX GFX
    dw   `22230000                                     ;; 09:7a5a $10 $f0 GFX GFX
    dw   `23300000                                     ;; 09:7a5c $60 $e0 GFX GFX
    dw   `23000000                                     ;; 09:7a5e $40 $c0 GFX GFX
    dw   `00000031                                     ;; 09:7a60 $03 $02 GFX GFX
    dw   `00000003                                     ;; 09:7a62 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7a64 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7a66 $01 $01 GFX GFX
    dw   `00000031                                     ;; 09:7a68 $03 $02 GFX GFX
    dw   `00000031                                     ;; 09:7a6a $03 $02 GFX GFX
    dw   `00000032                                     ;; 09:7a6c $02 $03 GFX GFX
    dw   `00000003                                     ;; 09:7a6e $01 $01 GFX GFX
    dw   `22300000                                     ;; 09:7a70 $20 $e0 GFX GFX
    dw   `12230000                                     ;; 09:7a72 $90 $70 GFX GFX
    dw   `31230000                                     ;; 09:7a74 $d0 $b0 GFX GFX
    dw   `12230000                                     ;; 09:7a76 $90 $70 GFX GFX
    dw   `22300000                                     ;; 09:7a78 $20 $e0 GFX GFX
    dw   `33000000                                     ;; 09:7a7a $c0 $c0 GFX GFX
    dw   `30000000                                     ;; 09:7a7c $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7a7e $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7a80 $c0 $c0 GFX GFX
    dw   `31300000                                     ;; 09:7a82 $e0 $a0 GFX GFX
    dw   `03130000                                     ;; 09:7a84 $70 $50 GFX GFX
    dw   `03123000                                     ;; 09:7a86 $68 $58 GFX GFX
    dw   `00312300                                     ;; 09:7a88 $34 $2c GFX GFX
    dw   `00321230                                     ;; 09:7a8a $2a $36 GFX GFX
    dw   `00032123                                     ;; 09:7a8c $15 $1b GFX GFX
    dw   `00003221                                     ;; 09:7a8e $09 $0e GFX GFX
    dw   `00000000                                     ;; 09:7a90 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a92 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a94 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a96 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a98 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a9a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7a9c $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7a9e $80 $80 GFX GFX
    dw   `00000311                                     ;; 09:7aa0 $07 $04 GFX GFX
    dw   `00000031                                     ;; 09:7aa2 $03 $02 GFX GFX
    dw   `00000003                                     ;; 09:7aa4 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7aa6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7aa8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7aaa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7aac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7aae $00 $00 GFX GFX
    dw   `23000000                                     ;; 09:7ab0 $40 $c0 GFX GFX
    dw   `11300000                                     ;; 09:7ab2 $e0 $20 GFX GFX
    dw   `22230000                                     ;; 09:7ab4 $10 $f0 GFX GFX
    dw   `31113000                                     ;; 09:7ab6 $f8 $88 GFX GFX
    dw   `03331300                                     ;; 09:7ab8 $7c $74 GFX GFX
    dw   `00033130                                     ;; 09:7aba $1e $1a GFX GFX
    dw   `00000313                                     ;; 09:7abc $07 $05 GFX GFX
    dw   `00000033                                     ;; 09:7abe $03 $03 GFX GFX
    dw   `33300000                                     ;; 09:7ac0 $e0 $e0 GFX GFX
    dw   `31133000                                     ;; 09:7ac2 $f8 $98 GFX GFX
    dw   `31112330                                     ;; 09:7ac4 $f6 $8e GFX GFX
    dw   `32111113                                     ;; 09:7ac6 $bf $c1 GFX GFX
    dw   `03131111                                     ;; 09:7ac8 $7f $50 GFX GFX
    dw   `03113112                                     ;; 09:7aca $7e $49 GFX GFX
    dw   `00332312                                     ;; 09:7acc $36 $3d GFX GFX
    dw   `00311131                                     ;; 09:7ace $3f $22 GFX GFX
    dw   `00000000                                     ;; 09:7ad0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ad2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ad4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ad6 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7ad8 $80 $80 GFX GFX
    dw   `13000000                                     ;; 09:7ada $c0 $40 GFX GFX
    dw   `13300000                                     ;; 09:7adc $e0 $60 GFX GFX
    dw   `13130000                                     ;; 09:7ade $f0 $50 GFX GFX
    dw   `00031113                                     ;; 09:7ae0 $1f $11 GFX GFX
    dw   `00032221                                     ;; 09:7ae2 $11 $1e GFX GFX
    dw   `00003111                                     ;; 09:7ae4 $0f $08 GFX GFX
    dw   `00000333                                     ;; 09:7ae6 $07 $07 GFX GFX
    dw   `00000031                                     ;; 09:7ae8 $03 $02 GFX GFX
    dw   `00000003                                     ;; 09:7aea $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7aec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7aee $00 $00 GFX GFX
    dw   `13123000                                     ;; 09:7af0 $e8 $58 GFX GFX
    dw   `31123000                                     ;; 09:7af2 $e8 $98 GFX GFX
    dw   `23223000                                     ;; 09:7af4 $48 $f8 GFX GFX
    dw   `31233000                                     ;; 09:7af6 $d8 $b8 GFX GFX
    dw   `11313000                                     ;; 09:7af8 $f8 $28 GFX GFX
    dw   `33331300                                     ;; 09:7afa $fc $f4 GFX GFX
    dw   `00003130                                     ;; 09:7afc $0e $0a GFX GFX
    dw   `00000313                                     ;; 09:7afe $07 $05 GFX GFX
    dw   `00000333                                     ;; 09:7b00 $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:7b02 $1f $1f GFX GFX
    dw   `00333222                                     ;; 09:7b04 $38 $3f GFX GFX
    dw   `03332212                                     ;; 09:7b06 $72 $7d GFX GFX
    dw   `03321112                                     ;; 09:7b08 $6e $71 GFX GFX
    dw   `33221122                                     ;; 09:7b0a $cc $f3 GFX GFX
    dw   `33211123                                     ;; 09:7b0c $dd $e3 GFX GFX
    dw   `33211123                                     ;; 09:7b0e $dd $e3 GFX GFX
    dw   `33300000                                     ;; 09:7b10 $e0 $e0 GFX GFX
    dw   `22333000                                     ;; 09:7b12 $38 $f8 GFX GFX
    dw   `22233300                                     ;; 09:7b14 $1c $fc GFX GFX
    dw   `23333330                                     ;; 09:7b16 $7e $fe GFX GFX
    dw   `33322330                                     ;; 09:7b18 $e6 $fe GFX GFX
    dw   `33220023                                     ;; 09:7b1a $c1 $f3 GFX GFX
    dw   `32200000                                     ;; 09:7b1c $80 $e0 GFX GFX
    dw   `33220000                                     ;; 09:7b1e $c0 $f0 GFX GFX
    dw   `33211122                                     ;; 09:7b20 $dc $e3 GFX GFX
    dw   `33221112                                     ;; 09:7b22 $ce $f1 GFX GFX
    dw   `33321111                                     ;; 09:7b24 $ef $f0 GFX GFX
    dw   `03322112                                     ;; 09:7b26 $66 $79 GFX GFX
    dw   `03332212                                     ;; 09:7b28 $72 $7d GFX GFX
    dw   `00333222                                     ;; 09:7b2a $38 $3f GFX GFX
    dw   `00033332                                     ;; 09:7b2c $1e $1f GFX GFX
    dw   `00000333                                     ;; 09:7b2e $07 $07 GFX GFX
    dw   `33200230                                     ;; 09:7b30 $c2 $e6 GFX GFX
    dw   `33322300                                     ;; 09:7b32 $e4 $fc GFX GFX
    dw   `22333300                                     ;; 09:7b34 $3c $fc GFX GFX
    dw   `23333000                                     ;; 09:7b36 $78 $f8 GFX GFX
    dw   `33322030                                     ;; 09:7b38 $e2 $fa GFX GFX
    dw   `23333300                                     ;; 09:7b3a $7c $fc GFX GFX
    dw   `22333000                                     ;; 09:7b3c $38 $f8 GFX GFX
    dw   `33300000                                     ;; 09:7b3e $e0 $e0 GFX GFX
    dw   `00000333                                     ;; 09:7b40 $07 $07 GFX GFX
    dw   `00033333                                     ;; 09:7b42 $1f $1f GFX GFX
    dw   `00333322                                     ;; 09:7b44 $3c $3f GFX GFX
    dw   `03332221                                     ;; 09:7b46 $71 $7e GFX GFX
    dw   `03322111                                     ;; 09:7b48 $67 $78 GFX GFX
    dw   `33221111                                     ;; 09:7b4a $cf $f0 GFX GFX
    dw   `33211112                                     ;; 09:7b4c $de $e1 GFX GFX
    dw   `32222122                                     ;; 09:7b4e $84 $fb GFX GFX
    dw   `33300000                                     ;; 09:7b50 $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:7b52 $f8 $f8 GFX GFX
    dw   `22233300                                     ;; 09:7b54 $1c $fc GFX GFX
    dw   `11223330                                     ;; 09:7b56 $ce $3e GFX GFX
    dw   `11112330                                     ;; 09:7b58 $f6 $0e GFX GFX
    dw   `11112233                                     ;; 09:7b5a $f3 $0f GFX GFX
    dw   `22211233                                     ;; 09:7b5c $1b $e7 GFX GFX
    dw   `33222233                                     ;; 09:7b5e $c3 $ff GFX GFX
    dw   `32232233                                     ;; 09:7b60 $93 $ff GFX GFX
    dw   `32333233                                     ;; 09:7b62 $bb $ff GFX GFX
    dw   `33333332                                     ;; 09:7b64 $fe $ff GFX GFX
    dw   `03323320                                     ;; 09:7b66 $6c $7e GFX GFX
    dw   `03323320                                     ;; 09:7b68 $6c $7e GFX GFX
    dw   `00300332                                     ;; 09:7b6a $26 $27 GFX GFX
    dw   `00030003                                     ;; 09:7b6c $11 $11 GFX GFX
    dw   `00000000                                     ;; 09:7b6e $00 $00 GFX GFX
    dw   `33332223                                     ;; 09:7b70 $f1 $ff GFX GFX
    dw   `32333223                                     ;; 09:7b72 $b9 $ff GFX GFX
    dw   `22233233                                     ;; 09:7b74 $1b $ff GFX GFX
    dw   `20223330                                     ;; 09:7b76 $0e $be GFX GFX
    dw   `00023330                                     ;; 09:7b78 $0e $1e GFX GFX
    dw   `00033300                                     ;; 09:7b7a $1c $1c GFX GFX
    dw   `00233000                                     ;; 09:7b7c $18 $38 GFX GFX
    dw   `00300000                                     ;; 09:7b7e $20 $20 GFX GFX
    dw   `00000000                                     ;; 09:7b80 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b82 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b84 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b86 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b88 $00 $00 GFX GFX
    dw   `00300333                                     ;; 09:7b8a $27 $27 GFX GFX
    dw   `03133222                                     ;; 09:7b8c $78 $5f GFX GFX
    dw   `03123333                                     ;; 09:7b8e $6f $5f GFX GFX
    dw   `00000000                                     ;; 09:7b90 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b92 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b94 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b96 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7b98 $00 $00 GFX GFX
    dw   `03330000                                     ;; 09:7b9a $70 $70 GFX GFX
    dw   `31130000                                     ;; 09:7b9c $f0 $90 GFX GFX
    dw   `21130000                                     ;; 09:7b9e $70 $90 GFX GFX
    dw   `33121331                                     ;; 09:7ba0 $ef $d6 GFX GFX
    dw   `33333333                                     ;; 09:7ba2 $ff $ff GFX GFX
    dw   `31111111                                     ;; 09:7ba4 $ff $80 GFX GFX
    dw   `33133313                                     ;; 09:7ba6 $ff $dd GFX GFX
    dw   `03133313                                     ;; 09:7ba8 $7f $5d GFX GFX
    dw   `03333333                                     ;; 09:7baa $7f $7f GFX GFX
    dw   `00333333                                     ;; 09:7bac $3f $3f GFX GFX
    dw   `03333333                                     ;; 09:7bae $7f $7f GFX GFX
    dw   `21333000                                     ;; 09:7bb0 $78 $b8 GFX GFX
    dw   `33321300                                     ;; 09:7bb2 $ec $f4 GFX GFX
    dw   `11131300                                     ;; 09:7bb4 $fc $14 GFX GFX
    dw   `33133130                                     ;; 09:7bb6 $fe $da GFX GFX
    dw   `33313130                                     ;; 09:7bb8 $fe $ea GFX GFX
    dw   `33313130                                     ;; 09:7bba $fe $ea GFX GFX
    dw   `33331300                                     ;; 09:7bbc $fc $f4 GFX GFX
    dw   `33331300                                     ;; 09:7bbe $fc $f4 GFX GFX
    dw   `00000000                                     ;; 09:7bc0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bc2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bc4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bc6 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7bc8 $03 $03 GFX GFX
    dw   `00000333                                     ;; 09:7bca $07 $07 GFX GFX
    dw   `00000322                                     ;; 09:7bcc $04 $07 GFX GFX
    dw   `00003321                                     ;; 09:7bce $0d $0e GFX GFX
    dw   `00000000                                     ;; 09:7bd0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bd2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bd4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bd6 $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7bd8 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:7bda $60 $e0 GFX GFX
    dw   `22330000                                     ;; 09:7bdc $30 $f0 GFX GFX
    dw   `12330000                                     ;; 09:7bde $b0 $70 GFX GFX
    dw   `00003321                                     ;; 09:7be0 $0d $0e GFX GFX
    dw   `00000333                                     ;; 09:7be2 $07 $07 GFX GFX
    dw   `00000003                                     ;; 09:7be4 $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7be6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7be8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bea $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bec $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bee $00 $00 GFX GFX
    dw   `13230000                                     ;; 09:7bf0 $d0 $70 GFX GFX
    dw   `22300000                                     ;; 09:7bf2 $20 $e0 GFX GFX
    dw   `33000000                                     ;; 09:7bf4 $c0 $c0 GFX GFX
    dw   `00000000                                     ;; 09:7bf6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bf8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bfa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bfc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7bfe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7c00 $00 $00 GFX GFX
    dw   `00033300                                     ;; 09:7c02 $1c $1c GFX GFX
    dw   `03332133                                     ;; 09:7c04 $77 $7b GFX GFX
    dw   `33221133                                     ;; 09:7c06 $cf $f3 GFX GFX
    dw   `33221332                                     ;; 09:7c08 $ce $f7 GFX GFX
    dw   `33221321                                     ;; 09:7c0a $cd $f6 GFX GFX
    dw   `03322311                                     ;; 09:7c0c $67 $7c GFX GFX
    dw   `32332111                                     ;; 09:7c0e $b7 $f8 GFX GFX
    dw   `00330000                                     ;; 09:7c10 $30 $30 GFX GFX
    dw   `33333000                                     ;; 09:7c12 $f8 $f8 GFX GFX
    dw   `32223300                                     ;; 09:7c14 $8c $fc GFX GFX
    dw   `33112330                                     ;; 09:7c16 $f6 $ce GFX GFX
    dw   `22312330                                     ;; 09:7c18 $36 $ee GFX GFX
    dw   `12222330                                     ;; 09:7c1a $86 $7e GFX GFX
    dw   `11323323                                     ;; 09:7c1c $ed $3f GFX GFX
    dw   `11332323                                     ;; 09:7c1e $f5 $3f GFX GFX
    dw   `32322211                                     ;; 09:7c20 $a3 $fc GFX GFX
    dw   `03221211                                     ;; 09:7c22 $4b $74 GFX GFX
    dw   `33211122                                     ;; 09:7c24 $dc $e3 GFX GFX
    dw   `32223211                                     ;; 09:7c26 $8b $fc GFX GFX
    dw   `33223222                                     ;; 09:7c28 $c8 $ff GFX GFX
    dw   `33332332                                     ;; 09:7c2a $f6 $ff GFX GFX
    dw   `03333233                                     ;; 09:7c2c $7b $7f GFX GFX
    dw   `00003333                                     ;; 09:7c2e $0f $0f GFX GFX
    dw   `11122333                                     ;; 09:7c30 $e7 $1f GFX GFX
    dw   `12312230                                     ;; 09:7c32 $b2 $6e GFX GFX
    dw   `13222330                                     ;; 09:7c34 $c6 $7e GFX GFX
    dw   `23322330                                     ;; 09:7c36 $66 $fe GFX GFX
    dw   `23333300                                     ;; 09:7c38 $7c $fc GFX GFX
    dw   `33033300                                     ;; 09:7c3a $dc $dc GFX GFX
    dw   `33000000                                     ;; 09:7c3c $c0 $c0 GFX GFX
    dw   `30000000                                     ;; 09:7c3e $80 $80 GFX GFX
    dw   `00000022                                     ;; 09:7c40 $00 $03 GFX GFX
    dw   `00002212                                     ;; 09:7c42 $02 $0d GFX GFX
    dw   `00021121                                     ;; 09:7c44 $0d $12 GFX GFX
    dw   `00211211                                     ;; 09:7c46 $1b $24 GFX GFX
    dw   `02211211                                     ;; 09:7c48 $1b $64 GFX GFX
    dw   `02111111                                     ;; 09:7c4a $3f $40 GFX GFX
    dw   `22111111                                     ;; 09:7c4c $3f $c0 GFX GFX
    dw   `22211111                                     ;; 09:7c4e $1f $e0 GFX GFX
    dw   `22000000                                     ;; 09:7c50 $00 $c0 GFX GFX
    dw   `11120000                                     ;; 09:7c52 $e0 $10 GFX GFX
    dw   `11112000                                     ;; 09:7c54 $f0 $08 GFX GFX
    dw   `12221200                                     ;; 09:7c56 $88 $74 GFX GFX
    dw   `11122220                                     ;; 09:7c58 $e0 $1e GFX GFX
    dw   `11111220                                     ;; 09:7c5a $f8 $06 GFX GFX
    dw   `11111122                                     ;; 09:7c5c $fc $03 GFX GFX
    dw   `11111122                                     ;; 09:7c5e $fc $03 GFX GFX
    dw   `21221111                                     ;; 09:7c60 $4f $b0 GFX GFX
    dw   `21111111                                     ;; 09:7c62 $7f $80 GFX GFX
    dw   `02111111                                     ;; 09:7c64 $3f $40 GFX GFX
    dw   `02221111                                     ;; 09:7c66 $0f $70 GFX GFX
    dw   `00212211                                     ;; 09:7c68 $13 $2c GFX GFX
    dw   `00021111                                     ;; 09:7c6a $0f $10 GFX GFX
    dw   `00002211                                     ;; 09:7c6c $03 $0c GFX GFX
    dw   `00000022                                     ;; 09:7c6e $00 $03 GFX GFX
    dw   `11112112                                     ;; 09:7c70 $f6 $09 GFX GFX
    dw   `11111212                                     ;; 09:7c72 $fa $05 GFX GFX
    dw   `11111210                                     ;; 09:7c74 $fa $04 GFX GFX
    dw   `11111220                                     ;; 09:7c76 $f8 $06 GFX GFX
    dw   `11211200                                     ;; 09:7c78 $d8 $24 GFX GFX
    dw   `12212000                                     ;; 09:7c7a $90 $68 GFX GFX
    dw   `22120000                                     ;; 09:7c7c $20 $d0 GFX GFX
    dw   `22000000                                     ;; 09:7c7e $00 $c0 GFX GFX
    dw   `00000022                                     ;; 09:7c80 $00 $03 GFX GFX
    dw   `00002211                                     ;; 09:7c82 $03 $0c GFX GFX
    dw   `00022112                                     ;; 09:7c84 $06 $19 GFX GFX
    dw   `00212112                                     ;; 09:7c86 $16 $29 GFX GFX
    dw   `02121111                                     ;; 09:7c88 $2f $50 GFX GFX
    dw   `02121111                                     ;; 09:7c8a $2f $50 GFX GFX
    dw   `21111111                                     ;; 09:7c8c $7f $80 GFX GFX
    dw   `21111111                                     ;; 09:7c8e $7f $80 GFX GFX
    dw   `22000000                                     ;; 09:7c90 $00 $c0 GFX GFX
    dw   `22220000                                     ;; 09:7c92 $00 $f0 GFX GFX
    dw   `21122000                                     ;; 09:7c94 $60 $98 GFX GFX
    dw   `11111200                                     ;; 09:7c96 $f8 $04 GFX GFX
    dw   `11111120                                     ;; 09:7c98 $fc $02 GFX GFX
    dw   `11122120                                     ;; 09:7c9a $e4 $1a GFX GFX
    dw   `11111212                                     ;; 09:7c9c $fa $05 GFX GFX
    dw   `11111122                                     ;; 09:7c9e $fc $03 GFX GFX
    dw   `22111111                                     ;; 09:7ca0 $3f $c0 GFX GFX
    dw   `22211111                                     ;; 09:7ca2 $1f $e0 GFX GFX
    dw   `01221111                                     ;; 09:7ca4 $4f $30 GFX GFX
    dw   `02111111                                     ;; 09:7ca6 $3f $40 GFX GFX
    dw   `00211112                                     ;; 09:7ca8 $1e $21 GFX GFX
    dw   `00022221                                     ;; 09:7caa $01 $1e GFX GFX
    dw   `00002111                                     ;; 09:7cac $07 $08 GFX GFX
    dw   `00000022                                     ;; 09:7cae $00 $03 GFX GFX
    dw   `11111112                                     ;; 09:7cb0 $fe $01 GFX GFX
    dw   `11112112                                     ;; 09:7cb2 $f6 $09 GFX GFX
    dw   `11112110                                     ;; 09:7cb4 $f6 $08 GFX GFX
    dw   `11122120                                     ;; 09:7cb6 $e4 $1a GFX GFX
    dw   `11121200                                     ;; 09:7cb8 $e8 $14 GFX GFX
    dw   `11222000                                     ;; 09:7cba $c0 $38 GFX GFX
    dw   `22220000                                     ;; 09:7cbc $00 $f0 GFX GFX
    dw   `22000000                                     ;; 09:7cbe $00 $c0 GFX GFX
    dw   `00000000                                     ;; 09:7cc0 $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7cc2 $03 $03 GFX GFX
    dw   `00003321                                     ;; 09:7cc4 $0d $0e GFX GFX
    dw   `00032111                                     ;; 09:7cc6 $17 $18 GFX GFX
    dw   `00321112                                     ;; 09:7cc8 $2e $31 GFX GFX
    dw   `00322332                                     ;; 09:7cca $26 $3f GFX GFX
    dw   `03123332                                     ;; 09:7ccc $6e $5f GFX GFX
    dw   `03133332                                     ;; 09:7cce $7e $5f GFX GFX
    dw   `00000000                                     ;; 09:7cd0 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7cd2 $80 $80 GFX GFX
    dw   `23300000                                     ;; 09:7cd4 $60 $e0 GFX GFX
    dw   `11230000                                     ;; 09:7cd6 $d0 $30 GFX GFX
    dw   `11123000                                     ;; 09:7cd8 $e8 $18 GFX GFX
    dw   `33223000                                     ;; 09:7cda $c8 $f8 GFX GFX
    dw   `33321300                                     ;; 09:7cdc $ec $f4 GFX GFX
    dw   `33331300                                     ;; 09:7cde $fc $f4 GFX GFX
    dw   `03133332                                     ;; 09:7ce0 $7e $5f GFX GFX
    dw   `03213321                                     ;; 09:7ce2 $5d $6e GFX GFX
    dw   `00321113                                     ;; 09:7ce4 $2f $31 GFX GFX
    dw   `00032133                                     ;; 09:7ce6 $17 $1b GFX GFX
    dw   `00003121                                     ;; 09:7ce8 $0d $0a GFX GFX
    dw   `00003131                                     ;; 09:7cea $0f $0a GFX GFX
    dw   `00002333                                     ;; 09:7cec $07 $0f GFX GFX
    dw   `00000000                                     ;; 09:7cee $00 $00 GFX GFX
    dw   `33331300                                     ;; 09:7cf0 $fc $f4 GFX GFX
    dw   `23312300                                     ;; 09:7cf2 $74 $ec GFX GFX
    dw   `11123000                                     ;; 09:7cf4 $e8 $18 GFX GFX
    dw   `31230000                                     ;; 09:7cf6 $d0 $b0 GFX GFX
    dw   `21300000                                     ;; 09:7cf8 $60 $a0 GFX GFX
    dw   `31300000                                     ;; 09:7cfa $e0 $a0 GFX GFX
    dw   `33200000                                     ;; 09:7cfc $c0 $e0 GFX GFX
    dw   `00000000                                     ;; 09:7cfe $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d00 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d02 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d04 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d06 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d08 $00 $00 GFX GFX
    dw   `33333333                                     ;; 09:7d0a $ff $ff GFX GFX
    dw   `22222222                                     ;; 09:7d0c $00 $ff GFX GFX
    dw   `11111111                                     ;; 09:7d0e $ff $00 GFX GFX
    dw   `00000000                                     ;; 09:7d10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d14 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d16 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d18 $00 $00 GFX GFX
    dw   `33333333                                     ;; 09:7d1a $ff $ff GFX GFX
    dw   `22222222                                     ;; 09:7d1c $00 $ff GFX GFX
    dw   `11111111                                     ;; 09:7d1e $ff $00 GFX GFX
    dw   `22222222                                     ;; 09:7d20 $00 $ff GFX GFX
    dw   `33333333                                     ;; 09:7d22 $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7d24 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d26 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d28 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d2a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d2c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d2e $00 $00 GFX GFX
    dw   `22222222                                     ;; 09:7d30 $00 $ff GFX GFX
    dw   `33333333                                     ;; 09:7d32 $ff $ff GFX GFX
    dw   `00000000                                     ;; 09:7d34 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d36 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d38 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d3a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d3c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d3e $00 $00 GFX GFX
    dw   `00000032                                     ;; 09:7d40 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d42 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d44 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d46 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d48 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d4a $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d4c $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d4e $02 $03 GFX GFX
    dw   `12300000                                     ;; 09:7d50 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d52 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d54 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d56 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d58 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d5a $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d5c $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d5e $a0 $60 GFX GFX
    dw   `00000032                                     ;; 09:7d60 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d62 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d64 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d66 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d68 $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d6a $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d6c $02 $03 GFX GFX
    dw   `00000032                                     ;; 09:7d6e $02 $03 GFX GFX
    dw   `12300000                                     ;; 09:7d70 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d72 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d74 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d76 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d78 $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d7a $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d7c $a0 $60 GFX GFX
    dw   `12300000                                     ;; 09:7d7e $a0 $60 GFX GFX
    dw   `00000000                                     ;; 09:7d80 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d82 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d84 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d86 $00 $00 GFX GFX
    dw   `00333300                                     ;; 09:7d88 $3c $3c GFX GFX
    dw   `03333333                                     ;; 09:7d8a $7f $7f GFX GFX
    dw   `33222333                                     ;; 09:7d8c $c7 $ff GFX GFX
    dw   `32122233                                     ;; 09:7d8e $a3 $df GFX GFX
    dw   `00000000                                     ;; 09:7d90 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d92 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d94 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d96 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7d98 $00 $00 GFX GFX
    dw   `00000300                                     ;; 09:7d9a $04 $04 GFX GFX
    dw   `33033000                                     ;; 09:7d9c $d8 $d8 GFX GFX
    dw   `33300003                                     ;; 09:7d9e $e1 $e1 GFX GFX
    dw   `32112333                                     ;; 09:7da0 $b7 $cf GFX GFX
    dw   `33222233                                     ;; 09:7da2 $c3 $ff GFX GFX
    dw   `03333333                                     ;; 09:7da4 $7f $7f GFX GFX
    dw   `00333000                                     ;; 09:7da6 $38 $38 GFX GFX
    dw   `00000000                                     ;; 09:7da8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7daa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7dac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7dae $00 $00 GFX GFX
    dw   `33333330                                     ;; 09:7db0 $fe $fe GFX GFX
    dw   `30333300                                     ;; 09:7db2 $bc $bc GFX GFX
    dw   `33033000                                     ;; 09:7db4 $d8 $d8 GFX GFX
    dw   `00300000                                     ;; 09:7db6 $20 $20 GFX GFX
    dw   `00000000                                     ;; 09:7db8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7dba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7dbc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7dbe $00 $00 GFX GFX
    dw   `00000033                                     ;; 09:7dc0 $03 $03 GFX GFX
    dw   `00000332                                     ;; 09:7dc2 $06 $07 GFX GFX
    dw   `00003321                                     ;; 09:7dc4 $0d $0e GFX GFX
    dw   `00003321                                     ;; 09:7dc6 $0d $0e GFX GFX
    dw   `00003322                                     ;; 09:7dc8 $0c $0f GFX GFX
    dw   `00000323                                     ;; 09:7dca $05 $07 GFX GFX
    dw   `00000333                                     ;; 09:7dcc $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:7dce $07 $07 GFX GFX
    dw   `33000000                                     ;; 09:7dd0 $c0 $c0 GFX GFX
    dw   `23300000                                     ;; 09:7dd2 $60 $e0 GFX GFX
    dw   `12330000                                     ;; 09:7dd4 $b0 $70 GFX GFX
    dw   `22330000                                     ;; 09:7dd6 $30 $f0 GFX GFX
    dw   `22330000                                     ;; 09:7dd8 $30 $f0 GFX GFX
    dw   `23330000                                     ;; 09:7dda $70 $f0 GFX GFX
    dw   `33300000                                     ;; 09:7ddc $e0 $e0 GFX GFX
    dw   `33300000                                     ;; 09:7dde $e0 $e0 GFX GFX
    dw   `00000333                                     ;; 09:7de0 $07 $07 GFX GFX
    dw   `00000303                                     ;; 09:7de2 $05 $05 GFX GFX
    dw   `00003033                                     ;; 09:7de4 $0b $0b GFX GFX
    dw   `00000333                                     ;; 09:7de6 $07 $07 GFX GFX
    dw   `00000333                                     ;; 09:7de8 $07 $07 GFX GFX
    dw   `00000033                                     ;; 09:7dea $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:7dec $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7dee $00 $00 GFX GFX
    dw   `33000000                                     ;; 09:7df0 $c0 $c0 GFX GFX
    dw   `33000000                                     ;; 09:7df2 $c0 $c0 GFX GFX
    dw   `30000000                                     ;; 09:7df4 $80 $80 GFX GFX
    dw   `03000000                                     ;; 09:7df6 $40 $40 GFX GFX
    dw   `03000000                                     ;; 09:7df8 $40 $40 GFX GFX
    dw   `00300000                                     ;; 09:7dfa $20 $20 GFX GFX
    dw   `00000000                                     ;; 09:7dfc $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7dfe $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7e00 $00 $00 GFX GFX
    dw   `00333000                                     ;; 09:7e02 $38 $38 GFX GFX
    dw   `03333000                                     ;; 09:7e04 $78 $78 GFX GFX
    dw   `03333300                                     ;; 09:7e06 $7c $7c GFX GFX
    dw   `00333333                                     ;; 09:7e08 $3f $3f GFX GFX
    dw   `00033333                                     ;; 09:7e0a $1f $1f GFX GFX
    dw   `00000033                                     ;; 09:7e0c $03 $03 GFX GFX
    dw   `00000003                                     ;; 09:7e0e $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7e10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e14 $00 $00 GFX GFX
    dw   `00000030                                     ;; 09:7e16 $02 $02 GFX GFX
    dw   `00003300                                     ;; 09:7e18 $0c $0c GFX GFX
    dw   `33333300                                     ;; 09:7e1a $fc $fc GFX GFX
    dw   `33333000                                     ;; 09:7e1c $f8 $f8 GFX GFX
    dw   `33330000                                     ;; 09:7e1e $f0 $f0 GFX GFX
    dw   `03333333                                     ;; 09:7e20 $7f $7f GFX GFX
    dw   `33333330                                     ;; 09:7e22 $fe $fe GFX GFX
    dw   `03333003                                     ;; 09:7e24 $79 $79 GFX GFX
    dw   `00000033                                     ;; 09:7e26 $03 $03 GFX GFX
    dw   `00003333                                     ;; 09:7e28 $0f $0f GFX GFX
    dw   `00033330                                     ;; 09:7e2a $1e $1e GFX GFX
    dw   `00033330                                     ;; 09:7e2c $1e $1e GFX GFX
    dw   `00033300                                     ;; 09:7e2e $1c $1c GFX GFX
    dw   `33330000                                     ;; 09:7e30 $f0 $f0 GFX GFX
    dw   `33333000                                     ;; 09:7e32 $f8 $f8 GFX GFX
    dw   `33333300                                     ;; 09:7e34 $fc $fc GFX GFX
    dw   `30330030                                     ;; 09:7e36 $b2 $b2 GFX GFX
    dw   `00030000                                     ;; 09:7e38 $10 $10 GFX GFX
    dw   `00333000                                     ;; 09:7e3a $38 $38 GFX GFX
    dw   `00333000                                     ;; 09:7e3c $38 $38 GFX GFX
    dw   `00030000                                     ;; 09:7e3e $10 $10 GFX GFX
    dw   `00003300                                     ;; 09:7e40 $0c $0c GFX GFX
    dw   `00033330                                     ;; 09:7e42 $1e $1e GFX GFX
    dw   `00033330                                     ;; 09:7e44 $1e $1e GFX GFX
    dw   `00033330                                     ;; 09:7e46 $1e $1e GFX GFX
    dw   `00003333                                     ;; 09:7e48 $0f $0f GFX GFX
    dw   `00000333                                     ;; 09:7e4a $07 $07 GFX GFX
    dw   `00000033                                     ;; 09:7e4c $03 $03 GFX GFX
    dw   `03330033                                     ;; 09:7e4e $73 $73 GFX GFX
    dw   `00000000                                     ;; 09:7e50 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e52 $00 $00 GFX GFX
    dw   `00030000                                     ;; 09:7e54 $10 $10 GFX GFX
    dw   `00333000                                     ;; 09:7e56 $38 $38 GFX GFX
    dw   `00333000                                     ;; 09:7e58 $38 $38 GFX GFX
    dw   `00330000                                     ;; 09:7e5a $30 $30 GFX GFX
    dw   `03300330                                     ;; 09:7e5c $66 $66 GFX GFX
    dw   `33303330                                     ;; 09:7e5e $ee $ee GFX GFX
    dw   `33333003                                     ;; 09:7e60 $f9 $f9 GFX GFX
    dw   `33333333                                     ;; 09:7e62 $ff $ff GFX GFX
    dw   `03333333                                     ;; 09:7e64 $7f $7f GFX GFX
    dw   `00000333                                     ;; 09:7e66 $07 $07 GFX GFX
    dw   `00000003                                     ;; 09:7e68 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7e6a $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7e6c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e6e $00 $00 GFX GFX
    dw   `33033300                                     ;; 09:7e70 $dc $dc GFX GFX
    dw   `33330000                                     ;; 09:7e72 $f0 $f0 GFX GFX
    dw   `33300000                                     ;; 09:7e74 $e0 $e0 GFX GFX
    dw   `33333000                                     ;; 09:7e76 $f8 $f8 GFX GFX
    dw   `33300000                                     ;; 09:7e78 $e0 $e0 GFX GFX
    dw   `30000000                                     ;; 09:7e7a $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7e7c $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7e7e $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7e80 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e82 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e84 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e86 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e88 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e8a $00 $00 GFX GFX
    dw   `00033000                                     ;; 09:7e8c $18 $18 GFX GFX
    dw   `03330000                                     ;; 09:7e8e $70 $70 GFX GFX
    dw   `00000000                                     ;; 09:7e90 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e92 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e94 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e96 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e98 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7e9a $00 $00 GFX GFX
    dw   `00033333                                     ;; 09:7e9c $1f $1f GFX GFX
    dw   `00322230                                     ;; 09:7e9e $22 $3e GFX GFX
    dw   `33333333                                     ;; 09:7ea0 $ff $ff GFX GFX
    dw   `03330000                                     ;; 09:7ea2 $70 $70 GFX GFX
    dw   `00033000                                     ;; 09:7ea4 $18 $18 GFX GFX
    dw   `00000000                                     ;; 09:7ea6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ea8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7eaa $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7eac $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7eae $00 $00 GFX GFX
    dw   `33333300                                     ;; 09:7eb0 $fc $fc GFX GFX
    dw   `00322230                                     ;; 09:7eb2 $22 $3e GFX GFX
    dw   `00033333                                     ;; 09:7eb4 $1f $1f GFX GFX
    dw   `00000000                                     ;; 09:7eb6 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7eb8 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7eba $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ebc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ebe $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7ec0 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7ec2 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:7ec4 $03 $03 GFX GFX
    dw   `00000333                                     ;; 09:7ec6 $07 $07 GFX GFX
    dw   `00000303                                     ;; 09:7ec8 $05 $05 GFX GFX
    dw   `00000003                                     ;; 09:7eca $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7ecc $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7ece $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7ed0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ed2 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7ed4 $80 $80 GFX GFX
    dw   `33000000                                     ;; 09:7ed6 $c0 $c0 GFX GFX
    dw   `03000000                                     ;; 09:7ed8 $40 $40 GFX GFX
    dw   `00000000                                     ;; 09:7eda $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7edc $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ede $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7ee0 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7ee2 $01 $01 GFX GFX
    dw   `00000033                                     ;; 09:7ee4 $03 $03 GFX GFX
    dw   `00000323                                     ;; 09:7ee6 $05 $07 GFX GFX
    dw   `00000323                                     ;; 09:7ee8 $05 $07 GFX GFX
    dw   `00000323                                     ;; 09:7eea $05 $07 GFX GFX
    dw   `00000330                                     ;; 09:7eec $06 $06 GFX GFX
    dw   `00000300                                     ;; 09:7eee $04 $04 GFX GFX
    dw   `00000000                                     ;; 09:7ef0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7ef2 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7ef4 $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:7ef6 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7ef8 $40 $c0 GFX GFX
    dw   `23000000                                     ;; 09:7efa $40 $c0 GFX GFX
    dw   `33000000                                     ;; 09:7efc $c0 $c0 GFX GFX
    dw   `03000000                                     ;; 09:7efe $40 $40 GFX GFX
    dw   `00000000                                     ;; 09:7f00 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f02 $00 $00 GFX GFX
    dw   `00000003                                     ;; 09:7f04 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7f06 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7f08 $01 $01 GFX GFX
    dw   `00000032                                     ;; 09:7f0a $02 $03 GFX GFX
    dw   `00000031                                     ;; 09:7f0c $03 $02 GFX GFX
    dw   `00000321                                     ;; 09:7f0e $05 $06 GFX GFX
    dw   `00000000                                     ;; 09:7f10 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f12 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f14 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f16 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f18 $00 $00 GFX GFX
    dw   `30000000                                     ;; 09:7f1a $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7f1c $80 $80 GFX GFX
    dw   `23000000                                     ;; 09:7f1e $40 $c0 GFX GFX
    dw   `00333211                                     ;; 09:7f20 $3b $3c GFX GFX
    dw   `00000321                                     ;; 09:7f22 $05 $06 GFX GFX
    dw   `00000031                                     ;; 09:7f24 $03 $02 GFX GFX
    dw   `00000032                                     ;; 09:7f26 $02 $03 GFX GFX
    dw   `00000003                                     ;; 09:7f28 $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7f2a $01 $01 GFX GFX
    dw   `00000003                                     ;; 09:7f2c $01 $01 GFX GFX
    dw   `00000000                                     ;; 09:7f2e $00 $00 GFX GFX
    dw   `12333000                                     ;; 09:7f30 $b8 $78 GFX GFX
    dw   `23000000                                     ;; 09:7f32 $40 $c0 GFX GFX
    dw   `30000000                                     ;; 09:7f34 $80 $80 GFX GFX
    dw   `30000000                                     ;; 09:7f36 $80 $80 GFX GFX
    dw   `00000000                                     ;; 09:7f38 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f3a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f3c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f3e $00 $00 GFX GFX
    dw   `32000000                                     ;; 09:7f40 $80 $c0 GFX GFX
    dw   `23220022                                     ;; 09:7f42 $40 $f3 GFX GFX
    dw   `02332211                                     ;; 09:7f44 $33 $7c GFX GFX
    dw   `02322321                                     ;; 09:7f46 $25 $7e GFX GFX
    dw   `00221133                                     ;; 09:7f48 $0f $33 GFX GFX
    dw   `00231112                                     ;; 09:7f4a $1e $31 GFX GFX
    dw   `02123111                                     ;; 09:7f4c $2f $58 GFX GFX
    dw   `02113211                                     ;; 09:7f4e $3b $4c GFX GFX
    dw   `00000023                                     ;; 09:7f50 $01 $03 GFX GFX
    dw   `22002232                                     ;; 09:7f52 $02 $cf GFX GFX
    dw   `11223320                                     ;; 09:7f54 $cc $3e GFX GFX
    dw   `12322320                                     ;; 09:7f56 $a4 $7e GFX GFX
    dw   `33212200                                     ;; 09:7f58 $d0 $ec GFX GFX
    dw   `21123200                                     ;; 09:7f5a $68 $9c GFX GFX
    dw   `11132120                                     ;; 09:7f5c $f4 $1a GFX GFX
    dw   `11231120                                     ;; 09:7f5e $dc $32 GFX GFX
    dw   `02113211                                     ;; 09:7f60 $3b $4c GFX GFX
    dw   `02123111                                     ;; 09:7f62 $2f $58 GFX GFX
    dw   `00232112                                     ;; 09:7f64 $16 $39 GFX GFX
    dw   `00221233                                     ;; 09:7f66 $0b $37 GFX GFX
    dw   `02322321                                     ;; 09:7f68 $25 $7e GFX GFX
    dw   `02332211                                     ;; 09:7f6a $33 $7c GFX GFX
    dw   `23220022                                     ;; 09:7f6c $40 $f3 GFX GFX
    dw   `32000000                                     ;; 09:7f6e $80 $c0 GFX GFX
    dw   `11231120                                     ;; 09:7f70 $dc $32 GFX GFX
    dw   `11132120                                     ;; 09:7f72 $f4 $1a GFX GFX
    dw   `21123200                                     ;; 09:7f74 $68 $9c GFX GFX
    dw   `33212200                                     ;; 09:7f76 $d0 $ec GFX GFX
    dw   `12322320                                     ;; 09:7f78 $a4 $7e GFX GFX
    dw   `11223320                                     ;; 09:7f7a $cc $3e GFX GFX
    dw   `22002232                                     ;; 09:7f7c $02 $cf GFX GFX
    dw   `00000023                                     ;; 09:7f7e $01 $03 GFX GFX
    dw   `00000222                                     ;; 09:7f80 $00 $07 GFX GFX
    dw   `00022333                                     ;; 09:7f82 $07 $1f GFX GFX
    dw   `00233322                                     ;; 09:7f84 $1c $3f GFX GFX
    dw   `02332200                                     ;; 09:7f86 $30 $7c GFX GFX
    dw   `02332000                                     ;; 09:7f88 $30 $78 GFX GFX
    dw   `23320000                                     ;; 09:7f8a $60 $f0 GFX GFX
    dw   `23320000                                     ;; 09:7f8c $60 $f0 GFX GFX
    dw   `23320000                                     ;; 09:7f8e $60 $f0 GFX GFX
    dw   `22000000                                     ;; 09:7f90 $00 $c0 GFX GFX
    dw   `22220000                                     ;; 09:7f92 $00 $f0 GFX GFX
    dw   `00002000                                     ;; 09:7f94 $00 $08 GFX GFX
    dw   `00000200                                     ;; 09:7f96 $00 $04 GFX GFX
    dw   `00000000                                     ;; 09:7f98 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f9a $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f9c $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7f9e $00 $00 GFX GFX
    dw   `23332000                                     ;; 09:7fa0 $70 $f8 GFX GFX
    dw   `23333222                                     ;; 09:7fa2 $78 $ff GFX GFX
    dw   `02333333                                     ;; 09:7fa4 $3f $7f GFX GFX
    dw   `02333333                                     ;; 09:7fa6 $3f $7f GFX GFX
    dw   `00233333                                     ;; 09:7fa8 $1f $3f GFX GFX
    dw   `00023333                                     ;; 09:7faa $0f $1f GFX GFX
    dw   `00002233                                     ;; 09:7fac $03 $0f GFX GFX
    dw   `00000022                                     ;; 09:7fae $00 $03 GFX GFX
    dw   `22200000                                     ;; 09:7fb0 $00 $e0 GFX GFX
    dw   `33320000                                     ;; 09:7fb2 $e0 $f0 GFX GFX
    dw   `33332000                                     ;; 09:7fb4 $f0 $f8 GFX GFX
    dw   `33332000                                     ;; 09:7fb6 $f0 $f8 GFX GFX
    dw   `33332000                                     ;; 09:7fb8 $f0 $f8 GFX GFX
    dw   `33320000                                     ;; 09:7fba $e0 $f0 GFX GFX
    dw   `33200000                                     ;; 09:7fbc $c0 $e0 GFX GFX
    dw   `22000000                                     ;; 09:7fbe $00 $c0 GFX GFX
    dw   `00000022                                     ;; 09:7fc0 $00 $03 GFX GFX
    dw   `00000233                                     ;; 09:7fc2 $03 $07 GFX GFX
    dw   `00002333                                     ;; 09:7fc4 $07 $0f GFX GFX
    dw   `00023333                                     ;; 09:7fc6 $0f $1f GFX GFX
    dw   `00023333                                     ;; 09:7fc8 $0f $1f GFX GFX
    dw   `00023333                                     ;; 09:7fca $0f $1f GFX GFX
    dw   `00002333                                     ;; 09:7fcc $07 $0f GFX GFX
    dw   `00000222                                     ;; 09:7fce $00 $07 GFX GFX
    dw   `22000000                                     ;; 09:7fd0 $00 $c0 GFX GFX
    dw   `33220000                                     ;; 09:7fd2 $c0 $f0 GFX GFX
    dw   `33332000                                     ;; 09:7fd4 $f0 $f8 GFX GFX
    dw   `33333200                                     ;; 09:7fd6 $f8 $fc GFX GFX
    dw   `33333320                                     ;; 09:7fd8 $fc $fe GFX GFX
    dw   `33333320                                     ;; 09:7fda $fc $fe GFX GFX
    dw   `32233332                                     ;; 09:7fdc $9e $ff GFX GFX
    dw   `20023332                                     ;; 09:7fde $0e $9f GFX GFX
    dw   `00000000                                     ;; 09:7fe0 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7fe2 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7fe4 $00 $00 GFX GFX
    dw   `00000000                                     ;; 09:7fe6 $00 $00 GFX GFX
    dw   `00200000                                     ;; 09:7fe8 $00 $20 GFX GFX
    dw   `00020000                                     ;; 09:7fea $00 $10 GFX GFX
    dw   `00002222                                     ;; 09:7fec $00 $0f GFX GFX
    dw   `00000022                                     ;; 09:7fee $00 $03 GFX GFX
    dw   `00002332                                     ;; 09:7ff0 $06 $0f GFX GFX
    dw   `00002332                                     ;; 09:7ff2 $06 $0f GFX GFX
    dw   `00002332                                     ;; 09:7ff4 $06 $0f GFX GFX
    dw   `00023320                                     ;; 09:7ff6 $0c $1e GFX GFX
    dw   `00223320                                     ;; 09:7ff8 $0c $3e GFX GFX
    dw   `22333200                                     ;; 09:7ffa $38 $fc GFX GFX
    dw   `33322000                                     ;; 09:7ffc $e0 $f8 GFX GFX
    dw   `22200000                                     ;; 09:7ffe $00 $e0 GFX GFX
