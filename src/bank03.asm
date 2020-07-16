;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

;@jumptable
data_003_4000:
    dw   code_003_402c                                 ;; 03:4000 $2c $40
    dw   code_003_4af5                                 ;; 03:4002 $f5 $4a
    dw   code_003_42bd                                 ;; 03:4004 $bd $42
    dw   code_003_435f                                 ;; 03:4006 $5f $43
    dw   code_003_44ed                                 ;; 03:4008 $ed $44
    dw   code_003_444a                                 ;; 03:400a $4a $44
    dw   code_003_455d                                 ;; 03:400c $5d $45
    dw   code_003_4641                                 ;; 03:400e $41 $46
    dw   code_003_4561                                 ;; 03:4010 $61 $45
    dw   code_003_48d7                                 ;; 03:4012 $d7 $48
    dw   code_003_4b70                                 ;; 03:4014 $70 $4b
    dw   code_003_4aed                                 ;; 03:4016 $ed $4a
    dw   code_003_4af1                                 ;; 03:4018 $f1 $4a
    dw   code_003_4af9                                 ;; 03:401a $f9 $4a
    dw   code_003_4b4f                                 ;; 03:401c $4f $4b
    dw   code_003_43c5                                 ;; 03:401e $c5 $43
    dw   code_003_4a9f                                 ;; 03:4020 $9f $4a
    dw   code_003_4ac1                                 ;; 03:4022 $c1 $4a
    dw   code_003_4b62                                 ;; 03:4024 $62 $4b
    dw   code_003_4c30                                 ;; 03:4026 $30 $4c
    dw   code_003_4c38                                 ;; 03:4028 $38 $4c
    dw   code_003_4a81                                 ;; 03:402a $81 $4a

code_003_402c:
    ld   HL, wC4E0                                     ;; 03:402c $21 $e0 $c4
    ld   B, $08                                        ;; 03:402f $06 $08
    ld   C, $18                                        ;; 03:4031 $0e $18
    push BC                                            ;; 03:4033 $c5
    jr   .code_403a                                    ;; 03:4034 $18 $04
.code_4036:
    push BC                                            ;; 03:4036 $c5
    ld   B, $00                                        ;; 03:4037 $06 $00
    add  HL, BC                                        ;; 03:4039 $09
.code_403a:
    push HL                                            ;; 03:403a $e5
    ld   A, [HL]                                       ;; 03:403b $7e
    cp   A, $ff                                        ;; 03:403c $fe $ff
    call NZ, code_003_404a                             ;; 03:403e $c4 $4a $40
    pop  HL                                            ;; 03:4041 $e1
    pop  BC                                            ;; 03:4042 $c1
    dec  B                                             ;; 03:4043 $05
    jr   NZ, .code_4036                                ;; 03:4044 $20 $f0
    call code_000_2bd1                                 ;; 03:4046 $cd $d1 $2b
    ret                                                ;; 03:4049 $c9

code_003_404a:
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
    ld   HL, $0008                                     ;; 03:4054 $21 $08 $00
    add  HL, DE                                        ;; 03:4057 $19
    ld   A, [HL]                                       ;; 03:4058 $7e
    cp   A, $00                                        ;; 03:4059 $fe $00
    call NZ, code_003_4107                             ;; 03:405b $c4 $07 $41
    ld   HL, $0004                                     ;; 03:405e $21 $04 $00
    add  HL, DE                                        ;; 03:4061 $19
    ld   A, [HL+]                                      ;; 03:4062 $2a
    ld   C, [HL]                                       ;; 03:4063 $4e
    cp   A, $00                                        ;; 03:4064 $fe $00
    jr   NZ, code_003_40c7                             ;; 03:4066 $20 $5f
    ld   A, [DE]                                       ;; 03:4068 $1a
    ld   C, A                                          ;; 03:4069 $4f
    push BC                                            ;; 03:406a $c5
    push DE                                            ;; 03:406b $d5
    call code_000_29ba                                 ;; 03:406c $cd $ba $29
    pop  DE                                            ;; 03:406f $d1
    pop  BC                                            ;; 03:4070 $c1
    ld   HL, $000c                                     ;; 03:4071 $21 $0c $00
    add  HL, DE                                        ;; 03:4074 $19
    ld   E, [HL]                                       ;; 03:4075 $5e
    inc  HL                                            ;; 03:4076 $23
    ld   D, [HL]                                       ;; 03:4077 $56
    ld   A, E                                          ;; 03:4078 $7b
    or   A, D                                          ;; 03:4079 $b2
    jr   Z, code_003_40fb                              ;; 03:407a $28 $7f
    push DE                                            ;; 03:407c $d5
    call code_000_0cd3                                 ;; 03:407d $cd $d3 $0c
    pop  DE                                            ;; 03:4080 $d1
    cp   A, $00                                        ;; 03:4081 $fe $00
    jp   NZ, code_003_40ff                             ;; 03:4083 $c2 $ff $40
    pop  HL                                            ;; 03:4086 $e1
    push HL                                            ;; 03:4087 $e5
    call code_003_41fc                                 ;; 03:4088 $cd $fc $41
    pop  HL                                            ;; 03:408b $e1
    push HL                                            ;; 03:408c $e5
    ld   BC, $0012                                     ;; 03:408d $01 $12 $00
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
    ld   DE, data_003_563e                             ;; 03:409e $11 $3e $56
    add  HL, DE                                        ;; 03:40a1 $19
    push HL                                            ;; 03:40a2 $e5
    call getRandomByte                                 ;; 03:40a3 $cd $1e $2b
    pop  HL                                            ;; 03:40a6 $e1
    ld   C, A                                          ;; 03:40a7 $4f
    and  A, $0f                                        ;; 03:40a8 $e6 $0f
    cp   A, C                                          ;; 03:40aa $b9
    jr   NZ, .code_40b1                                ;; 03:40ab $20 $04
    ld   DE, $0010                                     ;; 03:40ad $11 $10 $00
    add  HL, DE                                        ;; 03:40b0 $19
.code_40b1:
    ld   E, A                                          ;; 03:40b1 $5f
    ld   D, $00                                        ;; 03:40b2 $16 $00
    add  HL, DE                                        ;; 03:40b4 $19
    ld   A, [HL]                                       ;; 03:40b5 $7e
    pop  DE                                            ;; 03:40b6 $d1
    push DE                                            ;; 03:40b7 $d5
    call code_003_418b                                 ;; 03:40b8 $cd $8b $41
    jr   Z, code_003_4103                              ;; 03:40bb $28 $46

code_003_40bd:
    pop  HL                                            ;; 03:40bd $e1
    push HL                                            ;; 03:40be $e5
    ld   DE, $0004                                     ;; 03:40bf $11 $04 $00
    add  HL, DE                                        ;; 03:40c2 $19
    ld   [HL+], A                                      ;; 03:40c3 $22
    ld   C, $00                                        ;; 03:40c4 $0e $00
    ld   [HL], C                                       ;; 03:40c6 $71

code_003_40c7:
    pop  DE                                            ;; 03:40c7 $d1
    push DE                                            ;; 03:40c8 $d5
    push AF                                            ;; 03:40c9 $f5
    push BC                                            ;; 03:40ca $c5
    call code_003_4247                                 ;; 03:40cb $cd $47 $42
    pop  BC                                            ;; 03:40ce $c1
    ld   B, A                                          ;; 03:40cf $47
    pop  AF                                            ;; 03:40d0 $f1
    pop  DE                                            ;; 03:40d1 $d1
    push DE                                            ;; 03:40d2 $d5
    ld   HL, data_003_4c55                             ;; 03:40d3 $21 $55 $4c
    call callJumptable                                 ;; 03:40d6 $cd $70 $2b
    pop  DE                                            ;; 03:40d9 $d1
    push DE                                            ;; 03:40da $d5
    push AF                                            ;; 03:40db $f5
    ld   HL, $0008                                     ;; 03:40dc $21 $08 $00
    add  HL, DE                                        ;; 03:40df $19
    ld   A, [DE]                                       ;; 03:40e0 $1a
    ld   C, A                                          ;; 03:40e1 $4f
    ld   A, [HL]                                       ;; 03:40e2 $7e
    cp   A, $00                                        ;; 03:40e3 $fe $00
    jr   Z, .code_40e9                                 ;; 03:40e5 $28 $02
    cp   A, $10                                        ;; 03:40e7 $fe $10
.code_40e9:
    pop  AF                                            ;; 03:40e9 $f1
    pop  DE                                            ;; 03:40ea $d1
    ld   HL, $0005                                     ;; 03:40eb $21 $05 $00
    add  HL, DE                                        ;; 03:40ee $19
    ld   [HL-], A                                      ;; 03:40ef $32
    cp   A, $00                                        ;; 03:40f0 $fe $00
    ret  NZ                                            ;; 03:40f2 $c0
    ld   [HL], A                                       ;; 03:40f3 $77
    ld   DE, hFFFD                                     ;; 03:40f4 $11 $fd $ff
    add  HL, DE                                        ;; 03:40f7 $19
    ld   [HL], $01                                     ;; 03:40f8 $36 $01
    ret                                                ;; 03:40fa $c9

code_003_40fb:
    ld   A, $01                                        ;; 03:40fb $3e $01
    jr   code_003_40bd                                 ;; 03:40fd $18 $be

code_003_40ff:
    ld   A, $1b                                        ;; 03:40ff $3e $1b
    jr   code_003_40bd                                 ;; 03:4101 $18 $ba

code_003_4103:
    ld   A, $00                                        ;; 03:4103 $3e $00
    jr   code_003_40bd                                 ;; 03:4105 $18 $b6

code_003_4107:
    cp   A, $2c                                        ;; 03:4107 $fe $2c
    jr   C, .code_411f                                 ;; 03:4109 $38 $14
    jr   Z, .code_4153                                 ;; 03:410b $28 $46
    sub  A, B                                          ;; 03:410d $90
    cp   A, $2c                                        ;; 03:410e $fe $2c
    jr   C, .code_4153                                 ;; 03:4110 $38 $41
    push HL                                            ;; 03:4112 $e5
    ld   HL, $0004                                     ;; 03:4113 $21 $04 $00
    add  HL, DE                                        ;; 03:4116 $19
    ld   A, [HL]                                       ;; 03:4117 $7e
    cp   A, $00                                        ;; 03:4118 $fe $00
    jr   NZ, .code_411e                                ;; 03:411a $20 $02
    ld   [HL], $05                                     ;; 03:411c $36 $05
.code_411e:
    pop  HL                                            ;; 03:411e $e1
.code_411f:
    ld   A, [HL]                                       ;; 03:411f $7e
    sub  A, B                                          ;; 03:4120 $90
    jr   C, .code_4125                                 ;; 03:4121 $38 $02
    ld   [HL], A                                       ;; 03:4123 $77
    ret  NZ                                            ;; 03:4124 $c0
.code_4125:
    ld   [HL], $00                                     ;; 03:4125 $36 $00
    ld   A, [DE]                                       ;; 03:4127 $1a
    ld   C, A                                          ;; 03:4128 $4f
    push DE                                            ;; 03:4129 $d5
    push BC                                            ;; 03:412a $c5
    call code_000_0c6d                                 ;; 03:412b $cd $6d $0c
    pop  BC                                            ;; 03:412e $c1
    pop  DE                                            ;; 03:412f $d1
    push DE                                            ;; 03:4130 $d5
    and  A, $0f                                        ;; 03:4131 $e6 $0f
    ld   B, A                                          ;; 03:4133 $47
    ld   HL, $0012                                     ;; 03:4134 $21 $12 $00
    add  HL, DE                                        ;; 03:4137 $19
    ld   A, [HL+]                                      ;; 03:4138 $2a
    ld   H, [HL]                                       ;; 03:4139 $66
    ld   L, A                                          ;; 03:413a $6f
    ld   A, [HL]                                       ;; 03:413b $7e
    and  A, $f0                                        ;; 03:413c $e6 $f0
    or   A, B                                          ;; 03:413e $b0
    call code_000_0c86                                 ;; 03:413f $cd $86 $0c
    pop  DE                                            ;; 03:4142 $d1
    push DE                                            ;; 03:4143 $d5
    ld   HL, $000e                                     ;; 03:4144 $21 $0e $00
    add  HL, DE                                        ;; 03:4147 $19
    ld   A, [HL+]                                      ;; 03:4148 $2a
    ld   H, [HL]                                       ;; 03:4149 $66
    ld   L, A                                          ;; 03:414a $6f
    bit  $07, H                                        ;; 03:414b $cb $7c
    ld   A, [DE]                                       ;; 03:414d $1a
    call NZ, code_003_48d7                             ;; 03:414e $c4 $d7 $48
    pop  DE                                            ;; 03:4151 $d1
    ret                                                ;; 03:4152 $c9
.code_4153:
    ld   HL, $0009                                     ;; 03:4153 $21 $09 $00
    add  HL, DE                                        ;; 03:4156 $19
    ld   A, [HL]                                       ;; 03:4157 $7e
    cp   A, $00                                        ;; 03:4158 $fe $00
    jr   Z, .code_4163                                 ;; 03:415a $28 $07
    ld   [HL], $00                                     ;; 03:415c $36 $00
    ld   HL, $0002                                     ;; 03:415e $21 $02 $00
    add  HL, DE                                        ;; 03:4161 $19
    ld   [HL], A                                       ;; 03:4162 $77
.code_4163:
    ld   A, [DE]                                       ;; 03:4163 $1a
    ld   C, A                                          ;; 03:4164 $4f
    push DE                                            ;; 03:4165 $d5
    push BC                                            ;; 03:4166 $c5
    call code_000_0c99                                 ;; 03:4167 $cd $99 $0c
    call code_000_29e4                                 ;; 03:416a $cd $e4 $29
    pop  BC                                            ;; 03:416d $c1
    push BC                                            ;; 03:416e $c5
    call code_000_0ca6                                 ;; 03:416f $cd $a6 $0c
    pop  BC                                            ;; 03:4172 $c1
    pop  DE                                            ;; 03:4173 $d1
    push DE                                            ;; 03:4174 $d5
    ld   HL, $0008                                     ;; 03:4175 $21 $08 $00
    add  HL, DE                                        ;; 03:4178 $19
    ld   A, [HL]                                       ;; 03:4179 $7e
    sub  A, B                                          ;; 03:417a $90
    ld   [HL], A                                       ;; 03:417b $77
    ld   HL, $000e                                     ;; 03:417c $21 $0e $00
    add  HL, DE                                        ;; 03:417f $19
    ld   A, [HL+]                                      ;; 03:4180 $2a
    ld   H, [HL]                                       ;; 03:4181 $66
    ld   L, A                                          ;; 03:4182 $6f
    bit  $07, H                                        ;; 03:4183 $cb $7c
    ld   A, [DE]                                       ;; 03:4185 $1a
    call NZ, code_003_48d7                             ;; 03:4186 $c4 $d7 $48
    pop  DE                                            ;; 03:4189 $d1
    ret                                                ;; 03:418a $c9

code_003_418b:
    ld   C, A                                          ;; 03:418b $4f
    push BC                                            ;; 03:418c $c5
    push DE                                            ;; 03:418d $d5
    ld   A, [DE]                                       ;; 03:418e $1a
    ld   C, A                                          ;; 03:418f $4f
    call code_000_0c6d                                 ;; 03:4190 $cd $6d $0c
    and  A, $f0                                        ;; 03:4193 $e6 $f0
    cp   A, $d0                                        ;; 03:4195 $fe $d0
    jr   Z, .code_41f1                                 ;; 03:4197 $28 $58
    ld   A, [wCF60]                                    ;; 03:4199 $fa $60 $cf
    cp   A, $00                                        ;; 03:419c $fe $00
    jr   Z, .code_41c5                                 ;; 03:419e $28 $25
    call code_000_300a                                 ;; 03:41a0 $cd $0a $30
    jr   NZ, .code_41b2                                ;; 03:41a3 $20 $0d
    ld   A, [wCF60]                                    ;; 03:41a5 $fa $60 $cf
    call code_000_2fca                                 ;; 03:41a8 $cd $ca $2f
    ld   A, $00                                        ;; 03:41ab $3e $00
    ld   [wCF60], A                                    ;; 03:41ad $ea $60 $cf
    jr   .code_41c5                                    ;; 03:41b0 $18 $13
.code_41b2:
    pop  DE                                            ;; 03:41b2 $d1
    push DE                                            ;; 03:41b3 $d5
    ld   HL, $000a                                     ;; 03:41b4 $21 $0a $00
    add  HL, DE                                        ;; 03:41b7 $19
    bit  $07, [HL]                                     ;; 03:41b8 $cb $7e
    jr   Z, .code_41c5                                 ;; 03:41ba $28 $09
    pop  DE                                            ;; 03:41bc $d1
    pop  BC                                            ;; 03:41bd $c1
    push BC                                            ;; 03:41be $c5
    push DE                                            ;; 03:41bf $d5
    ld   A, C                                          ;; 03:41c0 $79
    cp   A, $04                                        ;; 03:41c1 $fe $04
    jr   NC, .code_41f7                                ;; 03:41c3 $30 $32
.code_41c5:
    ld   A, [wCF61]                                    ;; 03:41c5 $fa $61 $cf
    cp   A, $00                                        ;; 03:41c8 $fe $00
    jr   Z, .code_41f1                                 ;; 03:41ca $28 $25
    call code_000_300a                                 ;; 03:41cc $cd $0a $30
    jr   NZ, .code_41de                                ;; 03:41cf $20 $0d
    ld   A, [wCF61]                                    ;; 03:41d1 $fa $61 $cf
    call code_000_2fca                                 ;; 03:41d4 $cd $ca $2f
    ld   A, $00                                        ;; 03:41d7 $3e $00
    ld   [wCF61], A                                    ;; 03:41d9 $ea $61 $cf
    jr   .code_41f1                                    ;; 03:41dc $18 $13
.code_41de:
    pop  DE                                            ;; 03:41de $d1
    push DE                                            ;; 03:41df $d5
    ld   HL, $000a                                     ;; 03:41e0 $21 $0a $00
    add  HL, DE                                        ;; 03:41e3 $19
    bit  $06, [HL]                                     ;; 03:41e4 $cb $76
    jr   Z, .code_41f1                                 ;; 03:41e6 $28 $09
    pop  DE                                            ;; 03:41e8 $d1
    pop  BC                                            ;; 03:41e9 $c1
    push BC                                            ;; 03:41ea $c5
    push DE                                            ;; 03:41eb $d5
    ld   A, C                                          ;; 03:41ec $79
    cp   A, $02                                        ;; 03:41ed $fe $02
    jr   Z, .code_41f7                                 ;; 03:41ef $28 $06
.code_41f1:
    xor  A, A                                          ;; 03:41f1 $af
    inc  A                                             ;; 03:41f2 $3c
    pop  DE                                            ;; 03:41f3 $d1
    pop  BC                                            ;; 03:41f4 $c1
    ld   A, C                                          ;; 03:41f5 $79
    ret                                                ;; 03:41f6 $c9
.code_41f7:
    xor  A, A                                          ;; 03:41f7 $af
    pop  DE                                            ;; 03:41f8 $d1
    pop  BC                                            ;; 03:41f9 $c1
    ld   A, C                                          ;; 03:41fa $79
    ret                                                ;; 03:41fb $c9

code_003_41fc:
    push DE                                            ;; 03:41fc $d5
    ld   C, [HL]                                       ;; 03:41fd $4e
    push BC                                            ;; 03:41fe $c5
    call GetObjectX                                    ;; 03:41ff $cd $2d $0c
    pop  BC                                            ;; 03:4202 $c1
    ld   B, A                                          ;; 03:4203 $47
    push BC                                            ;; 03:4204 $c5
    call code_000_0293                                 ;; 03:4205 $cd $93 $02
    pop  BC                                            ;; 03:4208 $c1
    sub  A, B                                          ;; 03:4209 $90
    jr   Z, .code_423d                                 ;; 03:420a $28 $31
    jr   NC, .code_4210                                ;; 03:420c $30 $02
    cpl                                                ;; 03:420e $2f
    inc  A                                             ;; 03:420f $3c
.code_4210:
    cp   A, $08                                        ;; 03:4210 $fe $08
    jr   C, .code_423d                                 ;; 03:4212 $38 $29
    jr   Z, .code_423d                                 ;; 03:4214 $28 $27
    call GetObjectY                                    ;; 03:4216 $cd $3e $0c
    ld   B, A                                          ;; 03:4219 $47
    push BC                                            ;; 03:421a $c5
    call code_000_0299                                 ;; 03:421b $cd $99 $02
    pop  BC                                            ;; 03:421e $c1
    sub  A, B                                          ;; 03:421f $90
    jr   Z, .code_4242                                 ;; 03:4220 $28 $20
    jr   NC, .code_4226                                ;; 03:4222 $30 $02
    cpl                                                ;; 03:4224 $2f
    inc  A                                             ;; 03:4225 $3c
.code_4226:
    cp   A, $08                                        ;; 03:4226 $fe $08
    jr   C, .code_4242                                 ;; 03:4228 $38 $18
    jr   Z, .code_4242                                 ;; 03:422a $28 $16
    call code_000_3ded                                 ;; 03:422c $cd $ed $3d
    pop  DE                                            ;; 03:422f $d1
    call code_000_2bab                                 ;; 03:4230 $cd $ab $2b
    jr   C, .code_4239                                 ;; 03:4233 $38 $04
    ld   DE, $0010                                     ;; 03:4235 $11 $10 $00
    ret                                                ;; 03:4238 $c9
.code_4239:
    ld   DE, $0011                                     ;; 03:4239 $11 $11 $00
    ret                                                ;; 03:423c $c9
.code_423d:
    pop  HL                                            ;; 03:423d $e1
    ld   DE, $0012                                     ;; 03:423e $11 $12 $00
    ret                                                ;; 03:4241 $c9
.code_4242:
    pop  HL                                            ;; 03:4242 $e1
    ld   DE, $0013                                     ;; 03:4243 $11 $13 $00
    ret                                                ;; 03:4246 $c9

code_003_4247:
    call code_003_425b                                 ;; 03:4247 $cd $5b $42
    ld   HL, $0012                                     ;; 03:424a $21 $12 $00
    add  HL, DE                                        ;; 03:424d $19
    ld   E, [HL]                                       ;; 03:424e $5e
    inc  HL                                            ;; 03:424f $23
    ld   D, [HL]                                       ;; 03:4250 $56
    ld   HL, $000a                                     ;; 03:4251 $21 $0a $00
    add  HL, DE                                        ;; 03:4254 $19
    ld   E, A                                          ;; 03:4255 $5f
    ld   D, $00                                        ;; 03:4256 $16 $00
    add  HL, DE                                        ;; 03:4258 $19
    ld   A, [HL]                                       ;; 03:4259 $7e
    ret                                                ;; 03:425a $c9

code_003_425b:
    ld   C, A                                          ;; 03:425b $4f
    ld   HL, $0003                                     ;; 03:425c $21 $03 $00
    add  HL, DE                                        ;; 03:425f $19
    ld   A, [HL]                                       ;; 03:4260 $7e
    cp   A, $ff                                        ;; 03:4261 $fe $ff
    jr   Z, .code_4268                                 ;; 03:4263 $28 $03
    ld   [HL], $ff                                     ;; 03:4265 $36 $ff
    ret                                                ;; 03:4267 $c9
.code_4268:
    ld   A, C                                          ;; 03:4268 $79
    and  A, $e0                                        ;; 03:4269 $e6 $e0
    cp   A, $20                                        ;; 03:426b $fe $20
    jr   Z, .code_4288                                 ;; 03:426d $28 $19
    cp   A, $40                                        ;; 03:426f $fe $40
    jr   Z, .code_4288                                 ;; 03:4271 $28 $15
    cp   A, $60                                        ;; 03:4273 $fe $60
    jr   Z, .code_4295                                 ;; 03:4275 $28 $1e
    cp   A, $80                                        ;; 03:4277 $fe $80
    jr   Z, .code_4288                                 ;; 03:4279 $28 $0d
    cp   A, $a0                                        ;; 03:427b $fe $a0
    jr   Z, .code_4288                                 ;; 03:427d $28 $09
    cp   A, $c0                                        ;; 03:427f $fe $c0
    jr   Z, .code_4288                                 ;; 03:4281 $28 $05
    ld   A, C                                          ;; 03:4283 $79
    cp   A, $02                                        ;; 03:4284 $fe $02
    jr   Z, .code_4298                                 ;; 03:4286 $28 $10
.code_4288:
    ld   A, [DE]                                       ;; 03:4288 $1a
    ld   C, A                                          ;; 03:4289 $4f
    push DE                                            ;; 03:428a $d5
    call code_000_0c0c                                 ;; 03:428b $cd $0c $0c
    pop  DE                                            ;; 03:428e $d1
    ld   A, $00                                        ;; 03:428f $3e $00
    ret  Z                                             ;; 03:4291 $c8
    ld   A, $01                                        ;; 03:4292 $3e $01
    ret                                                ;; 03:4294 $c9
.code_4295:
    ld   A, $02                                        ;; 03:4295 $3e $02
    ret                                                ;; 03:4297 $c9
.code_4298:
    ld   A, $04                                        ;; 03:4298 $3e $04
    ret                                                ;; 03:429a $c9

code_003_429b:
    ld   B, $08                                        ;; 03:429b $06 $08
    ld   HL, wC4E0                                     ;; 03:429d $21 $e0 $c4
    ld   DE, $0018                                     ;; 03:42a0 $11 $18 $00
.code_42a3:
    cp   A, [HL]                                       ;; 03:42a3 $be
    ret  Z                                             ;; 03:42a4 $c8
    add  HL, DE                                        ;; 03:42a5 $19
    dec  B                                             ;; 03:42a6 $05
    jr   NZ, .code_42a3                                ;; 03:42a7 $20 $fa
    xor  A, A                                          ;; 03:42a9 $af
    inc  A                                             ;; 03:42aa $3c
    ret                                                ;; 03:42ab $c9

code_003_42ac:
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
    ld   DE, data_003_59fe                             ;; 03:42b7 $11 $fe $59
    add  HL, DE                                        ;; 03:42ba $19
    pop  DE                                            ;; 03:42bb $d1
    ret                                                ;; 03:42bc $c9

code_003_42bd:
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
    ld   DE, unknown_003_5f5a                          ;; 03:42c9 $11 $5a $5f
    add  HL, DE                                        ;; 03:42cc $19
    pop  DE                                            ;; 03:42cd $d1
    push HL                                            ;; 03:42ce $e5
    ld   A, [HL]                                       ;; 03:42cf $7e
    ld   BC, $0008                                     ;; 03:42d0 $01 $08 $00
    add  HL, BC                                        ;; 03:42d3 $09
    ld   C, A                                          ;; 03:42d4 $4f
    ld   A, [HL+]                                      ;; 03:42d5 $2a
    ld   H, [HL]                                       ;; 03:42d6 $66
    ld   L, A                                          ;; 03:42d7 $6f
    ld   A, $02                                        ;; 03:42d8 $3e $02
    call code_000_0a74                                 ;; 03:42da $cd $74 $0a
    cp   A, $ff                                        ;; 03:42dd $fe $ff
    jr   Z, .code_435b                                 ;; 03:42df $28 $7a
    push BC                                            ;; 03:42e1 $c5
    ld   A, $ff                                        ;; 03:42e2 $3e $ff
    call code_003_429b                                 ;; 03:42e4 $cd $9b $42
    pop  BC                                            ;; 03:42e7 $c1
    jr   NZ, .code_435b                                ;; 03:42e8 $20 $71
    ld   [HL], C                                       ;; 03:42ea $71
    ld   D, H                                          ;; 03:42eb $54
    ld   E, L                                          ;; 03:42ec $5d
    pop  BC                                            ;; 03:42ed $c1
    push BC                                            ;; 03:42ee $c5
    ld   HL, $0001                                     ;; 03:42ef $21 $01 $00
    add  HL, BC                                        ;; 03:42f2 $09
    ld   A, [HL]                                       ;; 03:42f3 $7e
    call code_003_42ac                                 ;; 03:42f4 $cd $ac $42
    ld   B, H                                          ;; 03:42f7 $44
    ld   C, L                                          ;; 03:42f8 $4d
    ld   HL, $0010                                     ;; 03:42f9 $21 $10 $00
    add  HL, DE                                        ;; 03:42fc $19
    ld   [HL], C                                       ;; 03:42fd $71
    inc  HL                                            ;; 03:42fe $23
    ld   [HL], B                                       ;; 03:42ff $70
    ld   HL, $0000                                     ;; 03:4300 $21 $00 $00
    add  HL, BC                                        ;; 03:4303 $09
    ld   A, [HL]                                       ;; 03:4304 $7e
    ld   HL, $0002                                     ;; 03:4305 $21 $02 $00
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
    ld   HL, $0001                                     ;; 03:431d $21 $01 $00
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
    jr   Z, .code_4336                                 ;; 03:432f $28 $05
    call MultiplyHL_by_A                               ;; 03:4331 $cd $7b $2b
    ld   A, L                                          ;; 03:4334 $7d
    ld   C, H                                          ;; 03:4335 $4c
.code_4336:
    ld   B, $00                                        ;; 03:4336 $06 $00
    add  A, A                                          ;; 03:4338 $87
    rl   C                                             ;; 03:4339 $cb $11
    rl   B                                             ;; 03:433b $cb $10
    add  A, A                                          ;; 03:433d $87
    rl   C                                             ;; 03:433e $cb $11
    rl   B                                             ;; 03:4340 $cb $10
    pop  DE                                            ;; 03:4342 $d1
    ld   HL, $000c                                     ;; 03:4343 $21 $0c $00
    add  HL, DE                                        ;; 03:4346 $19
    ld   [HL], C                                       ;; 03:4347 $71
    inc  HL                                            ;; 03:4348 $23
    ld   [HL], B                                       ;; 03:4349 $70
    pop  BC                                            ;; 03:434a $c1
    ld   HL, $0012                                     ;; 03:434b $21 $12 $00
    add  HL, DE                                        ;; 03:434e $19
    ld   [HL], C                                       ;; 03:434f $71
    inc  HL                                            ;; 03:4350 $23
    ld   [HL], B                                       ;; 03:4351 $70
    ld   HL, $0004                                     ;; 03:4352 $21 $04 $00
    add  HL, DE                                        ;; 03:4355 $19
    ld   [HL], $00                                     ;; 03:4356 $36 $00
    ld   A, [DE]                                       ;; 03:4358 $1a
    ld   C, A                                          ;; 03:4359 $4f
    ret                                                ;; 03:435a $c9
.code_435b:
    pop  DE                                            ;; 03:435b $d1
    ld   C, $ff                                        ;; 03:435c $0e $ff
    ret                                                ;; 03:435e $c9

code_003_435f:
    ld   A, C                                          ;; 03:435f $79
    cp   A, $ff                                        ;; 03:4360 $fe $ff
    ret  Z                                             ;; 03:4362 $c8
    call code_003_429b                                 ;; 03:4363 $cd $9b $42
    ret  NZ                                            ;; 03:4366 $c0
    ld   C, [HL]                                       ;; 03:4367 $4e
    ld   [HL], $ff                                     ;; 03:4368 $36 $ff
    push HL                                            ;; 03:436a $e5
    ld   A, [wC0A1]                                    ;; 03:436b $fa $a1 $c0
    bit  $01, A                                        ;; 03:436e $cb $4f
    jr   NZ, .code_43a8                                ;; 03:4370 $20 $36
    push BC                                            ;; 03:4372 $c5
    call code_000_0c6d                                 ;; 03:4373 $cd $6d $0c
    pop  BC                                            ;; 03:4376 $c1
    ld   B, A                                          ;; 03:4377 $47
    and  A, $f0                                        ;; 03:4378 $e6 $f0
    cp   A, $90                                        ;; 03:437a $fe $90
    jr   Z, .code_4382                                 ;; 03:437c $28 $04
    cp   A, $10                                        ;; 03:437e $fe $10
    jr   NZ, .code_43a8                                ;; 03:4380 $20 $26
.code_4382:
    push BC                                            ;; 03:4382 $c5
    call code_000_0b6f                                 ;; 03:4383 $cd $6f $0b
    pop  BC                                            ;; 03:4386 $c1
    pop  DE                                            ;; 03:4387 $d1
    push DE                                            ;; 03:4388 $d5
    ld   HL, $0012                                     ;; 03:4389 $21 $12 $00
    add  HL, DE                                        ;; 03:438c $19
    ld   E, [HL]                                       ;; 03:438d $5e
    inc  HL                                            ;; 03:438e $23
    ld   D, [HL]                                       ;; 03:438f $56
    ld   HL, $0014                                     ;; 03:4390 $21 $14 $00
    add  HL, DE                                        ;; 03:4393 $19
    ld   A, [HL+]                                      ;; 03:4394 $2a
    ld   H, [HL]                                       ;; 03:4395 $66
    ld   L, A                                          ;; 03:4396 $6f
    push HL                                            ;; 03:4397 $e5
    push BC                                            ;; 03:4398 $c5
    call code_000_0c99                                 ;; 03:4399 $cd $99 $0c
    pop  BC                                            ;; 03:439c $c1
    pop  HL                                            ;; 03:439d $e1
    push BC                                            ;; 03:439e $c5
    and  A, $0f                                        ;; 03:439f $e6 $0f
    or   A, $80                                        ;; 03:43a1 $f6 $80
    ld   C, B                                          ;; 03:43a3 $48
    call code_000_31ad                                 ;; 03:43a4 $cd $ad $31
    pop  BC                                            ;; 03:43a7 $c1
.code_43a8:
    call code_000_0ae3                                 ;; 03:43a8 $cd $e3 $0a
    pop  HL                                            ;; 03:43ab $e1
    inc  HL                                            ;; 03:43ac $23
    ld   A, $00                                        ;; 03:43ad $3e $00
    ld   B, $17                                        ;; 03:43af $06 $17
    call fillMemory                                    ;; 03:43b1 $cd $5d $2b
    ret                                                ;; 03:43b4 $c9
    db   $21, $e0, $c4, $06, $0d, $11, $18, $00        ;; 03:43b5 ????????
    db   $3e, $ff, $77, $19, $05, $20, $fb, $c9        ;; 03:43bd ????????

code_003_43c5:
    ld   C, A                                          ;; 03:43c5 $4f
    push BC                                            ;; 03:43c6 $c5
    ld   A, [wC4E0]                                    ;; 03:43c7 $fa $e0 $c4
    ld   C, A                                          ;; 03:43ca $4f
    call code_000_05ef                                 ;; 03:43cb $cd $ef $05
    push DE                                            ;; 03:43ce $d5
    ld   A, [wC4E0]                                    ;; 03:43cf $fa $e0 $c4
    ld   C, A                                          ;; 03:43d2 $4f
    call code_003_435f                                 ;; 03:43d3 $cd $5f $43
    pop  DE                                            ;; 03:43d6 $d1
    pop  BC                                            ;; 03:43d7 $c1
    call code_003_42bd                                 ;; 03:43d8 $cd $bd $42
    ret                                                ;; 03:43db $c9

code_003_43dc:
    ld   L, A                                          ;; 03:43dc $6f
    ld   H, $00                                        ;; 03:43dd $26 $00
    ld   E, L                                          ;; 03:43df $5d
    ld   D, H                                          ;; 03:43e0 $54
    add  HL, DE                                        ;; 03:43e1 $19
    add  HL, DE                                        ;; 03:43e2 $19
    add  HL, HL                                        ;; 03:43e3 $29
    add  HL, HL                                        ;; 03:43e4 $29
    add  HL, HL                                        ;; 03:43e5 $29
    ld   DE, unknown_003_5f5a                          ;; 03:43e6 $11 $5a $5f
    add  HL, DE                                        ;; 03:43e9 $19
    push HL                                            ;; 03:43ea $e5
    ld   DE, $0001                                     ;; 03:43eb $11 $01 $00
    add  HL, DE                                        ;; 03:43ee $19
    ld   A, [HL]                                       ;; 03:43ef $7e
    call code_003_42ac                                 ;; 03:43f0 $cd $ac $42
    ld   DE, $0009                                     ;; 03:43f3 $11 $09 $00
    add  HL, DE                                        ;; 03:43f6 $19
    ld   A, [HL]                                       ;; 03:43f7 $7e
    call code_000_2bdd                                 ;; 03:43f8 $cd $dd $2b
    pop  HL                                            ;; 03:43fb $e1
    ld   DE, $0002                                     ;; 03:43fc $11 $02 $00
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
.code_441a:
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
    res  $07, H                                        ;; 03:4435 $cb $bc
    set  $06, H                                        ;; 03:4437 $cb $f4
    call code_000_2df5                                 ;; 03:4439 $cd $f5 $2d
    pop  DE                                            ;; 03:443c $d1
    ld   HL, $0010                                     ;; 03:443d $21 $10 $00
    add  HL, DE                                        ;; 03:4440 $19
    ld   E, L                                          ;; 03:4441 $5d
    ld   D, H                                          ;; 03:4442 $54
    pop  BC                                            ;; 03:4443 $c1
    pop  HL                                            ;; 03:4444 $e1
    pop  AF                                            ;; 03:4445 $f1
    dec  A                                             ;; 03:4446 $3d
    jr   NZ, .code_441a                                ;; 03:4447 $20 $d1
    ret                                                ;; 03:4449 $c9

code_003_444a:
    push HL                                            ;; 03:444a $e5
    ld   [wC5AE], A                                    ;; 03:444b $ea $ae $c5
    ld   L, A                                          ;; 03:444e $6f
    ld   H, $00                                        ;; 03:444f $26 $00
    ld   E, L                                          ;; 03:4451 $5d
    ld   D, H                                          ;; 03:4452 $54
    add  HL, HL                                        ;; 03:4453 $29
    add  HL, DE                                        ;; 03:4454 $19
    add  HL, HL                                        ;; 03:4455 $29
    ld   DE, data_003_7142                             ;; 03:4456 $11 $42 $71
    add  HL, DE                                        ;; 03:4459 $19
    ld   B, $03                                        ;; 03:445a $06 $03
.code_445c:
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
    ld   HL, wC5A8                                     ;; 03:4476 $21 $a8 $c5
    add  HL, DE                                        ;; 03:4479 $19
    ld   [HL], A                                       ;; 03:447a $77
    push BC                                            ;; 03:447b $c5
    call code_003_43dc                                 ;; 03:447c $cd $dc $43
    pop  BC                                            ;; 03:447f $c1
    pop  HL                                            ;; 03:4480 $e1
    inc  HL                                            ;; 03:4481 $23
    inc  HL                                            ;; 03:4482 $23
    dec  B                                             ;; 03:4483 $05
    jr   NZ, .code_445c                                ;; 03:4484 $20 $d6
    pop  HL                                            ;; 03:4486 $e1
    ret                                                ;; 03:4487 $c9

code_003_4488:
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
    ld   DE, unknown_003_5f5a                          ;; 03:4496 $11 $5a $5f
    add  HL, DE                                        ;; 03:4499 $19
    ld   A, [HL]                                       ;; 03:449a $7e
    pop  DE                                            ;; 03:449b $d1
    push DE                                            ;; 03:449c $d5
    call code_000_18c0                                 ;; 03:449d $cd $c0 $18
    pop  DE                                            ;; 03:44a0 $d1
    pop  BC                                            ;; 03:44a1 $c1
    pop  HL                                            ;; 03:44a2 $e1
    ret  Z                                             ;; 03:44a3 $c8
    push HL                                            ;; 03:44a4 $e5
    push BC                                            ;; 03:44a5 $c5
    push DE                                            ;; 03:44a6 $d5
    ld   C, $04                                        ;; 03:44a7 $0e $04
    call code_000_05ef                                 ;; 03:44a9 $cd $ef $05
    pop  HL                                            ;; 03:44ac $e1
    push HL                                            ;; 03:44ad $e5
    ld   A, D                                          ;; 03:44ae $7a
    sub  A, H                                          ;; 03:44af $94
    jr   NC, .code_44b4                                ;; 03:44b0 $30 $02
    cpl                                                ;; 03:44b2 $2f
    inc  A                                             ;; 03:44b3 $3c
.code_44b4:
    cp   A, $04                                        ;; 03:44b4 $fe $04
    jr   NC, .code_44c7                                ;; 03:44b6 $30 $0f
    ld   A, E                                          ;; 03:44b8 $7b
    sub  A, L                                          ;; 03:44b9 $95
    jr   NC, .code_44be                                ;; 03:44ba $30 $02
    cpl                                                ;; 03:44bc $2f
    inc  A                                             ;; 03:44bd $3c
.code_44be:
    cp   A, $04                                        ;; 03:44be $fe $04
    jr   NC, .code_44c7                                ;; 03:44c0 $30 $05
    xor  A, A                                          ;; 03:44c2 $af
    pop  DE                                            ;; 03:44c3 $d1
    pop  BC                                            ;; 03:44c4 $c1
    pop  HL                                            ;; 03:44c5 $e1
    ret                                                ;; 03:44c6 $c9
.code_44c7:
    xor  A, A                                          ;; 03:44c7 $af
    dec  A                                             ;; 03:44c8 $3d
    pop  DE                                            ;; 03:44c9 $d1
    pop  BC                                            ;; 03:44ca $c1
    pop  HL                                            ;; 03:44cb $e1
    ret                                                ;; 03:44cc $c9

code_003_44cd:
    push HL                                            ;; 03:44cd $e5
    push BC                                            ;; 03:44ce $c5
.code_44cf:
    call getRandomByte                                 ;; 03:44cf $cd $1e $2b
    and  A, $0f                                        ;; 03:44d2 $e6 $0f
    cp   A, $0f                                        ;; 03:44d4 $fe $0f
    jr   NC, .code_44cf                                ;; 03:44d6 $30 $f7
    add  A, $02                                        ;; 03:44d8 $c6 $02
    ld   E, A                                          ;; 03:44da $5f
    push DE                                            ;; 03:44db $d5
.code_44dc:
    call getRandomByte                                 ;; 03:44dc $cd $1e $2b
    and  A, $0f                                        ;; 03:44df $e6 $0f
    cp   A, $0b                                        ;; 03:44e1 $fe $0b
    jr   NC, .code_44dc                                ;; 03:44e3 $30 $f7
    add  A, $02                                        ;; 03:44e5 $c6 $02
    pop  DE                                            ;; 03:44e7 $d1
    ld   D, A                                          ;; 03:44e8 $57
    pop  BC                                            ;; 03:44e9 $c1
    pop  HL                                            ;; 03:44ea $e1
    inc  A                                             ;; 03:44eb $3c
    ret                                                ;; 03:44ec $c9

code_003_44ed:
    push HL                                            ;; 03:44ed $e5
    push AF                                            ;; 03:44ee $f5
    add  A, A                                          ;; 03:44ef $87
    ld   C, A                                          ;; 03:44f0 $4f
    ld   B, $00                                        ;; 03:44f1 $06 $00
    ld   A, [wC5AE]                                    ;; 03:44f3 $fa $ae $c5
    ld   L, A                                          ;; 03:44f6 $6f
    ld   H, $00                                        ;; 03:44f7 $26 $00
    ld   E, L                                          ;; 03:44f9 $5d
    ld   D, H                                          ;; 03:44fa $54
    add  HL, HL                                        ;; 03:44fb $29
    add  HL, DE                                        ;; 03:44fc $19
    add  HL, HL                                        ;; 03:44fd $29
    ld   DE, data_003_7142                             ;; 03:44fe $11 $42 $71
    add  HL, DE                                        ;; 03:4501 $19
    add  HL, BC                                        ;; 03:4502 $09
    ld   A, [HL+]                                      ;; 03:4503 $2a
    ld   H, [HL]                                       ;; 03:4504 $66
    ld   L, A                                          ;; 03:4505 $6f
    ld   A, [HL+]                                      ;; 03:4506 $2a
    ld   B, A                                          ;; 03:4507 $47
    ld   A, [HL+]                                      ;; 03:4508 $2a
    sub  A, B                                          ;; 03:4509 $90
    jr   Z, .code_4520                                 ;; 03:450a $28 $14
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
.code_4520:
    ld   DE, $0004                                     ;; 03:4520 $11 $04 $00
    add  HL, DE                                        ;; 03:4523 $19
    pop  AF                                            ;; 03:4524 $f1
    ld   E, A                                          ;; 03:4525 $5f
    ld   A, B                                          ;; 03:4526 $78
    or   A, A                                          ;; 03:4527 $b7
    jr   Z, .code_4549                                 ;; 03:4528 $28 $1f
    push HL                                            ;; 03:452a $e5
    ld   D, $00                                        ;; 03:452b $16 $00
    ld   HL, wC5A8                                     ;; 03:452d $21 $a8 $c5
    add  HL, DE                                        ;; 03:4530 $19
    ld   C, [HL]                                       ;; 03:4531 $4e
    pop  HL                                            ;; 03:4532 $e1
.code_4533:
    ld   E, [HL]                                       ;; 03:4533 $5e
    inc  HL                                            ;; 03:4534 $23
    ld   D, [HL]                                       ;; 03:4535 $56
    inc  HL                                            ;; 03:4536 $23
    ld   A, $80                                        ;; 03:4537 $3e $80
    cp   A, D                                          ;; 03:4539 $ba
    jr   Z, .code_454b                                 ;; 03:453a $28 $0f
    cp   A, E                                          ;; 03:453c $bb
    jr   Z, .code_454b                                 ;; 03:453d $28 $0c
    push BC                                            ;; 03:453f $c5
    push HL                                            ;; 03:4540 $e5
    call code_003_42bd                                 ;; 03:4541 $cd $bd $42
    pop  HL                                            ;; 03:4544 $e1
    pop  BC                                            ;; 03:4545 $c1
    dec  B                                             ;; 03:4546 $05
    jr   NZ, .code_4533                                ;; 03:4547 $20 $ea
.code_4549:
    pop  HL                                            ;; 03:4549 $e1
    ret                                                ;; 03:454a $c9
.code_454b:
    call code_003_44cd                                 ;; 03:454b $cd $cd $44
    call code_003_4488                                 ;; 03:454e $cd $88 $44
    jr   Z, .code_454b                                 ;; 03:4551 $28 $f8
    push BC                                            ;; 03:4553 $c5
    call code_003_42bd                                 ;; 03:4554 $cd $bd $42
    pop  BC                                            ;; 03:4557 $c1
    dec  B                                             ;; 03:4558 $05
    jr   NZ, .code_454b                                ;; 03:4559 $20 $f0
    pop  HL                                            ;; 03:455b $e1
    ret                                                ;; 03:455c $c9

code_003_455d:
    ld   HL, $0000                                     ;; 03:455d $21 $00 $00
    ret                                                ;; 03:4560 $c9

code_003_4561:
    cp   A, $c9                                        ;; 03:4561 $fe $c9
    jr   Z, .code_4574                                 ;; 03:4563 $28 $0f
    ld   L, A                                          ;; 03:4565 $6f
    and  A, $f0                                        ;; 03:4566 $e6 $f0
    cp   A, $50                                        ;; 03:4568 $fe $50
    jr   Z, .code_4571                                 ;; 03:456a $28 $05
    ld   A, L                                          ;; 03:456c $7d
    call code_003_4641                                 ;; 03:456d $cd $41 $46
    ret                                                ;; 03:4570 $c9
.code_4571:
    ld   A, $00                                        ;; 03:4571 $3e $00
    ret                                                ;; 03:4573 $c9
.code_4574:
    push BC                                            ;; 03:4574 $c5
    ld   A, C                                          ;; 03:4575 $79
    call code_003_429b                                 ;; 03:4576 $cd $9b $42
    ld   DE, $0012                                     ;; 03:4579 $11 $12 $00
    add  HL, DE                                        ;; 03:457c $19
    ld   A, [HL+]                                      ;; 03:457d $2a
    ld   H, [HL]                                       ;; 03:457e $66
    ld   L, A                                          ;; 03:457f $6f
    ld   DE, $0014                                     ;; 03:4580 $11 $14 $00
    add  HL, DE                                        ;; 03:4583 $19
    ld   A, [HL+]                                      ;; 03:4584 $2a
    ld   H, [HL]                                       ;; 03:4585 $66
    ld   L, A                                          ;; 03:4586 $6f
    pop  BC                                            ;; 03:4587 $c1
    push HL                                            ;; 03:4588 $e5
    push BC                                            ;; 03:4589 $c5
    call code_000_039a                                 ;; 03:458a $cd $9a $03
    pop  BC                                            ;; 03:458d $c1
    ld   B, A                                          ;; 03:458e $47
    push BC                                            ;; 03:458f $c5
    push DE                                            ;; 03:4590 $d5
    call code_000_02ab                                 ;; 03:4591 $cd $ab $02
    ld   L, A                                          ;; 03:4594 $6f
    pop  DE                                            ;; 03:4595 $d1
    pop  BC                                            ;; 03:4596 $c1
    ld   A, D                                          ;; 03:4597 $7a
    and  A, $0f                                        ;; 03:4598 $e6 $0f
    jr   Z, .code_45bf                                 ;; 03:459a $28 $23
    bit  $07, L                                        ;; 03:459c $cb $7d
    jr   Z, .code_45a8                                 ;; 03:459e $28 $08
    bit  $02, L                                        ;; 03:45a0 $cb $55
    jr   NZ, .code_45b2                                ;; 03:45a2 $20 $0e
    bit  $03, L                                        ;; 03:45a4 $cb $5d
    jr   NZ, .code_45b8                                ;; 03:45a6 $20 $10
.code_45a8:
    bit  $02, B                                        ;; 03:45a8 $cb $50
    jr   NZ, .code_45f9                                ;; 03:45aa $20 $4d
    bit  $03, B                                        ;; 03:45ac $cb $58
    jr   NZ, .code_45fe                                ;; 03:45ae $20 $4e
    jr   .code_45bc                                    ;; 03:45b0 $18 $0a
.code_45b2:
    bit  $02, B                                        ;; 03:45b2 $cb $50
    jr   NZ, .code_45f9                                ;; 03:45b4 $20 $43
    jr   .code_45bc                                    ;; 03:45b6 $18 $04
.code_45b8:
    bit  $03, B                                        ;; 03:45b8 $cb $58
    jr   NZ, .code_45fe                                ;; 03:45ba $20 $42
.code_45bc:
    call code_003_4637                                 ;; 03:45bc $cd $37 $46
.code_45bf:
    ld   D, A                                          ;; 03:45bf $57
    ld   A, E                                          ;; 03:45c0 $7b
    and  A, $07                                        ;; 03:45c1 $e6 $07
    jr   Z, .code_45e8                                 ;; 03:45c3 $28 $23
    bit  $07, L                                        ;; 03:45c5 $cb $7d
    jr   Z, .code_45d1                                 ;; 03:45c7 $28 $08
    bit  $00, L                                        ;; 03:45c9 $cb $45
    jr   NZ, .code_45db                                ;; 03:45cb $20 $0e
    bit  $01, L                                        ;; 03:45cd $cb $4d
    jr   NZ, .code_45e1                                ;; 03:45cf $20 $10
.code_45d1:
    bit  $00, B                                        ;; 03:45d1 $cb $40
    jr   NZ, .code_460a                                ;; 03:45d3 $20 $35
    bit  $01, B                                        ;; 03:45d5 $cb $48
    jr   NZ, .code_4605                                ;; 03:45d7 $20 $2c
    jr   .code_45e5                                    ;; 03:45d9 $18 $0a
.code_45db:
    bit  $00, B                                        ;; 03:45db $cb $40
    jr   NZ, .code_460a                                ;; 03:45dd $20 $2b
    jr   .code_45e5                                    ;; 03:45df $18 $04
.code_45e1:
    bit  $01, B                                        ;; 03:45e1 $cb $48
    jr   NZ, .code_4605                                ;; 03:45e3 $20 $20
.code_45e5:
    call code_003_4637                                 ;; 03:45e5 $cd $37 $46
.code_45e8:
    ld   E, A                                          ;; 03:45e8 $5f
    ld   A, C                                          ;; 03:45e9 $79
    ld   [wC5B0], A                                    ;; 03:45ea $ea $b0 $c5
    ld   A, B                                          ;; 03:45ed $78
    or   A, $00                                        ;; 03:45ee $f6 $00
    ld   C, $81                                        ;; 03:45f0 $0e $81
    pop  HL                                            ;; 03:45f2 $e1
    call code_000_31ad                                 ;; 03:45f3 $cd $ad $31
    ld   A, $c9                                        ;; 03:45f6 $3e $c9
    ret                                                ;; 03:45f8 $c9
.code_45f9:
    ld   D, A                                          ;; 03:45f9 $57
    ld   E, $00                                        ;; 03:45fa $1e $00
    jr   .code_460f                                    ;; 03:45fc $18 $11
.code_45fe:
    or   A, $f8                                        ;; 03:45fe $f6 $f8
    ld   D, A                                          ;; 03:4600 $57
    ld   E, $00                                        ;; 03:4601 $1e $00
    jr   .code_460f                                    ;; 03:4603 $18 $0a
.code_4605:
    ld   E, A                                          ;; 03:4605 $5f
    ld   D, $00                                        ;; 03:4606 $16 $00
    jr   .code_460f                                    ;; 03:4608 $18 $05
.code_460a:
    or   A, $f8                                        ;; 03:460a $f6 $f8
    ld   E, A                                          ;; 03:460c $5f
    ld   D, $00                                        ;; 03:460d $16 $00
.code_460f:
    ld   A, [wC0A1]                                    ;; 03:460f $fa $a1 $c0
    push AF                                            ;; 03:4612 $f5
    set  $01, A                                        ;; 03:4613 $cb $cf
    set  $03, A                                        ;; 03:4615 $cb $df
    set  $02, A                                        ;; 03:4617 $cb $d7
    ld   [wC0A1], A                                    ;; 03:4619 $ea $a1 $c0
    ld   A, B                                          ;; 03:461c $78
    or   A, $30                                        ;; 03:461d $f6 $30
    push BC                                            ;; 03:461f $c5
    ld   B, $00                                        ;; 03:4620 $06 $00
    call code_000_08d4                                 ;; 03:4622 $cd $d4 $08
    pop  BC                                            ;; 03:4625 $c1
    pop  AF                                            ;; 03:4626 $f1
    ld   [wC0A1], A                                    ;; 03:4627 $ea $a1 $c0
    ld   A, C                                          ;; 03:462a $79
    call code_003_429b                                 ;; 03:462b $cd $9b $42
    ld   D, H                                          ;; 03:462e $54
    ld   E, L                                          ;; 03:462f $5d
    call code_003_4e15                                 ;; 03:4630 $cd $15 $4e
    pop  HL                                            ;; 03:4633 $e1
    ld   A, $00                                        ;; 03:4634 $3e $00
    ret                                                ;; 03:4636 $c9

code_003_4637:
    cpl                                                ;; 03:4637 $2f
    inc  A                                             ;; 03:4638 $3c
    and  A, $07                                        ;; 03:4639 $e6 $07
    cp   A, $04                                        ;; 03:463b $fe $04
    ret  C                                             ;; 03:463d $d8
    or   A, $f8                                        ;; 03:463e $f6 $f8
    ret                                                ;; 03:4640 $c9

code_003_4641:
    cp   A, $c9                                        ;; 03:4641 $fe $c9
    jr   Z, code_003_4659                              ;; 03:4643 $28 $14
    and  A, $f0                                        ;; 03:4645 $e6 $f0
    cp   A, $40                                        ;; 03:4647 $fe $40
    jp   Z, code_003_46f0                              ;; 03:4649 $ca $f0 $46
    cp   A, $30                                        ;; 03:464c $fe $30
    jp   Z, code_003_479d                              ;; 03:464e $ca $9d $47
    cp   A, $50                                        ;; 03:4651 $fe $50
    jp   Z, code_003_474a                              ;; 03:4653 $ca $4a $47

code_003_4656:
    ld   A, $00                                        ;; 03:4656 $3e $00
    ret                                                ;; 03:4658 $c9

code_003_4659:
    push BC                                            ;; 03:4659 $c5
    ld   A, [wC0A0]                                    ;; 03:465a $fa $a0 $c0
    cp   A, $02                                        ;; 03:465d $fe $02
    jr   NC, .code_46d4                                ;; 03:465f $30 $73
    call code_000_039a                                 ;; 03:4661 $cd $9a $03
    call code_000_29e4                                 ;; 03:4664 $cd $e4 $29
    push AF                                            ;; 03:4667 $f5
    call code_000_02ab                                 ;; 03:4668 $cd $ab $02
    and  A, $0f                                        ;; 03:466b $e6 $0f
    ld   B, A                                          ;; 03:466d $47
    pop  AF                                            ;; 03:466e $f1
    and  A, B                                          ;; 03:466f $a0
    jr   Z, .code_46d4                                 ;; 03:4670 $28 $62
    pop  BC                                            ;; 03:4672 $c1
    push BC                                            ;; 03:4673 $c5
    ld   A, C                                          ;; 03:4674 $79
    call code_003_429b                                 ;; 03:4675 $cd $9b $42
    ld   D, H                                          ;; 03:4678 $54
    ld   E, L                                          ;; 03:4679 $5d
    ld   HL, $0004                                     ;; 03:467a $21 $04 $00
    add  HL, DE                                        ;; 03:467d $19
    ld   A, [HL]                                       ;; 03:467e $7e
    cp   A, $20                                        ;; 03:467f $fe $20
    jr   NC, .code_46d4                                ;; 03:4681 $30 $51
    push DE                                            ;; 03:4683 $d5
    call code_000_3dcd                                 ;; 03:4684 $cd $cd $3d
    pop  DE                                            ;; 03:4687 $d1
    push AF                                            ;; 03:4688 $f5
    ld   HL, $0010                                     ;; 03:4689 $21 $10 $00
    add  HL, DE                                        ;; 03:468c $19
    ld   A, [HL+]                                      ;; 03:468d $2a
    ld   H, [HL]                                       ;; 03:468e $66
    ld   L, A                                          ;; 03:468f $6f
    ld   BC, $0005                                     ;; 03:4690 $01 $05 $00
    add  HL, BC                                        ;; 03:4693 $09
    ld   B, [HL]                                       ;; 03:4694 $46
    pop  AF                                            ;; 03:4695 $f1
    and  A, B                                          ;; 03:4696 $a0
    and  A, $80                                        ;; 03:4697 $e6 $80
    jr   Z, .code_46d4                                 ;; 03:4699 $28 $39
    ld   HL, $0001                                     ;; 03:469b $21 $01 $00
    add  HL, DE                                        ;; 03:469e $19
    ld   [HL], $01                                     ;; 03:469f $36 $01
    ld   HL, $0008                                     ;; 03:46a1 $21 $08 $00
    add  HL, DE                                        ;; 03:46a4 $19
    ld   [HL], $01                                     ;; 03:46a5 $36 $01
    pop  BC                                            ;; 03:46a7 $c1
    push BC                                            ;; 03:46a8 $c5
    call code_000_0c6d                                 ;; 03:46a9 $cd $6d $0c
    and  A, $0f                                        ;; 03:46ac $e6 $0f
    or   A, $b0                                        ;; 03:46ae $f6 $b0
    pop  BC                                            ;; 03:46b0 $c1
    push BC                                            ;; 03:46b1 $c5
    call code_000_0c86                                 ;; 03:46b2 $cd $86 $0c
    pop  BC                                            ;; 03:46b5 $c1
    push BC                                            ;; 03:46b6 $c5
    ld   C, B                                          ;; 03:46b7 $48
    call code_000_0c99                                 ;; 03:46b8 $cd $99 $0c
    xor  A, $80                                        ;; 03:46bb $ee $80
    pop  BC                                            ;; 03:46bd $c1
    push BC                                            ;; 03:46be $c5
    call code_000_2c2d                                 ;; 03:46bf $cd $2d $2c
    pop  BC                                            ;; 03:46c2 $c1
    jr   Z, .code_46d1                                 ;; 03:46c3 $28 $0c
    push BC                                            ;; 03:46c5 $c5
    ld   C, B                                          ;; 03:46c6 $48
    call code_000_0c99                                 ;; 03:46c7 $cd $99 $0c
    pop  BC                                            ;; 03:46ca $c1
    or   A, $40                                        ;; 03:46cb $f6 $40
    ld   C, B                                          ;; 03:46cd $48
    call code_000_0ca6                                 ;; 03:46ce $cd $a6 $0c
.code_46d1:
    ld   A, $c9                                        ;; 03:46d1 $3e $c9
    ret                                                ;; 03:46d3 $c9
.code_46d4:
    pop  BC                                            ;; 03:46d4 $c1
    ld   A, C                                          ;; 03:46d5 $79
    call code_003_429b                                 ;; 03:46d6 $cd $9b $42
    ld   DE, $0010                                     ;; 03:46d9 $11 $10 $00
    add  HL, DE                                        ;; 03:46dc $19
    ld   E, [HL]                                       ;; 03:46dd $5e
    inc  HL                                            ;; 03:46de $23
    ld   D, [HL]                                       ;; 03:46df $56
    ld   HL, $0006                                     ;; 03:46e0 $21 $06 $00
    add  HL, DE                                        ;; 03:46e3 $19
    ld   B, [HL]                                       ;; 03:46e4 $46
    ld   HL, $000b                                     ;; 03:46e5 $21 $0b $00
    add  HL, DE                                        ;; 03:46e8 $19
    ld   C, [HL]                                       ;; 03:46e9 $4e
    call code_000_0256                                 ;; 03:46ea $cd $56 $02
    ld   A, $c9                                        ;; 03:46ed $3e $c9
    ret                                                ;; 03:46ef $c9

code_003_46f0:
    call code_003_4906                                 ;; 03:46f0 $cd $06 $49
    jp   NZ, code_003_4656                             ;; 03:46f3 $c2 $56 $46
    call code_003_4931                                 ;; 03:46f6 $cd $31 $49
    jp   NZ, code_003_47eb                             ;; 03:46f9 $c2 $eb $47
    push BC                                            ;; 03:46fc $c5
    push DE                                            ;; 03:46fd $d5
    call code_000_3dc0                                 ;; 03:46fe $cd $c0 $3d
    pop  DE                                            ;; 03:4701 $d1
    call code_003_4955                                 ;; 03:4702 $cd $55 $49
    pop  BC                                            ;; 03:4705 $c1
    jp   NZ, code_003_47eb                             ;; 03:4706 $c2 $eb $47
    push BC                                            ;; 03:4709 $c5
    push DE                                            ;; 03:470a $d5
    ld   BC, $0007                                     ;; 03:470b $01 $07 $00
    call code_003_496e                                 ;; 03:470e $cd $6e $49
    push DE                                            ;; 03:4711 $d5
    call code_000_3d0e                                 ;; 03:4712 $cd $0e $3d
    call code_003_4985                                 ;; 03:4715 $cd $85 $49
    pop  DE                                            ;; 03:4718 $d1
    call code_003_499b                                 ;; 03:4719 $cd $9b $49
    pop  DE                                            ;; 03:471c $d1
    pop  BC                                            ;; 03:471d $c1
    jp   Z, code_003_47eb                              ;; 03:471e $ca $eb $47
    push BC                                            ;; 03:4721 $c5
    push DE                                            ;; 03:4722 $d5
    push HL                                            ;; 03:4723 $e5
    call code_000_3f05                                 ;; 03:4724 $cd $05 $3f
    cp   A, $08                                        ;; 03:4727 $fe $08
    jr   NZ, .code_4738                                ;; 03:4729 $20 $0d
    pop  HL                                            ;; 03:472b $e1
    push HL                                            ;; 03:472c $e5
    srl  H                                             ;; 03:472d $cb $3c
    rr   L                                             ;; 03:472f $cb $1d
    srl  H                                             ;; 03:4731 $cb $3c
    rr   L                                             ;; 03:4733 $cb $1d
    call code_000_3df6                                 ;; 03:4735 $cd $f6 $3d
.code_4738:
    pop  HL                                            ;; 03:4738 $e1
    pop  DE                                            ;; 03:4739 $d1
    set  $07, H                                        ;; 03:473a $cb $fc
    ld   B, H                                          ;; 03:473c $44
    ld   C, L                                          ;; 03:473d $4d
    ld   HL, $000e                                     ;; 03:473e $21 $0e $00
    add  HL, DE                                        ;; 03:4741 $19
    ld   [HL], C                                       ;; 03:4742 $71
    inc  HL                                            ;; 03:4743 $23
    ld   [HL], B                                       ;; 03:4744 $70
    pop  BC                                            ;; 03:4745 $c1
    call code_003_4a26                                 ;; 03:4746 $cd $26 $4a
    ret                                                ;; 03:4749 $c9

code_003_474a:
    call code_003_4906                                 ;; 03:474a $cd $06 $49
    jp   NZ, code_003_4656                             ;; 03:474d $c2 $56 $46
    call code_003_4931                                 ;; 03:4750 $cd $31 $49
    jr   NZ, .code_4769                                ;; 03:4753 $20 $14
    push BC                                            ;; 03:4755 $c5
    push DE                                            ;; 03:4756 $d5
    call code_000_3dc0                                 ;; 03:4757 $cd $c0 $3d
    pop  DE                                            ;; 03:475a $d1
    call code_003_4955                                 ;; 03:475b $cd $55 $49
    pop  BC                                            ;; 03:475e $c1
    jr   Z, .code_4777                                 ;; 03:475f $28 $16
    cp   A, $12                                        ;; 03:4761 $fe $12
    jp   Z, code_003_47fd                              ;; 03:4763 $ca $fd $47
    jp   code_003_47eb                                 ;; 03:4766 $c3 $eb $47
.code_4769:
    push BC                                            ;; 03:4769 $c5
    push DE                                            ;; 03:476a $d5
    call code_000_3dc0                                 ;; 03:476b $cd $c0 $3d
    pop  DE                                            ;; 03:476e $d1
    pop  BC                                            ;; 03:476f $c1
    cp   A, $12                                        ;; 03:4770 $fe $12
    jp   Z, code_003_47fd                              ;; 03:4772 $ca $fd $47
    jr   code_003_47eb                                 ;; 03:4775 $18 $74
.code_4777:
    push BC                                            ;; 03:4777 $c5
    push DE                                            ;; 03:4778 $d5
    ld   BC, $0008                                     ;; 03:4779 $01 $08 $00
    call code_003_496e                                 ;; 03:477c $cd $6e $49
    push DE                                            ;; 03:477f $d5
    call code_000_3daf                                 ;; 03:4780 $cd $af $3d
    call code_003_4985                                 ;; 03:4783 $cd $85 $49
    pop  DE                                            ;; 03:4786 $d1
    call code_003_49c6                                 ;; 03:4787 $cd $c6 $49
    pop  DE                                            ;; 03:478a $d1
    pop  BC                                            ;; 03:478b $c1
    jr   Z, code_003_47eb                              ;; 03:478c $28 $5d
    push BC                                            ;; 03:478e $c5
    ld   B, H                                          ;; 03:478f $44
    ld   C, L                                          ;; 03:4790 $4d
    ld   HL, $000e                                     ;; 03:4791 $21 $0e $00
    add  HL, DE                                        ;; 03:4794 $19
    ld   [HL], C                                       ;; 03:4795 $71
    inc  HL                                            ;; 03:4796 $23
    ld   [HL], B                                       ;; 03:4797 $70
    pop  BC                                            ;; 03:4798 $c1
    call code_003_4a26                                 ;; 03:4799 $cd $26 $4a
    ret                                                ;; 03:479c $c9

code_003_479d:
    call code_003_4919                                 ;; 03:479d $cd $19 $49
    jp   NZ, code_003_4656                             ;; 03:47a0 $c2 $56 $46
    call code_003_4931                                 ;; 03:47a3 $cd $31 $49
    jp   NZ, code_003_47eb                             ;; 03:47a6 $c2 $eb $47
    push BC                                            ;; 03:47a9 $c5
    push DE                                            ;; 03:47aa $d5
    ld   A, B                                          ;; 03:47ab $78
    call code_000_2c0f                                 ;; 03:47ac $cd $0f $2c
    pop  DE                                            ;; 03:47af $d1
    call code_003_4955                                 ;; 03:47b0 $cd $55 $49
    pop  BC                                            ;; 03:47b3 $c1
    jr   NZ, code_003_47eb                             ;; 03:47b4 $20 $35
    push BC                                            ;; 03:47b6 $c5
    push DE                                            ;; 03:47b7 $d5
    ld   A, B                                          ;; 03:47b8 $78
    push AF                                            ;; 03:47b9 $f5
    call code_003_4968                                 ;; 03:47ba $cd $68 $49
    pop  AF                                            ;; 03:47bd $f1
    push DE                                            ;; 03:47be $d5
    call code_000_2c15                                 ;; 03:47bf $cd $15 $2c
    call code_003_4985                                 ;; 03:47c2 $cd $85 $49
    pop  DE                                            ;; 03:47c5 $d1
    ld   D, $00                                        ;; 03:47c6 $16 $00
    call code_000_2bab                                 ;; 03:47c8 $cd $ab $2b
    pop  DE                                            ;; 03:47cb $d1
    pop  BC                                            ;; 03:47cc $c1
    jr   C, code_003_47eb                              ;; 03:47cd $38 $1c
    push BC                                            ;; 03:47cf $c5
    push DE                                            ;; 03:47d0 $d5
    ld   D, H                                          ;; 03:47d1 $54
    ld   E, L                                          ;; 03:47d2 $5d
    call code_003_49f6                                 ;; 03:47d3 $cd $f6 $49
    pop  DE                                            ;; 03:47d6 $d1
    pop  BC                                            ;; 03:47d7 $c1
    jr   Z, code_003_47eb                              ;; 03:47d8 $28 $11
    push BC                                            ;; 03:47da $c5
    set  $07, H                                        ;; 03:47db $cb $fc
    ld   B, H                                          ;; 03:47dd $44
    ld   C, L                                          ;; 03:47de $4d
    ld   HL, $000e                                     ;; 03:47df $21 $0e $00
    add  HL, DE                                        ;; 03:47e2 $19
    ld   [HL], C                                       ;; 03:47e3 $71
    inc  HL                                            ;; 03:47e4 $23
    ld   [HL], B                                       ;; 03:47e5 $70
    pop  BC                                            ;; 03:47e6 $c1
    call code_003_4a26                                 ;; 03:47e7 $cd $26 $4a
    ret                                                ;; 03:47ea $c9

code_003_47eb:
    ld   HL, $000e                                     ;; 03:47eb $21 $0e $00
    add  HL, DE                                        ;; 03:47ee $19
    ld   BC, $0000                                     ;; 03:47ef $01 $00 $00
    ld   [HL], C                                       ;; 03:47f2 $71
    inc  HL                                            ;; 03:47f3 $23
    ld   [HL], B                                       ;; 03:47f4 $70
    ld   A, $15                                        ;; 03:47f5 $3e $15
    call code_000_297d                                 ;; 03:47f7 $cd $7d $29
    ld   A, $40                                        ;; 03:47fa $3e $40
    ret                                                ;; 03:47fc $c9

code_003_47fd:
    ld   HL, $000e                                     ;; 03:47fd $21 $0e $00
    add  HL, DE                                        ;; 03:4800 $19
    ld   BC, $0000                                     ;; 03:4801 $01 $00 $00
    ld   [HL], C                                       ;; 03:4804 $71
    inc  HL                                            ;; 03:4805 $23
    ld   [HL], B                                       ;; 03:4806 $70
    ld   A, $00                                        ;; 03:4807 $3e $00
    ret                                                ;; 03:4809 $c9

code_003_480a:
    push BC                                            ;; 03:480a $c5
    push DE                                            ;; 03:480b $d5
    call code_000_0c6d                                 ;; 03:480c $cd $6d $0c
    and  A, $f0                                        ;; 03:480f $e6 $f0
    cp   A, $90                                        ;; 03:4811 $fe $90
    jr   Z, .code_481a                                 ;; 03:4813 $28 $05
    cp   A, $10                                        ;; 03:4815 $fe $10
    jp   NZ, code_003_48b6                             ;; 03:4817 $c2 $b6 $48
.code_481a:
    pop  DE                                            ;; 03:481a $d1
    push DE                                            ;; 03:481b $d5
    ld   HL, $0010                                     ;; 03:481c $21 $10 $00
    add  HL, DE                                        ;; 03:481f $19
    ld   C, [HL]                                       ;; 03:4820 $4e
    inc  HL                                            ;; 03:4821 $23
    ld   B, [HL]                                       ;; 03:4822 $46
    ld   HL, $000c                                     ;; 03:4823 $21 $0c $00
    add  HL, BC                                        ;; 03:4826 $09
    ld   A, [HL+]                                      ;; 03:4827 $2a
    push HL                                            ;; 03:4828 $e5
    call code_003_48bc                                 ;; 03:4829 $cd $bc $48
    call code_000_3d16                                 ;; 03:482c $cd $16 $3d
    pop  HL                                            ;; 03:482f $e1
    ld   A, [HL]                                       ;; 03:4830 $7e
    call code_003_48bc                                 ;; 03:4831 $cd $bc $48
    call code_000_3d72                                 ;; 03:4834 $cd $72 $3d
    call getRandomByte                                 ;; 03:4837 $cd $1e $2b
    and  A, $07                                        ;; 03:483a $e6 $07
    jr   NZ, code_003_48b6                             ;; 03:483c $20 $78
    pop  HL                                            ;; 03:483e $e1
    push HL                                            ;; 03:483f $e5
    ld   DE, $0012                                     ;; 03:4840 $11 $12 $00
    add  HL, DE                                        ;; 03:4843 $19
    ld   A, [HL+]                                      ;; 03:4844 $2a
    ld   H, [HL]                                       ;; 03:4845 $66
    ld   L, A                                          ;; 03:4846 $6f
    ld   DE, unknown_003_5f5a                          ;; 03:4847 $11 $5a $5f
    call code_000_2bab                                 ;; 03:484a $cd $ab $2b
    ld   A, $18                                        ;; 03:484d $3e $18
    call code_000_2b8b                                 ;; 03:484f $cd $8b $2b
    ld   A, L                                          ;; 03:4852 $7d
    ld   HL, wC5A8                                     ;; 03:4853 $21 $a8 $c5
    ld   B, $03                                        ;; 03:4856 $06 $03
.code_4858:
    cp   A, [HL]                                       ;; 03:4858 $be
    jr   Z, .code_4863                                 ;; 03:4859 $28 $08
    inc  HL                                            ;; 03:485b $23
    dec  B                                             ;; 03:485c $05
    jr   NZ, .code_4858                                ;; 03:485d $20 $f9
    ld   A, $00                                        ;; 03:485f $3e $00
    jr   .code_4866                                    ;; 03:4861 $18 $03
.code_4863:
    ld   A, $03                                        ;; 03:4863 $3e $03
    sub  A, B                                          ;; 03:4865 $90
.code_4866:
    cp   A, $00                                        ;; 03:4866 $fe $00
    jr   Z, .code_4878                                 ;; 03:4868 $28 $0e
    cp   A, $01                                        ;; 03:486a $fe $01
    jr   Z, .code_4873                                 ;; 03:486c $28 $05
    ld   HL, wD633                                     ;; 03:486e $21 $33 $d6
    jr   .code_487b                                    ;; 03:4871 $18 $08
.code_4873:
    ld   HL, wD623                                     ;; 03:4873 $21 $23 $d6
    jr   .code_487b                                    ;; 03:4876 $18 $03
.code_4878:
    ld   HL, wD613                                     ;; 03:4878 $21 $13 $d6
.code_487b:
    add  A, $0c                                        ;; 03:487b $c6 $0c
    pop  DE                                            ;; 03:487d $d1
    push AF                                            ;; 03:487e $f5
    push HL                                            ;; 03:487f $e5
    ld   HL, $0012                                     ;; 03:4880 $21 $12 $00
    add  HL, DE                                        ;; 03:4883 $19
    ld   E, [HL]                                       ;; 03:4884 $5e
    inc  HL                                            ;; 03:4885 $23
    ld   D, [HL]                                       ;; 03:4886 $56
    ld   HL, $0016                                     ;; 03:4887 $21 $16 $00
    add  HL, DE                                        ;; 03:488a $19
    ld   A, [HL+]                                      ;; 03:488b $2a
    ld   H, [HL]                                       ;; 03:488c $66
    ld   L, A                                          ;; 03:488d $6f
    ld   A, H                                          ;; 03:488e $7c
    or   A, L                                          ;; 03:488f $b5
    jr   Z, .code_48b5                                 ;; 03:4890 $28 $23
    call code_000_3282                                 ;; 03:4892 $cd $82 $32
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
    call code_000_05ef                                 ;; 03:48a6 $cd $ef $05
    pop  BC                                            ;; 03:48a9 $c1
    push DE                                            ;; 03:48aa $d5
    call code_003_435f                                 ;; 03:48ab $cd $5f $43
    pop  DE                                            ;; 03:48ae $d1
    pop  AF                                            ;; 03:48af $f1
    ld   C, A                                          ;; 03:48b0 $4f
    call code_003_42bd                                 ;; 03:48b1 $cd $bd $42
    ret                                                ;; 03:48b4 $c9
.code_48b5:
    pop  HL                                            ;; 03:48b5 $e1

code_003_48b6:
    pop  DE                                            ;; 03:48b6 $d1
    pop  BC                                            ;; 03:48b7 $c1
    call code_003_435f                                 ;; 03:48b8 $cd $5f $43
    ret                                                ;; 03:48bb $c9

code_003_48bc:
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

code_003_48d7:
    call code_003_429b                                 ;; 03:48d7 $cd $9b $42
    ret  NZ                                            ;; 03:48da $c0
    push HL                                            ;; 03:48db $e5
    ld   DE, $000e                                     ;; 03:48dc $11 $0e $00
    add  HL, DE                                        ;; 03:48df $19
    ld   E, [HL]                                       ;; 03:48e0 $5e
    inc  HL                                            ;; 03:48e1 $23
    ld   D, [HL]                                       ;; 03:48e2 $56
    dec  HL                                            ;; 03:48e3 $2b
    res  $07, D                                        ;; 03:48e4 $cb $ba
    ld   BC, $0000                                     ;; 03:48e6 $01 $00 $00
    ld   [HL], C                                       ;; 03:48e9 $71
    inc  HL                                            ;; 03:48ea $23
    ld   [HL], B                                       ;; 03:48eb $70
    ld   H, D                                          ;; 03:48ec $62
    ld   L, E                                          ;; 03:48ed $6b
    pop  DE                                            ;; 03:48ee $d1
    push DE                                            ;; 03:48ef $d5
    ld   A, H                                          ;; 03:48f0 $7c
    or   A, L                                          ;; 03:48f1 $b5
    jr   Z, .code_4904                                 ;; 03:48f2 $28 $10
    call code_003_4a0b                                 ;; 03:48f4 $cd $0b $4a
    pop  HL                                            ;; 03:48f7 $e1
    jr   Z, .code_48fb                                 ;; 03:48f8 $28 $01
    ret  NC                                            ;; 03:48fa $d0
.code_48fb:
    ld   DE, $0004                                     ;; 03:48fb $11 $04 $00
    add  HL, DE                                        ;; 03:48fe $19
    ld   A, $00                                        ;; 03:48ff $3e $00
    ld   [HL+], A                                      ;; 03:4901 $22
    ld   [HL+], A                                      ;; 03:4902 $22
    ret                                                ;; 03:4903 $c9
.code_4904:
    pop  HL                                            ;; 03:4904 $e1
    ret                                                ;; 03:4905 $c9

code_003_4906:
    ld   A, [wCF5B]                                    ;; 03:4906 $fa $5b $cf
    cp   A, D                                          ;; 03:4909 $ba
    jr   C, .code_4916                                 ;; 03:490a $38 $0a
    cp   A, E                                          ;; 03:490c $bb
    jr   C, .code_4916                                 ;; 03:490d $38 $07
    push BC                                            ;; 03:490f $c5
    ld   A, C                                          ;; 03:4910 $79
    call code_003_429b                                 ;; 03:4911 $cd $9b $42
    pop  BC                                            ;; 03:4914 $c1
    ret                                                ;; 03:4915 $c9
.code_4916:
    xor  A, A                                          ;; 03:4916 $af
    inc  A                                             ;; 03:4917 $3c
    ret                                                ;; 03:4918 $c9

code_003_4919:
    push DE                                            ;; 03:4919 $d5
    push BC                                            ;; 03:491a $c5
    ld   A, B                                          ;; 03:491b $78
    call code_000_2c09                                 ;; 03:491c $cd $09 $2c
    pop  BC                                            ;; 03:491f $c1
    pop  DE                                            ;; 03:4920 $d1
    cp   A, D                                          ;; 03:4921 $ba
    jr   C, .code_492e                                 ;; 03:4922 $38 $0a
    cp   A, E                                          ;; 03:4924 $bb
    jr   C, .code_492e                                 ;; 03:4925 $38 $07
    push BC                                            ;; 03:4927 $c5
    ld   A, C                                          ;; 03:4928 $79
    call code_003_429b                                 ;; 03:4929 $cd $9b $42
    pop  BC                                            ;; 03:492c $c1
    ret                                                ;; 03:492d $c9
.code_492e:
    xor  A, A                                          ;; 03:492e $af
    inc  A                                             ;; 03:492f $3c
    ret                                                ;; 03:4930 $c9

code_003_4931:
    ld   D, H                                          ;; 03:4931 $54
    ld   E, L                                          ;; 03:4932 $5d
    push BC                                            ;; 03:4933 $c5
    ld   HL, $0010                                     ;; 03:4934 $21 $10 $00
    add  HL, DE                                        ;; 03:4937 $19
    ld   C, [HL]                                       ;; 03:4938 $4e
    inc  HL                                            ;; 03:4939 $23
    ld   B, [HL]                                       ;; 03:493a $46
    ld   HL, $0005                                     ;; 03:493b $21 $05 $00
    add  HL, BC                                        ;; 03:493e $09
    ld   A, [HL]                                       ;; 03:493f $7e
    and  A, $40                                        ;; 03:4940 $e6 $40
    pop  BC                                            ;; 03:4942 $c1
    ret  Z                                             ;; 03:4943 $c8
    push DE                                            ;; 03:4944 $d5
    push BC                                            ;; 03:4945 $c5
    call code_000_039a                                 ;; 03:4946 $cd $9a $03
    pop  BC                                            ;; 03:4949 $c1
    push BC                                            ;; 03:494a $c5
    push AF                                            ;; 03:494b $f5
    call code_000_0c99                                 ;; 03:494c $cd $99 $0c
    ld   L, A                                          ;; 03:494f $6f
    pop  AF                                            ;; 03:4950 $f1
    pop  BC                                            ;; 03:4951 $c1
    pop  DE                                            ;; 03:4952 $d1
    and  A, L                                          ;; 03:4953 $a5
    ret                                                ;; 03:4954 $c9

code_003_4955:
    ld   HL, $0010                                     ;; 03:4955 $21 $10 $00
    add  HL, DE                                        ;; 03:4958 $19
    ld   C, [HL]                                       ;; 03:4959 $4e
    inc  HL                                            ;; 03:495a $23
    ld   B, [HL]                                       ;; 03:495b $46
    ld   HL, $0004                                     ;; 03:495c $21 $04 $00
    add  HL, BC                                        ;; 03:495f $09
    ld   L, [HL]                                       ;; 03:4960 $6e
    ld   H, B                                          ;; 03:4961 $60
    ld   B, A                                          ;; 03:4962 $47
    ld   A, L                                          ;; 03:4963 $7d
    ld   L, C                                          ;; 03:4964 $69
    and  A, B                                          ;; 03:4965 $a0
    ld   A, B                                          ;; 03:4966 $78
    ret                                                ;; 03:4967 $c9

code_003_4968:
    ld   DE, $0007                                     ;; 03:4968 $11 $07 $00
    add  HL, DE                                        ;; 03:496b $19
    ld   E, [HL]                                       ;; 03:496c $5e
    ret                                                ;; 03:496d $c9

code_003_496e:
    push HL                                            ;; 03:496e $e5
    add  HL, BC                                        ;; 03:496f $09
    ld   A, [HL]                                       ;; 03:4970 $7e
    push AF                                            ;; 03:4971 $f5
    call code_000_3de9                                 ;; 03:4972 $cd $e9 $3d
    ld   D, A                                          ;; 03:4975 $57
    pop  AF                                            ;; 03:4976 $f1
    ld   E, A                                          ;; 03:4977 $5f
    pop  BC                                            ;; 03:4978 $c1
    ld   HL, $0003                                     ;; 03:4979 $21 $03 $00
    add  HL, BC                                        ;; 03:497c $09
    ld   A, [HL]                                       ;; 03:497d $7e
    and  A, D                                          ;; 03:497e $a2
    ret  Z                                             ;; 03:497f $c8
    srl  E                                             ;; 03:4980 $cb $3b
    srl  E                                             ;; 03:4982 $cb $3b
    ret                                                ;; 03:4984 $c9

code_003_4985:
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

code_003_499b:
    ld   D, $00                                        ;; 03:499b $16 $00
    call code_000_2bab                                 ;; 03:499d $cd $ab $2b
    jr   C, .code_49c1                                 ;; 03:49a0 $38 $1f
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
    call code_003_49f6                                 ;; 03:49bd $cd $f6 $49
    ret                                                ;; 03:49c0 $c9
.code_49c1:
    ld   HL, $0000                                     ;; 03:49c1 $21 $00 $00
    xor  A, A                                          ;; 03:49c4 $af
    ret                                                ;; 03:49c5 $c9

code_003_49c6:
    ld   D, $00                                        ;; 03:49c6 $16 $00
    call code_000_2bab                                 ;; 03:49c8 $cd $ab $2b
    jr   C, .code_49f1                                 ;; 03:49cb $38 $24
    ret  Z                                             ;; 03:49cd $c8
    push HL                                            ;; 03:49ce $e5
    ld   A, [wCF63]                                    ;; 03:49cf $fa $63 $cf
    cp   A, $40                                        ;; 03:49d2 $fe $40
    jr   NZ, .code_49d7                                ;; 03:49d4 $20 $01
    add  HL, HL                                        ;; 03:49d6 $29
.code_49d7:
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
    call code_003_49f6                                 ;; 03:49ed $cd $f6 $49
    ret                                                ;; 03:49f0 $c9
.code_49f1:
    ld   HL, $0000                                     ;; 03:49f1 $21 $00 $00
    xor  A, A                                          ;; 03:49f4 $af
    ret                                                ;; 03:49f5 $c9

code_003_49f6:
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

code_003_4a0b:
    ld   B, D                                          ;; 03:4a0b $42
    ld   C, E                                          ;; 03:4a0c $4b
    ld   D, H                                          ;; 03:4a0d $54
    ld   E, L                                          ;; 03:4a0e $5d
    ld   HL, $000c                                     ;; 03:4a0f $21 $0c $00
    add  HL, BC                                        ;; 03:4a12 $09
    push HL                                            ;; 03:4a13 $e5
    ld   A, [HL+]                                      ;; 03:4a14 $2a
    ld   H, [HL]                                       ;; 03:4a15 $66
    ld   L, A                                          ;; 03:4a16 $6f
    call code_000_2bab                                 ;; 03:4a17 $cd $ab $2b
    jr   NC, .code_4a1f                                ;; 03:4a1a $30 $03
    ld   HL, $0000                                     ;; 03:4a1c $21 $00 $00
.code_4a1f:
    ld   B, H                                          ;; 03:4a1f $44
    ld   C, L                                          ;; 03:4a20 $4d
    pop  HL                                            ;; 03:4a21 $e1
    ld   [HL], C                                       ;; 03:4a22 $71
    inc  HL                                            ;; 03:4a23 $23
    ld   [HL], B                                       ;; 03:4a24 $70
    ret                                                ;; 03:4a25 $c9

code_003_4a26:
    push DE                                            ;; 03:4a26 $d5
    push BC                                            ;; 03:4a27 $c5
    call code_000_0c6d                                 ;; 03:4a28 $cd $6d $0c
    cp   A, $a9                                        ;; 03:4a2b $fe $a9
    jr   Z, .code_4a38                                 ;; 03:4a2d $28 $09
    and  A, $0f                                        ;; 03:4a2f $e6 $0f
    or   A, $10                                        ;; 03:4a31 $f6 $10
    pop  BC                                            ;; 03:4a33 $c1
    push BC                                            ;; 03:4a34 $c5
    call code_000_0c86                                 ;; 03:4a35 $cd $86 $0c
.code_4a38:
    pop  BC                                            ;; 03:4a38 $c1
    pop  DE                                            ;; 03:4a39 $d1
    ld   HL, $0004                                     ;; 03:4a3a $21 $04 $00
    add  HL, DE                                        ;; 03:4a3d $19
    ld   A, [HL]                                       ;; 03:4a3e $7e
    cp   A, $20                                        ;; 03:4a3f $fe $20
    jr   NC, .code_4a73                                ;; 03:4a41 $30 $30
    push BC                                            ;; 03:4a43 $c5
    push DE                                            ;; 03:4a44 $d5
    call code_000_29ba                                 ;; 03:4a45 $cd $ba $29
    pop  DE                                            ;; 03:4a48 $d1
    ld   HL, $0004                                     ;; 03:4a49 $21 $04 $00
    add  HL, DE                                        ;; 03:4a4c $19
    ld   A, $00                                        ;; 03:4a4d $3e $00
    ld   [HL+], A                                      ;; 03:4a4f $22
    ld   [HL+], A                                      ;; 03:4a50 $22
    ld   HL, $0002                                     ;; 03:4a51 $21 $02 $00
    add  HL, DE                                        ;; 03:4a54 $19
    ld   A, [HL]                                       ;; 03:4a55 $7e
    ld   [HL], $01                                     ;; 03:4a56 $36 $01
    ld   HL, $0009                                     ;; 03:4a58 $21 $09 $00
    add  HL, DE                                        ;; 03:4a5b $19
    ld   [HL-], A                                      ;; 03:4a5c $32
    ld   [HL], $3c                                     ;; 03:4a5d $36 $3c
    ld   H, D                                          ;; 03:4a5f $62
    ld   L, E                                          ;; 03:4a60 $6b
    pop  BC                                            ;; 03:4a61 $c1
    push HL                                            ;; 03:4a62 $e5
    call code_000_039a                                 ;; 03:4a63 $cd $9a $03
    pop  HL                                            ;; 03:4a66 $e1
    ld   C, [HL]                                       ;; 03:4a67 $4e
    call code_000_0ca6                                 ;; 03:4a68 $cd $a6 $0c
    ld   A, $0d                                        ;; 03:4a6b $3e $0d
    call code_000_297d                                 ;; 03:4a6d $cd $7d $29
    ld   A, $40                                        ;; 03:4a70 $3e $40
    ret                                                ;; 03:4a72 $c9
.code_4a73:
    ld   HL, $0008                                     ;; 03:4a73 $21 $08 $00
    add  HL, DE                                        ;; 03:4a76 $19
    ld   [HL], $3c                                     ;; 03:4a77 $36 $3c
    ld   A, $0d                                        ;; 03:4a79 $3e $0d
    call code_000_297d                                 ;; 03:4a7b $cd $7d $29
    ld   A, $40                                        ;; 03:4a7e $3e $40
    ret                                                ;; 03:4a80 $c9

code_003_4a81:
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
    ld   DE, $0012                                     ;; 03:4a90 $11 $12 $00
    add  HL, DE                                        ;; 03:4a93 $19
    ld   A, [HL+]                                      ;; 03:4a94 $2a
    ld   H, [HL]                                       ;; 03:4a95 $66
    ld   L, A                                          ;; 03:4a96 $6f
    ld   DE, $0014                                     ;; 03:4a97 $11 $14 $00
    add  HL, DE                                        ;; 03:4a9a $19
    ld   A, [HL+]                                      ;; 03:4a9b $2a
    ld   H, [HL]                                       ;; 03:4a9c $66
    ld   L, A                                          ;; 03:4a9d $6f
    ret                                                ;; 03:4a9e $c9

code_003_4a9f:
    call code_000_3dc0                                 ;; 03:4a9f $cd $c0 $3d
    ld   C, A                                          ;; 03:4aa2 $4f
    ld   HL, wC4F0                                     ;; 03:4aa3 $21 $f0 $c4
    ld   B, $08                                        ;; 03:4aa6 $06 $08
.code_4aa8:
    push BC                                            ;; 03:4aa8 $c5
    push HL                                            ;; 03:4aa9 $e5
    call code_003_4ae3                                 ;; 03:4aaa $cd $e3 $4a
    jr   NZ, .code_4ab7                                ;; 03:4aad $20 $08
    pop  DE                                            ;; 03:4aaf $d1
    push DE                                            ;; 03:4ab0 $d5
    ld   HL, hFFFA                                     ;; 03:4ab1 $21 $fa $ff
    add  HL, DE                                        ;; 03:4ab4 $19
    set  $07, [HL]                                     ;; 03:4ab5 $cb $fe
.code_4ab7:
    pop  HL                                            ;; 03:4ab7 $e1
    pop  BC                                            ;; 03:4ab8 $c1
    ld   DE, $0018                                     ;; 03:4ab9 $11 $18 $00
    add  HL, DE                                        ;; 03:4abc $19
    dec  B                                             ;; 03:4abd $05
    jr   NZ, .code_4aa8                                ;; 03:4abe $20 $e8
    ret                                                ;; 03:4ac0 $c9

code_003_4ac1:
    call code_000_3dc0                                 ;; 03:4ac1 $cd $c0 $3d
    ld   C, A                                          ;; 03:4ac4 $4f
    ld   HL, wC4F0                                     ;; 03:4ac5 $21 $f0 $c4
    ld   B, $08                                        ;; 03:4ac8 $06 $08
.code_4aca:
    push BC                                            ;; 03:4aca $c5
    push HL                                            ;; 03:4acb $e5
    call code_003_4ae3                                 ;; 03:4acc $cd $e3 $4a
    jr   NZ, .code_4ad9                                ;; 03:4acf $20 $08
    pop  DE                                            ;; 03:4ad1 $d1
    push DE                                            ;; 03:4ad2 $d5
    ld   HL, hFFFA                                     ;; 03:4ad3 $21 $fa $ff
    add  HL, DE                                        ;; 03:4ad6 $19
    set  $06, [HL]                                     ;; 03:4ad7 $cb $f6
.code_4ad9:
    pop  HL                                            ;; 03:4ad9 $e1
    pop  BC                                            ;; 03:4ada $c1
    ld   DE, $0018                                     ;; 03:4adb $11 $18 $00
    add  HL, DE                                        ;; 03:4ade $19
    dec  B                                             ;; 03:4adf $05
    jr   NZ, .code_4aca                                ;; 03:4ae0 $20 $e8
    ret                                                ;; 03:4ae2 $c9

code_003_4ae3:
    ld   A, [HL+]                                      ;; 03:4ae3 $2a
    ld   H, [HL]                                       ;; 03:4ae4 $66
    ld   L, A                                          ;; 03:4ae5 $6f
    ld   DE, $0004                                     ;; 03:4ae6 $11 $04 $00
    add  HL, DE                                        ;; 03:4ae9 $19
    ld   A, [HL]                                       ;; 03:4aea $7e
    and  A, C                                          ;; 03:4aeb $a1
    ret                                                ;; 03:4aec $c9

code_003_4aed:
    call code_000_08d4                                 ;; 03:4aed $cd $d4 $08
    ret                                                ;; 03:4af0 $c9

code_003_4af1:
    call updateObjectPosition                          ;; 03:4af1 $cd $11 $06
    ret                                                ;; 03:4af4 $c9

code_003_4af5:
    call code_000_0695                                 ;; 03:4af5 $cd $95 $06
    ret                                                ;; 03:4af8 $c9

code_003_4af9:
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
    call code_000_0c99                                 ;; 03:4b0c $cd $99 $0c
    pop  BC                                            ;; 03:4b0f $c1
    pop  DE                                            ;; 03:4b10 $d1
    ld   B, $00                                        ;; 03:4b11 $06 $00
    or   A, $10                                        ;; 03:4b13 $f6 $10
    call updateObjectPosition                          ;; 03:4b15 $cd $11 $06
    ret                                                ;; 03:4b18 $c9

code_003_4b19:
    inc  C                                             ;; 03:4b19 $0c
    push BC                                            ;; 03:4b1a $c5
    push HL                                            ;; 03:4b1b $e5
    cp   A, $ff                                        ;; 03:4b1c $fe $ff
    jr   Z, .code_4b42                                 ;; 03:4b1e $28 $22
    call code_003_429b                                 ;; 03:4b20 $cd $9b $42
    ld   A, [HL]                                       ;; 03:4b23 $7e
    cp   A, $ff                                        ;; 03:4b24 $fe $ff
    jr   Z, .code_4b47                                 ;; 03:4b26 $28 $1f
    ld   D, H                                          ;; 03:4b28 $54
    ld   E, L                                          ;; 03:4b29 $5d
    ld   BC, $0004                                     ;; 03:4b2a $01 $04 $00
    add  HL, BC                                        ;; 03:4b2d $09
    ld   A, [HL]                                       ;; 03:4b2e $7e
    cp   A, $00                                        ;; 03:4b2f $fe $00
    jr   Z, .code_4b47                                 ;; 03:4b31 $28 $14
    push HL                                            ;; 03:4b33 $e5
    ld   H, D                                          ;; 03:4b34 $62
    ld   L, E                                          ;; 03:4b35 $6b
    call code_003_404a                                 ;; 03:4b36 $cd $4a $40
    pop  HL                                            ;; 03:4b39 $e1
    ld   A, [HL]                                       ;; 03:4b3a $7e
    cp   A, $00                                        ;; 03:4b3b $fe $00
    jr   Z, .code_4b47                                 ;; 03:4b3d $28 $08
.code_4b3f:
    pop  HL                                            ;; 03:4b3f $e1
    pop  BC                                            ;; 03:4b40 $c1
    ret                                                ;; 03:4b41 $c9
.code_4b42:
    call code_000_02c3                                 ;; 03:4b42 $cd $c3 $02
    jr   NZ, .code_4b3f                                ;; 03:4b45 $20 $f8
.code_4b47:
    pop  HL                                            ;; 03:4b47 $e1
    pop  BC                                            ;; 03:4b48 $c1
    dec  HL                                            ;; 03:4b49 $2b
    ld   [HL], $00                                     ;; 03:4b4a $36 $00
    inc  HL                                            ;; 03:4b4c $23
    dec  C                                             ;; 03:4b4d $0d
    ret                                                ;; 03:4b4e $c9

code_003_4b4f:
    ld   HL, wC5A0                                     ;; 03:4b4f $21 $a0 $c5
    ld   B, $08                                        ;; 03:4b52 $06 $08
    ld   C, $00                                        ;; 03:4b54 $0e $00
.code_4b56:
    ld   A, [HL+]                                      ;; 03:4b56 $2a
    cp   A, $00                                        ;; 03:4b57 $fe $00
    call NZ, code_003_4b19                             ;; 03:4b59 $c4 $19 $4b
    dec  B                                             ;; 03:4b5c $05
    jr   NZ, .code_4b56                                ;; 03:4b5d $20 $f7
    ld   A, C                                          ;; 03:4b5f $79
    or   A, C                                          ;; 03:4b60 $b1
    ret                                                ;; 03:4b61 $c9

code_003_4b62:
    ld   HL, wC5A0                                     ;; 03:4b62 $21 $a0 $c5
    ld   B, $08                                        ;; 03:4b65 $06 $08
.code_4b67:
    cp   A, [HL]                                       ;; 03:4b67 $be
    ret  Z                                             ;; 03:4b68 $c8
    inc  HL                                            ;; 03:4b69 $23
    dec  B                                             ;; 03:4b6a $05
    jr   NZ, .code_4b67                                ;; 03:4b6b $20 $fa
    xor  A, A                                          ;; 03:4b6d $af
    inc  A                                             ;; 03:4b6e $3c
    ret                                                ;; 03:4b6f $c9

code_003_4b70:
    push AF                                            ;; 03:4b70 $f5
    ld   A, C                                          ;; 03:4b71 $79
    cp   A, $ff                                        ;; 03:4b72 $fe $ff
    jr   Z, .code_4bb5                                 ;; 03:4b74 $28 $3f
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
    ld   HL, $0004                                     ;; 03:4b88 $21 $04 $00
    add  HL, DE                                        ;; 03:4b8b $19
    ld   A, [HL]                                       ;; 03:4b8c $7e
    cp   A, $00                                        ;; 03:4b8d $fe $00
    jr   Z, .code_4ba6                                 ;; 03:4b8f $28 $15
    push BC                                            ;; 03:4b91 $c5
    push DE                                            ;; 03:4b92 $d5
    ld   A, [DE]                                       ;; 03:4b93 $1a
    call code_003_4b62                                 ;; 03:4b94 $cd $62 $4b
    pop  DE                                            ;; 03:4b97 $d1
    pop  BC                                            ;; 03:4b98 $c1
    jr   Z, .code_4bdd                                 ;; 03:4b99 $28 $42
    push BC                                            ;; 03:4b9b $c5
    ld   A, $00                                        ;; 03:4b9c $3e $00
    call code_003_4b62                                 ;; 03:4b9e $cd $62 $4b
    pop  BC                                            ;; 03:4ba1 $c1
    ret  NZ                                            ;; 03:4ba2 $c0
    ld   [HL], C                                       ;; 03:4ba3 $71
    jr   .code_4bdd                                    ;; 03:4ba4 $18 $37
.code_4ba6:
    ld   HL, $0004                                     ;; 03:4ba6 $21 $04 $00
    add  HL, DE                                        ;; 03:4ba9 $19
    ld   [HL], B                                       ;; 03:4baa $70
    push BC                                            ;; 03:4bab $c5
    ld   A, $00                                        ;; 03:4bac $3e $00
    call code_003_4b62                                 ;; 03:4bae $cd $62 $4b
    pop  BC                                            ;; 03:4bb1 $c1
    ret  NZ                                            ;; 03:4bb2 $c0
    ld   [HL], C                                       ;; 03:4bb3 $71
    ret                                                ;; 03:4bb4 $c9
.code_4bb5:
    call code_000_02ab                                 ;; 03:4bb5 $cd $ab $02
    bit  $07, A                                        ;; 03:4bb8 $cb $7f
    jr   Z, .code_4bce                                 ;; 03:4bba $28 $12
    pop  AF                                            ;; 03:4bbc $f1
    ld   A, $ff                                        ;; 03:4bbd $3e $ff
    call code_003_4b62                                 ;; 03:4bbf $cd $62 $4b
    jr   Z, .code_4bdd                                 ;; 03:4bc2 $28 $19
    ld   A, $00                                        ;; 03:4bc4 $3e $00
    call code_003_4b62                                 ;; 03:4bc6 $cd $62 $4b
    ret  NZ                                            ;; 03:4bc9 $c0
    ld   [HL], $ff                                     ;; 03:4bca $36 $ff
    jr   .code_4bdd                                    ;; 03:4bcc $18 $0f
.code_4bce:
    pop  AF                                            ;; 03:4bce $f1
    ld   B, $00                                        ;; 03:4bcf $06 $00
    call code_000_0232                                 ;; 03:4bd1 $cd $32 $02
    ld   A, $00                                        ;; 03:4bd4 $3e $00
    call code_003_4b62                                 ;; 03:4bd6 $cd $62 $4b
    ret  NZ                                            ;; 03:4bd9 $c0
    ld   [HL], $ff                                     ;; 03:4bda $36 $ff
    ret                                                ;; 03:4bdc $c9
.code_4bdd:
    xor  A, A                                          ;; 03:4bdd $af
    inc  A                                             ;; 03:4bde $3c
    ret                                                ;; 03:4bdf $c9

code_003_4be0:
    ld   HL, wC4E0                                     ;; 03:4be0 $21 $e0 $c4
    ld   DE, $0018                                     ;; 03:4be3 $11 $18 $00
    ld   B, $08                                        ;; 03:4be6 $06 $08
    ld   C, $00                                        ;; 03:4be8 $0e $00
    ld   A, [wD3E8]                                    ;; 03:4bea $fa $e8 $d3
    cp   A, $ff                                        ;; 03:4bed $fe $ff
    jr   Z, .code_4bf2                                 ;; 03:4bef $28 $01
    inc  C                                             ;; 03:4bf1 $0c
.code_4bf2:
    ld   A, $ff                                        ;; 03:4bf2 $3e $ff
.code_4bf4:
    cp   A, [HL]                                       ;; 03:4bf4 $be
    push AF                                            ;; 03:4bf5 $f5
    jr   Z, .code_4c11                                 ;; 03:4bf6 $28 $19
    push HL                                            ;; 03:4bf8 $e5
    push DE                                            ;; 03:4bf9 $d5
    push BC                                            ;; 03:4bfa $c5
    ld   C, [HL]                                       ;; 03:4bfb $4e
    call code_000_0c6d                                 ;; 03:4bfc $cd $6d $0c
    pop  BC                                            ;; 03:4bff $c1
    pop  DE                                            ;; 03:4c00 $d1
    pop  HL                                            ;; 03:4c01 $e1
    and  A, $f0                                        ;; 03:4c02 $e6 $f0
    cp   A, $90                                        ;; 03:4c04 $fe $90
    jr   Z, .code_4c10                                 ;; 03:4c06 $28 $08
    cp   A, $b0                                        ;; 03:4c08 $fe $b0
    jr   Z, .code_4c10                                 ;; 03:4c0a $28 $04
    cp   A, $10                                        ;; 03:4c0c $fe $10
    jr   NZ, .code_4c11                                ;; 03:4c0e $20 $01
.code_4c10:
    inc  C                                             ;; 03:4c10 $0c
.code_4c11:
    pop  AF                                            ;; 03:4c11 $f1
    add  HL, DE                                        ;; 03:4c12 $19
    dec  B                                             ;; 03:4c13 $05
    jr   NZ, .code_4bf4                                ;; 03:4c14 $20 $de
    ld   A, [wC5AF]                                    ;; 03:4c16 $fa $af $c5
    cp   A, C                                          ;; 03:4c19 $b9
    jr   Z, .code_4c2d                                 ;; 03:4c1a $28 $11
    ld   A, C                                          ;; 03:4c1c $79
    ld   [wC5AF], A                                    ;; 03:4c1d $ea $af $c5
    cp   A, $01                                        ;; 03:4c20 $fe $01
    jr   NC, .code_4c2d                                ;; 03:4c22 $30 $09
    jr   NZ, .code_4c2b                                ;; 03:4c24 $20 $05
    call code_000_28c2                                 ;; 03:4c26 $cd $c2 $28
    jr   NZ, .code_4c2d                                ;; 03:4c29 $20 $02
.code_4c2b:
    xor  A, A                                          ;; 03:4c2b $af
    ret                                                ;; 03:4c2c $c9
.code_4c2d:
    xor  A, A                                          ;; 03:4c2d $af
    inc  A                                             ;; 03:4c2e $3c
    ret                                                ;; 03:4c2f $c9

code_003_4c30:
    call code_003_4be0                                 ;; 03:4c30 $cd $e0 $4b
    ret  NZ                                            ;; 03:4c33 $c0
    call code_000_24a7                                 ;; 03:4c34 $cd $a7 $24
    ret                                                ;; 03:4c37 $c9

code_003_4c38:
    call code_003_4be0                                 ;; 03:4c38 $cd $e0 $4b
    ld   C, $07                                        ;; 03:4c3b $0e $07
    call code_000_0c6d                                 ;; 03:4c3d $cd $6d $0c
    and  A, $f0                                        ;; 03:4c40 $e6 $f0
    cp   A, $d0                                        ;; 03:4c42 $fe $d0
    ret  NZ                                            ;; 03:4c44 $c0
    call code_000_0299                                 ;; 03:4c45 $cd $99 $02
    ld   D, A                                          ;; 03:4c48 $57
    push DE                                            ;; 03:4c49 $d5
    call code_000_0293                                 ;; 03:4c4a $cd $93 $02
    pop  DE                                            ;; 03:4c4d $d1
    ld   E, A                                          ;; 03:4c4e $5f
    ld   C, $00                                        ;; 03:4c4f $0e $00
    call code_003_4af9                                 ;; 03:4c51 $cd $f9 $4a
    ret                                                ;; 03:4c54 $c9

;@jumptable: 224
data_003_4c55:
    dw   code_003_4eb3                                 ;; 03:4c55 $b3 $4e
    dw   code_003_4e7c                                 ;; 03:4c57 $7c $4e
    dw   code_003_4ec9                                 ;; 03:4c59 $c9 $4e
    dw   code_003_4ef0                                 ;; 03:4c5b $f0 $4e
    dw   code_003_4f07                                 ;; 03:4c5d $07 $4f
    dw   code_003_4f1d                                 ;; 03:4c5f $1d $4f
    dw   code_003_4f4d                                 ;; 03:4c61 $4d $4f
    dw   code_003_4f5a                                 ;; 03:4c63 $5a $4f
    dw   code_003_4f67                                 ;; 03:4c65 $67 $4f
    dw   code_003_4f74                                 ;; 03:4c67 $74 $4f
    dw   code_003_4f88                                 ;; 03:4c69 $88 $4f
    dw   code_003_4fa3                                 ;; 03:4c6b $a3 $4f
    dw   code_003_4fbe                                 ;; 03:4c6d $be $4f
    dw   code_003_4fd9                                 ;; 03:4c6f $d9 $4f
    dw   code_003_4ff4                                 ;; 03:4c71 $f4 $4f
    dw   code_003_4ffd                                 ;; 03:4c73 $fd $4f
    dw   code_003_500d                                 ;; 03:4c75 $0d $50
    dw   code_003_5019                                 ;; 03:4c77 $19 $50
    dw   code_003_5025                                 ;; 03:4c79 $25 $50
    dw   code_003_5031                                 ;; 03:4c7b $31 $50
    dw   code_003_503d                                 ;; 03:4c7d $3d $50
    dw   code_003_5049                                 ;; 03:4c7f $49 $50
    dw   code_003_4eb3                                 ;; 03:4c81 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4c83 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4c85 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4c87 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4c89 $b3 $4e
    dw   code_003_4eb5                                 ;; 03:4c8b $b5 $4e
    dw   code_003_5055                                 ;; 03:4c8d $55 $50
    dw   code_003_505f                                 ;; 03:4c8f $5f $50
    dw   code_003_5069                                 ;; 03:4c91 $69 $50
    dw   code_003_5073                                 ;; 03:4c93 $73 $50
    dw   code_003_507d                                 ;; 03:4c95 $7d $50
    dw   code_003_5092                                 ;; 03:4c97 $92 $50
    dw   code_003_50a7                                 ;; 03:4c99 $a7 $50
    dw   code_003_50bc                                 ;; 03:4c9b $bc $50
    dw   code_003_50d1                                 ;; 03:4c9d $d1 $50
    dw   code_003_50d5                                 ;; 03:4c9f $d5 $50
    dw   code_003_50d9                                 ;; 03:4ca1 $d9 $50
    dw   code_003_50dd                                 ;; 03:4ca3 $dd $50
    dw   code_003_50e1                                 ;; 03:4ca5 $e1 $50
    dw   code_003_50e5                                 ;; 03:4ca7 $e5 $50
    dw   code_003_50e9                                 ;; 03:4ca9 $e9 $50
    dw   code_003_50ed                                 ;; 03:4cab $ed $50
    dw   code_003_50f1                                 ;; 03:4cad $f1 $50
    dw   code_003_50f5                                 ;; 03:4caf $f5 $50
    dw   code_003_50f9                                 ;; 03:4cb1 $f9 $50
    dw   code_003_50fd                                 ;; 03:4cb3 $fd $50
    dw   code_003_5101                                 ;; 03:4cb5 $01 $51
    dw   code_003_5105                                 ;; 03:4cb7 $05 $51
    dw   code_003_5109                                 ;; 03:4cb9 $09 $51
    dw   code_003_510d                                 ;; 03:4cbb $0d $51
    dw   code_003_5111                                 ;; 03:4cbd $11 $51
    dw   code_003_5115                                 ;; 03:4cbf $15 $51
    dw   code_003_5119                                 ;; 03:4cc1 $19 $51
    dw   code_003_511d                                 ;; 03:4cc3 $1d $51
    dw   code_003_5121                                 ;; 03:4cc5 $21 $51
    dw   code_003_5125                                 ;; 03:4cc7 $25 $51
    dw   code_003_5129                                 ;; 03:4cc9 $29 $51
    dw   code_003_512d                                 ;; 03:4ccb $2d $51
    dw   code_003_5131                                 ;; 03:4ccd $31 $51
    dw   code_003_5135                                 ;; 03:4ccf $35 $51
    dw   code_003_5139                                 ;; 03:4cd1 $39 $51
    dw   code_003_513d                                 ;; 03:4cd3 $3d $51
    dw   code_003_4eb3                                 ;; 03:4cd5 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4cd7 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4cd9 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4cdb $b3 $4e
    dw   code_003_5151                                 ;; 03:4cdd $51 $51
    dw   code_003_5155                                 ;; 03:4cdf $55 $51
    dw   code_003_5159                                 ;; 03:4ce1 $59 $51
    dw   code_003_515d                                 ;; 03:4ce3 $5d $51
    dw   code_003_5161                                 ;; 03:4ce5 $61 $51
    dw   code_003_5165                                 ;; 03:4ce7 $65 $51
    dw   code_003_5169                                 ;; 03:4ce9 $69 $51
    dw   code_003_516d                                 ;; 03:4ceb $6d $51
    dw   code_003_5171                                 ;; 03:4ced $71 $51
    dw   code_003_5175                                 ;; 03:4cef $75 $51
    dw   code_003_5179                                 ;; 03:4cf1 $79 $51
    dw   code_003_517d                                 ;; 03:4cf3 $7d $51
    dw   code_003_5181                                 ;; 03:4cf5 $81 $51
    dw   code_003_5185                                 ;; 03:4cf7 $85 $51
    dw   code_003_5189                                 ;; 03:4cf9 $89 $51
    dw   code_003_518d                                 ;; 03:4cfb $8d $51
    dw   code_003_5191                                 ;; 03:4cfd $91 $51
    dw   code_003_5195                                 ;; 03:4cff $95 $51
    dw   code_003_5199                                 ;; 03:4d01 $99 $51
    dw   code_003_519d                                 ;; 03:4d03 $9d $51
    dw   code_003_51a1                                 ;; 03:4d05 $a1 $51
    dw   code_003_51a5                                 ;; 03:4d07 $a5 $51
    dw   code_003_51a9                                 ;; 03:4d09 $a9 $51
    dw   code_003_51ad                                 ;; 03:4d0b $ad $51
    dw   code_003_51b1                                 ;; 03:4d0d $b1 $51
    dw   code_003_51b5                                 ;; 03:4d0f $b5 $51
    dw   code_003_51b9                                 ;; 03:4d11 $b9 $51
    dw   code_003_51bd                                 ;; 03:4d13 $bd $51
    dw   code_003_4eb3                                 ;; 03:4d15 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d17 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d19 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d1b $b3 $4e
    dw   code_003_51d1                                 ;; 03:4d1d $d1 $51
    dw   code_003_51d5                                 ;; 03:4d1f $d5 $51
    dw   code_003_51d9                                 ;; 03:4d21 $d9 $51
    dw   code_003_51dd                                 ;; 03:4d23 $dd $51
    dw   code_003_51e1                                 ;; 03:4d25 $e1 $51
    dw   code_003_51e5                                 ;; 03:4d27 $e5 $51
    dw   code_003_51e9                                 ;; 03:4d29 $e9 $51
    dw   code_003_51ed                                 ;; 03:4d2b $ed $51
    dw   code_003_51f1                                 ;; 03:4d2d $f1 $51
    dw   code_003_51f5                                 ;; 03:4d2f $f5 $51
    dw   code_003_51f9                                 ;; 03:4d31 $f9 $51
    dw   code_003_51fd                                 ;; 03:4d33 $fd $51
    dw   code_003_5201                                 ;; 03:4d35 $01 $52
    dw   code_003_5205                                 ;; 03:4d37 $05 $52
    dw   code_003_5209                                 ;; 03:4d39 $09 $52
    dw   code_003_520d                                 ;; 03:4d3b $0d $52
    dw   code_003_5211                                 ;; 03:4d3d $11 $52
    dw   code_003_5215                                 ;; 03:4d3f $15 $52
    dw   code_003_5219                                 ;; 03:4d41 $19 $52
    dw   code_003_521d                                 ;; 03:4d43 $1d $52
    dw   code_003_5221                                 ;; 03:4d45 $21 $52
    dw   code_003_5225                                 ;; 03:4d47 $25 $52
    dw   code_003_5229                                 ;; 03:4d49 $29 $52
    dw   code_003_522d                                 ;; 03:4d4b $2d $52
    dw   code_003_5231                                 ;; 03:4d4d $31 $52
    dw   code_003_5235                                 ;; 03:4d4f $35 $52
    dw   code_003_5239                                 ;; 03:4d51 $39 $52
    dw   code_003_523d                                 ;; 03:4d53 $3d $52
    dw   code_003_4eb3                                 ;; 03:4d55 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d57 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d59 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d5b $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d5d $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d5f $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d61 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d63 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d65 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d67 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d69 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d6b $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d6d $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d6f $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d71 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d73 $b3 $4e
    dw   code_003_5264                                 ;; 03:4d75 $64 $52
    dw   code_003_5268                                 ;; 03:4d77 $68 $52
    dw   code_003_526c                                 ;; 03:4d79 $6c $52
    dw   code_003_5270                                 ;; 03:4d7b $70 $52
    dw   code_003_5274                                 ;; 03:4d7d $74 $52
    dw   code_003_5278                                 ;; 03:4d7f $78 $52
    dw   code_003_527c                                 ;; 03:4d81 $7c $52
    dw   code_003_5280                                 ;; 03:4d83 $80 $52
    dw   code_003_5284                                 ;; 03:4d85 $84 $52
    dw   code_003_5288                                 ;; 03:4d87 $88 $52
    dw   code_003_528c                                 ;; 03:4d89 $8c $52
    dw   code_003_5290                                 ;; 03:4d8b $90 $52
    dw   code_003_5294                                 ;; 03:4d8d $94 $52
    dw   code_003_5298                                 ;; 03:4d8f $98 $52
    dw   code_003_529c                                 ;; 03:4d91 $9c $52
    dw   code_003_52a0                                 ;; 03:4d93 $a0 $52
    dw   code_003_4eb3                                 ;; 03:4d95 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d97 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d99 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d9b $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d9d $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4d9f $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4da1 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4da3 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4da5 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4da7 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4da9 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4dab $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4dad $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4daf $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4db1 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4db3 $b3 $4e
    dw   code_003_5377                                 ;; 03:4db5 $77 $53
    dw   code_003_537b                                 ;; 03:4db7 $7b $53
    dw   code_003_537f                                 ;; 03:4db9 $7f $53
    dw   code_003_5383                                 ;; 03:4dbb $83 $53
    dw   code_003_5387                                 ;; 03:4dbd $87 $53
    dw   code_003_538b                                 ;; 03:4dbf $8b $53
    dw   code_003_538f                                 ;; 03:4dc1 $8f $53
    dw   code_003_5393                                 ;; 03:4dc3 $93 $53
    dw   code_003_5397                                 ;; 03:4dc5 $97 $53
    dw   code_003_539b                                 ;; 03:4dc7 $9b $53
    dw   code_003_539f                                 ;; 03:4dc9 $9f $53
    dw   code_003_53a3                                 ;; 03:4dcb $a3 $53
    dw   code_003_53a7                                 ;; 03:4dcd $a7 $53
    dw   code_003_53ab                                 ;; 03:4dcf $ab $53
    dw   code_003_53af                                 ;; 03:4dd1 $af $53
    dw   code_003_53b3                                 ;; 03:4dd3 $b3 $53
    dw   code_003_4eb3                                 ;; 03:4dd5 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4dd7 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4dd9 $b3 $4e
    dw   code_003_4eb3                                 ;; 03:4ddb $b3 $4e
    dw   code_003_5419                                 ;; 03:4ddd $19 $54
    dw   code_003_541d                                 ;; 03:4ddf $1d $54
    dw   code_003_5421                                 ;; 03:4de1 $21 $54
    dw   code_003_5425                                 ;; 03:4de3 $25 $54
    dw   code_003_5429                                 ;; 03:4de5 $29 $54
    dw   code_003_542d                                 ;; 03:4de7 $2d $54
    dw   code_003_5431                                 ;; 03:4de9 $31 $54
    dw   code_003_5435                                 ;; 03:4deb $35 $54
    dw   code_003_5439                                 ;; 03:4ded $39 $54
    dw   code_003_543d                                 ;; 03:4def $3d $54
    dw   code_003_5441                                 ;; 03:4df1 $41 $54
    dw   code_003_5445                                 ;; 03:4df3 $45 $54
    dw   code_003_5449                                 ;; 03:4df5 $49 $54
    dw   code_003_544d                                 ;; 03:4df7 $4d $54
    dw   code_003_5451                                 ;; 03:4df9 $51 $54
    dw   code_003_5455                                 ;; 03:4dfb $55 $54
    dw   code_003_5459                                 ;; 03:4dfd $59 $54
    dw   code_003_545d                                 ;; 03:4dff $5d $54
    dw   code_003_5461                                 ;; 03:4e01 $61 $54
    dw   code_003_5465                                 ;; 03:4e03 $65 $54
    dw   code_003_5469                                 ;; 03:4e05 $69 $54
    dw   code_003_546d                                 ;; 03:4e07 $6d $54
    dw   code_003_5471                                 ;; 03:4e09 $71 $54
    dw   code_003_5475                                 ;; 03:4e0b $75 $54
    dw   code_003_5479                                 ;; 03:4e0d $79 $54
    dw   code_003_547d                                 ;; 03:4e0f $7d $54
    dw   code_003_5481                                 ;; 03:4e11 $81 $54
    dw   code_003_5485                                 ;; 03:4e13 $85 $54

code_003_4e15:
    ld   HL, $0004                                     ;; 03:4e15 $21 $04 $00
    add  HL, DE                                        ;; 03:4e18 $19
    ld   [HL], $00                                     ;; 03:4e19 $36 $00
    inc  HL                                            ;; 03:4e1b $23
    ld   [HL], $00                                     ;; 03:4e1c $36 $00
    ld   HL, $0001                                     ;; 03:4e1e $21 $01 $00
    add  HL, DE                                        ;; 03:4e21 $19
    ld   [HL], $01                                     ;; 03:4e22 $36 $01
    ld   A, [DE]                                       ;; 03:4e24 $1a
    ld   C, A                                          ;; 03:4e25 $4f
    ld   HL, $0012                                     ;; 03:4e26 $21 $12 $00
    add  HL, DE                                        ;; 03:4e29 $19
    ld   A, [HL+]                                      ;; 03:4e2a $2a
    ld   H, [HL]                                       ;; 03:4e2b $66
    ld   L, A                                          ;; 03:4e2c $6f
    ld   A, [HL]                                       ;; 03:4e2d $7e
    call code_000_0c86                                 ;; 03:4e2e $cd $86 $0c
    ret                                                ;; 03:4e31 $c9

data_003_4e32:
    db   $20, $72, $70, $00, $70, $72, $00, $70        ;; 03:4e32 ATTATT??
    db   $72, $00, $70, $72, $20, $72, $70, $00        ;; 03:4e3a ????????
    db   $70, $72, $00, $70, $72, $00, $70, $72        ;; 03:4e42 ????????

code_003_4e4a:
    push BC                                            ;; 03:4e4a $c5
    push DE                                            ;; 03:4e4b $d5
    ld   HL, data_003_4e32                             ;; 03:4e4c $21 $32 $4e
    call code_000_0cba                                 ;; 03:4e4f $cd $ba $0c
    ld   A, $0b                                        ;; 03:4e52 $3e $0b
    call code_000_297d                                 ;; 03:4e54 $cd $7d $29
    pop  DE                                            ;; 03:4e57 $d1
    pop  BC                                            ;; 03:4e58 $c1
    ret                                                ;; 03:4e59 $c9

code_003_4e5a:
    ld   A, B                                          ;; 03:4e5a $78
    cp   A, $00                                        ;; 03:4e5b $fe $00
    call Z, code_003_4e4a                              ;; 03:4e5d $cc $4a $4e
    ld   A, B                                          ;; 03:4e60 $78
    cp   A, $02                                        ;; 03:4e61 $fe $02
    jr   Z, .code_4e76                                 ;; 03:4e63 $28 $11
    push AF                                            ;; 03:4e65 $f5
    cp   A, $01                                        ;; 03:4e66 $fe $01
    ld   A, $01                                        ;; 03:4e68 $3e $01
    jr   NC, .code_4e6e                                ;; 03:4e6a $30 $02
    ld   A, $02                                        ;; 03:4e6c $3e $02
.code_4e6e:
    ld   B, $00                                        ;; 03:4e6e $06 $00
    call code_000_0695                                 ;; 03:4e70 $cd $95 $06
    pop  AF                                            ;; 03:4e73 $f1
    inc  A                                             ;; 03:4e74 $3c
    ret                                                ;; 03:4e75 $c9
.code_4e76:
    call code_003_480a                                 ;; 03:4e76 $cd $0a $48
    ld   A, $00                                        ;; 03:4e79 $3e $00
    ret                                                ;; 03:4e7b $c9

code_003_4e7c:
    ld   A, [DE]                                       ;; 03:4e7c $1a
    cp   A, $ff                                        ;; 03:4e7d $fe $ff
    jr   Z, .code_4eaa                                 ;; 03:4e7f $28 $29
    ld   B, C                                          ;; 03:4e81 $41
    ld   C, A                                          ;; 03:4e82 $4f
    push DE                                            ;; 03:4e83 $d5
    push BC                                            ;; 03:4e84 $c5
    call code_000_0c6d                                 ;; 03:4e85 $cd $6d $0c
    pop  BC                                            ;; 03:4e88 $c1
    pop  DE                                            ;; 03:4e89 $d1
    and  A, $f0                                        ;; 03:4e8a $e6 $f0
    cp   A, $d0                                        ;; 03:4e8c $fe $d0
    jr   Z, .code_4ea0                                 ;; 03:4e8e $28 $10
    cp   A, $a0                                        ;; 03:4e90 $fe $a0
    jr   Z, .code_4ead                                 ;; 03:4e92 $28 $19
    cp   A, $b0                                        ;; 03:4e94 $fe $b0
    jr   Z, .code_4ead                                 ;; 03:4e96 $28 $15
    cp   A, $00                                        ;; 03:4e98 $fe $00
    jr   Z, .code_4ead                                 ;; 03:4e9a $28 $11
    call code_003_4e5a                                 ;; 03:4e9c $cd $5a $4e
    ret                                                ;; 03:4e9f $c9
.code_4ea0:
    ld   DE, $00f8                                     ;; 03:4ea0 $11 $f8 $00
    ld   B, $00                                        ;; 03:4ea3 $06 $00
    ld   A, $00                                        ;; 03:4ea5 $3e $00
    call updateObjectPosition                          ;; 03:4ea7 $cd $11 $06
.code_4eaa:
    ld   A, $00                                        ;; 03:4eaa $3e $00
    ret                                                ;; 03:4eac $c9
.code_4ead:
    call code_003_480a                                 ;; 03:4ead $cd $0a $48
    ld   A, $00                                        ;; 03:4eb0 $3e $00
    ret                                                ;; 03:4eb2 $c9

code_003_4eb3:
    ld   A, C                                          ;; 03:4eb3 $79
    ret                                                ;; 03:4eb4 $c9

code_003_4eb5:
    ld   A, [DE]                                       ;; 03:4eb5 $1a
    ld   HL, $0001                                     ;; 03:4eb6 $21 $01 $00
    add  HL, DE                                        ;; 03:4eb9 $19
    ld   [HL], $01                                     ;; 03:4eba $36 $01
    ld   C, A                                          ;; 03:4ebc $4f
    ld   B, $00                                        ;; 03:4ebd $06 $00
    ld   A, $00                                        ;; 03:4ebf $3e $00
    call code_000_0695                                 ;; 03:4ec1 $cd $95 $06
    ld   A, $00                                        ;; 03:4ec4 $3e $00
    ret  Z                                             ;; 03:4ec6 $c8
    inc  A                                             ;; 03:4ec7 $3c
    ret                                                ;; 03:4ec8 $c9

code_003_4ec9:
    call code_000_27ba                                 ;; 03:4ec9 $cd $ba $27
    ret  Z                                             ;; 03:4ecc $c8
    ld   HL, $0004                                     ;; 03:4ecd $21 $04 $00
    add  HL, DE                                        ;; 03:4ed0 $19
    ld   [HL], $03                                     ;; 03:4ed1 $36 $03
    ld   HL, $0003                                     ;; 03:4ed3 $21 $03 $00
    add  HL, DE                                        ;; 03:4ed6 $19
    ld   [HL], $04                                     ;; 03:4ed7 $36 $04
    ld   HL, $0012                                     ;; 03:4ed9 $21 $12 $00
    add  HL, DE                                        ;; 03:4edc $19
    ld   A, [HL+]                                      ;; 03:4edd $2a
    ld   H, [HL]                                       ;; 03:4ede $66
    ld   L, A                                          ;; 03:4edf $6f
    ld   BC, $000e                                     ;; 03:4ee0 $01 $0e $00
    add  HL, BC                                        ;; 03:4ee3 $09
    xor  A, A                                          ;; 03:4ee4 $af
    ld   B, [HL]                                       ;; 03:4ee5 $46
    ld   C, $1e                                        ;; 03:4ee6 $0e $1e
    call code_003_55cb                                 ;; 03:4ee8 $cd $cb $55
    ld   C, A                                          ;; 03:4eeb $4f
    call code_003_4ef0                                 ;; 03:4eec $cd $f0 $4e
    ret                                                ;; 03:4eef $c9

code_003_4ef0:
    ld   A, C                                          ;; 03:4ef0 $79
    dec  A                                             ;; 03:4ef1 $3d
    push AF                                            ;; 03:4ef2 $f5
    ld   HL, $0003                                     ;; 03:4ef3 $21 $03 $00
    add  HL, DE                                        ;; 03:4ef6 $19
    ld   [HL], $04                                     ;; 03:4ef7 $36 $04
    ld   A, [DE]                                       ;; 03:4ef9 $1a
    ld   C, A                                          ;; 03:4efa $4f
    push BC                                            ;; 03:4efb $c5
    call code_000_0c99                                 ;; 03:4efc $cd $99 $0c
    and  A, $0f                                        ;; 03:4eff $e6 $0f
    pop  BC                                            ;; 03:4f01 $c1
    call code_000_0695                                 ;; 03:4f02 $cd $95 $06
    pop  AF                                            ;; 03:4f05 $f1
    ret                                                ;; 03:4f06 $c9

code_003_4f07:
    ld   A, C                                          ;; 03:4f07 $79
    sub  A, $02                                        ;; 03:4f08 $d6 $02
    ret  Z                                             ;; 03:4f0a $c8
    ld   A, [DE]                                       ;; 03:4f0b $1a
    ld   C, A                                          ;; 03:4f0c $4f
    push BC                                            ;; 03:4f0d $c5
    call code_000_0c99                                 ;; 03:4f0e $cd $99 $0c
    pop  BC                                            ;; 03:4f11 $c1
    and  A, $0f                                        ;; 03:4f12 $e6 $0f
    call code_003_55fb                                 ;; 03:4f14 $cd $fb $55
    ld   A, $01                                        ;; 03:4f17 $3e $01
    ret  NZ                                            ;; 03:4f19 $c0
    ld   A, $02                                        ;; 03:4f1a $3e $02
    ret                                                ;; 03:4f1c $c9

code_003_4f1d:
    ld   A, C                                          ;; 03:4f1d $79
    sub  A, $02                                        ;; 03:4f1e $d6 $02
    ret  Z                                             ;; 03:4f20 $c8
    ld   A, $00                                        ;; 03:4f21 $3e $00
    cp   A, C                                          ;; 03:4f23 $b9
    jr   Z, .code_4f2f                                 ;; 03:4f24 $28 $09
    ld   A, [DE]                                       ;; 03:4f26 $1a
    ld   C, A                                          ;; 03:4f27 $4f
    push BC                                            ;; 03:4f28 $c5
    call code_000_0c99                                 ;; 03:4f29 $cd $99 $0c
    pop  BC                                            ;; 03:4f2c $c1
    jr   .code_4f36                                    ;; 03:4f2d $18 $07
.code_4f2f:
    ld   A, [DE]                                       ;; 03:4f2f $1a
    ld   C, A                                          ;; 03:4f30 $4f
    push BC                                            ;; 03:4f31 $c5
    call code_003_55ae                                 ;; 03:4f32 $cd $ae $55
    pop  BC                                            ;; 03:4f35 $c1
.code_4f36:
    and  A, $0f                                        ;; 03:4f36 $e6 $0f
    or   A, $20                                        ;; 03:4f38 $f6 $20
    push BC                                            ;; 03:4f3a $c5
    call code_003_55fb                                 ;; 03:4f3b $cd $fb $55
    pop  BC                                            ;; 03:4f3e $c1
    ld   A, $01                                        ;; 03:4f3f $3e $01
    ret  NZ                                            ;; 03:4f41 $c0
    push BC                                            ;; 03:4f42 $c5
    call code_003_55ae                                 ;; 03:4f43 $cd $ae $55
    pop  BC                                            ;; 03:4f46 $c1
    call code_000_0ca6                                 ;; 03:4f47 $cd $a6 $0c
    ld   A, $02                                        ;; 03:4f4a $3e $02
    ret                                                ;; 03:4f4c $c9

code_003_4f4d:
    ld   A, [DE]                                       ;; 03:4f4d $1a
    ld   C, A                                          ;; 03:4f4e $4f
    push BC                                            ;; 03:4f4f $c5
    call code_003_5574                                 ;; 03:4f50 $cd $74 $55
    pop  BC                                            ;; 03:4f53 $c1
    call code_000_0695                                 ;; 03:4f54 $cd $95 $06
    ld   A, $00                                        ;; 03:4f57 $3e $00
    ret                                                ;; 03:4f59 $c9

code_003_4f5a:
    ld   A, [DE]                                       ;; 03:4f5a $1a
    ld   C, A                                          ;; 03:4f5b $4f
    push BC                                            ;; 03:4f5c $c5
    call code_003_5591                                 ;; 03:4f5d $cd $91 $55
    pop  BC                                            ;; 03:4f60 $c1
    call code_000_0695                                 ;; 03:4f61 $cd $95 $06
    ld   A, $00                                        ;; 03:4f64 $3e $00
    ret                                                ;; 03:4f66 $c9

code_003_4f67:
    ld   A, [DE]                                       ;; 03:4f67 $1a
    ld   C, A                                          ;; 03:4f68 $4f
    push BC                                            ;; 03:4f69 $c5
    call code_003_55ae                                 ;; 03:4f6a $cd $ae $55
    pop  BC                                            ;; 03:4f6d $c1
    call code_000_0695                                 ;; 03:4f6e $cd $95 $06
    ld   A, $00                                        ;; 03:4f71 $3e $00
    ret                                                ;; 03:4f73 $c9

code_003_4f74:
    ld   A, C                                          ;; 03:4f74 $79
    or   A, C                                          ;; 03:4f75 $b1
    jr   NZ, .code_4f7a                                ;; 03:4f76 $20 $02
    ld   A, $0c                                        ;; 03:4f78 $3e $0c
.code_4f7a:
    push AF                                            ;; 03:4f7a $f5
    ld   A, [DE]                                       ;; 03:4f7b $1a
    ld   C, A                                          ;; 03:4f7c $4f
    push BC                                            ;; 03:4f7d $c5
    call code_003_5574                                 ;; 03:4f7e $cd $74 $55
    pop  BC                                            ;; 03:4f81 $c1
    call code_000_0695                                 ;; 03:4f82 $cd $95 $06
    pop  AF                                            ;; 03:4f85 $f1
    dec  A                                             ;; 03:4f86 $3d
    ret                                                ;; 03:4f87 $c9

code_003_4f88:
    ld   A, [DE]                                       ;; 03:4f88 $1a
    ld   C, A                                          ;; 03:4f89 $4f
    push BC                                            ;; 03:4f8a $c5
    call GetObjectX                                    ;; 03:4f8b $cd $2d $0c
    push AF                                            ;; 03:4f8e $f5
    call code_000_0293                                 ;; 03:4f8f $cd $93 $02
    ld   C, A                                          ;; 03:4f92 $4f
    ld   B, $01                                        ;; 03:4f93 $06 $01
    pop  AF                                            ;; 03:4f95 $f1
    cp   A, C                                          ;; 03:4f96 $b9
    jr   C, .code_4f9b                                 ;; 03:4f97 $38 $02
    ld   B, $02                                        ;; 03:4f99 $06 $02
.code_4f9b:
    ld   A, B                                          ;; 03:4f9b $78
    pop  BC                                            ;; 03:4f9c $c1
    call code_000_0695                                 ;; 03:4f9d $cd $95 $06
    ld   A, $00                                        ;; 03:4fa0 $3e $00
    ret                                                ;; 03:4fa2 $c9

code_003_4fa3:
    ld   A, [DE]                                       ;; 03:4fa3 $1a
    ld   C, A                                          ;; 03:4fa4 $4f
    push BC                                            ;; 03:4fa5 $c5
    call GetObjectY                                    ;; 03:4fa6 $cd $3e $0c
    push AF                                            ;; 03:4fa9 $f5
    call code_000_0299                                 ;; 03:4faa $cd $99 $02
    ld   C, A                                          ;; 03:4fad $4f
    ld   B, $08                                        ;; 03:4fae $06 $08
    pop  AF                                            ;; 03:4fb0 $f1
    cp   A, C                                          ;; 03:4fb1 $b9
    jr   C, .code_4fb6                                 ;; 03:4fb2 $38 $02
    ld   B, $04                                        ;; 03:4fb4 $06 $04
.code_4fb6:
    ld   A, B                                          ;; 03:4fb6 $78
    pop  BC                                            ;; 03:4fb7 $c1
    call code_000_0695                                 ;; 03:4fb8 $cd $95 $06
    ld   A, $00                                        ;; 03:4fbb $3e $00
    ret                                                ;; 03:4fbd $c9

code_003_4fbe:
    ld   A, [DE]                                       ;; 03:4fbe $1a
    ld   C, A                                          ;; 03:4fbf $4f
    push BC                                            ;; 03:4fc0 $c5
    call GetObjectX                                    ;; 03:4fc1 $cd $2d $0c
    push AF                                            ;; 03:4fc4 $f5
    call code_000_0293                                 ;; 03:4fc5 $cd $93 $02
    ld   C, A                                          ;; 03:4fc8 $4f
    ld   B, $02                                        ;; 03:4fc9 $06 $02
    pop  AF                                            ;; 03:4fcb $f1
    cp   A, C                                          ;; 03:4fcc $b9
    jr   C, .code_4fd1                                 ;; 03:4fcd $38 $02
    ld   B, $01                                        ;; 03:4fcf $06 $01
.code_4fd1:
    ld   A, B                                          ;; 03:4fd1 $78
    pop  BC                                            ;; 03:4fd2 $c1
    call code_000_0695                                 ;; 03:4fd3 $cd $95 $06
    ld   A, $00                                        ;; 03:4fd6 $3e $00
    ret                                                ;; 03:4fd8 $c9

code_003_4fd9:
    ld   A, [DE]                                       ;; 03:4fd9 $1a
    ld   C, A                                          ;; 03:4fda $4f
    push BC                                            ;; 03:4fdb $c5
    call GetObjectY                                    ;; 03:4fdc $cd $3e $0c
    push AF                                            ;; 03:4fdf $f5
    call code_000_0299                                 ;; 03:4fe0 $cd $99 $02
    ld   C, A                                          ;; 03:4fe3 $4f
    ld   B, $04                                        ;; 03:4fe4 $06 $04
    pop  AF                                            ;; 03:4fe6 $f1
    cp   A, C                                          ;; 03:4fe7 $b9
    jr   C, .code_4fec                                 ;; 03:4fe8 $38 $02
    ld   B, $08                                        ;; 03:4fea $06 $08
.code_4fec:
    ld   A, B                                          ;; 03:4fec $78
    pop  BC                                            ;; 03:4fed $c1
    call code_000_0695                                 ;; 03:4fee $cd $95 $06
    ld   A, $00                                        ;; 03:4ff1 $3e $00
    ret                                                ;; 03:4ff3 $c9

code_003_4ff4:
    ld   HL, $0002                                     ;; 03:4ff4 $21 $02 $00
    add  HL, DE                                        ;; 03:4ff7 $19
    ld   [HL], $04                                     ;; 03:4ff8 $36 $04
    ld   A, $00                                        ;; 03:4ffa $3e $00
    ret                                                ;; 03:4ffc $c9

code_003_4ffd:
    ld   HL, $0010                                     ;; 03:4ffd $21 $10 $00
    add  HL, DE                                        ;; 03:5000 $19
    ld   A, [HL+]                                      ;; 03:5001 $2a
    ld   H, [HL]                                       ;; 03:5002 $66
    ld   L, A                                          ;; 03:5003 $6f
    ld   A, [HL]                                       ;; 03:5004 $7e
    ld   HL, $0002                                     ;; 03:5005 $21 $02 $00
    add  HL, DE                                        ;; 03:5008 $19
    ld   [HL], A                                       ;; 03:5009 $77
    ld   A, $00                                        ;; 03:500a $3e $00
    ret                                                ;; 03:500c $c9

code_003_500d:
    ld   A, C                                          ;; 03:500d $79
    cp   A, $00                                        ;; 03:500e $fe $00
    ld   C, $1e                                        ;; 03:5010 $0e $1e
    call Z, code_003_55cb                              ;; 03:5012 $cc $cb $55
    call code_003_55df                                 ;; 03:5015 $cd $df $55
    ret                                                ;; 03:5018 $c9

code_003_5019:
    ld   A, C                                          ;; 03:5019 $79
    cp   A, $00                                        ;; 03:501a $fe $00
    ld   C, $3c                                        ;; 03:501c $0e $3c
    call Z, code_003_55cb                              ;; 03:501e $cc $cb $55
    call code_003_55df                                 ;; 03:5021 $cd $df $55
    ret                                                ;; 03:5024 $c9

code_003_5025:
    ld   A, C                                          ;; 03:5025 $79
    cp   A, $00                                        ;; 03:5026 $fe $00
    ld   C, $5a                                        ;; 03:5028 $0e $5a
    call Z, code_003_55cb                              ;; 03:502a $cc $cb $55
    call code_003_55df                                 ;; 03:502d $cd $df $55
    ret                                                ;; 03:5030 $c9

code_003_5031:
    ld   A, C                                          ;; 03:5031 $79
    cp   A, $00                                        ;; 03:5032 $fe $00
    ld   C, $78                                        ;; 03:5034 $0e $78
    call Z, code_003_55cb                              ;; 03:5036 $cc $cb $55
    call code_003_55df                                 ;; 03:5039 $cd $df $55
    ret                                                ;; 03:503c $c9

code_003_503d:
    ld   A, C                                          ;; 03:503d $79
    cp   A, $00                                        ;; 03:503e $fe $00
    ld   C, $96                                        ;; 03:5040 $0e $96
    call Z, code_003_55cb                              ;; 03:5042 $cc $cb $55
    call code_003_55df                                 ;; 03:5045 $cd $df $55
    ret                                                ;; 03:5048 $c9

code_003_5049:
    ld   A, C                                          ;; 03:5049 $79
    cp   A, $00                                        ;; 03:504a $fe $00
    ld   C, $b4                                        ;; 03:504c $0e $b4
    call Z, code_003_55cb                              ;; 03:504e $cc $cb $55
    call code_003_55df                                 ;; 03:5051 $cd $df $55
    ret                                                ;; 03:5054 $c9

code_003_5055:
    ld   A, [DE]                                       ;; 03:5055 $1a
    ld   C, A                                          ;; 03:5056 $4f
    ld   A, $01                                        ;; 03:5057 $3e $01
    call code_000_0695                                 ;; 03:5059 $cd $95 $06
    ld   A, $00                                        ;; 03:505c $3e $00
    ret                                                ;; 03:505e $c9

code_003_505f:
    ld   A, [DE]                                       ;; 03:505f $1a
    ld   C, A                                          ;; 03:5060 $4f
    ld   A, $02                                        ;; 03:5061 $3e $02
    call code_000_0695                                 ;; 03:5063 $cd $95 $06
    ld   A, $00                                        ;; 03:5066 $3e $00
    ret                                                ;; 03:5068 $c9

code_003_5069:
    ld   A, [DE]                                       ;; 03:5069 $1a
    ld   C, A                                          ;; 03:506a $4f
    ld   A, $04                                        ;; 03:506b $3e $04
    call code_000_0695                                 ;; 03:506d $cd $95 $06
    ld   A, $00                                        ;; 03:5070 $3e $00
    ret                                                ;; 03:5072 $c9

code_003_5073:
    ld   A, [DE]                                       ;; 03:5073 $1a
    ld   C, A                                          ;; 03:5074 $4f
    ld   A, $08                                        ;; 03:5075 $3e $08
    call code_000_0695                                 ;; 03:5077 $cd $95 $06
    ld   A, $00                                        ;; 03:507a $3e $00
    ret                                                ;; 03:507c $c9

code_003_507d:
    ld   A, C                                          ;; 03:507d $79
    or   A, A                                          ;; 03:507e $b7
    ld   A, $00                                        ;; 03:507f $3e $00
    call Z, code_003_5499                              ;; 03:5081 $cc $99 $54
    ld   A, $00                                        ;; 03:5084 $3e $00
    ret  Z                                             ;; 03:5086 $c8
    ld   A, $00                                        ;; 03:5087 $3e $00
    push DE                                            ;; 03:5089 $d5
    call code_003_5535                                 ;; 03:508a $cd $35 $55
    pop  DE                                            ;; 03:508d $d1
    call code_003_555e                                 ;; 03:508e $cd $5e $55
    ret                                                ;; 03:5091 $c9

code_003_5092:
    ld   A, C                                          ;; 03:5092 $79
    or   A, A                                          ;; 03:5093 $b7
    ld   A, $01                                        ;; 03:5094 $3e $01
    call Z, code_003_5499                              ;; 03:5096 $cc $99 $54
    ld   A, $00                                        ;; 03:5099 $3e $00
    ret  Z                                             ;; 03:509b $c8
    ld   A, $01                                        ;; 03:509c $3e $01
    push DE                                            ;; 03:509e $d5
    call code_003_5535                                 ;; 03:509f $cd $35 $55
    pop  DE                                            ;; 03:50a2 $d1
    call code_003_555e                                 ;; 03:50a3 $cd $5e $55
    ret                                                ;; 03:50a6 $c9

code_003_50a7:
    ld   A, C                                          ;; 03:50a7 $79
    or   A, A                                          ;; 03:50a8 $b7
    ld   A, $02                                        ;; 03:50a9 $3e $02
    call Z, code_003_5499                              ;; 03:50ab $cc $99 $54
    ld   A, $00                                        ;; 03:50ae $3e $00
    ret  Z                                             ;; 03:50b0 $c8
    ld   A, $02                                        ;; 03:50b1 $3e $02
    push DE                                            ;; 03:50b3 $d5
    call code_003_5535                                 ;; 03:50b4 $cd $35 $55
    pop  DE                                            ;; 03:50b7 $d1
    call code_003_555e                                 ;; 03:50b8 $cd $5e $55
    ret                                                ;; 03:50bb $c9

code_003_50bc:
    ld   A, C                                          ;; 03:50bc $79
    or   A, A                                          ;; 03:50bd $b7
    ld   A, $03                                        ;; 03:50be $3e $03
    call Z, code_003_5499                              ;; 03:50c0 $cc $99 $54
    ld   A, $00                                        ;; 03:50c3 $3e $00
    ret  Z                                             ;; 03:50c5 $c8
    ld   A, $03                                        ;; 03:50c6 $3e $03
    push DE                                            ;; 03:50c8 $d5
    call code_003_5535                                 ;; 03:50c9 $cd $35 $55
    pop  DE                                            ;; 03:50cc $d1
    call code_003_555e                                 ;; 03:50cd $cd $5e $55
    ret                                                ;; 03:50d0 $c9

code_003_50d1:
    ld   L, $04                                        ;; 03:50d1 $2e $04
    jr   code_003_5141                                 ;; 03:50d3 $18 $6c

code_003_50d5:
    ld   L, $05                                        ;; 03:50d5 $2e $05
    jr   code_003_5141                                 ;; 03:50d7 $18 $68

code_003_50d9:
    ld   L, $06                                        ;; 03:50d9 $2e $06
    jr   code_003_5141                                 ;; 03:50db $18 $64

code_003_50dd:
    ld   L, $07                                        ;; 03:50dd $2e $07
    jr   code_003_5141                                 ;; 03:50df $18 $60

code_003_50e1:
    ld   L, $08                                        ;; 03:50e1 $2e $08
    jr   code_003_5141                                 ;; 03:50e3 $18 $5c

code_003_50e5:
    ld   L, $09                                        ;; 03:50e5 $2e $09
    jr   code_003_5141                                 ;; 03:50e7 $18 $58

code_003_50e9:
    ld   L, $0a                                        ;; 03:50e9 $2e $0a
    jr   code_003_5141                                 ;; 03:50eb $18 $54

code_003_50ed:
    ld   L, $0b                                        ;; 03:50ed $2e $0b
    jr   code_003_5141                                 ;; 03:50ef $18 $50

code_003_50f1:
    ld   L, $0c                                        ;; 03:50f1 $2e $0c
    jr   code_003_5141                                 ;; 03:50f3 $18 $4c

code_003_50f5:
    ld   L, $0d                                        ;; 03:50f5 $2e $0d
    jr   code_003_5141                                 ;; 03:50f7 $18 $48

code_003_50f9:
    ld   L, $0e                                        ;; 03:50f9 $2e $0e
    jr   code_003_5141                                 ;; 03:50fb $18 $44

code_003_50fd:
    ld   L, $0f                                        ;; 03:50fd $2e $0f
    jr   code_003_5141                                 ;; 03:50ff $18 $40

code_003_5101:
    ld   L, $10                                        ;; 03:5101 $2e $10
    jr   code_003_5141                                 ;; 03:5103 $18 $3c

code_003_5105:
    ld   L, $11                                        ;; 03:5105 $2e $11
    jr   code_003_5141                                 ;; 03:5107 $18 $38

code_003_5109:
    ld   L, $12                                        ;; 03:5109 $2e $12
    jr   code_003_5141                                 ;; 03:510b $18 $34

code_003_510d:
    ld   L, $13                                        ;; 03:510d $2e $13
    jr   code_003_5141                                 ;; 03:510f $18 $30

code_003_5111:
    ld   L, $14                                        ;; 03:5111 $2e $14
    jr   code_003_5141                                 ;; 03:5113 $18 $2c

code_003_5115:
    ld   L, $15                                        ;; 03:5115 $2e $15
    jr   code_003_5141                                 ;; 03:5117 $18 $28

code_003_5119:
    ld   L, $16                                        ;; 03:5119 $2e $16
    jr   code_003_5141                                 ;; 03:511b $18 $24

code_003_511d:
    ld   L, $17                                        ;; 03:511d $2e $17
    jr   code_003_5141                                 ;; 03:511f $18 $20

code_003_5121:
    ld   L, $18                                        ;; 03:5121 $2e $18
    jr   code_003_5141                                 ;; 03:5123 $18 $1c

code_003_5125:
    ld   L, $19                                        ;; 03:5125 $2e $19
    jr   code_003_5141                                 ;; 03:5127 $18 $18

code_003_5129:
    ld   L, $1a                                        ;; 03:5129 $2e $1a
    jr   code_003_5141                                 ;; 03:512b $18 $14

code_003_512d:
    ld   L, $1b                                        ;; 03:512d $2e $1b
    jr   code_003_5141                                 ;; 03:512f $18 $10

code_003_5131:
    ld   L, $1c                                        ;; 03:5131 $2e $1c
    jr   code_003_5141                                 ;; 03:5133 $18 $0c

code_003_5135:
    ld   L, $1d                                        ;; 03:5135 $2e $1d
    jr   code_003_5141                                 ;; 03:5137 $18 $08

code_003_5139:
    ld   L, $1e                                        ;; 03:5139 $2e $1e
    jr   code_003_5141                                 ;; 03:513b $18 $04

code_003_513d:
    ld   L, $1f                                        ;; 03:513d $2e $1f
    jr   code_003_5141                                 ;; 03:513f $18 $00

code_003_5141:
    ld   A, C                                          ;; 03:5141 $79
    or   A, A                                          ;; 03:5142 $b7
    ld   A, L                                          ;; 03:5143 $7d
    push HL                                            ;; 03:5144 $e5
    call Z, code_003_5499                              ;; 03:5145 $cc $99 $54
    pop  HL                                            ;; 03:5148 $e1
    ld   A, $00                                        ;; 03:5149 $3e $00
    ret  Z                                             ;; 03:514b $c8
    ld   A, L                                          ;; 03:514c $7d
    call code_003_5535                                 ;; 03:514d $cd $35 $55
    ret                                                ;; 03:5150 $c9

code_003_5151:
    ld   L, $24                                        ;; 03:5151 $2e $24
    jr   code_003_51c1                                 ;; 03:5153 $18 $6c

code_003_5155:
    ld   L, $25                                        ;; 03:5155 $2e $25
    jr   code_003_51c1                                 ;; 03:5157 $18 $68

code_003_5159:
    ld   L, $26                                        ;; 03:5159 $2e $26
    jr   code_003_51c1                                 ;; 03:515b $18 $64

code_003_515d:
    ld   L, $27                                        ;; 03:515d $2e $27
    jr   code_003_51c1                                 ;; 03:515f $18 $60

code_003_5161:
    ld   L, $28                                        ;; 03:5161 $2e $28
    jr   code_003_51c1                                 ;; 03:5163 $18 $5c

code_003_5165:
    ld   L, $29                                        ;; 03:5165 $2e $29
    jr   code_003_51c1                                 ;; 03:5167 $18 $58

code_003_5169:
    ld   L, $2a                                        ;; 03:5169 $2e $2a
    jr   code_003_51c1                                 ;; 03:516b $18 $54

code_003_516d:
    ld   L, $2b                                        ;; 03:516d $2e $2b
    jr   code_003_51c1                                 ;; 03:516f $18 $50

code_003_5171:
    ld   L, $2c                                        ;; 03:5171 $2e $2c
    jr   code_003_51c1                                 ;; 03:5173 $18 $4c

code_003_5175:
    ld   L, $2d                                        ;; 03:5175 $2e $2d
    jr   code_003_51c1                                 ;; 03:5177 $18 $48

code_003_5179:
    ld   L, $2e                                        ;; 03:5179 $2e $2e
    jr   code_003_51c1                                 ;; 03:517b $18 $44

code_003_517d:
    ld   L, $2f                                        ;; 03:517d $2e $2f
    jr   code_003_51c1                                 ;; 03:517f $18 $40

code_003_5181:
    ld   L, $30                                        ;; 03:5181 $2e $30
    jr   code_003_51c1                                 ;; 03:5183 $18 $3c

code_003_5185:
    ld   L, $31                                        ;; 03:5185 $2e $31
    jr   code_003_51c1                                 ;; 03:5187 $18 $38

code_003_5189:
    ld   L, $32                                        ;; 03:5189 $2e $32
    jr   code_003_51c1                                 ;; 03:518b $18 $34

code_003_518d:
    ld   L, $33                                        ;; 03:518d $2e $33
    jr   code_003_51c1                                 ;; 03:518f $18 $30

code_003_5191:
    ld   L, $34                                        ;; 03:5191 $2e $34
    jr   code_003_51c1                                 ;; 03:5193 $18 $2c

code_003_5195:
    ld   L, $35                                        ;; 03:5195 $2e $35
    jr   code_003_51c1                                 ;; 03:5197 $18 $28

code_003_5199:
    ld   L, $36                                        ;; 03:5199 $2e $36
    jr   code_003_51c1                                 ;; 03:519b $18 $24

code_003_519d:
    ld   L, $37                                        ;; 03:519d $2e $37
    jr   code_003_51c1                                 ;; 03:519f $18 $20

code_003_51a1:
    ld   L, $38                                        ;; 03:51a1 $2e $38
    jr   code_003_51c1                                 ;; 03:51a3 $18 $1c

code_003_51a5:
    ld   L, $39                                        ;; 03:51a5 $2e $39
    jr   code_003_51c1                                 ;; 03:51a7 $18 $18

code_003_51a9:
    ld   L, $3a                                        ;; 03:51a9 $2e $3a
    jr   code_003_51c1                                 ;; 03:51ab $18 $14

code_003_51ad:
    ld   L, $3b                                        ;; 03:51ad $2e $3b
    jr   code_003_51c1                                 ;; 03:51af $18 $10

code_003_51b1:
    ld   L, $3c                                        ;; 03:51b1 $2e $3c
    jr   code_003_51c1                                 ;; 03:51b3 $18 $0c

code_003_51b5:
    ld   L, $3d                                        ;; 03:51b5 $2e $3d
    jr   code_003_51c1                                 ;; 03:51b7 $18 $08

code_003_51b9:
    ld   L, $3e                                        ;; 03:51b9 $2e $3e
    jr   code_003_51c1                                 ;; 03:51bb $18 $04

code_003_51bd:
    ld   L, $3f                                        ;; 03:51bd $2e $3f
    jr   code_003_51c1                                 ;; 03:51bf $18 $00

code_003_51c1:
    ld   A, C                                          ;; 03:51c1 $79
    or   A, A                                          ;; 03:51c2 $b7
    ld   A, L                                          ;; 03:51c3 $7d
    push HL                                            ;; 03:51c4 $e5
    call Z, code_003_5499                              ;; 03:51c5 $cc $99 $54
    pop  HL                                            ;; 03:51c8 $e1
    ld   A, $00                                        ;; 03:51c9 $3e $00
    ret  Z                                             ;; 03:51cb $c8
    ld   A, L                                          ;; 03:51cc $7d
    call code_003_5535                                 ;; 03:51cd $cd $35 $55
    ret                                                ;; 03:51d0 $c9

code_003_51d1:
    ld   L, $44                                        ;; 03:51d1 $2e $44
    jr   code_003_5241                                 ;; 03:51d3 $18 $6c

code_003_51d5:
    ld   L, $45                                        ;; 03:51d5 $2e $45
    jr   code_003_5241                                 ;; 03:51d7 $18 $68

code_003_51d9:
    ld   L, $46                                        ;; 03:51d9 $2e $46
    jr   code_003_5241                                 ;; 03:51db $18 $64

code_003_51dd:
    ld   L, $47                                        ;; 03:51dd $2e $47
    jr   code_003_5241                                 ;; 03:51df $18 $60

code_003_51e1:
    ld   L, $48                                        ;; 03:51e1 $2e $48
    jr   code_003_5241                                 ;; 03:51e3 $18 $5c

code_003_51e5:
    ld   L, $49                                        ;; 03:51e5 $2e $49
    jr   code_003_5241                                 ;; 03:51e7 $18 $58

code_003_51e9:
    ld   L, $4a                                        ;; 03:51e9 $2e $4a
    jr   code_003_5241                                 ;; 03:51eb $18 $54

code_003_51ed:
    ld   L, $4b                                        ;; 03:51ed $2e $4b
    jr   code_003_5241                                 ;; 03:51ef $18 $50

code_003_51f1:
    ld   L, $4c                                        ;; 03:51f1 $2e $4c
    jr   code_003_5241                                 ;; 03:51f3 $18 $4c

code_003_51f5:
    ld   L, $4d                                        ;; 03:51f5 $2e $4d
    jr   code_003_5241                                 ;; 03:51f7 $18 $48

code_003_51f9:
    ld   L, $4e                                        ;; 03:51f9 $2e $4e
    jr   code_003_5241                                 ;; 03:51fb $18 $44

code_003_51fd:
    ld   L, $4f                                        ;; 03:51fd $2e $4f
    jr   code_003_5241                                 ;; 03:51ff $18 $40

code_003_5201:
    ld   L, $50                                        ;; 03:5201 $2e $50
    jr   code_003_5241                                 ;; 03:5203 $18 $3c

code_003_5205:
    ld   L, $51                                        ;; 03:5205 $2e $51
    jr   code_003_5241                                 ;; 03:5207 $18 $38

code_003_5209:
    ld   L, $52                                        ;; 03:5209 $2e $52
    jr   code_003_5241                                 ;; 03:520b $18 $34

code_003_520d:
    ld   L, $53                                        ;; 03:520d $2e $53
    jr   code_003_5241                                 ;; 03:520f $18 $30

code_003_5211:
    ld   L, $54                                        ;; 03:5211 $2e $54
    jr   code_003_5241                                 ;; 03:5213 $18 $2c

code_003_5215:
    ld   L, $55                                        ;; 03:5215 $2e $55
    jr   code_003_5241                                 ;; 03:5217 $18 $28

code_003_5219:
    ld   L, $56                                        ;; 03:5219 $2e $56
    jr   code_003_5241                                 ;; 03:521b $18 $24

code_003_521d:
    ld   L, $57                                        ;; 03:521d $2e $57
    jr   code_003_5241                                 ;; 03:521f $18 $20

code_003_5221:
    ld   L, $58                                        ;; 03:5221 $2e $58
    jr   code_003_5241                                 ;; 03:5223 $18 $1c

code_003_5225:
    ld   L, $59                                        ;; 03:5225 $2e $59
    jr   code_003_5241                                 ;; 03:5227 $18 $18

code_003_5229:
    ld   L, $5a                                        ;; 03:5229 $2e $5a
    jr   code_003_5241                                 ;; 03:522b $18 $14

code_003_522d:
    ld   L, $5b                                        ;; 03:522d $2e $5b
    jr   code_003_5241                                 ;; 03:522f $18 $10

code_003_5231:
    ld   L, $5c                                        ;; 03:5231 $2e $5c
    jr   code_003_5241                                 ;; 03:5233 $18 $0c

code_003_5235:
    ld   L, $5d                                        ;; 03:5235 $2e $5d
    jr   code_003_5241                                 ;; 03:5237 $18 $08

code_003_5239:
    ld   L, $5e                                        ;; 03:5239 $2e $5e
    jr   code_003_5241                                 ;; 03:523b $18 $04

code_003_523d:
    ld   L, $5f                                        ;; 03:523d $2e $5f
    jr   code_003_5241                                 ;; 03:523f $18 $00

code_003_5241:
    ld   A, C                                          ;; 03:5241 $79
    or   A, A                                          ;; 03:5242 $b7
    ld   A, L                                          ;; 03:5243 $7d
    push HL                                            ;; 03:5244 $e5
    call Z, code_003_5499                              ;; 03:5245 $cc $99 $54
    pop  HL                                            ;; 03:5248 $e1
    ld   A, $00                                        ;; 03:5249 $3e $00
    ret  Z                                             ;; 03:524b $c8
    push DE                                            ;; 03:524c $d5
    ld   A, L                                          ;; 03:524d $7d
    ld   HL, $0006                                     ;; 03:524e $21 $06 $00
    add  HL, DE                                        ;; 03:5251 $19
    ld   H, [HL]                                       ;; 03:5252 $66
    ld   L, A                                          ;; 03:5253 $6f
    ld   A, [DE]                                       ;; 03:5254 $1a
    ld   D, H                                          ;; 03:5255 $54
    ld   E, L                                          ;; 03:5256 $5d
    ld   L, A                                          ;; 03:5257 $6f
    ld   A, C                                          ;; 03:5258 $79
    ld   C, L                                          ;; 03:5259 $4d
    call code_000_2c27                                 ;; 03:525a $cd $27 $2c
    pop  DE                                            ;; 03:525d $d1
    cp   A, $00                                        ;; 03:525e $fe $00
    call Z, code_003_554c                              ;; 03:5260 $cc $4c $55
    ret                                                ;; 03:5263 $c9

code_003_5264:
    ld   L, $70                                        ;; 03:5264 $2e $70
    jr   code_003_52a4                                 ;; 03:5266 $18 $3c

code_003_5268:
    ld   L, $71                                        ;; 03:5268 $2e $71
    jr   code_003_52a4                                 ;; 03:526a $18 $38

code_003_526c:
    ld   L, $72                                        ;; 03:526c $2e $72
    jr   code_003_52a4                                 ;; 03:526e $18 $34

code_003_5270:
    ld   L, $73                                        ;; 03:5270 $2e $73
    jr   code_003_52a4                                 ;; 03:5272 $18 $30

code_003_5274:
    ld   L, $74                                        ;; 03:5274 $2e $74
    jr   code_003_52a4                                 ;; 03:5276 $18 $2c

code_003_5278:
    ld   L, $75                                        ;; 03:5278 $2e $75
    jr   code_003_52a4                                 ;; 03:527a $18 $28

code_003_527c:
    ld   L, $76                                        ;; 03:527c $2e $76
    jr   code_003_52a4                                 ;; 03:527e $18 $24

code_003_5280:
    ld   L, $77                                        ;; 03:5280 $2e $77
    jr   code_003_52a4                                 ;; 03:5282 $18 $20

code_003_5284:
    ld   L, $78                                        ;; 03:5284 $2e $78
    jr   code_003_52a4                                 ;; 03:5286 $18 $1c

code_003_5288:
    ld   L, $79                                        ;; 03:5288 $2e $79
    jr   code_003_52a4                                 ;; 03:528a $18 $18

code_003_528c:
    ld   L, $7a                                        ;; 03:528c $2e $7a
    jr   code_003_52a4                                 ;; 03:528e $18 $14

code_003_5290:
    ld   L, $7b                                        ;; 03:5290 $2e $7b
    jr   code_003_52a4                                 ;; 03:5292 $18 $10

code_003_5294:
    ld   L, $7c                                        ;; 03:5294 $2e $7c
    jr   code_003_52a4                                 ;; 03:5296 $18 $0c

code_003_5298:
    ld   L, $7d                                        ;; 03:5298 $2e $7d
    jr   code_003_52a4                                 ;; 03:529a $18 $08

code_003_529c:
    ld   L, $7e                                        ;; 03:529c $2e $7e
    jr   code_003_52a4                                 ;; 03:529e $18 $04

code_003_52a0:
    ld   L, $7f                                        ;; 03:52a0 $2e $7f
    jr   code_003_52a4                                 ;; 03:52a2 $18 $00

code_003_52a4:
    ld   A, C                                          ;; 03:52a4 $79
    or   A, A                                          ;; 03:52a5 $b7
    ld   A, L                                          ;; 03:52a6 $7d
    push HL                                            ;; 03:52a7 $e5
    call Z, code_003_535e                              ;; 03:52a8 $cc $5e $53
    pop  HL                                            ;; 03:52ab $e1
    ld   A, $00                                        ;; 03:52ac $3e $00
    ret  Z                                             ;; 03:52ae $c8
    ld   A, L                                          ;; 03:52af $7d
    call code_003_52f8                                 ;; 03:52b0 $cd $f8 $52
    ret                                                ;; 03:52b3 $c9

data_003_52b4:
    db   $00, $04, $00, $04, $00, $04, $00, $04        ;; 03:52b4 ........
    db   $01, $01, $01, $01, $01, $01, $01, $01        ;; 03:52bc ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52c4 ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52cc ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52d4 ........
    db   $04, $00, $04, $00, $04, $00, $04, $00        ;; 03:52dc ........
    db   $04, $00, $04, $00, $01, $01, $01, $01        ;; 03:52e4 ....????
    db   $01, $01, $01, $01, $00, $04, $00, $04        ;; 03:52ec ????????
    db   $00, $04, $00, $04                            ;; 03:52f4 ????

code_003_52f8:
    ld   HL, $0007                                     ;; 03:52f8 $21 $07 $00
    add  HL, DE                                        ;; 03:52fb $19
    ld   H, [HL]                                       ;; 03:52fc $66
    ld   L, A                                          ;; 03:52fd $6f
    ld   A, H                                          ;; 03:52fe $7c
    cp   A, $00                                        ;; 03:52ff $fe $00
    call Z, code_003_5369                              ;; 03:5301 $cc $69 $53
    ld   A, L                                          ;; 03:5304 $7d
    push BC                                            ;; 03:5305 $c5
    push AF                                            ;; 03:5306 $f5
    push DE                                            ;; 03:5307 $d5
    ld   A, [DE]                                       ;; 03:5308 $1a
    ld   C, A                                          ;; 03:5309 $4f
    push BC                                            ;; 03:530a $c5
    call code_000_0c99                                 ;; 03:530b $cd $99 $0c
    pop  BC                                            ;; 03:530e $c1
    and  A, $0f                                        ;; 03:530f $e6 $0f
    or   A, $10                                        ;; 03:5311 $f6 $10
    ld   DE, $8080                                     ;; 03:5313 $11 $80 $80
    call code_000_08d4                                 ;; 03:5316 $cd $d4 $08
    pop  DE                                            ;; 03:5319 $d1
    pop  AF                                            ;; 03:531a $f1
    pop  BC                                            ;; 03:531b $c1
    push BC                                            ;; 03:531c $c5
    ld   B, A                                          ;; 03:531d $47
    ld   HL, $0007                                     ;; 03:531e $21 $07 $00
    add  HL, DE                                        ;; 03:5321 $19
    ld   A, [HL]                                       ;; 03:5322 $7e
    inc  A                                             ;; 03:5323 $3c
    ld   [HL], A                                       ;; 03:5324 $77
    bit  $00, A                                        ;; 03:5325 $cb $47
    jr   NZ, .code_5337                                ;; 03:5327 $20 $0e
    push HL                                            ;; 03:5329 $e5
    ld   HL, $0002                                     ;; 03:532a $21 $02 $00
    add  HL, DE                                        ;; 03:532d $19
    add  A, A                                          ;; 03:532e $87
    cp   A, [HL]                                       ;; 03:532f $be
    pop  HL                                            ;; 03:5330 $e1
    jr   C, .code_5335                                 ;; 03:5331 $38 $02
    ld   [HL], $00                                     ;; 03:5333 $36 $00
.code_5335:
    srl  A                                             ;; 03:5335 $cb $3f
.code_5337:
    dec  A                                             ;; 03:5337 $3d
    and  A, $01                                        ;; 03:5338 $e6 $01
    dec  C                                             ;; 03:533a $0d
    sla  C                                             ;; 03:533b $cb $21
    jr   NC, .code_5341                                ;; 03:533d $30 $02
    ld   C, $42                                        ;; 03:533f $0e $42
.code_5341:
    add  A, C                                          ;; 03:5341 $81
    ld   HL, data_003_52b4                             ;; 03:5342 $21 $b4 $52
    add  A, L                                          ;; 03:5345 $85
    ld   L, A                                          ;; 03:5346 $6f
    ld   A, $00                                        ;; 03:5347 $3e $00
    adc  A, H                                          ;; 03:5349 $8c
    ld   H, A                                          ;; 03:534a $67
    ld   A, [HL]                                       ;; 03:534b $7e
    cp   A, $00                                        ;; 03:534c $fe $00
    jr   Z, .code_5358                                 ;; 03:534e $28 $08
    ld   HL, $0001                                     ;; 03:5350 $21 $01 $00
    add  HL, DE                                        ;; 03:5353 $19
    ld   [HL], A                                       ;; 03:5354 $77
    pop  BC                                            ;; 03:5355 $c1
    ld   A, C                                          ;; 03:5356 $79
    ret                                                ;; 03:5357 $c9
.code_5358:
    ld   A, B                                          ;; 03:5358 $78
    pop  BC                                            ;; 03:5359 $c1
    call code_003_52f8                                 ;; 03:535a $cd $f8 $52
    ret                                                ;; 03:535d $c9

code_003_535e:
    call code_003_5499                                 ;; 03:535e $cd $99 $54
    ret  Z                                             ;; 03:5361 $c8
    ld   HL, $0007                                     ;; 03:5362 $21 $07 $00
    add  HL, DE                                        ;; 03:5365 $19
    ld   [HL], $00                                     ;; 03:5366 $36 $00
    ret                                                ;; 03:5368 $c9

code_003_5369:
    push AF                                            ;; 03:5369 $f5
    push BC                                            ;; 03:536a $c5
    push DE                                            ;; 03:536b $d5
    push HL                                            ;; 03:536c $e5
    ld   A, L                                          ;; 03:536d $7d
    call code_003_5535                                 ;; 03:536e $cd $35 $55
    pop  HL                                            ;; 03:5371 $e1
    pop  DE                                            ;; 03:5372 $d1
    pop  BC                                            ;; 03:5373 $c1
    ld   C, A                                          ;; 03:5374 $4f
    pop  AF                                            ;; 03:5375 $f1
    ret                                                ;; 03:5376 $c9

code_003_5377:
    ld   L, $90                                        ;; 03:5377 $2e $90
    jr   code_003_53da                                 ;; 03:5379 $18 $5f

code_003_537b:
    ld   L, $91                                        ;; 03:537b $2e $91
    jr   code_003_53da                                 ;; 03:537d $18 $5b

code_003_537f:
    ld   L, $92                                        ;; 03:537f $2e $92
    jr   code_003_53da                                 ;; 03:5381 $18 $57

code_003_5383:
    ld   L, $93                                        ;; 03:5383 $2e $93
    jr   code_003_53da                                 ;; 03:5385 $18 $53

code_003_5387:
    ld   L, $94                                        ;; 03:5387 $2e $94
    jr   code_003_53da                                 ;; 03:5389 $18 $4f

code_003_538b:
    ld   L, $95                                        ;; 03:538b $2e $95
    jr   code_003_53da                                 ;; 03:538d $18 $4b

code_003_538f:
    ld   L, $96                                        ;; 03:538f $2e $96
    jr   code_003_53da                                 ;; 03:5391 $18 $47

code_003_5393:
    ld   L, $97                                        ;; 03:5393 $2e $97
    jr   code_003_53da                                 ;; 03:5395 $18 $43

code_003_5397:
    ld   L, $98                                        ;; 03:5397 $2e $98
    jr   code_003_53da                                 ;; 03:5399 $18 $3f

code_003_539b:
    ld   L, $99                                        ;; 03:539b $2e $99
    jr   code_003_53da                                 ;; 03:539d $18 $3b

code_003_539f:
    ld   L, $9a                                        ;; 03:539f $2e $9a
    jr   code_003_53da                                 ;; 03:53a1 $18 $37

code_003_53a3:
    ld   L, $9b                                        ;; 03:53a3 $2e $9b
    jr   code_003_53da                                 ;; 03:53a5 $18 $33

code_003_53a7:
    ld   L, $9c                                        ;; 03:53a7 $2e $9c
    jr   code_003_53da                                 ;; 03:53a9 $18 $2f

code_003_53ab:
    ld   L, $9d                                        ;; 03:53ab $2e $9d
    jr   code_003_53da                                 ;; 03:53ad $18 $2b

code_003_53af:
    ld   L, $9e                                        ;; 03:53af $2e $9e
    jr   code_003_53da                                 ;; 03:53b1 $18 $27

code_003_53b3:
    ld   L, $9f                                        ;; 03:53b3 $2e $9f
    jr   code_003_53da                                 ;; 03:53b5 $18 $23

unknown_003_53b7:
    db   $00, $00, $01, $01, $03, $03, $03, $03        ;; 03:53b7 ?.......
    db   $00, $80, $00, $00, $00, $00, $00, $00        ;; 03:53bf ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:53c7 ..??????
    db   $00, $00, $03, $83, $03, $03, $01, $01        ;; 03:53cf ????????
    db   $00, $00, $00                                 ;; 03:53d7 ???

code_003_53da:
    ld   A, C                                          ;; 03:53da $79
    or   A, A                                          ;; 03:53db $b7
    ld   A, L                                          ;; 03:53dc $7d
    push HL                                            ;; 03:53dd $e5
    call Z, code_003_5499                              ;; 03:53de $cc $99 $54
    pop  HL                                            ;; 03:53e1 $e1
    ld   A, $00                                        ;; 03:53e2 $3e $00
    ret  Z                                             ;; 03:53e4 $c8
    ld   A, L                                          ;; 03:53e5 $7d
    push BC                                            ;; 03:53e6 $c5
    push DE                                            ;; 03:53e7 $d5
    call code_003_5535                                 ;; 03:53e8 $cd $35 $55
    pop  DE                                            ;; 03:53eb $d1
    pop  BC                                            ;; 03:53ec $c1
    push AF                                            ;; 03:53ed $f5
    ld   HL, unknown_003_53b7                          ;; 03:53ee $21 $b7 $53
    add  A, L                                          ;; 03:53f1 $85
    ld   L, A                                          ;; 03:53f2 $6f
    ld   A, $00                                        ;; 03:53f3 $3e $00
    adc  A, H                                          ;; 03:53f5 $8c
    ld   H, A                                          ;; 03:53f6 $67
    ld   A, [HL]                                       ;; 03:53f7 $7e
    and  A, $7f                                        ;; 03:53f8 $e6 $7f
    cp   A, [HL]                                       ;; 03:53fa $be
    call NZ, code_003_5403                             ;; 03:53fb $c4 $03 $54
    call code_000_28bc                                 ;; 03:53fe $cd $bc $28
    pop  AF                                            ;; 03:5401 $f1
    ret                                                ;; 03:5402 $c9

code_003_5403:
    push AF                                            ;; 03:5403 $f5
    push DE                                            ;; 03:5404 $d5
    ld   A, [DE]                                       ;; 03:5405 $1a
    ld   C, A                                          ;; 03:5406 $4f
    push BC                                            ;; 03:5407 $c5
    call code_000_0c99                                 ;; 03:5408 $cd $99 $0c
    pop  BC                                            ;; 03:540b $c1
    and  A, $0f                                        ;; 03:540c $e6 $0f
    or   A, $10                                        ;; 03:540e $f6 $10
    ld   DE, $8080                                     ;; 03:5410 $11 $80 $80
    call code_000_08d4                                 ;; 03:5413 $cd $d4 $08
    pop  DE                                            ;; 03:5416 $d1
    pop  AF                                            ;; 03:5417 $f1
    ret                                                ;; 03:5418 $c9

code_003_5419:
    ld   L, $a4                                        ;; 03:5419 $2e $a4
    jr   code_003_5489                                 ;; 03:541b $18 $6c

code_003_541d:
    ld   L, $a5                                        ;; 03:541d $2e $a5
    jr   code_003_5489                                 ;; 03:541f $18 $68

code_003_5421:
    ld   L, $a6                                        ;; 03:5421 $2e $a6
    jr   code_003_5489                                 ;; 03:5423 $18 $64

code_003_5425:
    ld   L, $a7                                        ;; 03:5425 $2e $a7
    jr   code_003_5489                                 ;; 03:5427 $18 $60

code_003_5429:
    ld   L, $a8                                        ;; 03:5429 $2e $a8
    jr   code_003_5489                                 ;; 03:542b $18 $5c

code_003_542d:
    ld   L, $a9                                        ;; 03:542d $2e $a9
    jr   code_003_5489                                 ;; 03:542f $18 $58

code_003_5431:
    ld   L, $aa                                        ;; 03:5431 $2e $aa
    jr   code_003_5489                                 ;; 03:5433 $18 $54

code_003_5435:
    ld   L, $ab                                        ;; 03:5435 $2e $ab
    jr   code_003_5489                                 ;; 03:5437 $18 $50

code_003_5439:
    ld   L, $ac                                        ;; 03:5439 $2e $ac
    jr   code_003_5489                                 ;; 03:543b $18 $4c

code_003_543d:
    ld   L, $ad                                        ;; 03:543d $2e $ad
    jr   code_003_5489                                 ;; 03:543f $18 $48

code_003_5441:
    ld   L, $ae                                        ;; 03:5441 $2e $ae
    jr   code_003_5489                                 ;; 03:5443 $18 $44

code_003_5445:
    ld   L, $af                                        ;; 03:5445 $2e $af
    jr   code_003_5489                                 ;; 03:5447 $18 $40

code_003_5449:
    ld   L, $b0                                        ;; 03:5449 $2e $b0
    jr   code_003_5489                                 ;; 03:544b $18 $3c

code_003_544d:
    ld   L, $b1                                        ;; 03:544d $2e $b1
    jr   code_003_5489                                 ;; 03:544f $18 $38

code_003_5451:
    ld   L, $b2                                        ;; 03:5451 $2e $b2
    jr   code_003_5489                                 ;; 03:5453 $18 $34

code_003_5455:
    ld   L, $b3                                        ;; 03:5455 $2e $b3
    jr   code_003_5489                                 ;; 03:5457 $18 $30

code_003_5459:
    ld   L, $b4                                        ;; 03:5459 $2e $b4
    jr   code_003_5489                                 ;; 03:545b $18 $2c

code_003_545d:
    ld   L, $b5                                        ;; 03:545d $2e $b5
    jr   code_003_5489                                 ;; 03:545f $18 $28

code_003_5461:
    ld   L, $b6                                        ;; 03:5461 $2e $b6
    jr   code_003_5489                                 ;; 03:5463 $18 $24

code_003_5465:
    ld   L, $b7                                        ;; 03:5465 $2e $b7
    jr   code_003_5489                                 ;; 03:5467 $18 $20

code_003_5469:
    ld   L, $b8                                        ;; 03:5469 $2e $b8
    jr   code_003_5489                                 ;; 03:546b $18 $1c

code_003_546d:
    ld   L, $b9                                        ;; 03:546d $2e $b9
    jr   code_003_5489                                 ;; 03:546f $18 $18

code_003_5471:
    ld   L, $ba                                        ;; 03:5471 $2e $ba
    jr   code_003_5489                                 ;; 03:5473 $18 $14

code_003_5475:
    ld   L, $bb                                        ;; 03:5475 $2e $bb
    jr   code_003_5489                                 ;; 03:5477 $18 $10

code_003_5479:
    ld   L, $bc                                        ;; 03:5479 $2e $bc
    jr   code_003_5489                                 ;; 03:547b $18 $0c

code_003_547d:
    ld   L, $bd                                        ;; 03:547d $2e $bd
    jr   code_003_5489                                 ;; 03:547f $18 $08

code_003_5481:
    ld   L, $be                                        ;; 03:5481 $2e $be
    jr   code_003_5489                                 ;; 03:5483 $18 $04

code_003_5485:
    ld   L, $bf                                        ;; 03:5485 $2e $bf
    jr   code_003_5489                                 ;; 03:5487 $18 $00

code_003_5489:
    ld   A, C                                          ;; 03:5489 $79
    or   A, A                                          ;; 03:548a $b7
    ld   A, L                                          ;; 03:548b $7d
    push HL                                            ;; 03:548c $e5
    call Z, code_003_5499                              ;; 03:548d $cc $99 $54
    pop  HL                                            ;; 03:5490 $e1
    ld   A, $00                                        ;; 03:5491 $3e $00
    ret  Z                                             ;; 03:5493 $c8
    ld   A, L                                          ;; 03:5494 $7d
    call code_003_5535                                 ;; 03:5495 $cd $35 $55
    ret                                                ;; 03:5498 $c9

code_003_5499:
    push BC                                            ;; 03:5499 $c5
    push DE                                            ;; 03:549a $d5
    ld   B, A                                          ;; 03:549b $47
    ld   A, [DE]                                       ;; 03:549c $1a
    ld   C, A                                          ;; 03:549d $4f
    ld   A, B                                          ;; 03:549e $78
    push BC                                            ;; 03:549f $c5
    call code_000_2c1b                                 ;; 03:54a0 $cd $1b $2c
    pop  BC                                            ;; 03:54a3 $c1
    push DE                                            ;; 03:54a4 $d5
    push BC                                            ;; 03:54a5 $c5
    call code_000_05ef                                 ;; 03:54a6 $cd $ef $05
    pop  BC                                            ;; 03:54a9 $c1
    push BC                                            ;; 03:54aa $c5
    push DE                                            ;; 03:54ab $d5
    call code_000_0c99                                 ;; 03:54ac $cd $99 $0c
    pop  DE                                            ;; 03:54af $d1
    pop  BC                                            ;; 03:54b0 $c1
    pop  HL                                            ;; 03:54b1 $e1
    bit  $00, A                                        ;; 03:54b2 $cb $47
    jr   NZ, .code_54ce                                ;; 03:54b4 $20 $18
    bit  $01, A                                        ;; 03:54b6 $cb $4f
    jr   NZ, .code_54de                                ;; 03:54b8 $20 $24
    bit  $02, A                                        ;; 03:54ba $cb $57
    jr   NZ, .code_54ee                                ;; 03:54bc $20 $30
    ld   A, D                                          ;; 03:54be $7a
    add  A, H                                          ;; 03:54bf $84
    ld   D, A                                          ;; 03:54c0 $57
    ld   A, E                                          ;; 03:54c1 $7b
    sub  A, L                                          ;; 03:54c2 $95
    ld   E, A                                          ;; 03:54c3 $5f
    ld   A, $28                                        ;; 03:54c4 $3e $28
    bit  $07, L                                        ;; 03:54c6 $cb $7d
    jr   Z, .code_54fc                                 ;; 03:54c8 $28 $32
    ld   A, $18                                        ;; 03:54ca $3e $18
    jr   .code_54fc                                    ;; 03:54cc $18 $2e
.code_54ce:
    ld   A, D                                          ;; 03:54ce $7a
    add  A, L                                          ;; 03:54cf $85
    ld   D, A                                          ;; 03:54d0 $57
    ld   A, E                                          ;; 03:54d1 $7b
    add  A, H                                          ;; 03:54d2 $84
    ld   E, A                                          ;; 03:54d3 $5f
    ld   A, $81                                        ;; 03:54d4 $3e $81
    bit  $07, L                                        ;; 03:54d6 $cb $7d
    jr   Z, .code_54fc                                 ;; 03:54d8 $28 $22
    ld   A, $41                                        ;; 03:54da $3e $41
    jr   .code_54fc                                    ;; 03:54dc $18 $1e
.code_54de:
    ld   A, D                                          ;; 03:54de $7a
    sub  A, L                                          ;; 03:54df $95
    ld   D, A                                          ;; 03:54e0 $57
    ld   A, E                                          ;; 03:54e1 $7b
    sub  A, H                                          ;; 03:54e2 $94
    ld   E, A                                          ;; 03:54e3 $5f
    ld   A, $42                                        ;; 03:54e4 $3e $42
    bit  $07, L                                        ;; 03:54e6 $cb $7d
    jr   Z, .code_54fc                                 ;; 03:54e8 $28 $12
    ld   A, $82                                        ;; 03:54ea $3e $82
    jr   .code_54fc                                    ;; 03:54ec $18 $0e
.code_54ee:
    ld   A, D                                          ;; 03:54ee $7a
    sub  A, H                                          ;; 03:54ef $94
    ld   D, A                                          ;; 03:54f0 $57
    ld   A, E                                          ;; 03:54f1 $7b
    add  A, L                                          ;; 03:54f2 $85
    ld   E, A                                          ;; 03:54f3 $5f
    ld   A, $14                                        ;; 03:54f4 $3e $14
    bit  $07, L                                        ;; 03:54f6 $cb $7d
    jr   Z, .code_54fc                                 ;; 03:54f8 $28 $02
    ld   A, $24                                        ;; 03:54fa $3e $24
.code_54fc:
    push AF                                            ;; 03:54fc $f5
    ld   A, D                                          ;; 03:54fd $7a
    cp   A, $0f                                        ;; 03:54fe $fe $0f
    jr   NC, .code_5530                                ;; 03:5500 $30 $2e
    ld   A, E                                          ;; 03:5502 $7b
    cp   A, $13                                        ;; 03:5503 $fe $13
    jr   NC, .code_5530                                ;; 03:5505 $30 $29
    push DE                                            ;; 03:5507 $d5
    call code_000_0c6d                                 ;; 03:5508 $cd $6d $0c
    pop  DE                                            ;; 03:550b $d1
    call code_000_18c0                                 ;; 03:550c $cd $c0 $18
    jr   Z, .code_5530                                 ;; 03:550f $28 $1f
    pop  AF                                            ;; 03:5511 $f1
    pop  DE                                            ;; 03:5512 $d1
    ld   HL, $0006                                     ;; 03:5513 $21 $06 $00
    add  HL, DE                                        ;; 03:5516 $19
    ld   [HL], A                                       ;; 03:5517 $77
    push DE                                            ;; 03:5518 $d5
    ld   A, [DE]                                       ;; 03:5519 $1a
    ld   C, A                                          ;; 03:551a $4f
    ld   A, $90                                        ;; 03:551b $3e $90
    and  A, $0f                                        ;; 03:551d $e6 $0f
    ld   B, A                                          ;; 03:551f $47
    push BC                                            ;; 03:5520 $c5
    call code_000_0c6d                                 ;; 03:5521 $cd $6d $0c
    and  A, $f0                                        ;; 03:5524 $e6 $f0
    pop  BC                                            ;; 03:5526 $c1
    or   A, B                                          ;; 03:5527 $b0
    call code_000_0c86                                 ;; 03:5528 $cd $86 $0c
    pop  DE                                            ;; 03:552b $d1
    pop  BC                                            ;; 03:552c $c1
    xor  A, A                                          ;; 03:552d $af
    inc  A                                             ;; 03:552e $3c
    ret                                                ;; 03:552f $c9
.code_5530:
    pop  BC                                            ;; 03:5530 $c1
    pop  DE                                            ;; 03:5531 $d1
    pop  BC                                            ;; 03:5532 $c1
    xor  A, A                                          ;; 03:5533 $af
    ret                                                ;; 03:5534 $c9

code_003_5535:
    push DE                                            ;; 03:5535 $d5
    ld   HL, $0006                                     ;; 03:5536 $21 $06 $00
    add  HL, DE                                        ;; 03:5539 $19
    ld   H, [HL]                                       ;; 03:553a $66
    ld   L, A                                          ;; 03:553b $6f
    ld   A, [DE]                                       ;; 03:553c $1a
    ld   D, H                                          ;; 03:553d $54
    ld   E, L                                          ;; 03:553e $5d
    ld   L, A                                          ;; 03:553f $6f
    ld   A, C                                          ;; 03:5540 $79
    ld   C, L                                          ;; 03:5541 $4d
    call code_000_2c21                                 ;; 03:5542 $cd $21 $2c
    pop  DE                                            ;; 03:5545 $d1
    cp   A, $00                                        ;; 03:5546 $fe $00
    call Z, code_003_554c                              ;; 03:5548 $cc $4c $55
    ret                                                ;; 03:554b $c9

code_003_554c:
    ld   A, [DE]                                       ;; 03:554c $1a
    ld   C, A                                          ;; 03:554d $4f
    ld   HL, $0012                                     ;; 03:554e $21 $12 $00
    add  HL, DE                                        ;; 03:5551 $19
    ld   A, [HL+]                                      ;; 03:5552 $2a
    ld   H, [HL]                                       ;; 03:5553 $66
    ld   L, A                                          ;; 03:5554 $6f
    ld   A, [HL]                                       ;; 03:5555 $7e
    push DE                                            ;; 03:5556 $d5
    call code_000_0c86                                 ;; 03:5557 $cd $86 $0c
    pop  DE                                            ;; 03:555a $d1
    ld   A, $00                                        ;; 03:555b $3e $00
    ret                                                ;; 03:555d $c9

code_003_555e:
    cp   A, $00                                        ;; 03:555e $fe $00
    ret  NZ                                            ;; 03:5560 $c0
    ld   A, [DE]                                       ;; 03:5561 $1a
    ld   C, A                                          ;; 03:5562 $4f
    ld   HL, $0006                                     ;; 03:5563 $21 $06 $00
    add  HL, DE                                        ;; 03:5566 $19
    ld   A, [HL]                                       ;; 03:5567 $7e
    swap A                                             ;; 03:5568 $cb $37
    and  A, $0f                                        ;; 03:556a $e6 $0f
    ld   B, $00                                        ;; 03:556c $06 $00
    call code_000_0695                                 ;; 03:556e $cd $95 $06
    ld   A, $00                                        ;; 03:5571 $3e $00
    ret                                                ;; 03:5573 $c9

code_003_5574:
    call code_000_0c99                                 ;; 03:5574 $cd $99 $0c
    and  A, $0f                                        ;; 03:5577 $e6 $0f
    bit  $00, A                                        ;; 03:5579 $cb $47
    jr   NZ, .code_5588                                ;; 03:557b $20 $0b
    bit  $01, A                                        ;; 03:557d $cb $4f
    jr   NZ, .code_558b                                ;; 03:557f $20 $0a
    bit  $02, A                                        ;; 03:5581 $cb $57
    jr   NZ, .code_558e                                ;; 03:5583 $20 $09
    ld   A, $02                                        ;; 03:5585 $3e $02
    ret                                                ;; 03:5587 $c9
.code_5588:
    ld   A, $08                                        ;; 03:5588 $3e $08
    ret                                                ;; 03:558a $c9
.code_558b:
    ld   A, $04                                        ;; 03:558b $3e $04
    ret                                                ;; 03:558d $c9
.code_558e:
    ld   A, $01                                        ;; 03:558e $3e $01
    ret                                                ;; 03:5590 $c9

code_003_5591:
    call code_000_0c99                                 ;; 03:5591 $cd $99 $0c
    and  A, $0f                                        ;; 03:5594 $e6 $0f
    bit  $00, A                                        ;; 03:5596 $cb $47
    jr   NZ, .code_55a5                                ;; 03:5598 $20 $0b
    bit  $01, A                                        ;; 03:559a $cb $4f
    jr   NZ, .code_55a8                                ;; 03:559c $20 $0a
    bit  $02, A                                        ;; 03:559e $cb $57
    jr   NZ, .code_55ab                                ;; 03:55a0 $20 $09
    ld   A, $01                                        ;; 03:55a2 $3e $01
    ret                                                ;; 03:55a4 $c9
.code_55a5:
    ld   A, $04                                        ;; 03:55a5 $3e $04
    ret                                                ;; 03:55a7 $c9
.code_55a8:
    ld   A, $08                                        ;; 03:55a8 $3e $08
    ret                                                ;; 03:55aa $c9
.code_55ab:
    ld   A, $02                                        ;; 03:55ab $3e $02
    ret                                                ;; 03:55ad $c9

code_003_55ae:
    call code_000_0c99                                 ;; 03:55ae $cd $99 $0c
    and  A, $0f                                        ;; 03:55b1 $e6 $0f
    bit  $00, A                                        ;; 03:55b3 $cb $47
    jr   NZ, .code_55c2                                ;; 03:55b5 $20 $0b
    bit  $01, A                                        ;; 03:55b7 $cb $4f
    jr   NZ, .code_55c5                                ;; 03:55b9 $20 $0a
    bit  $02, A                                        ;; 03:55bb $cb $57
    jr   NZ, .code_55c8                                ;; 03:55bd $20 $09
    ld   A, $04                                        ;; 03:55bf $3e $04
    ret                                                ;; 03:55c1 $c9
.code_55c2:
    ld   A, $02                                        ;; 03:55c2 $3e $02
    ret                                                ;; 03:55c4 $c9
.code_55c5:
    ld   A, $01                                        ;; 03:55c5 $3e $01
    ret                                                ;; 03:55c7 $c9
.code_55c8:
    ld   A, $08                                        ;; 03:55c8 $3e $08
    ret                                                ;; 03:55ca $c9

code_003_55cb:
    ld   HL, $0002                                     ;; 03:55cb $21 $02 $00
    add  HL, DE                                        ;; 03:55ce $19
    ld   H, [HL]                                       ;; 03:55cf $66
    ld   A, $00                                        ;; 03:55d0 $3e $00
    cp   A, H                                          ;; 03:55d2 $bc
    ret  Z                                             ;; 03:55d3 $c8
    ld   L, $00                                        ;; 03:55d4 $2e $00
.code_55d6:
    inc  L                                             ;; 03:55d6 $2c
    cp   A, C                                          ;; 03:55d7 $b9
    jr   NC, .code_55dd                                ;; 03:55d8 $30 $03
    add  A, H                                          ;; 03:55da $84
    jr   .code_55d6                                    ;; 03:55db $18 $f9
.code_55dd:
    ld   A, L                                          ;; 03:55dd $7d
    ret                                                ;; 03:55de $c9

code_003_55df:
    dec  A                                             ;; 03:55df $3d
    push AF                                            ;; 03:55e0 $f5
    push DE                                            ;; 03:55e1 $d5
    ld   A, [DE]                                       ;; 03:55e2 $1a
    ld   C, A                                          ;; 03:55e3 $4f
    push BC                                            ;; 03:55e4 $c5
    call code_000_0c99                                 ;; 03:55e5 $cd $99 $0c
    and  A, $0f                                        ;; 03:55e8 $e6 $0f
    pop  BC                                            ;; 03:55ea $c1
    call code_000_0695                                 ;; 03:55eb $cd $95 $06
    pop  DE                                            ;; 03:55ee $d1
    pop  AF                                            ;; 03:55ef $f1
    bit  $00, A                                        ;; 03:55f0 $cb $47
    ret  Z                                             ;; 03:55f2 $c8
    push AF                                            ;; 03:55f3 $f5
    ld   A, $01                                        ;; 03:55f4 $3e $01
    call code_000_28bc                                 ;; 03:55f6 $cd $bc $28
    pop  AF                                            ;; 03:55f9 $f1
    ret                                                ;; 03:55fa $c9

code_003_55fb:
    or   A, $90                                        ;; 03:55fb $f6 $90
    push AF                                            ;; 03:55fd $f5
    push BC                                            ;; 03:55fe $c5
    call code_000_036f                                 ;; 03:55ff $cd $6f $03
    ld   A, B                                          ;; 03:5602 $78
    pop  BC                                            ;; 03:5603 $c1
    jr   NZ, .code_5639                                ;; 03:5604 $20 $33
    ld   D, A                                          ;; 03:5606 $57
    pop  AF                                            ;; 03:5607 $f1
    bit  $00, A                                        ;; 03:5608 $cb $47
    jr   NZ, .code_561c                                ;; 03:560a $20 $10
    bit  $01, A                                        ;; 03:560c $cb $4f
    jr   NZ, .code_5622                                ;; 03:560e $20 $12
    bit  $02, A                                        ;; 03:5610 $cb $57
    jr   NZ, .code_5628                                ;; 03:5612 $20 $14
    bit  $03, A                                        ;; 03:5614 $cb $5f
    jr   NZ, .code_562e                                ;; 03:5616 $20 $16
    ld   A, $00                                        ;; 03:5618 $3e $00
    jr   .code_563a                                    ;; 03:561a $18 $1e
.code_561c:
    bit  $00, D                                        ;; 03:561c $cb $42
    jr   Z, .code_563a                                 ;; 03:561e $28 $1a
    jr   .code_5632                                    ;; 03:5620 $18 $10
.code_5622:
    bit  $01, D                                        ;; 03:5622 $cb $4a
    jr   Z, .code_563a                                 ;; 03:5624 $28 $14
    jr   .code_5632                                    ;; 03:5626 $18 $0a
.code_5628:
    bit  $02, D                                        ;; 03:5628 $cb $52
    jr   Z, .code_563a                                 ;; 03:562a $28 $0e
    jr   .code_5632                                    ;; 03:562c $18 $04
.code_562e:
    bit  $03, D                                        ;; 03:562e $cb $5a
    jr   Z, .code_563a                                 ;; 03:5630 $28 $08
.code_5632:
    and  A, $0f                                        ;; 03:5632 $e6 $0f
    call code_000_0ca6                                 ;; 03:5634 $cd $a6 $0c
    xor  A, A                                          ;; 03:5637 $af
    ret                                                ;; 03:5638 $c9
.code_5639:
    pop  AF                                            ;; 03:5639 $f1
.code_563a:
    call code_000_0695                                 ;; 03:563a $cd $95 $06
    ret                                                ;; 03:563d $c9

data_003_563e:
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:563e ........
    db   $11, $08, $06, $06, $06, $07, $07, $07        ;; 03:5646 ........
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:564e ??.?..??
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:5656 ??.????.
    db   $11, $11, $11, $11, $11, $08, $06, $06        ;; 03:565e ????????
    db   $06, $07, $07, $07, $02, $02, $02, $02        ;; 03:5666 ????????
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:566e ????????
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:5676 ????????
    db   $07, $06, $07, $06, $07, $08, $04, $04        ;; 03:567e ........
    db   $04, $04, $04, $04, $04, $04, $0f, $0f        ;; 03:5686 ........
    db   $09, $09, $09, $09, $10, $10, $10, $10        ;; 03:568e ........
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:5696 ....?...
    db   $02, $02, $07, $06, $07, $06, $07, $08        ;; 03:569e ........
    db   $04, $04, $04, $04, $04, $04, $0f, $0f        ;; 03:56a6 ........
    db   $09, $09, $09, $09, $10, $10, $10, $10        ;; 03:56ae .....?.?
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:56b6 ?....???
    db   $07, $06, $07, $06, $07, $06, $07, $08        ;; 03:56be ........
    db   $04, $04, $04, $04, $04, $04, $04, $04        ;; 03:56c6 ........
    db   $07, $06, $07, $06, $07, $06, $07, $08        ;; 03:56ce .??.....
    db   $04, $04, $04, $04, $04, $04, $04, $10        ;; 03:56d6 ........
    db   $0a, $0a, $0a, $0a, $0a, $0b, $0b, $0b        ;; 03:56de ........
    db   $0b, $0b, $04, $04, $04, $04, $04, $0f        ;; 03:56e6 ........
    db   $06, $07, $0e, $04, $04, $0f, $0f, $0f        ;; 03:56ee ........
    db   $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b        ;; 03:56f6 ........
    db   $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b        ;; 03:56fe ????????
    db   $04, $04, $04, $04, $04, $02, $02, $0f        ;; 03:5706 ????????
    db   $02, $02, $06, $07, $0e, $0f, $0f, $0f        ;; 03:570e ????????
    db   $0a, $0a, $0a, $0b, $0a, $0b, $0b, $0b        ;; 03:5716 ????????
    db   $0b, $0b, $0b, $0b, $0b, $24, $24, $24        ;; 03:571e ????????
    db   $24, $48, $48, $48, $0e, $0e, $0e, $0e        ;; 03:5726 ????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b        ;; 03:572e ????????
    db   $24, $24, $24, $24, $24, $24, $0b, $0b        ;; 03:5736 ????????
    db   $0a, $0a, $0a, $0a, $0a, $24, $24, $24        ;; 03:573e ????????
    db   $24, $48, $48, $48, $0e, $0e, $0e, $0e        ;; 03:5746 ????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a        ;; 03:574e ????????
    db   $0a, $0a, $24, $24, $24, $24, $24, $24        ;; 03:5756 ????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b        ;; 03:575e ????????
    db   $64, $68, $68, $70, $64, $0e, $0e, $0e        ;; 03:5766 ????????
    db   $68, $69, $6a, $6b, $65, $65, $69, $69        ;; 03:576e ????????
    db   $65, $69, $78, $79, $70, $75, $74, $75        ;; 03:5776 ????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a        ;; 03:577e ????????
    db   $64, $68, $68, $70, $64, $0e, $0e, $0e        ;; 03:5786 ????????
    db   $68, $69, $6a, $6b, $65, $65, $69, $69        ;; 03:578e ????????
    db   $65, $69, $78, $79, $74, $75, $74, $75        ;; 03:5796 ????????
    db   $06, $07, $20, $20, $20, $20, $20, $20        ;; 03:579e ?.????..
    db   $20, $21, $21, $11, $11, $0f, $0f, $22        ;; 03:57a6 ????..?.
    db   $24, $24, $24, $06, $06, $06, $06, $07        ;; 03:57ae ????????
    db   $07, $07, $07, $11, $4a, $4b, $09, $0e        ;; 03:57b6 ????????
    db   $06, $07, $02, $02, $20, $20, $20, $20        ;; 03:57be ????????
    db   $20, $21, $21, $11, $11, $0f, $0f, $22        ;; 03:57c6 ????????
    db   $24, $24, $24, $06, $06, $06, $06, $07        ;; 03:57ce ????????
    db   $07, $07, $07, $11, $4a, $4b, $09, $0e        ;; 03:57d6 ????????
    db   $0f, $4c, $4d, $4e, $4f, $49, $4a, $4b        ;; 03:57de ........
    db   $48, $0f, $0f, $11, $54, $55, $54, $55        ;; 03:57e6 ........
    db   $0f, $0f, $0f, $06, $06, $06, $07, $07        ;; 03:57ee ........
    db   $07, $24, $24, $24, $10, $10, $09, $09        ;; 03:57f6 ..?.....
    db   $0f, $4c, $4d, $4e, $4f, $49, $4a, $4b        ;; 03:57fe ..?.....
    db   $48, $02, $02, $11, $4e, $4f, $4e, $4f        ;; 03:5806 ........
    db   $0f, $0f, $0f, $06, $06, $06, $07, $07        ;; 03:580e ?..?????
    db   $07, $24, $24, $24, $10, $10, $09, $09        ;; 03:5816 .???????
    db   $6c, $6d, $6e, $6f, $74, $75, $74, $75        ;; 03:581e ........
    db   $78, $79, $7a, $7b, $6e, $6f, $11, $0f        ;; 03:5826 ........
    db   $6c, $6d, $6e, $6f, $74, $75, $6e, $6f        ;; 03:582e .....??.
    db   $00, $00, $70, $69, $72, $73, $11, $09        ;; 03:5836 ??..?.?.
    db   $13, $13, $78, $79, $10, $10, $6c, $6d        ;; 03:583e ........
    db   $04, $7b, $7a, $06, $07, $11, $11, $0f        ;; 03:5846 ........
    db   $74, $75, $6e, $6f, $7b, $7a, $7b, $11        ;; 03:584e ??...???
    db   $11, $05, $70, $11, $0f, $06, $07, $09        ;; 03:5856 ??.???.?
    db   $13, $78, $79, $28, $28, $6c, $6d, $04        ;; 03:585e ????????
    db   $7b, $7a, $06, $07, $02, $02, $02, $0f        ;; 03:5866 ????????
    db   $74, $75, $6e, $6f, $7b, $7a, $7b, $02        ;; 03:586e ????????
    db   $02, $05, $70, $11, $0f, $06, $07, $09        ;; 03:5876 ????????
    db   $06, $07, $06, $07, $06, $07, $06, $08        ;; 03:587e .....?..
    db   $28, $28, $24, $24, $24, $24, $0f, $0f        ;; 03:5886 ..?..?.?
    db   $90, $90, $92, $93, $94, $95, $94, $95        ;; 03:588e ???????.
    db   $98, $99, $9a, $9b, $98, $99, $9a, $9b        ;; 03:5896 ??..???.
    db   $06, $07, $06, $07, $06, $07, $02, $02        ;; 03:589e ????????
    db   $02, $02, $24, $24, $24, $24, $0f, $0f        ;; 03:58a6 ????????
    db   $90, $90, $92, $93, $94, $95, $94, $95        ;; 03:58ae ????????
    db   $98, $99, $9a, $9b, $98, $99, $9a, $9b        ;; 03:58b6 ????????
    db   $10, $10, $06, $07, $06, $07, $06, $07        ;; 03:58be ????????
    db   $08, $24, $24, $28, $28, $28, $0f, $0f        ;; 03:58c6 ????????
    db   $d4, $d5, $d6, $d7, $d4, $d5, $d6, $d7        ;; 03:58ce ????????
    db   $d8, $d9, $da, $db, $dc, $dd, $de, $df        ;; 03:58d6 ????????
    db   $10, $10, $06, $07, $06, $07, $06, $02        ;; 03:58de ????????
    db   $02, $02, $02, $28, $28, $28, $0f, $0f        ;; 03:58e6 ????????
    db   $cc, $cd, $ce, $cf, $d4, $d5, $d6, $d7        ;; 03:58ee ????????
    db   $d8, $d9, $da, $db, $dc, $dd, $de, $df        ;; 03:58f6 ????????
    db   $b4, $b5, $06, $07, $06, $07, $06, $4c        ;; 03:58fe .....?..
    db   $4d, $24, $24, $28, $28, $28, $0f, $0f        ;; 03:5906 .?.??...
    db   $b0, $b0, $b2, $b3, $b4, $b5, $b4, $b5        ;; 03:590e ????????
    db   $b8, $b9, $ba, $bb, $b4, $b5, $b4, $b5        ;; 03:5916 .????.??
    db   $b4, $b5, $06, $07, $06, $07, $06, $02        ;; 03:591e ????????
    db   $02, $02, $02, $28, $28, $28, $0f, $0f        ;; 03:5926 ????????
    db   $b0, $b0, $b2, $b3, $b4, $b5, $b4, $b5        ;; 03:592e ????????
    db   $b8, $b9, $ba, $bb, $b4, $b5, $b4, $b5        ;; 03:5936 ????????
    db   $09, $09, $09, $09, $09, $09, $09, $09        ;; 03:593e ????????
    db   $0e, $0f, $06, $07, $74, $75, $6e, $6f        ;; 03:5946 ????????
    db   $6c, $6d, $6e, $6f, $70, $69, $72, $73        ;; 03:594e ????????
    db   $64, $65, $66, $67, $68, $69, $6a, $6b        ;; 03:5956 ????????
    db   $02, $02, $02, $02, $02, $02, $02, $06        ;; 03:595e ????????
    db   $07, $04, $04, $64, $65, $0e, $0e, $0e        ;; 03:5966 ????????
    db   $04, $04, $04, $04, $05, $06, $07, $08        ;; 03:596e ????????
    db   $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e        ;; 03:5976 ????????
    db   $04, $04, $06, $07, $06, $07, $04, $04        ;; 03:597e ????????
    db   $64, $65, $0e, $0e, $0e, $0e, $0e, $0e        ;; 03:5986 ????????
    db   $04, $04, $04, $04, $05, $06, $07, $08        ;; 03:598e ????????
    db   $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e        ;; 03:5996 ????????
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:599e ????????
    db   $11, $02, $02, $02, $02, $02, $02, $02        ;; 03:59a6 ????????
    db   $74, $75, $6e, $6f, $78, $79, $7a, $7b        ;; 03:59ae ????????
    db   $11, $11, $11, $11, $11, $11, $11, $11        ;; 03:59b6 ????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b        ;; 03:59be ????????
    db   $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b        ;; 03:59c6 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:59ce ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:59d6 ????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a        ;; 03:59de ????????
    db   $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a        ;; 03:59e6 ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:59ee ????????
    db   $10, $10, $10, $10, $10, $10, $10, $10        ;; 03:59f6 ????????

data_003_59fe:
    db   $10, $01, $01, $00, $10, $00, $00, $00        ;; 03:59fe ..?...?.
    db   $00, $00, $00, $00, $00, $00, $03, $ff        ;; 03:5a06 ??????..
    db   $01, $00, $ff, $00, $01, $ff, $00, $ff        ;; 03:5a0e ???????.
    db   $00, $00, $00, $00, $03, $ff, $01, $00        ;; 03:5a16 ????????
    db   $ff, $00, $14, $ff, $00, $1d, $00, $00        ;; 03:5a1e ????????
    db   $00, $00, $04, $ff, $01, $00, $ff, $00        ;; 03:5a26 ????????
    db   $1f, $ff, $00, $19, $00, $00, $00, $00        ;; 03:5a2e ????????
    db   $04, $ff, $01, $00, $ff, $00, $27, $ff        ;; 03:5a36 ????????
    db   $00, $18, $00, $00, $00, $00, $04, $ff        ;; 03:5a3e ????????
    db   $01, $00, $ff, $00, $23, $ff, $00, $1a        ;; 03:5a46 ????????
    db   $00, $00, $00, $00, $04, $ff, $01, $00        ;; 03:5a4e ????????
    db   $ff, $00, $2c, $ff, $00, $1b, $00, $00        ;; 03:5a56 ????????
    db   $00, $00, $04, $ff, $01, $00, $ff, $00        ;; 03:5a5e ????????
    db   $63, $ff, $00, $1c, $00, $00, $00, $00        ;; 03:5a66 ????????
    db   $04, $ff, $01, $00, $ff, $00, $01, $ff        ;; 03:5a6e ????????
    db   $ff, $ff, $00, $00, $00, $00, $04, $ff        ;; 03:5a76 ????????
    db   $01, $00, $ff, $00, $01, $ff, $ff, $ff        ;; 03:5a7e ????????
    db   $00, $00, $00, $00, $08, $01, $01, $00        ;; 03:5a86 ????????
    db   $fb, $00, $00, $00, $ff, $ff, $00, $00        ;; 03:5a8e ????????
    db   $00, $00, $05, $ff, $01, $00, $00, $00        ;; 03:5a96 ??..????
    db   $00, $05, $ff, $ff, $00, $00, $00, $00        ;; 03:5a9e ???.????
    db   $01, $01, $01, $00, $ff, $00, $00, $ff        ;; 03:5aa6 ..??..??
    db   $00, $ff, $00, $00, $00, $00, $01, $01        ;; 03:5aae ?.??????
    db   $01, $00, $ff, $00, $00, $ff, $00, $ff        ;; 03:5ab6 ???????.
    db   $00, $00, $00, $00, $01, $01, $01, $00        ;; 03:5abe ????????
    db   $ff, $00, $00, $ff, $00, $ff, $00, $00        ;; 03:5ac6 ????????
    db   $00, $00, $01, $01, $01, $00, $00, $00        ;; 03:5ace ????????
    db   $00, $00, $00, $ff, $00, $00, $00, $00        ;; 03:5ad6 ????????
    db   $08, $03, $01, $01, $00, $80, $0d, $02        ;; 03:5ade ..?.....
    db   $03, $03, $00, $00, $02, $02, $06, $01        ;; 03:5ae6 ?.?.....
    db   $02, $04, $00, $80, $0a, $01, $ff, $00        ;; 03:5aee ?.....?.
    db   $00, $00, $01, $02, $08, $02, $02, $00        ;; 03:5af6 ?.....?.
    db   $00, $90, $08, $02, $02, $00, $00, $00        ;; 03:5afe ....?.?.
    db   $01, $03, $0a, $01, $01, $04, $00, $80        ;; 03:5b06 ....?...
    db   $08, $01, $02, $ff, $00, $00, $01, $01        ;; 03:5b0e ..?.?...
    db   $09, $05, $02, $20, $00, $90, $0e, $03        ;; 03:5b16 ..?.....
    db   $01, $ff, $00, $01, $03, $04, $0a, $04        ;; 03:5b1e ?.?.....
    db   $03, $10, $05, $80, $14, $05, $02, $ff        ;; 03:5b26 ????.??.
    db   $00, $00, $0a, $05, $08, $06, $04, $20        ;; 03:5b2e ?.??????
    db   $00, $80, $12, $02, $03, $10, $00, $00        ;; 03:5b36 ?????.??
    db   $04, $05, $0a, $02, $04, $04, $00, $80        ;; 03:5b3e ??..?...
    db   $0d, $04, $02, $ff, $00, $01, $03, $04        ;; 03:5b46 ..?.?...
    db   $08, $03, $04, $10, $05, $20, $0c, $03        ;; 03:5b4e ????????
    db   $05, $ff, $00, $00, $05, $04, $0a, $05        ;; 03:5b56 ????????
    db   $04, $01, $90, $90, $14, $04, $03, $12        ;; 03:5b5e ????????
    db   $00, $00, $06, $07, $05, $04, $05, $04        ;; 03:5b66 ????????
    db   $00, $80, $0e, $03, $03, $ff, $00, $01        ;; 03:5b6e ????????
    db   $04, $05, $06, $04, $06, $20, $00, $90        ;; 03:5b76 ????????
    db   $15, $05, $04, $ff, $00, $01, $0a, $0a        ;; 03:5b7e ????????
    db   $0c, $07, $08, $01, $91, $80, $15, $03        ;; 03:5b86 ????????
    db   $01, $ff, $00, $00, $0f, $06, $04, $05        ;; 03:5b8e ????????
    db   $09, $02, $00, $b0, $11, $04, $08, $11        ;; 03:5b96 ????????
    db   $00, $01, $08, $0b, $06, $05, $0a, $04        ;; 03:5b9e ????????
    db   $80, $a0, $12, $04, $0c, $ff, $00, $00        ;; 03:5ba6 ????????
    db   $09, $0f, $06, $05, $0a, $04, $00, $90        ;; 03:5bae ????????
    db   $13, $02, $02, $ff, $00, $02, $09, $0c        ;; 03:5bb6 ????????
    db   $02, $08, $0a, $00, $00, $b0, $1d, $04        ;; 03:5bbe ????????
    db   $0f, $ff, $00, $01, $14, $0f, $0c, $08        ;; 03:5bc6 ????????
    db   $0a, $10, $05, $00, $2d, $0c, $19, $0e        ;; 03:5bce ????????
    db   $00, $02, $1b, $12, $08, $0a, $0b, $04        ;; 03:5bd6 ????????
    db   $00, $90, $1e, $08, $14, $03, $00, $00        ;; 03:5bde ????????
    db   $1e, $17, $07, $04, $0b, $20, $10, $a0        ;; 03:5be6 ????????
    db   $1f, $07, $0a, $07, $00, $00, $14, $14        ;; 03:5bee ????????
    db   $0a, $04, $0b, $00, $00, $90, $1b, $07        ;; 03:5bf6 ????????
    db   $10, $0f, $00, $01, $12, $1a, $06, $0a        ;; 03:5bfe ????????
    db   $13, $04, $00, $a0, $16, $0c, $12, $15        ;; 03:5c06 ????????
    db   $00, $00, $12, $23, $06, $06, $0f, $08        ;; 03:5c0e ????????
    db   $00, $b0, $16, $08, $0a, $17, $00, $02        ;; 03:5c16 ????????
    db   $02, $21, $03, $08, $0f, $00, $00, $b0        ;; 03:5c1e ????????
    db   $1e, $08, $08, $ff, $00, $00, $21, $14        ;; 03:5c26 ????????
    db   $08, $0a, $10, $04, $00, $90, $26, $0c        ;; 03:5c2e ????????
    db   $0b, $02, $00, $02, $28, $23, $0c, $0e        ;; 03:5c36 ????????
    db   $11, $04, $00, $80, $2b, $08, $0a, $01        ;; 03:5c3e ????????
    db   $00, $00, $24, $28, $10, $0f, $12, $08        ;; 03:5c46 ????????
    db   $05, $00, $2b, $0d, $0f, $08, $00, $04        ;; 03:5c4e ????????
    db   $1e, $19, $06, $0f, $13, $04, $00, $a0        ;; 03:5c56 ????????
    db   $28, $0f, $10, $15, $00, $00, $30, $28        ;; 03:5c5e ????????
    db   $04, $11, $14, $01, $95, $20, $31, $1e        ;; 03:5c66 ????????
    db   $07, $ff, $00, $02, $2d, $2d, $08, $0a        ;; 03:5c6e ????????
    db   $15, $04, $00, $80, $3a, $0d, $0f, $ff        ;; 03:5c76 ????????
    db   $00, $04, $28, $2f, $0a, $15, $16, $00        ;; 03:5c7e ????????
    db   $08, $90, $3f, $11, $1e, $13, $00, $01        ;; 03:5c86 ????????
    db   $32, $0a, $06, $10, $16, $04, $08, $b0        ;; 03:5c8e ????????
    db   $38, $0a, $23, $ff, $00, $00, $2f, $28        ;; 03:5c96 ????????
    db   $06, $10, $17, $20, $08, $a0, $37, $0a        ;; 03:5c9e ????????
    db   $20, $ff, $00, $00, $2a, $2f, $0a, $14        ;; 03:5ca6 ????????
    db   $15, $01, $91, $80, $3f, $14, $01, $ff        ;; 03:5cae ????????
    db   $00, $04, $20, $14, $0a, $12, $16, $20        ;; 03:5cb6 ????????
    db   $00, $90, $3c, $0a, $0f, $ff, $00, $01        ;; 03:5cbe ????????
    db   $38, $28, $04, $19, $1a, $10, $84, $30        ;; 03:5cc6 ????????
    db   $46, $14, $14, $ff, $00, $02, $50, $50        ;; 03:5cce ????????
    db   $05, $1e, $1b, $00, $38, $90, $3c, $12        ;; 03:5cd6 ????????
    db   $1e, $0c, $00, $00, $3e, $37, $08, $19        ;; 03:5cde ????????
    db   $1c, $10, $85, $00, $39, $1e, $0a, $ff        ;; 03:5ce6 ????????
    db   $00, $02, $50, $3c, $06, $1c, $1c, $08        ;; 03:5cee ????????
    db   $81, $d0, $34, $0a, $08, $ff, $00, $00        ;; 03:5cf6 ????????
    db   $78, $25, $0a, $10, $1d, $04, $00, $a0        ;; 03:5cfe ????????
    db   $3c, $19, $0c, $ff, $00, $00, $58, $46        ;; 03:5d06 ????????
    db   $06, $10, $1e, $04, $00, $90, $39, $14        ;; 03:5d0e ????????
    db   $14, $15, $00, $01, $47, $1f, $08, $19        ;; 03:5d16 ????????
    db   $20, $00, $00, $80, $43, $14, $1a, $09        ;; 03:5d1e ????????
    db   $00, $00, $53, $51, $04, $12, $1e, $08        ;; 03:5d26 ????????
    db   $78, $a0, $55, $0a, $13, $ff, $00, $08        ;; 03:5d2e ????????
    db   $41, $1e, $0c, $14, $20, $08, $01, $00        ;; 03:5d36 ????????
    db   $4d, $0f, $21, $0b, $00, $08, $64, $50        ;; 03:5d3e ????????
    db   $08, $17, $21, $04, $00, $80, $56, $12        ;; 03:5d46 ????????
    db   $14, $06, $00, $01, $60, $2d, $04, $14        ;; 03:5d4e ????????
    db   $21, $00, $78, $80, $50, $19, $27, $0b        ;; 03:5d56 ????????
    db   $00, $08, $6d, $46, $08, $19, $22, $00        ;; 03:5d5e ????????
    db   $80, $d0, $58, $19, $10, $11, $00, $02        ;; 03:5d66 ????????
    db   $82, $40, $03, $ff, $23, $00, $da, $f0        ;; 03:5d6e ??..????
    db   $63, $1f, $30, $11, $00, $00, $a0, $0a        ;; 03:5d76 ???.????
    db   $04, $17, $23, $08, $7c, $80, $5b, $28        ;; 03:5d7e ????????
    db   $28, $0f, $00, $00, $5a, $5a, $08, $13        ;; 03:5d86 ????????
    db   $24, $02, $08, $90, $55, $24, $28, $0c        ;; 03:5d8e ????????
    db   $00, $00, $7a, $5f, $0c, $01, $24, $04        ;; 03:5d96 ????????
    db   $3b, $b0, $72, $28, $2d, $ff, $00, $00        ;; 03:5d9e ????????
    db   $3f, $3c, $09, $10, $24, $80, $91, $90        ;; 03:5da6 ????????
    db   $62, $32, $1e, $ff, $00, $00, $5f, $64        ;; 03:5dae ????????
    db   $06, $14, $25, $04, $00, $b0, $5f, $1e        ;; 03:5db6 ????????
    db   $1e, $ff, $00, $01, $7c, $73, $0c, $19        ;; 03:5dbe ????????
    db   $26, $20, $10, $80, $66, $0f, $28, $0d        ;; 03:5dc6 ????????
    db   $00, $00, $69, $69, $06, $1e, $26, $04        ;; 03:5dce ????????
    db   $00, $90, $69, $31, $1e, $11, $00, $01        ;; 03:5dd6 ????????
    db   $7d, $78, $08, $12, $28, $00, $01, $90        ;; 03:5dde ????????
    db   $65, $19, $2a, $ff, $00, $08, $73, $78        ;; 03:5de6 ????????
    db   $06, $14, $28, $10, $05, $00, $4f, $28        ;; 03:5dee ????????
    db   $02, $ff, $00, $02, $a5, $96, $0c, $1b        ;; 03:5df6 ????????
    db   $29, $00, $78, $90, $5f, $23, $32, $ff        ;; 03:5dfe ????????
    db   $00, $04, $c7, $0a, $0a, $1d, $29, $20        ;; 03:5e06 ????????
    db   $00, $90, $71, $1e, $2f, $ff, $00, $01        ;; 03:5e0e ????????
    db   $88, $84, $04, $1e, $2a, $04, $80, $b0        ;; 03:5e16 ????????
    db   $69, $1e, $12, $ff, $00, $08, $82, $8c        ;; 03:5e1e ????????
    db   $0a, $14, $2c, $20, $0b, $d0, $63, $3c        ;; 03:5e26 ????????
    db   $14, $03, $00, $00, $78, $a5, $08, $28        ;; 03:5e2e ????????
    db   $2c, $40, $08, $10, $77, $28, $0a, $0c        ;; 03:5e36 ????????
    db   $00, $00, $e1, $82, $0c, $1b, $2d, $40        ;; 03:5e3e ????????
    db   $09, $00, $82, $40, $1a, $09, $00, $02        ;; 03:5e46 ????????
    db   $dc, $ae, $0a, $21, $2d, $10, $38, $80        ;; 03:5e4e ????????
    db   $79, $28, $21, $ff, $00, $02, $b9, $b4        ;; 03:5e56 ????????
    db   $0a, $23, $2f, $08, $b8, $00, $78, $2d        ;; 03:5e5e ????????
    db   $31, $04, $00, $00, $df, $c8, $08, $19        ;; 03:5e66 ????????
    db   $30, $20, $db, $d0, $6e, $43, $28, $05        ;; 03:5e6e ????????
    db   $00, $00, $be, $af, $04, $05, $31, $08        ;; 03:5e76 ????????
    db   $b8, $30, $64, $0a, $32, $ff, $00, $00        ;; 03:5e7e ????????
    db   $c8, $ba, $08, $1e, $2e, $08, $b8, $10        ;; 03:5e86 ????????
    db   $80, $1e, $23, $ff, $00, $04, $b2, $64        ;; 03:5e8e ????????
    db   $07, $20, $31, $08, $00, $90, $6a, $28        ;; 03:5e96 ????????
    db   $14, $12, $00, $01, $96, $ca, $0c, $24        ;; 03:5e9e ????????
    db   $32, $08, $38, $80, $64, $34, $28, $08        ;; 03:5ea6 ????????
    db   $00, $08, $f0, $e6, $0c, $28, $32, $04        ;; 03:5eae ????????
    db   $10, $c0, $7d, $32, $1e, $09, $00, $00        ;; 03:5eb6 ????????
    db   $f2, $78, $04, $1e, $32, $00, $88, $f0        ;; 03:5ebe ????????
    db   $70, $28, $28, $0a, $00, $00, $e6, $0a        ;; 03:5ec6 ????????
    db   $02, $50, $32, $00, $b8, $f0, $a0, $46        ;; 03:5ece ..??????
    db   $50, $16, $00, $00, $c8, $ff, $06, $24        ;; 03:5ed6 ?.??????
    db   $32, $20, $3c, $10, $7b, $49, $1e, $ff        ;; 03:5ede ????????
    db   $00, $02, $a5, $c8, $08, $01, $01, $00        ;; 03:5ee6 ????????
    db   $bf, $00, $00, $00, $0a, $ff, $00, $00        ;; 03:5eee ????????
    db   $00, $02, $08, $0e, $0a, $20, $00, $90        ;; 03:5ef6 ????????
    db   $0e, $0c, $09, $03, $00, $00, $02, $0b        ;; 03:5efe ???.????
    db   $0c, $19, $15, $20, $18, $00, $44, $19        ;; 03:5f06 ????????
    db   $13, $0c, $00, $00, $0c, $47, $06, $19        ;; 03:5f0e ????????
    db   $22, $20, $08, $10, $3c, $19, $0a, $ff        ;; 03:5f16 ????????
    db   $00, $00, $32, $32, $05, $ff, $01, $00        ;; 03:5f1e ????..??
    db   $ff, $00, $00, $05, $ff, $ff, $00, $00        ;; 03:5f26 ..???.??
    db   $00, $00, $0a, $ff, $01, $00, $ff, $00        ;; 03:5f2e ??..????
    db   $00, $05, $ff, $ff, $00, $00, $00, $00        ;; 03:5f36 ???.????
    db   $08, $03, $01, $01, $90, $00, $0d, $03        ;; 03:5f3e ????????
    db   $03, $03, $00, $00, $02, $02, $0a, $ff        ;; 03:5f46 ??????..
    db   $01, $00, $00, $00, $00, $05, $ff, $ff        ;; 03:5f4e ???????.
    db   $00, $00, $00, $00                            ;; 03:5f56 ????

unknown_003_5f5a:
    db   $a9, $00, $74, $02, $00, $36, $5a, $7b        ;; 03:5f5a ????????
    db   $93, $2c, $00, $00, $00, $00, $00, $00        ;; 03:5f62 ????????
    db   $00, $00, $00, $00, $3d, $00, $00, $00        ;; 03:5f6a ????????
    db   $d9, $01, $20, $08, $00, $50, $5a, $7b        ;; 03:5f72 ..??????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:5f7a ....????
    db   $05, $05, $05, $05, $02, $02, $00, $00        ;; 03:5f82 ?.....??
    db   $d9, $02, $20, $08, $00, $5b, $5a, $7b        ;; 03:5f8a ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:5f92 ????????
    db   $06, $06, $06, $06, $03, $02, $00, $00        ;; 03:5f9a ????????
    db   $d9, $03, $20, $08, $00, $54, $5a, $7b        ;; 03:5fa2 ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:5faa ????????
    db   $06, $06, $06, $06, $04, $02, $00, $00        ;; 03:5fb2 ????????
    db   $d9, $04, $20, $08, $00, $52, $5a, $7b        ;; 03:5fba ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:5fc2 ????????
    db   $06, $06, $06, $06, $05, $02, $00, $00        ;; 03:5fca ????????
    db   $d9, $05, $20, $08, $00, $55, $5a, $7b        ;; 03:5fd2 ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:5fda ????????
    db   $06, $06, $06, $06, $06, $02, $00, $00        ;; 03:5fe2 ????????
    db   $d9, $06, $20, $08, $00, $56, $5a, $7b        ;; 03:5fea ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:5ff2 ????????
    db   $06, $06, $06, $06, $ff, $01, $00, $00        ;; 03:5ffa ????????
    db   $d9, $07, $20, $08, $00, $57, $5a, $7b        ;; 03:6002 ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:600a ????????
    db   $06, $06, $06, $06, $00, $02, $00, $00        ;; 03:6012 ????????
    db   $d9, $08, $20, $08, $00, $59, $5a, $7b        ;; 03:601a ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:6022 ????????
    db   $05, $05, $05, $05, $70, $04, $00, $00        ;; 03:602a ????????
    db   $d9, $09, $20, $08, $00, $58, $5a, $7b        ;; 03:6032 ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:603a ????????
    db   $05, $05, $05, $05, $70, $04, $00, $00        ;; 03:6042 ????????
    db   $91, $25, $50, $08, $00, $a4, $5a, $7b        ;; 03:604a ????????
    db   $fe, $7c, $00, $01, $00, $00, $01, $00        ;; 03:6052 ????????
    db   $0f, $05, $05, $05, $3d, $00, $00, $00        ;; 03:605a ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6062 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:606a ????????
    db   $00, $00, $00, $00, $f1, $01, $00, $00        ;; 03:6072 ????????
    db   $87, $0c, $78, $02, $00, $1f, $5a, $7b        ;; 03:607a ........
    db   $ab, $2c, $00, $00, $00, $00, $00, $00        ;; 03:6082 ....????
    db   $00, $00, $00, $00, $0b, $00, $00, $00        ;; 03:608a .?....??
    db   $87, $0d, $78, $02, $00, $1f, $5a, $7b        ;; 03:6092 ?.......
    db   $ab, $2c, $00, $00, $00, $00, $00, $00        ;; 03:609a ????????
    db   $00, $00, $00, $00, $0f, $00, $00, $00        ;; 03:60a2 ????????
    db   $87, $0e, $78, $02, $00, $1f, $5a, $7b        ;; 03:60aa ????????
    db   $ab, $2c, $00, $00, $00, $00, $00, $00        ;; 03:60b2 ????????
    db   $00, $00, $00, $00, $13, $00, $00, $00        ;; 03:60ba ????????
    db   $a9, $00, $7c, $02, $00, $1f, $56, $7b        ;; 03:60c2 ..??????
    db   $c3, $2c, $00, $00, $00, $00, $00, $00        ;; 03:60ca ....????
    db   $00, $00, $00, $00, $3d, $00, $00, $00        ;; 03:60d2 ??..????
    db   $91, $10, $40, $04, $00, $80, $5a, $7b        ;; 03:60da ........
    db   $72, $7b, $00, $01, $00, $00, $00, $00        ;; 03:60e2 ....??.?
    db   $0d, $0e, $0d, $0d, $3d, $00, $38, $04        ;; 03:60ea ........
    db   $91, $11, $50, $06, $00, $90, $5a, $7b        ;; 03:60f2 ........
    db   $96, $7b, $00, $01, $02, $00, $00, $00        ;; 03:60fa .....???
    db   $0f, $10, $10, $10, $3d, $00, $00, $00        ;; 03:6102 .?....??
    db   $91, $12, $40, $08, $00, $9c, $5a, $7b        ;; 03:610a ........
    db   $b6, $7c, $00, $01, $00, $00, $00, $00        ;; 03:6112 ....??.?
    db   $02, $02, $03, $03, $3d, $00, $38, $04        ;; 03:611a .?......
    db   $91, $13, $50, $04, $80, $80, $5a, $7b        ;; 03:6122 ........
    db   $de, $7b, $00, $01, $01, $00, $00, $00        ;; 03:612a ....????
    db   $02, $02, $02, $02, $3d, $00, $00, $00        ;; 03:6132 .?......
    db   $93, $14, $40, $04, $00, $81, $5a, $7b        ;; 03:613a ........
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6142 ....????
    db   $12, $12, $0b, $0b, $3d, $00, $00, $00        ;; 03:614a ......??
    db   $91, $15, $50, $04, $80, $81, $5a, $7b        ;; 03:6152 ........
    db   $96, $7b, $01, $01, $00, $00, $00, $00        ;; 03:615a ....?.??
    db   $16, $16, $16, $16, $3d, $00, $4b, $04        ;; 03:6162 .?..????
    db   $91, $16, $60, $08, $00, $a0, $5a, $7b        ;; 03:616a ?.......
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6172 ????????
    db   $02, $02, $03, $03, $3d, $00, $3a, $04        ;; 03:617a ????????
    db   $91, $17, $50, $04, $00, $82, $5a, $7b        ;; 03:6182 ........
    db   $96, $7b, $00, $01, $01, $00, $01, $00        ;; 03:618a ....????
    db   $0d, $00, $0d, $0d, $3d, $00, $3c, $04        ;; 03:6192 .?....??
    db   $91, $18, $40, $06, $c0, $90, $5a, $7b        ;; 03:619a ????????
    db   $72, $7b, $00, $01, $00, $00, $02, $00        ;; 03:61a2 ????????
    db   $0f, $0d, $10, $10, $3d, $00, $43, $04        ;; 03:61aa ????????
    db   $91, $19, $50, $08, $00, $9d, $5a, $7b        ;; 03:61b2 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:61ba ????????
    db   $03, $02, $03, $03, $3d, $00, $42, $04        ;; 03:61c2 ????????
    db   $91, $1a, $40, $04, $80, $82, $5a, $7b        ;; 03:61ca ????????
    db   $46, $7d, $01, $02, $00, $00, $00, $00        ;; 03:61d2 ????????
    db   $16, $16, $16, $16, $3d, $00, $00, $00        ;; 03:61da ????????
    db   $91, $1b, $50, $04, $00, $83, $5a, $7b        ;; 03:61e2 ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:61ea ????????
    db   $0d, $0d, $07, $08, $3d, $00, $43, $04        ;; 03:61f2 ????????
    db   $91, $1c, $40, $06, $80, $91, $5a, $7b        ;; 03:61fa ????????
    db   $4a, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6202 ????????
    db   $05, $02, $05, $05, $3d, $00, $39, $04        ;; 03:620a ????????
    db   $91, $1d, $50, $08, $00, $9e, $5a, $7b        ;; 03:6212 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:621a ????????
    db   $02, $02, $07, $08, $3d, $00, $3a, $04        ;; 03:6222 ????????
    db   $91, $1e, $40, $06, $40, $92, $5a, $7b        ;; 03:622a ????????
    db   $6e, $7c, $00, $01, $02, $02, $00, $00        ;; 03:6232 ????????
    db   $18, $18, $18, $18, $3d, $00, $53, $04        ;; 03:623a ????????
    db   $91, $1f, $50, $06, $00, $93, $5a, $7b        ;; 03:6242 ????????
    db   $96, $7b, $01, $02, $00, $00, $00, $00        ;; 03:624a ????????
    db   $0b, $0b, $0d, $0d, $3d, $00, $47, $04        ;; 03:6252 ????????
    db   $93, $20, $40, $04, $80, $83, $5a, $7b        ;; 03:625a ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6262 ????????
    db   $0b, $0b, $0b, $0b, $3d, $00, $00, $00        ;; 03:626a ????????
    db   $93, $21, $50, $06, $c0, $93, $5a, $7b        ;; 03:6272 ????????
    db   $96, $7b, $00, $01, $01, $00, $02, $00        ;; 03:627a ????????
    db   $01, $03, $12, $12, $3d, $00, $40, $04        ;; 03:6282 ????????
    db   $91, $22, $40, $08, $00, $b0, $5a, $7b        ;; 03:628a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6292 ????????
    db   $02, $03, $03, $03, $3d, $00, $45, $04        ;; 03:629a ????????
    db   $91, $23, $50, $06, $80, $94, $5a, $7b        ;; 03:62a2 ????????
    db   $96, $7b, $00, $01, $01, $00, $02, $00        ;; 03:62aa ????????
    db   $0e, $0d, $0e, $0e, $3d, $00, $59, $04        ;; 03:62b2 ????????
    db   $91, $24, $40, $08, $00, $a1, $5a, $7b        ;; 03:62ba ????????
    db   $b6, $7c, $00, $01, $01, $00, $02, $00        ;; 03:62c2 ????????
    db   $03, $02, $03, $03, $3d, $00, $00, $00        ;; 03:62ca ????????
    db   $81, $0a, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:62d2 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:62da ????????
    db   $00, $00, $00, $00, $fa, $01, $00, $00        ;; 03:62e2 ????????
    db   $81, $0a, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:62ea ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:62f2 ????????
    db   $00, $00, $00, $00, $fb, $01, $00, $00        ;; 03:62fa ????????
    db   $81, $0a, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6302 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:630a ????????
    db   $00, $00, $00, $00, $fc, $01, $00, $00        ;; 03:6312 ????????
    db   $81, $0a, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:631a ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6322 ????????
    db   $00, $00, $00, $00, $fd, $01, $00, $00        ;; 03:632a ????????
    db   $91, $26, $60, $06, $80, $97, $5a, $7b        ;; 03:6332 ????????
    db   $ba, $7b, $00, $01, $00, $00, $02, $00        ;; 03:633a ????????
    db   $1b, $1b, $0f, $0f, $3d, $00, $45, $04        ;; 03:6342 ????????
    db   $91, $27, $50, $04, $80, $84, $5a, $7b        ;; 03:634a ????????
    db   $96, $7b, $00, $00, $01, $00, $00, $00        ;; 03:6352 ????????
    db   $0f, $10, $0f, $0f, $3d, $00, $00, $00        ;; 03:635a ????????
    db   $91, $28, $50, $0a, $00, $b3, $5a, $7b        ;; 03:6362 ????????
    db   $fa, $7d, $00, $01, $02, $00, $02, $00        ;; 03:636a ????????
    db   $02, $03, $03, $03, $3d, $00, $45, $04        ;; 03:6372 ????????
    db   $91, $29, $40, $06, $40, $95, $5a, $7b        ;; 03:637a ????????
    db   $72, $7b, $00, $01, $02, $02, $02, $02        ;; 03:6382 ????????
    db   $01, $00, $03, $03, $3d, $00, $00, $00        ;; 03:638a ????????
    db   $91, $2a, $40, $08, $00, $a3, $5a, $7b        ;; 03:6392 ????????
    db   $22, $7d, $00, $01, $01, $02, $02, $00        ;; 03:639a ????????
    db   $00, $00, $01, $01, $3d, $00, $4b, $04        ;; 03:63a2 ????????
    db   $91, $2b, $50, $08, $00, $a4, $5a, $7b        ;; 03:63aa ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:63b2 ????????
    db   $11, $05, $03, $03, $3d, $00, $3a, $04        ;; 03:63ba ????????
    db   $93, $2c, $60, $04, $80, $85, $5a, $7b        ;; 03:63c2 ????????
    db   $ba, $7b, $00, $01, $01, $00, $00, $00        ;; 03:63ca ????????
    db   $0b, $12, $12, $12, $3d, $00, $39, $04        ;; 03:63d2 ????????
    db   $91, $2d, $40, $04, $00, $86, $5a, $7b        ;; 03:63da ????????
    db   $72, $7b, $00, $01, $01, $01, $00, $00        ;; 03:63e2 ????????
    db   $0b, $0b, $0b, $0b, $3d, $00, $55, $04        ;; 03:63ea ????????
    db   $91, $2e, $50, $06, $00, $96, $5a, $7b        ;; 03:63f2 ????????
    db   $96, $7b, $00, $01, $01, $01, $02, $00        ;; 03:63fa ????????
    db   $01, $02, $01, $01, $3d, $00, $00, $00        ;; 03:6402 ????????
    db   $91, $2f, $60, $08, $00, $a5, $5a, $7b        ;; 03:640a ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6412 ????????
    db   $02, $02, $02, $02, $3d, $00, $44, $04        ;; 03:641a ????????
    db   $91, $31, $40, $04, $80, $86, $5a, $7b        ;; 03:6422 ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:642a ????????
    db   $02, $02, $05, $05, $3d, $00, $57, $04        ;; 03:6432 ????????
    db   $91, $30, $50, $0a, $40, $b4, $5a, $7b        ;; 03:643a ????????
    db   $fa, $7d, $00, $01, $01, $02, $02, $00        ;; 03:6442 ????????
    db   $05, $02, $02, $02, $3d, $00, $00, $00        ;; 03:644a ????????
    db   $91, $32, $50, $08, $00, $a6, $5a, $7b        ;; 03:6452 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:645a ????????
    db   $02, $02, $0d, $0d, $3d, $00, $00, $00        ;; 03:6462 ????????
    db   $91, $33, $60, $06, $c0, $96, $5a, $7b        ;; 03:646a ????????
    db   $6a, $7d, $00, $01, $01, $00, $00, $00        ;; 03:6472 ????????
    db   $16, $16, $07, $08, $3d, $00, $39, $04        ;; 03:647a ????????
    db   $91, $34, $58, $0c, $80, $b5, $5a, $7b        ;; 03:6482 ????????
    db   $1e, $7e, $00, $01, $01, $02, $02, $00        ;; 03:648a ????????
    db   $03, $13, $13, $13, $3d, $00, $58, $04        ;; 03:6492 ????????
    db   $91, $35, $50, $04, $00, $87, $5a, $7b        ;; 03:649a ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:64a2 ????????
    db   $0d, $0d, $14, $14, $3d, $00, $3e, $04        ;; 03:64aa ????????
    db   $91, $36, $60, $08, $00, $a2, $5a, $7b        ;; 03:64b2 ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:64ba ????????
    db   $00, $00, $07, $08, $3d, $00, $47, $04        ;; 03:64c2 ????????
    db   $91, $37, $40, $08, $00, $a8, $5a, $7b        ;; 03:64ca ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:64d2 ????????
    db   $02, $02, $02, $02, $3d, $00, $00, $00        ;; 03:64da ????????
    db   $91, $38, $50, $08, $00, $a7, $5a, $7b        ;; 03:64e2 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:64ea ????????
    db   $02, $02, $03, $03, $3d, $00, $00, $00        ;; 03:64f2 ????????
    db   $91, $39, $40, $08, $00, $a9, $5a, $7b        ;; 03:64fa ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6502 ????????
    db   $03, $03, $03, $03, $3d, $00, $3e, $04        ;; 03:650a ????????
    db   $91, $3a, $50, $04, $80, $87, $5a, $7b        ;; 03:6512 ????????
    db   $96, $7b, $01, $00, $00, $00, $00, $00        ;; 03:651a ????????
    db   $0f, $10, $0f, $0f, $3d, $00, $55, $04        ;; 03:6522 ????????
    db   $91, $3b, $40, $08, $00, $aa, $5a, $7b        ;; 03:652a ????????
    db   $d6, $7d, $00, $01, $01, $01, $00, $00        ;; 03:6532 ????????
    db   $0c, $0c, $12, $12, $3d, $00, $49, $04        ;; 03:653a ????????
    db   $91, $3c, $50, $08, $00, $ab, $5a, $7b        ;; 03:6542 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:654a ????????
    db   $03, $02, $03, $03, $3d, $00, $3a, $04        ;; 03:6552 ????????
    db   $91, $3d, $40, $0c, $80, $b8, $5a, $7b        ;; 03:655a ????????
    db   $42, $7e, $00, $01, $01, $02, $02, $00        ;; 03:6562 ????????
    db   $13, $12, $14, $14, $3d, $00, $49, $04        ;; 03:656a ????????
    db   $91, $3e, $58, $0c, $00, $ba, $5a, $7b        ;; 03:6572 ????????
    db   $8a, $7e, $00, $01, $01, $00, $00, $00        ;; 03:657a ????????
    db   $03, $02, $03, $03, $3d, $00, $3e, $04        ;; 03:6582 ????????
    db   $91, $3f, $40, $0c, $80, $bb, $5a, $7b        ;; 03:658a ........
    db   $ae, $7e, $00, $01, $01, $00, $00, $00        ;; 03:6592 ....????
    db   $06, $06, $07, $08, $3d, $00, $00, $00        ;; 03:659a ????????
    db   $91, $40, $40, $04, $00, $85, $5a, $7b        ;; 03:65a2 ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:65aa ????????
    db   $03, $02, $01, $01, $3d, $00, $67, $04        ;; 03:65b2 ????????
    db   $93, $41, $50, $04, $80, $89, $5a, $7b        ;; 03:65ba ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:65c2 ????????
    db   $0c, $0b, $0b, $0b, $3d, $00, $57, $04        ;; 03:65ca ????????
    db   $91, $42, $60, $04, $00, $89, $5a, $7b        ;; 03:65d2 ????????
    db   $ba, $7b, $00, $01, $01, $00, $00, $00        ;; 03:65da ????????
    db   $02, $02, $07, $08, $3d, $00, $5a, $04        ;; 03:65e2 ????????
    db   $91, $43, $40, $04, $80, $8a, $5a, $7b        ;; 03:65ea ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:65f2 ????????
    db   $0d, $0d, $0d, $0d, $3d, $00, $00, $00        ;; 03:65fa ????????
    db   $91, $44, $50, $04, $00, $8b, $5a, $7b        ;; 03:6602 ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:660a ????????
    db   $10, $02, $02, $02, $3d, $00, $00, $00        ;; 03:6612 ????????
    db   $91, $45, $60, $04, $00, $8a, $5a, $7b        ;; 03:661a ????????
    db   $ba, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6622 ????????
    db   $03, $02, $10, $10, $3d, $00, $58, $04        ;; 03:662a ????????
    db   $91, $46, $40, $08, $00, $ac, $5a, $7b        ;; 03:6632 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:663a ????????
    db   $02, $02, $01, $01, $3d, $00, $00, $00        ;; 03:6642 ????????
    db   $91, $47, $50, $04, $80, $8b, $5a, $7b        ;; 03:664a ????????
    db   $96, $7b, $00, $00, $01, $01, $00, $00        ;; 03:6652 ????????
    db   $0f, $10, $10, $10, $3d, $00, $49, $04        ;; 03:665a ????????
    db   $91, $48, $40, $06, $40, $98, $5a, $7b        ;; 03:6662 ????????
    db   $92, $7c, $00, $01, $01, $00, $00, $00        ;; 03:666a ????????
    db   $0b, $0b, $07, $08, $3d, $00, $00, $00        ;; 03:6672 ????????
    db   $93, $49, $50, $08, $00, $ad, $5a, $7b        ;; 03:667a ????????
    db   $fe, $7c, $00, $01, $01, $02, $00, $00        ;; 03:6682 ????????
    db   $0c, $0b, $14, $14, $3d, $00, $00, $00        ;; 03:668a ????????
    db   $93, $4a, $40, $04, $00, $8c, $5a, $7b        ;; 03:6692 ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:669a ????????
    db   $0d, $0d, $0d, $0d, $3d, $00, $52, $04        ;; 03:66a2 ????????
    db   $91, $4b, $50, $04, $80, $8c, $5a, $7b        ;; 03:66aa ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:66b2 ????????
    db   $0f, $10, $0f, $0f, $3d, $00, $56, $04        ;; 03:66ba ????????
    db   $91, $4c, $40, $08, $00, $ae, $5a, $7b        ;; 03:66c2 ????????
    db   $b6, $7c, $00, $01, $01, $02, $00, $01        ;; 03:66ca ????????
    db   $03, $02, $03, $03, $3d, $00, $3e, $04        ;; 03:66d2 ????????
    db   $91, $4d, $40, $04, $00, $8d, $5a, $7b        ;; 03:66da ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:66e2 ????????
    db   $0b, $0b, $0b, $0b, $3d, $00, $00, $00        ;; 03:66ea ????????
    db   $91, $4e, $50, $06, $00, $99, $5a, $7b        ;; 03:66f2 ????????
    db   $8e, $7d, $00, $01, $01, $00, $00, $00        ;; 03:66fa ????????
    db   $16, $16, $16, $16, $3d, $00, $49, $04        ;; 03:6702 ????????
    db   $91, $4f, $40, $04, $80, $8d, $5a, $7b        ;; 03:670a ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6712 ????????
    db   $0d, $0d, $0d, $0d, $3d, $00, $3e, $04        ;; 03:671a ????????
    db   $91, $50, $50, $06, $c0, $99, $5a, $7b        ;; 03:6722 ????????
    db   $b2, $7d, $00, $01, $01, $00, $00, $00        ;; 03:672a ????????
    db   $12, $12, $13, $13, $3d, $00, $4a, $04        ;; 03:6732 ????????
    db   $91, $51, $60, $04, $00, $8e, $5a, $7b        ;; 03:673a ????????
    db   $02, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6742 ????????
    db   $02, $02, $03, $03, $3d, $00, $52, $04        ;; 03:674a ????????
    db   $91, $52, $40, $04, $00, $8f, $5a, $7b        ;; 03:6752 ????????
    db   $26, $7c, $00, $01, $01, $00, $00, $00        ;; 03:675a ????????
    db   $02, $02, $07, $08, $3d, $00, $00, $00        ;; 03:6762 ????????
    db   $91, $53, $50, $0c, $00, $b7, $5a, $7b        ;; 03:676a ????????
    db   $66, $7e, $00, $01, $01, $00, $00, $00        ;; 03:6772 ????????
    db   $02, $02, $12, $12, $3d, $00, $49, $04        ;; 03:677a ????????
    db   $91, $54, $40, $08, $00, $af, $5a, $7b        ;; 03:6782 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:678a ????????
    db   $02, $02, $03, $03, $3d, $00, $3e, $04        ;; 03:6792 ????????
    db   $91, $55, $50, $04, $80, $8e, $5a, $7b        ;; 03:679a ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:67a2 ????????
    db   $03, $03, $12, $12, $3d, $00, $00, $00        ;; 03:67aa ????????
    db   $91, $56, $40, $04, $80, $88, $5a, $7b        ;; 03:67b2 ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:67ba ????????
    db   $03, $02, $0d, $0d, $3d, $00, $4d, $04        ;; 03:67c2 ????????
    db   $91, $57, $50, $08, $00, $b1, $5a, $7b        ;; 03:67ca ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:67d2 ????????
    db   $15, $02, $09, $0a, $3d, $00, $4e, $04        ;; 03:67da ????????
    db   $91, $58, $58, $0c, $00, $bd, $5a, $7b        ;; 03:67e2 ........
    db   $1e, $7e, $00, $01, $01, $00, $02, $00        ;; 03:67ea ...?????
    db   $0c, $13, $15, $15, $3d, $00, $00, $00        ;; 03:67f2 ????????
    db   $91, $59, $40, $04, $80, $8f, $5a, $7b        ;; 03:67fa ????????
    db   $72, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6802 ????????
    db   $14, $14, $14, $14, $3d, $00, $4f, $04        ;; 03:680a ????????
    db   $91, $5a, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6812 ????????
    db   $3e, $7f, $00, $01, $01, $00, $00, $00        ;; 03:681a ????????
    db   $00, $00, $00, $00, $e5, $01, $00, $00        ;; 03:6822 ????????
    db   $95, $5b, $60, $08, $00, $b2, $5a, $7b        ;; 03:682a ?.......
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6832 ????????
    db   $06, $13, $06, $06, $3d, $00, $00, $00        ;; 03:683a ????????
    db   $95, $5c, $60, $06, $40, $9b, $5a, $7b        ;; 03:6842 ????????
    db   $ba, $7b, $00, $01, $01, $02, $02, $02        ;; 03:684a ????????
    db   $01, $16, $17, $17, $3d, $00, $00, $00        ;; 03:6852 ????????
    db   $93, $5d, $60, $08, $00, $9f, $5a, $7b        ;; 03:685a ????????
    db   $da, $7c, $00, $01, $00, $00, $00, $00        ;; 03:6862 ????????
    db   $05, $05, $07, $08, $3d, $00, $00, $00        ;; 03:686a ????????
    db   $81, $5e, $60, $02, $80, $6d, $5a, $7b        ;; 03:6872 ........
    db   $86, $7f, $00, $00, $00, $00, $00, $00        ;; 03:687a ....????
    db   $00, $00, $00, $00, $56, $02, $00, $00        ;; 03:6882 ?.....??
    db   $81, $5e, $40, $08, $00, $5b, $5a, $7b        ;; 03:688a ????????
    db   $b6, $7c, $00, $01, $01, $00, $02, $00        ;; 03:6892 ????????
    db   $04, $04, $04, $04, $59, $02, $00, $00        ;; 03:689a ????????
    db   $81, $5f, $60, $08, $00, $55, $5a, $7b        ;; 03:68a2 ........
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:68aa ....????
    db   $04, $04, $04, $04, $61, $02, $00, $00        ;; 03:68b2 ?.?...??
    db   $91, $60, $40, $02, $c0, $6e, $5a, $7b        ;; 03:68ba ????????
    db   $72, $7b, $00, $00, $00, $00, $00, $00        ;; 03:68c2 ????????
    db   $00, $00, $00, $00, $26, $02, $00, $00        ;; 03:68ca ????????
    db   $81, $5e, $5c, $02, $40, $6d, $5a, $7b        ;; 03:68d2 ????????
    db   $d2, $7e, $00, $00, $00, $00, $00, $00        ;; 03:68da ????????
    db   $00, $00, $00, $00, $28, $02, $00, $00        ;; 03:68e2 ????????
    db   $81, $01, $20, $08, $00, $50, $5a, $7b        ;; 03:68ea ........
    db   $62, $7f, $00, $01, $01, $00, $00, $00        ;; 03:68f2 ....????
    db   $00, $00, $00, $00, $58, $02, $00, $00        ;; 03:68fa ?..?????
    db   $81, $5e, $40, $02, $40, $6e, $5a, $7b        ;; 03:6902 ????????
    db   $f6, $7e, $00, $00, $00, $00, $00, $00        ;; 03:690a ????????
    db   $00, $00, $00, $00, $07, $02, $00, $00        ;; 03:6912 ????????
    db   $81, $5e, $5c, $02, $80, $6e, $5a, $7b        ;; 03:691a ????????
    db   $d2, $7e, $00, $00, $00, $00, $00, $00        ;; 03:6922 ????????
    db   $00, $00, $00, $00, $fe, $01, $00, $00        ;; 03:692a ????????
    db   $81, $5f, $60, $08, $00, $52, $5a, $7b        ;; 03:6932 ........
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:693a ....????
    db   $04, $04, $04, $04, $57, $02, $00, $00        ;; 03:6942 ?..?..??
    db   $81, $5e, $40, $08, $00, $52, $5a, $7b        ;; 03:694a ????????
    db   $f6, $7e, $00, $00, $00, $00, $00, $00        ;; 03:6952 ????????
    db   $00, $00, $00, $00, $57, $02, $00, $00        ;; 03:695a ????????
    db   $81, $5f, $40, $08, $00, $69, $5a, $7b        ;; 03:6962 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:696a ????????
    db   $00, $00, $00, $00, $e0, $01, $00, $00        ;; 03:6972 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:697a ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6982 ????????
    db   $00, $00, $00, $00, $e3, $01, $00, $00        ;; 03:698a ????????
    db   $81, $5f, $60, $08, $00, $5a, $5a, $7b        ;; 03:6992 ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:699a ????????
    db   $04, $04, $04, $04, $5a, $02, $00, $00        ;; 03:69a2 ????????
    db   $81, $5e, $40, $08, $00, $5f, $5a, $7b        ;; 03:69aa ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:69b2 ????????
    db   $04, $04, $04, $04, $e6, $01, $00, $00        ;; 03:69ba ????????
    db   $81, $5e, $40, $08, $00, $54, $5a, $7b        ;; 03:69c2 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:69ca ????????
    db   $00, $00, $00, $00, $f8, $01, $00, $00        ;; 03:69d2 ????????
    db   $81, $5e, $5c, $02, $80, $6c, $5a, $7b        ;; 03:69da ????????
    db   $d2, $7e, $00, $00, $00, $00, $00, $00        ;; 03:69e2 ????????
    db   $00, $00, $00, $00, $f9, $01, $00, $00        ;; 03:69ea ????????
    db   $81, $5e, $40, $04, $c0, $6d, $5a, $7b        ;; 03:69f2 ????????
    db   $46, $7d, $00, $00, $00, $00, $00, $00        ;; 03:69fa ????????
    db   $00, $00, $00, $00, $17, $02, $00, $00        ;; 03:6a02 ????????
    db   $81, $5f, $40, $08, $00, $5d, $5a, $7b        ;; 03:6a0a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6a12 ????????
    db   $00, $00, $00, $00, $18, $02, $00, $00        ;; 03:6a1a ????????
    db   $81, $5e, $5c, $02, $00, $6f, $5a, $7b        ;; 03:6a22 ????????
    db   $d2, $7e, $00, $00, $00, $00, $00, $00        ;; 03:6a2a ????????
    db   $00, $00, $00, $00, $22, $02, $00, $00        ;; 03:6a32 ????????
    db   $81, $5f, $50, $04, $80, $6b, $5a, $7b        ;; 03:6a3a ????????
    db   $96, $7b, $00, $01, $01, $00, $00, $00        ;; 03:6a42 ????????
    db   $00, $00, $00, $00, $19, $02, $00, $00        ;; 03:6a4a ????????
    db   $81, $5e, $40, $08, $00, $5c, $5a, $7b        ;; 03:6a52 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6a5a ????????
    db   $04, $04, $04, $04, $2f, $02, $00, $00        ;; 03:6a62 ????????
    db   $81, $5f, $50, $08, $00, $60, $5a, $7b        ;; 03:6a6a ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6a72 ????????
    db   $00, $00, $00, $00, $31, $02, $00, $00        ;; 03:6a7a ????????
    db   $81, $5e, $40, $08, $00, $57, $5a, $7b        ;; 03:6a82 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6a8a ????????
    db   $04, $04, $04, $04, $3d, $02, $00, $00        ;; 03:6a92 ????????
    db   $81, $5f, $60, $08, $00, $65, $5a, $7b        ;; 03:6a9a ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6aa2 ????????
    db   $00, $00, $00, $00, $50, $02, $00, $00        ;; 03:6aaa ????????
    db   $81, $5e, $40, $08, $00, $51, $5a, $7b        ;; 03:6ab2 ........
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6aba ....????
    db   $04, $04, $04, $04, $65, $02, $00, $00        ;; 03:6ac2 ?.....??
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6aca ........
    db   $3e, $7f, $00, $01, $01, $00, $00, $00        ;; 03:6ad2 ..??????
    db   $00, $00, $00, $00, $5f, $02, $00, $00        ;; 03:6ada ????..??
    db   $81, $61, $50, $08, $00, $60, $5a, $7b        ;; 03:6ae2 ........
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6aea ....????
    db   $04, $04, $04, $04, $66, $02, $00, $00        ;; 03:6af2 ?.....??
    db   $81, $0b, $40, $08, $00, $5f, $5a, $7b        ;; 03:6afa ........
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b02 ....????
    db   $04, $04, $04, $04, $67, $02, $00, $00        ;; 03:6b0a ?.....??
    db   $81, $0b, $40, $08, $00, $61, $5a, $7b        ;; 03:6b12 ........
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b1a ....????
    db   $04, $04, $04, $04, $68, $02, $00, $00        ;; 03:6b22 ?.....??
    db   $81, $61, $50, $08, $00, $60, $5a, $7b        ;; 03:6b2a ........
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b32 ....????
    db   $04, $04, $04, $04, $69, $02, $00, $00        ;; 03:6b3a ?.....??
    db   $81, $61, $60, $08, $00, $64, $5a, $7b        ;; 03:6b42 ........
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b4a ....????
    db   $04, $04, $04, $04, $6a, $02, $00, $00        ;; 03:6b52 ?.?...??
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6b5a ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b62 ????????
    db   $04, $04, $04, $04, $e1, $01, $00, $00        ;; 03:6b6a ????????
    db   $81, $0b, $60, $08, $00, $66, $5a, $7b        ;; 03:6b72 ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b7a ????????
    db   $04, $04, $04, $04, $e2, $01, $00, $00        ;; 03:6b82 ????????
    db   $81, $61, $40, $08, $00, $60, $5a, $7b        ;; 03:6b8a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6b92 ????????
    db   $04, $04, $04, $04, $e9, $01, $00, $00        ;; 03:6b9a ????????
    db   $81, $0b, $40, $08, $00, $61, $5a, $7b        ;; 03:6ba2 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6baa ????????
    db   $04, $04, $04, $04, $ea, $01, $00, $00        ;; 03:6bb2 ????????
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6bba ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6bc2 ????????
    db   $04, $04, $04, $04, $eb, $01, $00, $00        ;; 03:6bca ????????
    db   $81, $0b, $50, $08, $00, $62, $5a, $7b        ;; 03:6bd2 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6bda ????????
    db   $04, $04, $04, $04, $ec, $01, $00, $00        ;; 03:6be2 ????????
    db   $81, $61, $60, $08, $00, $64, $5a, $7b        ;; 03:6bea ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6bf2 ????????
    db   $04, $04, $04, $04, $ed, $01, $00, $00        ;; 03:6bfa ????????
    db   $81, $0b, $40, $08, $00, $67, $5a, $7b        ;; 03:6c02 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c0a ????????
    db   $04, $04, $04, $04, $f2, $01, $00, $00        ;; 03:6c12 ????????
    db   $81, $61, $40, $08, $00, $67, $5a, $7b        ;; 03:6c1a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c22 ????????
    db   $04, $04, $04, $04, $f3, $01, $00, $00        ;; 03:6c2a ????????
    db   $81, $0b, $50, $08, $00, $67, $5a, $7b        ;; 03:6c32 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c3a ????????
    db   $04, $04, $04, $04, $f4, $01, $00, $00        ;; 03:6c42 ????????
    db   $81, $0b, $40, $08, $00, $67, $5a, $7b        ;; 03:6c4a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c52 ????????
    db   $04, $04, $04, $04, $f5, $01, $00, $00        ;; 03:6c5a ????????
    db   $81, $61, $50, $08, $00, $67, $5a, $7b        ;; 03:6c62 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c6a ????????
    db   $04, $04, $04, $04, $f6, $01, $00, $00        ;; 03:6c72 ????????
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6c7a ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c82 ????????
    db   $04, $04, $04, $04, $09, $02, $00, $00        ;; 03:6c8a ????????
    db   $81, $0b, $40, $08, $00, $5f, $5a, $7b        ;; 03:6c92 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6c9a ????????
    db   $04, $04, $04, $04, $0b, $02, $00, $00        ;; 03:6ca2 ????????
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6caa ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6cb2 ????????
    db   $04, $04, $04, $04, $0d, $02, $00, $00        ;; 03:6cba ????????
    db   $81, $0b, $60, $08, $00, $5f, $5a, $7b        ;; 03:6cc2 ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6cca ????????
    db   $04, $04, $04, $04, $0e, $02, $00, $00        ;; 03:6cd2 ????????
    db   $81, $61, $40, $08, $00, $64, $5a, $7b        ;; 03:6cda ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6ce2 ????????
    db   $04, $04, $04, $04, $11, $02, $00, $00        ;; 03:6cea ????????
    db   $81, $0b, $50, $08, $00, $61, $5a, $7b        ;; 03:6cf2 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6cfa ????????
    db   $04, $04, $04, $04, $12, $02, $00, $00        ;; 03:6d02 ????????
    db   $81, $0b, $40, $08, $00, $66, $5a, $7b        ;; 03:6d0a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d12 ????????
    db   $04, $04, $04, $04, $13, $02, $00, $00        ;; 03:6d1a ????????
    db   $81, $61, $50, $08, $00, $64, $5a, $7b        ;; 03:6d22 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d2a ????????
    db   $04, $04, $04, $04, $14, $02, $00, $00        ;; 03:6d32 ????????
    db   $81, $0b, $50, $08, $00, $60, $5a, $7b        ;; 03:6d3a ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d42 ????????
    db   $04, $04, $04, $04, $15, $02, $00, $00        ;; 03:6d4a ????????
    db   $81, $0b, $40, $08, $00, $62, $5a, $7b        ;; 03:6d52 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d5a ????????
    db   $04, $04, $04, $04, $16, $02, $00, $00        ;; 03:6d62 ????????
    db   $81, $0b, $60, $08, $00, $5e, $5a, $7b        ;; 03:6d6a ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d72 ????????
    db   $04, $04, $04, $04, $1a, $02, $00, $00        ;; 03:6d7a ????????
    db   $81, $61, $40, $08, $00, $64, $5a, $7b        ;; 03:6d82 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6d8a ????????
    db   $04, $04, $04, $04, $1b, $02, $00, $00        ;; 03:6d92 ????????
    db   $81, $0b, $50, $08, $00, $62, $5a, $7b        ;; 03:6d9a ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6da2 ????????
    db   $04, $04, $04, $04, $1c, $02, $00, $00        ;; 03:6daa ????????
    db   $81, $0b, $40, $08, $00, $61, $5a, $7b        ;; 03:6db2 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6dba ????????
    db   $04, $04, $04, $04, $1d, $02, $00, $00        ;; 03:6dc2 ????????
    db   $81, $0b, $50, $08, $00, $67, $5a, $7b        ;; 03:6dca ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6dd2 ????????
    db   $04, $04, $04, $04, $1e, $02, $00, $00        ;; 03:6dda ????????
    db   $81, $0b, $60, $08, $00, $63, $5a, $7b        ;; 03:6de2 ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6dea ????????
    db   $04, $04, $04, $04, $1f, $02, $00, $00        ;; 03:6df2 ????????
    db   $81, $0b, $40, $08, $00, $60, $5a, $7b        ;; 03:6dfa ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e02 ????????
    db   $04, $04, $04, $04, $20, $02, $00, $00        ;; 03:6e0a ????????
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6e12 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e1a ????????
    db   $04, $04, $04, $04, $21, $02, $00, $00        ;; 03:6e22 ????????
    db   $81, $61, $40, $08, $00, $64, $5a, $7b        ;; 03:6e2a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e32 ????????
    db   $04, $04, $04, $04, $30, $02, $00, $00        ;; 03:6e3a ????????
    db   $81, $0b, $50, $08, $00, $5f, $5a, $7b        ;; 03:6e42 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e4a ????????
    db   $04, $04, $04, $04, $33, $02, $00, $00        ;; 03:6e52 ????????
    db   $81, $0b, $40, $08, $00, $5f, $5a, $7b        ;; 03:6e5a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e62 ????????
    db   $04, $04, $04, $04, $34, $02, $00, $00        ;; 03:6e6a ????????
    db   $81, $61, $50, $08, $00, $60, $5a, $7b        ;; 03:6e72 ????????
    db   $fe, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e7a ????????
    db   $04, $04, $04, $04, $35, $02, $00, $00        ;; 03:6e82 ????????
    db   $81, $0b, $40, $08, $00, $5f, $5a, $7b        ;; 03:6e8a ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6e92 ????????
    db   $04, $04, $04, $04, $36, $02, $00, $00        ;; 03:6e9a ????????
    db   $81, $0b, $40, $08, $00, $61, $5a, $7b        ;; 03:6ea2 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6eaa ????????
    db   $04, $04, $04, $04, $37, $02, $00, $00        ;; 03:6eb2 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6eba ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6ec2 ????????
    db   $00, $00, $00, $00, $3e, $02, $00, $00        ;; 03:6eca ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6ed2 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6eda ????????
    db   $00, $00, $00, $00, $3f, $02, $00, $00        ;; 03:6ee2 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6eea ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6ef2 ????????
    db   $00, $00, $00, $00, $40, $02, $00, $00        ;; 03:6efa ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6f02 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6f0a ????????
    db   $00, $00, $00, $00, $41, $02, $00, $00        ;; 03:6f12 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6f1a ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6f22 ????????
    db   $00, $00, $00, $00, $42, $02, $00, $00        ;; 03:6f2a ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6f32 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6f3a ????????
    db   $00, $00, $00, $00, $43, $02, $00, $00        ;; 03:6f42 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6f4a ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6f52 ????????
    db   $00, $00, $00, $00, $44, $02, $00, $00        ;; 03:6f5a ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6f62 ????????
    db   $3e, $7f, $00, $00, $00, $00, $00, $00        ;; 03:6f6a ????????
    db   $00, $00, $00, $00, $45, $02, $00, $00        ;; 03:6f72 ????????
    db   $81, $5e, $50, $08, $00, $5f, $5a, $7b        ;; 03:6f7a ????????
    db   $d2, $7e, $01, $01, $01, $01, $01, $01        ;; 03:6f82 ????????
    db   $00, $00, $00, $00, $51, $02, $00, $00        ;; 03:6f8a ????????
    db   $81, $5e, $40, $08, $00, $5f, $5a, $7b        ;; 03:6f92 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6f9a ????????
    db   $04, $04, $04, $04, $52, $02, $00, $00        ;; 03:6fa2 ????????
    db   $81, $5e, $40, $08, $00, $5f, $5a, $7b        ;; 03:6faa ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6fb2 ????????
    db   $04, $04, $04, $04, $53, $02, $00, $00        ;; 03:6fba ????????
    db   $81, $5f, $40, $08, $00, $63, $5a, $7b        ;; 03:6fc2 ........
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6fca ....????
    db   $00, $00, $00, $00, $5d, $02, $00, $00        ;; 03:6fd2 ?..?????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:6fda ........
    db   $3e, $7f, $00, $01, $01, $00, $00, $00        ;; 03:6fe2 ....????
    db   $00, $00, $00, $00, $60, $02, $00, $00        ;; 03:6fea ?..?..??
    db   $81, $5f, $40, $08, $00, $50, $5a, $7b        ;; 03:6ff2 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:6ffa ????????
    db   $00, $00, $00, $00, $58, $02, $00, $00        ;; 03:7002 ????????
    db   $81, $5e, $6e, $01, $c0, $6f, $5a, $7b        ;; 03:700a ........
    db   $3e, $7f, $00, $01, $01, $00, $00, $00        ;; 03:7012 ....????
    db   $00, $00, $00, $00, $5e, $02, $00, $00        ;; 03:701a ??.?..??
    db   $81, $02, $20, $08, $00, $5b, $5a, $7b        ;; 03:7022 ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:702a ????????
    db   $02, $02, $02, $02, $59, $02, $00, $00        ;; 03:7032 ????????
    db   $81, $04, $20, $08, $00, $52, $5a, $7b        ;; 03:703a ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:7042 ????????
    db   $02, $02, $02, $02, $57, $02, $00, $00        ;; 03:704a ????????
    db   $81, $05, $20, $08, $00, $55, $5a, $7b        ;; 03:7052 ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:705a ????????
    db   $02, $02, $02, $02, $3d, $00, $00, $00        ;; 03:7062 ????????
    db   $81, $06, $20, $08, $00, $56, $5a, $7b        ;; 03:706a ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:7072 ????????
    db   $02, $02, $02, $02, $3d, $00, $00, $00        ;; 03:707a ????????
    db   $81, $07, $20, $08, $00, $57, $5a, $7b        ;; 03:7082 ????????
    db   $62, $7f, $00, $01, $01, $01, $01, $00        ;; 03:708a ????????
    db   $02, $02, $02, $02, $3d, $00, $00, $00        ;; 03:7092 ????????
    db   $81, $08, $20, $08, $00, $59, $5a, $7b        ;; 03:709a ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:70a2 ????????
    db   $02, $02, $02, $02, $72, $04, $00, $00        ;; 03:70aa ????????
    db   $81, $09, $50, $08, $00, $58, $5a, $7b        ;; 03:70b2 ????????
    db   $fe, $7c, $00, $01, $00, $01, $00, $00        ;; 03:70ba ????????
    db   $00, $00, $00, $00, $72, $04, $00, $00        ;; 03:70c2 ????????
    db   $81, $09, $20, $08, $00, $58, $5a, $7b        ;; 03:70ca ????????
    db   $62, $7f, $00, $01, $01, $01, $00, $00        ;; 03:70d2 ????????
    db   $02, $02, $02, $02, $72, $04, $00, $00        ;; 03:70da ????????
    db   $81, $5e, $50, $02, $40, $6b, $5a, $7b        ;; 03:70e2 ????????
    db   $96, $7b, $00, $00, $00, $00, $00, $00        ;; 03:70ea ????????
    db   $00, $00, $00, $00, $58, $02, $00, $00        ;; 03:70f2 ????????
    db   $81, $5f, $40, $04, $40, $6f, $5a, $7b        ;; 03:70fa ????????
    db   $46, $7d, $00, $01, $00, $00, $00, $00        ;; 03:7102 ????????
    db   $00, $00, $00, $00, $3d, $00, $00, $00        ;; 03:710a ????????
    db   $81, $5e, $40, $08, $00, $6a, $5a, $7b        ;; 03:7112 ????????
    db   $b6, $7c, $00, $01, $01, $00, $00, $00        ;; 03:711a ????????
    db   $04, $04, $04, $04, $5d, $02, $00, $00        ;; 03:7122 ????????
    db   $91, $3f, $60, $08, $00, $53, $5a, $7b        ;; 03:712a ????????
    db   $da, $7c, $00, $01, $01, $00, $00, $00        ;; 03:7132 ????????
    db   $06, $03, $07, $08, $3d, $00, $00, $00        ;; 03:713a ????????

data_003_7142:
    db   $40, $74, $48, $74, $18, $75, $50, $74        ;; 03:7142 ........
    db   $58, $74, $58, $74, $60, $74, $68, $74        ;; 03:714a ........
    db   $70, $74, $60, $74, $80, $74, $78, $74        ;; 03:7152 ........
    db   $88, $74, $90, $74, $0e, $75, $98, $74        ;; 03:715a ????????
    db   $a0, $74, $fa, $74, $a8, $74, $b0, $74        ;; 03:7162 ????????
    db   $04, $75, $b8, $74, $c0, $74, $f0, $74        ;; 03:716a ????????
    db   $c8, $74, $d0, $74, $18, $75, $d8, $74        ;; 03:7172 ????????
    db   $e0, $74, $e0, $74, $e8, $74, $42, $75        ;; 03:717a ????????
    db   $3a, $75, $52, $75, $52, $75, $4a, $75        ;; 03:7182 ????????
    db   $5a, $75, $62, $75, $6a, $75, $72, $75        ;; 03:718a ????????
    db   $7a, $75, $82, $75, $8a, $75, $8a, $75        ;; 03:7192 ????????
    db   $92, $75, $8a, $75, $9a, $75, $a2, $75        ;; 03:719a ????????
    db   $8a, $75, $b2, $75, $ba, $75, $a8, $74        ;; 03:71a2 ????????
    db   $a8, $74, $aa, $75, $c2, $75, $ca, $75        ;; 03:71aa ????????
    db   $28, $75, $d2, $75, $da, $75, $28, $75        ;; 03:71b2 ????????
    db   $e2, $75, $ea, $75, $ba, $75, $e2, $75        ;; 03:71ba ????????
    db   $e2, $75, $0e, $75, $f0, $74, $f2, $75        ;; 03:71c2 ????????
    db   $fa, $75, $02, $76, $0c, $76, $0c, $76        ;; 03:71ca ????????
    db   $16, $76, $1e, $76, $26, $76, $2e, $76        ;; 03:71d2 ????????
    db   $36, $76, $3e, $76, $46, $76, $4e, $76        ;; 03:71da ????????
    db   $3e, $76, $56, $76, $5e, $76, $3e, $76        ;; 03:71e2 ????????
    db   $66, $76, $6e, $76, $20, $75, $76, $76        ;; 03:71ea ????????
    db   $6e, $76, $20, $75, $7e, $76, $86, $76        ;; 03:71f2 ????????
    db   $ba, $75, $8e, $76, $96, $76, $9e, $76        ;; 03:71fa ????????
    db   $04, $75, $a6, $76, $ae, $76, $b6, $76        ;; 03:7202 ????????
    db   $be, $76, $9e, $76, $c6, $76, $ce, $76        ;; 03:720a ????????
    db   $9e, $76, $e0, $76, $e0, $76, $d6, $76        ;; 03:7212 ????????
    db   $38, $77, $38, $77, $e8, $76, $92, $78        ;; 03:721a ........
    db   $92, $78, $56, $77, $9a, $77, $1a, $77        ;; 03:7222 ....????
    db   $1a, $77, $42, $77, $f2, $76, $f2, $76        ;; 03:722a ??......
    db   $7c, $77, $f2, $76, $02, $7b, $4c, $77        ;; 03:7232 ??????..
    db   $4c, $77, $e8, $76, $8e, $7a, $58, $74        ;; 03:723a ........
    db   $e8, $76, $a2, $78, $9a, $78, $ba, $78        ;; 03:7242 ........
    db   $aa, $78, $b2, $78, $b8, $77, $08, $79        ;; 03:724a ......??
    db   $10, $79, $10, $79, $00, $79, $00, $79        ;; 03:7252 ????????
    db   $00, $79, $18, $79, $20, $79, $20, $79        ;; 03:725a ????????
    db   $08, $78, $26, $78, $e8, $76, $d6, $77        ;; 03:7262 ????????
    db   $c2, $78, $ca, $78, $ea, $77, $8e, $7a        ;; 03:726a ????????
    db   $8e, $7a, $d2, $78, $ee, $78, $f8, $78        ;; 03:7272 ????????
    db   $dc, $78, $e6, $78, $30, $75, $fe, $77        ;; 03:727a ????????
    db   $30, $75, $30, $75, $30, $75, $30, $75        ;; 03:7282 ????????
    db   $30, $75, $06, $77, $a4, $77, $f4, $77        ;; 03:728a ????????
    db   $48, $79, $50, $79, $30, $75, $58, $79        ;; 03:7292 ????????
    db   $60, $79, $30, $75, $70, $79, $68, $79        ;; 03:729a ????????
    db   $30, $75, $80, $79, $88, $79, $78, $79        ;; 03:72a2 ????????
    db   $90, $79, $98, $79, $a0, $79, $a8, $79        ;; 03:72aa ????????
    db   $b0, $79, $b0, $79, $44, $78, $44, $78        ;; 03:72b2 ????????
    db   $4e, $78, $28, $79, $28, $79, $28, $79        ;; 03:72ba ????????
    db   $30, $79, $38, $79, $40, $79, $3a, $78        ;; 03:72c2 ????????
    db   $58, $78, $62, $78, $68, $77, $72, $77        ;; 03:72ca ????????
    db   $72, $77, $e8, $79, $f2, $79, $fc, $79        ;; 03:72d2 ????????
    db   $06, $7a, $10, $7a, $1a, $7a, $24, $7a        ;; 03:72da ????????
    db   $2e, $7a, $2e, $7a, $42, $7a, $38, $7a        ;; 03:72e2 ????????
    db   $88, $78, $4a, $7a, $38, $7a, $38, $7a        ;; 03:72ea ????????
    db   $b8, $79, $c0, $79, $30, $75, $c8, $79        ;; 03:72f2 ????????
    db   $d0, $79, $30, $75, $30, $75, $e4, $7a        ;; 03:72fa ????????
    db   $6c, $78, $d8, $79, $e0, $79, $30, $75        ;; 03:7302 ????????
    db   $c2, $77, $76, $78, $30, $75, $2e, $77        ;; 03:730a ????????
    db   $ee, $7a, $ee, $7a, $1c, $78, $02, $7b        ;; 03:7312 ????????
    db   $12, $78, $cc, $77, $cc, $77, $cc, $77        ;; 03:731a ????????
    db   $30, $78, $b6, $7a, $dc, $7a, $5e, $77        ;; 03:7322 ????????
    db   $5e, $77, $5e, $77, $f8, $7a, $f8, $7a        ;; 03:732a ????????
    db   $f8, $7a, $a2, $7a, $ac, $7a, $e8, $76        ;; 03:7332 ????????
    db   $52, $7a, $7a, $7a, $7a, $7a, $66, $7a        ;; 03:733a ........
    db   $70, $7a, $70, $7a, $80, $78, $30, $75        ;; 03:7342 ....????
    db   $30, $75, $30, $75, $30, $75, $f4, $77        ;; 03:734a ????????
    db   $7c, $77, $0c, $7b, $b8, $77, $28, $7b        ;; 03:7352 ??????..
    db   $32, $7b, $3c, $7b, $30, $75, $d6, $77        ;; 03:735a ....????
    db   $e0, $77, $5c, $7a, $84, $7a, $84, $7a        ;; 03:7362 ??......
    db   $10, $77, $86, $77, $86, $77, $06, $77        ;; 03:736a ????????
    db   $86, $77, $86, $77, $18, $7b, $46, $7b        ;; 03:7372 ????????
    db   $46, $7b, $2c, $74, $b0, $74, $36, $74        ;; 03:737a ????????
    db   $90, $77, $30, $75, $fc, $76, $c0, $7a        ;; 03:7382 ????????
    db   $c0, $7a, $c0, $7a, $9a, $77, $a4, $77        ;; 03:738a ????????
    db   $a4, $77, $16, $74, $16, $74, $16, $74        ;; 03:7392 ????????
    db   $f8, $73, $02, $74, $0c, $74, $ca, $7a        ;; 03:739a ????????
    db   $ca, $7a, $d2, $7a, $ee, $73, $ee, $73        ;; 03:73a2 ????????
    db   $ee, $73, $e4, $73, $44, $78, $44, $78        ;; 03:73aa ????????
    db   $c0, $7a, $da, $73, $da, $73, $20, $74        ;; 03:73b2 ????????
    db   $20, $74, $20, $74, $d0, $73, $d0, $73        ;; 03:73ba ????????
    db   $d0, $73, $ae, $77, $ae, $77, $ae, $77        ;; 03:73c2 ????????
    db   $24, $77, $24, $77, $24, $77, $01, $01        ;; 03:73ca ????????
    db   $bd, $bd, $bd, $bd, $09, $06, $80, $80        ;; 03:73d2 ????????
    db   $01, $01, $b9, $b9, $b9, $b9, $10, $06        ;; 03:73da ????????
    db   $80, $80, $01, $01, $95, $95, $95, $95        ;; 03:73e2 ????????
    db   $12, $04, $80, $80, $01, $01, $6f, $6f        ;; 03:73ea ????????
    db   $6f, $6f, $0c, $04, $80, $80, $01, $01        ;; 03:73f2 ????????
    db   $75, $75, $75, $75, $00, $07, $80, $80        ;; 03:73fa ????????
    db   $01, $01, $76, $76, $76, $76, $0a, $06        ;; 03:7402 ????????
    db   $80, $80, $01, $01, $69, $69, $69, $69        ;; 03:740a ????????
    db   $0a, $08, $80, $80, $01, $01, $0b, $0b        ;; 03:7412 ????????
    db   $0b, $0b, $09, $0a, $80, $80, $02, $02        ;; 03:741a ????????
    db   $3f, $3f, $3f, $3f, $0c, $0c, $06, $0c        ;; 03:7422 ????????
    db   $80, $80, $01, $01, $0f, $0f, $0f, $0f        ;; 03:742a ????????
    db   $0a, $08, $80, $80, $01, $01, $00, $00        ;; 03:7432 ????????
    db   $00, $00, $08, $08, $80, $80, $01, $02        ;; 03:743a ??????..
    db   $10, $10, $10, $10, $80, $80, $01, $02        ;; 03:7442 ........
    db   $11, $11, $11, $11, $80, $80, $01, $02        ;; 03:744a ........
    db   $12, $12, $12, $12, $80, $80, $01, $03        ;; 03:7452 ........
    db   $13, $13, $13, $13, $80, $80, $00, $02        ;; 03:745a ........
    db   $14, $14, $14, $14, $80, $80, $01, $02        ;; 03:7462 ..?.....
    db   $15, $15, $15, $15, $80, $80, $01, $01        ;; 03:746a .?.?..??
    db   $16, $16, $16, $16, $80, $80, $02, $03        ;; 03:7472 ?.?.????
    db   $16, $16, $16, $16, $80, $80, $01, $02        ;; 03:747a ..????..
    db   $17, $17, $17, $17, $80, $80, $01, $03        ;; 03:7482 ......??
    db   $18, $18, $18, $18, $80, $80, $01, $02        ;; 03:748a ????????
    db   $19, $19, $19, $19, $80, $80, $01, $02        ;; 03:7492 ????????
    db   $1a, $1a, $1a, $1a, $80, $80, $01, $01        ;; 03:749a ????????
    db   $1b, $1b, $1b, $1b, $80, $80, $01, $03        ;; 03:74a2 ????????
    db   $1c, $1c, $1c, $1c, $80, $80, $01, $02        ;; 03:74aa ????????
    db   $1d, $1d, $1d, $1d, $80, $80, $01, $02        ;; 03:74b2 ????????
    db   $1e, $1e, $1e, $1e, $80, $80, $01, $01        ;; 03:74ba ????????
    db   $1f, $1f, $1f, $1f, $80, $80, $02, $03        ;; 03:74c2 ????????
    db   $20, $20, $20, $20, $80, $80, $00, $02        ;; 03:74ca ????????
    db   $21, $21, $21, $21, $80, $80, $01, $02        ;; 03:74d2 ????????
    db   $22, $22, $22, $22, $80, $80, $01, $02        ;; 03:74da ????????
    db   $23, $23, $23, $23, $80, $80, $02, $03        ;; 03:74e2 ????????
    db   $24, $24, $24, $24, $80, $80, $01, $01        ;; 03:74ea ????????
    db   $25, $25, $25, $25, $09, $ff, $80, $80        ;; 03:74f2 ????????
    db   $01, $01, $26, $26, $26, $26, $09, $0e        ;; 03:74fa ????????
    db   $80, $80, $01, $01, $27, $27, $27, $27        ;; 03:7502 ????????
    db   $12, $07, $80, $80, $01, $01, $28, $28        ;; 03:750a ????????
    db   $28, $28, $00, $07, $80, $80, $01, $02        ;; 03:7512 ????????
    db   $5e, $5e, $5e, $5e, $80, $80, $01, $03        ;; 03:751a ....????
    db   $5f, $5f, $5f, $5f, $80, $80, $01, $01        ;; 03:7522 ????????
    db   $60, $60, $60, $60, $80, $80, $01, $01        ;; 03:752a ????????
    db   $5d, $5d, $5d, $5d, $0e, $0a, $80, $80        ;; 03:7532 ????????
    db   $01, $01, $29, $29, $29, $29, $80, $80        ;; 03:753a ????????
    db   $01, $02, $2a, $2a, $2a, $2a, $80, $80        ;; 03:7542 ????????
    db   $01, $02, $2b, $2b, $2b, $2b, $80, $80        ;; 03:754a ????????
    db   $01, $01, $2c, $2c, $2c, $2c, $80, $80        ;; 03:7552 ????????
    db   $01, $03, $2d, $2d, $2d, $2d, $80, $80        ;; 03:755a ????????
    db   $01, $02, $2e, $2e, $2e, $2e, $80, $80        ;; 03:7562 ????????
    db   $01, $02, $2f, $2f, $2f, $2f, $80, $80        ;; 03:756a ????????
    db   $01, $02, $30, $30, $30, $30, $80, $80        ;; 03:7572 ????????
    db   $01, $01, $31, $31, $31, $31, $80, $80        ;; 03:757a ????????
    db   $01, $02, $32, $32, $32, $32, $80, $80        ;; 03:7582 ????????
    db   $02, $03, $33, $33, $33, $33, $80, $80        ;; 03:758a ????????
    db   $01, $01, $34, $34, $34, $34, $80, $80        ;; 03:7592 ????????
    db   $01, $02, $35, $35, $35, $35, $80, $80        ;; 03:759a ????????
    db   $01, $02, $36, $36, $36, $36, $80, $80        ;; 03:75a2 ????????
    db   $01, $02, $37, $37, $37, $37, $80, $80        ;; 03:75aa ????????
    db   $01, $01, $38, $38, $38, $38, $80, $80        ;; 03:75b2 ????????
    db   $01, $02, $39, $39, $39, $39, $80, $80        ;; 03:75ba ????????
    db   $01, $01, $3a, $3a, $3a, $3a, $80, $80        ;; 03:75c2 ????????
    db   $01, $02, $3b, $3b, $3b, $3b, $80, $80        ;; 03:75ca ????????
    db   $01, $01, $3c, $3c, $3c, $3c, $80, $80        ;; 03:75d2 ????????
    db   $01, $02, $3d, $3d, $3d, $3d, $80, $80        ;; 03:75da ????????
    db   $01, $02, $3e, $3e, $3e, $3e, $80, $80        ;; 03:75e2 ????????
    db   $01, $01, $3f, $3f, $3f, $3f, $80, $80        ;; 03:75ea ????????
    db   $01, $02, $40, $40, $40, $40, $80, $80        ;; 03:75f2 ????????
    db   $02, $02, $41, $41, $41, $41, $80, $80        ;; 03:75fa ????????
    db   $01, $01, $42, $42, $42, $42, $0a, $07        ;; 03:7602 ????????
    db   $80, $80, $01, $01, $be, $be, $be, $be        ;; 03:760a ????????
    db   $0a, $07, $80, $80, $01, $02, $43, $43        ;; 03:7612 ????????
    db   $43, $43, $80, $80, $01, $01, $44, $44        ;; 03:761a ????????
    db   $44, $44, $80, $80, $01, $03, $45, $45        ;; 03:7622 ????????
    db   $45, $45, $80, $80, $01, $02, $46, $46        ;; 03:762a ????????
    db   $46, $46, $80, $80, $01, $02, $47, $47        ;; 03:7632 ????????
    db   $47, $47, $80, $80, $01, $02, $48, $48        ;; 03:763a ????????
    db   $48, $48, $80, $80, $01, $02, $49, $49        ;; 03:7642 ????????
    db   $49, $49, $80, $80, $01, $02, $4a, $4a        ;; 03:764a ????????
    db   $4a, $4a, $80, $80, $01, $02, $4b, $4b        ;; 03:7652 ????????
    db   $4b, $4b, $80, $80, $01, $02, $4c, $4c        ;; 03:765a ????????
    db   $4c, $4c, $80, $80, $01, $02, $4d, $4d        ;; 03:7662 ????????
    db   $4d, $4d, $80, $80, $01, $01, $4e, $4e        ;; 03:766a ????????
    db   $4e, $4e, $80, $80, $01, $02, $4f, $4f        ;; 03:7672 ????????
    db   $4f, $4f, $80, $80, $01, $02, $50, $50        ;; 03:767a ????????
    db   $50, $50, $80, $80, $01, $03, $51, $51        ;; 03:7682 ????????
    db   $51, $51, $80, $80, $01, $03, $52, $52        ;; 03:768a ????????
    db   $52, $52, $80, $80, $01, $02, $53, $53        ;; 03:7692 ????????
    db   $53, $53, $80, $80, $01, $03, $54, $54        ;; 03:769a ????????
    db   $54, $54, $80, $80, $01, $02, $55, $55        ;; 03:76a2 ????????
    db   $55, $55, $80, $80, $01, $02, $56, $56        ;; 03:76aa ????????
    db   $56, $56, $80, $80, $01, $02, $57, $57        ;; 03:76b2 ????????
    db   $57, $57, $80, $80, $01, $02, $58, $58        ;; 03:76ba ????????
    db   $58, $58, $80, $80, $01, $02, $59, $59        ;; 03:76c2 ????????
    db   $59, $59, $80, $80, $01, $02, $5a, $5a        ;; 03:76ca ????????
    db   $5a, $5a, $80, $80, $01, $01, $5b, $5b        ;; 03:76d2 ????????
    db   $5b, $5b, $0a, $07, $80, $80, $01, $03        ;; 03:76da ????????
    db   $5c, $5c, $5c, $5c, $80, $80, $01, $01        ;; 03:76e2 ??????..
    db   $61, $61, $61, $61, $08, $0a, $80, $80        ;; 03:76ea ?..?..??
    db   $01, $01, $5b, $5b, $5b, $5b, $0c, $0c        ;; 03:76f2 ..?..?..
    db   $80, $80, $01, $01, $5b, $5b, $5b, $5b        ;; 03:76fa ????????
    db   $00, $08, $80, $80, $01, $01, $62, $62        ;; 03:7702 ????????
    db   $62, $62, $09, $0c, $80, $80, $01, $01        ;; 03:770a ????????
    db   $5b, $5b, $5b, $5b, $09, $0c, $80, $80        ;; 03:7712 ????????
    db   $01, $01, $5b, $5b, $5b, $5b, $08, $09        ;; 03:771a ????????
    db   $80, $80, $03, $03, $5b, $5b, $5b, $5b        ;; 03:7722 ????????
    db   $09, $04, $80, $80, $01, $01, $b3, $b3        ;; 03:772a ????????
    db   $b3, $b3, $09, $06, $80, $80, $01, $01        ;; 03:7732 ????????
    db   $42, $42, $42, $42, $09, $00, $80, $80        ;; 03:773a ???.????
    db   $01, $01, $42, $42, $42, $42, $0a, $0c        ;; 03:7742 ...???..
    db   $80, $80, $01, $01, $42, $42, $42, $42        ;; 03:774a ??..?.?.
    db   $12, $07, $80, $80, $01, $01, $63, $63        ;; 03:7752 ..??...?
    db   $63, $63, $80, $80, $01, $01, $b5, $b5        ;; 03:775a ??..????
    db   $b5, $b5, $09, $07, $80, $80, $01, $01        ;; 03:7762 ????????
    db   $64, $64, $64, $64, $0a, $08, $80, $80        ;; 03:776a ????????
    db   $01, $01, $65, $65, $65, $65, $0a, $08        ;; 03:7772 ????????
    db   $80, $80, $01, $01, $b1, $b1, $b1, $b1        ;; 03:777a ????????
    db   $0a, $0c, $80, $80, $01, $01, $b1, $b1        ;; 03:7782 ????????
    db   $b1, $b1, $08, $0e, $80, $80, $01, $01        ;; 03:778a ????????
    db   $67, $67, $67, $67, $0a, $06, $80, $80        ;; 03:7792 ????????
    db   $01, $01, $b1, $b1, $b1, $b1, $0a, $09        ;; 03:779a ????????
    db   $80, $80, $01, $01, $68, $68, $68, $68        ;; 03:77a2 ????????
    db   $09, $03, $80, $80, $01, $01, $68, $68        ;; 03:77aa ????????
    db   $68, $68, $0a, $0a, $80, $80, $01, $01        ;; 03:77b2 ??????..
    db   $69, $69, $69, $69, $04, $02, $80, $80        ;; 03:77ba ...?..??
    db   $01, $01, $6a, $6a, $6a, $6a, $0c, $03        ;; 03:77c2 ????????
    db   $80, $80, $01, $01, $b4, $b4, $b4, $b4        ;; 03:77ca ????????
    db   $06, $07, $80, $80, $01, $01, $6b, $6b        ;; 03:77d2 ????????
    db   $6b, $6b, $10, $07, $80, $80, $01, $01        ;; 03:77da ????????
    db   $0a, $0a, $0a, $0a, $10, $07, $80, $80        ;; 03:77e2 ????????
    db   $01, $01, $6c, $6c, $6c, $6c, $0a, $0a        ;; 03:77ea ????????
    db   $80, $80, $01, $01, $6d, $6d, $6d, $6d        ;; 03:77f2 ????????
    db   $0a, $06, $80, $80, $01, $01, $6e, $6e        ;; 03:77fa ????????
    db   $6e, $6e, $0a, $08, $80, $80, $01, $01        ;; 03:7802 ????????
    db   $6f, $6f, $6f, $6f, $0e, $08, $80, $80        ;; 03:780a ????????
    db   $01, $01, $03, $03, $03, $03, $0a, $0a        ;; 03:7812 ????????
    db   $80, $80, $01, $01, $6f, $6f, $6f, $6f        ;; 03:781a ????????
    db   $0a, $0a, $80, $80, $01, $01, $70, $70        ;; 03:7822 ????????
    db   $70, $70, $00, $06, $80, $80, $01, $01        ;; 03:782a ????????
    db   $71, $71, $71, $71, $0c, $06, $80, $80        ;; 03:7832 ????????
    db   $01, $01, $72, $72, $72, $72, $09, $04        ;; 03:783a ????????
    db   $80, $80, $01, $01, $73, $73, $73, $73        ;; 03:7842 ????????
    db   $0c, $08, $80, $80, $01, $01, $bc, $bc        ;; 03:784a ????????
    db   $bc, $bc, $0e, $08, $80, $80, $01, $01        ;; 03:7852 ????????
    db   $74, $74, $74, $74, $0e, $04, $80, $80        ;; 03:785a ????????
    db   $01, $01, $b6, $b6, $b6, $b6, $0e, $04        ;; 03:7862 ????????
    db   $80, $80, $01, $01, $75, $75, $75, $75        ;; 03:786a ????????
    db   $04, $02, $80, $80, $01, $01, $76, $76        ;; 03:7872 ????????
    db   $76, $76, $02, $0c, $80, $80, $01, $01        ;; 03:787a ????????
    db   $77, $77, $77, $77, $80, $80, $01, $01        ;; 03:7882 ????????
    db   $78, $78, $78, $78, $09, $04, $80, $80        ;; 03:788a ????????
    db   $01, $01, $79, $79, $79, $79, $80, $80        ;; 03:7892 ..?.??..
    db   $01, $01, $7b, $7b, $7b, $7b, $80, $80        ;; 03:789a ........
    db   $01, $01, $7c, $7c, $7c, $7c, $80, $80        ;; 03:78a2 ...?....
    db   $01, $01, $7d, $7d, $7d, $7d, $80, $80        ;; 03:78aa ...??...
    db   $01, $01, $7e, $7e, $7e, $7e, $80, $80        ;; 03:78b2 ..?.....
    db   $01, $01, $7f, $7f, $7f, $7f, $80, $80        ;; 03:78ba ........
    db   $01, $01, $80, $80, $80, $80, $80, $80        ;; 03:78c2 ????????
    db   $01, $01, $81, $81, $81, $81, $80, $80        ;; 03:78ca ????????
    db   $01, $01, $82, $82, $82, $82, $0c, $0c        ;; 03:78d2 ????????
    db   $80, $80, $01, $01, $83, $83, $83, $83        ;; 03:78da ????????
    db   $0a, $06, $80, $80, $01, $01, $84, $84        ;; 03:78e2 ????????
    db   $84, $84, $80, $80, $01, $01, $85, $85        ;; 03:78ea ????????
    db   $85, $85, $04, $06, $80, $80, $01, $01        ;; 03:78f2 ????????
    db   $86, $86, $86, $86, $80, $80, $01, $01        ;; 03:78fa ????????
    db   $87, $87, $87, $87, $80, $80, $01, $01        ;; 03:7902 ????????
    db   $88, $88, $88, $88, $80, $80, $01, $01        ;; 03:790a ????????
    db   $89, $89, $89, $89, $80, $80, $01, $01        ;; 03:7912 ????????
    db   $8a, $8a, $8a, $8a, $80, $80, $01, $01        ;; 03:791a ????????
    db   $8b, $8b, $8b, $8b, $80, $80, $01, $01        ;; 03:7922 ????????
    db   $8c, $8c, $8c, $8c, $80, $80, $01, $01        ;; 03:792a ????????
    db   $8d, $8d, $8d, $8d, $80, $80, $01, $01        ;; 03:7932 ????????
    db   $8e, $8e, $8e, $8e, $80, $80, $01, $01        ;; 03:793a ????????
    db   $8f, $8f, $8f, $8f, $80, $80, $01, $01        ;; 03:7942 ????????
    db   $90, $90, $90, $90, $80, $80, $01, $01        ;; 03:794a ????????
    db   $91, $91, $91, $91, $80, $80, $01, $01        ;; 03:7952 ????????
    db   $92, $92, $92, $92, $80, $80, $01, $01        ;; 03:795a ????????
    db   $93, $93, $93, $93, $80, $80, $01, $01        ;; 03:7962 ????????
    db   $94, $94, $94, $94, $80, $80, $01, $01        ;; 03:796a ????????
    db   $95, $95, $95, $95, $80, $80, $01, $01        ;; 03:7972 ????????
    db   $96, $96, $96, $96, $80, $80, $01, $01        ;; 03:797a ????????
    db   $97, $97, $97, $97, $80, $80, $01, $01        ;; 03:7982 ????????
    db   $98, $98, $98, $98, $80, $80, $01, $01        ;; 03:798a ????????
    db   $99, $99, $99, $99, $80, $80, $01, $01        ;; 03:7992 ????????
    db   $9a, $9a, $9a, $9a, $80, $80, $01, $01        ;; 03:799a ????????
    db   $9b, $9b, $9b, $9b, $80, $80, $01, $01        ;; 03:79a2 ????????
    db   $9c, $9c, $9c, $9c, $80, $80, $01, $01        ;; 03:79aa ????????
    db   $9d, $9d, $9d, $9d, $80, $80, $01, $01        ;; 03:79b2 ????????
    db   $9e, $9e, $9e, $9e, $80, $80, $01, $01        ;; 03:79ba ????????
    db   $9f, $9f, $9f, $9f, $80, $80, $01, $01        ;; 03:79c2 ????????
    db   $a0, $a0, $a0, $a0, $80, $80, $01, $01        ;; 03:79ca ????????
    db   $a1, $a1, $a1, $a1, $80, $80, $01, $01        ;; 03:79d2 ????????
    db   $a2, $a2, $a2, $a2, $80, $80, $01, $01        ;; 03:79da ????????
    db   $a3, $a3, $a3, $a3, $80, $80, $01, $01        ;; 03:79e2 ????????
    db   $a4, $a4, $a4, $a4, $09, $04, $80, $80        ;; 03:79ea ????????
    db   $01, $01, $a5, $a5, $a5, $a5, $09, $04        ;; 03:79f2 ????????
    db   $80, $80, $01, $01, $a6, $a6, $a6, $a6        ;; 03:79fa ????????
    db   $09, $06, $80, $80, $01, $01, $a7, $a7        ;; 03:7a02 ????????
    db   $a7, $a7, $09, $06, $80, $80, $01, $01        ;; 03:7a0a ????????
    db   $a8, $a8, $a8, $a8, $09, $02, $80, $80        ;; 03:7a12 ????????
    db   $01, $01, $a9, $a9, $a9, $a9, $09, $02        ;; 03:7a1a ????????
    db   $80, $80, $01, $01, $aa, $aa, $aa, $aa        ;; 03:7a22 ????????
    db   $09, $06, $80, $80, $01, $01, $ab, $ab        ;; 03:7a2a ????????
    db   $ab, $ab, $09, $06, $80, $80, $01, $01        ;; 03:7a32 ????????
    db   $ac, $ac, $ac, $ac, $06, $07, $80, $80        ;; 03:7a3a ????????
    db   $01, $01, $ad, $ad, $ad, $ad, $80, $80        ;; 03:7a42 ????????
    db   $01, $01, $ae, $ae, $ae, $ae, $80, $80        ;; 03:7a4a ????????
    db   $01, $01, $af, $af, $af, $af, $0d, $04        ;; 03:7a52 ..?..?..
    db   $80, $80, $01, $01, $af, $af, $af, $af        ;; 03:7a5a ??..?.??
    db   $09, $04, $80, $80, $01, $01, $af, $af        ;; 03:7a62 ..??..??
    db   $af, $af, $09, $08, $80, $80, $01, $01        ;; 03:7a6a ?...??..
    db   $7a, $7a, $7a, $7a, $09, $0a, $80, $80        ;; 03:7a72 ??....??
    db   $01, $01, $b0, $b0, $b0, $b0, $0d, $06        ;; 03:7a7a ....?...
    db   $80, $80, $01, $01, $b2, $b2, $b2, $b2        ;; 03:7a82 ??..??..
    db   $09, $06, $80, $80, $01, $01, $66, $66        ;; 03:7a8a ..??..?.
    db   $66, $66, $0a, $0a, $80, $80, $01, $01        ;; 03:7a92 ??..????
    db   $af, $af, $af, $af, $09, $0c, $80, $80        ;; 03:7a9a ????????
    db   $01, $01, $ba, $ba, $ba, $ba, $12, $07        ;; 03:7aa2 ????????
    db   $80, $80, $01, $01, $ba, $ba, $ba, $ba        ;; 03:7aaa ????????
    db   $00, $07, $80, $80, $01, $01, $ba, $ba        ;; 03:7ab2 ????????
    db   $ba, $ba, $0c, $06, $80, $80, $01, $01        ;; 03:7aba ????????
    db   $b8, $b8, $b8, $b8, $fe, $00, $80, $80        ;; 03:7ac2 ????????
    db   $01, $01, $b8, $b8, $b8, $b8, $80, $80        ;; 03:7aca ????????
    db   $01, $01, $b8, $b8, $b8, $b8, $0e, $08        ;; 03:7ad2 ????????
    db   $80, $80, $01, $01, $ba, $ba, $ba, $ba        ;; 03:7ada ????????
    db   $80, $80, $01, $01, $b8, $b8, $b8, $b8        ;; 03:7ae2 ????????
    db   $04, $04, $80, $80, $01, $01, $63, $63        ;; 03:7aea ????????
    db   $63, $63, $09, $00, $80, $80, $01, $01        ;; 03:7af2 ????????
    db   $b7, $b7, $b7, $b7, $09, $07, $80, $80        ;; 03:7afa ????????
    db   $01, $01, $bb, $bb, $bb, $bb, $0a, $07        ;; 03:7b02 ????????
    db   $80, $80, $02, $02, $bb, $bb, $bb, $bb        ;; 03:7b0a ????????
    db   $0a, $07, $09, $0e, $80, $80, $04, $04        ;; 03:7b12 ????????
    db   $2e, $2e, $2e, $2e, $02, $04, $02, $06        ;; 03:7b1a ????????
    db   $02, $08, $02, $0a, $80, $80, $01, $01        ;; 03:7b22 ????????
    db   $0c, $0c, $0c, $0c, $09, $07, $80, $80        ;; 03:7b2a ?.??????
    db   $01, $01, $0c, $0c, $0c, $0c, $0a, $08        ;; 03:7b32 ..?.??..
    db   $80, $80, $01, $01, $0d, $0d, $0d, $0d        ;; 03:7b3a ?????.??
    db   $0c, $08, $80, $80, $04, $04, $0f, $0f        ;; 03:7b42 ????????
    db   $0f, $0f, $06, $04, $06, $0a, $0c, $0a        ;; 03:7b4a ????????
    db   $0c, $04, $80, $80, $04, $02, $05, $03        ;; 03:7b52 ????????
    db   $00, $02, $01, $03, $04, $06, $05, $07        ;; 03:7b5a ........
    db   $08, $0a, $09, $0b, $0c, $0e, $0d, $0f        ;; 03:7b62 ........
    db   $10, $12, $11, $13, $14, $16, $15, $17        ;; 03:7b6a ........
    db   $30, $42, $40, $10, $40, $42, $10, $40        ;; 03:7b72 ...ATT..
    db   $42, $10, $40, $42, $30, $46, $44, $10        ;; 03:7b7a ....ATTA
    db   $44, $46, $10, $44, $46, $10, $44, $46        ;; 03:7b82 TTATTATT
    db   $30, $4a, $48, $10, $48, $4a, $10, $48        ;; 03:7b8a ????????
    db   $4a, $10, $48, $4a, $30, $52, $50, $10        ;; 03:7b92 ????....
    db   $50, $52, $10, $50, $52, $10, $50, $52        ;; 03:7b9a ........
    db   $30, $56, $54, $10, $54, $56, $10, $54        ;; 03:7ba2 ATTATTAT
    db   $56, $10, $54, $56, $30, $5a, $58, $10        ;; 03:7baa TATTATTA
    db   $58, $5a, $10, $58, $5a, $10, $58, $5a        ;; 03:7bb2 TT???ATT
    db   $30, $62, $60, $10, $60, $62, $10, $60        ;; 03:7bba ????????
    db   $62, $10, $60, $62, $30, $66, $64, $10        ;; 03:7bc2 ????????
    db   $64, $66, $10, $64, $66, $10, $64, $66        ;; 03:7bca ????????
    db   $30, $6a, $68, $10, $68, $6a, $10, $68        ;; 03:7bd2 ????????
    db   $6a, $10, $68, $6a, $10, $50, $52, $10        ;; 03:7bda ????....
    db   $50, $52, $10, $54, $56, $10, $50, $52        ;; 03:7be2 .....ATT
    db   $30, $52, $50, $30, $52, $50, $30, $56        ;; 03:7bea ATTATTAT
    db   $54, $30, $52, $50, $10, $54, $56, $10        ;; 03:7bf2 TATT????
    db   $54, $56, $10, $54, $56, $10, $54, $56        ;; 03:7bfa ????????
    db   $10, $60, $62, $10, $60, $62, $10, $64        ;; 03:7c02 ????????
    db   $66, $10, $60, $62, $30, $62, $60, $30        ;; 03:7c0a ????????
    db   $62, $60, $30, $66, $64, $30, $62, $60        ;; 03:7c12 ????????
    db   $10, $64, $66, $10, $64, $66, $10, $64        ;; 03:7c1a ????????
    db   $66, $10, $64, $66, $30, $46, $44, $10        ;; 03:7c22 ????????
    db   $44, $46, $50, $40, $42, $10, $40, $42        ;; 03:7c2a ????????
    db   $30, $46, $44, $10, $44, $46, $50, $40        ;; 03:7c32 ????????
    db   $42, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c3a ????????
    db   $44, $46, $50, $40, $42, $10, $40, $42        ;; 03:7c42 ????????
    db   $10, $40, $42, $10, $40, $42, $10, $48        ;; 03:7c4a ????????
    db   $4a, $10, $40, $42, $30, $42, $40, $30        ;; 03:7c52 ????????
    db   $42, $40, $30, $4a, $48, $30, $42, $40        ;; 03:7c5a ????????
    db   $10, $40, $42, $10, $40, $42, $10, $48        ;; 03:7c62 ????????
    db   $4a, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c6a ????????
    db   $44, $46, $10, $48, $4a, $10, $40, $42        ;; 03:7c72 ????????
    db   $30, $46, $44, $10, $44, $46, $10, $48        ;; 03:7c7a ????????
    db   $4a, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c82 ????????
    db   $44, $46, $10, $48, $4a, $10, $40, $42        ;; 03:7c8a ????????
    db   $30, $4a, $48, $30, $42, $40, $10, $48        ;; 03:7c92 ????????
    db   $4a, $10, $40, $42, $30, $46, $44, $10        ;; 03:7c9a ????????
    db   $48, $4a, $30, $4a, $48, $10, $44, $46        ;; 03:7ca2 ????????
    db   $30, $46, $44, $10, $48, $4a, $30, $4a        ;; 03:7caa ????????
    db   $48, $10, $44, $46, $30, $4a, $48, $10        ;; 03:7cb2 ????....
    db   $48, $4a, $10, $44, $46, $10, $40, $42        ;; 03:7cba ........
    db   $30, $4e, $4c, $10, $4c, $4e, $30, $46        ;; 03:7cc2 ATTATTAT
    db   $44, $30, $42, $40, $30, $4a, $48, $10        ;; 03:7cca TATT????
    db   $48, $4a, $10, $44, $46, $10, $40, $42        ;; 03:7cd2 ????????
    db   $30, $6a, $68, $10, $68, $6a, $10, $64        ;; 03:7cda ...ATT..
    db   $66, $10, $60, $62, $30, $6e, $6c, $10        ;; 03:7ce2 ....ATTA
    db   $6c, $6e, $30, $66, $64, $30, $62, $60        ;; 03:7cea TTATTATT
    db   $30, $6a, $68, $10, $68, $6a, $10, $64        ;; 03:7cf2 ????????
    db   $66, $10, $60, $62, $30, $5a, $58, $10        ;; 03:7cfa ????ATT.
    db   $58, $5a, $10, $54, $56, $10, $50, $52        ;; 03:7d02 ........
    db   $30, $5e, $5c, $10, $5c, $5e, $30, $56        ;; 03:7d0a ATTATTAT
    db   $54, $30, $52, $50, $30, $5a, $58, $10        ;; 03:7d12 TATT????
    db   $58, $5a, $10, $54, $56, $10, $50, $52        ;; 03:7d1a ????????
    db   $30, $42, $40, $10, $40, $42, $10, $48        ;; 03:7d22 ????????
    db   $4a, $10, $44, $46, $30, $42, $40, $10        ;; 03:7d2a ????????
    db   $40, $42, $30, $4a, $48, $30, $46, $44        ;; 03:7d32 ????????
    db   $30, $4e, $4c, $10, $4c, $4e, $10, $4c        ;; 03:7d3a ????????
    db   $4e, $10, $4c, $4e, $10, $40, $42, $10        ;; 03:7d42 ????????
    db   $40, $42, $10, $40, $42, $10, $40, $42        ;; 03:7d4a ????????
    db   $10, $44, $46, $10, $44, $46, $10, $44        ;; 03:7d52 ????????
    db   $46, $10, $44, $46, $30, $46, $44, $30        ;; 03:7d5a ????????
    db   $46, $44, $30, $46, $44, $30, $46, $44        ;; 03:7d62 ????????
    db   $30, $6a, $68, $10, $68, $6a, $10, $60        ;; 03:7d6a ????????
    db   $62, $10, $60, $62, $30, $6a, $68, $10        ;; 03:7d72 ????????
    db   $68, $6a, $10, $64, $66, $30, $66, $64        ;; 03:7d7a ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7d82 ????????
    db   $62, $10, $60, $62, $10, $50, $52, $10        ;; 03:7d8a ????????
    db   $54, $56, $10, $50, $52, $10, $54, $56        ;; 03:7d92 ????????
    db   $30, $5a, $58, $10, $58, $5a, $30, $56        ;; 03:7d9a ????????
    db   $54, $10, $58, $5a, $30, $5a, $58, $10        ;; 03:7da2 ????????
    db   $58, $5a, $30, $56, $54, $10, $58, $5a        ;; 03:7daa ????????
    db   $30, $56, $54, $10, $54, $56, $10, $58        ;; 03:7db2 ????????
    db   $5a, $10, $50, $52, $30, $56, $54, $10        ;; 03:7dba ????????
    db   $54, $56, $10, $58, $5a, $10, $50, $52        ;; 03:7dc2 ????????
    db   $30, $56, $54, $10, $54, $56, $10, $58        ;; 03:7dca ????????
    db   $5a, $10, $50, $52, $10, $40, $42, $10        ;; 03:7dd2 ????????
    db   $44, $46, $10, $4c, $4e, $10, $48, $4a        ;; 03:7dda ????????
    db   $10, $44, $46, $10, $40, $42, $10, $48        ;; 03:7de2 ????????
    db   $4a, $10, $4c, $4e, $10, $44, $46, $10        ;; 03:7dea ????????
    db   $40, $42, $10, $48, $4a, $10, $4c, $4e        ;; 03:7df2 ????????
    db   $30, $5a, $58, $10, $58, $5a, $10, $54        ;; 03:7dfa ????????
    db   $56, $10, $50, $52, $30, $5e, $5c, $10        ;; 03:7e02 ????????
    db   $5c, $5e, $30, $56, $54, $30, $52, $50        ;; 03:7e0a ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7e12 ????????
    db   $62, $10, $60, $62, $30, $62, $60, $10        ;; 03:7e1a ????ATTA
    db   $60, $62, $10, $5c, $5e, $10, $58, $5a        ;; 03:7e22 TTATTATT
    db   $30, $66, $64, $10, $64, $66, $30, $5e        ;; 03:7e2a ????????
    db   $5c, $30, $5a, $58, $30, $6e, $6c, $10        ;; 03:7e32 ????????
    db   $6c, $6e, $10, $68, $6a, $10, $5c, $5a        ;; 03:7e3a ????????
    db   $30, $4a, $48, $10, $48, $4a, $10, $44        ;; 03:7e42 ????????
    db   $46, $10, $40, $42, $30, $4e, $4c, $10        ;; 03:7e4a ????????
    db   $4c, $4e, $30, $46, $44, $30, $42, $40        ;; 03:7e52 ????????
    db   $30, $56, $54, $10, $54, $56, $10, $44        ;; 03:7e5a ????????
    db   $46, $10, $50, $52, $30, $5a, $58, $10        ;; 03:7e62 ????????
    db   $58, $5a, $10, $60, $62, $10, $50, $52        ;; 03:7e6a ????????
    db   $30, $5e, $5c, $10, $5c, $5e, $10, $64        ;; 03:7e72 ????????
    db   $66, $10, $54, $56, $30, $5e, $5c, $10        ;; 03:7e7a ????????
    db   $5c, $5e, $10, $64, $66, $10, $54, $56        ;; 03:7e82 ????????
    db   $30, $6a, $68, $10, $68, $6a, $10, $60        ;; 03:7e8a ????????
    db   $62, $10, $58, $5a, $30, $6e, $6c, $10        ;; 03:7e92 ????????
    db   $6c, $6e, $10, $64, $66, $10, $5c, $5e        ;; 03:7e9a ????????
    db   $30, $6e, $6c, $10, $6c, $6e, $10, $64        ;; 03:7ea2 ????????
    db   $66, $10, $5c, $5e, $30, $52, $50, $10        ;; 03:7eaa ????...A
    db   $50, $52, $10, $48, $4a, $10, $40, $42        ;; 03:7eb2 TTATTATT
    db   $30, $56, $54, $10, $54, $56, $10, $4c        ;; 03:7eba ATTATT??
    db   $4e, $10, $44, $46, $30, $52, $50, $10        ;; 03:7ec2 ????????
    db   $50, $52, $10, $48, $4a, $10, $40, $42        ;; 03:7eca ????????
    db   $10, $5c, $5e, $10, $5c, $5e, $10, $5c        ;; 03:7ed2 ????????
    db   $5e, $10, $5c, $5e, $10, $5c, $5e, $10        ;; 03:7eda ????????
    db   $5c, $5e, $10, $5c, $5e, $10, $5c, $5e        ;; 03:7ee2 ????????
    db   $10, $5c, $5e, $10, $5c, $5e, $10, $5c        ;; 03:7eea ????????
    db   $5e, $10, $5c, $5e, $10, $40, $42, $10        ;; 03:7ef2 ????????
    db   $40, $42, $10, $40, $42, $10, $40, $42        ;; 03:7efa ????????
    db   $30, $42, $40, $30, $42, $40, $30, $42        ;; 03:7f02 ????????
    db   $40, $30, $42, $40, $50, $40, $42, $50        ;; 03:7f0a ????????
    db   $40, $42, $50, $40, $42, $50, $40, $42        ;; 03:7f12 ????????
    db   $30, $46, $44, $30, $46, $44, $30, $46        ;; 03:7f1a ????????
    db   $44, $30, $46, $44, $70, $46, $44, $70        ;; 03:7f22 ????????
    db   $46, $44, $70, $46, $44, $70, $46, $44        ;; 03:7f2a ????????
    db   $70, $46, $44, $70, $46, $44, $70, $46        ;; 03:7f32 ????????
    db   $44, $70, $46, $44, $10, $6e, $6e, $10        ;; 03:7f3a ????....
    db   $6e, $6e, $10, $6e, $6e, $10, $6e, $6e        ;; 03:7f42 ..ATT...
    db   $10, $6e, $6e, $10, $6e, $6e, $10, $6e        ;; 03:7f4a ATTATTAT
    db   $6e, $10, $6e, $6e, $10, $6e, $6e, $10        ;; 03:7f52 TATT????
    db   $6e, $6e, $10, $6e, $6e, $10, $6e, $6e        ;; 03:7f5a ????????
    db   $30, $2a, $28, $10, $28, $2a, $10, $24        ;; 03:7f62 ........
    db   $26, $10, $20, $22, $30, $2e, $2c, $10        ;; 03:7f6a .ATTATTA
    db   $2c, $2e, $30, $26, $24, $30, $22, $20        ;; 03:7f72 TTATTATT
    db   $30, $2a, $28, $10, $28, $2a, $10, $24        ;; 03:7f7a ????????
    db   $26, $10, $20, $22, $10, $60, $62, $10        ;; 03:7f82 ????....
    db   $60, $62, $10, $60, $62, $10, $60, $62        ;; 03:7f8a .....ATT
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7f92 ????????
    db   $62, $10, $60, $62, $10, $60, $62, $10        ;; 03:7f9a ????????
    db   $60, $62, $10, $60, $62, $10, $60, $62        ;; 03:7fa2 ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7faa ????????
    db   $62, $10, $60, $62, $10, $64, $66, $10        ;; 03:7fb2 ????????
    db   $64, $66, $10, $64, $66, $10, $64, $66        ;; 03:7fba ????????
    db   $10, $60, $62, $10, $60, $62, $10, $60        ;; 03:7fc2 ????????
    db   $62, $10, $60, $62, $00, $00, $00, $00        ;; 03:7fca ????????
